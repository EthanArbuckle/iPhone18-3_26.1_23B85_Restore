void sub_10003CB14()
{
  if (qword_10011C660 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A570(v0, qword_10011DA50);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    *(v3 + 4) = 128;
    _os_log_impl(&_mh_execute_header, v1, v2, "Continue Linking pressed in %ld", v3, 0xCu);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      sub_1000BA1BC();
      swift_unknownObjectRelease();
    }
  }
}

id sub_10003CCDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneLinkingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10003CDAC()
{
  result = qword_10011C908;
  if (!qword_10011C908)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011C908);
  }

  return result;
}

uint64_t sub_10003CE04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003CE44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003CE5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10003CEB8(int a1, uint64_t a2, double a3)
{
  v4 = v3;
  LODWORD(v6) = a1;
  v8 = type metadata accessor for BatteryIconStyle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v50 - v14;
  if (qword_10011C668 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000A570(v16, qword_10011DAC0);
  v17 = *(v9 + 16);
  v52 = a2;
  v17(v15, a2, v8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v51 = v6;
    v6 = v20;
    v21 = swift_slowAlloc();
    v50 = v4;
    v22 = v21;
    v53 = v21;
    *v6 = 134218498;
    *(v6 + 4) = a3;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v51 & 1;
    *(v6 + 18) = 2080;
    v17(v13, v15, v8);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    (*(v9 + 8))(v15, v8);
    v26 = sub_100078978(v23, v25, &v53);

    *(v6 + 20) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Battery: ViewUpdate percentage: %f isCharging: %{BOOL}d updateStyle: %s", v6, 0x1Cu);
    sub_10000EA94(v22);
    v4 = v50;

    LOBYTE(v6) = v51;
  }

  else
  {

    (*(v9 + 8))(v15, v8);
  }

  v4[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_isCharging] = v6 & 1;
  v27 = [objc_allocWithZone(NSNumberFormatter) init];
  [v27 setNumberStyle:3];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v29 = [v27 stringForObjectValue:isa];

  if (v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v30 = objc_allocWithZone(NSMutableAttributedString);
  v31 = String._bridgeToObjectiveC()();

  v32 = [v30 initWithString:v31];

  v33 = *&v4[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_position];
  v34 = *&v4[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_position + 8];
  if (v34 > 1)
  {
    if (v34 == 3)
    {
      goto LABEL_19;
    }

    if (v34 == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!v34)
  {
    goto LABEL_19;
  }

  if (v34 != 1)
  {
LABEL_14:
    v35 = *&v4[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_position];
    v36 = *&v4[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_position + 8];
  }

LABEL_15:
  v37 = objc_opt_self();
  sub_10003DEE0(v33, v34);
  v38 = [v37 configurationWithScale:1];
  v39 = [objc_allocWithZone(NSTextAttachment) init];
  v40 = v38;
  v41 = String._bridgeToObjectiveC()();

  v42 = [objc_opt_self() _systemImageNamed:v41 withConfiguration:v40];

  if (v42)
  {
    v43 = [v42 imageWithRenderingMode:2];
  }

  else
  {
    v43 = 0;
  }

  [v39 setImage:v43];

  v44 = objc_allocWithZone(NSAttributedString);
  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 initWithString:v45];

  [v32 insertAttributedString:v46 atIndex:0];
  v47 = [objc_opt_self() attributedStringWithAttachment:v39];
  [v32 insertAttributedString:v47 atIndex:0];

LABEL_19:
  v48 = *&v4[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_batteryPercentageLabel];
  [v48 setAttributedText:v32];
  v49 = *&v4[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_batteryView];
  dispatch thunk of ModernBatteryIcon.chargePercent.setter();
  dispatch thunk of ModernBatteryIcon.updateState(_:)();
  [v49 setHidden:a3 == 0.0];
  [v48 setHidden:a3 == 0.0];
  [v4 setNeedsLayout];
}

uint64_t sub_10003D4B0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011DAC0);
  v1 = sub_10000A570(v0, qword_10011DAC0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10003D578(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  v6 = v5;
  v70 = a4;
  v73 = a3;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for BatteryIconStyle();
  v13 = *(v12 - 8);
  v14 = v13;
  v71 = v12;
  v72 = v13;
  v15 = *(v13 + 64);
  __chkstk_darwin(v12);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_isCharging] = 0;
  v18 = [objc_allocWithZone(UILabel) init];
  *&v6[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_batteryPercentageLabel] = v18;
  (*(v14 + 16))(v17, a4, v12);
  v19 = objc_allocWithZone(type metadata accessor for ModernBatteryIcon());
  *&v6[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_batteryView] = ModernBatteryIcon.init(_:darkMode:)();
  v20 = &v6[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_position];
  *v20 = a1;
  v20[1] = a2;
  v74.receiver = v6;
  v74.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v74, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_batteryPercentageLabel;
  v23 = *&v21[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_batteryPercentageLabel];
  v24 = v21;
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v21[v22] setAdjustsFontForContentSizeCategory:1];
  v25 = *&v21[v22];
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 preferredFontForTextStyle:UIFontTextStyleBody];
  [v27 setFont:v28];

  [*&v21[v22] setNumberOfLines:0];
  v29 = *&v21[v22];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 labelColor];
  [v31 setTextColor:v32];

  [*&v21[v22] setTextAlignment:1];
  v33 = v24;
  v34 = *&v21[v22];
  v35 = v33;
  [v35 addSubview:v34];
  v36 = OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_batteryView;
  [*&v35[OBJC_IVAR____TtC20HeadphoneProxService19LabelledBatteryView_batteryView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v35 addSubview:*&v35[v36]];
  v69 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1000D5260;
  v38 = [*&v35[v36] topAnchor];
  v39 = [v35 topAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v37 + 32) = v40;
  v41 = [*&v35[v36] leadingAnchor];
  v42 = [v35 leadingAnchor];

  v43 = [v41 constraintGreaterThanOrEqualToAnchor:v42];
  *(v37 + 40) = v43;
  v44 = [*&v35[v36] trailingAnchor];
  v45 = [v35 trailingAnchor];

  v46 = [v44 constraintLessThanOrEqualToAnchor:v45];
  *(v37 + 48) = v46;
  v47 = [*&v35[v36] centerXAnchor];
  v48 = [v35 centerXAnchor];

  v49 = [v47 constraintEqualToAnchor:v48];
  *(v37 + 56) = v49;
  v50 = [*&v21[v22] topAnchor];
  v51 = [*&v35[v36] bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:5.0];

  *(v37 + 64) = v52;
  v53 = [*&v21[v22] leadingAnchor];
  v54 = [v35 leadingAnchor];

  v55 = [v53 constraintEqualToAnchor:v54];
  *(v37 + 72) = v55;
  v56 = [*&v21[v22] trailingAnchor];
  v57 = [v35 trailingAnchor];

  v58 = [v56 constraintEqualToAnchor:v57];
  *(v37 + 80) = v58;
  v59 = [*&v21[v22] centerXAnchor];
  v60 = [*&v35[v36] centerXAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v37 + 88) = v61;
  v62 = [*&v21[v22] bottomAnchor];
  v63 = [v35 bottomAnchor];

  v64 = [v62 constraintEqualToAnchor:v63];
  *(v37 + 96) = v64;
  sub_10000F5A0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v69 activateConstraints:isa];

  v66 = v70;
  sub_10003CEB8(v73, v70, a5);

  (*(v72 + 8))(v66, v71);
  return v35;
}

uint64_t sub_10003DDC8(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_10003DDEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003DE50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_10003DEA0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_10003DEE0(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_10003DEF8(uint64_t a1, uint64_t a2)
{
  if (a2 != 3)
  {
    return sub_10003DF08(a1, a2);
  }

  return a1;
}

uint64_t sub_10003DF08(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

void sub_10003DF20()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, "viewDidLoad");
  [v0 setDismissalType:1];
  v2 = [objc_opt_self() configurationWithPointSize:4 weight:72.0];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  v5 = [objc_allocWithZone(UIImageView) initWithImage:v4];
  v6 = [objc_opt_self() systemRedColor];
  [v5 setTintColor:v6];

  v7 = v5;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v1 contentView];
  [v8 addSubview:v7];

  v9 = [v1 contentView];
  v10 = [v9 mainContentGuide];

  v11 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000D6000;
  v13 = [v7 topAnchor];
  v14 = [v10 topAnchor];
  v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14];

  *(v12 + 32) = v15;
  v16 = [v7 bottomAnchor];
  v17 = [v10 bottomAnchor];
  v18 = [v16 constraintLessThanOrEqualToAnchor:v17];

  *(v12 + 40) = v18;
  v19 = [v7 centerXAnchor];
  v20 = [v10 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v12 + 48) = v21;
  v22 = [v7 centerYAnchor];

  v23 = [v10 centerYAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v12 + 56) = v24;
  sub_10000F5A0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:isa];
}

void sub_10003E350(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[4];
  v7 = a1[5];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();
  v13[4] = sub_10003E638;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10000C034;
  v13[3] = &unk_100104DD8;
  v10 = _Block_copy(v13);
  v11 = [objc_opt_self() actionWithTitle:v9 style:0 handler:v10];

  _Block_release(v10);

  v12 = [v1 addAction:v11];
}

void sub_10003E4CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000B6688();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10003E600()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E640(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003E658()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_100008438(&qword_10011F940, qword_1000D9880);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000E950(v5, &qword_10011DC40, &qword_1000D7C40);
    return 0;
  }
}

void sub_10003E778(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidAppear:", a1 & 1);
  v3 = sub_10003E658();
  if (v3)
  {
    [v3 setStatusBarHidden:1 withDuration:0.3];
    swift_unknownObjectRelease();
  }

  type metadata accessor for SoftwareUpdateRequiredViewController();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = [v1 presentProxCardFlowWithDelegate:v1 initialViewController:v4];
}

double sub_10003EA44()
{
  result = 30.0 - PRXMainContentMargin;
  *&qword_10011DB60 = 30.0 - PRXMainContentMargin;
  return result;
}

void sub_10003EDE8()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2[4] = sub_10003EEA0;
  v2[5] = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_100019340;
  v2[3] = &unk_100104E50;
  v1 = _Block_copy(v2);
  [Strong dismissViewControllerAnimated:1 completion:v1];
  _Block_release(v1);
}

uint64_t sub_10003EEA0()
{
  v0 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v29 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10000E950(v3, &qword_10011CF08, &unk_1000D7310);
  }

  (*(v5 + 32))(v8, v3, v4);
  sub_100008438(&qword_10011D810, &unk_1000D7D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D66A0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  *(inited + 48) = 1;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v12;
  *(inited + 72) = 1;
  v13 = sub_1000A3764(inited);
  swift_setDeallocating();
  sub_100008438(&qword_10011D818, qword_1000D7320);
  swift_arrayDestroy();
  v14 = [objc_opt_self() defaultWorkspace];
  if (v14)
  {
    v16 = v14;
    URL._bridgeToObjectiveC()(v15);
    v18 = v17;
    sub_100047958(v13);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v30 = 0;
    v20 = [v16 openSensitiveURL:v18 withOptions:isa error:&v30];

    if (v20)
    {
      v21 = *(v5 + 8);
      v22 = v30;
      return v21(v8, v4);
    }

    else
    {
      v23 = v30;
      v24 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100008438(&unk_10011DC30, &unk_1000D7D30);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1000D5250;
      v30 = 0;
      v31 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);
      v26._object = 0x80000001000DF640;
      v26._countAndFlagsBits = 0xD000000000000019;
      String.append(_:)(v26);
      v29[1] = v24;
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      _print_unlocked<A, B>(_:_:)();
      v27 = v30;
      v28 = v31;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 32) = v27;
      *(v25 + 40) = v28;
      print(_:separator:terminator:)();

      return (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    (*(v5 + 8))(v8, v4);
  }
}

void sub_10003F340()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UILayoutGuide) init];
  v3 = [v0 contentView];
  [v3 addLayoutGuide:v2];

  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 imageNamed:v5];

  v77 = v6;
  v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v1 contentView];
  [v8 addSubview:v7];

  v9 = [objc_allocWithZone(UIView) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = objc_opt_self();
  v11 = [v10 systemRedColor];
  [v9 setBackgroundColor:v11];

  v12 = [v9 layer];
  [v12 setCornerRadius:19.0];

  v13 = [v1 contentView];
  [v13 addSubview:v9];

  v14 = [objc_allocWithZone(UILabel) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = objc_opt_self();
  sub_1000084D4(0, &qword_10011DC20, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v17 = [v15 localizedStringFromNumber:isa numberStyle:0];

  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  [v14 setText:v17];

  v18 = [v10 whiteColor];
  [v14 setTextColor:v18];

  [v14 setTextAlignment:1];
  v19 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1];
  v20 = [v19 fontDescriptorWithSymbolicTraits:2];

  if (v20)
  {
    v21 = [objc_opt_self() fontWithDescriptor:v20 size:25.0];
    [v14 setFont:v21];
  }

  [v9 addSubview:v14];
  v22 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC20HeadphoneProxService36SoftwareUpdateRequiredViewController_offsetIcon) == 1)
  {
    if (qword_10011C670 != -1)
    {
      swift_once();
    }

    v22 = *&qword_10011DB60;
  }

  v23 = [v1 contentView];
  v24 = [v23 mainContentGuide];

  v76 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000D7700;
  v26 = [v2 centerXAnchor];
  v27 = v24;
  v28 = [v24 centerXAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];

  *(v25 + 32) = v29;
  v30 = [v2 topAnchor];
  v31 = [v27 topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:v22];

  *(v25 + 40) = v32;
  v33 = [v2 bottomAnchor];
  v34 = [v27 bottomAnchor];
  v35 = [v33 constraintLessThanOrEqualToAnchor:v34];

  *(v25 + 48) = v35;
  v36 = [v7 leadingAnchor];
  v37 = [v2 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v25 + 56) = v38;
  v39 = [v7 trailingAnchor];
  v40 = [v2 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:-11.0];

  *(v25 + 64) = v41;
  v42 = [v7 topAnchor];
  v43 = [v2 topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:11.0];

  *(v25 + 72) = v44;
  v45 = [v7 bottomAnchor];
  v46 = [v2 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v25 + 80) = v47;
  v48 = [v7 widthAnchor];
  v49 = [v48 constraintEqualToConstant:104.0];

  *(v25 + 88) = v49;
  v50 = [v7 heightAnchor];
  v51 = [v7 widthAnchor];

  v52 = [v50 constraintEqualToAnchor:v51];
  *(v25 + 96) = v52;
  v53 = [v9 topAnchor];
  v54 = [v2 topAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v25 + 104) = v55;
  v56 = [v9 trailingAnchor];
  v57 = [v2 trailingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];

  *(v25 + 112) = v58;
  v59 = [v9 widthAnchor];
  v60 = [v59 constraintEqualToConstant:38.0];

  *(v25 + 120) = v60;
  v61 = [v9 heightAnchor];
  v62 = [v9 widthAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v25 + 128) = v63;
  v64 = [v14 leadingAnchor];
  v65 = [v9 leadingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v25 + 136) = v66;
  v67 = [v14 topAnchor];
  v68 = [v9 topAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v25 + 144) = v69;
  v70 = [v14 bottomAnchor];
  v71 = [v9 bottomAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v25 + 152) = v72;
  v73 = [v14 trailingAnchor];

  v74 = [v9 trailingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v25 + 160) = v75;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  v78 = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:v78];
}

