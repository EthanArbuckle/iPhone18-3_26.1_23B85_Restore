id sub_1000A5450()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelfServiceSuiteResultsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000A54B8(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSDateFormatter) init];
  [v6 setDateStyle:1];
  [v6 setTimeStyle:1];
  [v6 setDoesRelativeDateFormatting:1];
  v7 = [a1 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  v9 = [v6 stringFromDate:isa];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v10;
}

uint64_t sub_1000A5644()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000A5924()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTableViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000A597C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer);
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  [v1 setBackgroundColor:v2];

  v3 = [v1 layer];
  if (qword_1001FC750 != -1)
  {
    swift_once();
  }

  [v3 setCornerRadius:*&qword_10020A3D8];

  [v1 setClipsToBounds:0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView);
  [v4 setAxis:1];
  [v4 setDistribution:0];
  [v4 setAlignment:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [objc_opt_self() defaultCenter];
  v6 = String._bridgeToObjectiveC()();
  [v5 addObserver:v0 selector:"handleLaunchURLWithNotification:" name:v6 object:0];
}

void sub_1000A5B64()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer];
  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView];
  [v2 addSubview:v3];
  v4 = [v1 contentView];
  [v4 addSubview:v2];

  v10 = [objc_allocWithZone(UIView) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v10 heightAnchor];
  v6 = [v5 constraintEqualToConstant:20.0];

  [v6 setActive:1];
  v7 = [v3 arrangedSubviews];
  sub_10003E110(0, &qword_1001FF090);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1000E9D04(v10, v9, 1);
}

void sub_1000A5D1C(void *a1)
{
  if (!a1)
  {
    goto LABEL_4;
  }

  v22 = a1;
  [v22 floatValue];
  if (v1 < 0.0)
  {

LABEL_4:
    v22 = sub_1000A9710();
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000002BLL, 0x800000010018F1E0);
    v2 = [objc_opt_self() monospacedDigitSystemFontOfSize:16.0 weight:UIFontWeightRegular];
    v22[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
    sub_1000A02DC();
    v3 = *&v22[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel];
    if (v3)
    {
      v4 = v3;
      v5 = String._bridgeToObjectiveC()();
      [v4 setText:v5];

      if (v2)
      {
        v6 = objc_opt_self();
        v7 = v2;
        v8 = [v6 defaultMetrics];
        v9 = [v8 scaledFontForFont:v7];

        [v4 setFont:v9];
      }
    }

    v10 = *&v22[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
    if (v10)
    {

      v10(v11);
      sub_10003C52C(v10);
    }

    sub_1000A21F4();
    goto LABEL_10;
  }

  [v22 floatValue];
  v13 = v12;
  v14 = floorf(v12 * 100.0);
  if ((LODWORD(v14) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v14 <= -9.2234e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v14 >= 9.2234e18)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v15 = v14;
  v2 = sub_1000A9710();
  sub_10003C49C(&unk_1001FEAD0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10017EC00;
  *(v16 + 56) = &type metadata for Int;
  *(v16 + 64) = &protocol witness table for Int;
  *(v16 + 32) = v15;
  sub_1000494C8(0, 0, v16, 0xD00000000000002ALL, 0x800000010018F210);

  v2[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  sub_1000A02DC();
  v17 = *&v2[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel];
  if (v17)
  {
    v18 = v17;
    v19 = String._bridgeToObjectiveC()();
    [v18 setText:v19];
  }

  v20 = *&v2[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  if (v20)
  {

    v20(v21);
    sub_10003C52C(v20);
  }

  if (v13 >= 0.0 && v13 <= 1.0)
  {
    sub_1000A1BD4();
    sub_1000A1E18(v13);
    goto LABEL_11;
  }

  sub_1000A21F4();
LABEL_10:
  sub_1000A19FC();
LABEL_11:
}

void sub_1000A60FC(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v60 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = &v54 - v7;
  v61 = sub_10003C49C(&qword_1001FF6E0);
  v57 = *(v61 - 8);
  __chkstk_darwin(v61);
  v9 = &v54 - v8;
  v10 = sub_10003C49C(&qword_1001FF6E8);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = sub_10003C49C(&qword_1001FF6F0);
  v55 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v16 = sub_10003C49C(&qword_1001FF6F8);
  v56 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  v19 = sub_10003C49C(&qword_1001FF700);
  __chkstk_darwin(v19);
  v22 = &v54 - v21;
  if (a1 <= 0.0)
  {
    v61 = sub_1000A8E18();
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000002BLL, 0x800000010018F150);
    *(v61 + OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned) = 1;
    sub_1000A02DC();
    v33 = *(v61 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel);
    if (v33)
    {
      v34 = v33;
      v35 = String._bridgeToObjectiveC()();
      [v34 setText:v35];
    }

    v36 = *(v61 + OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler);
    if (v36)
    {

      v36(v37);
      sub_10003C52C(v36);
    }

    sub_1000A21F4();
    sub_1000A19FC();
    v38 = v61;
  }

  else
  {
    v54 = v2;
    if (a1 / 60.0 >= 60.0)
    {
      v39 = v4;
      v40 = v58;
      Date.init(timeIntervalSinceNow:)();
      Date.timeIntervalSinceReferenceDate.getter();
      v41 = v59;
      Date.init(timeIntervalSinceReferenceDate:)();
      v42 = objc_allocWithZone(NSDateFormatter);
      v43 = [v42 init];
      [v43 setDateStyle:3];
      [v43 setTimeStyle:1];
      [v43 setDoesRelativeDateFormatting:1];
      isa = Date._bridgeToObjectiveC()().super.isa;
      v45 = [v43 stringFromDate:isa];

      if (!v45)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = String._bridgeToObjectiveC()();
      }

      v46 = sub_1000A8E18();
      sub_10003C49C(&unk_1001FEAD0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_10017EC00;
      *(v47 + 56) = sub_10003E110(0, &qword_1001FF708);
      *(v47 + 64) = sub_1000AC8BC(&qword_1001FF710, &qword_1001FF708);
      *(v47 + 32) = v45;
      sub_1000494C8(0, 0, v47, 0xD000000000000025, 0x800000010018F180);

      v46[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 0;
      sub_1000A02DC();
      v48 = *&v46[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel];
      if (v48)
      {
        v49 = v48;
        v50 = String._bridgeToObjectiveC()();
        [v49 setText:v50];
      }

      v51 = *&v46[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
      if (v51)
      {

        v51(v52);
        sub_10003C52C(v51);
      }

      sub_1000A1BD4();
      sub_1000A21F4();

      v53 = *(v60 + 8);
      v53(v41, v39);
      v53(v40, v39);
    }

    else
    {
      v60 = v20;
      v23 = [objc_opt_self() minutes];
      sub_10003E110(0, &qword_1001FF718);
      Measurement.init(value:unit:)();
      static Measurement<>.FormatStyle.UnitWidth.wide.getter();
      v24 = sub_10003C49C(&qword_1001FF720);
      (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
      static MeasurementFormatUnitUsage.general.getter();
      static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
      (*(v57 + 8))(v9, v61);
      sub_10003DD84(v12, &qword_1001FF6E8);
      (*(v55 + 8))(v15, v13);
      sub_10005C71C(&qword_1001FF728, &qword_1001FF6F8);
      Measurement<>.formatted<A>(_:)();
      (*(v56 + 8))(v18, v16);
      (*(v60 + 8))(v22, v19);
      v25 = sub_1000A8E18();
      sub_10003C49C(&unk_1001FEAD0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_10017EC00;
      v27 = String._bridgeToObjectiveC()();

      *(v26 + 56) = sub_10003E110(0, &qword_1001FF708);
      *(v26 + 64) = sub_1000AC8BC(&qword_1001FF710, &qword_1001FF708);
      *(v26 + 32) = v27;
      sub_1000494C8(0, 0, v26, 0xD000000000000027, 0x800000010018F1B0);

      v25[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 0;
      sub_1000A02DC();
      v28 = *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel];
      if (v28)
      {
        v29 = v28;
        v30 = String._bridgeToObjectiveC()();
        [v29 setText:v30];
      }

      v31 = *&v25[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
      if (v31)
      {

        v31(v32);
        sub_10003C52C(v31);
      }

      sub_1000A1BD4();
      sub_1000A21F4();
    }
  }
}

void sub_1000A6B64()
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10017EC00;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_10003DFBC();
  *(v0 + 32) = 0xD00000000000001BLL;
  *(v0 + 40) = 0x800000010018F130;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v1 = sub_1000A84A4();
  sub_1000A7FF0(v1, 0);
}

id sub_1000A6C80()
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10017EC00;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_10003DFBC();
  *(v1 + 32) = 0xD000000000000020;
  *(v1 + 40) = 0x800000010018F100;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v2 = sub_1000A8860();
  sub_1000A7FF0(v2, 0);

  v3 = sub_1000AA0E4();
  v4 = [v3 viewControllers];

  sub_10003E110(0, &qword_1001FDE30);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_12:

    return [*&v0[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___enhancedLoggingConsentNavigationController] scheduleModalPresentationWithPriority:0 animated:1 presentationCompletion:0];
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_8:
    v8 = v7;

    type metadata accessor for EnhancedLoggingConsentViewController();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      v13[3] = type metadata accessor for CardViewPersistentCell();
      v13[4] = &off_1001C3A60;
      v13[0] = v0;
      v11 = OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_delegate;
      swift_beginAccess();
      v12 = v0;
      sub_1000AC84C(v13, v10 + v11);
      swift_endAccess();
    }

    return [*&v0[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___enhancedLoggingConsentNavigationController] scheduleModalPresentationWithPriority:0 animated:1 presentationCompletion:0];
  }

  __break(1u);
  return result;
}

void sub_1000A6EDC()
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10017EC00;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_10003DFBC();
  *(v0 + 32) = 0xD000000000000019;
  *(v0 + 40) = 0x800000010018F0E0;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v1 = sub_1000A8E18();
  sub_1000A7FF0(v1, 0);
}

void sub_1000A6FF8()
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10017EC00;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_10003DFBC();
  *(v0 + 32) = 0xD00000000000001ALL;
  *(v0 + 40) = 0x800000010018F0C0;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_1000ABE6C();
  v1 = sub_1000A926C();
  sub_1000A7FF0(v1, 0);
}

void sub_1000A7118()
{
  v1 = sub_10003C49C(&qword_1001FF688);
  v33 = *(v1 - 8);
  v34 = v1;
  __chkstk_darwin(v1);
  v31 = v27 - v2;
  v30 = sub_10003C49C(&qword_1001FF690);
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v35 = v27 - v3;
  v4 = sub_10003C49C(&qword_1001FF698);
  __chkstk_darwin(v4 - 8);
  v6 = v27 - v5;
  v7 = sub_10003C49C(&qword_1001FF6A0);
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  v10 = sub_10003C49C(&qword_1001FF6A8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - v12;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10017EC00;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_10003DFBC();
  *(v14 + 32) = 0xD00000000000001BLL;
  *(v14 + 40) = 0x800000010018F0A0;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  v36 = qword_10020A550;
  if (SessionManager.currentSession.getter())
  {
    v15 = Session.totalProgress.getter();

    swift_getKeyPath();
    v27[0] = v11;
    v27[1] = v0;
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    v16 = [objc_opt_self() mainRunLoop];
    v37 = v16;
    v17 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_10003E110(0, &qword_1001FF6B0);
    sub_10005C71C(&qword_1001FF6D0, &qword_1001FF6A0);
    sub_1000AC8BC(&qword_1001FF6C0, &qword_1001FF6B0);
    v18 = v29;
    Publisher.receive<A>(on:options:)();
    sub_10003DD84(v6, &qword_1001FF698);

    (*(v28 + 8))(v9, v18);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10005C71C(&qword_1001FF6D8, &qword_1001FF6A8);
    Publisher<>.sink(receiveValue:)();

    (*(v27[0] + 8))(v13, v10);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  if (SessionManager.currentSession.getter())
  {
    v19 = Session.totalProgress.getter();

    swift_getKeyPath();
    v20 = v31;
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    v21 = [objc_opt_self() mainRunLoop];
    v37 = v21;
    v22 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    sub_10003E110(0, &qword_1001FF6B0);
    sub_10005C71C(&qword_1001FF6B8, &qword_1001FF688);
    sub_1000AC8BC(&qword_1001FF6C0, &qword_1001FF6B0);
    v24 = v34;
    v23 = v35;
    Publisher.receive<A>(on:options:)();
    sub_10003DD84(v6, &qword_1001FF698);

    (*(v33 + 8))(v20, v24);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10005C71C(&qword_1001FF6C8, &qword_1001FF690);
    v25 = v30;
    Publisher<>.sink(receiveValue:)();

    (*(v32 + 8))(v23, v25);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v26 = sub_1000A9710();
  sub_1000A7FF0(v26, 0);
}

void sub_1000A79C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    sub_1000A5D1C(isa);
  }
}

void sub_1000A7A30(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      sub_1000A5D1C(0);
    }

    else
    {
      if (qword_1001FC7E8 != -1)
      {
        swift_once();
      }

      if (SessionManager.currentSession.getter())
      {
        v4 = Session.totalProgress.getter();

        [v4 fractionCompleted];

        isa = Double._bridgeToObjectiveC()().super.super.isa;
        sub_1000A5D1C(isa);
      }
    }
  }
}

id sub_1000A7B2C()
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10017EC00;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_10003DFBC();
  *(v0 + 32) = 0xD000000000000022;
  *(v0 + 40) = 0x800000010018F070;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A380;
  v2 = sub_100060D74();
  v3 = [v2 navigationItem];

  [v3 setHidesBackButton:1];
  v4 = OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController;
  [*&v1[OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController] setModalPresentationStyle:0];
  v5 = *&v1[v4];

  return [v1 presentViewController:v5 animated:1 completion:0];
}

void sub_1000A7CD4()
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10017EC00;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_10003DFBC();
  *(v0 + 32) = 0xD00000000000001DLL;
  *(v0 + 40) = 0x800000010018F050;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v1 = sub_1000A9D28();
  sub_1000A7FF0(v1, 0);

  v2 = sub_1000AA0E4();
  sub_100125854(1, 0, 1, 0, 0);

  v3 = sub_1000AAD20();
  sub_100125854(1, 0, 1, 0, 0);
}

id sub_1000A7E48()
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10017EC00;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_10003DFBC();
  *(v0 + 32) = 0xD00000000000001DLL;
  *(v0 + 40) = 0x800000010018F030;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A380;
  v2 = sub_100060D74();
  v3 = [v2 navigationItem];

  [v3 setHidesBackButton:1];
  v4 = OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController;
  [*&v1[OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController] setModalPresentationStyle:0];
  v5 = *&v1[v4];

  return [v1 presentViewController:v5 animated:1 completion:0];
}

void sub_1000A7FF0(id a1, char a2)
{
  v5 = v2;
  v8 = OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_viewQueue;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (v9 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_10;
    }
  }

  else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_40;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_42;
  }

  v3 = *(v9 + 32);
  while (1)
  {
    sub_10003E110(0, &qword_1001FCE88);
    if (static NSObject.== infix(_:_:)())
    {
      if (qword_1001FC7B0 != -1)
      {
        goto LABEL_47;
      }

      goto LABEL_8;
    }

LABEL_10:
    v12 = *(v5 + v8);
    if (v12 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_19:
        v13 = [*(v5 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView) arrangedSubviews];
        sub_10003E110(0, &qword_1001FF090);
        v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v4 >> 62)
        {
          v3 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v3 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1000E9D04(a1, v3, 1);
        goto LABEL_22;
      }
    }

    else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
LABEL_42:

      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_44;
      }

      v3 = *(v12 + 32);
    }

    sub_1000EA498(a1, v3, 1);