id sub_10003FECC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SoftwareUpdateRequiredViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003FF24()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FF64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10003FF84()
{
  v1 = v0;
  v37.receiver = v0;
  v37.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v37, "viewDidLoad");
  [v0 setDismissalType:1];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = [v0 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 1)
  {
    v6 = 0x746867694CLL;
  }

  else
  {
    v6 = 1802658116;
  }

  if (v5 == 1)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  _StringGuts.grow(_:)(24);

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);
  v9 = objc_allocWithZone(BSUICAPackageView);
  v10 = v3;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 initWithPackageName:v11 inBundle:{v10, 0xD000000000000016, 0x80000001000DF6B0}];

  if (v12)
  {

    v13 = String._bridgeToObjectiveC()();
    [v12 setState:v13 animated:1];

    v14 = v12;
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v1 contentView];
    [v15 addSubview:v14];

    v16 = [v1 contentView];
    v17 = [v16 mainContentGuide];

    v18 = objc_opt_self();
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1000D5C80;
    v20 = [v14 topAnchor];
    v21 = [v17 topAnchor];
    v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21];

    *(v19 + 32) = v22;
    v23 = [v14 bottomAnchor];
    v24 = [v17 bottomAnchor];
    v25 = [v23 constraintLessThanOrEqualToAnchor:v24];

    *(v19 + 40) = v25;
    v26 = [v14 heightAnchor];
    v27 = [v26 constraintEqualToConstant:160.0];

    *(v19 + 48) = v27;
    v28 = [v14 widthAnchor];
    v29 = [v28 constraintEqualToConstant:320.0];

    *(v19 + 56) = v29;
    v30 = [v14 centerYAnchor];
    v31 = [v17 centerYAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v19 + 64) = v32;
    v33 = [v14 centerXAnchor];

    v34 = [v17 centerXAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    *(v19 + 72) = v35;
    sub_10000F5A0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_100040564(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = a1[4];
  v10 = a1[5];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v27 = sub_100040998;
  v28 = v11;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_100104EE0;
  v13 = _Block_copy(&v23);
  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];

  _Block_release(v13);

  v16 = a1[6];
  v17 = a1[7];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = String._bridgeToObjectiveC()();
  v27 = sub_1000409D0;
  v28 = v18;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_100104F08;
  v20 = _Block_copy(&v23);
  v21 = [v14 actionWithTitle:v19 style:1 handler:v20];

  _Block_release(v20);

  v22 = [v1 addAction:v21];
}

void sub_10004081C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      sub_1000B7B00(a3 & 1);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100040960()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000409B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000409F8()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011DC80);
  v1 = sub_10000A570(v0, qword_10011DC80);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100040AC0()
{
  if (*(v0 + 24) != 1)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 80);
    swift_unknownObjectRelease();
    if (!v2)
    {
      return 1;
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + 80);
    swift_unknownObjectRelease();
    return v4 == 1;
  }

  return result;
}

uint64_t sub_100040B2C(uint64_t result)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = result;
  if (v2 != (result & 1))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1000B4D14();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t *sub_100040B90(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for HeadphoneModel(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 24) = 0;
  v1[5] = 0;
  swift_unknownObjectWeakInit();
  v1[7] = 0;
  swift_unknownObjectWeakInit();
  sub_100041F48(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100041FB8(a1);
    sub_100041FB8(v13);
LABEL_7:
    sub_100008598((v1 + 4));
    sub_100008598((v1 + 6));
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_10000E828(v13, v18);
  if (*&v18[*(v14 + 136)] != 8223 || v18[*(v14 + 188)] != 1)
  {
    sub_100041FB8(a1);
    sub_10000E8F4(v18);
    goto LABEL_7;
  }

  v19 = [objc_allocWithZone(AAUSBSupportedDeviceManager) init];
  sub_100041E90();
  (*(v6 + 104))(v9, enum case for DispatchQoS.QoSClass.userInitiated(_:), v5);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v6 + 8))(v9, v5);
  [v19 setDispatchQueue:v20];

  sub_100041FB8(a1);
  sub_10000E8F4(v18);
  v2[2] = v19;
  return v2;
}

uint64_t sub_100040EB4()
{
  v1 = v0;
  v2 = type metadata accessor for HeadphoneModel(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004128C();
  if (v6)
  {
    if (qword_10011C678 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A570(v7, qword_10011DC80);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Requesting USB connect", v10, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (*(Strong + 80))
      {
        *(Strong + 80) = 0;
        sub_1000B4D14();
      }

      swift_unknownObjectRelease();
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      *(v12 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_hasAutoConnected) = 0;
      *(v12 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_allowRepairAutoConnect) = 1;
      swift_unknownObjectRelease();
    }

    sub_100040B2C(1);
    v13 = *(v1 + 16);
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      v16 = v14;
      swift_beginAccess();
      sub_10000E390(v16 + v15, v5);
      v17 = v13;
      swift_unknownObjectRelease();
      v18 = *(v5 + 18);
      v19 = *(v5 + 19);

      sub_10000E8F4(v5);
      if (v19)
      {
        String.uppercased()();
      }
    }

    else
    {
      v20 = v13;
    }

    v21 = String._bridgeToObjectiveC()();

    v22 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100041E70;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000419B8;
    aBlock[3] = &unk_100104F58;
    v23 = _Block_copy(aBlock);

    [v13 proxCardUserActionOnHeadphone:v21 withAction:1 completion:v23];
    _Block_release(v23);

    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_26;
    }

    v24 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRelease();
    if (!v24 || (v25 = v24 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView, v26 = swift_unknownObjectWeakLoadStrong(), v27 = *(v25 + 8), swift_unknownObjectRelease(), !v26) || (ObjectType = swift_getObjectType(), v29 = (*(v27 + 32))(ObjectType, v27), swift_unknownObjectRelease(), v29 != 3))
    {
LABEL_26:
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectRelease();
        if (v30)
        {
          sub_10004907C();
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return v6 & 1;
}

uint64_t sub_10004128C()
{
  v1 = type metadata accessor for HeadphoneModel(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_10011C678 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000A570(v16, qword_10011DC80);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100078978(0xD000000000000016, 0x80000001000DF7A0, &v23);
      _os_log_impl(&_mh_execute_header, v17, v18, "%s: Headphone Model is nil, exiting", v19, 0xCu);
      sub_10000EA94(v20);
    }

    return 0;
  }

  v9 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  v10 = Strong;
  swift_beginAccess();
  sub_10000E390(v10 + v9, v5);
  swift_unknownObjectRelease();
  sub_10000E828(v5, v7);
  if (*&v7[*(v1 + 136)] != 8223 || v7[*(v1 + 188)] != 1)
  {
LABEL_10:
    sub_10000E8F4(v7);
    return 0;
  }

  if (*(v0 + 24))
  {
    if (qword_10011C678 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A570(v11, qword_10011DC80);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100078978(0xD000000000000016, 0x80000001000DF7A0, &v22);
      _os_log_impl(&_mh_execute_header, v12, v13, "%s: Connection already requested", v14, 0xCu);
      sub_10000EA94(v15);
    }

    goto LABEL_10;
  }

  sub_10000E8F4(v7);
  return 1;
}

uint64_t sub_1000415E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = __chkstk_darwin(v10);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_100041E90();
    v16 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_100041EDC;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019340;
    aBlock[3] = &unk_100104F80;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10001C380();
    sub_100008438(&unk_100120090, &unk_1000D78C0);
    sub_100041EE4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v6 + 8))(v9, v5);
    return (*(v11 + 8))(v15, v10);
  }

  return result;
}

uint64_t sub_100041858()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (*(result + 24) != 1)
  {
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = *(Strong + 80), swift_unknownObjectRelease(), v2))
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = *(v3 + 80);

      result = swift_unknownObjectRelease();
      if (v4 != 1)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

LABEL_11:
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (v5 = swift_unknownObjectWeakLoadStrong(), , !v5) || (v6 = *(v5 + 80), result = swift_unknownObjectRelease(), v6 != 1))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = swift_unknownObjectWeakLoadStrong();

      if (v7)
      {
        sub_1000BD484(0);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1000419B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

void sub_100041A64(char a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &aBlock[-1] - v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    v12 = Strong;
    swift_beginAccess();
    sub_10000E390(v12 + v11, v7);
    swift_unknownObjectRelease();
    sub_10000E828(v7, v9);
    if (*&v9[*(v3 + 136)] == 8223 && v9[*(v3 + 188)] == 1 && *(v1 + 24) == 1)
    {
      sub_100040B2C(0);
      if ((a1 & 1) == 0)
      {
        v13 = *(v1 + 16);
        if (*(v9 + 19))
        {
          v14 = *(v9 + 18);
          String.uppercased()();
        }

        v20 = v13;
        v21 = String._bridgeToObjectiveC()();

        aBlock[4] = nullsub_1;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000419B8;
        aBlock[3] = &unk_100104FA8;
        v22 = _Block_copy(aBlock);
        [v20 proxCardUserActionOnHeadphone:v21 withAction:4 completion:v22];
        _Block_release(v22);
      }
    }

    sub_10000E8F4(v9);
  }

  else
  {
    if (qword_10011C678 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A570(v15, qword_10011DC80);
    v23 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100078978(0xD000000000000019, 0x80000001000DF780, aBlock);
      _os_log_impl(&_mh_execute_header, v23, v16, "%s: Headphone Model is nil, exiting", v17, 0xCu);
      sub_10000EA94(v18);
    }

    else
    {
      v19 = v23;
    }
  }
}

uint64_t sub_100041DCC()
{
  sub_100008598(v0 + 32);
  sub_100008598(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_100041E38()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041E78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100041E90()
{
  result = qword_10011D240;
  if (!qword_10011D240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011D240);
  }

  return result;
}

unint64_t sub_100041EE4()
{
  result = qword_10011F680;
  if (!qword_10011F680)
  {
    sub_10000A408(&unk_100120090, &unk_1000D78C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F680);
  }

  return result;
}

uint64_t sub_100041F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041FB8(uint64_t a1)
{
  v2 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100042020(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeadphoneModel(0);
  if (*(a3 + *(v6 + 136)) != 8223)
  {
    return 0;
  }

  if (*(a3 + *(v6 + 188)) != 1)
  {
    return 0;
  }

  v7 = *(a3 + 152);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a3 + 144);
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = String.uppercased()();
  v11 = String.uppercased()();
  if (v10._countAndFlagsBits == v11._countAndFlagsBits && v10._object == v11._object)
  {

    return 0;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    return 0;
  }

  if (qword_10011C678 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A570(v14, qword_10011DC80);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100078978(a1, a2, &v19);
    *(v17 + 12) = 2080;
    v18 = sub_100078978(v8, v7, &v19);

    *(v17 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v15, v16, "Device bluetooth address %s does not match expected bluetooth address %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1000422A4()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011DD50);
  v1 = sub_10000A570(v0, qword_10011DD50);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10004236C()
{
  v0 = type metadata accessor for URL();
  sub_10000E32C(v0, qword_10011DD68);
  sub_10000A570(v0, qword_10011DD68);
  return URL.init(fileURLWithPath:)();
}

uint64_t sub_1000423D0()
{
  v0 = sub_1000A3A8C(&off_100102AE0);
  sub_100008438(&unk_100120020, &qword_1000D7C38);
  result = swift_arrayDestroy();
  off_10011DD80 = v0;
  return result;
}

Swift::Int sub_10004242C(int a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  Hasher._combine(_:)(BYTE1(a1) & 1);
  Hasher._combine(_:)(BYTE2(a1) & 1);
  Hasher._combine(_:)(HIBYTE(a1) & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000424A0()
{
  if (v0[3])
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (v0[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_10004242C(v3 | *v0 | v2 | v1);
}

void sub_1000424E4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int sub_100042544()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

unint64_t sub_100042DEC(char a1)
{
  result = 0x6441656369766564;
  switch(a1)
  {
    case 1:
      result = 0x646F43726F6C6F63;
      break;
    case 2:
      result = 0x4344454C65736163;
      break;
    case 3:
      result = 0x7372655665736163;
      break;
    case 4:
      result = 6580592;
      break;
    case 5:
      result = 0x636954646E756F66;
      break;
    case 6:
      result = 0x6C65646F6DLL;
      break;
    case 7:
      result = 845441392;
      break;
    case 8:
      result = 0x6574726F70707573;
      break;
    case 9:
      result = 0x6572617774666F73;
      break;
    case 10:
      result = 0x657461745363626FLL;
      break;
    case 11:
      result = 0x5352726961706572;
      break;
    case 12:
      result = 0x5374657364616568;
      break;
    case 13:
      result = 0x6C46656369766564;
      break;
    case 14:
      result = 1701667182;
      break;
    case 15:
      result = 0x5472656767697274;
      break;
    case 16:
      result = 0x6E69766172676E65;
      break;
    case 17:
      result = 0x736143794D746F6ELL;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0x65707954627573;
      break;
    case 21:
      result = 0x6F4D726961706572;
      break;
    case 22:
      result = 0x65746F4E69726973;
      break;
    case 23:
      result = 0x6E4F737574617473;
      break;
    case 24:
      result = 0xD000000000000013;
      break;
    case 25:
      result = 0x506C6C6143646E65;
      break;
    case 26:
      result = 0x6C6C61436574756DLL;
      break;
    case 27:
      result = 0xD000000000000014;
      break;
    case 28:
      result = 0x7473654764616568;
      break;
    case 29:
      result = 0x77654E7374616877;
      break;
    case 30:
      result = 0xD000000000000010;
      break;
    case 31:
      result = 0xD000000000000010;
      break;
    case 32:
      result = 0xD000000000000010;
      break;
    case 33:
      result = 0xD000000000000011;
      break;
    case 34:
      result = 0xD000000000000010;
      break;
    case 35:
      result = 0x6F5368636E75616CLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100043278(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100008438(&qword_10011DE28, &unk_1000D98B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v113 = (&v108 - v6);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v112 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 136) = 9;
  v11 = type metadata accessor for HeadphoneModel(0);
  v12 = v11[12];
  v114 = v8;
  v13 = *(v8 + 56);
  v109 = v12;
  v115 = v7;
  v111 = v8 + 56;
  v110 = v13;
  v13(a2 + v12, 1, 1, v7);
  *(a2 + v11[13]) = 0;
  v14 = (a2 + v11[15]);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = a2 + v11[16];
  *v15 = xmmword_1000D78D0;
  v116 = v11[23];
  *(a2 + v116) = 0;
  *(a2 + v11[24]) = 0;
  *(a2 + v11[25]) = 0;
  *(a2 + v11[27]) = 0;
  v16 = v11[28];
  *(a2 + v16) = 0;
  *(a2 + v11[29]) = MKBGetDeviceLockState() - 1 < 2;
  v17 = MobileGestalt_get_current_device();
  if (!v17)
  {
    __break(1u);
    goto LABEL_214;
  }

  v18 = v17;
  v19 = v11[30];
  greenTeaDeviceCapability = MobileGestalt_get_greenTeaDeviceCapability();

  *(a2 + v19) = greenTeaDeviceCapability;
  v108 = v11[33];
  *(a2 + v108) = 0;
  v21 = v11[35];
  *(a2 + v21) = 0;
  *(a2 + v11[36]) = 0;
  *(a2 + v11[37]) = 0;
  v22 = v11[38];
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 56))(a2 + v22, 1, 1, v23);
  v24 = v11[39];
  *(a2 + v24) = 0;
  *(a2 + v11[40]) = 0;
  *(a2 + v11[42]) = 0;
  *(a2 + v11[43]) = 0;
  *(a2 + v11[44]) = 0;
  v25 = a2 + v11[45];
  *v25 = 0;
  *(v25 + 8) = -1;
  v26 = v11[47];
  *(a2 + v26) = 0;
  *(a2 + v11[48]) = 0;
  *(a2 + v11[49]) = &_swiftEmptyDictionarySingleton;

  strcpy(&v124, "deviceFlags");
  HIDWORD(v124) = -352321536;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast())
    {
      LODWORD(v120) = v122[0];
      goto LABEL_7;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  LODWORD(v120) = 0;
LABEL_7:
  strcpy(&v124, "deviceAddress");
  HIWORD(v124) = -4864;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    v27 = swift_dynamicCast();
    v28 = v122[0];
    if (v27)
    {
      v29 = v122[1];
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
    v28 = 0;
    v29 = 0;
  }

  v119 = v28;
  *(a2 + 144) = v28;
  *(a2 + 152) = v29;
  strcpy(&v124, "colorCode");
  WORD5(v124) = 0;
  HIDWORD(v124) = -385875968;

  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast())
    {
      v30 = v122[0];
      goto LABEL_17;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v30 = 0;
LABEL_17:
  *(a2 + 160) = v30;
  strcpy(&v124, "caseLEDColor");
  BYTE13(v124) = 0;
  HIWORD(v124) = -5120;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast())
    {
      v31 = v122[0];
      goto LABEL_22;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v31 = 0;
LABEL_22:
  *(a2 + 161) = v31;
  strcpy(&v124, "caseVers");
  BYTE9(v124) = 0;
  WORD5(v124) = 0;
  HIDWORD(v124) = -402653184;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast())
    {
      v32 = v122[0];
      goto LABEL_27;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v32 = 0;
LABEL_27:
  *(a2 + 162) = v32;
  *&v124 = 6580592;
  *(&v124 + 1) = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  v121 = v29;
  if (v125)
  {
    if (swift_dynamicCast())
    {
      v33 = LODWORD(v122[0]);
      goto LABEL_32;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v33 = 0;
LABEL_32:
  *(a2 + v11[34]) = v33;
  strcpy(&v124, "foundTicks");
  BYTE11(v124) = 0;
  HIDWORD(v124) = -369098752;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast())
    {
      v34 = v122[0];
      goto LABEL_37;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v34 = 0;
LABEL_37:
  *(a2 + v11[17]) = v34;
  *&v124 = 0x6C65646F6DLL;
  *(&v124 + 1) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast())
    {
      v35 = v122[0];
      v36 = v122[1];
      goto LABEL_42;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v35 = 0;
  v36 = 0xE000000000000000;
LABEL_42:
  v37 = (a2 + v11[20]);
  *v37 = v35;
  v37[1] = v36;
  *&v124 = 845441392;
  *(&v124 + 1) = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast())
    {
      v38 = v122[0];
      goto LABEL_47;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v38 = 0;
LABEL_47:
  *(a2 + v11[32]) = v38;
  *&v124 = 0x6574726F70707573;
  *(&v124 + 1) = 0xEF65636976654464;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast())
    {
      v39 = v122[0];
      goto LABEL_52;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v39 = 0;
LABEL_52:
  v117 = v11[21];
  *(a2 + v117) = v39;
  strcpy(&v124, "softwareVolume");
  HIBYTE(v124) = -18;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast())
    {
      v40 = v122[0];
      goto LABEL_57;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v40 = 0;
LABEL_57:
  *(a2 + v21) = v40;
  strcpy(&v124, "obcState");
  BYTE9(v124) = 0;
  WORD5(v124) = 0;
  HIDWORD(v124) = -402653184;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast())
    {
      v41 = LOBYTE(v122[0]) == 2;
      goto LABEL_62;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v41 = 0;
LABEL_62:
  v118 = v11[22];
  *(a2 + v118) = v41;
  strcpy(&v124, "repairRSSI");
  BYTE11(v124) = 0;
  HIDWORD(v124) = -369098752;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast())
    {
      v42 = v122[0];
      goto LABEL_67;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v42 = 0;
LABEL_67:
  *(a2 + v24) = v42;
  strcpy(&v124, "headsetStatus");
  HIWORD(v124) = -4864;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast())
    {
      v43 = v122[0];
      goto LABEL_72;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v43 = 0;
LABEL_72:
  *(a2 + v11[31]) = v43;
  *(a2 + v16) = (v120 & 0x1000) != 0;
  v44 = objc_opt_self();
  *(a2 + v11[41]) = [v44 announceCallsState];
  *&v124 = 1701667182;
  *(&v124 + 1) = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast())
    {
      v45 = v122[0];
      v46 = v122[1];
      goto LABEL_77;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v45 = 0;
  v46 = 0xE000000000000000;
LABEL_77:
  v47 = (a2 + v11[14]);
  *v47 = v45;
  v47[1] = v46;
  strcpy(&v124, "triggerTicks");
  BYTE13(v124) = 0;
  HIWORD(v124) = -5120;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast())
    {
      v48 = v122[0];
      goto LABEL_82;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v48 = 0;
LABEL_82:
  *(a2 + v11[46]) = v48;
  strcpy(&v124, "engravingData");
  HIWORD(v124) = -4864;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    v49 = swift_dynamicCast();
    if (v49)
    {
      v50 = v122[0];
    }

    else
    {
      v50 = 0;
    }

    if (v49)
    {
      v51 = v122[1];
    }

    else
    {
      v51 = 0xF000000000000000;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
    v50 = 0;
    v51 = 0xF000000000000000;
  }

  sub_100047878(*v15, *(v15 + 8));
  *v15 = v50;
  *(v15 + 8) = v51;
  strcpy(&v124, "notMyCase");
  WORD5(v124) = 0;
  HIDWORD(v124) = -385875968;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast())
    {
      v52 = v122[0];
      goto LABEL_95;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v52 = 0;
LABEL_95:
  *(a2 + v11[18]) = v52;
  strcpy(&v124, "deviceAddress2");
  HIBYTE(v124) = -18;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    v53 = swift_dynamicCast();
    v54 = v122[0];
    v55 = v122[1];
    if (!v53)
    {
      v54 = 0;
      v55 = 0;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
    v54 = 0;
    v55 = 0;
  }

  v56 = (a2 + v11[19]);
  *v56 = v54;
  v56[1] = v55;
  strcpy(v122, "launchSource");
  BYTE5(v122[1]) = 0;
  HIWORD(v122[1]) = -5120;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (!v125)
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
    goto LABEL_105;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_105:
    v57 = 0;
    goto LABEL_106;
  }

  if (v122[0] == 0xD000000000000021 && 0x80000001000DFA10 == v122[1])
  {

    v57 = 1;
  }

  else
  {
    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_106:
  *(a2 + v26) = v57 & 1;
  v58 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:v33];
  if (v58)
  {
    v59 = v58;
    v60 = [v58 supportsSiri];
  }

  else
  {
    v60 = 0;
  }

  v61 = [v44 isSiriAllowedWhileLocked];
  v62 = [v44 isHeySiriEnabled];
  v63 = [v44 isCurrentLocaleSupported];
  v64 = (a2 + v11[26]);
  *v64 = v61;
  v64[1] = v62;
  v64[2] = v63;
  v64[3] = v60;
  strcpy(&v124, "subType");
  *(&v124 + 1) = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast())
    {
      v65 = LOBYTE(v122[0]) == 4;
    }

    else
    {
      v65 = 0;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
    v65 = 0;
  }

  strcpy(v122, "repairMode");
  BYTE3(v122[1]) = 0;
  HIDWORD(v122[1]) = -369098752;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast() && (v122[0] & 1) != 0)
    {
      if ((v120 & 0x800) == 0)
      {
        goto LABEL_140;
      }

      v66 = MobileGestalt_get_current_device();
      if (v66)
      {
        v67 = v66;
        deviceSupportsWirelessSplitting = MobileGestalt_get_deviceSupportsWirelessSplitting();

        if (deviceSupportsWirelessSplitting)
        {
          v69 = 14;
LABEL_141:
          *(a2 + 136) = v69;
          goto LABEL_142;
        }

LABEL_140:
        v69 = 10;
        goto LABEL_141;
      }

LABEL_214:
      __break(1u);
      return;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  strcpy(v122, "siriNote");
  BYTE1(v122[1]) = 0;
  WORD1(v122[1]) = 0;
  HIDWORD(v122[1]) = -402653184;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast() && (v122[0] & 1) != 0)
    {
      v69 = 11;
      goto LABEL_141;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  if (v65)
  {
    v69 = 8;
    goto LABEL_141;
  }

  strcpy(v122, "statusOnly");
  BYTE3(v122[1]) = 0;
  HIDWORD(v122[1]) = -369098752;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast() && (v122[0] & 1) != 0)
    {
      v69 = 13;
      goto LABEL_141;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v122[0] = 0xD000000000000013;
  v122[1] = 0x80000001000DF880;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (!swift_dynamicCast() || (v122[0] & 1) == 0)
    {
      v69 = 9;
      goto LABEL_142;
    }

    v69 = 12;
    goto LABEL_141;
  }

  sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  v69 = 9;
LABEL_142:
  strcpy(v122, "endCallProx");
  HIDWORD(v122[1]) = -352321536;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast() && (v122[0] & 1) != 0)
    {
      v69 = 1;
      *(a2 + 136) = 1;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  strcpy(v122, "muteCallProx");
  BYTE5(v122[1]) = 0;
  HIWORD(v122[1]) = -5120;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast() && (v122[0] & 1) != 0)
    {
      v69 = 2;
      *(a2 + 136) = 2;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v122[0] = 0xD000000000000014;
  v122[1] = 0x80000001000DF8A0;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast() && (v122[0] & 1) != 0)
    {
      v69 = 3;
      *(a2 + 136) = 3;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  strcpy(v122, "whatsNew");
  BYTE1(v122[1]) = 0;
  WORD1(v122[1]) = 0;
  HIDWORD(v122[1]) = -402653184;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast() && (v122[0] & 1) != 0)
    {
      NSLog(_:_:)();
      v69 = 4;
      *(a2 + 136) = 4;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  strcpy(v122, "headGestures");
  BYTE5(v122[1]) = 0;
  HIWORD(v122[1]) = -5120;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast() && (v122[0] & 1) != 0)
    {
      NSLog(_:_:)();
      v69 = 5;
      *(a2 + 136) = 5;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v122[0] = 0xD000000000000010;
  v122[1] = 0x80000001000DF8C0;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast() && (v122[0] & 1) != 0)
    {
      NSLog(_:_:)();
      v69 = 7;
      *(a2 + 136) = 7;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v122[0] = 0xD000000000000010;
  v122[1] = 0x80000001000DF8E0;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast() && (v122[0] & 1) != 0)
    {
      v69 = 0;
      *(a2 + 136) = 0;
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  strcpy(v122, "launchSource");
  BYTE5(v122[1]) = 0;
  HIWORD(v122[1]) = -5120;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);
  sub_100047824(v123);
  if (!v125)
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
    goto LABEL_183;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_183;
  }

  if (v122[0] != 0xD000000000000025 || 0x80000001000DF920 != v122[1])
  {
    v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v70)
    {
      goto LABEL_186;
    }

LABEL_183:
    if (v69 == 9)
    {
      goto LABEL_188;
    }

    goto LABEL_187;
  }

LABEL_186:
  *(a2 + 136) = 15;
LABEL_187:
  *(a2 + v117) = 1;
LABEL_188:
  v122[0] = 0xD000000000000010;
  v122[1] = 0x80000001000DF900;
  AnyHashable.init<A>(_:)();
  sub_10009C340(v123, a1, &v124);

  sub_100047824(v123);
  if (v125)
  {
    if (swift_dynamicCast())
    {
      v72 = v122[0];
      v71 = v122[1];
      v73 = v113;
      UUID.init(uuidString:)();
      v75 = v114;
      v74 = v115;
      if ((*(v114 + 48))(v73, 1, v115) == 1)
      {

        sub_10000E950(v73, &qword_10011DE28, &unk_1000D98B0);
      }

      else
      {
        v76 = v112;
        (*(v75 + 32))(v112, v73, v74);
        v77 = v109;
        sub_10000E950(a2 + v109, &qword_10011DE28, &unk_1000D98B0);
        (*(v75 + 16))(a2 + v77, v76, v74);
        v110(a2 + v77, 0, 1, v74);
        LOBYTE(v77) = sub_1000452F8(v72, v71);

        (*(v75 + 8))(v76, v74);
        *(a2 + v108) = v77;
      }
    }
  }

  else
  {
    sub_10000E950(&v124, &qword_10011DC40, &qword_1000D7C40);
  }

  v78 = type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v79 = dispatch thunk of HeadphoneProxFeatureManager.deviceManager.getter();

  v80 = String._bridgeToObjectiveC()();

  v120 = v79;
  v81 = [v79 fetchAADeviceBatteryInfoForAddress:v80];

  if (v81)
  {
    if (qword_10011C698 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_10000A570(v82, static Logger.battery);
    v83 = v81;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v115 = v86;
      v117 = swift_slowAlloc();
      v123[0] = v117;
      *v86 = 136315138;
      v87 = v83;
      v119 = v78;
      v88 = v87;
      v89 = [v87 description];
      LODWORD(v114) = v85;
      v90 = v89;
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v84;
      v92 = v91;
      v94 = v93;

      v95 = sub_100078978(v92, v94, v123);

      v96 = v115;
      *(v115 + 1) = v95;
      v97 = v113;
      _os_log_impl(&_mh_execute_header, v113, v114, "Setting isOptimizedBatteryChargingEnabled: %s", v96, 0xCu);
      sub_10000EA94(v117);
    }

    else
    {
    }

    v102 = [v83 optimizedBatteryChargingCapability] == 2;
    *(a2 + v118) = v102;
    v103 = sub_1000454EC();

    *(a2 + 128) = v103;
    static HeadphoneProxFeatureManager.shared.getter();

    v104 = HeadphoneProxFeatureManager.syncFetchAudioAADevice(_:)();

    if (v104)
    {

      *(a2 + v116) = v104;
    }

    else
    {
      if (qword_10011C680 != -1)
      {
        swift_once();
      }

      sub_10000A570(v82, qword_10011DD50);
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&_mh_execute_header, v105, v106, "Unable to fetch AudioAccessoryDevice!", v107, 2u);
      }
    }
  }

  else
  {
    if (qword_10011C698 != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    sub_10000A570(v98, static Logger.battery);
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&_mh_execute_header, v99, v100, "Sync Fetch returned no batteries!", v101, 2u);
    }

    *(a2 + 128) = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1000452F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000024 && 0x80000001000DFA40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0xD000000000000024 && 0x80000001000DFA70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0xD000000000000024 && 0x80000001000DFAA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0xD000000000000024 && 0x80000001000DFAD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 4;
  }

  result = 5;
  if (a1 != 0xD000000000000024 || 0x80000001000DFB00 != a2)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t Logger.battery.unsafeMutableAddressor()
{
  if (qword_10011C698 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_10000A570(v0, static Logger.battery);
}

uint64_t sub_1000454EC()
{
  v1 = type metadata accessor for HeadphoneBatteryInfo(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 batteries];
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v8 = v6;
  sub_1000084D4(0, &qword_10011F9D0, AABattery_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_15:

    return v7;
  }

LABEL_4:
  v27 = _swiftEmptyArrayStorage;
  v11 = sub_1000CD644(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    v25 = v9 & 0xC000000000000001;
    v7 = v27;
    while (1)
    {
      v13 = v25 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v9 + 8 * v12 + 32);
      v14 = v13;
      v11 = [v13 type];
      if (v11 >= 6)
      {
        break;
      }

      v15 = 0x40201000203uLL >> (8 * v11);
      [v14 level];
      v17 = v16;
      v18 = [v14 state] == 2;
      v19 = &v5[*(v1 + 28)];
      AABattery.batteryIconStyle.getter();
      *v5 = v17;
      v5[8] = v18;
      v5[9] = v15;
      *&v5[*(v1 + 32)] = v14;
      v27 = v7;
      v21 = v7[2];
      v20 = v7[3];
      if (v21 >= v20 >> 1)
      {
        sub_1000CD644(v20 > 1, v21 + 1, 1);
        v7 = v27;
      }

      ++v12;
      v7[2] = v21 + 1;
      sub_10000A4B8(v5, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v21);
      if (v10 == v12)
      {
        goto LABEL_15;
      }
    }
  }

  v23 = v11;
  type metadata accessor for AABatteryType(0);
  v26 = v23;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_100045798()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, static Logger.battery);
  sub_10000A570(v0, static Logger.battery);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.battery.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011C698 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_10000A570(v2, static Logger.battery);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000458BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100045904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100045950(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_100045974(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1000459BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100045A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BatteryIconStyle();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100045B10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BatteryIconStyle();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100045BEC()
{
  result = type metadata accessor for BatteryIconStyle();
  if (v1 <= 0x3F)
  {
    result = sub_1000084D4(319, &qword_10011F9D0, AABattery_ptr);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100045CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 128);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100008438(&qword_10011DE28, &unk_1000D98B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100008438(&qword_10011DE30, &qword_1000D79F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 152);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100045E0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 128) = (a2 - 1);
  }

  else
  {
    v8 = sub_100008438(&qword_10011DE28, &unk_1000D98B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100008438(&qword_10011DE30, &qword_1000D79F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 152);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100045F68()
{
  sub_1000463B0(319, &qword_10011CDA8);
  if (v0 <= 0x3F)
  {
    sub_1000463B0(319, &qword_10011CDB0);
    if (v1 <= 0x3F)
    {
      sub_10004634C(319, &qword_10011DEA0, type metadata accessor for HeadphoneBatteryInfo, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_1000463B0(319, &qword_10011CD60);
        if (v3 <= 0x3F)
        {
          type metadata accessor for SFBluetoothCaseLEDColor(319);
          if (v4 <= 0x3F)
          {
            type metadata accessor for SFBluetoothCaseLEDVersion(319);
            if (v5 <= 0x3F)
            {
              sub_10004634C(319, &qword_10011DEA8, &type metadata accessor for UUID, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_1000463B0(319, &qword_10011DEB0);
                if (v7 <= 0x3F)
                {
                  sub_1000463FC(319, &qword_10011DEB8, &qword_10011DEC0, AudioAccessoryDevice_ptr);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for SFBluetoothHeadsetStatus(319);
                    if (v9 <= 0x3F)
                    {
                      sub_1000463FC(319, &qword_10011DEC8, &qword_10011DED0, NSBundle_ptr);
                      if (v10 <= 0x3F)
                      {
                        sub_10004634C(319, &qword_10011DED8, &type metadata accessor for HeadphonePairing2.Assets, &type metadata accessor for Optional);
                        if (v11 <= 0x3F)
                        {
                          sub_10004634C(319, &qword_10011DEE0, &type metadata accessor for Date, &type metadata accessor for Optional);
                          if (v12 <= 0x3F)
                          {
                            type metadata accessor for SFAnnounceCallsState(319);
                            if (v13 <= 0x3F)
                            {
                              sub_100046454();
                              if (v14 <= 0x3F)
                              {
                                sub_1000463FC(319, &qword_10011DEF8, &qword_10011DF00, AADeviceBatteryInfo_ptr);
                                if (v15 <= 0x3F)
                                {
                                  sub_1000464B8();
                                  if (v16 <= 0x3F)
                                  {
                                    swift_cvw_initStructMetadataWithLayoutString();
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10004634C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1000463B0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1000463FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000084D4(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100046454()
{
  if (!qword_10011DEE8)
  {
    sub_10000A408(&qword_10011DEF0, &qword_1000D7A08);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10011DEE8);
    }
  }
}

void sub_1000464B8()
{
  if (!qword_10011DF08)
  {
    sub_10004651C();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_10011DF08);
    }
  }
}

unint64_t sub_10004651C()
{
  result = qword_10011DF10;
  if (!qword_10011DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DF10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneModel.TestMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphoneModel.TestMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneModel.SiriState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphoneModel.SiriState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneModel.Mode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphoneModel.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000468D4()
{
  result = qword_10011DFF0;
  if (!qword_10011DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DFF0);
  }

  return result;
}

unint64_t sub_10004692C()
{
  result = qword_10011DFF8;
  if (!qword_10011DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DFF8);
  }

  return result;
}

unint64_t sub_100046984()
{
  result = qword_10011E000;
  if (!qword_10011E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E000);
  }

  return result;
}

unint64_t sub_1000469DC()
{
  result = qword_10011E008;
  if (!qword_10011E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E008);
  }

  return result;
}

uint64_t sub_100046A30()
{
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000D5240;
  *(v0 + 32) = dispatch thunk of AADBatteryInfoVM.batteryLeft.getter();
  *(v0 + 40) = dispatch thunk of AADBatteryInfoVM.batteryRight.getter();
  *(v0 + 48) = dispatch thunk of AADBatteryInfoVM.batteryMain.getter();
  *(v0 + 56) = dispatch thunk of AADBatteryInfoVM.batteryCase.getter();
  *(v0 + 64) = dispatch thunk of AADBatteryInfoVM.batteryCombinedLeftRight.getter();
  return v0;
}

BOOL sub_100046AA8()
{
  v0 = sub_100046A30();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = &unk_100116000;
    v7 = &unk_100116000;
    while (1)
    {
      if (v4)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_16;
        }

        v8 = *(v1 + 8 * v3 + 32);
      }

      v9 = v8;
      v10 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v8 v6[374]] && objc_msgSend(v9, v7[375]) == 3)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v11 = v4;
        v12 = i;
        v13 = v1;
        v14 = v6;
        v15 = *(&_swiftEmptyArrayStorage + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v6 = v14;
        v1 = v13;
        i = v12;
        v4 = v11;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v7 = &unk_100116000;
      }

      else
      {
      }

      ++v3;
      if (v10 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (&_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *(&_swiftEmptyArrayStorage + 2);
  }

  return v16 > 0;
}

BOOL sub_100046C58()
{
  v0 = sub_100046A30();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = &unk_100116000;
    v7 = &unk_100116000;
    while (1)
    {
      if (v4)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_16;
        }

        v8 = *(v1 + 8 * v3 + 32);
      }

      v9 = v8;
      v10 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v8 v6[374]] && objc_msgSend(v9, v7[375]) == 4)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v11 = v4;
        v12 = i;
        v13 = v1;
        v14 = v6;
        v15 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v6 = v14;
        v1 = v13;
        i = v12;
        v4 = v11;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v7 = &unk_100116000;
      }

      else
      {
      }

      ++v3;
      if (v10 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = _swiftEmptyArrayStorage[2];
  }

  return v16 > 0;
}

uint64_t sub_100046E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011DE28, &unk_1000D98B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100046E78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v98 = a2;
  v3 = type metadata accessor for URL();
  v91 = *(v3 - 8);
  v92 = v3;
  v4 = v91[8];
  v5 = __chkstk_darwin(v3);
  v90 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v86 - v8;
  __chkstk_darwin(v7);
  v93 = &v86 - v10;
  v11 = a1[3];
  v12 = a1[4];
  sub_10000E7E4(a1, v11);
  v13 = *(v12 + 24);
  v14 = v13(v11, v12);
  v96 = v15;
  v97 = v14;
  v17 = a1[3];
  v16 = a1[4];
  sub_10000E7E4(a1, v17);
  v18 = (*(v16 + 16))(v17, v16);
  v94 = v19;
  v95 = v18;
  v20 = a1[3];
  v21 = a1[4];
  sub_10000E7E4(a1, v20);
  v22 = (*(v21 + 40))(v20, v21);
  v23 = v13(v11, v12);
  v25 = v24;
  v26 = [objc_opt_self() currentDevice];
  v27 = [v26 userInterfaceIdiom];

  if (v27 == 1)
  {
    if (v23 == 0xD000000000000012 && 0x80000001000DB870 == v25)
    {
      v28 = 1;
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v28 = 0;
  }

  if (qword_10011C690 != -1)
  {
    swift_once();
  }

  v29 = off_10011DD80;
  if (!*(off_10011DD80 + 2) || (v30 = sub_1000CD118(v23, v25), (v31 & 1) == 0) || (v28 & 1) != 0)
  {
    v32 = objc_opt_self();
    v33 = String._bridgeToObjectiveC()();

    v34 = [objc_opt_self() mainScreen];
    [v34 scale];
    v36 = v35;

    v37 = [v32 _applicationIconImageForBundleIdentifier:v33 format:0 scale:v36];
LABEL_13:
    result = sub_10000EA94(a1);
    v39 = v98;
    v40 = v95;
    v41 = v96;
    *v98 = v97;
    v39[1] = v41;
    v39[2] = v40;
    v39[3] = v94;
    *(v39 + 32) = v22 & 1;
    v39[5] = v37;
    return result;
  }

  v42 = (v29[7] + 16 * v30);
  v43 = *v42;
  v44 = qword_10011C688;
  v89 = v42[1];

  if (v44 != -1)
  {
    swift_once();
  }

  v45 = v92;
  sub_10000A570(v92, qword_10011DD68);
  URL.appendingPathComponent(_:)();
  URL.appendingPathExtension(_:)();
  v88 = v91[1];
  v88(v9, v45);
  v46 = objc_allocWithZone(NSBundle);
  URL._bridgeToObjectiveC()(v47);
  v49 = v48;
  v50 = [v46 initWithURL:v48];

  if (!v50)
  {
LABEL_22:

    if (qword_10011C680 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_10000A570(v66, qword_10011DD50);
    v67 = v90;
    v68 = v93;
    (v91[2])(v90, v93, v45);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = v67;
      v73 = swift_slowAlloc();
      v99 = v73;
      *v71 = 136315138;
      sub_100017A58();
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v45;
      v76 = v22;
      v78 = v77;
      v79 = v88;
      v88(v72, v75);
      v80 = sub_100078978(v74, v78, &v99);
      v22 = v76;

      *(v71 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v69, v70, "No bundle found at %s", v71, 0xCu);
      sub_10000EA94(v73);

      v79(v93, v92);
    }

    else
    {

      v81 = v88;
      v88(v67, v45);
      v81(v68, v45);
    }

    v37 = 0;
    goto LABEL_13;
  }

  v51 = v50;
  v52 = String._bridgeToObjectiveC()();
  v53 = [objc_opt_self() imageNamed:v52 inBundle:v51];

  if (!v53)
  {

    goto LABEL_22;
  }

  v91 = v51;
  v54 = [v53 CGImage];
  v90 = v53;
  [v53 scale];
  v56 = [objc_allocWithZone(IFImage) initWithCGImage:v54 scale:v55];

  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1000D78E0;
  *(v57 + 32) = v56;
  v58 = objc_allocWithZone(ISIcon);
  sub_1000084D4(0, &unk_10011E020, IFImage_ptr);
  v87 = v56;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v60 = [v58 initWithImages:isa];

  v61 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  v62 = [v60 imageForDescriptor:v61];
  if (!v62)
  {

    if (qword_10011C680 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_10000A570(v82, qword_10011DD50);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "Could not mask icon", v85, 2u);
    }

    else
    {
    }

    v88(v93, v92);
    v37 = 0;
    goto LABEL_13;
  }

  v63 = v62;
  result = [v62 CGImage];
  if (result)
  {
    v64 = result;

    [v63 scale];
    v37 = [objc_allocWithZone(UIImage) initWithCGImage:v64 scale:0 orientation:v65];

    v88(v93, v92);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100047878(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100022640(a1, a2);
  }

  return a1;
}

__n128 sub_10004788C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000478A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000478E8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100047958(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100008438(&unk_10011E0B0, &unk_1000D7D40);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + v15);

        swift_dynamicCast();
        sub_10004D3D8(&v25, v27);
        sub_10004D3D8(v27, v28);
        sub_10004D3D8(v28, &v26);
        result = sub_1000CD118(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_10000EA94(v12);
          result = sub_10004D3D8(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_10004D3D8(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100047BA0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011E030);
  v1 = sub_10000A570(v0, qword_10011E030);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100047C68()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Dismissing flow", v5, 2u);
  }

  v6 = v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 32))(ObjectType, v7);
    swift_unknownObjectRelease();
    v10 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter);
    swift_beginAccess();
    v11 = v10[3];
    if (v11)
    {
      v12 = *sub_10000E7E4(v10, v11);
      sub_1000B562C(v9);
    }
  }

  v13 = v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter;
  swift_beginAccess();
  if (*(v13 + 24))
  {
    sub_10000E9C8(v13, v15);
    sub_10000E7E4(v15, v15[3]);
    type metadata accessor for HeadphonePresenter();
    sub_1000C0A08();
    sub_10000EA94(v15);
  }

  result = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (result)
  {
    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_100047E70()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing announce intro view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneAnnounceIntroViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneAnnounceIntroViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneAnnounceIntroViewController_type, sub_100014F40, &off_100103808);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100048014()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing announce customize view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneAnnounceCustomizeViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_type, sub_1000934C0, &off_1001075F0);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_1000481B8()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing battery view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneBatteryViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_type, sub_100083E0C, &off_100107068);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004835C()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing heart rate monitor view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadhponeHeartRateViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService32HeadhponeHeartRateViewController_type, sub_10009DAD4, &off_100107B90);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100048500()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing USB Lossless Audio", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for USBHeadphoneLossLessAudioController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController_type, sub_1000B2188, &off_100108468);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_1000486A4()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Yodel Card", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneYodelFeaturesViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneYodelFeaturesViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneYodelFeaturesViewController_type, sub_100038940, &off_100104A50);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100048848()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Yodel Hearing Protection Upsell", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneYodelHearingProtectionViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_type, sub_1000204EC, &off_100103FF8);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_1000489EC()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Yodel Hearing Switch Listening mode", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneYodelHearingSwitchListeningModeViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_type, sub_100039ECC, &off_100104B08);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100048B90()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Yodel Hearing Test Upsell", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneYodelHearingTestViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController_type, sub_100014068, &off_100103750);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100048D34()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Pause Media on Sleep Upsell", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphonePauseMediaOnSleepViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_type, sub_10002EA58, &off_1001046D0);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100048ED8()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing connect view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneConnectViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_type, sub_1000544B4, &off_1001059F0);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004907C()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing connecting view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for USBHeadphoneConnectingViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_type, sub_1000544B4, &off_1001059F0);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100049220()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing control center view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneControlCenterTrainingViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService44HeadphoneControlCenterTrainingViewController_type, sub_1000AD4E4, &off_1001081A0);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_1000493C4()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing end call", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneEndCallViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_type, sub_100018DB0, &off_100103980);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100049568()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Adaptive Controls Upsell", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneAdaptiveControlsUpsellViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneAdaptiveControlsUpsellViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneAdaptiveControlsUpsellViewController_type, sub_10000698C, &off_100102E58);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004970C()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Adaptive Controls - Adaptive Mode Card", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneAdaptiveControlsAdaptiveModeViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneAdaptiveControlsAdaptiveModeViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneAdaptiveControlsAdaptiveModeViewController_type, sub_100040564, &off_100104E78);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_1000498B0()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Adaptive Controls - Personalized Volume Card", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneAdaptiveControlsPersonalizedVolumeViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService57HeadphoneAdaptiveControlsPersonalizedVolumeViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService57HeadphoneAdaptiveControlsPersonalizedVolumeViewController_type, sub_1000B0318, &off_100108370);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100049A54()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Adaptive Controls - Conversation Awareness Card", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneAdaptiveControlsConversationAwarenessViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService60HeadphoneAdaptiveControlsConversationAwarenessViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService60HeadphoneAdaptiveControlsConversationAwarenessViewController_type, sub_10001EC44, &off_100103F40);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100049BF8()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Whats New", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneWhatsNewUpsellViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_type, sub_100090730, &off_1001073D0);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100049D9C()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Head Gestures", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneHeadGesturesUpsellViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_type, sub_10008D5C4, &off_100107318);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_100049F40()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Live Translation", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneLiveTranslationViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_type, sub_10000D748, &off_100103320);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004A0E4()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Live Translation Asset Download", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneLiveTranslationAssetDownloadViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_type, sub_10007D848, &off_100106CF0);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004A288()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing error view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneErrorViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneErrorViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneErrorViewController_type, sub_10003E350, &off_100104D70);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004A42C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HeadphoneViewModel(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_marketingUpsell);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_marketingUpsell + 8);
    sub_10004CE78();
    v10 = v8;
    v11 = v9;
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      goto LABEL_5;
    }
  }

  v13 = objc_allocWithZone(type metadata accessor for HeadphoneMarketingUpsellViewController());
  v11 = sub_10003689C(a1);