LABEL_22:
    swift_beginAccess();
    if (!(*(v5 + v8) >> 62) || (_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_40:

    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  a1 = a1;
  sub_10003D534(0, 0, a1);
  swift_endAccess();

  if (a2)
  {
    return;
  }

  v4 = *(v5 + v8);
  if (!(v4 >> 62))
  {
    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v14 - 1;
    if (!__OFSUB__(v14, 1))
    {
      goto LABEL_26;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
LABEL_8:
    sub_10003C49C(&unk_1001FEAD0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10017EC00;
    *(v10 + 56) = sub_10003E110(0, &qword_1001FF090);
    *(v10 + 64) = sub_1000AC8BC(&qword_1001FF730, &qword_1001FF090);
    *(v10 + 32) = a1;
    v11 = a1;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    goto LABEL_36;
  }

LABEL_44:
  v27 = _CocoaArrayWrapper.endIndex.getter();
  v15 = v27 - 1;
  if (__OFSUB__(v27, 1))
  {
    goto LABEL_46;
  }

LABEL_26:

  v16 = sub_1000AD060(v15, v4);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_27:
    sub_100098BD4(v16, v18, v20, v22);
    v24 = v23;
    goto LABEL_34;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v25 = _swiftEmptyArrayStorage;
  }

  v26 = v25[2];

  if (__OFSUB__(v22 >> 1, v20))
  {
    __break(1u);
    goto LABEL_50;
  }

  if (v26 != (v22 >> 1) - v20)
  {
LABEL_50:
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v24 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v24)
  {
    v24 = _swiftEmptyArrayStorage;
LABEL_34:
    swift_unknownObjectRelease();
  }

  *(v5 + v8) = v24;
LABEL_36:
}

_BYTE *sub_1000A84C4()
{
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000020, 0x800000010018F600);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010018F630);
  v25 = type metadata accessor for PromptView();
  v0 = objc_allocWithZone(v25);
  v0[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v1 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  *&v0[v1] = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v0[v2] = [objc_allocWithZone(UIStackView) init];
  *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v3 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v4 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v0[v4] = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v0[v5] = [objc_allocWithZone(UIProgressView) init];
  v6 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v0[v6] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v7 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel;
  *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v8 = &v0[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v8 = 0;
  v8[1] = 0;
  v0[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v9 = [objc_allocWithZone(UILabel) init];
  v10 = *&v0[v3];
  *&v0[v3] = v9;

  v11 = *&v0[v3];
  if (v11)
  {
    v12 = v11;
    v13 = String._bridgeToObjectiveC()();

    [v12 setText:v13];
  }

  else
  {
  }

  v14 = [objc_allocWithZone(UILabel) init];
  v15 = *&v0[v7];
  *&v0[v7] = v14;

  v16 = *&v0[v7];
  if (v16)
  {
    v17 = v16;
    v18 = String._bridgeToObjectiveC()();

    [v17 setText:v18];
  }

  else
  {
  }

  *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
  v0[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 0;
  [*&v0[v1] setSpacing:20.0];
  [*&v0[v2] setSpacing:20.0];
  v26.receiver = v0;
  v26.super_class = v25;
  v19 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  sub_1000A02DC();
  v20 = *&v19[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  if (v20)
  {
    v21 = *&v19[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler + 8];
    v22 = *&v19[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel];
    v23 = sub_10003E418(v20, v21);
    v20(v23);

    sub_10003C52C(v20);
  }

  sub_1000A21F4();
  sub_1000A19FC();
  return v19;
}

id sub_1000A8880(void *a1)
{
  v2 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x45554E49544E4F43, 0xE800000000000000);
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a1;
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000020, 0x800000010018F600);
  sub_10003C49C(&unk_100201C20);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10017EC00;
  *(v7 + 32) = v2;
  *(v7 + 40) = v4;
  *(v7 + 48) = 7;
  *(v7 + 56) = sub_1000AD058;
  *(v7 + 64) = v5;
  v30 = type metadata accessor for PromptView();
  v8 = objc_allocWithZone(v30);
  v8[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v9 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  v10 = objc_allocWithZone(UIStackView);

  *&v8[v9] = [v10 init];
  v11 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v8[v11] = [objc_allocWithZone(UIStackView) init];
  *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v12 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v13 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v8[v13] = [objc_allocWithZone(UIStackView) init];
  v14 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v8[v14] = [objc_allocWithZone(UIProgressView) init];
  v15 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v8[v15] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v16 = &v8[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v16 = 0;
  v16[1] = 0;
  v8[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v17 = [objc_allocWithZone(UILabel) init];
  v18 = *&v8[v12];
  *&v8[v12] = v17;

  v19 = *&v8[v12];
  if (v19)
  {
    v20 = v19;
    v21 = String._bridgeToObjectiveC()();

    [v20 setText:v21];

    if (*(v7 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = _swiftEmptyArrayStorage;
    *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
    goto LABEL_7;
  }

  if (!*(v7 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = v7;
  v22 = [objc_allocWithZone(UIStackView) init];
  *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = v22;
  if (v22)
  {
    v23 = v22;
    v24 = objc_opt_self();
    v25 = v23;
    v26 = [v24 sharedApplication];
    v27 = [v26 preferredContentSizeCategory];

    LOBYTE(v26) = UIContentSizeCategory.isAccessibilityCategory.getter();
    [v25 setAxis:v26 & 1];
  }

LABEL_7:
  v8[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 0;
  [*&v8[v9] setSpacing:20.0];
  [*&v8[v11] setSpacing:20.0];
  v31.receiver = v8;
  v31.super_class = v30;
  v28 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

  return v28;
}

id sub_1000A8C98(uint64_t a1, char *a2)
{
  v3 = sub_1000AA0E4();
  v4 = [v3 viewControllers];

  sub_10003E110(0, &qword_1001FDE30);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    return [*&a2[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___enhancedLoggingConsentNavigationController] scheduleModalPresentationWithPriority:0 animated:1 presentationCompletion:0];
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_6:
    v8 = v7;

    type metadata accessor for EnhancedLoggingConsentViewController();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      v13[3] = type metadata accessor for CardViewPersistentCell();
      v13[4] = &off_1001C3A60;
      v13[0] = a2;
      v11 = OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_delegate;
      swift_beginAccess();
      v12 = a2;
      sub_1000AC84C(v13, v10 + v11);
      swift_endAccess();
    }

    return [*&a2[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___enhancedLoggingConsentNavigationController] scheduleModalPresentationWithPriority:0 animated:1 presentationCompletion:0];
  }

  __break(1u);
  return result;
}

id sub_1000A8E38()
{
  v0 = sub_100049C98(0xD000000000000021);
  v2 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v0, v1);
  v4 = v3;

  v5._countAndFlagsBits = 2570;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);

  v6 = v2;
  v7 = v4;
  v8 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000002BLL, 0x800000010018F5B0);
  v10 = v9;
  v40 = v6;
  v41 = v7;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001ELL, 0x800000010018F5E0);
  v38 = type metadata accessor for PromptView();
  v12 = objc_allocWithZone(v38);
  v12[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v37 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  *&v12[v37] = [objc_allocWithZone(UIStackView) init];
  v36 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v12[v36] = [objc_allocWithZone(UIStackView) init];
  *&v12[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v13 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v12[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  v14 = OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel;
  *&v12[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v15 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v12[v15] = [objc_allocWithZone(UIStackView) init];
  v16 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v12[v16] = [objc_allocWithZone(UIProgressView) init];
  v17 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v12[v17] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v18 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel;
  *&v12[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v19 = &v12[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v19 = 0;
  v19[1] = 0;
  v12[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v20 = [objc_allocWithZone(UILabel) init];
  v21 = *&v12[v13];
  *&v12[v13] = v20;

  v22 = *&v12[v13];
  if (v22)
  {
    v23 = v22;
    v24 = String._bridgeToObjectiveC()();

    [v23 setText:v24];
  }

  else
  {
  }

  v25 = [objc_allocWithZone(UILabel) init];
  v26 = *&v12[v14];
  *&v12[v14] = v25;

  v27 = *&v12[v14];
  if (v27)
  {
    v28 = v27;
    v29 = String._bridgeToObjectiveC()();

    [v28 setText:v29];
  }

  else
  {
  }

  v30 = [objc_allocWithZone(UILabel) init];
  v31 = *&v12[v18];
  *&v12[v18] = v30;

  v32 = *&v12[v18];
  if (v32)
  {
    v33 = v32;
    v34 = String._bridgeToObjectiveC()();
    [v33 setText:v34];
  }

  *&v12[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = _swiftEmptyArrayStorage;
  *&v12[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
  v12[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 0;
  [*&v12[v37] setSpacing:20.0];
  [*&v12[v36] setSpacing:20.0];
  v39.receiver = v12;
  v39.super_class = v38;
  return objc_msgSendSuper2(&v39, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
}

id sub_1000A928C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1000A92F0(void *a1)
{
  v2 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000020, 0x800000010018F530);
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a1;
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010018F560);
  sub_10003C49C(&unk_100201C20);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10017EC00;
  *(v7 + 32) = v2;
  *(v7 + 40) = v4;
  *(v7 + 48) = 7;
  *(v7 + 56) = sub_1000ACFFC;
  *(v7 + 64) = v5;
  v30 = type metadata accessor for PromptView();
  v8 = objc_allocWithZone(v30);
  v8[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v9 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  v10 = objc_allocWithZone(UIStackView);

  *&v8[v9] = [v10 init];
  v11 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v8[v11] = [objc_allocWithZone(UIStackView) init];
  *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v12 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v13 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v8[v13] = [objc_allocWithZone(UIStackView) init];
  v14 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v8[v14] = [objc_allocWithZone(UIProgressView) init];
  v15 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v8[v15] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v16 = &v8[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v16 = 0;
  v16[1] = 0;
  v8[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v17 = [objc_allocWithZone(UILabel) init];
  v18 = *&v8[v12];
  *&v8[v12] = v17;

  v19 = *&v8[v12];
  if (v19)
  {
    v20 = v19;
    v21 = String._bridgeToObjectiveC()();

    [v20 setText:v21];

    if (*(v7 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = _swiftEmptyArrayStorage;
    *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
    goto LABEL_7;
  }

  if (!*(v7 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = v7;
  v22 = [objc_allocWithZone(UIStackView) init];
  *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = v22;
  if (v22)
  {
    v23 = v22;
    v24 = objc_opt_self();
    v25 = v23;
    v26 = [v24 sharedApplication];
    v27 = [v26 preferredContentSizeCategory];

    LOBYTE(v26) = UIContentSizeCategory.isAccessibilityCategory.getter();
    [v25 setAxis:v26 & 1];
  }

LABEL_7:
  v8[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 0;
  [*&v8[v9] setSpacing:10.0];
  [*&v8[v11] setSpacing:10.0];
  v31.receiver = v8;
  v31.super_class = v30;
  v28 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

  return v28;
}

_BYTE *sub_1000A9730()
{
  v49 = 0xD000000000000023;
  v50 = 0x800000010018F4D0;
  v0 = [objc_opt_self() sharedManager];
  v1 = [v0 snapshot];

  v2 = [v1 consent];
  if (v2 != 3)
  {
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      v6 = 0x4E414C575FLL;
    }

    else
    {
      v6 = 0x494649575FLL;
    }

    v7 = 0xE500000000000000;
    String.append(_:)(*&v6);
  }

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000020, 0x800000010018F500);
  v8 = sub_100049C98(v49);
  v10 = v9;

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v8, v10);

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000002BLL, 0x800000010018F1E0);
  v47 = type metadata accessor for PromptView();
  v11 = objc_allocWithZone(v47);
  v11[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v46 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  *&v11[v46] = [objc_allocWithZone(UIStackView) init];
  v45 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v11[v45] = [objc_allocWithZone(UIStackView) init];
  *&v11[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v12 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v11[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  v13 = OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel;
  *&v11[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v14 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v11[v14] = [objc_allocWithZone(UIStackView) init];
  v15 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v11[v15] = [objc_allocWithZone(UIProgressView) init];
  v16 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v11[v16] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v17 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel;
  *&v11[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v18 = &v11[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v18 = 0;
  v18[1] = 0;
  v11[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v19 = [objc_allocWithZone(UILabel) init];
  v20 = *&v11[v12];
  *&v11[v12] = v19;

  v21 = *&v11[v12];
  if (v21)
  {
    v22 = v21;
    v23 = String._bridgeToObjectiveC()();

    [v22 setText:v23];
  }

  else
  {
  }

  v24 = [objc_allocWithZone(UILabel) init];
  v25 = *&v11[v13];
  *&v11[v13] = v24;

  v26 = *&v11[v13];
  if (v26)
  {
    v27 = v26;
    v28 = String._bridgeToObjectiveC()();

    [v27 setText:v28];
  }

  else
  {
  }

  v29 = [objc_allocWithZone(UILabel) init];
  v30 = *&v11[v17];
  *&v11[v17] = v29;

  v31 = *&v11[v17];
  if (v31)
  {
    v32 = v31;
    v33 = String._bridgeToObjectiveC()();

    [v32 setText:v33];
  }

  else
  {
  }

  *&v11[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = _swiftEmptyArrayStorage;
  *&v11[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
  v11[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 0;
  [*&v11[v46] setSpacing:20.0];
  [*&v11[v45] setSpacing:20.0];
  v48.receiver = v11;
  v48.super_class = v47;
  v34 = objc_msgSendSuper2(&v48, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v35 = [objc_opt_self() monospacedDigitSystemFontOfSize:16.0 weight:UIFontWeightRegular];
  v34[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  sub_1000A02DC();
  v36 = *&v34[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel];
  if (v35)
  {
    if (v36)
    {
      v37 = objc_opt_self();
      v38 = v36;
      v39 = v35;
      v40 = [v37 defaultMetrics];
      v41 = [v40 scaledFontForFont:v39];

      [v38 setFont:v41];
    }
  }

  else
  {
    v42 = v36;
  }

  v43 = *&v34[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  if (v43)
  {

    v43(v44);

    sub_10003C52C(v43);
  }

  else
  {
  }

  sub_1000A21F4();
  sub_1000A19FC();

  return v34;
}

_BYTE *sub_1000A9D48()
{
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000022, 0x800000010018F470);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000021, 0x800000010018F4A0);
  v25 = type metadata accessor for PromptView();
  v0 = objc_allocWithZone(v25);
  v0[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  v1 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  *&v0[v1] = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *&v0[v2] = [objc_allocWithZone(UIStackView) init];
  *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = 0;
  v3 = OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel;
  *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel] = 0;
  v4 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *&v0[v4] = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *&v0[v5] = [objc_allocWithZone(UIProgressView) init];
  v6 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *&v0[v6] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v7 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel;
  *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel] = 0;
  v8 = &v0[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  *v8 = 0;
  v8[1] = 0;
  v0[OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight] = 0;
  v9 = [objc_allocWithZone(UILabel) init];
  v10 = *&v0[v3];
  *&v0[v3] = v9;

  v11 = *&v0[v3];
  if (v11)
  {
    v12 = v11;
    v13 = String._bridgeToObjectiveC()();

    [v12 setText:v13];
  }

  else
  {
  }

  v14 = [objc_allocWithZone(UILabel) init];
  v15 = *&v0[v7];
  *&v0[v7] = v14;

  v16 = *&v0[v7];
  if (v16)
  {
    v17 = v16;
    v18 = String._bridgeToObjectiveC()();

    [v17 setText:v18];
  }

  else
  {
  }

  *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_actions] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView] = 0;
  v0[OBJC_IVAR____TtC11Diagnostics10PromptView_type] = 0;
  [*&v0[v1] setSpacing:20.0];
  [*&v0[v2] setSpacing:20.0];
  v26.receiver = v0;
  v26.super_class = v25;
  v19 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19[OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned] = 1;
  sub_1000A02DC();
  v20 = *&v19[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
  if (v20)
  {
    v21 = *&v19[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler + 8];
    v22 = *&v19[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel];
    v23 = sub_10003E418(v20, v21);
    v20(v23);

    sub_10003C52C(v20);
  }

  sub_1000A21F4();
  sub_1000A19FC();
  return v19;
}

id sub_1000AA104(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_1000AA164(char *a1, char a2)
{
  v3 = v2;
  v6 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    v9 = Session.requiresDeviceSelection.getter();
  }

  else
  {
    v9 = 0;
  }

  if ((a2 - 1) > 1u)
  {
    if (SessionManager.currentSession.getter())
    {
      Session.cancel()();
    }

    if (qword_1001FC6C8 != -1)
    {
      swift_once();
    }

    sub_100066800(3, 0);
    v24 = sub_1000AA0E4();
    sub_100125854(1, 0, 1, 0, 0);
  }

  else
  {
    v10 = *&a1[OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_consentHandles];
    if (v10[2])
    {
      v11 = v10[4];
      v12 = v10[5];
      objc_allocWithZone(type metadata accessor for DetailedConsentNavigationController());

      v13 = sub_10004520C(v11, v12);
    }

    else
    {
      if ((v9 & 1) == 0)
      {
        v17 = [a1 buttonTray];
        [v17 showButtonsBusy];

        v18 = type metadata accessor for TaskPriority();
        (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
        type metadata accessor for MainActor();
        v19 = v3;
        v20 = a1;
        v21 = static MainActor.shared.getter();
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        *(v22 + 24) = &protocol witness table for MainActor;
        *(v22 + 32) = v19;
        *(v22 + 40) = a2;
        *(v22 + 48) = v20;
        sub_1000539D8(0, 0, v8, &unk_100181F88, v22);

        return;
      }

      v14 = objc_allocWithZone(type metadata accessor for DeviceSelector());
      v13 = sub_1000BDA58(a2);
    }

    v15 = v13;
    v24 = sub_1000AA0E4();
    [v24 showViewController:v15 sender:v3];
  }

  v16 = v24;
}

uint64_t sub_1000AA498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 112) = a5;
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  v7 = type metadata accessor for Session.CollectOptions();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 64) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 72) = v9;
  *(v6 + 80) = v8;

  return _swift_task_switch(sub_1000AA590, v9, v8);
}

uint64_t sub_1000AA590()
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  v1 = SessionManager.currentSession.getter();
  *(v0 + 88) = v1;
  if (v1)
  {
    if (*(v0 + 112) == 1)
    {
      static Session.CollectOptions.upload.getter();
    }

    else
    {
      *(v0 + 16) = _swiftEmptyArrayStorage;
      sub_1000ACFA4();
      sub_10003C49C(&unk_1001FFE30);
      sub_10005C71C(&qword_100202940, &unk_1001FFE30);
      dispatch thunk of SetAlgebra.init<A>(_:)();
    }

    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v10[1] = sub_1000AA814;
    v11 = *(v0 + 56);

    return Session.startCollectingFromLocalDevice(options:)(v11);
  }

  else
  {

    sub_10008CDB0();
    v2 = swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v4;
    v7 = sub_1000B99C8(v2, sub_1000ACF9C, v5);

    [v3 presentViewController:v7 animated:1 completion:0];

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1000AA814()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1000AAA18;
  }

  else
  {
    v5 = sub_1000AA950;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000AA950()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  v4 = sub_1000AA0E4();
  sub_100125854(1, 0, 1, 0, 0);

  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000AAA18()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  (*(v3 + 8))(v1, v2);
  v4 = v0[13];
  v6 = v0[3];
  v5 = v0[4];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = v6;
  v9 = sub_1000B99C8(v4, sub_1000ACF9C, v7);

  [v5 presentViewController:v9 animated:1 completion:0];

  v10 = v0[1];

  return v10();
}

void sub_1000AAB2C()
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.cancel()();
  }

  v0 = sub_1000AA0E4();
  sub_100125854(1, 0, 1, 0, 0);
}

id sub_1000AABE4()
{
  v1 = OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController);
  if (!v2)
  {
    v4 = v0;
    if (qword_1001FC7E8 != -1)
    {
      swift_once();
    }

    if (SessionManager.currentSession.getter())
    {
      if (Session.requiresFollowUpQuestion.getter())
      {
        Session.status.getter();
        v5 = SessionStatus.rawValue.getter();
        v6 = SessionStatus.rawValue.getter();

        if (v5 == v6)
        {
          v7 = sub_1000AAD20();
LABEL_11:
          v8 = v7;
          v9 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v7];
          [v9 setModalPresentationStyle:0];

          v10 = *(v4 + v1);
          *(v4 + v1) = v9;
          v3 = v9;

          v2 = 0;
          goto LABEL_12;
        }
      }

      else
      {
      }
    }

    v7 = sub_1000ABD58();
    goto LABEL_11;
  }

  v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController);
LABEL_12:
  v11 = v2;
  return v3;
}

char *sub_1000AAD20()
{
  v1 = v0;
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000002DLL, 0x800000010018F260);
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.collectionDeferralDuration.getter();
    v3 = v2;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = sub_10006C57C(v3);
  if (v4 != 4)
  {
    v5 = v4;
    v6 = sub_10006C470(v3);
    if (v7)
    {
      v8 = v6;
      v9 = v7;

      if (v5 > 1u)
      {
        if (v5 == 2)
        {

          v10 = "_FOLLOWUP_QUESTION_BODY_HOURS";
          v11 = 0xD00000000000002CLL;
          goto LABEL_13;
        }

        sub_10003C49C(&unk_1001FEAD0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_10017EC00;
        *(v16 + 56) = &type metadata for String;
        *(v16 + 64) = sub_10003DFBC();
        *(v16 + 32) = v8;
        *(v16 + 40) = v9;
        v14 = 0x800000010018F2F0;
        v15 = v16;
        v13 = 0xD00000000000002DLL;
      }

      else
      {
        if (!v5)
        {

          v10 = "_FOLLOWUP_QUESTION_BODY_MINUTES";
          v11 = 0xD00000000000002ELL;
LABEL_13:
          sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v11, (v10 | 0x8000000000000000));
          goto LABEL_17;
        }

        sub_10003C49C(&unk_1001FEAD0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_10017EC00;
        *(v12 + 56) = &type metadata for String;
        *(v12 + 64) = sub_10003DFBC();
        *(v12 + 32) = v8;
        *(v12 + 40) = v9;
        v13 = 0xD00000000000002FLL;
        v14 = 0x800000010018F350;
        v15 = v12;
      }

      sub_1000494C8(0, 0, v15, v13, v14);
    }
  }

LABEL_17:
  type metadata accessor for ConsentNoticeViewController();
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010018BEE0);
  v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v18 = String._bridgeToObjectiveC()();

  v19 = String._bridgeToObjectiveC()();

  v20 = [v17 initWithTitle:v18 detailText:v19 symbolName:0];

  v21 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000026, 0x800000010018F290);
  v22 = &v20[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle];
  *v22 = v21;
  v22[1] = v23;

  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  *(v24 + 24) = v20;
  v25 = &v20[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
  v26 = *&v20[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
  *v25 = sub_1000AC980;
  v25[1] = v24;
  v27 = v1;
  v28 = v20;
  sub_10003C52C(v26);
  v29 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000025, 0x800000010018F2C0);
  v30 = &v28[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryActionTitle];
  *v30 = v29;
  v30[1] = v31;

  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  *(v32 + 24) = v27;
  v33 = &v28[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction];
  v34 = *&v28[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction];
  *v33 = sub_1000AC988;
  v33[1] = v32;
  v35 = v27;
  v36 = v28;
  sub_10003C52C(v34);
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v36;
  v39 = &v36[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
  v40 = *&v36[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
  *v39 = sub_1000AC9D0;
  v39[1] = v38;
  v41 = v36;

  sub_10003C52C(v40);
  v42 = *v39;
  v43 = [v41 navigationItem];
  v44 = v43;
  if (v42)
  {
    v45 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v41 action:"cancelButtonPressed:"];
    [v44 setLeftBarButtonItem:v45];

    v44 = v45;
  }

  else
  {
    [v43 setLeftBarButtonItem:0];
  }

  return v41;
}

void sub_1000AB2B4(uint64_t a1, void *a2)
{
  v4 = sub_1000ABD58();
  v4[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_activationReason] = 0;

  v5 = [a2 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 pushViewController:*(a1 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___reviewFilesController) animated:1];
  }
}

uint64_t sub_1000AB358(void *a1, void *a2)
{
  v4 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = [a1 buttonTray];
  [v7 showButtonsBusy];

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = a2;
  v10 = a1;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v9;
  v12[5] = v10;
  sub_1000539D8(0, 0, v6, &unk_100181F78, v12);
}

uint64_t sub_1000AB4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1000AB558, v7, v6);
}

uint64_t sub_1000AB558()
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  v1 = SessionManager.currentSession.getter();
  v0[7] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1000AB720;

    return Session.issueDidNotOccur()();
  }

  else
  {

    sub_10008CDB0();
    v3 = swift_allocError();
    swift_willThrow();
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = v5;
    v8 = sub_1000B99C8(v3, sub_1000ACE80, v6);

    [v4 presentViewController:v8 animated:1 completion:0];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1000AB720(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_1000AB9A4;
  }

  else
  {
    *(v4 + 80) = a1 & 1;
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_1000AB84C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000AB84C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 16);
  if (v1 == 1)
  {
    v3 = sub_1000AABE4();
    sub_100125854(1, 0, 1, 0, 0);

    v4 = *(v2 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController);
    *(v2 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController) = 0;
  }

  else
  {
    v5 = *(v0 + 24);
    v6 = sub_1000ABD58();
    v6[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_activationReason] = 1;

    v7 = [v5 navigationController];
    if (v7)
    {
      v8 = v7;
      v9 = *(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___reviewFilesController);
      [v8 pushViewController:v9 animated:1];
    }

    else
    {
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000AB9A4()
{

  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = v3;
  v6 = sub_1000B99C8(v1, sub_1000ACE80, v4);

  [v2 presentViewController:v6 animated:1 completion:0];

  v7 = v0[1];

  return v7();
}

void sub_1000ABA94(uint64_t a1)
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.cancel()();
  }

  v2 = sub_1000AABE4();
  sub_100125854(1, 0, 1, 0, 0);

  v3 = *(a1 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController);
  *(a1 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController) = 0;
}

void sub_1000ABB4C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v4;
    v7 = [a2 navigationItem];
    v8 = [v7 leftBarButtonItem];

    v9 = sub_1000BC190(sub_1000AC9D8, v5, 0, 0, v8);

    [a2 presentViewController:v9 animated:1 completion:0];
  }
}

void sub_1000ABC64(uint64_t a1, uint64_t a2)
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

  sub_100066800(3, 0);
  v3 = sub_1000AABE4();
  sub_100125854(1, 0, 1, 0, 0);

  v4 = *(a2 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController);
  *(a2 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController) = 0;
}

char *sub_1000ABD58()
{
  v1 = OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___reviewFilesController;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___reviewFilesController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___reviewFilesController];
  }

  else
  {
    type metadata accessor for FileReviewingTableViewController();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v5 = v0;
    v6 = v4;
    v7 = v0;
    v8 = sub_100089D44(sub_1000AC938, v6);
    v9 = *&v0[v1];
    *&v7[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_1000ABE04(uint64_t a1)
{
  v2 = sub_1000AABE4();
  sub_100125854(1, 0, 1, 0, 0);

  v3 = *(a1 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController);
  *(a1 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController) = 0;
}

void sub_1000ABE6C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_10003E110(0, &qword_1001FD3F0);
  sub_1000AC8BC(&qword_1001FD3F8, &qword_1001FD3F0);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_1001256F8(v2);

  if (!v3)
  {
    return;
  }

  v4 = [v3 delegate];

  if (!v4)
  {
    return;
  }

  type metadata accessor for AppDelegate();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_enhancedLoggingLaunchActions;
  v7 = *(v5 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_enhancedLoggingLaunchActions);
  if (!v7 || !*(v7 + 16))
  {
    goto LABEL_22;
  }

  v8 = v5;
  Hasher.init(_seed:)();

  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_11:

LABEL_22:

    swift_unknownObjectRelease();
    return;
  }

  v12 = ~v10;
  while (*(*(v7 + 48) + v11) != 1)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_14;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_14:

  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (!SessionManager.currentSession.getter())
  {
    goto LABEL_22;
  }

  Session.status.getter();

  v14 = SessionStatus.rawValue.getter();
  if (v14 != SessionStatus.rawValue.getter())
  {
    v15 = SessionStatus.rawValue.getter();
    if (v15 != SessionStatus.rawValue.getter())
    {
      goto LABEL_22;
    }
  }

  v16 = sub_1000AABE4();
  [v16 scheduleModalPresentationWithPriority:0 animated:1 presentationCompletion:0];

  *(v8 + v6) = 0;
  swift_unknownObjectRelease();
}

id sub_1000AC2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_formSheetXScaleMultiplier] = 0x3FF0000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_formSheetYScaleMultiplier] = 0x3FF3333333333333;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_subscribers] = &_swiftEmptySetSingleton;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_viewQueue] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentEnrollingPrompt] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentEnrollFinishedPrompt] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentRunningPrompt] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentFinishedPrompt] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentUploadingPrompt] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentUnenrollingPrompt] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___enhancedLoggingConsentNavigationController] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___reviewFilesController] = 0;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for CardViewPersistentCell();
  v6 = objc_msgSendSuper2(&v8, "initWithStyle:reuseIdentifier:", a1, v5);

  return v6;
}