LABEL_5:
  v14 = qword_10011C6A0;
  v27 = v11;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000A570(v15, qword_10011E030);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Showing marketing upsell view", v18, 2u);
  }

  v19 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v19)
  {
    v20 = (v2 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter);
    swift_beginAccess();
    v21 = v20[3];
    if (v21)
    {
      v22 = *sub_10000E7E4(v20, v21);
      *&v27[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_presenter + 8] = &off_1001087F0;
      swift_unknownObjectWeakAssign();
      v23 = v27[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController_type];
      v24 = v19;
      sub_1000BB69C(v23, v7);
      sub_10004CE1C(v7);
    }

    else
    {
      v26 = v19;
    }

    *(v2 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView + 8) = &off_1001049E8;
    swift_unknownObjectWeakAssign();
    [v19 pushViewController:v27 animated:1];
  }

  else
  {

    v25 = v27;
  }
}

void sub_10004A700(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_marketingUpsell;
  v4 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_marketingUpsell);
  if (!v4 || (v5 = *(v3 + 8), sub_10004CE78(), v6 = v4, v7 = v5, v8 = static NSObject.== infix(_:_:)(), v7, v6, (v8 & 1) == 0))
  {
    if (qword_10011C6A0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A570(v9, qword_10011E030);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Preloading request handled", v12, 2u);
    }

    v13 = objc_allocWithZone(type metadata accessor for HeadphoneMarketingUpsellViewController());
    v14 = a1;
    v15 = sub_10003689C(v14);
    v17 = *v3;
    v16 = *(v3 + 8);
    *v3 = v14;
    *(v3 + 8) = v15;

    sub_100021640(v17, v16);
  }
}