id sub_1000AC440(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_formSheetXScaleMultiplier] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_formSheetYScaleMultiplier] = 0x3FF3333333333333;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_subscribers] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell_viewQueue] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentEnrollingPrompt] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentEnrollFinishedPrompt] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentRunningPrompt] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentFinishedPrompt] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentUploadingPrompt] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___persistentUnenrollingPrompt] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___enhancedLoggingConsentNavigationController] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell__completeUploadConsentController] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___reviewFilesController] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CardViewPersistentCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void sub_1000AC580()
{

  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics22CardViewPersistentCell____lazy_storage___reviewFilesController);
}

id sub_1000AC650()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardViewPersistentCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000AC790@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isIndeterminate];
  *a2 = result;
  return result;
}

uint64_t sub_1000AC7C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000AC810@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t sub_1000AC84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FE8B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AC8BC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10003E110(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000AC900()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AC940()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AC990()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000AC9E0()
{
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010018F3B0);
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.collectionDeferralDuration.getter();
    v1 = v0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = sub_10006C57C(v1);
  if (v2 != 4)
  {
    v3 = v2;
    v4 = sub_10006C470(v1);
    if (v5)
    {
      v6 = v4;
      v7 = v5;

      if (v3 > 1u)
      {
        if (v3 == 2)
        {

          v8 = "ENHANCED_LOGGING_BODY_HOURS";
          v9 = 0xD00000000000001ALL;
          goto LABEL_13;
        }

        v10 = "ENHANCED_LOGGING_TITLE";
        sub_10003C49C(&unk_1001FEAD0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_10017EC00;
        *(v11 + 56) = &type metadata for String;
        *(v11 + 64) = sub_10003DFBC();
        *(v11 + 32) = v6;
        *(v11 + 40) = v7;
        v12 = 0xD00000000000001BLL;
      }

      else
      {
        if (!v3)
        {

          v8 = "ENHANCED_LOGGING_BODY_MINUTES";
          v9 = 0xD00000000000001CLL;
LABEL_13:
          sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v9, (v8 | 0x8000000000000000));
          goto LABEL_17;
        }

        v10 = "ENHANCED_LOGGING_BODY_HOUR";
        sub_10003C49C(&unk_1001FEAD0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_10017EC00;
        *(v11 + 56) = &type metadata for String;
        *(v11 + 64) = sub_10003DFBC();
        *(v11 + 32) = v6;
        *(v11 + 40) = v7;
        v12 = 0xD00000000000001DLL;
      }

      sub_1000494C8(0, 0, v11, v12, (v10 | 0x8000000000000000));
    }
  }

LABEL_17:
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000016, 0x800000010018F3D0);
  v13 = objc_allocWithZone(type metadata accessor for EnhancedLoggingConsentViewController());
  v14 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();

  v16 = [v13 initWithTitle:v14 detailText:v15 symbolName:0];

  v17 = v16;
  [v17 formSheetSize];
  v19 = v18;
  v21 = v20;
  CGAffineTransformMakeScale(&v25, 1.0, 1.2);
  v26.width = v19;
  v26.height = v21;
  v22 = CGSizeApplyAffineTransform(v26, &v25);
  [v17 setPreferredContentSize:{v22.width, v22.height}];
  v23 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v17];

  [v23 setModalPresentationStyle:0];
  return v23;
}

uint64_t sub_1000ACD78()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000ACDC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000494BC;

  return sub_1000AB4C0(a1, v4, v5, v7, v6);
}

uint64_t sub_1000ACE88()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000ACED0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003DEC8;

  return sub_1000AA498(a1, v4, v5, v6, v8, v7);
}

unint64_t sub_1000ACFA4()
{
  result = qword_100202930;
  if (!qword_100202930)
  {
    type metadata accessor for Session.CollectOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202930);
  }

  return result;
}

void sub_1000ACFFC()
{
  v0 = sub_1000AABE4();
  [v0 scheduleModalPresentationWithPriority:0 animated:1 presentationCompletion:0];
}

uint64_t sub_1000AD060(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_23:
    v10 = result;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    result = v10;
    v5 = -v4;
    if (!__OFSUB__(0, v4))
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_23;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = -v4;
  if (__OFSUB__(0, v4))
  {
    goto LABEL_25;
  }

LABEL_4:
  v6 = -result;
  if (v5 > 0 || v5 <= v6)
  {
    v7 = v4 - result;
    if (__OFADD__(v4, v6))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v7 < 0)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    if (!v3)
    {
LABEL_7:
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
  if (result < v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((v2 & 0xC000000000000001) != 0 && v7)
  {
    sub_10003E110(0, &qword_1001FF090);

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v8);
      v8 = v9;
    }

    while (v7 != v9);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return _CocoaArrayWrapper.subscript.getter();
}

id sub_1000AD1F8()
{
  result = [objc_opt_self() defaultManager];
  qword_1001FF740 = result;
  return result;
}

uint64_t sub_1000AD234()
{
  v1 = OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___fileExists;
  LODWORD(v2) = *(v0 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___fileExists);
  if (v2 == 2)
  {
    if (qword_1001FC758 != -1)
    {
      swift_once();
    }

    v2 = qword_1001FF740;
    URL.path(percentEncoded:)(0);
    v3 = String._bridgeToObjectiveC()();

    LOBYTE(v2) = [v2 fileExistsAtPath:v3 isDirectory:0];

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t sub_1000AD300()
{
  v1 = OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___isDirectory;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___isDirectory);
  if (v2 == 2)
  {
    v6 = 0;
    if (qword_1001FC758 != -1)
    {
      swift_once();
    }

    v3 = qword_1001FF740;
    URL.path(percentEncoded:)(0);
    v4 = String._bridgeToObjectiveC()();

    [v3 fileExistsAtPath:v4 isDirectory:&v6];

    LOBYTE(v2) = v6;
    *(v0 + v1) = v6;
  }

  return v2 & 1;
}

void sub_1000AD404()
{
  static UIListContentConfiguration.subtitleCell()();
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleBody];
  v2 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v2(v25, 0);
  v3 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v3(v25, 0);
  v4 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.lineBreakMode.setter();
  v4(v25, 0);
  v5 = [v0 preferredFontForTextStyle:UIFontTextStyleCaption1];
  v6 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v6(v25, 0);
  v7 = [objc_opt_self() configurationWithScale:3];
  v8 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter();
  v8(v25, 0);
  if ((sub_1000AD234() & 1) == 0)
  {
    v18 = String._bridgeToObjectiveC()();
    v19 = [objc_opt_self() systemImageNamed:v18];

    UIListContentConfiguration.image.setter();
    sub_1000AECA8();
    UIListContentConfiguration.text.setter();
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000020, 0x800000010018F7C0);
    UIListContentConfiguration.secondaryText.setter();
    if (_UISolariumEnabled())
    {
      return;
    }

    goto LABEL_11;
  }

  v9 = [objc_allocWithZone(NSByteCountFormatter) init];
  [v9 setCountStyle:0];
  [v9 setAllowedUnits:0xFFFFLL];
  [v9 setAdaptive:1];
  if (qword_1001FC758 != -1)
  {
    swift_once();
  }

  v10 = qword_1001FF740;
  URL.path(percentEncoded:)(0);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 displayNameAtPath:v11];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000AD300();
  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() systemImageNamed:v13];

  UIListContentConfiguration.image.setter();
  UIListContentConfiguration.text.setter();
  sub_1000ADE38();
  if ((v15 & 1) == 0)
  {
    isa = Int64._bridgeToObjectiveC()().super.super.isa;
    v17 = [v9 stringForObjectValue:isa];

    if (v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    UIListContentConfiguration.secondaryText.setter();
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_11:
    v20 = objc_opt_self();
    v21 = [v20 currentDevice];
    v22 = [v21 userInterfaceIdiom];

    if (v22 != 1)
    {
      v23 = [v20 currentDevice];
      v24 = [v23 userInterfaceIdiom];

      if (v24 != 6)
      {
        UIListContentConfiguration.image.setter();
      }
    }
  }
}

void sub_1000AD8E4()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v45 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v43 - v6;
  __chkstk_darwin(v5);
  v9 = &v43 - v8;
  if (URL.pathExtension.getter() == 31335 && v10 == 0xE200000000000000)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
LABEL_13:
      if (URL.pathExtension.getter() == 0x6968637261676F6CLL && v19 == 0xEA00000000006576)
      {

LABEL_26:
        sub_10003C49C(&unk_1001FD020);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_10017EBF0;
        URL._bridgeToObjectiveC()(&unk_10017E000);
        *(v34 + 32) = v35;
        v36 = objc_allocWithZone(QLPreviewController);
        sub_10003C49C(&qword_1001FF8E8);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v36 initWithPreviewItems:isa];

        return;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) != 0 || (sub_1000AD234() & 1) == 0 || (sub_1000AD300() & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  URL.deletingPathExtension()();
  v13 = URL.pathExtension.getter();
  v15 = v14;
  v16 = *(v45 + 8);
  v16(v9, v2);
  if (v13 == 7496052 && v15 == 0xE300000000000000)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v20 = objc_opt_self();
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v24);
  v26 = v25;
  v16(v7, v2);
  LODWORD(v20) = [v20 extractArchive:v23 toDirectory:v26];

  if (v20)
  {
    if (qword_1001FC758 != -1)
    {
      swift_once();
    }

    v27 = qword_1001FF740;
    URL._bridgeToObjectiveC()(&OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager);
    v29 = v28;
    v46 = 0;
    LODWORD(v27) = [v27 removeItemAtURL:v28 error:&v46];

    if (v27)
    {
      v30 = v46;
    }

    else
    {
      v38 = v46;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1000AF424();
      v39 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    v40 = v44;
    URL.deletingPathExtension()();
    URL.deletingPathExtension()();
    v16(v40, v2);
    LOBYTE(v40) = *(v1 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile_isOnRemoteDevice);
    type metadata accessor for ReviewableFile();
    v41 = swift_allocObject();
    *(v41 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___fileExists) = 2;
    *(v41 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___isDirectory) = 2;
    (*(v45 + 32))(v41 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile_url, v7, v2);
    *(v41 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile_isOnRemoteDevice) = v40;
    v42 = objc_allocWithZone(type metadata accessor for FileBrowsingTableViewController());
    v33 = v41;
    goto LABEL_29;
  }

LABEL_25:
  v32 = objc_allocWithZone(type metadata accessor for FileBrowsingTableViewController());

LABEL_29:
  sub_10005A7F8(v33, 0, 0);
}

uint64_t sub_1000ADE38()
{
  v1 = v0;
  v2 = sub_10003C49C(&qword_1001FDF40);
  __chkstk_darwin(v2 - 8);
  v4 = &v56 - v3;
  v5 = type metadata accessor for URL();
  v72 = *(v5 - 8);
  __chkstk_darwin(v5);
  v74 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NSFastEnumerationIterator();
  v75 = *(v7 - 8);
  __chkstk_darwin(v7);
  v77 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10003C49C(&qword_1001FF8D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v56 - v10;
  v12 = type metadata accessor for URLResourceValues();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v71 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v56 - v16;
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    return 0;
  }

  v66 = v4;
  v67 = v5;
  v76 = v13;
  v70 = v17;
  v73 = v12;
  v68 = v7;
  v18 = sub_10003C49C(&qword_1001FF8C8);
  inited = swift_initStackObject();
  v69 = xmmword_10017EC10;
  *(inited + 16) = xmmword_10017EC10;
  *(inited + 32) = NSURLIsDirectoryKey;
  *(inited + 40) = NSURLFileSizeKey;
  v20 = NSURLIsDirectoryKey;
  v21 = NSURLFileSizeKey;
  sub_10014FB04(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  v23 = v22;
  swift_arrayDestroy();
  URL.resourceValues(forKeys:)();
  v64 = v1;
  v65 = v18;

  v24 = v76;
  v25 = v73;
  (*(v76 + 56))(v11, 0, 1, v73);
  v26 = v70;
  (*(v24 + 32))(v70, v11, v25);
  v27 = URLResourceValues.isDirectory.getter();
  if (v27 == 2 || (v27 & 1) == 0)
  {
    v53 = URLResourceValues.fileSize.getter();
    v55 = v54;
    (*(v76 + 8))(v26, v25);
    if (v55)
    {
      return 0;
    }

    else
    {
      return v53;
    }
  }

  if (qword_1001FC758 != -1)
  {
    swift_once();
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v69;
  *(v28 + 32) = v21;
  *(v28 + 40) = v20;
  v63 = v20;
  v62 = v21;
  v29 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v64 = v23;
  if (!v29)
  {
    (*(v76 + 8))(v26, v25);
    return 0;
  }

  v61 = v29;
  NSEnumerator.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (!v78)
  {
    v30 = 0;
LABEL_28:

    (*(v75 + 8))(v77, v68);
    (*(v76 + 8))(v26, v25);
    return v30;
  }

  v30 = 0;
  v31 = (v72 + 7);
  v32 = (v72 + 4);
  v59 = 0x800000010018F730;
  ++v72;
  v57 = (v76 + 8);
  v58 = xmmword_10017EC00;
  v33 = v67;
  v34 = v66;
  while (1)
  {
    v35 = swift_dynamicCast();
    v36 = *v31;
    if (v35)
    {
      break;
    }

    v36(v34, 1, 1, v33);
    sub_10003DD84(v34, &qword_1001FDF40);
LABEL_11:
    NSFastEnumerationIterator.next()();
    if (!v78)
    {
      goto LABEL_28;
    }
  }

  v36(v34, 0, 1, v33);
  v37 = *v32;
  v60 = v32;
  v37(v74, v34, v33);
  v38 = swift_initStackObject();
  *(v38 + 16) = v69;
  v39 = v63;
  *(v38 + 32) = v63;
  v40 = v62;
  *(v38 + 40) = v62;
  v41 = v39;
  v42 = v40;
  sub_10014FB04(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  v43 = v71;
  URL.resourceValues(forKeys:)();

  v44 = URLResourceValues.isDirectory.getter();
  v32 = v60;
  if (v44 == 2 || (v44 & 1) != 0)
  {
    v45 = v43;
    v25 = v73;
    (*v57)(v45, v73);
    (*v72)(v74, v33);
    goto LABEL_11;
  }

  v46 = URLResourceValues.fileSize.getter();
  v47 = v43;
  v49 = v48;
  (*v57)(v47, v73);
  result = (*v72)(v74, v33);
  if (v49)
  {
    v51 = 0;
  }

  else
  {
    v51 = v46;
  }

  v52 = __OFADD__(v30, v51);
  v30 += v51;
  if (!v52)
  {
    v25 = v73;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void *sub_1000AE810()
{
  v0 = type metadata accessor for URL();
  v32 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10003C49C(&qword_1001FDF40);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for NSFastEnumerationIterator();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  if (qword_1001FC758 != -1)
  {
    swift_once();
  }

  v9 = qword_1001FF740;
  URL.path(percentEncoded:)(0);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 fileExistsAtPath:v10 isDirectory:&v33];

  if (!v11)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v33 != 1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10003C49C(&qword_1001FF8C8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10017EC00;
  *(v12 + 32) = NSURLIsDirectoryKey;
  v13 = NSURLIsDirectoryKey;
  v14 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v29 = v14;
  NSEnumerator.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v34)
  {
    v15 = (v32 + 56);
    v28 = (v32 + 32);
    v30 = _swiftEmptyArrayStorage;
    do
    {
      v16 = swift_dynamicCast();
      v17 = *v15;
      if (v16)
      {
        v17(v5, 0, 1, v0);
        v18 = *v28;
        (*v28)(v2, v5, v0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_1000D4EA4(0, v30[2] + 1, 1, v30);
        }

        v20 = v30;
        v22 = v30[2];
        v21 = v30[3];
        v27 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          v20 = sub_1000D4EA4(v21 > 1, v27, 1, v30);
        }

        v20[2] = v27;
        v23 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v30 = v20;
        v26(v20 + v23 + *(v32 + 72) * v22, v2, v0);
      }

      else
      {
        v17(v5, 1, 1, v0);
        sub_10003DD84(v5, &qword_1001FDF40);
      }

      NSFastEnumerationIterator.next()();
    }

    while (v34);
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  (*(v31 + 8))(v8, v6);

  return v30;
}

uint64_t sub_1000AECA8()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = URL.lastPathComponent.getter();
  v23 = v4;
  v21[0] = 46;
  v21[1] = 0xE100000000000000;
  sub_100079A64();
  v5 = StringProtocol.components<A>(separatedBy:)();

  v7 = (v5 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v8 = &v7[2 * v6];
    v9 = v8[1];
    v22 = *v8;
    v23 = v9;

    static CharacterSet.decimalDigits.getter();
    StringProtocol.trimmingCharacters(in:)();
    (*(v1 + 8))(v3, v0);

    v10 = String.count.getter();

    if (v10)
    {

      URL.lastPathComponent.getter();
      goto LABEL_9;
    }

    if (*v7)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v12 = *(v5 + 16);
        if (v12)
        {
LABEL_8:
          *(v5 + 16) = v12 - 1;

          v22 = v5;
          sub_10003C49C(&qword_1001FF8B0);
          sub_1000AF3C0();
          BidirectionalCollection<>.joined(separator:)();

LABEL_9:
          v13 = objc_opt_self();
          v14 = String._bridgeToObjectiveC()();

          v15 = [v13 findEntryForBundleIdentifier:v14];

          if (v15)
          {
            v16 = [v15 displayNameLocalizationKey];
            v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v19 = v18;

            v20 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v17, v19);

            return v20;
          }

          return URL.lastPathComponent.getter();
        }

LABEL_15:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_10003B980(v5);
    v5 = result;
    v12 = *(result + 16);
    if (v12)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  return URL.lastPathComponent.getter();
}

uint64_t sub_1000AEFBC()
{
  v1 = OBJC_IVAR____TtC11Diagnostics14ReviewableFile_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReviewableFile()
{
  result = qword_1001FF780;
  if (!qword_1001FF780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AF0AC()
{
  result = type metadata accessor for URL();
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

Swift::Int sub_1000AF150()
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_1000AF378(&unk_1001FF8A0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000AF1F0()
{
  type metadata accessor for URL();
  sub_1000AF378(&unk_1001FF8A0, &type metadata accessor for URL);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000AF278()
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_1000AF378(&unk_1001FF8A0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000AF378(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000AF3C0()
{
  result = qword_1001FF8B8;
  if (!qword_1001FF8B8)
  {
    sub_10003C4E4(&qword_1001FF8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF8B8);
  }

  return result;
}

unint64_t sub_1000AF424()
{
  result = qword_1001FD6F0;
  if (!qword_1001FD6F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FD6F0);
  }

  return result;
}

uint64_t sub_1000AF494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000AF564(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for LaunchURL()
{
  result = qword_1001FF948;
  if (!qword_1001FF948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AF668()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_1000AF734();
    if (v1 <= 0x3F)
    {
      sub_1000AF7E4();
      if (v2 <= 0x3F)
      {
        sub_1000AF834();
        if (v3 <= 0x3F)
        {
          sub_1000AF898();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000AF734()
{
  if (!qword_1001FF958)
  {
    sub_1000AF790();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1001FF958);
    }
  }
}

unint64_t sub_1000AF790()
{
  result = qword_1001FF960;
  if (!qword_1001FF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF960);
  }

  return result;
}

void sub_1000AF7E4()
{
  if (!qword_1001FF968)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001FF968);
    }
  }
}

void sub_1000AF834()
{
  if (!qword_1001FF970)
  {
    sub_10003C4E4(&qword_1001FF978);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001FF970);
    }
  }
}

unint64_t sub_1000AF898()
{
  result = qword_1001FF980;
  if (!qword_1001FF980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FF980);
  }

  return result;
}

uint64_t sub_1000AF8F4(uint64_t a1)
{
  v46 = type metadata accessor for CharacterSet();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for URLQueryItem();
  v5 = *(v44 - 8);
  __chkstk_darwin(v44);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v36[1] = v1;
  v58 = _swiftEmptyArrayStorage;
  sub_1000B7C18(0, v8, 0);
  v9 = v58;
  v54 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = 0;
  v55 = *(a1 + 36);
  v40 = v5 + 32;
  v41 = (v3 + 8);
  v37 = a1 + 72;
  v38 = v8;
  v42 = v7;
  v43 = v5;
  v39 = a1;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    if ((*(v54 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_25;
    }

    if (v55 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v48 = 1 << v11;
    v49 = v11 >> 6;
    v47 = v12;
    v14 = (*(a1 + 48) + 16 * v11);
    v16 = *v14;
    v15 = v14[1];
    v17 = (*(a1 + 56) + 16 * v11);
    v18 = v17[1];
    v51 = *v17;
    v52 = v15;
    v56 = v16;
    v57 = v15;

    v19 = v45;
    static CharacterSet.urlQueryAllowed.getter();
    sub_100079A64();
    v20 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
    v53 = v9;
    v22 = v21;
    v23 = *v41;
    v24 = v46;
    (*v41)(v19, v46);
    if (v22)
    {
      v25 = v20;
    }

    else
    {
      v25 = 0;
    }

    v50 = v25;
    v56 = v51;
    v57 = v18;
    static CharacterSet.urlQueryAllowed.getter();
    StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
    v23(v19, v24);
    v26 = v42;
    URLQueryItem.init(name:value:)();

    v9 = v53;

    v58 = v9;
    v28 = v9[2];
    v27 = v9[3];
    if (v28 >= v27 >> 1)
    {
      sub_1000B7C18(v27 > 1, v28 + 1, 1);
      v9 = v58;
    }

    v9[2] = v28 + 1;
    result = (*(v43 + 32))(v9 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v28, v26, v44);
    a1 = v39;
    v13 = 1 << *(v39 + 32);
    if (v11 >= v13)
    {
      goto LABEL_27;
    }

    v29 = *(v54 + 8 * v49);
    if ((v29 & v48) == 0)
    {
      goto LABEL_28;
    }

    if (v55 != *(v39 + 36))
    {
      goto LABEL_29;
    }

    v30 = v29 & (-2 << (v11 & 0x3F));
    if (v30)
    {
      v13 = __clz(__rbit64(v30)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = v49 << 6;
      v32 = v49 + 1;
      v33 = (v37 + 8 * v49);
      while (v32 < (v13 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          result = sub_1000B2714(v11, v55, 0);
          v13 = __clz(__rbit64(v34)) + v31;
          goto LABEL_4;
        }
      }

      result = sub_1000B2714(v11, v55, 0);
    }

LABEL_4:
    v12 = v47 + 1;
    v11 = v13;
    if (v47 + 1 == v38)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000AFD94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x776569766572;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x776569766572;
  }

  else
  {
    v5 = 0;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE000000000000000;
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

Swift::Int sub_1000AFE28()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000AFE98()
{
  String.hash(into:)();
}

Swift::Int sub_1000AFEF4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000AFF60@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1001BDC28, *a1);

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

void sub_1000AFFC0(uint64_t *a1@<X8>)
{
  v2 = 0x776569766572;
  if (!*v1)
  {
    v2 = 0;
  }

  v3 = 0xE000000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1000AFFF0()
{
  result = qword_1001FF9C0;
  if (!qword_1001FF9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF9C0);
  }

  return result;
}

void *sub_1000B0044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = type metadata accessor for URLQueryItem();
  v106 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v101 = &v96 - v6;
  __chkstk_darwin(v7);
  v109 = &v96 - v8;
  __chkstk_darwin(v9);
  v102 = &v96 - v10;
  __chkstk_darwin(v11);
  v110 = &v96 - v12;
  __chkstk_darwin(v13);
  v103 = &v96 - v14;
  v15 = sub_10003C49C(&qword_1001FF9C8);
  __chkstk_darwin(v15 - 8);
  v17 = &v96 - v16;
  v18 = type metadata accessor for URLComponents();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LaunchURL();
  v23 = v22[5];
  *(a2 + v23) = &_swiftEmptySetSingleton;
  v24 = v22[6];
  *(a2 + v24) = &_swiftEmptySetSingleton;
  v25 = (a2 + v22[7]);
  *v25 = 0;
  v25[1] = 0;
  v105 = v25;
  v26 = v22[8];
  *(a2 + v26) = 0;
  v27 = v22[9];
  v28 = [objc_opt_self() defaultFlow];
  v107 = v27;
  *(a2 + v27) = v28;
  v29 = v28;
  sub_1000B0CB8(a1, a2);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v30 = type metadata accessor for URL();
    (*(*(v30 - 8) + 8))(a1, v30);
    return sub_10003DD84(v17, &qword_1001FF9C8);
  }

  v99 = v19;
  (*(v19 + 32))(v21, v17, v18);
  v32 = *(URL.pathComponents.getter() + 16);

  v104 = a1;
  v33 = v21;
  v100 = v18;
  if (v32 < 3)
  {
    v37 = &_swiftEmptySetSingleton;
    v34 = v106;
  }

  else
  {
    result = URL.pathComponents.getter();
    v34 = v106;
    if (result[2] < 3uLL)
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v36 = result[8];
    v35 = result[9];

    if (sub_1000B1AB4(v36, v35))
    {
      v37 = sub_1000B1CD8();
    }

    else
    {
      v37 = &_swiftEmptySetSingleton;
    }

    a1 = v104;
  }

  *(a2 + v23) = v37;
  v38 = *(URL.pathComponents.getter() + 16);

  if (v38 < 2)
  {
    v41 = &_swiftEmptySetSingleton;
  }

  else
  {
    result = URL.pathComponents.getter();
    if (result[2] < 2uLL)
    {
LABEL_93:
      __break(1u);
      return result;
    }

    v40 = result[6];
    v39 = result[7];

    if (sub_1000B1AB4(v40, v39))
    {
      v41 = sub_1000B1CD8();
    }

    else
    {
      v41 = &_swiftEmptySetSingleton;
    }

    a1 = v104;
  }

  v42 = sub_1000B1EE4();
  *(a2 + v24) = sub_1000B1140(v42, v41);
  v43 = URLComponents.queryItems.getter();
  if (v43)
  {
    if (*(v43 + 16))
    {
      v44 = sub_1000B2458(v43);

      *(a2 + v26) = v44;
    }

    else
    {
    }
  }

  v45 = URLComponents.host.getter();
  if (!v46)
  {
LABEL_40:
    v64 = type metadata accessor for URL();
    (*(*(v64 - 8) + 8))(a1, v64);
    return (*(v99 + 8))(v33, v100);
  }

  v47 = v45;
  v48 = v46;
  v49 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v49 = v45 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {

    goto LABEL_40;
  }

  v50 = String.lowercased()();
  if (v50._countAndFlagsBits == 0x6E6F6974636E7566 && v50._object == 0xEA00000000006C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v51 = v47;

    v52 = 1;
    goto LABEL_29;
  }

  if (v50._countAndFlagsBits == 0x636974656D736F63 && v50._object == 0xEF656372756F732DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v51 = v47;

    v52 = 2;
    goto LABEL_29;
  }

  if (v50._countAndFlagsBits == 0x636974656D736F63 && v50._object == 0xEF7465677261742DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v51 = v47;

    v52 = 3;
    goto LABEL_29;
  }

  if (v50._countAndFlagsBits == 0x7265706C6568 && v50._object == 0xE600000000000000)
  {

LABEL_87:
    v51 = v47;
    v52 = 4;
    goto LABEL_29;
  }

  v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v95)
  {
    goto LABEL_87;
  }

  v51 = v47;
  v52 = 0;
LABEL_29:
  v53 = [objc_allocWithZone(DADiagnosticFlow) initWithDestination:v52 serialNumber:0 sessionID:0 passcode:0];

  *(a2 + v107) = v53;
  v54 = URLComponents.queryItems.getter();
  v55 = v104;
  if (!v54)
  {
LABEL_46:
    v65 = type metadata accessor for URL();
    (*(*(v65 - 8) + 8))(v55, v65);
    result = (*(v99 + 8))(v33, v100);
    v66 = v105;
    *v105 = v51;
    v66[1] = v48;
    return result;
  }

  v56 = v54;
  if (![v53 destination])
  {

    goto LABEL_46;
  }

  v105 = *(v56 + 16);
  if (v105)
  {
    v97 = v53;
    v98 = v33;
    v57 = 0;
    v107 = v34 + 16;
    v58 = (v34 + 8);
    while (v57 < *(v56 + 16))
    {
      v59 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v60 = *(v34 + 72);
      v61 = *(v34 + 16);
      v61(v110, v56 + v59 + v60 * v57, v111);
      if (URLQueryItem.name.getter() == 0x754E6C6169726573 && v62 == 0xEC0000007265626DLL)
      {

LABEL_49:
        v69 = v103;
        v70 = v111;
        (*(v34 + 32))(v103, v110, v111);
        v96 = URLQueryItem.value.getter();
        v110 = v71;
        result = (*(v34 + 8))(v69, v70);
LABEL_50:
        v72 = 0;
        v73 = v56 + v59;
        while (1)
        {
          if (v72 >= *(v56 + 16))
          {
            goto LABEL_90;
          }

          v61(v109, v73, v111);
          if (URLQueryItem.name.getter() == 0x496E6F6973736573 && v74 == 0xE900000000000044)
          {
            break;
          }

          v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v75)
          {
            goto LABEL_58;
          }

          v72 = (v72 + 1);
          result = (*v58)(v109, v111);
          v73 += v60;
          if (v105 == v72)
          {
            v109 = 0;
            v103 = 0;
            goto LABEL_59;
          }
        }

LABEL_58:
        v76 = v106 + 32;
        v77 = v102;
        v78 = v111;
        (*(v106 + 32))(v102, v109, v111);
        v103 = URLQueryItem.value.getter();
        v109 = v79;
        result = (*(v76 - 24))(v77, v78);
LABEL_59:
        v80 = 0;
        v81 = v56 + v59;
        while (v80 < *(v56 + 16))
        {
          v61(v108, v81, v111);
          if (URLQueryItem.name.getter() == 0x65646F6373736170 && v82 == 0xE800000000000000)
          {

LABEL_69:
            v33 = v98;

            v87 = v106 + 32;
            v88 = v101;
            v89 = v111;
            (*(v106 + 32))(v101, v108, v111);
            URLQueryItem.value.getter();
            v84 = v90;
            (*(v87 - 24))(v88, v89);
            v85 = v99;
            v53 = v97;
            v67 = v109;
            if (v110)
            {
              goto LABEL_67;
            }

            goto LABEL_70;
          }

          v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v83)
          {
            goto LABEL_69;
          }

          v80 = (v80 + 1);
          result = (*v58)(v108, v111);
          v81 += v60;
          if (v105 == v80)
          {
            v53 = v97;
            v33 = v98;
            v67 = v109;
            v68 = v110;
            goto LABEL_66;
          }
        }

        goto LABEL_91;
      }

      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v63)
      {
        goto LABEL_49;
      }

      ++v57;
      result = (*v58)(v110, v111);
      if (v105 == v57)
      {
        v110 = 0;
        v96 = 0;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v67 = 0;
  v68 = 0;
LABEL_66:

  v84 = 0;
  v85 = v99;
  if (v68)
  {
LABEL_67:
    v86 = String._bridgeToObjectiveC()();
  }

  else
  {
LABEL_70:
    v86 = 0;
  }

  [v53 setSerialNumber:{v86, v96}];

  if (v67)
  {
    v91 = String._bridgeToObjectiveC()();
  }

  else
  {
    v91 = 0;
  }

  [v53 setSessionID:v91];

  if (v84)
  {
    v92 = String._bridgeToObjectiveC()();
  }

  else
  {
    v92 = 0;
  }

  v93 = v104;
  [v53 setPasscode:v92];

  v94 = type metadata accessor for URL();
  (*(*(v94 - 8) + 8))(v93, v94);
  return (*(v85 + 8))(v33, v100);
}

uint64_t sub_1000B0CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10003C49C(&qword_1001FDF40);
  __chkstk_darwin(v4 - 8);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v43 - v8;
  v10 = sub_10003C49C(&qword_1001FF9D0);
  __chkstk_darwin(v10 - 8);
  v12 = v43 - v11;
  v13 = URL.host.getter();
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v13;
  v16 = v14;
  v17 = String.lowercased()();
  if (v17._countAndFlagsBits == 0xD00000000000001ALL && 0x800000010018F850 == v17._object)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
LABEL_7:

LABEL_8:
      v25 = type metadata accessor for URL();
      return (*(*(v25 - 8) + 16))(a2, a1, v25);
    }
  }

  v48 = URL.absoluteString.getter();
  v49 = v19;
  v44 = v15;
  v45 = v16;
  v20 = type metadata accessor for Locale();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  sub_100079A64();
  StringProtocol.range<A>(of:options:range:locale:)();
  v22 = v21;
  v24 = v23;
  sub_10003DD84(v12, &qword_1001FF9D0);

  if (v24)
  {
    goto LABEL_7;
  }

  v27 = URL.absoluteString.getter();
  v29 = sub_1000B1248(v22, v27, v28);
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v44 = v29;
  v45 = v31;
  v46 = v33;
  v47 = v35;
  v43[0] = 47;
  v43[1] = 0xE100000000000000;
  sub_1000B26C0();
  Collection<>.trimmingPrefix<A>(_:)();

  v36 = static String._fromSubstring(_:)();
  v38 = v37;

  v48 = 0x2F2F3A7367616964;
  v49 = 0xE800000000000000;
  v39._countAndFlagsBits = v36;
  v39._object = v38;
  String.append(_:)(v39);
  URL.init(string:)();

  v40 = type metadata accessor for URL();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  if (v42(v9, 1, v40) == 1)
  {
    URL.init(string:)();
    result = v42(v6, 1, v40);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {

      (*(v41 + 32))(a2, v6, v40);
      result = v42(v9, 1, v40);
      if (result != 1)
      {
        return sub_10003DD84(v9, &qword_1001FDF40);
      }
    }
  }

  else
  {

    return (*(v41 + 32))(a2, v9, v40);
  }

  return result;
}

uint64_t sub_1000B1140(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1000784F0(v14[0], v14[1]))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_100078568(*v11, v13);
    sub_100108EC8(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000B1248(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B1294@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003C49C(&qword_1001FDF40);
  __chkstk_darwin(v8 - 8);
  v10 = &v65 - v9;
  URL.init(string:)();
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (*(v12 + 32))(a1, v10, v11);
  v14 = sub_1000D5698(_swiftEmptyArrayStorage);
  v15 = [v2 destination];
  v16 = 0;
  v17 = 0xE000000000000000;
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      v50 = [v2 serialNumber];
      if (!v50)
      {
        goto LABEL_20;
      }

      v68 = v4;
      v51 = v50;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = [v2 sessionID];
      if (!v55)
      {
        goto LABEL_23;
      }

      v56 = v55;
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = [v2 passcode];
      if (v59)
      {
        v60 = v59;

        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v62;

        sub_10003C49C(&unk_100201EC0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10017EF10;
        strcpy((inited + 32), "serialNumber");
        *(inited + 45) = 0;
        *(inited + 46) = -5120;
        *(inited + 48) = v52;
        *(inited + 56) = v54;
        *(inited + 64) = 0x496E6F6973736573;
        *(inited + 72) = 0xE900000000000044;
        *(inited + 80) = v67;
        *(inited + 88) = v58;
        *(inited + 96) = 0x65646F6373736170;
        *(inited + 104) = 0xE800000000000000;
        *(inited + 112) = v61;
        *(inited + 120) = v66;
        v14 = sub_1000D5698(inited);
        swift_setDeallocating();
        sub_10003C49C(&qword_100201D00);
        swift_arrayDestroy();
        v17 = 0xEF7465677261742DLL;
        v16 = 0x636974656D736F63;
        goto LABEL_24;
      }
    }

    else
    {
      if (v15 != 4)
      {
        goto LABEL_25;
      }

      v29 = [v2 serialNumber];
      if (!v29)
      {
        goto LABEL_20;
      }

      v68 = v4;
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = [v2 sessionID];
      if (!v34)
      {
        goto LABEL_23;
      }

      v35 = v34;
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = [v2 passcode];
      if (v38)
      {
        v39 = v38;

        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v41;

        sub_10003C49C(&unk_100201EC0);
        v42 = swift_initStackObject();
        *(v42 + 16) = xmmword_10017EF10;
        strcpy((v42 + 32), "serialNumber");
        *(v42 + 45) = 0;
        *(v42 + 46) = -5120;
        *(v42 + 48) = v31;
        *(v42 + 56) = v33;
        *(v42 + 64) = 0x496E6F6973736573;
        *(v42 + 72) = 0xE900000000000044;
        *(v42 + 80) = v67;
        *(v42 + 88) = v37;
        *(v42 + 96) = 0x65646F6373736170;
        *(v42 + 104) = 0xE800000000000000;
        *(v42 + 112) = v40;
        *(v42 + 120) = v66;
        v14 = sub_1000D5698(v42);
        swift_setDeallocating();
        sub_10003C49C(&qword_100201D00);
        swift_arrayDestroy();
        v17 = 0xE600000000000000;
        v16 = 0x7265706C6568;
LABEL_24:
        v4 = v68;
        goto LABEL_25;
      }
    }

LABEL_23:

    v16 = 0;
    v17 = 0xE000000000000000;
    goto LABEL_24;
  }

  if (v15 == 1)
  {
    v43 = [v2 serialNumber];
    if (v43)
    {
      v44 = v43;

      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      sub_10003C49C(&unk_100201EC0);
      v48 = swift_initStackObject();
      *(v48 + 16) = xmmword_10017EC00;
      *(v48 + 32) = 0x754E6C6169726573;
      v49 = v48 + 32;
      *(v48 + 40) = 0xEC0000007265626DLL;
      *(v48 + 48) = v45;
      *(v48 + 56) = v47;
      v14 = sub_1000D5698(v48);
      swift_setDeallocating();
      sub_10003DD84(v49, &qword_100201D00);
      v17 = 0xEA00000000006C61;
      v16 = 0x6E6F6974636E7566;
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (v15 != 2)
  {
    goto LABEL_25;
  }

  v18 = [v2 serialNumber];
  if (!v18)
  {
LABEL_20:
    v16 = 0;
    goto LABEL_25;
  }

  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = [v2 sessionID];
  if (v23)
  {
    v24 = v23;

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    sub_10003C49C(&unk_100201EC0);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_10017EC10;
    strcpy((v28 + 32), "serialNumber");
    *(v28 + 45) = 0;
    *(v28 + 46) = -5120;
    *(v28 + 48) = v20;
    *(v28 + 56) = v22;
    *(v28 + 64) = 0x496E6F6973736573;
    *(v28 + 72) = 0xE900000000000044;
    *(v28 + 80) = v25;
    *(v28 + 88) = v27;
    v14 = sub_1000D5698(v28);
    swift_setDeallocating();
    sub_10003C49C(&qword_100201D00);
    swift_arrayDestroy();
    v17 = 0xEF656372756F732DLL;
    v16 = 0x636974656D736F63;
  }

  else
  {

    v16 = 0;
    v17 = 0xE000000000000000;
  }

LABEL_25:
  v69 = v16;
  v70 = v17;
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_100079A64();
  URL.append<A>(path:directoryHint:)();
  (*(v5 + 8))(v7, v4);

  if (*(v14 + 16))
  {
    v64 = sub_1000AF8F4(v14);

    URL.append(queryItems:)(v64);
  }
}

uint64_t sub_1000B1AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  CharacterSet.init(charactersIn:)();
  v20[0] = a1;
  v20[1] = a2;
  CharacterSet.inverted.getter();
  sub_100079A64();
  v11 = StringProtocol.trimmingCharacters(in:)();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v7, v4);
  if ((v13 & 0x1000000000000000) != 0)
  {
    if (String.UTF8View._foreignCount()() <= 8)
    {
      goto LABEL_6;
    }

LABEL_18:
    v14(v10, v4);

    return 0;
  }

  if ((v13 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v15 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 > 8)
  {
    goto LABEL_18;
  }

LABEL_6:
  v16 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  if (!v16)
  {
    goto LABEL_18;
  }

  if (v11 == a1 && v13 == a2)
  {

    v14(v10, v4);
    return 1;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v14(v10, v4);
  result = 0;
  if (v18)
  {
    return 1;
  }

  return result;
}

void *sub_1000B1CD8()
{
  v6 = &_swiftEmptySetSingleton;
  v0 = objc_allocWithZone(NSScanner);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithString:v1];

  v5 = 0;
  [v2 scanHexLongLong:&v5];
  v3 = v5;
  if (v5)
  {
    sub_100108EC8(&v7, 0, 0);
    sub_1000784F0(v7, v8);
    v3 = v5;
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_100108EC8(&v7, 0, 1uLL);
  sub_1000784F0(v7, v8);
  v3 = v5;
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_100108EC8(&v7, 0, 2uLL);
  sub_1000784F0(v7, v8);
  v3 = v5;
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  sub_100108EC8(&v7, 0, 3uLL);
  sub_1000784F0(v7, v8);
  v3 = v5;
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_100108EC8(&v7, 0, 4uLL);
  sub_1000784F0(v7, v8);
  v3 = v5;
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    sub_100108EC8(&v7, 0, 7uLL);
    sub_1000784F0(v7, v8);
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    sub_100108EC8(&v7, 0, 8uLL);

    sub_1000784F0(v7, v8);
    return v6;
  }

LABEL_15:
  sub_100108EC8(&v7, 0, 5uLL);
  sub_1000784F0(v7, v8);
  v3 = v5;
  if ((v5 & 0x80) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v3 & 0x100) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:

  return v6;
}

uint64_t sub_1000B1EE4()
{
  v0 = type metadata accessor for URLQueryItem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10003C49C(&qword_1001FF9C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  sub_1000B2650(v9, v6);
  v10 = type metadata accessor for URLComponents();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_10003DD84(v9, &qword_1001FF9C8);
    v12 = &_swiftEmptySetSingleton;
    v13 = v6;
LABEL_36:
    sub_10003DD84(v13, &qword_1001FF9C8);
    return v12;
  }

  v41 = v9;
  v14 = URLComponents.queryItems.getter();
  result = (*(v11 + 8))(v6, v10);
  if (!v14)
  {
    v12 = &_swiftEmptySetSingleton;
LABEL_35:
    v13 = v41;
    goto LABEL_36;
  }

  v16 = *(v14 + 16);
  if (!v16)
  {
    v12 = &_swiftEmptySetSingleton;
LABEL_34:

    goto LABEL_35;
  }

  v17 = 0;
  v18 = v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v50 = (v1 + 8);
  v51 = v1 + 16;
  v12 = &_swiftEmptySetSingleton;
  v46 = v1;
  v47 = v0;
  v45 = v3;
  v44 = v14;
  v43 = v16;
  v42 = v18;
  while (v17 < *(v14 + 16))
  {
    (*(v1 + 16))(v3, v18 + *(v1 + 72) * v17, v0);
    if (URLQueryItem.name.getter() == 25705 && v19 == 0xE200000000000000)
    {

LABEL_13:
      v21 = URLQueryItem.value.getter();
      if (v22)
      {
        v55 = v21;
        v56 = v22;
        v57 = 44;
        v58 = 0xE100000000000000;
        sub_100079A64();
        v23 = StringProtocol.components<A>(separatedBy:)();

        v53 = *(v23 + 16);
        if (v53)
        {
          v48 = v23;
          v49 = v17;
          v24 = 0;
          v52 = v23 + 32;
          do
          {
            v26 = (v52 + 16 * v24);
            v27 = *v26;
            v28 = v26[1];
            v29 = HIBYTE(v28) & 0xF;
            if ((v28 & 0x2000000000000000) == 0)
            {
              v29 = v27 & 0xFFFFFFFFFFFFLL;
            }

            if (v29)
            {
              v54 = v24;
              Hasher.init(_seed:)();

              String.hash(into:)();
              v30 = Hasher._finalize()();
              v31 = v12 + 56;
              v32 = -1 << v12[32];
              v33 = v30 & ~v32;
              if ((*&v12[((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v33))
              {
                v34 = ~v32;
                v35 = v12;
                while (1)
                {
                  v36 = (*(v12 + 6) + 16 * v33);
                  v38 = *v36;
                  v37 = v36[1];
                  Hasher.init(_seed:)();
                  if (v37 >= 9)
                  {

                    String.hash(into:)();
                  }

                  else
                  {
                    Hasher._combine(_:)(qword_1001821B0[v37]);
                    sub_100078568(v38, v37);
                  }

                  v39 = Hasher._finalize()();
                  Hasher.init(_seed:)();
                  String.hash(into:)();
                  v40 = Hasher._finalize()();
                  sub_1000784F0(v38, v37);
                  if (v39 == v40)
                  {
                    break;
                  }

                  v33 = (v33 + 1) & v34;
                  v12 = v35;
                  if (((*&v31[(v33 >> 3) & 0xFFFFFFFFFFFFFF8] >> v33) & 1) == 0)
                  {
                    goto LABEL_16;
                  }
                }

                v12 = v35;
              }

              else
              {
LABEL_16:
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v55 = v12;
                sub_10010B410(v27, v28, v33, isUniquelyReferenced_nonNull_native);
                v12 = v55;
              }

              v24 = v54;
            }

            ++v24;
          }

          while (v24 != v53);

          v1 = v46;
          v0 = v47;
          v3 = v45;
          v14 = v44;
          v16 = v43;
          v17 = v49;
          v18 = v42;
        }

        else
        {
        }
      }

      goto LABEL_7;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_13;
    }

LABEL_7:
    ++v17;
    result = (*v50)(v3, v0);
    if (v17 == v16)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000B2458(uint64_t a1)
{
  v2 = type metadata accessor for URLQueryItem();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = &_swiftEmptySetSingleton;
  v24 = &_swiftEmptySetSingleton;
  v8 = *(a1 + 16);
  if (v8)
  {
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    v11(v6, v12, v2, v4);
    while (1)
    {
      if (URLQueryItem.name.getter() == 0x697463612D736C65 && v21 == 0xEA00000000006E6FLL)
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v14 = URLQueryItem.value.getter();
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0xE000000000000000;
      }

      v18._countAndFlagsBits = v16;
      v18._object = v17;
      v19 = _findStringSwitchCase(cases:string:)(&off_1001BDC78, v18);

      sub_100109568(&v23 + 7, v19 == 1);
LABEL_11:
      (*(v9 - 8))(v6, v2);
      v12 += v13;
      if (!--v8)
      {
        return v24;
      }

      v10(v6, v12, v2, v20);
    }
  }

  return result;
}

uint64_t sub_1000B2650(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FF9C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B26C0()
{
  result = qword_1001FF9D8;
  if (!qword_1001FF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF9D8);
  }

  return result;
}

uint64_t sub_1000B2714(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_1000B2720(void *a1)
{
  v3 = OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_tableView;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for IntrinsicSizeAdjustingTableView()) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_tableViewHorizontalPadding] = 0x4034000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_tableViewVerticalPadding] = 0x403A000000000000;
  v1[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_hidesBackButton] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_suiteManager] = a1;
  v4 = a1;
  if (_UISolariumEnabled())
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000016, 0x800000010018F930);
  v6 = String._bridgeToObjectiveC()();

  v7 = sub_100049C98(0xD000000000000019);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v7, v8);

  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();
  v13.receiver = v1;
  v13.super_class = type metadata accessor for SelfServiceSuitePickerViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithTitle:detailText:symbolName:contentLayout:", v6, v9, v10, v5);

  return v11;
}

void sub_1000B2984()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_tableView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_suiteManager];
  [v1 setDataSource:v2];
  [v1 setDelegate:v2];
  [v1 setSeparatorStyle:0];
  [v1 setShowsVerticalScrollIndicator:0];
  v3 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor:v3];

  [v1 setScrollEnabled:0];
  [v1 setRowHeight:UITableViewAutomaticDimension];
  [v1 setEstimatedRowHeight:300.0];
  type metadata accessor for SelfServiceViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = String._bridgeToObjectiveC()();
  [v1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  v6 = [v0 scrollView];
  [v6 setShowsVerticalScrollIndicator:0];
}

id sub_1000B2B44()
{
  v1 = 0.0;
  if (_UISolariumEnabled())
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 20.0;
  }

  if (!_UISolariumEnabled())
  {
    v1 = 26.0;
  }

  v3 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10017ED60;
  v5 = *&v0[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_tableView];
  v6 = [v5 leadingAnchor];
  v7 = [v0 contentView];
  v8 = [v7 leadingAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:v2];
  *(v4 + 32) = v9;
  v10 = [v5 trailingAnchor];
  v11 = [v0 contentView];
  v12 = [v11 trailingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:-v2];
  *(v4 + 40) = v13;
  v14 = [v5 topAnchor];
  v15 = [v0 contentView];
  v16 = [v15 topAnchor];

  v17 = [v14 constraintEqualToAnchor:v16 constant:v1];
  *(v4 + 48) = v17;
  v18 = [v5 bottomAnchor];
  v19 = [v0 contentView];
  v20 = [v19 bottomAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v4 + 56) = v21;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];

  return [v5 invalidateIntrinsicContentSize];
}

void sub_1000B2FD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_tableView);
}