void sub_10004A884()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing install FindMy App view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneInstallFindMyViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneInstallFindMyViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneInstallFindMyViewController_type, sub_10000EC1C, &off_100103400);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004AA28()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing AirPods linking view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneLinkingViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneLinkingViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneLinkingViewController_type, sub_10003C0E0, &off_100104C50);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004ABCC()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing not genuine view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneNotGenuineViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_type, sub_10001D118, &off_100103E88);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004AD70()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing repair instructions view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneRepairViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService29HeadphoneRepairViewController_type, sub_1000A8798, &off_100107F40);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004AF14()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing Hey Siri training view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneSiriViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneSiriViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneSiriViewController_type, sub_100051D28, &off_100105748);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004B0B8()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing share audio done view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneShareAudioDoneViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneShareAudioDoneViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneShareAudioDoneViewController_type, sub_10002A67C, &off_100104368);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004B25C()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing spatial audio profile view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneSpatialAudioProfileViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService42HeadphoneSpatialAudioProfileViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService42HeadphoneSpatialAudioProfileViewController_type, sub_1000B3024, &off_1001084F8);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004B400()
{
  v1 = v0;
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing track workout view", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v6)
  {
    type metadata accessor for HeadphoneTrackWorkoutViewController();
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = v6;
    v9 = [v7 initWithNibName:0 bundle:0];
    sub_10004CA28(v9, &OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneTrackWorkoutViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneTrackWorkoutViewController_type, sub_10002FB40, &off_100104788);
    [v8 pushViewController:v9 animated:1];
  }
}

void sub_10004B5A4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
  if (v3)
  {

    [v3 presentViewController:a1 animated:1 completion:0];
  }

  else
  {
    if (qword_10011C6A0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A570(v4, qword_10011E030);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "No navigation controller", v6, 2u);
    }
  }
}

void sub_10004B6D0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for HeadphoneViewModel(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(*(a2 + 136))
  {
    case 1:
      type metadata accessor for HeadphoneEndCallUpsellViewController();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v10, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneEndCallUpsellViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneEndCallUpsellViewController_type, sub_100095548, &off_1001076D0);
      v11 = 0xE800000000000000;
      v12 = 0x6C6C616320646E65;
      goto LABEL_27;
    case 2:
      type metadata accessor for HeadphoneMuteCallUpsellViewController();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v10, &OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController_type, sub_1000506F8, &off_100105640);
      v11 = 0xE90000000000006CLL;
      v12 = 0x6C6163206574756DLL;
      goto LABEL_27;
    case 3:
      v12 = 0xD000000000000011;
      v11 = 0x80000001000DFD30;
      type metadata accessor for HeadphoneAdaptiveControlsPersonalizedVolumeViewController();
      v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      v10 = v13;
      v14 = &OBJC_IVAR____TtC20HeadphoneProxService57HeadphoneAdaptiveControlsPersonalizedVolumeViewController_presenter;
      v15 = &OBJC_IVAR____TtC20HeadphoneProxService57HeadphoneAdaptiveControlsPersonalizedVolumeViewController_type;
      v16 = &off_100108370;
      v17 = sub_1000B0318;
      goto LABEL_14;
    case 4:
      type metadata accessor for HeadphoneProxFeatureManager();
      static HeadphoneProxFeatureManager.shared.getter();
      v18 = *(a2 + 144);
      v19 = *(a2 + 152);
      v20 = HeadphoneProxFeatureManager.getWhatsNewNotShowedFeatures(deviceAddress:)();

      v21 = *(v20 + 16);

      if (!v21)
      {
        if (qword_10011C6A0 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_10000A570(v37, qword_10011E030);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "whatsNewUpsell: All 2025 features seen, skip showing legacy What's new", v40, 2u);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1000A0430();

          swift_unknownObjectRelease();
        }

        return;
      }

      type metadata accessor for HeadphoneWhatsNewUpsellViewController();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v10, &OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_type, sub_100090730, &off_1001073D0);
      v11 = 0xE900000000000077;
      v12 = 0x656E207374616877;
LABEL_27:
      v26 = qword_10011C6A0;
      v27 = v10;
      if (v26 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10000A570(v28, qword_10011E030);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v59 = v32;
        *v31 = 136315138;
        v33 = sub_100078978(v12, v11, &v59);

        *(v31 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v29, v30, "Showing first view: %s", v31, 0xCu);
        sub_10000EA94(v32);
      }

      else
      {
      }

      v34 = [a1 presentProxCardFlowWithDelegate:v3 initialViewController:v27];
      v35 = *(v3 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
      *(v3 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController) = v34;

      v36 = mach_absolute_time();
      goto LABEL_33;
    case 5:
      type metadata accessor for HeadphoneHeadGesturesUpsellViewController();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v10, &OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_type, sub_10008D5C4, &off_100107318);
      v11 = 0xED00007365727574;
      v12 = 0x7365672064616568;
      goto LABEL_27;
    case 6:
      v11 = 0x80000001000DFD10;
      type metadata accessor for HeadphoneLiveTranslationViewController();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v10, &OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_type, sub_10000D748, &off_100103320);
      v12 = 0xD000000000000010;
      goto LABEL_27;
    case 7:
      v11 = 0x80000001000DFCF0;
      type metadata accessor for USBHeadphoneLossLessAudioController();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v10, &OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController_type, sub_1000B2188, &off_100108468);
      v12 = 0xD000000000000012;
      goto LABEL_27;
    case 8:
      type metadata accessor for HeadphoneMismatchViewController();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004C834(v10);
      v11 = 0xED00007364756220;
      v12 = 0x686374616D73696DLL;
      goto LABEL_27;
    case 9:
      if (*(a2 + *(type metadata accessor for HeadphoneModel(0) + 84)) == 1)
      {
        type metadata accessor for HeadphoneConnectViewController();
        v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
        sub_10004CA28(v10, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_type, sub_1000544B4, &off_1001059F0);
        v11 = 0xE700000000000000;
        v12 = 0x7463656E6E6F63;
      }

      else
      {
        v11 = 0x80000001000DFCD0;
        type metadata accessor for HeadphoneUnsupportedViewController();
        v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
        sub_10004C634(v10);
        v12 = 0xD000000000000013;
      }

      goto LABEL_27;
    case 0xA:
      v25 = type metadata accessor for HeadphoneModel(0);
      if (*(a2 + *(v25 + 136)) == 8223 && *(a2 + *(v25 + 188)) == 1)
      {
        v12 = 0x72756F7920746F6ELL;
        type metadata accessor for USBHeadphoneNotYoursViewController();
        v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
        sub_10004CA28(v10, &OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_type, sub_100032EFC, &off_1001085B0);
      }

      else
      {
        v12 = 0x72756F7920746F6ELL;
        type metadata accessor for HeadphoneNotYoursViewController();
        v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
        sub_10004C4E8(v10);
      }

      v11 = 0xE900000000000073;
      goto LABEL_27;
    case 0xB:
      v11 = 0x80000001000DFC90;
      type metadata accessor for HeadphoneAnnounceIntroViewController();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v10, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneAnnounceIntroViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneAnnounceIntroViewController_type, sub_100014F40, &off_100103808);
      v12 = 0xD000000000000016;
      goto LABEL_27;
    case 0xC:
      v11 = 0x80000001000DFC70;
      type metadata accessor for HeadphoneSpatialAudioProfileViewController();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v10, &OBJC_IVAR____TtC20HeadphoneProxService42HeadphoneSpatialAudioProfileViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService42HeadphoneSpatialAudioProfileViewController_type, sub_1000B3024, &off_1001084F8);
      v12 = 0xD000000000000015;
      goto LABEL_27;
    case 0xD:
      type metadata accessor for HeadphoneBatteryViewController();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v10, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_type, sub_100083E0C, &off_100107068);
      v11 = 0xE700000000000000;
      v12 = 0x79726574746162;
      goto LABEL_27;
    case 0xE:
      v12 = 0xD000000000000011;
      v11 = 0x80000001000DFCB0;
      type metadata accessor for HeadphoneShareAudioViewController();
      v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      v10 = v13;
      v14 = &OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_presenter;
      v15 = &OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_type;
      v16 = &off_100107E38;
      v17 = sub_1000A413C;
LABEL_14:
      sub_10004CA28(v13, v14, v15, v17, v16);
      goto LABEL_27;
    case 0xF:
      v22 = *(a2 + 152);
      if (v22)
      {
        v23 = *(a2 + 144);
        v24 = v22;
      }

      else
      {
        v24 = 0xE700000000000000;
        v23 = 0x6E776F6E6B6E75;
      }

      objc_allocWithZone(type metadata accessor for HeadphoneOptimizedBatteryCharingViewController());

      v41 = sub_100032894(v23, v24);
      v42 = (v3 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter);
      swift_beginAccess();
      v43 = v42[3];
      if (v43)
      {
        v44 = sub_10000E7E4(v42, v43);
        v45 = &v41[OBJC_IVAR____TtC20HeadphoneProxService46HeadphoneOptimizedBatteryCharingViewController_presenter];
        v46 = *&v41[OBJC_IVAR____TtC20HeadphoneProxService46HeadphoneOptimizedBatteryCharingViewController_presenter];
        *v45 = *v44;
        *(v45 + 1) = &off_1001087F0;
        v47 = v41;

        swift_unknownObjectRelease();
        sub_1000BB69C(v47[OBJC_IVAR____TtC20HeadphoneProxService46HeadphoneOptimizedBatteryCharingViewController_type], v9);

        sub_10004CE1C(v9);
      }

      *(v3 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView + 8) = &off_100104868;
      swift_unknownObjectWeakAssign();
      v48 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v41];
      v49 = OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController;
      v50 = *(v3 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController);
      *(v3 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_navigationController) = v48;
      v51 = v48;

      if (!v51)
      {
        __break(1u);
        goto LABEL_54;
      }

      [v51 setModalPresentationStyle:2];

      if (qword_10011C6A0 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_10000A570(v52, qword_10011E030);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v58 = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_100078978(0xD00000000000001ALL, 0x80000001000DFC50, &v58);
        _os_log_impl(&_mh_execute_header, v53, v54, "Showing first view: %s", v55, 0xCu);
        sub_10000EA94(v56);
      }

      v57 = *(v3 + v49);
      if (!v57)
      {
LABEL_54:
        __break(1u);
        JUMPOUT(0x10004C4A8);
      }

      [a1 presentViewController:v57 animated:1 completion:0];
      v36 = mach_absolute_time();

LABEL_33:
      *(v3 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_initialCardDisplayUpTicks) = v36;
      return;
    default:
      type metadata accessor for HeadphoneNotGenuineViewController();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      sub_10004CA28(v10, &OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_presenter, &OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_type, sub_10001D118, &off_100103E88);
      v11 = 0xEB00000000656E69;
      v12 = 0x756E656720746F6ELL;
      goto LABEL_27;
  }
}