id sub_1000B3018()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelfServiceSuitePickerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000B30BC(void *a1, void *a2)
{
  v5 = sub_10003C49C(&qword_1001FDF98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v102 = &v95 - v7;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v108 = *(v8 - 1);
  v109 = v8;
  __chkstk_darwin(v8);
  v105 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v106 = *(v10 - 8);
  v107 = v10;
  __chkstk_darwin(v10);
  v104 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  v13 = qword_1001FC738;
  v14 = a2;
  v15 = a1;
  v16 = v14;
  v17 = v15;
  v18 = v16;
  v19 = v2;
  swift_retain_n();
  v20 = v17;
  v21 = v18;
  v22 = v19;
  v23 = v22;
  if (v13 != -1)
  {
    v22 = swift_once();
  }

  v24 = qword_1001FEED8;
  if (qword_1001FEED8)
  {
    v99 = v6;
    v100 = v5;
    v25 = qword_1001FEED0;
    __chkstk_darwin(v22);
    *(&v95 - 4) = v20;
    *(&v95 - 3) = v25;
    *(&v95 - 2) = v24;
    *(&v95 - 1) = v21;
    v26 = sub_10003C49C(&qword_1001FDF90);
    OS_dispatch_queue.sync<A>(execute:)();
    v27 = aBlock;
    v103 = v23;
    if (aBlock)
    {
      v95 = v26;
      v96 = 0;
      if (qword_1001FC820 != -1)
      {
        v94 = aBlock;
        swift_once();
        v27 = v94;
      }

      v28 = qword_10020A588;
      v98 = v27;
      v29 = [v27 secondaryAssetLocator];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = swift_allocObject();
      v33[2] = v20;
      v33[3] = v21;
      v33[4] = sub_1000B508C;
      v33[5] = v12;
      v97 = v28;
      v34 = v28[5];
      v35 = v20;
      v36 = v21;
      v101 = v12;
      swift_retain_n();
      v37 = v35;
      v38 = v36;
      v39 = v32;
      v40 = v30;
      v41 = v38;
      [v34 lock];
      v42 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v42 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (v42)
      {
        type metadata accessor for ImageLoader();
        v43 = swift_allocObject();
        aBlock = 0;
        v112 = 0;
        LOBYTE(v113) = 2;
        Published.init(initialValue:)();
        v44 = OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock;
        *(v43 + v44) = [objc_allocWithZone(NSLock) init];
        *(v43 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 0;
        v45 = (v43 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
        *v45 = v40;
        v45[1] = v39;
        swift_beginAccess();

        sub_10003C49C(&qword_1001FDFA0);
        v46 = v102;
        Published.projectedValue.getter();
        swift_endAccess();
        v47 = swift_allocObject();
        v109 = v34;
        v47[2] = sub_1000B50E8;
        v47[3] = v33;
        v47[4] = v97;
        v47[5] = v43;
        sub_10005C71C(&qword_1001FDFA8, &qword_1001FDF98);

        v48 = v100;
        Publisher<>.sink(receiveValue:)();

        (*(v99 + 8))(v46, v48);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        swift_beginAccess();

        sub_100108C88(&v110, v43);
        swift_endAccess();

        sub_100086EF0();
        [v109 unlock];
      }

      else
      {
        v102 = v39;
        __chkstk_darwin([v34 unlock]);
        v100 = v66;
        *(&v95 - 4) = v66;
        *(&v95 - 3) = v25;
        *(&v95 - 2) = v24;
        *(&v95 - 1) = v41;
        v67 = v101;
        swift_retain_n();
        v68 = v41;
        OS_dispatch_queue.sync<A>(execute:)();
        v69 = aBlock;
        if (aBlock)
        {
          v70 = [aBlock primaryAssetLocator];
          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          sub_10010E128(v71, v73, v97, sub_1000B508C, v67);

          v37 = v100;
        }

        else
        {
          sub_10003E110(0, &qword_1001FD040);
          v99 = static OS_dispatch_queue.main.getter();
          v84 = swift_allocObject();
          v85 = v100;
          *(v84 + 16) = v100;
          *(v84 + 24) = v68;
          v86 = v103;
          *(v84 + 32) = 0;
          *(v84 + 40) = v86;
          *(v84 + 48) = 1;
          v115 = sub_1000B51F8;
          v116 = v84;
          aBlock = _NSConcreteStackBlock;
          v112 = 1107296256;
          v113 = sub_100031FA8;
          v114 = &unk_1001C3F30;
          v87 = _Block_copy(&aBlock);
          v88 = v85;
          v97 = v68;
          v89 = v86;

          v90 = v104;
          static DispatchQoS.unspecified.getter();
          aBlock = _swiftEmptyArrayStorage;
          sub_10005BD2C();
          sub_10003C49C(&unk_1001FD050);
          sub_10005C71C(&qword_1001FDE70, &unk_1001FD050);
          v91 = v105;
          v92 = v109;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v93 = v99;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v87);

          (*(v108 + 8))(v91, v92);
          (*(v106 + 8))(v90, v107);

          v37 = v85;
        }
      }
    }

    else
    {
      __chkstk_darwin(0);
      *(&v95 - 4) = v20;
      *(&v95 - 3) = v25;
      *(&v95 - 2) = v24;
      *(&v95 - 1) = v21;
      swift_retain_n();
      v58 = v21;
      OS_dispatch_queue.sync<A>(execute:)();
      v59 = aBlock;
      if (aBlock)
      {
        v60 = v103;
        if (qword_1001FC820 != -1)
        {
          swift_once();
        }

        v61 = qword_10020A588;
        v62 = [v59 primaryAssetLocator];
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        sub_10010E128(v63, v65, v61, sub_1000B508C, v12);
      }

      else
      {
        sub_10003E110(0, &qword_1001FD040);
        v102 = static OS_dispatch_queue.main.getter();
        v74 = swift_allocObject();
        *(v74 + 16) = v20;
        *(v74 + 24) = v58;
        v75 = v103;
        *(v74 + 32) = 0;
        *(v74 + 40) = v75;
        *(v74 + 48) = 1;
        v115 = sub_1000B51F8;
        v116 = v74;
        aBlock = _NSConcreteStackBlock;
        v112 = 1107296256;
        v113 = sub_100031FA8;
        v114 = &unk_1001C3E90;
        v76 = _Block_copy(&aBlock);
        v77 = v20;
        v78 = v58;
        v79 = v75;

        v80 = v104;
        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_10005BD2C();
        sub_10003C49C(&unk_1001FD050);
        v101 = v12;
        sub_10005C71C(&qword_1001FDE70, &unk_1001FD050);
        v81 = v105;
        v82 = v109;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v83 = v102;
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v76);

        (*(v108 + 8))(v81, v82);
        (*(v106 + 8))(v80, v107);
      }
    }
  }

  else
  {
    sub_10003E110(0, &qword_1001FD040);
    v49 = v21;

    v103 = static OS_dispatch_queue.main.getter();
    v50 = swift_allocObject();
    *(v50 + 16) = v20;
    *(v50 + 24) = v49;
    *(v50 + 32) = 0;
    *(v50 + 40) = v23;
    *(v50 + 48) = 1;
    v115 = sub_1000B509C;
    v116 = v50;
    aBlock = _NSConcreteStackBlock;
    v112 = 1107296256;
    v113 = sub_100031FA8;
    v114 = &unk_1001C3E40;
    v51 = _Block_copy(&aBlock);
    v52 = v20;
    v53 = v49;
    v102 = v23;

    v54 = v104;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10005BD2C();
    sub_10003C49C(&unk_1001FD050);
    sub_10005C71C(&qword_1001FDE70, &unk_1001FD050);
    v55 = v105;
    v56 = v109;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = v103;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v51);

    (*(v108 + 8))(v55, v56);
    (*(v106 + 8))(v54, v107);
  }
}

uint64_t sub_1000B3F94(void *a1, char a2, void *a3, void *a4, void *a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v13 = *(v26 - 8);
  __chkstk_darwin(v26);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v25 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a1;
  *(v16 + 40) = a5;
  *(v16 + 48) = a2;
  aBlock[4] = sub_1000B51F8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C3FA8;
  v17 = _Block_copy(aBlock);
  v18 = a1;
  v19 = a5;
  v20 = a3;
  v21 = a4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050);
  sub_10005C71C(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v25;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v27 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v26);
}

void sub_1000B427C(uint64_t a1, void *a2, uint64_t a3, void *a4, char a5)
{
  if (qword_1001FC738 != -1)
  {
    a1 = swift_once();
  }

  v8 = qword_1001FEED0;
  v7 = qword_1001FEED8;
  if (qword_1001FEED8)
  {
    __chkstk_darwin(a1);
    v9 = a2;
    sub_10003C49C(&qword_1001FDF90);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v46)
    {
      v10 = [v46 suiteNameLocalizedString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
    }

    __chkstk_darwin(v11);
    v12 = v9;
    sub_10003C49C(&qword_1001FDF90);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v46)
    {
      v13 = [v46 suiteDescriptionLocalizedString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      goto LABEL_12;
    }
  }

  else
  {
  }

LABEL_12:
  v14 = sub_100096060(a2, v8, v7);
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    sub_10003C49C(&unk_1001FEAD0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10017EC00;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_10003DFBC();
    *(v18 + 32) = v16;
    *(v18 + 40) = v17;
    sub_1000494C8(0, 0, v18, 0xD00000000000001FLL, 0x800000010018F990);
  }

  v42 = swift_allocObject();
  *(v42 + 16) = a4;
  *(v42 + 24) = a2;
  v19 = type metadata accessor for SelfServiceSuiteDescriptionViewController();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_defaultOuterPadding] = 0x4034000000000000;
  *&v20[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_defaultInnerPadding] = 0x4028000000000000;
  *&v20[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_defaultHorizontalPadding] = 0x4042000000000000;
  *&v20[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButtonPointSize] = 0x403E000000000000;
  *&v20[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButtonSize] = 0x4048000000000000;
  *&v20[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_glyphPointSize] = 0x4051800000000000;
  *&v20[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageScreenSpaceRatio] = 0x3FD6666666666666;
  v21 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButton;
  v22 = objc_opt_self();
  v23 = a2;
  v43 = a4;
  *&v20[v21] = [v22 buttonWithType:0];
  v24 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_startDiagnosticButton;
  *&v20[v24] = [objc_opt_self() boldButton];
  v25 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageView;
  *&v20[v25] = [objc_allocWithZone(UIImageView) init];
  v26 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_scrollView;
  *&v20[v26] = [objc_allocWithZone(UIScrollView) init];
  v27 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_titleLabel;
  *&v20[v27] = [objc_allocWithZone(UILabel) init];
  v28 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_subtitleLabel;
  *&v20[v28] = [objc_allocWithZone(UILabel) init];
  v29 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_detailsLabel;
  *&v20[v29] = [objc_allocWithZone(UILabel) init];
  v30 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageViewContainerView;
  *&v20[v30] = [objc_allocWithZone(UIView) init];
  v20[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_isShowingGlyph] = 0;
  v31 = *&v20[v27];
  v32 = String._bridgeToObjectiveC()();
  [v31 setText:v32];

  v33 = *&v20[v28];
  v34 = String._bridgeToObjectiveC()();

  [v33 setText:v34];

  v35 = *&v20[v29];
  v36 = String._bridgeToObjectiveC()();

  [v35 setText:v36];

  v37 = &v20[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_startDiagnosticHandler];
  *v37 = sub_1000B517C;
  v37[1] = v42;
  v47.receiver = v20;
  v47.super_class = v19;

  v38 = objc_msgSendSuper2(&v47, "initWithNibName:bundle:", 0, 0);
  v39 = *&v38[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageView];
  v40 = v38;
  [v39 setImage:a3];
  v41 = String._bridgeToObjectiveC()();

  [v40 setTitle:v41];

  v40[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_isShowingGlyph] = a5 & 1;
  [v40 setModalPresentationStyle:1];

  [v43 presentViewController:v40 animated:1 completion:0];
}

void sub_1000B4918(uint64_t a1, void *a2)
{
  if (qword_1001FC738 != -1)
  {
    swift_once();
  }

  sub_100094488(qword_1001FEED0, qword_1001FEED8, a2, 0);
}

void sub_1000B49B8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  objc_allocWithZone(type metadata accessor for SuiteInProgressViewController());
  v10 = a2;
  v15 = sub_1000ECABC(a1, a2);
  v11 = &v15[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_onAppear];
  v12 = *&v15[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_onAppear];
  *v11 = a3;
  *(v11 + 1) = a4;
  sub_10003E418(a3, a4);
  sub_10003C52C(v12);
  v13 = [a5 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 pushViewController:v15 animated:1];
  }
}

uint64_t sub_1000B4AB4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v23 = *(v12 - 8);
  v24 = v12;
  __chkstk_darwin(v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v22 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = v4;
  aBlock[4] = sub_1000B4DF8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C3DC8;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  v18 = a2;
  sub_10003E418(a3, a4);
  v19 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050);
  sub_10005C71C(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v22;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v25 + 8))(v11, v9);
  return (*(v23 + 8))(v14, v24);
}

uint64_t sub_1000B4DA0()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B4E08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B4E20(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, uint64_t), uint64_t a5)
{
  if (a1)
  {
    return (a4)(a1, 0);
  }

  v9 = qword_1001FC738;
  v10 = swift_retain_n();
  if (v9 != -1)
  {
    v10 = swift_once();
  }

  if (qword_1001FEED8)
  {
    __chkstk_darwin(v10);
    v11 = a3;
    sub_10003C49C(&qword_1001FDF90);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v18)
    {
      if (qword_1001FC820 != -1)
      {
        swift_once();
      }

      v12 = qword_10020A588;
      v13 = [v18 primaryAssetLocator];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      sub_10010E128(v14, v16, v12, a4, a5);
    }

    else
    {
      a4(0, 1);
    }
  }

  else
  {
    v17 = a3;
    a4(0, 1);
  }
}

uint64_t sub_1000B5044()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B50A0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B50F4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B513C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B5184()
{

  return _swift_deallocObject(v0, 49, 7);
}

void sub_1000B5318()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1];

  if (v2)
  {
    v3 = [objc_opt_self() systemWhiteColor];
    v4 = [v2 imageWithTintColor:v3 renderingMode:1];

    if (v4)
    {
      v5 = [objc_allocWithZone(UIImageView) initWithImage:v4];
      [v5 setContentMode:1];
      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v0 addSubview:v5];
      v6 = objc_opt_self();
      sub_10003C49C(&unk_1001FD020);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_10017ED60;
      v8 = [v5 topAnchor];
      v9 = [v0 topAnchor];
      v10 = [v8 constraintEqualToAnchor:v9];

      *(v7 + 32) = v10;
      v11 = [v5 bottomAnchor];
      v12 = [v0 bottomAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];

      *(v7 + 40) = v13;
      v14 = [v5 leadingAnchor];
      v15 = [v0 leadingAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];

      *(v7 + 48) = v16;
      v17 = [v5 trailingAnchor];

      v18 = [v0 trailingAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];

      *(v7 + 56) = v19;
      sub_10003E110(0, &qword_1001FD550);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v6 activateConstraints:isa];
    }
  }
}

uint64_t sub_1000B578C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = v18;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v19);
}

id sub_1000B5A58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticsIconNonAnimatedView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000B5AB0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B5AFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1000B5B34(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_iconColorHex] = 16717622;
  *&v2[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_qrCodeView] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_barButton] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_completeInStoreButton] = 0;
  v5 = OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_url;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  v2[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_role] = a2 & 1;
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000018, 0x800000010018FB00);
  v8 = String._bridgeToObjectiveC()();

  v9 = sub_100049C98(0xD00000000000001BLL);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v9, v10);

  v11 = String._bridgeToObjectiveC()();

  v22.receiver = v2;
  v22.super_class = type metadata accessor for AssessmentQRCodeViewController();
  v12 = objc_msgSendSuper2(&v22, "initWithTitle:detailText:icon:contentLayout:", v8, v11, 0, 1);

  v13 = v12;
  sub_1000B6C5C();
  v15 = v14;
  v16 = type metadata accessor for QRCodeView();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration] = v15;
  v21.receiver = v17;
  v21.super_class = v16;

  v18 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v18 setOpaque:{0, v21.receiver, v21.super_class}];
  [v18 setNeedsDisplay];

  (*(v7 + 8))(a1, v6);
  v19 = *&v13[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_qrCodeView];
  *&v13[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_qrCodeView] = v18;

  return v13;
}

void sub_1000B5DCC()
{
  v1 = v0;
  swift_getObjectType();
  v45.receiver = v0;
  v45.super_class = type metadata accessor for AssessmentQRCodeViewController();
  objc_msgSendSuper2(&v45, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 setAccessibilityIgnoresInvertColors:1];

  sub_10003C49C(&qword_1001FE160);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10017EC00;
  *(v4 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v4 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v5 = [v0 navigationItem];
  [v5 setHidesBackButton:1];

  sub_10003E110(0, &qword_1001FD3B8);
  sub_10003E110(0, &qword_1002023B0);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v6;
  v46.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v46.is_nil = 0;
  v7.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v46, v47).super.super.isa;
  v8 = OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_barButton;
  v9 = *&v1[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_barButton];
  *&v1[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_barButton] = v7;

  LODWORD(v5) = _UISolariumEnabled();
  v10 = [v1 navigationItem];
  v11 = *&v1[v8];
  v12 = &selRef_setLeftBarButtonItem_;
  if (!v5)
  {
    v12 = &selRef_setRightBarButtonItem_;
  }

  [v10 *v12];

  v13 = *&v1[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_qrCodeView];
  if (v13)
  {
    v14 = v13;
    [v14 setContentMode:1];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v1 contentView];
    v16 = [objc_opt_self() systemBackgroundColor];
    [v15 setBackgroundColor:v16];

    v17 = [v1 contentView];
    [v17 addSubview:v14];

    sub_10003C49C(&unk_1001FD020);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10017ED60;
    v19 = [v14 widthAnchor];
    v20 = [v1 view];
    if (v20)
    {
      v21 = v20;
      v22 = objc_opt_self();
      [v21 bounds];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v48.origin.x = v24;
      v48.origin.y = v26;
      v48.size.width = v28;
      v48.size.height = v30;
      v31 = [v19 constraintEqualToConstant:CGRectGetWidth(v48) * 0.5];

      *(v18 + 32) = v31;
      v32 = [v14 heightAnchor];
      v33 = [v14 widthAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];

      *(v18 + 40) = v34;
      v35 = [v14 centerXAnchor];
      v36 = [v1 contentView];
      v37 = [v36 centerXAnchor];

      v38 = [v35 constraintEqualToAnchor:v37];
      *(v18 + 48) = v38;
      v39 = [v14 centerYAnchor];

      v40 = [v1 contentView];
      v41 = [v40 centerYAnchor];

      v42 = [v39 constraintEqualToAnchor:v41];
      *(v18 + 56) = v42;
      sub_10003E110(0, &qword_1001FD550);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v22 activateConstraints:isa];

      return;
    }

LABEL_9:
    __break(1u);
  }
}

void sub_1000B638C()
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

    v5 = *&v2[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_barButton];
    if (v5)
    {
      v6 = v5;
      [v6 setEnabled:0];
    }
  }
}

id sub_1000B64C0()
{
  sub_1000EC128(5);
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  result = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
  if (result)
  {

    return [result setResultCode:-4];
  }

  return result;
}

uint64_t sub_1000B6594(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AssessmentQRCodeViewController();
  result = objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  if (qword_1001FC6B8 != -1)
  {
    result = swift_once();
  }

  v4 = qword_10020A368;
  v5 = OBJC_IVAR____TtC11Diagnostics10Assertions_invertClassicColorsUserSetting;
  v6 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_invertClassicColorsUserSetting);
  if (v6 == 2)
  {
    result = _AXSClassicInvertColorsEnabled();
    *(v4 + v5) = result != 0;
    if (!result)
    {
      return result;
    }
  }

  else if ((v6 & 1) == 0)
  {
    return result;
  }

  return _AXSClassicInvertColorsSetEnabled();
}

void sub_1000B66A0(char a1)
{
  v19.receiver = v1;
  v19.super_class = type metadata accessor for AssessmentQRCodeViewController();
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1);
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10003DAAC(v3, qword_10020A510);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    type metadata accessor for URL();
    sub_1000B6FD8();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_100056B7C(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Displaying QR code with URL: %s", v7, 0xCu);
    sub_100044554(v8);
  }

  if (v4[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_role])
  {
    if (qword_1001FC6C0 != -1)
    {
      swift_once();
    }

    sub_1000532CC();
  }

  else
  {
    if (qword_1001FC840 != -1)
    {
      swift_once();
    }

    sub_100138DC0();
  }

  if (sub_1000660CC())
  {
    v12 = OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_completeInStoreButton;
    if (!*&v4[OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_completeInStoreButton])
    {
      v13 = [objc_opt_self() accessoryButton];
      sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001CLL, 0x800000010018FAE0);
      v14 = String._bridgeToObjectiveC()();

      [v13 setTitle:v14 forState:0];

      sub_10003E110(0, &qword_1002023B0);
      v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      [v13 addAction:v15 forControlEvents:{64, 0, 0, 0, sub_1000B6B18, 0}];

      v16 = [v4 headerView];
      [v16 addAccessoryButton:v13];

      v17 = *&v4[v12];
      *&v4[v12] = v13;
    }
  }

  sub_1000EBDFC(3);
}

uint64_t sub_1000B6B18()
{
  sub_1000EC128(6);
  type metadata accessor for RootViewController();
  return sub_100060770(18);
}

void sub_1000B6C5C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = objc_opt_self();
  v4 = &selRef_whiteColor;
  if (v2 != 2)
  {
    v4 = &selRef_systemBackgroundColor;
  }

  v5 = [v3 *v4];
  v6 = [objc_opt_self() clearColor];
  v7 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.0901960784 blue:0.211764706 alpha:1.0];
  v8 = URL.absoluteString.getter();
  v10 = v9;
  type metadata accessor for AppleQRCodeConfiguration();
  swift_allocObject();
  AppleQRCodeConfiguration.init(utf8String:errorCorrection:style:roundedEye:)(v8, v10, 3, v5, v6, v7, 1, 1);
}

id sub_1000B6DF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssessmentQRCodeViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AssessmentQRCodeViewController()
{
  result = qword_1001FFAB0;
  if (!qword_1001FFAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B6F20()
{
  result = type metadata accessor for URL();
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

unint64_t sub_1000B6FD8()
{
  result = qword_1001FFAC0;
  if (!qword_1001FFAC0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FFAC0);
  }

  return result;
}

uint64_t sub_1000B7030()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B7070()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000B70A8()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_barButton);
  if (result)
  {
    return [result setEnabled:1];
  }

  return result;
}

uint64_t sub_1000B70D0(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC11Diagnostics30AssessmentQRCodeViewController_qrCodeView);
  if (v1)
  {
    v2 = v1;
    sub_1000B6C5C();
    *&v2[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration] = v3;

    [v2 setNeedsDisplay];
  }

  return result;
}

double sub_1000B7164@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 status];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = v9 == 0x73736563637573 && v11 == 0xE700000000000000;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    Image.init(systemName:)();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v13 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v7, v4);
    v14 = static Color.green.getter();
    *&v28[0] = v13;
    *(v28 + 8) = xmmword_1001802F0;
    *(&v28[1] + 1) = v14;
    LOBYTE(v29) = 0;
LABEL_7:

    sub_10003C49C(&qword_1001FFAF0);
    sub_1000B7968();
    _ConditionalContent<>.init(storage:)();
    v28[0] = v31;
    v28[1] = v32;
    v29 = v33;
    goto LABEL_8;
  }

  v20 = v9 == 0x6572756C696166 && v11 == 0xE700000000000000;
  if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    Image.init(systemName:)();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v21 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v7, v4);
    v22 = static Color.red.getter();
    *&v28[0] = v21;
    *(v28 + 8) = xmmword_1001802F0;
    *(&v28[1] + 1) = v22;
    LOBYTE(v29) = 1;
    goto LABEL_7;
  }

  if (v9 == 0x676E696E726177 && v11 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    Image.init(systemName:)();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v23 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v7, v4);
    v24 = static Color.yellow.getter();
    *&v28[0] = v23;
    *(v28 + 8) = xmmword_1001802F0;
    *(&v28[1] + 1) = v24;
    LOBYTE(v29) = 0;

    sub_10003C49C(&qword_1001FFAF0);
    sub_1000B7968();
    _ConditionalContent<>.init(storage:)();
    v28[0] = v31;
    v28[1] = v32;
    LOBYTE(v29) = v33;
    HIBYTE(v29) = 1;
  }

  else
  {
    if (v9 == 0x44455050494B53 && v11 == 0xE700000000000000)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        v29 = 0;
        memset(v28, 0, sizeof(v28));
        v30 = 1;
        sub_10003C49C(&qword_1001FFAC8);
        sub_1000B78EC(&qword_1001FFAD0, &qword_1001FFAC8, &unk_100182300, sub_1000B78BC);
        _ConditionalContent<>.init(storage:)();
        goto LABEL_12;
      }
    }

    Image.init(systemName:)();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v26 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v7, v4);
    v27 = static Color.yellow.getter();
    *&v28[0] = v26;
    *(v28 + 8) = xmmword_1001802F0;
    *(&v28[1] + 1) = v27;
    LOBYTE(v29) = 1;

    sub_10003C49C(&qword_1001FFAF0);
    sub_1000B7968();
    _ConditionalContent<>.init(storage:)();
    v28[0] = v31;
    v28[1] = v32;
    LOBYTE(v29) = v33;
    HIBYTE(v29) = 1;
  }

LABEL_8:
  sub_10003C49C(&qword_1001FFAE0);
  sub_1000B78BC();
  _ConditionalContent<>.init(storage:)();
  if (HIBYTE(v33))
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  v28[0] = v31;
  v28[1] = v32;
  v29 = v15 | v33;
  v30 = 0;
  sub_10003C49C(&qword_1001FFAC8);
  sub_1000B78EC(&qword_1001FFAD0, &qword_1001FFAC8, &unk_100182300, sub_1000B78BC);
  _ConditionalContent<>.init(storage:)();

LABEL_12:
  result = *&v31;
  v17 = v32;
  v18 = v33;
  v19 = v34;
  *a2 = v31;
  *(a2 + 16) = v17;
  *(a2 + 32) = v18;
  *(a2 + 34) = v19;
  return result;
}

uint64_t sub_1000B78EC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003C4E4(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B7968()
{
  result = qword_1001FFAE8;
  if (!qword_1001FFAE8)
  {
    sub_10003C4E4(&qword_1001FFAF0);
    sub_1000B79F4();
    sub_1000B7A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FFAE8);
  }

  return result;
}