uint64_t sub_10004C4E8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HeadphoneViewModel(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter);
  swift_beginAccess();
  v9 = v8[3];
  if (v9)
  {
    v10 = *sub_10000E7E4(v8, v9);
    *(a1 + OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_presenter + 8) = &off_1001087F0;
    swift_unknownObjectWeakAssign();
    sub_1000BB69C(*(a1 + OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_type), v7);
    (*((swift_isaMask & *a1) + 0xF0))(v7);
    sub_10004CE1C(v7);
  }

  *(v2 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView + 8) = &off_1001085B0;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_10004C634(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20[-v6];
  v8 = type metadata accessor for HeadphoneViewModel(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter);
  swift_beginAccess();
  v14 = v13[3];
  if (v14)
  {
    v15 = sub_10000E7E4(v13, v14);
    v16 = (a1 + OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_presenter);
    v17 = *(a1 + OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_presenter);
    *v16 = *v15;
    v16[1] = &off_1001087F0;

    swift_unknownObjectRelease();
    sub_1000BB69C(*(a1 + OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_type), v12);
    sub_1000260D0(v12, v7);
    (*(v9 + 56))(v7, 0, 1, v8);
    v18 = OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_viewModel;
    swift_beginAccess();
    sub_10004D3E8(v7, a1 + v18);
    swift_endAccess();
  }

  *(v2 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView + 8) = &off_100107288;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_10004C834(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for HeadphoneViewModel(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter);
  swift_beginAccess();
  v14 = v13[3];
  if (v14)
  {
    v15 = *sub_10000E7E4(v13, v14);
    *(a1 + OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_presenter + 8) = &off_1001087F0;
    swift_unknownObjectWeakAssign();
    sub_1000BB69C(*(a1 + OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_type), v12);
    sub_1000260D0(v12, v7);
    (*(v9 + 56))(v7, 0, 1, v8);
    v16 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneMismatchViewController_viewModel;
    swift_beginAccess();
    sub_10004D3E8(v7, a1 + v16);
    swift_endAccess();
  }

  *(v2 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView + 8) = &off_100104218;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_10004CA28(uint64_t a1, void *a2, void *a3, void (*a4)(char *), uint64_t a5)
{
  v10 = v5;
  v12 = type metadata accessor for HeadphoneViewModel(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (v5 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_presenter);
  swift_beginAccess();
  v17 = v16[3];
  if (v17)
  {
    v18 = *sub_10000E7E4(v16, v17);
    *(a1 + *a2 + 8) = &off_1001087F0;
    swift_unknownObjectWeakAssign();
    sub_1000BB69C(*(a1 + *a3), v15);
    a4(v15);
    sub_10004CE1C(v15);
  }

  *(v10 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView + 8) = a5;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_10004CCB8()
{
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A570(v0, qword_10011E030);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Flow did dismiss", v3, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000A0430();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10004CE1C(uint64_t a1)
{
  v2 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004CE78()
{
  result = qword_10011E0A0;
  if (!qword_10011E0A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011E0A0);
  }

  return result;
}

uint64_t sub_10004CEC4()
{
  v0 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v33 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011C6A0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A570(v9, qword_10011E030);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Launching bluetooth settings", v12, 2u);
  }

  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10000E950(v3, &qword_10011CF08, &unk_1000D7310);
  }

  (*(v5 + 32))(v8, v3, v4);
  sub_100008438(&qword_10011D810, &unk_1000D7D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D66A0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v15;
  *(inited + 48) = 1;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v16;
  *(inited + 72) = 1;
  v17 = sub_1000A3764(inited);
  swift_setDeallocating();
  sub_100008438(&qword_10011D818, qword_1000D7320);
  swift_arrayDestroy();
  v18 = [objc_opt_self() defaultWorkspace];
  if (v18)
  {
    v20 = v18;
    URL._bridgeToObjectiveC()(v19);
    v22 = v21;
    sub_100047958(v17);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v34 = 0;
    v24 = [v20 openSensitiveURL:v22 withOptions:isa error:&v34];

    if (v24)
    {
      v25 = *(v5 + 8);
      v26 = v34;
      return v25(v8, v4);
    }

    else
    {
      v27 = v34;
      v28 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100008438(&unk_10011DC30, &unk_1000D7D30);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1000D5250;
      v34 = 0;
      v35 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);
      v30._countAndFlagsBits = 0xD000000000000019;
      v30._object = 0x80000001000DF640;
      String.append(_:)(v30);
      v33[1] = v28;
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      _print_unlocked<A, B>(_:_:)();
      v31 = v34;
      v32 = v35;
      *(v29 + 56) = &type metadata for String;
      *(v29 + 32) = v31;
      *(v29 + 40) = v32;
      print(_:separator:terminator:)();

      return (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    (*(v5 + 8))(v8, v4);
  }
}

_OWORD *sub_10004D3D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10004D3E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004D458(uint64_t result, char a2)
{
  if (result <= 0x24u && ((0x10FFFE3C1FuLL >> result) & 1) != 0)
  {
    v3 = qword_1000D7F50[result];
    v4 = v2 + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
    result = type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0);
    *(v4 + *(result + v3)) = a2;
  }

  return result;
}

uint64_t sub_10004D504@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004F8D4(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_10004D540()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_10004D588()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

uint64_t sub_10004D5CC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004F8FC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004D5F8@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 6;
  v2 = type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0);
  v3 = v2[5];
  v4 = type metadata accessor for HeadphoneHardwareModel();
  result = (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v6 = &a1[v2[6]];
  *v6 = 0;
  v6[8] = 1;
  a1[v2[7]] = 2;
  v7 = &a1[v2[8]];
  *v7 = 0;
  v7[4] = 1;
  v8 = &a1[v2[9]];
  *v8 = 0;
  v8[4] = 1;
  a1[v2[10]] = 7;
  a1[v2[11]] = 7;
  a1[v2[12]] = 7;
  a1[v2[13]] = 7;
  a1[v2[14]] = 7;
  a1[v2[15]] = 7;
  a1[v2[16]] = 7;
  a1[v2[17]] = 7;
  a1[v2[18]] = 7;
  a1[v2[19]] = 7;
  a1[v2[20]] = 7;
  a1[v2[21]] = 7;
  a1[v2[22]] = 7;
  a1[v2[23]] = 7;
  a1[v2[24]] = 7;
  a1[v2[25]] = 7;
  a1[v2[26]] = 7;
  a1[v2[27]] = 7;
  a1[v2[28]] = 7;
  a1[v2[29]] = 7;
  a1[v2[30]] = 7;
  a1[v2[31]] = 7;
  a1[v2[32]] = 7;
  a1[v2[33]] = 7;
  a1[v2[34]] = 7;
  a1[v2[35]] = 7;
  a1[v2[36]] = 7;
  a1[v2[37]] = 7;
  a1[v2[38]] = 7;
  a1[v2[39]] = 7;
  a1[v2[40]] = 7;
  a1[v2[41]] = 7;
  a1[v2[42]] = 7;
  a1[v2[43]] = 7;
  a1[v2[44]] = 7;
  return result;
}

void *sub_10004D7D4()
{
  v1 = v0 + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics);
  if (v2 != 6)
  {
    sub_10004E9C0();
    v3.super.super.isa = NSNumber.init(integerLiteral:)(v2 + 1).super.super.isa;
  }

  v4 = type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0);
  v5 = v1 + v4[6];
  if ((*(v5 + 8) & 1) == 0)
  {
    v6 = *v5;
    sub_10004E9C0();
    v7.super.super.isa = NSNumber.init(integerLiteral:)(v6).super.super.isa;
  }

  v8 = *(v1 + v4[7]);
  if (v8 != 2)
  {
    sub_10004E9C0();
    v9.super.super.isa = NSNumber.init(BOOLeanLiteral:)(v8 & 1).super.super.isa;
  }

  v10 = (v1 + v4[8]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    sub_10004E9C0();
    v12.super.super.isa = NSNumber.init(integerLiteral:)(v11).super.super.isa;
  }

  v13 = (v1 + v4[9]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    sub_10004E9C0();
    v15.super.super.isa = NSNumber.init(integerLiteral:)(v14).super.super.isa;
  }

  v16 = *(v1 + v4[10]);
  if (v16 != 7)
  {
    sub_10004E9C0();
    v17.super.super.isa = NSNumber.init(integerLiteral:)(v16 + 1).super.super.isa;
  }

  v18 = *(v1 + v4[11]);
  if (v18 != 7)
  {
    sub_10004E9C0();
    v19.super.super.isa = NSNumber.init(integerLiteral:)(v18 + 1).super.super.isa;
  }

  v20 = *(v1 + v4[12]);
  if (v20 != 7)
  {
    sub_10004E9C0();
    v21.super.super.isa = NSNumber.init(integerLiteral:)(v20 + 1).super.super.isa;
  }

  v22 = *(v1 + v4[14]);
  if (v22 != 7)
  {
    sub_10004E9C0();
    v23.super.super.isa = NSNumber.init(integerLiteral:)(v22 + 1).super.super.isa;
  }

  v24 = *(v1 + v4[15]);
  if (v24 != 7)
  {
    sub_10004E9C0();
    v25.super.super.isa = NSNumber.init(integerLiteral:)(v24 + 1).super.super.isa;
  }

  v26 = *(v1 + v4[16]);
  if (v26 != 7)
  {
    sub_10004E9C0();
    v27.super.super.isa = NSNumber.init(integerLiteral:)(v26 + 1).super.super.isa;
  }

  v28 = *(v1 + v4[17]);
  if (v28 != 7)
  {
    sub_10004E9C0();
    v29.super.super.isa = NSNumber.init(integerLiteral:)(v28 + 1).super.super.isa;
  }

  v30 = *(v1 + v4[18]);
  if (v30 != 7)
  {
    sub_10004E9C0();
    v31.super.super.isa = NSNumber.init(integerLiteral:)(v30 + 1).super.super.isa;
  }

  v32 = *(v1 + v4[19]);
  if (v32 != 7)
  {
    sub_10004E9C0();
    v33.super.super.isa = NSNumber.init(integerLiteral:)(v32 + 1).super.super.isa;
  }

  v34 = *(v1 + v4[20]);
  if (v34 != 7)
  {
    sub_10004E9C0();
    v35.super.super.isa = NSNumber.init(integerLiteral:)(v34 + 1).super.super.isa;
  }

  v36 = *(v1 + v4[21]);
  if (v36 != 7)
  {
    sub_10004E9C0();
    v37.super.super.isa = NSNumber.init(integerLiteral:)(v36 + 1).super.super.isa;
  }

  v38 = *(v1 + v4[22]);
  if (v38 != 7)
  {
    sub_10004E9C0();
    v39.super.super.isa = NSNumber.init(integerLiteral:)(v38 + 1).super.super.isa;
  }

  v40 = *(v1 + v4[23]);
  if (v40 != 7)
  {
    sub_10004E9C0();
    v41.super.super.isa = NSNumber.init(integerLiteral:)(v40 + 1).super.super.isa;
  }

  v42 = *(v1 + v4[24]);
  if (v42 != 7)
  {
    sub_10004E9C0();
    v43.super.super.isa = NSNumber.init(integerLiteral:)(v42 + 1).super.super.isa;
  }

  v44 = *(v1 + v4[25]);
  if (v44 != 7)
  {
    sub_10004E9C0();
    v45.super.super.isa = NSNumber.init(integerLiteral:)(v44 + 1).super.super.isa;
  }

  v46 = *(v1 + v4[26]);
  if (v46 != 7)
  {
    sub_10004E9C0();
    v47.super.super.isa = NSNumber.init(integerLiteral:)(v46 + 1).super.super.isa;
  }

  v48 = *(v1 + v4[27]);
  if (v48 != 7)
  {
    sub_10004E9C0();
    v49.super.super.isa = NSNumber.init(integerLiteral:)(v48 + 1).super.super.isa;
  }

  v50 = *(v1 + v4[28]);
  if (v50 != 7)
  {
    sub_10004E9C0();
    v51.super.super.isa = NSNumber.init(integerLiteral:)(v50 + 1).super.super.isa;
  }

  v52 = *(v1 + v4[29]);
  if (v52 != 7)
  {
    sub_10004E9C0();
    v53.super.super.isa = NSNumber.init(integerLiteral:)(v52 + 1).super.super.isa;
  }

  v54 = *(v1 + v4[30]);
  if (v54 != 7)
  {
    sub_10004E9C0();
    v55.super.super.isa = NSNumber.init(integerLiteral:)(v54 + 1).super.super.isa;
  }

  v56 = *(v1 + v4[31]);
  if (v56 != 7)
  {
    sub_10004E9C0();
    v57.super.super.isa = NSNumber.init(integerLiteral:)(v56 + 1).super.super.isa;
  }

  v58 = *(v1 + v4[32]);
  if (v58 != 7)
  {
    sub_10004E9C0();
    v59.super.super.isa = NSNumber.init(integerLiteral:)(v58 + 1).super.super.isa;
  }

  v60 = *(v1 + v4[33]);
  if (v60 != 7)
  {
    sub_10004E9C0();
    v61.super.super.isa = NSNumber.init(integerLiteral:)(v60 + 1).super.super.isa;
  }

  v62 = *(v1 + v4[34]);
  if (v62 != 7)
  {
    sub_10004E9C0();
    v63.super.super.isa = NSNumber.init(integerLiteral:)(v62 + 1).super.super.isa;
  }

  v64 = *(v1 + v4[35]);
  if (v64 != 7)
  {
    sub_10004E9C0();
    v65.super.super.isa = NSNumber.init(integerLiteral:)(v64 + 1).super.super.isa;
  }

  v66 = *(v1 + v4[36]);
  if (v66 != 7)
  {
    sub_10004E9C0();
    v67.super.super.isa = NSNumber.init(integerLiteral:)(v66 + 1).super.super.isa;
  }

  v68 = *(v1 + v4[37]);
  if (v68 != 7)
  {
    sub_10004E9C0();
    v69.super.super.isa = NSNumber.init(integerLiteral:)(v68 + 1).super.super.isa;
  }

  v70 = *(v1 + v4[43]);
  if (v70 != 7)
  {
    sub_10004E9C0();
    v71.super.super.isa = NSNumber.init(integerLiteral:)(v70 + 1).super.super.isa;
  }

  v72 = *(v1 + v4[38]);
  if (v72 != 7)
  {
    sub_10004E9C0();
    v73.super.super.isa = NSNumber.init(integerLiteral:)(v72 + 1).super.super.isa;
  }

  v74 = *(v1 + v4[39]);
  if (v74 != 7)
  {
    sub_10004E9C0();
    v75.super.super.isa = NSNumber.init(integerLiteral:)(v74 + 1).super.super.isa;
  }

  v76 = *(v1 + v4[40]);
  if (v76 != 7)
  {
    sub_10004E9C0();
    v77.super.super.isa = NSNumber.init(integerLiteral:)(v76 + 1).super.super.isa;
  }

  v78 = *(v1 + v4[41]);
  if (v78 != 7)
  {
    sub_10004E9C0();
    v79.super.super.isa = NSNumber.init(integerLiteral:)(v78 + 1).super.super.isa;
  }

  v80 = *(v1 + v4[42]);
  if (v80 != 7)
  {
    sub_10004E9C0();
    v81.super.super.isa = NSNumber.init(integerLiteral:)(v80 + 1).super.super.isa;
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_10004E2B8()
{
  sub_10004F938(v0 + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10004E344()
{
  result = type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(319);
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

uint64_t sub_10004E408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100008438(&qword_10011E198, &unk_1000D7DA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 2)
    {
      v13 = ((v12 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v13 = -2;
    }

    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10004E504(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100008438(&qword_10011E198, &unk_1000D7DA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

void sub_10004E5CC()
{
  sub_1000463B0(319, &qword_10011E208);
  if (v0 <= 0x3F)
  {
    sub_10004E758();
    if (v1 <= 0x3F)
    {
      sub_1000463B0(319, &qword_10011E218);
      if (v2 <= 0x3F)
      {
        sub_1000463B0(319, &qword_10011E220);
        if (v3 <= 0x3F)
        {
          sub_1000463B0(319, &qword_10011E228);
          if (v4 <= 0x3F)
          {
            sub_1000463B0(319, &unk_10011E230);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10004E758()
{
  if (!qword_10011E210)
  {
    type metadata accessor for HeadphoneHardwareModel();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10011E210);
    }
  }
}

uint64_t getEnumTagSinglePayload for HeadphoneAnalyticsController.ProxCardActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphoneAnalyticsController.ProxCardActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10004E914()
{
  result = qword_10011E300;
  if (!qword_10011E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E300);
  }

  return result;
}

unint64_t sub_10004E96C()
{
  result = qword_10011E308;
  if (!qword_10011E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E308);
  }

  return result;
}

unint64_t sub_10004E9C0()
{
  result = qword_10011DC20;
  if (!qword_10011DC20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011DC20);
  }

  return result;
}

unint64_t sub_10004EA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  result = sub_1000CD118(a2, a3);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_10004EB6C(v17, isUniquelyReferenced_nonNull_native);
    result = sub_1000CD118(a2, a3);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = result;
    sub_10004F448();
    result = v21;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v4)
  {
LABEL_7:
    v19 = v11[7];
    v20 = *(v19 + 8 * result);
    *(v19 + 8 * result) = a1;
LABEL_12:
    *v5 = v11;
    return v20;
  }

LABEL_10:
  v11[(result >> 6) + 8] |= 1 << result;
  v22 = (v11[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v11[7] + 8 * result) = a1;
  v23 = v11[2];
  v16 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v16)
  {
    v11[2] = v24;

    v20 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004EB6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100008438(&qword_10011E310, &unk_1000D7F30);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10004EE10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100008438(&qword_10011E318, &unk_1000D7F40);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + 24 * v21;
      v38 = *v23;
      v24 = *(v23 + 8);
      v25 = *(v23 + 16);
      if ((v37 & 1) == 0)
      {
        sub_10004F924(v24, v25);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v38;
      *(v17 + 8) = v24;
      *(v17 + 16) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10004F0D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100008438(&unk_10011E0B0, &unk_1000D7D40);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10004D3D8(v25, v37);
      }

      else
      {
        sub_10003CE5C(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10004D3D8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_10004F388(unint64_t result, char a2, char a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + result) = a2;
  v6 = a6[7] + 24 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

_OWORD *sub_10004F3DC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10004D3D8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_10004F448()
{
  v1 = v0;
  sub_100008438(&qword_10011E310, &unk_1000D7F30);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10004F5B4()
{
  v1 = v0;
  sub_100008438(&qword_10011E318, &unk_1000D7F40);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_10004F924(v20, v21);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10004F730()
{
  v1 = v0;
  sub_100008438(&unk_10011E0B0, &unk_1000D7D40);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10003CE5C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10004D3D8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10004F8D4(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

uint64_t sub_10004F8FC(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x5040302010006uLL >> (8 * a1));
  }
}

uint64_t sub_10004F924(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_10004F938(uint64_t a1)
{
  v2 = type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004F9A4()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011E320);
  v1 = sub_10000A570(v0, qword_10011E320);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10004FA6C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v84 - v8;
  v91.receiver = v1;
  v91.super_class = ObjectType;
  objc_msgSendSuper2(&v91, "viewDidLoad");
  [v1 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    sub_10000E88C(v11 + 16, &v89, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v12 = *(&v90 + 1);
    if (*(&v90 + 1))
    {
      v13 = sub_10000E7E4(&v89, *(&v90 + 1));
      v14 = *(v12 - 8);
      v15 = *(v14 + 64);
      __chkstk_darwin(v13);
      v17 = (&v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v17);
      sub_10000E950(&v89, &qword_10011FBC0, &unk_1000D5EF0);
      v18 = *v17;
      v85 = v9;
      v19 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v20 = v18 + v19;
      v21 = v85;
      sub_10000E390(v20, v7);
      (*(v14 + 8))(v17, v12);
      sub_10000E828(v7, v21);
      type metadata accessor for HeadphoneEndCallViewController();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v24 = [v1 traitCollection];
      v25 = [v24 userInterfaceStyle];

      if (v25 == 1)
      {
        v26 = 0x746867694CLL;
      }

      else
      {
        v26 = 1802658116;
      }

      if (v25 == 1)
      {
        v27 = 0xE500000000000000;
      }

      else
      {
        v27 = 0xE400000000000000;
      }

      *&v89 = 0x6C6C61436574754DLL;
      *(&v89 + 1) = 0xE90000000000005FLL;
      LODWORD(v86) = *(v21 + *(v3 + 136));
      v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v28);

      v29._countAndFlagsBits = 95;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);
      v30._countAndFlagsBits = v26;
      v30._object = v27;
      String.append(_:)(v30);

      v31 = objc_allocWithZone(BSUICAPackageView);
      v32 = v23;
      v33 = String._bridgeToObjectiveC()();

      v34 = [v31 initWithPackageName:v33 inBundle:v32];

      if (!v34)
      {
        if (qword_10011C6A8 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_10000A570(v46, qword_10011E320);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&_mh_execute_header, v47, v48, "Mute Call: Headphone Model is nil, exiting", v49, 2u);
        }

        else
        {
        }

        goto LABEL_39;
      }

      v35 = String._bridgeToObjectiveC()();
      [v34 setState:v35 animated:1];

      v36 = v34;
      [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
      v37 = [v1 contentView];
      [v37 addSubview:v36];

      v38 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController_tintColor];
      v84 = v32;
      if (v38)
      {
        v39 = v38;
        v40 = String._bridgeToObjectiveC()();
        v41 = [v36 publishedObjectWithName:{v40, v84}];

        if (v41)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v86 = 0u;
          v87 = 0u;
        }

        v89 = v86;
        v90 = v87;
        if (*(&v87 + 1))
        {
          sub_1000084D4(0, &qword_10011E378, CALayer_ptr);
          if (swift_dynamicCast())
          {
            v50 = v88;
            [v88 setBackgroundColor:v39];

LABEL_38:
            v63 = [v1 contentView];
            v64 = [v63 mainContentGuide];

            v65 = objc_opt_self();
            sub_100008438(&unk_10011D960, &qword_1000D5CF0);
            v66 = swift_allocObject();
            *(v66 + 16) = xmmword_1000D5C80;
            v67 = [v36 topAnchor];
            v68 = [v64 topAnchor];
            v69 = [v67 constraintGreaterThanOrEqualToAnchor:v68];

            *(v66 + 32) = v69;
            v70 = [v36 bottomAnchor];
            v71 = [v64 bottomAnchor];
            v72 = [v70 constraintLessThanOrEqualToAnchor:v71];

            *(v66 + 40) = v72;
            v73 = [v36 heightAnchor];
            v74 = [v73 constraintEqualToConstant:214.0];

            *(v66 + 48) = v74;
            v75 = [v36 widthAnchor];
            v76 = [v75 constraintEqualToConstant:320.0];

            *(v66 + 56) = v76;
            v77 = [v36 centerYAnchor];
            v78 = [v64 centerYAnchor];
            v79 = [v77 constraintEqualToAnchor:v78];

            *(v66 + 64) = v79;
            v80 = [v36 centerXAnchor];

            v81 = [v64 centerXAnchor];
            v82 = [v80 constraintEqualToAnchor:v81];

            *(v66 + 72) = v82;
            sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v65 activateConstraints:isa];

LABEL_39:
            sub_10000E8F4(v21);
            return;
          }
        }

        else
        {

          sub_10000E950(&v89, &qword_10011DC40, &qword_1000D7C40);
        }
      }

      if (qword_10011C6A8 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_10000A570(v51, qword_10011E320);
      v52 = v36;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v88 = v56;
        *v55 = 136315138;
        v57 = String._bridgeToObjectiveC()();
        v58 = [v52 publishedObjectWithName:v57];

        if (v58)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v86 = 0u;
          v87 = 0u;
        }

        v89 = v86;
        v90 = v87;
        sub_10000E88C(&v89, &v86, &qword_10011DC40, &qword_1000D7C40);
        sub_100008438(&qword_10011DC40, &qword_1000D7C40);
        v59 = String.init<A>(reflecting:)();
        v61 = v60;
        sub_10000E950(&v89, &qword_10011DC40, &qword_1000D7C40);
        v62 = sub_100078978(v59, v61, &v88);

        *(v55 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v53, v54, "Mute Call: mica is nil, %s", v55, 0xCu);
        sub_10000EA94(v56);

        v21 = v85;
      }

      else
      {

        v21 = v85;
      }

      goto LABEL_38;
    }

    sub_10000E950(&v89, &qword_10011FBC0, &unk_1000D5EF0);
  }

  if (qword_10011C6A8 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_10000A570(v42, qword_10011E320);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Mute Call: Headphone Model is nil, exiting", v45, 2u);
  }
}

void sub_1000506F8(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = *(a1 + *(type metadata accessor for HeadphoneViewModel(0) + 88));
  v10 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController_tintColor];
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController_tintColor] = v9;
  v11 = v9;

  v12 = a1[4];
  v13 = a1[5];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v15 = String._bridgeToObjectiveC()();
  v19[4] = sub_100050A74;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_10000C034;
  v19[3] = &unk_1001056A8;
  v16 = _Block_copy(v19);
  v17 = [objc_opt_self() actionWithTitle:v15 style:3 handler:v16];

  _Block_release(v16);

  v18 = [v1 addAction:v17];
}

void sub_1000508C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000B771C();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100050A3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050A7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100050A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + *(type metadata accessor for HeadphoneModel(0) + 136));
  v5 = objc_opt_self();
  v6 = [v5 airPods];
  v7 = [v6 productID];

  if (v4 == v7 || (v8 = [v5 airPodsSecondGeneration], v9 = objc_msgSend(v8, "productID"), v8, v4 == v9))
  {
    v14 = a1;

    v10._countAndFlagsBits = 0x53444F505249415FLL;
    v10._object = 0xE800000000000000;
    String.append(_:)(v10);
  }

  else
  {
    v14 = a1;

    v11._countAndFlagsBits = 0x5F4449505FLL;
    v11._object = 0xE500000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);
  }

  return v14;
}

uint64_t sub_100050BE8(uint64_t a1, void *a2, int a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = objc_opt_self();
  v8 = [v7 bundleWithIdentifier:v6];

  if (!v8)
  {
    return 0;
  }

  v9 = objc_opt_self();
  v10 = [v9 airPods];
  v11 = [v10 productID];

  if (v11 == a3 || (v12 = [v9 airPodsSecondGeneration], v13 = objc_msgSend(v12, "productID"), v12, v13 == a3))
  {
    v14 = [v7 mainBundle];
    v24._object = 0xE000000000000000;
    v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v15.value._object = 0xEB00000000656C62;
    v16._countAndFlagsBits = a1;
    v16._object = a2;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, v14, v17, v24)._countAndFlagsBits;
  }

  else
  {
    _StringGuts.grow(_:)(18);

    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20.value._countAndFlagsBits = 0xD000000000000010;
    v25._object = 0xE000000000000000;
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    v20.value._object = 0x80000001000DEEB0;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v25._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v20, v8, v22, v25)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_100050E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 == 0x5F544355444F5250 && a2 == 0xEC000000454D414ELL;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_20;
  }

  v7 = *(a3 + *(type metadata accessor for HeadphoneModel(0) + 136));
  v8 = objc_opt_self();
  v9 = [v8 airPods];
  v10 = [v9 productID];

  if (v7 == v10 || (v11 = [v8 airPodsSecondGeneration], v12 = objc_msgSend(v11, "productID"), v11, v7 == v12))
  {

    return sub_100033A5C(12);
  }

  else
  {
    if ((a1 != 0x52554F595F544F4ELL || a2 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v14 = *(a3 + *(type metadata accessor for HeadphoneModel(0) + 136));
    v15 = objc_opt_self();
    v16 = [v15 airPods];
    v17 = [v16 productID];

    if (v14 == v17 || (v18 = [v15 airPodsSecondGeneration], v19 = objc_msgSend(v18, "productID"), v18, v14 == v19))
    {
      v20 = [objc_opt_self() mainBundle];
      v31._object = 0xE000000000000000;
      v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v21.value._object = 0xEB00000000656C62;
      v22._object = 0x80000001000E0110;
      v22._countAndFlagsBits = 0xD000000000000010;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      v31._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v31)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    else
    {
LABEL_17:
      v25 = sub_100050A94(a1, a2, a3);
      v27 = v26;
      v28 = type metadata accessor for HeadphoneModel(0);
      v29 = sub_100050BE8(v25, v27, *(a3 + *(v28 + 136)));

      return v29;
    }
  }
}

uint64_t sub_10005115C()
{
  v1 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeText];
  v2 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeText + 8];
  v3 = String._bridgeToObjectiveC()();
  sub_100008438(&qword_10011C8F0, &unk_1000D5640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D5250;
  *(inited + 32) = NSFontAttributeName;
  v5 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeFont];
  *(inited + 64) = sub_1000084D4(0, &qword_10011C8F8, UIFont_ptr);
  *(inited + 40) = v5;
  v6 = NSFontAttributeName;
  v7 = v5;
  sub_1000A3410(inited);
  swift_setDeallocating();
  sub_10000851C(inited + 32);
  type metadata accessor for Key(0);
  sub_10003CDAC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v3 sizeWithAttributes:isa];
  v10 = v9;
  v12 = v11;

  v13 = v12 + 0.0 + *&v0[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_hightDelta];
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v10 + 6.0 + 6.0, v13}];
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v0;
  *(v15 + 40) = v10 + 6.0 + 6.0;
  *(v15 + 48) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100051CE8;
  *(v16 + 24) = v15;
  aBlock[4] = sub_100051D08;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031174;
  aBlock[3] = &unk_100105720;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  v19 = [v14 imageWithActions:v17];

  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    return v19;
  }

  __break(1u);
  return result;
}