unint64_t sub_1000B79F4()
{
  result = qword_1001FFAF8;
  if (!qword_1001FFAF8)
  {
    sub_10003C4E4(&qword_1001FFB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FFAF8);
  }

  return result;
}

unint64_t sub_1000B7A78()
{
  result = qword_1001FD950;
  if (!qword_1001FD950)
  {
    sub_10003C4E4(&qword_1001FD958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD950);
  }

  return result;
}

uint64_t sub_1000B7ADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1000BA310();
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = 11;
  }

  else
  {
    v8 = 2;
  }

  sub_1000EC128(v8);
  return a3(a1, a2);
}

size_t sub_1000B7C18(size_t a1, int64_t a2, char a3)
{
  result = sub_1000B8548(a1, a2, a3, *v3, &qword_1001FFB28, &unk_100182340, &type metadata accessor for URLQueryItem);
  *v3 = result;
  return result;
}

char *sub_1000B7C5C(char *a1, int64_t a2, char a3)
{
  result = sub_1000B7DA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000B7C7C(void *a1, int64_t a2, char a3)
{
  result = sub_1000B7E98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B7C9C(char *a1, int64_t a2, char a3)
{
  result = sub_1000B7FE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B7CBC(char *a1, int64_t a2, char a3)
{
  result = sub_1000B80EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000B7CDC(size_t a1, int64_t a2, char a3)
{
  result = sub_1000B8220(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000B7CFC(size_t a1, int64_t a2, char a3)
{
  result = sub_1000B8548(a1, a2, a3, *v3, &qword_1001FFB18, &unk_1001824C0, type metadata accessor for DeviceSelector.DataSourceItemState);
  *v3 = result;
  return result;
}

char *sub_1000B7D40(char *a1, int64_t a2, char a3)
{
  result = sub_1000B8438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000B7D60(size_t a1, int64_t a2, char a3)
{
  result = sub_1000B8548(a1, a2, a3, *v3, &qword_1001FEAE0, &unk_100180D50, &type metadata accessor for IndexPath);
  *v3 = result;
  return result;
}

char *sub_1000B7DA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003C49C(&qword_1001FFB30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1000B7E98(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10003C49C(&qword_1001FFB08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10003C49C(&qword_1001FFB10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000B7FE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003C49C(&qword_1001FE6C8);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000B80EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003C49C(&qword_100201290);
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
    v10 = _swiftEmptyArrayStorage;
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

size_t sub_1000B8220(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10003C49C(&qword_1001FFB20);
  v10 = *(sub_10003C49C(&unk_100201EF0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10003C49C(&unk_100201EF0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000B8438(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003C49C(&unk_1001FF8D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000B8548(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10003C49C(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id sub_1000B8724(uint64_t a1, uint64_t a2)
{
  v38 = 0xD000000000000017;
  v39 = 0x800000010018FE10;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      v6 = 0x4E414C575FLL;
    }

    else
    {
      v6 = 0x494649575FLL;
    }

    v7 = 0xE500000000000000;
    String.append(_:)(*&v6);

    v8._countAndFlagsBits = 0x454C5449545FLL;
    v8._object = 0xE600000000000000;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 0x4547415353454D5FLL;
    v9._object = 0xE800000000000000;
    String.append(_:)(v9);

    sub_1000EBDFC(11);
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v38, v39);

    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v38, v39);

    v32 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000002ELL, 0x800000010018FE30);
    v33 = v10;
    v34 = 2;
    v35 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000030, 0x800000010018FE60);
    v36 = v11;
    v37 = 0;
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;

    v13 = String._bridgeToObjectiveC()();
    v14 = String._bridgeToObjectiveC()();
    v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

    v16 = swift_allocObject();
    v16[2] = sub_1000BA308;
    v16[3] = v12;
    v16[4] = 0;

    v17 = String._bridgeToObjectiveC()();
    v30 = sub_1000BA3AC;
    v31 = v16;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100072168;
    v29 = &unk_1001C4390;
    v18 = _Block_copy(&aBlock);

    v19 = [objc_opt_self() actionWithTitle:v17 style:2 handler:v18];
    _Block_release(v18);

    [v15 addAction:v19];

    v20 = v37;
    v21 = swift_allocObject();
    v21[2] = sub_1000BA308;
    v21[3] = v12;
    v21[4] = 1;

    v22 = String._bridgeToObjectiveC()();
    v30 = sub_1000BA3AC;
    v31 = v21;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100072168;
    v29 = &unk_1001C4390;
    v23 = _Block_copy(&aBlock);

    v24 = [objc_opt_self() actionWithTitle:v22 style:v20 handler:v23];
    _Block_release(v23);

    [v15 addAction:v24];

    sub_10003C49C(&qword_1001FFB10);
    swift_arrayDestroy();

    swift_bridgeObjectRelease_n();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000B8BDC(uint64_t a1, unint64_t a2)
{
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000027, 0x800000010018FD50);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000029, 0x800000010018FD80);
  v2 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 19279, 0xE200000000000000);
  v4 = v3;
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000B7C7C(0, 1, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  v8 = (v7 + 1);

  if (v7 >= v6 >> 1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v5[2] = v8;
    v9 = &v5[3 * v7];
    v9[4] = v2;
    v9[5] = v4;
    v9[6] = 0;

    v8 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v22 = [objc_opt_self() alertControllerWithTitle:v8 message:v10 preferredStyle:1];

    v19 = v5[2];
    if (!v19)
    {
      break;
    }

    v6 = 0;
    v11 = v5 + 6;
    while (v6 < v5[2])
    {
      v12 = v5;
      v13 = v4;
      v2 = *(v11 - 1);
      v14 = *v11;
      v15 = swift_allocObject();
      v7 = a2;
      v15[2] = a1;
      v15[3] = a2;
      v15[4] = v6;

      v8 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_1000BA3AC;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100072168;
      aBlock[3] = &unk_1001C42C8;
      v16 = _Block_copy(aBlock);

      v17 = [objc_opt_self() actionWithTitle:v8 style:v14 handler:v16];
      _Block_release(v16);

      [v22 addAction:v17];

      v4 = v13;
      v5 = v12;
      v11 += 3;
      if (v19 == ++v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    sub_1000B7C7C((v6 > 1), v8, 1);
    v5 = aBlock[0];
  }

LABEL_6:

  swift_bridgeObjectRelease_n();

  return v22;
}

id sub_1000B8F1C(uint64_t a1, unint64_t a2)
{
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000025, 0x800000010018FDB0);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000027, 0x800000010018FDE0);
  v2 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 19279, 0xE200000000000000);
  v4 = v3;
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000B7C7C(0, 1, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  v8 = (v7 + 1);

  if (v7 >= v6 >> 1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v5[2] = v8;
    v9 = &v5[3 * v7];
    v9[4] = v2;
    v9[5] = v4;
    v9[6] = 0;

    v8 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v22 = [objc_opt_self() alertControllerWithTitle:v8 message:v10 preferredStyle:1];

    v19 = v5[2];
    if (!v19)
    {
      break;
    }

    v6 = 0;
    v11 = v5 + 6;
    while (v6 < v5[2])
    {
      v12 = v5;
      v13 = v4;
      v2 = *(v11 - 1);
      v14 = *v11;
      v15 = swift_allocObject();
      v7 = a2;
      v15[2] = a1;
      v15[3] = a2;
      v15[4] = v6;

      v8 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_1000BA3AC;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100072168;
      aBlock[3] = &unk_1001C4318;
      v16 = _Block_copy(aBlock);

      v17 = [objc_opt_self() actionWithTitle:v8 style:v14 handler:v16];
      _Block_release(v16);

      [v22 addAction:v17];

      v4 = v13;
      v5 = v12;
      v11 += 3;
      if (v19 == ++v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    sub_1000B7C7C((v6 > 1), v8, 1);
    v5 = aBlock[0];
  }

LABEL_6:

  swift_bridgeObjectRelease_n();

  return v22;
}

id sub_1000B925C(uint64_t a1, unint64_t a2)
{
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001CLL, 0x800000010018FD10);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010018FD30);
  v2 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x5353494D534944, 0xE700000000000000);
  v4 = v3;
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000B7C7C(0, 1, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  v8 = (v7 + 1);

  if (v7 >= v6 >> 1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v5[2] = v8;
    v9 = &v5[3 * v7];
    v9[4] = v2;
    v9[5] = v4;
    v9[6] = 0;

    v8 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v22 = [objc_opt_self() alertControllerWithTitle:v8 message:v10 preferredStyle:1];

    v19 = v5[2];
    if (!v19)
    {
      break;
    }

    v6 = 0;
    v11 = v5 + 6;
    while (v6 < v5[2])
    {
      v12 = v5;
      v13 = v4;
      v2 = *(v11 - 1);
      v14 = *v11;
      v15 = swift_allocObject();
      v7 = a2;
      v15[2] = a1;
      v15[3] = a2;
      v15[4] = v6;

      v8 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_1000BA3AC;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100072168;
      aBlock[3] = &unk_1001C4278;
      v16 = _Block_copy(aBlock);

      v17 = [objc_opt_self() actionWithTitle:v8 style:v14 handler:v16];
      _Block_release(v16);

      [v22 addAction:v17];

      v4 = v13;
      v5 = v12;
      v11 += 3;
      if (v19 == ++v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    sub_1000B7C7C((v6 > 1), v8, 1);
    v5 = aBlock[0];
  }

LABEL_6:

  swift_bridgeObjectRelease_n();

  return v22;
}

id sub_1000B95A8(uint64_t a1, uint64_t a2)
{
  sub_1000EBDFC(10);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000002DLL, 0x800000010018FBD0);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000030, 0x800000010018FC00);
  v4 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 19279, 0xE200000000000000);
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  aBlock[0] = _swiftEmptyArrayStorage;
  v8 = v6;

  sub_1000B7C7C(0, 1, 0);
  v9 = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage[2];
  v10 = _swiftEmptyArrayStorage[3];
  v12 = (v11 + 1);

  if (v11 >= v10 >> 1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9[2] = v12;
    v13 = &v9[3 * v11];
    v13[4] = v4;
    v13[5] = v8;
    v13[6] = 0;

    v4 = String._bridgeToObjectiveC()();
    v14 = String._bridgeToObjectiveC()();
    v24 = [objc_opt_self() alertControllerWithTitle:v4 message:v14 preferredStyle:1];

    v15 = v9;
    v23 = v9[2];
    if (!v23)
    {
      break;
    }

    v10 = 0;
    v16 = v9 + 6;
    while (v10 < v15[2])
    {
      v4 = *(v16 - 1);
      v17 = *v16;
      v18 = v8;
      v19 = swift_allocObject();
      v19[2] = sub_1000B9964;
      v19[3] = v7;
      v19[4] = v10;

      v20 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_1000B99AC;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100072168;
      aBlock[3] = &unk_1001C4110;
      v21 = _Block_copy(aBlock);

      v12 = [objc_opt_self() actionWithTitle:v20 style:v17 handler:v21];
      _Block_release(v21);

      v8 = v18;
      [v24 addAction:v12];

      v16 += 3;
      v11 = ++v10;
      if (v23 == v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    sub_1000B7C7C((v10 > 1), v12, 1);
    v9 = aBlock[0];
  }

LABEL_6:

  swift_bridgeObjectRelease_n();

  return v24;
}

uint64_t sub_1000B992C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B9964(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  sub_1000EC128(10);
  return v5(a1, a2);
}

uint64_t sub_1000B99B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000B99C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000023, 0x800000010018FC40);
  v5 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000025, 0x800000010018FC70);
  v7 = v6;
  v8 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 19279, 0xE200000000000000);
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = a2;
  v13 = v10;
  sub_10003E418(v12, a3);
  aBlock._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_1000B7C7C(0, 1, 0);
  countAndFlagsBits = _swiftEmptyArrayStorage;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  v17 = v16 + 1;

  if (v16 >= v15 >> 1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    countAndFlagsBits[2] = v17;
    v18 = &countAndFlagsBits[3 * v16];
    v18[4] = v8;
    v18[5] = v13;
    v18[6] = 0;
    v30 = v5;
    v31 = v7;

    swift_errorRetain();
    if (os_variant_has_internal_content())
    {
      strcpy(&aBlock, "\n\n[Internal] ");
      HIWORD(aBlock._object) = -4864;
      swift_errorRetain();
      sub_10003C49C(&qword_100201C30);
      v19._countAndFlagsBits = String.init<A>(reflecting:)();
      String.append(_:)(v19);

      String.append(_:)(aBlock);

      v5 = v30;
    }

    else
    {
    }

    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();
    v27 = [objc_opt_self() alertControllerWithTitle:v20 message:v21 preferredStyle:1];

    v17 = countAndFlagsBits;
    v16 = countAndFlagsBits[2];
    if (!v16)
    {
      break;
    }

    v13 = 0;
    v15 = v29;
    v22 = countAndFlagsBits + 6;
    while (v13 < *(v17 + 16))
    {
      v5 = *(v22 - 1);
      v23 = *v22;
      v24 = swift_allocObject();
      v24[2] = sub_1000B9DF4;
      v24[3] = v11;
      v24[4] = v13;

      v8 = String._bridgeToObjectiveC()();
      v29[2] = sub_1000BA3AC;
      v29[3] = v24;
      aBlock._countAndFlagsBits = _NSConcreteStackBlock;
      aBlock._object = 1107296256;
      v29[0] = sub_100072168;
      v29[1] = &unk_1001C4188;
      v7 = _Block_copy(&aBlock);

      v25 = [objc_opt_self() actionWithTitle:v8 style:v23 handler:v7];
      _Block_release(v7);

      [v27 addAction:v25];

      v17 = countAndFlagsBits;
      v22 += 3;
      if (v16 == ++v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    sub_1000B7C7C((v15 > 1), v17, 1);
    countAndFlagsBits = aBlock._countAndFlagsBits;
  }

LABEL_9:

  return v27;
}

id sub_1000B9DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000002ELL, 0x800000010018FCA0);
  v5 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000030, 0x800000010018FCD0);
  v7 = v6;
  v8 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 19279, 0xE200000000000000);
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = a2;
  v13 = v10;
  sub_10003E418(v12, a3);
  aBlock._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_1000B7C7C(0, 1, 0);
  countAndFlagsBits = _swiftEmptyArrayStorage;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  v17 = v16 + 1;

  if (v16 >= v15 >> 1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    countAndFlagsBits[2] = v17;
    v18 = &countAndFlagsBits[3 * v16];
    v18[4] = v8;
    v18[5] = v13;
    v18[6] = 0;
    v30 = v5;
    v31 = v7;

    swift_errorRetain();
    if (os_variant_has_internal_content())
    {
      strcpy(&aBlock, "\n\n[Internal] ");
      HIWORD(aBlock._object) = -4864;
      swift_errorRetain();
      sub_10003C49C(&qword_100201C30);
      v19._countAndFlagsBits = String.init<A>(reflecting:)();
      String.append(_:)(v19);

      String.append(_:)(aBlock);

      v5 = v30;
    }

    else
    {
    }

    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();
    v27 = [objc_opt_self() alertControllerWithTitle:v20 message:v21 preferredStyle:1];

    v17 = countAndFlagsBits;
    v16 = countAndFlagsBits[2];
    if (!v16)
    {
      break;
    }

    v13 = 0;
    v15 = v29;
    v22 = countAndFlagsBits + 6;
    while (v13 < *(v17 + 16))
    {
      v5 = *(v22 - 1);
      v23 = *v22;
      v24 = swift_allocObject();
      v24[2] = sub_1000BA3B0;
      v24[3] = v11;
      v24[4] = v13;

      v8 = String._bridgeToObjectiveC()();
      v29[2] = sub_1000BA3AC;
      v29[3] = v24;
      aBlock._countAndFlagsBits = _NSConcreteStackBlock;
      aBlock._object = 1107296256;
      v29[0] = sub_100072168;
      v29[1] = &unk_1001C4200;
      v7 = _Block_copy(&aBlock);

      v25 = [objc_opt_self() actionWithTitle:v8 style:v23 handler:v7];
      _Block_release(v7);

      [v27 addAction:v25];

      v17 = countAndFlagsBits;
      v22 += 3;
      if (v16 == ++v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    sub_1000B7C7C((v15 > 1), v17, 1);
    countAndFlagsBits = aBlock._countAndFlagsBits;
  }

LABEL_9:

  return v27;
}

uint64_t sub_1000BA228()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BA268()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1000BA298()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BA2D0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000BA310()
{
  result = qword_1001FDF50;
  if (!qword_1001FDF50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FDF50);
  }

  return result;
}

id sub_1000BA3B4()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v0 setFont:v1];

  [v0 setNumberOfLines:0];
  LODWORD(v1) = _UISolariumEnabled();
  v2 = objc_opt_self();
  v3 = &selRef_secondaryLabelColor;
  if (!v1)
  {
    v3 = &selRef_labelColor;
  }

  v4 = [v2 *v3];
  [v0 setTextColor:v4];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  return v0;
}

id sub_1000BA4CC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v0 setFont:v1];

  [v0 setNumberOfLines:1];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  v2 = [objc_opt_self() systemBlueColor];
  [v0 setTextColor:v2];

  return v0;
}

id sub_1000BA5C8()
{
  [v0 setSelectionStyle:0];
  v1 = objc_opt_self();
  v2 = [v1 secondarySystemBackgroundColor];
  [v0 setBackgroundColor:v2];

  v3 = [v0 layer];
  if (qword_1001FC750 != -1)
  {
    swift_once();
  }

  v4 = *&qword_10020A3D8;
  [v3 setCornerRadius:*&qword_10020A3D8];

  v5 = [v1 secondarySystemBackgroundColor];
  [v0 setBackgroundColor:v5];

  v6 = [v0 layer];
  [v6 setCornerRadius:v4];

  v7 = *&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_rootStackView];
  [v7 setDistribution:0];
  [v7 setDirectionalLayoutMargins:{16.0, 18.0, 16.0, 16.0}];
  [v7 setLayoutMarginsRelativeArrangement:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = *&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_descriptionStackView];
  [v8 setLayoutMarginsRelativeArrangement:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setDistribution:0];
  [v8 setSpacing:4.0];
  [v7 setAxis:0];
  [v7 setAlignment:3];
  [v8 setAxis:1];

  return [v8 setAlignment:1];
}

void sub_1000BA824()
{
  v1 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleLabel;
  [*&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleLabel] removeFromSuperview];
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImageView];
  [v2 removeFromSuperview];
  v3 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel;
  [*&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel] removeFromSuperview];
  v4 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreLabel;
  [*&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreLabel] removeFromSuperview];
  v5 = *&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_descriptionStackView];
  [v5 removeFromSuperview];
  v6 = *&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_rootStackView];
  [v6 removeFromSuperview];
  [v5 addArrangedSubview:*&v0[v1]];
  [v5 addArrangedSubview:*&v0[v3]];
  [v5 addArrangedSubview:*&v0[v4]];
  [v6 addArrangedSubview:v2];
  [v6 addArrangedSubview:v5];
  [v6 setCustomSpacing:v2 afterView:18.0];
  [v6 setCustomSpacing:v5 afterView:16.0];
  v7 = [v0 contentView];
  [v7 addSubview:v6];
}

void sub_1000BA9A8()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10017EDB0;
  v4 = *&v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_rootStackView];
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
  v21 = *&v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImageView];
  v22 = [v21 widthAnchor];
  v23 = [v22 constraintEqualToConstant:40.0];

  *(v3 + 64) = v23;
  v24 = [v21 heightAnchor];
  v25 = [v24 constraintEqualToConstant:40.0];

  *(v3 + 72) = v25;
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

CGFloat sub_1000BAD38()
{
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v21.origin.x = v3;
  v21.origin.y = v5;
  v21.size.width = v7;
  v21.size.height = v9;
  Width = CGRectGetWidth(v21);
  v11 = [v0 contentView];
  [v11 layoutMargins];
  v13 = v12;

  v14 = Width - v13;
  v15 = [v0 contentView];
  [v15 layoutMargins];
  v17 = v16;

  LODWORD(v18) = 1148846080;
  LODWORD(v19) = 1112014848;
  [*&v0[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_rootStackView] systemLayoutSizeFittingSize:v14 - v17 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v18, v19}];
  return UIViewNoIntrinsicMetric;
}