void sub_100051424(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v9 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, a1 + 6.0 + 6.0, a2 + 0.0, a4 * 0.5}];
  [*(a6 + OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_backgroundColor) setFill];
  [v9 fill];
  v10 = *(a6 + OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeText);
  v11 = *(a6 + OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeText + 8);
  v12 = String._bridgeToObjectiveC()();
  sub_100008438(&qword_10011C8F0, &unk_1000D5640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D66A0;
  *(inited + 32) = NSFontAttributeName;
  v14 = *(a6 + OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeFont);
  v15 = sub_1000084D4(0, &qword_10011C8F8, UIFont_ptr);
  *(inited + 40) = v14;
  *(inited + 64) = v15;
  *(inited + 72) = NSForegroundColorAttributeName;
  v16 = *(a6 + OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeColor);
  *(inited + 104) = sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  *(inited + 80) = v16;
  v17 = NSFontAttributeName;
  v18 = v14;
  v19 = NSForegroundColorAttributeName;
  v20 = v16;
  sub_1000A3410(inited);
  swift_setDeallocating();
  sub_100008438(&qword_10011C900, &unk_1000D6750);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_10003CDAC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 drawInRect:isa withAttributes:{6.0, 0.0, a1, a2}];
}

id sub_1000516C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PillBadgeTextAttachment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100051788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(NSMutableAttributedString) init];
  v10 = &swift_errorRelease_ptr;
  v11 = [objc_opt_self() attributedStringWithAttachment:a3];
  v12 = static Locale.preferredLanguages.getter();
  if (v12[2])
  {
    v14 = v12[4];
    v13 = v12[5];

    v10 = &swift_errorRelease_ptr;
  }

  Locale.Language.init(identifier:)();
  v15 = Locale.Language.characterDirection.getter();
  (*(v5 + 8))(v8, v4);
  if (v15 == 2)
  {
    [v9 appendAttributedString:v11];
    v16 = objc_allocWithZone(v10[148]);
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 initWithString:v17];

    [v9 appendAttributedString:v18];
    v19 = objc_allocWithZone(v10[148]);
    v20 = String._bridgeToObjectiveC()();
    v21 = [v19 initWithString:v20];

    [v9 appendAttributedString:v21];
  }

  else
  {
    v22 = objc_allocWithZone(v10[148]);
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 initWithString:v23];

    [v9 appendAttributedString:v24];
    v25 = objc_allocWithZone(v10[148]);
    v26 = String._bridgeToObjectiveC()();
    v27 = [v25 initWithString:v26];

    [v9 appendAttributedString:v27];
    [v9 appendAttributedString:v11];
  }

  return v9;
}

id sub_100051A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = [objc_opt_self() systemFontOfSize:11.0 weight:UIFontWeightSemibold];
  v9 = objc_opt_self();
  v10 = [v9 whiteColor];
  v11 = [v9 blackColor];
  v12 = [objc_allocWithZone(UIColor) initWithRed:0.533333333 green:0.533333333 blue:0.549019608 alpha:1.0];
  v13 = [objc_allocWithZone(UIColor) initWithRed:0.552941176 green:0.552941176 blue:0.576470588 alpha:1.0];
  v14 = type metadata accessor for PillBadgeTextAttachment();
  v15 = objc_allocWithZone(v14);
  v16 = v15;
  v17 = &v15[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeText];
  *v17 = a3;
  *(v17 + 1) = a4;
  *&v15[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeFont] = v8;
  if (a5)
  {
    v18 = v11;
  }

  else
  {
    v18 = v10;
  }

  if (a5)
  {
    v19 = v13;
  }

  else
  {
    v19 = v12;
  }

  *&v15[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeColor] = v18;
  v20 = v18;
  *&v16[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_backgroundColor] = v19;
  v21 = &v16[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_padding];
  *v21 = xmmword_1000D80E0;
  *(v21 + 1) = xmmword_1000D80E0;
  *&v16[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_hightDelta] = 0x4008000000000000;
  v30.receiver = v16;
  v30.super_class = v14;

  v22 = v8;
  v23 = v19;
  v24 = objc_msgSendSuper2(&v30, "initWithData:ofType:", 0, 0);
  v25 = sub_10005115C();
  [v24 setImage:v25];

  v26 = sub_100051788(a1, a2, v24);
  return v26;
}

uint64_t sub_100051CB0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100051D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100051D28(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  [v4 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];

  v36 = [objc_opt_self() sharedStyle];
  [v36 setAudioProductID:*(a1 + *(type metadata accessor for HeadphoneViewModel(0) + 84))];
  v6 = [objc_allocWithZone(VTUIProximityEnrollTrainingViewController) init];
  [v6 setDelegate:v2];
  v7 = [v6 view];
  if (v7)
  {
    v8 = v7;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v2 view];
    if (v9)
    {
      v10 = v9;
      [v9 addSubview:v8];

      [v2 addChildViewController:v6];
      [v6 didMoveToParentViewController:v2];
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1000D5240;
      v12 = [v8 topAnchor];
      v13 = [v2 view];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 topAnchor];

        v16 = [v12 constraintEqualToAnchor:v15];
        *(v11 + 32) = v16;
        v17 = [v8 bottomAnchor];
        v18 = [v2 view];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 bottomAnchor];

          v21 = [v17 constraintEqualToAnchor:v20];
          *(v11 + 40) = v21;
          v22 = [v8 leadingAnchor];
          v23 = [v2 view];
          if (v23)
          {
            v24 = v23;
            v25 = [v23 leadingAnchor];

            v26 = [v22 constraintEqualToAnchor:v25 constant:-6.0];
            *(v11 + 48) = v26;
            v27 = [v8 trailingAnchor];
            v28 = [v2 view];
            if (v28)
            {
              v29 = v28;
              v30 = objc_opt_self();
              v31 = [v29 trailingAnchor];

              v32 = [v27 constraintEqualToAnchor:v31 constant:6.0];
              *(v11 + 56) = v32;
              v33 = [v8 heightAnchor];
              v34 = [v33 constraintEqualToConstant:390.0];

              *(v11 + 64) = v34;
              sub_10000F5A0();
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v30 activateConstraints:isa];

              goto LABEL_9;
            }

LABEL_17:
            __break(1u);
            return;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
}

void sub_1000522AC(void *a1, uint64_t a2, void (*a3)(void))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = a1;
    a3();
    swift_unknownObjectRelease();
  }
}

id sub_100052378()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

id sub_10005245C()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController____lazy_storage___topAsset;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController____lazy_storage___topAsset);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController____lazy_storage___topAsset);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = [objc_opt_self() lightGrayColor];
    [v4 setBackgroundColor:v5];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v4 heightAnchor];
    v7 = [v6 constraintEqualToConstant:450.0];

    [v7 setActive:1];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_100052588()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v27 - v4 + 40;
  v29.receiver = v0;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, "viewDidLoad");
  [v0 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    sub_1000145EC(v7 + 16, v27);
    swift_unknownObjectRelease();
    v8 = v28;
    if (v28)
    {
      v9 = sub_10000E7E4(v27, v28);
      v10 = *(v8 - 8);
      v11 = *(v10 + 64);
      __chkstk_darwin(v9);
      v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 40);
      (*(v10 + 16))(v13);
      sub_10000E950(v27, &qword_10011FBC0, &unk_1000D5EF0);
      v14 = *v13;
      v15 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v14 + v15, v5);
      (*(v10 + 8))(v13, v8);
      v16 = type metadata accessor for HeadphoneModel(0);
      (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
      sub_10000E950(v5, &qword_10011EBD0, &unk_1000D5EE0);
      v17 = [v0 contentView];
      v18 = sub_10005245C();
      [v17 addSubview:v18];

      v19 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController____lazy_storage___topAsset];
      v20 = [v0 contentView];
      v21 = [v20 mainContentGuide];

      [v19 pinToOtherWithLayoutGuide:v21];
      goto LABEL_9;
    }

    sub_10000E950(v27, &qword_10011FBC0, &unk_1000D5EF0);
  }

  v22 = type metadata accessor for HeadphoneModel(0);
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  sub_10000E950(v5, &qword_10011EBD0, &unk_1000D5EE0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000A570(v23, qword_100123040);
  v21 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v21, v24, "HeadhponeHeartRateTutorial2ViewController: Headphone Model is nil, exiting", v25, 2u);
  }

LABEL_9:
}

uint64_t sub_100052A94(uint64_t a1)
{
  sub_100033A5C(142);
  v3 = String._bridgeToObjectiveC()();

  v4 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController_subtitleLabel];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100053210;
  *(v6 + 24) = v5;
  v11[4] = sub_100013784;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000B49D0;
  v11[3] = &unk_100105818;
  v7 = _Block_copy(v11);
  v8 = v4;
  v9 = v1;

  [v9 perormTapActionWithRecognizer:a1 targetString:v3 inLabel:v8 action:v7];

  _Block_release(v7);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100052C38(void *a1)
{
  v2 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A570(v11, qword_100123040);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100078978(*&v12[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController_learnMoreLink], *&v12[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController_learnMoreLink + 8], &v26);
    _os_log_impl(&_mh_execute_header, v13, v14, "HeadhponeHeartRateTutorial2ViewController: User tapped learn more, presenting support link %s", v15, 0xCu);
    sub_10000EA94(v16);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000B7214();
    swift_unknownObjectRelease();
  }

  v17 = *&v12[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController_learnMoreLink];
  v18 = *&v12[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController_learnMoreLink + 8];
  URL.init(string:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10000E950(v5, &qword_10011CF08, &unk_1000D7310);
  }

  (*(v7 + 32))(v10, v5, v6);
  v20 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  sub_1000A3860(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_100053240();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v20 openURL:v23 options:isa completionHandler:0];

  return (*(v7 + 8))(v10, v6);
}

id sub_100053100(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController_learnMoreLink];
  *v4 = 0xD000000000000025;
  v4[1] = 0x80000001000DC6F0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController____lazy_storage___topAsset] = 0;
  v5 = OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController_subtitleLabel;
  *&v1[v5] = [objc_allocWithZone(PRXLabel) initWithStyle:1];
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController_type] = 31;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initWithContentView:", a1);
}

uint64_t sub_1000531D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100053240()
{
  result = qword_10011C9A0;
  if (!qword_10011C9A0)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011C9A0);
  }

  return result;
}

void sub_100053298(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v126 - v6;
  v8 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v126 - v10;
  v12 = type metadata accessor for HeadphoneViewModel(0);
  v13 = (a1 + *(v12 + 56));
  v14 = v13[11];
  v15 = v13[13];
  v153 = v13[12];
  v154 = v15;
  v16 = v13[7];
  v17 = v13[9];
  v149 = v13[8];
  v150 = v17;
  v18 = v13[9];
  v19 = v13[11];
  v151 = v13[10];
  v152 = v19;
  v20 = v13[3];
  v21 = v13[5];
  v145 = v13[4];
  v146 = v21;
  v22 = v13[5];
  v23 = v13[7];
  v147 = v13[6];
  v148 = v23;
  v24 = v13[1];
  v142[0] = *v13;
  v142[1] = v24;
  v25 = v13[3];
  v27 = *v13;
  v26 = v13[1];
  v143 = v13[2];
  v144 = v25;
  v167 = v14;
  v168 = v153;
  v28 = v13[14];
  v169 = v13[13];
  v170 = v28;
  v163 = v16;
  v164 = v149;
  v165 = v18;
  v166 = v151;
  v159 = v20;
  v160 = v145;
  v161 = v22;
  v162 = v147;
  v155 = v28;
  v156 = v27;
  v157 = v26;
  v158 = v143;
  if (sub_100026134(&v156) == 1)
  {
    if (qword_10011C6B0 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_25;
  }

  v132 = v7;
  v141[12] = v168;
  v141[13] = v169;
  v141[14] = v170;
  v141[8] = v164;
  v141[9] = v165;
  v141[10] = v166;
  v141[11] = v167;
  v141[4] = v160;
  v141[5] = v161;
  v141[6] = v162;
  v141[7] = v163;
  v141[0] = v156;
  v141[1] = v157;
  v141[2] = v158;
  v141[3] = v159;
  v33 = *(a1 + 32);
  v34 = *(a1 + 40);
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v36 = String._bridgeToObjectiveC()();
  *&v140[32] = sub_100061020;
  *&v140[40] = v35;
  *v140 = _NSConcreteStackBlock;
  *&v140[8] = 1107296256;
  *&v140[16] = sub_10000C034;
  *&v140[24] = &unk_100105A58;
  v37 = _Block_copy(v140);
  v131 = objc_opt_self();
  v38 = [v131 actionWithTitle:v36 style:0 handler:v37];
  v134 = v12;
  v39 = v38;

  _Block_release(v37);

  v40 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_connectAction];
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_connectAction] = v39;
  v41 = v39;

  v42 = *(v134 + 44);
  v133 = a1;
  sub_10000E88C(a1 + v42, v11, &qword_10011CCF0, qword_1000D61B0);
  v43 = type metadata accessor for HeadphoneAssets(0);
  v44 = (*(*(v43 - 8) + 48))(v11, 1, v43);
  v45 = &unk_100116000;
  v128 = v41;
  if (v44 == 1)
  {
    sub_10000E950(v11, &qword_10011CCF0, qword_1000D61B0);
    goto LABEL_13;
  }

  v46 = &v11[*(v43 + 40)];
  v47 = *v46;
  v48 = *(v46 + 1);
  v49 = *v46;
  sub_100062878(v11, type metadata accessor for HeadphoneAssets);
  if (!v47)
  {
LABEL_13:
    v67 = [objc_allocWithZone(PRXLabel) initWithStyle:4];
    [v67 v45[75]];
    v68 = v45;
    v69 = v67;
    [v69 setTextAlignment:1];
    v70 = [v2 contentView];
    [v70 addSubview:v69];

    v71 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleLabel];
    v127 = v69;
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleLabel] = v69;

    v72 = [objc_allocWithZone(PRXLabel) initWithStyle:5];
    [v72 v68[75]];
    v73 = v72;
    [v73 setTextAlignment:1];
    v74 = [v2 contentView];
    [v74 addSubview:v73];

    v75 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleBody];
    v126 = v73;
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleBody] = v73;

    v76 = *(v133 + 48);
    v77 = *(v133 + 56);
    v78 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v79 = String._bridgeToObjectiveC()();
    v139[4] = sub_100061068;
    v139[5] = v78;
    v139[0] = _NSConcreteStackBlock;
    v139[1] = 1107296256;
    v130 = &v139[2];
    v139[2] = sub_10000C034;
    v139[3] = &unk_100105A80;
    v80 = _Block_copy(v139);
    v81 = v131;
    v82 = [v131 actionWithTitle:v79 style:3 handler:v80];

    _Block_release(v80);

    v83 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipAction];
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipAction] = v82;

    sub_100033A5C(0);
    v84 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v85 = String._bridgeToObjectiveC()();

    v139[4] = sub_100061098;
    v139[5] = v84;
    v139[0] = _NSConcreteStackBlock;
    v139[1] = 1107296256;
    v139[2] = sub_10000C034;
    v139[3] = &unk_100105AA8;
    v86 = _Block_copy(v139);
    v87 = [v81 actionWithTitle:v85 style:0 handler:v86];

    _Block_release(v86);

    v88 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction];
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction] = v87;

    v89 = objc_opt_self();
    v90 = [v89 mainBundle];
    v171._object = 0xE000000000000000;
    v91._countAndFlagsBits = 0xD000000000000015;
    v91._object = 0x80000001000E0560;
    v92.value._object = 0x80000001000DBB60;
    v129 = "TUTORIAL_POSITION_TITLE";
    v92.value._countAndFlagsBits = 0xD000000000000010;
    v93._countAndFlagsBits = 0;
    v93._object = 0xE000000000000000;
    v171._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v91, v92, v90, v93, v171);

    v94 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v95 = String._bridgeToObjectiveC()();

    v139[4] = sub_1000610C4;
    v139[5] = v94;
    v139[0] = _NSConcreteStackBlock;
    v139[1] = 1107296256;
    v139[2] = sub_10000C034;
    v139[3] = &unk_100105AD0;
    v96 = _Block_copy(v139);
    v97 = [v81 actionWithTitle:v95 style:0 handler:v96];

    _Block_release(v96);

    v98 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_learnAboutEarTipsAction];
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_learnAboutEarTipsAction] = v97;

    v99 = [v89 mainBundle];
    v172._object = 0xE000000000000000;
    v100._countAndFlagsBits = 0xD000000000000017;
    v100._object = 0x80000001000E0580;
    v101.value._object = 0x80000001000DBB60;
    v101.value._countAndFlagsBits = 0xD000000000000010;
    v102._countAndFlagsBits = 0;
    v102._object = 0xE000000000000000;
    v172._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v100, v101, v99, v102, v172);

    v103 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v104 = String._bridgeToObjectiveC()();

    v139[4] = sub_1000610F0;
    v139[5] = v103;
    v139[0] = _NSConcreteStackBlock;
    v139[1] = 1107296256;
    v139[2] = sub_10000C034;
    v139[3] = &unk_100105AF8;
    v105 = _Block_copy(v139);
    v106 = [v81 actionWithTitle:v104 style:0 handler:v105];

    _Block_release(v105);

    v107 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_foundMyTipSizeAction];
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_foundMyTipSizeAction] = v106;

    v108 = [v89 mainBundle];
    v173._object = 0xE000000000000000;
    v109._countAndFlagsBits = 0xD000000000000017;
    v109._object = 0x80000001000E05A0;
    v110.value._object = (v129 | 0x8000000000000000);
    v110.value._countAndFlagsBits = 0xD000000000000010;
    v111._countAndFlagsBits = 0;
    v111._object = 0xE000000000000000;
    v173._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v109, v110, v108, v111, v173);

    v112 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v113 = String._bridgeToObjectiveC()();

    v139[4] = sub_10006111C;
    v139[5] = v112;
    v139[0] = _NSConcreteStackBlock;
    v139[1] = 1107296256;
    v139[2] = sub_10000C034;
    v139[3] = &unk_100105B20;
    v114 = _Block_copy(v139);
    v115 = [v81 actionWithTitle:v113 style:1 handler:v114];

    _Block_release(v114);

    v116 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipVideoSegmentAction];
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipVideoSegmentAction] = v115;

    v117 = v132;
    sub_100062810(v133, v132, type metadata accessor for HeadphoneViewModel);
    (*(*(v134 - 8) + 56))(v117, 0, 1);
    v118 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
    swift_beginAccess();
    sub_10004D3E8(v117, &v2[v118]);
    swift_endAccess();
    v119 = sub_1000543A8();
    v120 = v119;
    if (v119 >> 62)
    {
      v121 = _CocoaArrayWrapper.endIndex.getter();
      if (v121)
      {
LABEL_15:
        v122 = 0;
        while (1)
        {
          if ((v120 & 0xC000000000000001) != 0)
          {
            v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v122 >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v123 = *(v120 + 8 * v122 + 32);
          }

          v124 = v123;
          v125 = v122 + 1;
          if (__OFADD__(v122, 1))
          {
            break;
          }

          [v123 setAlpha:0.0];

          ++v122;
          if (v125 == v121)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        swift_once();
LABEL_3:
        v29 = type metadata accessor for Logger();
        sub_10000A570(v29, qword_10011E560);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "HeadphoneConnectViewController: setUpMovieLayout without layoutMetrics, returning", v32, 2u);
        }

        goto LABEL_28;
      }
    }

    else
    {
      v121 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v121)
      {
        goto LABEL_15;
      }
    }

LABEL_27:

    v30 = v126;
LABEL_28:

    return;
  }

  v50 = &v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView];
  swift_beginAccess();
  v51 = *v50;
  *v50 = v47;
  *(v50 + 1) = v48;
  v52 = v49;

  if (*(v133 + *(v134 + 92)) == 1)
  {
    v53 = [v52 layer];
    CATransform3DMakeScale(v140, 0.85, 0.85, 1.0);
    [v53 setTransform:v140];
  }

  v54 = v52;
  sub_10000E88C(v142, v140, &unk_10011FF80, &qword_1000D8590);
  sub_1000AC67C(v54, v141, 0, v140);
  memcpy(v139, v140, 0x130uLL);
  v55 = [v2 view];
  if (v55)
  {
    v56 = v55;
    v57 = *&v140[8];
    v58 = *v140;
    [*v140 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v56 addLayoutGuide:v57];
    [v56 addSubview:v58];
    [v56 sendSubviewToBack:v58];

    v59 = [v2 contentView];
    v60 = [objc_opt_self() clearColor];
    [v59 setBackgroundColor:v60];

    v61 = [v2 contentView];
    v62 = [v61 mainContentGuide];

    v63 = [v2 view];
    if (v63)
    {
      v64 = v63;
      v65 = objc_opt_self();
      sub_1000AB754(v62, v64);

      sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v65 activateConstraints:isa];

      memcpy(v135, v139, sizeof(v135));
      memcpy(v136, v139, sizeof(v136));
      nullsub_1(v136);
      memcpy(v137, &v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], sizeof(v137));
      memcpy(&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], v136, 0x130uLL);
      sub_10006207C(v135, v138);
      sub_10000E950(v137, &qword_10011E760, &qword_1000D8598);
      memcpy(v138, v139, sizeof(v138));
      sub_10000A3B4(v138);
      v45 = &unk_100116000;
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_1000543A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleBody);
  v10 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleLabel);
  v11 = v1;
  v2 = v1;
  v3 = v10;
  for (i = 0; i != 2; ++i)
  {
    v5 = v9[i + 4];
    if (v5)
    {
      v6 = v5;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v7 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  sub_100008438(&qword_10011D148, &qword_1000D6430);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000544B4(uint64_t *a1)
{
  v3 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v27 - v5;
  v7 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for HeadphoneAssets(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HeadphoneViewModel(0);
  sub_10000E88C(a1 + *(v16 + 44), v10, &qword_10011CCF0, qword_1000D61B0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000E950(v10, &qword_10011CCF0, qword_1000D61B0);
  }

  sub_100064E50(v10, v15, type metadata accessor for HeadphoneAssets);
  v18 = *a1;
  v19 = a1[1];
  v20 = String._bridgeToObjectiveC()();
  [v1 setTitle:v20];

  v21 = *&v15[*(v11 + 32)];
  if (!(v21 >> 62))
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_13:
    (*((swift_isaMask & *v1) + 0x2D8))(a1);
    if (!a1[9])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_5:
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_shouldFadeInElements) = 0;
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v22 = *(v21 + 32);
  }

  v23 = v22;
  sub_100054CE4(v22);

  if (a1[9])
  {
LABEL_9:
    v24 = a1[8];
    v25 = String._bridgeToObjectiveC()();
    [v1 showActivityIndicatorWithStatus:v25];
  }

LABEL_10:
  sub_100062810(a1, v6, type metadata accessor for HeadphoneViewModel);
  (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
  v26 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  swift_beginAccess();
  sub_10004D3E8(v6, v1 + v26);
  swift_endAccess();
  sub_10005719C(v1, *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_cardState));
  return sub_100062878(v15, type metadata accessor for HeadphoneAssets);
}