id sub_1000BAE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconSpacing] = 0x4032000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_defaultSpacing] = 0x4030000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_defaultVerticalSpacing] = 0x4010000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconDimensionSize] = 0x4044000000000000;
  v6 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_rootStackView;
  *&v3[v6] = [objc_allocWithZone(UIStackView) init];
  v7 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_descriptionStackView;
  *&v3[v7] = [objc_allocWithZone(UIStackView) init];
  *&v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImage] = 0;
  v8 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImageView;
  v9 = [objc_allocWithZone(UIImageView) init];
  [v9 setContentMode:1];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v3[v8] = v9;
  v10 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleLabel;
  v11 = [objc_allocWithZone(UILabel) init];
  v12 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v11 setFont:v12];

  [v11 setNumberOfLines:2];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setAdjustsFontForContentSizeCategory:1];
  *&v3[v10] = v11;
  v13 = &v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleText];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel;
  *&v3[v14] = sub_1000BA3B4();
  v15 = &v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleText];
  *v15 = 0;
  v15[1] = 0;
  v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleTruncated] = 0;
  v16 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreLabel;
  *&v3[v16] = sub_1000BA4CC();
  v3[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreEnabled] = 0;
  if (a3)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v20.receiver = v3;
  v20.super_class = type metadata accessor for SelfServiceViewCell();
  v18 = objc_msgSendSuper2(&v20, "initWithStyle:reuseIdentifier:", a1, v17);

  return v18;
}

id sub_1000BB118(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconSpacing] = 0x4032000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_defaultSpacing] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_defaultVerticalSpacing] = 0x4010000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconDimensionSize] = 0x4044000000000000;
  v3 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_rootStackView;
  *&v1[v3] = [objc_allocWithZone(UIStackView) init];
  v4 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_descriptionStackView;
  *&v1[v4] = [objc_allocWithZone(UIStackView) init];
  *&v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImage] = 0;
  v5 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImageView;
  v6 = [objc_allocWithZone(UIImageView) init];
  [v6 setContentMode:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v1[v5] = v6;
  v7 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleLabel;
  v8 = [objc_allocWithZone(UILabel) init];
  v9 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v8 setFont:v9];

  [v8 setNumberOfLines:2];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setAdjustsFontForContentSizeCategory:1];
  *&v1[v7] = v8;
  v10 = &v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleText];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel;
  *&v1[v11] = sub_1000BA3B4();
  v12 = &v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleText];
  *v12 = 0;
  v12[1] = 0;
  v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleTruncated] = 0;
  v13 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreLabel;
  *&v1[v13] = sub_1000BA4CC();
  v1[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreEnabled] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for SelfServiceViewCell();
  v14 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);

  if (v14)
  {
  }

  return v14;
}

void sub_1000BB38C()
{

  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreLabel);
}

id sub_1000BB444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelfServiceViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000BB560(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImage);
  *(v1 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImage) = a1;
  v4 = a1;

  v5 = *(v1 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_iconImageView);
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = a1;
  v11[4] = sub_1000BB6D4;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100031FA8;
  v11[3] = &unk_1001C43E0;
  v8 = _Block_copy(v11);
  v9 = v4;
  v10 = v5;

  [v6 transitionWithView:v10 duration:5242880 options:v8 animations:0 completion:0.1];
  _Block_release(v8);
}

uint64_t sub_1000BB694()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BB6DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000BB6F4()
{
  v1 = [v0 buttonTray];
  v2 = [v1 allButtons];

  sub_1000BCAA4();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();

    if (v5)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v4)
    {
      return;
    }
  }

  v11 = [objc_opt_self() boldButton];
  if (*(v0 + OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle + 8))
  {

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v11 setTitle:v6 forState:0];

  [v11 addTarget:v0 action:"primaryButtonPressed:" forControlEvents:64];
  v7 = [v0 buttonTray];
  [v7 addButton:v11];

  if ((*((swift_isaMask & *v0) + 0xF8))())
  {
    v8 = [objc_opt_self() linkButton];
    if (*(v0 + OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryActionTitle + 8))
    {

      v9 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = 0;
    }

    [v8 setTitle:v9 forState:0];

    [v8 addTarget:v0 action:"secondaryButtonPressed:" forControlEvents:64];
    v10 = [v0 buttonTray];
    [v10 addButton:v8];
  }
}

void sub_1000BB9C0(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ConsentNoticeViewController();
  objc_msgSendSuper2(&v11, "viewWillAppear:", a1 & 1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [v1 navigationController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 navigationBar];

      v6 = [objc_allocWithZone(UIImage) init];
      [v5 setBackgroundImage:v6 forBarMetrics:0];
    }

    v7 = [v1 navigationController];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 navigationBar];

      v10 = [objc_allocWithZone(UIImage) init];
      [v9 setShadowImage:v10];
    }
  }

  sub_1000BB6F4();
}

char *sub_1000BBCA4(char *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *&result[*a4];
  if (v4)
  {
    v5 = result;
    v6 = sub_10003C48C(v4);
    v4(v6);

    return sub_10003C52C(v4);
  }

  return result;
}

id sub_1000BBD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = &v7[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v7[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryActionTitle];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v7[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v7[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v7[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v17 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  v17 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = String._bridgeToObjectiveC()();

LABEL_6:
  v21.receiver = v7;
  v21.super_class = type metadata accessor for ConsentNoticeViewController();
  v19 = objc_msgSendSuper2(&v21, "initWithTitle:detailText:symbolName:contentLayout:", v16, v17, v18, a7);

  return v19;
}

id sub_1000BBF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = &v6[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v6[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryActionTitle];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v6[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v6[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v6[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v6;
  v19.super_class = type metadata accessor for ConsentNoticeViewController();
  v17 = objc_msgSendSuper2(&v19, "initWithTitle:detailText:icon:contentLayout:", v15, v16, a5, a6);

  return v17;
}

id sub_1000BC0A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConsentNoticeViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000BC190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5 == 0;
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001ALL, 0x8000000100190050);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001CLL, 0x8000000100190070);
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:v8];

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000018, 0x8000000100190090);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v11;

  v13 = v11;
  v14 = String._bridgeToObjectiveC()();

  v32 = sub_1000BCB04;
  v33 = v12;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100072168;
  v31 = &unk_1001C4458;
  v15 = _Block_copy(&aBlock);

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:2 handler:v15];
  _Block_release(v15);

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000017, 0x80000001001900B0);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = v13;
  v19 = v13;
  sub_10003C48C(a3);
  v20 = String._bridgeToObjectiveC()();

  v32 = sub_1000BCB14;
  v33 = v18;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100072168;
  v31 = &unk_1001C44A8;
  v21 = _Block_copy(&aBlock);

  v22 = [v16 actionWithTitle:v20 style:1 handler:v21];
  _Block_release(v21);

  [v19 addAction:v17];
  [v19 addAction:v22];
  if (a5)
  {
    swift_unknownObjectRetain();
    v23 = [v19 popoverPresentationController];
    if (!v23)
    {

      swift_unknownObjectRelease();
      return v19;
    }

    v24 = v23;
    [v23 setSourceItem:a5];

    swift_unknownObjectRelease();
  }

  return v19;
}

uint64_t sub_1000BC590(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000BC5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5 == 0;
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000021, 0x80000001001900D0);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000023, 0x8000000100190100);
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:v8];

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000020, 0x8000000100190130);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v11;

  v13 = v11;
  v14 = String._bridgeToObjectiveC()();

  v32 = sub_1000BC9F8;
  v33 = v12;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100072168;
  v31 = &unk_1001C44F8;
  v15 = _Block_copy(&aBlock);

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:2 handler:v15];
  _Block_release(v15);

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000024, 0x8000000100190160);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = v13;
  v19 = v13;
  sub_10003C48C(a3);
  v20 = String._bridgeToObjectiveC()();

  v32 = sub_1000BCA70;
  v33 = v18;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100072168;
  v31 = &unk_1001C4548;
  v21 = _Block_copy(&aBlock);

  v22 = [v16 actionWithTitle:v20 style:1 handler:v21];
  _Block_release(v21);

  [v19 addAction:v17];
  [v19 addAction:v22];
  if (a5)
  {
    swift_unknownObjectRetain();
    v23 = [v19 popoverPresentationController];
    if (!v23)
    {

      swift_unknownObjectRelease();
      return v19;
    }

    v24 = v23;
    [v23 setSourceItem:a5];

    swift_unknownObjectRelease();
  }

  return v19;
}

uint64_t sub_1000BC9B8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BCA28()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BCA74()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

unint64_t sub_1000BCAA4()
{
  result = qword_1001FEE40;
  if (!qword_1001FEE40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FEE40);
  }

  return result;
}

uint64_t sub_1000BCB18(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_10003C49C(&qword_1001FFE40);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Session.CollectOptions();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_1000C5A68(&qword_100202930, &type metadata accessor for Session.CollectOptions);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v26;
  sub_1000C5A68(&qword_1001FFE48, &type metadata accessor for Session.CollectOptions);
  v24 = a2;
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v20 = v27;
  sub_10009DDBC(v7, v27, &qword_1001FFE40);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t sub_1000BCE1C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = type metadata accessor for IndexPath();
  v7 = __chkstk_darwin(v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = _swiftEmptyArrayStorage;
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000B7D60(0, v23[2] + 1, 1);
          v23 = v40;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_1000B7D60(v25 > 1, v26 + 1, 1);
          v23 = v40;
        }

        v23[2] = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_1000BD0EC()
{
  v1 = type metadata accessor for TargetDevice.DeviceType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TargetDevice();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DeviceSelector.DataSourceItemState();
  __chkstk_darwin(v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5A04(v0, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v11, v1);
    Hasher._combine(_:)(1uLL);
    sub_1000C5A68(&unk_1001FFDD0, &type metadata accessor for TargetDevice.DeviceType);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    Hasher._combine(_:)(0);
    sub_1000C5A68(&unk_1001FDED0, &type metadata accessor for TargetDevice);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v6 + 8))(v8, v5);
  }
}

Swift::Int sub_1000BD3A4()
{
  Hasher.init(_seed:)();
  sub_1000BD0EC();
  return Hasher._finalize()();
}

Swift::Int sub_1000BD3E8()
{
  Hasher.init(_seed:)();
  sub_1000BD0EC();
  return Hasher._finalize()();
}

id sub_1000BD428()
{
  v0 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  [v0 startAnimating];
  v1 = [objc_allocWithZone(UILabel) init];
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000024, 0x80000001001903C0);
  v2 = String._bridgeToObjectiveC()();

  [v1 setText:v2];

  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v1 setFont:v3];

  v4 = [objc_opt_self() labelColor];
  [v1 setTextColor:v4];

  [v1 setNumberOfLines:0];
  sub_10003C49C(&unk_1001FD020);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10017ED90;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  v6 = objc_allocWithZone(UIStackView);
  sub_10003E110(0, &qword_1001FF090);
  v7 = v0;
  v8 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v6 initWithArrangedSubviews:isa];

  [v10 setSpacing:16.0];
  [v10 setAxis:1];
  [v10 setAlignment:3];

  return v10;
}

id sub_1000BD678()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10017ED90;
  v6 = [v3 widthAnchor];
  v7 = [v6 constraintEqualToConstant:70.0];

  *(v5 + 32) = v7;
  v8 = [v3 heightAnchor];
  v9 = [v8 constraintEqualToConstant:70.0];

  *(v5 + 40) = v9;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];

  v11 = [objc_allocWithZone(UILabel) init];
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000025, 0x8000000100190390);
  v12 = String._bridgeToObjectiveC()();

  [v11 setText:v12];

  v13 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v11 setFont:v13];

  v14 = [objc_opt_self() labelColor];
  [v11 setTextColor:v14];

  [v11 setTextAlignment:1];
  [v11 setNumberOfLines:0];
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10017ED90;
  *(v15 + 32) = v3;
  *(v15 + 40) = v11;
  v16 = objc_allocWithZone(UIStackView);
  sub_10003E110(0, &qword_1001FF090);
  v17 = v11;
  v18 = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v16 initWithArrangedSubviews:v18];

  [v19 setSpacing:16.0];
  [v19 setAxis:1];
  [v19 setAlignment:3];

  return v19;
}

id sub_1000BDA58(char a1)
{
  v3 = &v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_DeviceSelectorHeaderIdentifier];
  *v3 = 0xD00000000000001ELL;
  v3[1] = 0x80000001001901C0;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tableViewPadding] = 0x4032000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tableRowHeight] = 0x4054000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryOverlayPadding] = 0x4040000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_noDeviceDiscoveryTimeOut] = 0x4014000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_continueButton] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tryAgainButton] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_dataSource] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryTimeoutTimer] = 0;
  v4 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryActivityView;
  *&v1[v4] = sub_1000BD428();
  v5 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_noDevicesView;
  *&v1[v5] = sub_1000BD678();
  v1[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_consentState] = a1;
  v6 = sub_1000CA0BC();
  v7 = "iew";
  if (v6)
  {
    v7 = "ELS_DEVICE_SELECTOR_SUBTITLE";
    v8 = 0xD00000000000001FLL;
  }

  else
  {
    v8 = 0xD000000000000019;
  }

  if (v6)
  {
    v9 = "ELS_DEVICE_SELECTOR_TITLE_MULTI";
  }

  else
  {
    v9 = "ELS_DEVICE_SELECTOR_TITLE";
  }

  if (v6)
  {
    v10 = 0xD000000000000022;
  }

  else
  {
    v10 = 0xD00000000000001CLL;
  }

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v8, (v7 | 0x8000000000000000));
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v10, (v9 | 0x8000000000000000));
  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();

  v15.receiver = v1;
  v15.super_class = type metadata accessor for DeviceSelector();
  v13 = objc_msgSendSuper2(&v15, "initWithTitle:detailText:symbolName:contentLayout:", v11, v12, 0, 3);

  return v13;
}

id sub_1000BDC64()
{
  v0 = ELSDeviceSelectionSingle;
  v1 = ELSDeviceSelectionRequirementTypeRequired;
  v2 = objc_opt_self();
  v3 = v0;
  v4 = v1;
  v5 = [v2 sharedManager];
  v6 = [v5 snapshot];

  v7 = [v6 deviceSelection];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = sub_1000C61A0();
  sub_10003C49C(&qword_1001FFE00);
  sub_1000CA2EC();
  AnyHashable.init<A>(_:)();
  if (!*(v8 + 16) || (v9 = sub_100064B74(v21), (v10 & 1) == 0))
  {

    sub_10003DB48(v21);
LABEL_11:
    v22 = 0u;
    v23 = 0u;
    goto LABEL_12;
  }

  sub_10003E010(*(v8 + 56) + 32 * v9, &v22);
  sub_10003DB48(v21);

  if (!*(&v23 + 1))
  {
LABEL_12:
    sub_10003DD84(&v22, &unk_1001FD720);
    return v3;
  }

  sub_10003C49C(&unk_100202960);
  if (swift_dynamicCast())
  {
    v11 = v21[0];
    v12 = ELSDeviceSelectionMapSelectionKey;
    *&v22 = ELSDeviceSelectionMapSelectionKey;
    type metadata accessor for ELSDeviceSelectionMapKey(0);
    sub_1000C5A68(&qword_1001FCD10, type metadata accessor for ELSDeviceSelectionMapKey);
    v13 = v12;
    AnyHashable.init<A>(_:)();
    if (*(v11 + 16) && (v14 = sub_100064B74(v21), (v15 & 1) != 0))
    {
      sub_10003E010(*(v11 + 56) + 32 * v14, &v22);
      sub_10003DB48(v21);
      type metadata accessor for ELSDeviceSelection(0);
      if (swift_dynamicCast())
      {

        v3 = v20;
      }
    }

    else
    {
      sub_10003DB48(v21);
    }

    v17 = ELSDeviceSelectionMapRequirementTypeKey;
    AnyHashable.init<A>(_:)();
    if (*(v11 + 16) && (v18 = sub_100064B74(v21), (v19 & 1) != 0))
    {
      sub_10003E010(*(v11 + 56) + 32 * v18, &v22);
      sub_10003DB48(v21);

      type metadata accessor for ELSDeviceSelectionRequirementType(0);
      if (swift_dynamicCast())
      {
      }
    }

    else
    {

      sub_10003DB48(v21);
    }
  }

  return v3;
}

void sub_1000BDFB4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DeviceSelector();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];

    v4 = [v0 headerView];
    [v4 setHidden:1];

    [*&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_noDevicesView] setHidden:1];
    sub_1000BF08C();
    sub_1000BFE00();
    sub_1000BE228();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000BE228()
{
  v1 = objc_opt_self();
  v2 = [v1 boldButton];
  v3 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_continueButton;
  v4 = *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_continueButton];
  *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_continueButton] = v2;
  v5 = v2;

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x45554E49544E4F43, 0xE800000000000000);
  v6 = String._bridgeToObjectiveC()();

  [v5 setTitle:v6 forState:0];

  v7 = *&v0[v3];
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  [v7 addTarget:v0 action:"continueConsent" forControlEvents:64];
  v8 = *&v0[v3];
  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v8 setEnabled:0];
  v9 = [v0 buttonTray];
  if (!*&v0[v3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v9 addButton:?];

  v11 = [v1 boldButton];
  v12 = OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tryAgainButton;
  v13 = *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tryAgainButton];
  *&v0[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_tryAgainButton] = v11;
  v14 = v11;

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x494147415F595254, 0xE90000000000004ELL);
  v15 = String._bridgeToObjectiveC()();

  [v14 setTitle:v15 forState:0];

  v16 = *&v0[v12];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v16 addTarget:v0 action:"tryAgain" forControlEvents:64];
  v17 = *&v0[v12];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v17 setHidden:1];
  v18 = [v0 buttonTray];
  if (!*&v0[v12])
  {
LABEL_15:
    __break(1u);
    return;
  }

  v19 = v18;
  [v18 addButton:?];
}

void sub_1000BE490()
{
  v1 = v0;
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    *(swift_allocObject() + 16) = v0;
    v2 = v0;
    Session.discoverDevices(callback:)();
  }

  sub_1000C1940();
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v9[4] = sub_1000CB0F8;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100072168;
  v9[3] = &unk_1001C4638;
  v5 = _Block_copy(v9);
  v6 = v1;

  v7 = [v3 scheduledTimerWithTimeInterval:0 repeats:v5 block:5.0];
  _Block_release(v5);
  v8 = *&v6[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryTimeoutTimer];
  *&v6[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_discoveryTimeoutTimer] = v7;
}

void sub_1000BE63C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = __chkstk_darwin(v10);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1001FC7D0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10003DAAC(v15, qword_10020A528);
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v43, v16, "Unable to start device discovery: %@", v17, 0xCu);
      sub_10003DD84(v18, &qword_1001FF0C0);

      v20 = v43;
    }

    else
    {
    }
  }

  else
  {
    v42 = v12;
    v43 = v11;
    if (qword_1001FC7D0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v22 = sub_10003DAAC(v21, qword_10020A528);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v41 = v7;
      v26 = v25;
      v27 = swift_slowAlloc();
      v39[1] = v22;
      v28 = v27;
      aBlock[0] = v27;
      *v26 = 136315138;
      type metadata accessor for TargetDevice();
      v29 = Array.description.getter();
      v40 = a1;
      v31 = sub_100056B7C(v29, v30, aBlock);
      a1 = v40;

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "Got devices: %s", v26, 0xCu);
      sub_100044554(v28);

      v7 = v41;
    }

    sub_1000C1940();
    if (*(a1 + 16))
    {
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Showing device selector table view", v34, 2u);
      }

      sub_10003E110(0, &qword_1001FD040);
      v35 = static OS_dispatch_queue.main.getter();
      v36 = swift_allocObject();
      *(v36 + 16) = a3;
      *(v36 + 24) = a1;
      aBlock[4] = sub_1000CB160;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C46B0;
      v37 = _Block_copy(aBlock);

      v38 = a3;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000C5A68(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
      sub_10003C49C(&unk_1001FD050);
      sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v37);

      (*(v7 + 8))(v9, v6);
      (*(v42 + 8))(v14, v43);
    }
  }
}