void sub_100119158(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState))
  {
    v1 = objc_allocWithZone(type metadata accessor for HistoryTableViewController());

    v3 = sub_100147538(v2);
    v6 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v3];

    v4 = [objc_opt_self() currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 1)
    {
      [v6 setModalPresentationStyle:2];
    }

    [v6 scheduleModalPresentationWithPriority:0 animated:1 presentationCompletion:0];
  }
}

id sub_10011927C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_deviceInformationView;
  type metadata accessor for DeviceInformationView();
  *&v3[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView;
  type metadata accessor for TestRunnerView();
  *&v3[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView] = 0;
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for CardViewSessionCell();
  v9 = objc_msgSendSuper2(&v11, "initWithStyle:reuseIdentifier:", a1, v8);

  return v9;
}

id sub_1001193B0(void *a1)
{
  v3 = OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_deviceInformationView;
  type metadata accessor for DeviceInformationView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView;
  type metadata accessor for TestRunnerView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CardViewSessionCell();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_100119498()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_promptView);
}

id sub_1001194E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardViewSessionCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100119600()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100119648(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100119668()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001196C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10003C49C(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10011972C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FD060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001197AC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100119800()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100119848()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001198B8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100119904()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100119A08(void *a1, char a2)
{
  if (a2)
  {
    v4 = [a1 imageView];
    if (v4)
    {
      v5 = v4;
      v6 = *&v2[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState];
      if (v6 && *(v6 + 32) == 4)
      {
        v7 = swift_allocObject();
        *(v7 + 16) = v2;
        v8 = v2;
        v19 = v5;

        v9 = [a1 imageView];
        v21 = v5;
        v22 = v6;
        v23 = 0;
        v24 = 0;
        v25 = sub_100119F74;
        v26 = v7;
        v27 = 1;
        sub_100088E48(0, v9);
      }

      else
      {
        v16 = swift_allocObject();
        *(v16 + 16) = v2;
        v17 = swift_allocObject();
        *(v17 + 16) = v2;
        v18 = v2;
        v19 = v5;

        v9 = [a1 imageView];
        v21 = v5;
        v22 = v6;
        v23 = sub_100119E64;
        v24 = v16;
        v25 = sub_100119E6C;
        v26 = v17;
        v27 = 1;
        sub_100088E48(0, v9);
      }
    }
  }

  else
  {
    if (qword_1001FC6A0 != -1)
    {
      swift_once();
    }

    if (*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_termsAndConditionsAccepted) == 1)
    {
      v10 = *&v2[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState];
      if (v10)
      {
        v11 = [*(v10 + 40) serialNumber];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_controller;
        swift_beginAccess();
        sub_10011972C(&v2[v15], &v21);
        if (v24)
        {
          sub_10004476C(&v21, v20);
          sub_1000A4AFC(&v21);
          sub_1000442A0(v20, v20[3]);
          sub_100102FA4(v12, v14, 0);

          sub_100044554(v20);
        }

        else
        {

          sub_1000A4AFC(&v21);
        }
      }
    }

    else
    {
      sub_10004287C(4, 3);
      if (qword_1001FC6C8 != -1)
      {
        swift_once();
      }

      sub_100066800(2, 1);
    }
  }
}

uint64_t sub_100119DA0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState))
  {
    v2 = result;
    type metadata accessor for CardState();
    swift_allocObject();

    v4 = sub_1000737F8(v3);
    v5 = v4;
    v6 = *(v4 + 24);
    *(v4 + 24) = v2;
    if (v6 != v2)
    {
      v7 = *(v4 + 80);
      if ((v7 & 0x10) == 0)
      {
        *(v4 + 80) = v7 | 0x10;
      }

      sub_1000724B4();
    }

    sub_10007287C(v5);
  }

  return result;
}

uint64_t sub_100119F98(void *a1)
{
  v1 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    v5 = [v3 visibleViewController];
    v6 = sub_100119F98(v5);

    return v6;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = v1;
    v11 = [v9 selectedViewController];
    if (v11)
    {
      v12 = v11;
      v13 = v11;
      v1 = sub_100119F98(v12);

      return v1;
    }
  }

  v14 = [v1 presentedViewController];
  if (v14)
  {
    v15 = v14;
LABEL_16:
    v19 = v15;
    v1 = sub_100119F98(v15);

    return v1;
  }

  v16 = [v1 childViewControllers];
  sub_100045CC4();
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v17 >> 62))
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_18:

LABEL_19:
    v20 = v1;
    return v1;
  }

LABEL_12:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_15;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 32);
LABEL_15:
    v15 = v18;

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_10011A2A8()
{
  v1 = [objc_opt_self() boldButton];
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x4545524741, 0xE500000000000000);
  v2 = String._bridgeToObjectiveC()();

  [v1 setTitle:v2 forState:0];

  [v1 addTarget:v0 action:"didTapAgreeButton" forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton:v1];

  v4 = [objc_opt_self() linkButton];
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x4545524741534944, 0xE800000000000000);
  v5 = String._bridgeToObjectiveC()();

  [v4 setTitle:v5 forState:0];

  [v4 addTarget:v0 action:"didTapDisagreeButton" forControlEvents:64];
  v6 = [v0 buttonTray];
  v15 = v4;
  [v6 addButton:v15];

  v7 = *&v0[OBJC_IVAR____TtC11Diagnostics32TermsAndConditionsViewController_disagreeButton];
  *&v0[OBJC_IVAR____TtC11Diagnostics32TermsAndConditionsViewController_disagreeButton] = v15;

  if (qword_1001FC6A0 != -1)
  {
    swift_once();
  }

  if ([*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 <= 5 && (v8 = objc_opt_self(), v9 = String._bridgeToObjectiveC()(), v10 = objc_msgSend(v8, "linkWithBundleIdentifier:", v9), v9, v10))
  {
    v11 = [objc_msgSend(objc_opt_self() "currentPlatform")];
    swift_unknownObjectRelease();
    [v10 setAllowsOpeningSafari:v11 ^ 1];
    v12 = [v0 buttonTray];
    v13 = v10;
    [v12 setPrivacyLinkController:v13];

    v14 = v1;
  }

  else
  {
    v14 = v15;
    v15 = v1;
  }
}

void sub_10011A604()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC11Diagnostics19SetupViewController_termsAndConditionsAccepted) = 1;
    sub_100033C7C();
    swift_unknownObjectRelease();
  }

  sub_10003C49C(&qword_1002018D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC00;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (qword_1001FC6A0 != -1)
  {
    swift_once();
  }

  [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination];
  v2 = objc_opt_self();
  isa = UInt._bridgeToObjectiveC()().super.super.isa;
  *(inited + 96) = sub_1000BA310();
  *(inited + 72) = isa;
  sub_1000D57AC(inited);
  swift_setDeallocating();
  sub_100073B40(inited + 32);
  v4 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 sendAnalyticsWithEvent:11 payloadDict:v4];

  sub_1000EC128(0);
}

void sub_10011A808()
{
  v1 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC11Diagnostics32TermsAndConditionsViewController_disagreeButton];
    v3 = v2;
    sub_100088E48(0, v2);
  }

  else
  {
    if (qword_1001FC6A0 != -1)
    {
      swift_once();
    }

    if ([*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 >= 6)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        *(Strong + OBJC_IVAR____TtC11Diagnostics19SetupViewController_termsAndConditionsAccepted) = 0;
        sub_100033C7C();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_1000EC128(1);
      *(swift_allocObject() + 16) = v0;
      v4 = *&v0[OBJC_IVAR____TtC11Diagnostics32TermsAndConditionsViewController_disagreeButton];
      v5 = v0;
      v6 = v4;
      sub_100088E48(0, v4);
    }
  }

  sub_10003C49C(&qword_1002018D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC00;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v9;
  AnyHashable.init<A>(_:)();
  if (qword_1001FC6A0 != -1)
  {
    swift_once();
  }

  [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination];
  v10 = objc_opt_self();
  isa = UInt._bridgeToObjectiveC()().super.super.isa;
  *(inited + 96) = sub_1000BA310();
  *(inited + 72) = isa;
  sub_1000D57AC(inited);
  swift_setDeallocating();
  sub_100073B40(inited + 32);
  v12 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v10 sendAnalyticsWithEvent:12 payloadDict:v12];
}

uint64_t sub_10011AB24()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC11Diagnostics19SetupViewController_termsAndConditionsAccepted) = 0;
    sub_100033C7C();

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10011AC34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TermsAndConditionsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10011ACD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10011AD18(uint64_t a1, unint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FDF40);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v6, 1, 1, v9);
  v34 = a1;
  v35 = a2;
  v11 = String._bridgeToObjectiveC()();
  v13 = 0;
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(v10 + 8))(v6, v9);
  }

  v15 = [objc_allocWithZone(IFSymbol) initWithSymbolName:v11 bundleURL:v13];

  v16 = [objc_allocWithZone(IFGraphicSymbolDescriptor) init];
  sub_10003C49C(&unk_1001FF8D8);
  v17 = swift_allocObject();
  v36 = xmmword_10017EC00;
  *(v17 + 16) = xmmword_10017EC00;
  v18 = [objc_allocWithZone(IFColor) initWithSystemColor:11];
  v19 = sub_10003E110(0, &qword_100201C70);
  *(v17 + 56) = v19;
  *(v17 + 32) = v18;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 setSymbolColors:isa];

  v21 = swift_allocObject();
  *(v21 + 16) = v36;
  v22 = [objc_allocWithZone(IFColor) initWithSystemColor:7];
  *(v21 + 56) = v19;
  *(v21 + 32) = v22;
  v23 = Array._bridgeToObjectiveC()().super.isa;

  [v16 setEnclosureColors:v23];

  [v16 setRenderingMode:3];
  v24 = 85.0;
  if (v8 == 1)
  {
    v24 = 60.0;
  }

  [v16 setSize:{v24, v24}];
  v25 = [v15 imageForGraphicSymbolDescriptor:v16];
  if (!v25)
  {
    v30 = static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0);
    v31 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v31, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_100056B7C(v34, v35, &v37);
      _os_log_impl(&_mh_execute_header, v31, v30, "Unable to create image for symbol %s", v32, 0xCu);
      sub_100044554(v33);
    }

    v29 = [objc_allocWithZone(UIImage) init];
    goto LABEL_11;
  }

  v26 = v25;
  result = [v25 CGImage];
  if (result)
  {
    v28 = result;
    v29 = [objc_allocWithZone(UIImage) initWithCGImage:result];

    v15 = v26;
    v16 = v28;
LABEL_11:

    return v29;
  }

  __break(1u);
  return result;
}

id sub_10011B358()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10011B498(uint64_t a1, uint64_t a2)
{
  v4 = sub_10011C920();
  v5 = sub_10011C974();

  return Error<>._code.getter(a1, a2, v4, v5);
}

void sub_10011B4F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_delegate] = 0;
  v6 = OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_diagnosticManager;
  *&v3[v6] = [objc_allocWithZone(DKDiagnosticManager) init];
  v7 = OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_connection;
  type metadata accessor for TimberLorryDevelopmentConnection();
  swift_allocObject();
  *&v3[v7] = sub_10005EEA4();
  v8 = &v3[OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_ticket];
  *v8 = a1;
  *(v8 + 1) = a2;
  sub_10003C49C(&unk_100201EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC10;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v10;

  v11 = MobileGestalt_get_current_device();
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = v11;
  v13 = MobileGestalt_copy_deviceClass_obj();

  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(inited + 48) = v14;
  *(inited + 56) = v16;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v17;
  v18 = MobileGestalt_get_current_device();
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = v18;
  v20 = MobileGestalt_copy_marketingNameString_obj();

  if (v20)
  {

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    *(inited + 80) = v21;
    *(inited + 88) = v23;
    v24 = sub_1000D5698(inited);
    swift_setDeallocating();
    sub_10003C49C(&qword_100201D00);
    swift_arrayDestroy();
    sub_100121EC8(v24);

    v25 = objc_allocWithZone(DADeviceState);
    v26 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v28 = [v25 initWithSerialNumber:v26 attributes:isa];

    *&v3[OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state] = v28;
    v29.receiver = v3;
    v29.super_class = type metadata accessor for DeviceTimberLorryDevelopment();
    objc_msgSendSuper2(&v29, "init");
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_10011B7C4()
{
  v1 = (*(v0 + 272) + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_ticket);
  v2 = *v1;
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 280) = v4;
  *v4 = v0;
  v4[1] = sub_10011B880;

  return sub_10005DAF4(v2, v3);
}

uint64_t sub_10011B880(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = sub_10011C06C;
  }

  else
  {
    *(v4 + 296) = a1;
    v5 = sub_10011B9A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10011B9A8()
{
  v1 = v0[37];
  v2 = v0[34];
  sub_10003C49C(&qword_1002018D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC00;
  v0[31] = 0x6574656D61726170;
  v0[32] = 0xEA00000000007372;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = sub_10003C49C(&unk_1001FDF60);
  *(inited + 72) = v1;
  sub_1000D57AC(inited);
  swift_setDeallocating();
  sub_10003DD84(inited + 32, &qword_1001FE6C0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = [objc_opt_self() diagnosticParametersWithDictionary:isa];
  v0[38] = v5;

  v6 = *(v2 + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_diagnosticManager);
  v0[39] = sub_1000BA310();
  v7 = NSNumber.init(integerLiteral:)(8134).super.super.isa;
  v0[40] = v7;
  v0[2] = v0;
  v0[7] = v0 + 33;
  v0[3] = sub_10011BC14;
  v8 = swift_continuation_init();
  v0[30] = sub_10003C49C(&qword_100201CF0);
  v0[23] = _NSConcreteStackBlock;
  v0[24] = 1107296256;
  v0[25] = sub_10011C3B8;
  v0[26] = &unk_1001C7970;
  v0[27] = v8;
  [v6 beginDiagnosticWithIdentifier:v7 parameters:v5 completion:v0 + 23];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10011BC14()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_10011C208;
  }

  else
  {
    v2 = sub_10011BD24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10011BD24()
{
  v1 = *(v0 + 264);

  v2 = [v1 statusCode];
  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    v5 = *(v0 + 304);
    [*(*(v0 + 272) + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state) setPhase:1];
  }

  else
  {
    v6 = static os_log_type_t.error.getter();
    if (qword_1001FC7A0 != -1)
    {
      swift_once();
    }

    v7 = qword_10020A4E8;
    v8 = os_log_type_enabled(qword_10020A4E8, v6);
    v9 = *(v0 + 304);
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = [v1 statusCode];
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v7, v6, "8134 failed with status code %@", v10, 0xCu);
      sub_10003DD84(v11, &qword_1001FF0C0);
    }

    sub_10011C864();
    swift_allocError();
    swift_willThrow();

    v13 = static os_log_type_t.error.getter();
    if (qword_1001FC7A0 != -1)
    {
      swift_once();
    }

    v14 = qword_10020A4E8;
    if (os_log_type_enabled(qword_10020A4E8, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v14, v13, "Failed to claim case: %@", v15, 0xCu);
      sub_10003DD84(v16, &qword_1001FF0C0);
    }

    v18 = *(v0 + 272);
    v19 = OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state;
    [*(v18 + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state) addErrorCode:0 userInfo:0];
    [*(v18 + v19) setPhase:1];
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10011C06C()
{
  v1 = static os_log_type_t.error.getter();
  if (qword_1001FC7A0 != -1)
  {
    swift_once();
  }

  v2 = qword_10020A4E8;
  if (os_log_type_enabled(qword_10020A4E8, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v2, v1, "Failed to claim case: %@", v3, 0xCu);
    sub_10003DD84(v4, &qword_1001FF0C0);
  }

  v6 = *(v0 + 272);
  v7 = OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state;
  [*(v6 + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state) addErrorCode:0 userInfo:0];
  [*(v6 + v7) setPhase:1];

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10011C208()
{
  v1 = v0[40];
  v2 = v0[38];
  swift_willThrow();

  v3 = static os_log_type_t.error.getter();
  if (qword_1001FC7A0 != -1)
  {
    swift_once();
  }

  v4 = qword_10020A4E8;
  if (os_log_type_enabled(qword_10020A4E8, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v4, v3, "Failed to claim case: %@", v5, 0xCu);
    sub_10003DD84(v6, &qword_1001FF0C0);
  }

  v8 = v0[34];
  v9 = OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state;
  [*(v8 + OBJC_IVAR____TtC11Diagnostics28DeviceTimberLorryDevelopment_state) addErrorCode:0 userInfo:0];
  [*(v8 + v9) setPhase:1];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10011C3B8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000442A0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10003C49C(&qword_100201C30);
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

id sub_10011C680()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceTimberLorryDevelopment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10011C758()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10011C798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003DEC8;

  return sub_10011B7A4(a1, v4, v5, v6);
}

unint64_t sub_10011C864()
{
  result = qword_100201CF8;
  if (!qword_100201CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201CF8);
  }

  return result;
}

unint64_t sub_10011C8CC()
{
  result = qword_100201D08;
  if (!qword_100201D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201D08);
  }

  return result;
}

unint64_t sub_10011C920()
{
  result = qword_100201D10;
  if (!qword_100201D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201D10);
  }

  return result;
}

unint64_t sub_10011C974()
{
  result = qword_100201D18;
  if (!qword_100201D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201D18);
  }

  return result;
}

id sub_10011CAA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTableViewHeaderFooterView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10011CB38(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

void sub_10011CD28()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_10003E110(0, &qword_1001FD3F0);
  sub_10004A2B8();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v33;
    v3 = v34;
    v5 = v35;
    v6 = v36;
    v7 = v37;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      while ([v16 activationState])
      {

        v6 = v14;
        v7 = v15;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v16 = v32;
          v14 = v6;
          v15 = v7;
          if (v32)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_10004A320();

      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (!v17)
      {
      }
    }

    else
    {
LABEL_19:
      sub_10004A320();

      v17 = 0;
    }

    v18 = [v17 keyWindow];
    if (v18)
    {
      v19 = v18;
      v20 = objc_opt_self();
      v21 = v19;
      v22 = [v20 currentDevice];
      [v22 orientation];

      v23 = v21;
      [v23 bounds];
      CGRectGetHeight(v38);
      [v23 bounds];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      v39.origin.x = v25;
      v39.origin.y = v27;
      v39.size.width = v29;
      v39.size.height = v31;
      CGRectGetWidth(v39);
    }

    else
    {
    }
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_19;
      }

      v13 = *(v3 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

double sub_10011D0DC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1 && (sub_10003C49C(&qword_100201430), State.wrappedValue.getter(), (v3 & 1) != 0))
  {
    return 48.0;
  }

  else
  {
    return 24.0;
  }
}

double sub_10011D188()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1 && (sub_10003C49C(&qword_100201430), State.wrappedValue.getter(), (v4 & 1) != 0))
  {
    return 64.0;
  }

  else
  {
    return 32.0;
  }
}

uint64_t sub_10011D234()
{
  sub_10003C49C(&unk_1001FF8D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10017EC00;
  _StringGuts.grow(_:)(21);

  sub_10003C49C(&qword_100201430);
  State.wrappedValue.getter();
  if (v5)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (v5)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v3 = v2;
  String.append(_:)(*&v1);

  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x8000000100192F60;
  print(_:separator:terminator:)();
}

uint64_t sub_10011D368()
{
  sub_10003C49C(&qword_100201430);
  State.wrappedValue.setter();
  return sub_10011D234();
}

void sub_10011D3D8()
{
  if (*(v0 + 104))
  {
    sub_10003C49C(&qword_100201430);
    State.wrappedValue.getter();
  }

  else
  {
    v1 = *(v0 + 96);
    v2 = v1 > 0x18;
    v3 = (1 << v1) & 0x1010100;
    if (!v2 && v3 != 0)
    {
      v5 = [objc_opt_self() sharedApplication];
      v6 = [v5 connectedScenes];

      sub_10003E110(0, &qword_1001FD3F0);
      sub_10004A2B8();
      v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v7 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v8 = v28;
        v9 = v27;
        v10 = v29;
        v11 = v30;
        v12 = v31;
      }

      else
      {
        v13 = -1 << *(v7 + 32);
        v8 = v7 + 56;
        v10 = ~v13;
        v14 = -v13;
        if (v14 < 64)
        {
          v15 = ~(-1 << v14);
        }

        else
        {
          v15 = -1;
        }

        v12 = v15 & *(v7 + 56);

        v11 = 0;
        v9 = v7;
      }

      v25 = v10;
      v16 = (v10 + 64) >> 6;
      if (v9 < 0)
      {
        goto LABEL_20;
      }

LABEL_14:
      v17 = v11;
      v18 = v12;
      v19 = v11;
      if (v12)
      {
LABEL_18:
        v20 = (v18 - 1) & v18;
        v21 = *(*(v9 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
        if (v21)
        {
          while ([v21 activationState])
          {

            v11 = v19;
            v12 = v20;
            if ((v9 & 0x8000000000000000) == 0)
            {
              goto LABEL_14;
            }

LABEL_20:
            if (__CocoaSet.Iterator.next()())
            {
              swift_dynamicCast();
              v21 = v26;
              v19 = v11;
              v20 = v12;
              if (v26)
              {
                continue;
              }
            }

            goto LABEL_25;
          }

          sub_10004A320();

          objc_opt_self();
          v22 = swift_dynamicCastObjCClass();
          if (!v22)
          {
          }
        }

        else
        {
LABEL_25:
          sub_10004A320();

          v22 = 0;
        }

        v23 = [v22 keyWindow];
        if (v23)
        {
          v24 = v23;
          [v24 safeAreaInsets];
        }
      }

      else
      {
        while (1)
        {
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v19 >= v16)
          {
            goto LABEL_25;
          }

          v18 = *(v8 + 8 * v19);
          ++v17;
          if (v18)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }
    }
  }
}

id sub_10011D73C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_allocWithZone(UIImageView) initWithImage:a1];
  [v3 setContentMode:2];
  LODWORD(v4) = 1132068864;
  [v3 setContentHuggingPriority:1 forAxis:v4];
  LODWORD(v5) = 1132068864;
  [v3 setContentHuggingPriority:0 forAxis:v5];
  LODWORD(v6) = 1132068864;
  [v3 setContentCompressionResistancePriority:1 forAxis:v6];
  LODWORD(v7) = 1132068864;
  result = [v3 setContentCompressionResistancePriority:0 forAxis:v7];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v3;
  return result;
}

uint64_t sub_10011D808@<X0>(uint64_t a1@<X0>, void **a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[2];
  v4[5] = v2[3];
  v4[6] = v6;
  v4[7] = v7;
  *(v4 + 121) = *(v2 + 89);
  v9 = *v2;
  v10 = v2[1];
  v4[1] = v5;
  v4[2] = v9;
  v4[3] = v10;
  v4[4] = v8;
  (*(*(a1 - 8) + 16))(&v43, v2, a1);
  v34 = type metadata accessor for NSNotificationCenter.Publisher();
  v11 = sub_10003C4E4(&qword_100201DC8);
  v12 = sub_10003C4E4(&qword_1001FF2A0);
  sub_10003C4E4(&qword_100201DD0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  v13 = type metadata accessor for ModifiedContent();
  v41 = sub_100120E30();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v43 = v13;
  v44 = &type metadata for Int;
  v45 = v14;
  v46 = &protocol witness table for Int;
  swift_getOpaqueTypeMetadata2();
  v15 = type metadata accessor for ModifiedContent();
  v16 = sub_10009DB54();
  v43 = v12;
  v44 = &type metadata for Int;
  v45 = v15;
  v46 = v16;
  v47 = &protocol witness table for Int;
  v17 = type metadata accessor for ForEach();
  v43 = v13;
  v44 = &type metadata for Int;
  v45 = v14;
  v46 = &protocol witness table for Int;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = &protocol witness table for _OffsetEffect;
  v38 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v43 = &type metadata for Int;
  v44 = v17;
  v45 = &protocol witness table for Int;
  v46 = v18;
  v19 = type metadata accessor for TabView();
  v20 = type metadata accessor for PageTabViewStyle();
  v21 = swift_getWitnessTable();
  v43 = v19;
  v44 = v20;
  v45 = v21;
  v46 = &protocol witness table for PageTabViewStyle;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = v19;
  v44 = v20;
  v45 = v21;
  v46 = &protocol witness table for PageTabViewStyle;
  v23 = swift_getOpaqueTypeConformance2();
  v43 = OpaqueTypeMetadata2;
  v44 = &type metadata for Int;
  v45 = v23;
  v46 = &protocol witness table for Int;
  v24 = swift_getOpaqueTypeMetadata2();
  v25 = sub_10005C71C(&qword_100201E10, &qword_100201DC8);
  v43 = OpaqueTypeMetadata2;
  v44 = &type metadata for Int;
  v45 = v23;
  v46 = &protocol witness table for Int;
  v26 = swift_getOpaqueTypeConformance2();
  v43 = v11;
  v44 = v24;
  v45 = v25;
  v46 = v26;
  v27 = type metadata accessor for SubscriptionView();
  v28 = sub_10012102C(&qword_100201E18, &type metadata accessor for NSNotificationCenter.Publisher);
  v29 = swift_getWitnessTable();
  v43 = v34;
  v44 = v27;
  v45 = v28;
  v46 = v29;
  type metadata accessor for SubscriptionView();
  swift_getWitnessTable();
  v36 = GeometryReader.init(content:)();
  v37 = v30;
  v31 = type metadata accessor for GeometryReader();
  swift_getWitnessTable();
  v32 = *(*(v31 - 8) + 16);
  v32(&v43, &v36, v31);

  v36 = v43;
  v37 = v44;
  v32(a2, &v36, v31);
}

uint64_t sub_10011DDB4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v106 = a4;
  v111 = a3;
  v105 = a1;
  v109 = a5;
  v112 = type metadata accessor for NSNotificationCenter.Publisher();
  v108 = *(v112 - 8);
  __chkstk_darwin(v112);
  v107 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageTabViewStyle.IndexDisplayMode();
  __chkstk_darwin(v7 - 8);
  v103 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PageTabViewStyle();
  v104 = *(v9 - 8);
  __chkstk_darwin(v9);
  v102 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10003C4E4(&qword_1001FF2A0);
  sub_10003C4E4(&qword_100201DD0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  v12 = type metadata accessor for ModifiedContent();
  v13 = sub_100120E30();
  WitnessTable = swift_getWitnessTable();
  v125 = v13;
  v126 = WitnessTable;
  v15 = swift_getWitnessTable();
  *&v117 = v12;
  *(&v117 + 1) = &type metadata for Int;
  v118 = v15;
  v119 = &protocol witness table for Int;
  swift_getOpaqueTypeMetadata2();
  v16 = type metadata accessor for ModifiedContent();
  v17 = sub_10009DB54();
  *&v117 = v11;
  *(&v117 + 1) = &type metadata for Int;
  v118 = v16;
  v119 = v17;
  v120 = &protocol witness table for Int;
  v18 = type metadata accessor for ForEach();
  *&v117 = v12;
  *(&v117 + 1) = &type metadata for Int;
  v118 = v15;
  v119 = &protocol witness table for Int;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v124 = &protocol witness table for _OffsetEffect;
  v122 = swift_getWitnessTable();
  v84 = v18;
  v83 = swift_getWitnessTable();
  *&v117 = &type metadata for Int;
  *(&v117 + 1) = v18;
  v118 = &protocol witness table for Int;
  v119 = v83;
  v19 = type metadata accessor for TabView();
  v86 = *(v19 - 8);
  __chkstk_darwin(v19);
  v81 = &v75 - v20;
  v21 = swift_getWitnessTable();
  *&v117 = v19;
  v77 = v19;
  v76 = v9;
  *(&v117 + 1) = v9;
  v118 = v21;
  v22 = v21;
  v78 = v21;
  v119 = &protocol witness table for PageTabViewStyle;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v110 = &v75 - v24;
  *&v117 = v19;
  *(&v117 + 1) = v9;
  v118 = v22;
  v119 = &protocol witness table for PageTabViewStyle;
  v25 = swift_getOpaqueTypeConformance2();
  *&v117 = OpaqueTypeMetadata2;
  v79 = OpaqueTypeMetadata2;
  *(&v117 + 1) = &type metadata for Int;
  v118 = v25;
  v80 = v25;
  v119 = &protocol witness table for Int;
  v26 = swift_getOpaqueTypeMetadata2();
  v87 = v26;
  v99 = *(v26 - 8);
  __chkstk_darwin(v26);
  v82 = &v75 - v27;
  v28 = sub_10003C4E4(&qword_100201DC8);
  v90 = v28;
  v29 = sub_10005C71C(&qword_100201E10, &qword_100201DC8);
  v89 = v29;
  *&v117 = OpaqueTypeMetadata2;
  *(&v117 + 1) = &type metadata for Int;
  v118 = v25;
  v119 = &protocol witness table for Int;
  v88 = swift_getOpaqueTypeConformance2();
  *&v117 = v28;
  *(&v117 + 1) = v26;
  v118 = v29;
  v119 = v88;
  v30 = type metadata accessor for SubscriptionView();
  v95 = v30;
  v101 = *(v30 - 8);
  __chkstk_darwin(v30);
  v85 = &v75 - v31;
  v32 = sub_10012102C(&qword_100201E18, &type metadata accessor for NSNotificationCenter.Publisher);
  v97 = v32;
  v100 = &protocol conformance descriptor for SubscriptionView<A, B>;
  v96 = swift_getWitnessTable();
  *&v117 = v112;
  *(&v117 + 1) = v30;
  v118 = v32;
  v119 = v96;
  v93 = type metadata accessor for SubscriptionView();
  v98 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v94 = &v75 - v35;
  v127 = *(a2 + 40);
  v121 = *(a2 + 40);
  sub_10003C49C(&qword_100201E20);
  State.projectedValue.getter();
  v36 = v111;
  v113 = v111;
  v37 = v106;
  v114 = v106;
  v115 = a2;
  v116 = v105;
  v38 = v81;
  TabView.init(selection:content:)();
  static PageTabViewStyle.IndexDisplayMode.automatic.getter();
  v39 = v102;
  PageTabViewStyle.init(indexDisplayMode:)();
  v40 = v77;
  v41 = v76;
  View.tabViewStyle<A>(_:)();
  (*(v104 + 8))(v39, v41);
  (*(v86 + 8))(v38, v40);
  v117 = v127;
  State.wrappedValue.getter();
  v42 = swift_allocObject();
  *(v42 + 16) = v36;
  *(v42 + 24) = v37;
  v43 = v37;
  v44 = a2[5];
  *(v42 + 96) = a2[4];
  *(v42 + 112) = v44;
  *(v42 + 121) = *(a2 + 89);
  v45 = a2[1];
  *(v42 + 32) = *a2;
  *(v42 + 48) = v45;
  v46 = a2[3];
  *(v42 + 64) = a2[2];
  *(v42 + 80) = v46;
  v47 = type metadata accessor for SelfServiceInstructionsPagerView();
  v48 = *(v47 - 8);
  v49 = *(v48 + 16);
  v104 = v48 + 16;
  v105 = v47;
  v49(&v117, a2, v47);
  v50 = v82;
  v51 = v79;
  v52 = v110;
  View.onChange<A>(of:initial:_:)();

  (*(v92 + 8))(v52, v51);
  v117 = *(a2 + 24);
  sub_10003C49C(&qword_100201E28);
  State.wrappedValue.getter();
  v53 = swift_allocObject();
  *(v53 + 16) = v36;
  *(v53 + 24) = v43;
  v54 = a2[5];
  *(v53 + 96) = a2[4];
  *(v53 + 112) = v54;
  *(v53 + 121) = *(a2 + 89);
  v55 = a2[1];
  *(v53 + 32) = *a2;
  *(v53 + 48) = v55;
  v56 = a2[3];
  *(v53 + 64) = a2[2];
  *(v53 + 80) = v56;
  v49(&v117, a2, v47);
  v57 = v85;
  v58 = v87;
  View.onReceive<A>(_:perform:)();

  (*(v99 + 8))(v50, v58);
  v59 = [objc_opt_self() defaultCenter];
  v60 = v107;
  NSNotificationCenter.publisher(for:object:)();

  v61 = swift_allocObject();
  *(v61 + 16) = v111;
  *(v61 + 24) = v43;
  v62 = a2[5];
  *(v61 + 96) = a2[4];
  *(v61 + 112) = v62;
  *(v61 + 121) = *(a2 + 89);
  v63 = a2[1];
  *(v61 + 32) = *a2;
  *(v61 + 48) = v63;
  v64 = a2[3];
  *(v61 + 64) = a2[2];
  *(v61 + 80) = v64;
  v49(&v117, a2, v105);
  v65 = v91;
  v66 = v60;
  v67 = v95;
  v68 = v112;
  View.onReceive<A>(_:perform:)();

  (*(v108 + 8))(v66, v68);
  (*(v101 + 8))(v57, v67);
  v69 = v93;
  swift_getWitnessTable();
  v70 = v98;
  v71 = *(v98 + 16);
  v72 = v94;
  v71(v94, v65, v69);
  v73 = *(v70 + 8);
  v73(v65, v69);
  v71(v109, v72, v69);
  return (v73)(v72, v69);
}

uint64_t sub_10011ED08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v42 = a4;
  v39 = a2;
  v41 = type metadata accessor for GeometryProxy();
  v40 = *(v41 - 8);
  v8 = *(v40 + 64);
  __chkstk_darwin(v41);
  v9 = sub_10003C4E4(&qword_1001FF2A0);
  sub_10003C4E4(&qword_100201DD0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  v10 = type metadata accessor for ModifiedContent();
  v55 = sub_100120E30();
  WitnessTable = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v11 = type metadata accessor for ModifiedContent();
  v43 = v9;
  v48 = v9;
  v49 = &type metadata for Int;
  v50 = v11;
  v51 = sub_10009DB54();
  v35 = v51;
  v52 = &protocol witness table for Int;
  v12 = type metadata accessor for ForEach();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v34 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v16 = *(a1 + 88);
  v44 = a5;
  v38 = v10;
  v37 = v32 - v17;
  v36 = v11;
  if (!(v16 >> 62))
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
    v53 = 0;
    v54 = result;
    v32[1] = swift_getKeyPath();
    v19 = v40;
    v20 = v41;
    (*(v40 + 16))(v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v41);
    v21 = (*(v19 + 80) + 137) & ~*(v19 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 24) = v42;
    v23 = *(a1 + 80);
    *(v22 + 96) = *(a1 + 64);
    *(v22 + 112) = v23;
    *(v22 + 121) = *(a1 + 89);
    v24 = *(a1 + 16);
    *(v22 + 32) = *a1;
    *(v22 + 48) = v24;
    v25 = *(a1 + 48);
    *(v22 + 64) = *(a1 + 32);
    *(v22 + 80) = v25;
    (*(v19 + 32))(v22 + v21, v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
    v26 = type metadata accessor for SelfServiceInstructionsPagerView();
    (*(*(v26 - 8) + 16))(&v48, a1, v26);
    v48 = v38;
    v49 = &type metadata for Int;
    v50 = v33;
    v51 = &protocol witness table for Int;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v47 = &protocol witness table for _OffsetEffect;
    v31 = swift_getWitnessTable();
    v27 = v34;
    ForEach<>.init(_:id:content:)();
    v45 = v31;
    swift_getWitnessTable();
    v28 = *(v13 + 16);
    v29 = v37;
    v28(v37, v27, v12);
    v30 = *(v13 + 8);
    v30(v27, v12);
    v28(v44, v29, v12);
    return (v30)(v29, v12);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011F330@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v80 = a3;
  v86 = sub_10003C49C(&qword_100201DE8);
  __chkstk_darwin(v86);
  v12 = &v72 - v11;
  v13 = sub_10003C49C(&qword_100201DD0);
  __chkstk_darwin(v13);
  v94 = &v72 - v14;
  v97 = a4;
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v15 = type metadata accessor for VStack();
  WitnessTable = swift_getWitnessTable();
  v92 = v15;
  v90 = WitnessTable;
  type metadata accessor for _OverlayModifier();
  v95 = v13;
  v17 = type metadata accessor for ModifiedContent();
  v93 = *(v17 - 8);
  __chkstk_darwin(v17);
  p_opt_inst_meths = (&v72 - v18);
  v20 = sub_100120E30();
  v21 = swift_getWitnessTable();
  v81 = v20;
  v105[3] = v20;
  v105[4] = v21;
  v22 = swift_getWitnessTable();
  *&v106 = v17;
  *(&v106 + 1) = &type metadata for Int;
  v85 = v22;
  v107 = v22;
  v108 = &protocol witness table for Int;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v87 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v82 = &v72 - v24;
  v88 = v25;
  v26 = type metadata accessor for ModifiedContent();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  __chkstk_darwin(v28);
  v29 = *a1;
  v30 = *(a2 + 88);
  v96 = a6;
  v91 = v31;
  v89 = p_opt_inst_meths;
  v84 = &v72 - v32;
  v83 = v33;
  v79 = v29;
  if ((v30 & 0xC000000000000001) == 0)
  {
    if ((v29 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v29 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v34 = *(v30 + 8 * v29 + 32);
      goto LABEL_5;
    }

    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_9;
  }

  v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v35 = v34;
  v78 = a5;
  v36 = type metadata accessor for SelfServiceInstructionsPagerView();
  sub_10011D73C(v35, v105);

  v75 = v105[0];
  v74 = v105[1];
  v73 = v105[2];
  v111 = *(a2 + 56);
  v106 = *(a2 + 56);
  sub_10003C49C(&qword_100201430);
  State.wrappedValue.getter();
  v37 = LOBYTE(v100[0]);
  GeometryProxy.size.getter();
  p_opt_inst_meths = &OBJC_PROTOCOL___DKAssetResponder.opt_inst_meths;
  if (v37 != 1)
  {
    sub_10011D0DC();
    a5 = v36;
    goto LABEL_9;
  }

  sub_10011D188();
  a5 = v36;
  if (qword_1001FC828 != -1)
  {
    goto LABEL_17;
  }

LABEL_9:
  v106 = v111;
  State.wrappedValue.getter();
  v38 = LOBYTE(v100[0]);
  GeometryProxy.size.getter();
  v77 = v17;
  v76 = v27;
  v72 = a5;
  if (v38 == 1)
  {
    sub_10011D188();
  }

  else
  {
    sub_10011D0DC();
    if (p_opt_inst_meths[261] != -1)
    {
      swift_once();
    }
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v39 = v106;
  v40 = v107;
  v41 = v109;
  v42 = v110;
  v104 = BYTE8(v106);
  v102 = v108;
  v43 = *(a2 + 8);
  v44 = &v12[*(v86 + 36)];
  v45 = *(type metadata accessor for RoundedRectangle() + 20);
  v46 = enum case for RoundedCornerStyle.continuous(_:);
  v47 = type metadata accessor for RoundedCornerStyle();
  (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
  *v44 = v43;
  *(v44 + 1) = v43;
  *&v44[*(sub_10003C49C(&qword_100200048) + 36)] = 256;
  v48 = v74;
  *v12 = v75;
  *(v12 + 1) = v48;
  *(v12 + 2) = v73;
  *(v12 + 3) = v39;
  v12[32] = v104;
  *(v12 + 33) = *v103;
  *(v12 + 9) = *&v103[3];
  *(v12 + 5) = v40;
  v12[48] = v102;
  *(v12 + 49) = *v101;
  *(v12 + 13) = *&v101[3];
  *(v12 + 7) = v41;
  *(v12 + 8) = v42;
  v49 = static Alignment.center.getter();
  v51 = v50;
  v52 = v94;
  v53 = &v94[*(v95 + 36)];
  v54 = v97;
  v55 = v78;
  sub_10011FDEC(a2, v53);
  v56 = (v53 + *(sub_10003C49C(&qword_100201E08) + 36));
  *v56 = v49;
  v56[1] = v51;
  v57 = sub_100121354(v12, v52);
  __chkstk_darwin(v57);
  *(&v72 - 4) = v54;
  *(&v72 - 3) = v55;
  v58 = v79;
  *(&v72 - 2) = a2;
  *(&v72 - 1) = v58;
  static Alignment.center.getter();
  v59 = v89;
  View.overlay<A>(alignment:content:)();
  sub_1001213D0(v52);
  v100[0] = v58;
  v60 = v82;
  v61 = v77;
  v62 = v85;
  sub_10002E3B4(v100, 1, v77, &type metadata for Int, v85);
  (*(v93 + 8))(v59, v61);
  sub_10011D3D8();
  sub_10011D3D8();
  v100[0] = v61;
  v100[1] = &type metadata for Int;
  v100[2] = v62;
  v100[3] = &protocol witness table for Int;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = v83;
  v65 = v88;
  View.offset(x:y:)();
  (*(v87 + 8))(v60, v65);
  v98 = OpaqueTypeConformance2;
  v99 = &protocol witness table for _OffsetEffect;
  v66 = v91;
  swift_getWitnessTable();
  v67 = v76;
  v68 = *(v76 + 16);
  v69 = v84;
  v68(v84, v64, v66);
  v70 = *(v67 + 8);
  v70(v64, v66);
  v68(v96, v69, v66);
  return (v70)(v69, v66);
}

uint64_t sub_10011FDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  v9 = *(v8 + 28);
  v10 = enum case for RoundedCornerStyle.continuous(_:);
  v11 = type metadata accessor for RoundedCornerStyle();
  (*(*(v11 - 8) + 104))(&v6[v9], v10, v11);
  *v6 = v7;
  *(v6 + 1) = v7;
  v12 = static Color.black.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_100121450(v6, a2);
  v13 = *&v24 * 0.5;
  v14 = a2 + *(sub_10003C49C(&qword_100201E48) + 68);
  sub_100121450(v6, v14);
  *(v14 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v13;
  v15 = v14 + *(sub_10003C49C(&qword_100201E50) + 36);
  v16 = v25;
  *v15 = v24;
  *(v15 + 16) = v16;
  *(v15 + 32) = v26;
  v17 = sub_10003C49C(&qword_100201E58);
  *(v14 + *(v17 + 52)) = v12;
  *(v14 + *(v17 + 56)) = 256;
  v18 = static Alignment.center.getter();
  v20 = v19;
  sub_1001214B4(v6);
  result = sub_10003C49C(&unk_100201E60);
  v22 = (v14 + *(result + 36));
  *v22 = v18;
  v22[1] = v20;
  return result;
}

uint64_t sub_10011FFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v20 = a5;
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v9 = type metadata accessor for VStack();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  static HorizontalAlignment.trailing.getter();
  v21 = a3;
  v22 = a4;
  v23 = a1;
  v24 = a2;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  v16 = *(v10 + 16);
  v16(v15, v12, v9);
  v17 = *(v10 + 8);
  v17(v12, v9);
  v16(v20, v15, v9);
  return (v17)(v15, v9);
}

uint64_t sub_10012021C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[1] = a5;
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v9 = type metadata accessor for HStack();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v20 - v14;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a1;
  v20[7] = a2;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  v17 = *(v10 + 16);
  v17(v15, v12, v9);
  v18 = *(v10 + 8);
  v18(v12, v9);
  v22 = 0;
  v23 = 1;
  v24[0] = &v22;
  v17(v12, v15, v9);
  v24[1] = v12;
  v21[0] = &type metadata for Spacer;
  v21[1] = v9;
  v20[8] = &protocol witness table for Spacer;
  v20[9] = WitnessTable;
  sub_10011CB38(v24, 2uLL, v21);
  v18(v15, v9);
  return (v18)(v12, v9);
}

uint64_t sub_10012047C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  __chkstk_darwin(a1);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = v18 - v11;
  (*(v13 + 72))(v14, v10);
  v15 = *(v6 + 16);
  v15(v12, v8, a3);
  v16 = *(v6 + 8);
  v16(v8, a3);
  v15(v8, v12, a3);
  v20 = 0;
  v21 = 1;
  v22[0] = v8;
  v22[1] = &v20;
  v19[0] = a3;
  v19[1] = &type metadata for Spacer;
  v18[0] = a4;
  v18[1] = &protocol witness table for Spacer;
  sub_10011CB38(v22, 2uLL, v19);
  v16(v12, a3);
  return (v16)(v8, a3);
}

uint64_t sub_100120628()
{
  v1 = v0;
  v2 = sub_10003C49C(&qword_1001FF698);
  __chkstk_darwin(v2 - 8);
  v4 = v10 - v3;
  sub_10003E110(0, &qword_100201E38);
  v5 = [objc_opt_self() mainRunLoop];
  v6 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_10003DD84(v4, &qword_1001FF698);
  *&v11 = v7;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_10012102C(&qword_100201E40, &type metadata accessor for NSTimer.TimerPublisher);
  v8 = ConnectablePublisher.autoconnect()();

  v11 = *(v1 + 24);
  v10[1] = v8;
  sub_10003C49C(&qword_100201E28);
  return State.wrappedValue.setter();
}

uint64_t sub_100120818()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100120888()
{
  v1 = v0;
  v9 = *(v0 + 40);
  v10 = v9;
  v11 = *(&v9 + 1);
  sub_100121160(&v11, &v8);
  sub_10003C49C(&qword_100201E20);
  v2 = &v9;
  State.wrappedValue.getter();
  v3 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = v10;
    State.wrappedValue.getter();
    v2 = v8;
    v4 = *(v1 + 88);
    if (!(v4 >> 62))
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
LABEL_4:
  if (v2 >= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  v9 = v10;
  v8 = v6;
  State.wrappedValue.setter();
  return sub_10003DD84(&v10, &qword_100201E20);
}

void sub_10012098C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 104))
  {
    v24 = a3;
    v25 = a4;
    v4 = [objc_opt_self() sharedApplication];
    v5 = [v4 connectedScenes];

    sub_10003E110(0, &qword_1001FD3F0);
    sub_10004A2B8();
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v6 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v8 = v27;
      v7 = v28;
      v10 = v29;
      v9 = v30;
      v11 = v31;
    }

    else
    {
      v12 = -1 << *(v6 + 32);
      v7 = v6 + 56;
      v10 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v11 = v14 & *(v6 + 56);

      v9 = 0;
      v8 = v6;
    }

    v15 = (v10 + 64) >> 6;
    if (v8 < 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    v16 = v9;
    v17 = v11;
    v18 = v9;
    if (v11)
    {
LABEL_13:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
      if (v20)
      {
        while ([v20 activationState])
        {

          v9 = v18;
          v11 = v19;
          if ((v8 & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_15:
          if (__CocoaSet.Iterator.next()())
          {
            swift_dynamicCast();
            v20 = v26;
            v18 = v9;
            v19 = v11;
            if (v26)
            {
              continue;
            }
          }

          goto LABEL_20;
        }

        sub_10004A320();

        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();
        if (v21)
        {
          v22 = [v21 effectiveGeometry];
          v23 = [v22 interfaceOrientation];

          sub_1000FD35C(v23);
          type metadata accessor for SelfServiceInstructionsPagerView();
          sub_10011D368();
        }
      }

      else
      {
LABEL_20:
        sub_10004A320();
      }
    }

    else
    {
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v18 >= v15)
        {
          goto LABEL_20;
        }

        v17 = *(v7 + 8 * v18);
        ++v16;
        if (v17)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_100120CB8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100120CF4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100120D20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_100120D68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100120E30()
{
  result = qword_100201DD8;
  if (!qword_100201DD8)
  {
    sub_10003C4E4(&qword_100201DD0);
    sub_100120EE8();
    sub_10005C71C(&qword_100201E00, &qword_100201E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201DD8);
  }

  return result;
}

unint64_t sub_100120EE8()
{
  result = qword_100201DE0;
  if (!qword_100201DE0)
  {
    sub_10003C4E4(&qword_100201DE8);
    sub_100120FA0();
    sub_10005C71C(&qword_1002000B0, &qword_100200048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201DE0);
  }

  return result;
}

unint64_t sub_100120FA0()
{
  result = qword_100201DF0;
  if (!qword_100201DF0)
  {
    sub_10003C4E4(&qword_100201DF8);
    sub_10005C6C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201DF0);
  }

  return result;
}

uint64_t sub_10012102C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001210BC()
{

  return _swift_deallocObject(v0, 137, 7);
}

uint64_t sub_100121160(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_100201E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001211D0()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 137) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001212BC@<X0>(unint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for GeometryProxy() - 8);
  v8 = v2 + ((*(v7 + 80) + 137) & ~*(v7 + 80));

  return sub_10011F330(a1, v2 + 32, v8, v5, v6, a2);
}

uint64_t sub_100121354(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_100201DE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001213D0(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_100201DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100121450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001214B4(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100121510()
{
  type metadata accessor for NSNotificationCenter.Publisher();
  sub_10003C4E4(&qword_100201DC8);
  sub_10003C4E4(&qword_1001FF2A0);
  sub_10003C4E4(&qword_100201DD0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  sub_100120E30();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  sub_10009DB54();
  type metadata accessor for ForEach();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for TabView();
  type metadata accessor for PageTabViewStyle();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10005C71C(&qword_100201E10, &qword_100201DC8);
  swift_getOpaqueTypeConformance2();
  type metadata accessor for SubscriptionView();
  sub_10012102C(&qword_100201E18, &type metadata accessor for NSNotificationCenter.Publisher);
  swift_getWitnessTable();
  type metadata accessor for SubscriptionView();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  return swift_getWitnessTable();
}

uint64_t sub_1001219AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF6C6562614C6275;
  v3 = 0x487972616D697270;
  v4 = a1;
  v5 = 0x614C72656B6E6974;
  v6 = 0xEB000000006C6562;
  if (a1 == 4)
  {
    v5 = 0x487972616D697270;
    v6 = 0xEF6C6562614C6275;
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000001BLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = 0x8000000100188950;
  }

  v8 = 0x80000001001888F0;
  v9 = 0x8000000100188910;
  if (a1 == 1)
  {
    v10 = 0xD000000000000010;
  }

  else
  {
    v10 = 0xD000000000000011;
  }

  if (a1 != 1)
  {
    v9 = 0x8000000100188930;
  }

  if (a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v9;
  }

  if (v4 <= 2)
  {
    v12 = v8;
  }

  else
  {
    v11 = v7;
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x8000000100188950;
      v3 = 0xD00000000000001BLL;
    }

    else if (a2 != 4)
    {
      v2 = 0xEB000000006C6562;
      if (v11 != 0x614C72656B6E6974)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    if (v11 != v3)
    {
LABEL_37:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_38;
    }
  }

  else
  {
    if (!a2)
    {
      v2 = 0x80000001001888F0;
LABEL_30:
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    if (a2 == 1)
    {
      v2 = 0x8000000100188910;
      goto LABEL_30;
    }

    v2 = 0x8000000100188930;
    if (v11 != 0xD000000000000011)
    {
      goto LABEL_37;
    }
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_100121B60(char a1, char a2)
{
  if (qword_100185118[a1] == qword_100185118[a2])
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

Swift::Int sub_100121BC8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100121CF8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

BOOL sub_100121E24(uint64_t a1, uint64_t a2)
{
  if (qword_1001FC830 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v3 = qword_100201E70;
  v4 = sub_100150974(a1, qword_100201E70);
  if (v5)
  {
    return 0;
  }

  v7 = v4;
  v8 = sub_100150974(a2, v3);
  return (v9 & 1) != 0 || v7 < v8;
}

unint64_t sub_100121EC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10003C49C(&qword_100201F00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_100049EFC(&v22, v24);
        sub_100049EFC(v24, v25);
        sub_100049EFC(v25, &v23);
        result = sub_100064AFC(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100044554(v11);
          result = sub_100049EFC(&v23, v11);
          v8 = v12;
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
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_100049EFC(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
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

unint64_t sub_100122120(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10003C49C(&unk_100201ED0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        sub_10003C49C(&unk_1001FD010);
        swift_dynamicCast();
        result = sub_100064AFC(v15, v14);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v15;
          v9[1] = v14;
          v10 = result;

          *(v2[7] + 8 * v10) = v21;
          result = swift_unknownObjectRelease();
          v8 = v11;
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
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
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

uint64_t sub_10012235C()
{
  String.hash(into:)();
}

unint64_t sub_10012247C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001253E8(*a1);
  *a2 = result;
  return result;
}

void sub_1001224AC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6C6562614C6275;
  v4 = 0x487972616D697270;
  if (v2 != 4)
  {
    v4 = 0x614C72656B6E6974;
    v3 = 0xEB000000006C6562;
  }

  if (v2 == 3)
  {
    v4 = 0xD00000000000001BLL;
    v3 = 0x8000000100188950;
  }

  v5 = 0xD000000000000010;
  v6 = 0x80000001001888F0;
  v7 = 0xD000000000000010;
  v8 = 0x8000000100188910;
  if (v2 != 1)
  {
    v7 = 0xD000000000000011;
    v8 = 0x8000000100188930;
  }

  if (*v1)
  {
    v5 = v7;
    v6 = v8;
  }

  if (*v1 <= 2u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

void sub_100122594(uint64_t a1)
{
  v3 = type metadata accessor for TargetDevice();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003C49C(&qword_1001FFE10);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_10003C49C(&qword_100201B80);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_device;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_100044704(v1 + v13, v12, &qword_1001FFE10);
  sub_100044704(a1, &v12[v14], &qword_1001FFE10);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      sub_10003DD84(v12, &qword_1001FFE10);
      return;
    }

    goto LABEL_6;
  }

  sub_100044704(v12, v8, &qword_1001FFE10);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_10003DD84(v12, &qword_100201B80);
LABEL_7:
    sub_100122E00();
    return;
  }

  v16 = v19;
  (*(v4 + 32))(v19, &v12[v14], v3);
  sub_1001251D8(&qword_100201EE0, &type metadata accessor for TargetDevice);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v4 + 8);
  v18(v16, v3);
  v18(v8, v3);
  sub_10003DD84(v12, &qword_1001FFE10);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void sub_1001229B0()
{
  v1 = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView;
  v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView);
  *(v0 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView) = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v4 setAxis:0];

  v5 = *(v0 + v2);
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v5 setAlignment:3];
  v6 = *(v0 + v2);
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v6 setSpacing:0.0];
  v7 = [objc_allocWithZone(UIImageView) init];
  v8 = *(v0 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView);
  *(v0 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView) = v7;

  v9 = [objc_allocWithZone(UIStackView) init];
  v10 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_detailsStackView;
  v11 = *(v0 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_detailsStackView);
  *(v0 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_detailsStackView) = v9;
  v12 = v9;

  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v12 setAxis:1];

  v13 = *(v0 + v10);
  if (!v13)
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v13 setSpacing:2.0];
}

void sub_100122AFC()
{
  v1 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView;
  v4 = *&v0[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView];
  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10003C49C(&unk_1001FD020);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10017EDA0;
  v6 = *&v0[v3];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = [v6 widthAnchor];
  v8 = [v7 constraintEqualToConstant:*&v0[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 40]];

  *(v5 + 32) = v8;
  v9 = *&v0[v1];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = [v9 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v5 + 40) = v12;
  v13 = *&v0[v1];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = [v13 trailingAnchor];
  v15 = [v0 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v5 + 48) = v16;
  v17 = *&v0[v1];
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = [v17 topAnchor];
  v19 = [v0 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v5 + 56) = v20;
  v21 = *&v0[v1];
  if (!v21)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v22 = objc_opt_self();
  v23 = [v21 heightAnchor];
  v24 = [v0 heightAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v5 + 64) = v25;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 activateConstraints:isa];
}

void sub_100122E00()
{
  v1 = type metadata accessor for TargetDevice.Status();
  v116 = *(v1 - 8);
  v117 = v1;
  __chkstk_darwin(v1);
  v115 = &v114 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10003C49C(&qword_1001FFE10);
  __chkstk_darwin(v3 - 8);
  v123 = &v114 - v4;
  v5 = type metadata accessor for TargetDevice();
  v120 = *(v5 - 8);
  v121 = v5;
  __chkstk_darwin(v5);
  v7 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v0;
  v118 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView;
  v8 = *&v0[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView];
  if (!v8)
  {
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v9 = [v8 subviews];
  sub_10003E110(0, &qword_1001FF090);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v122 = v7;
  if (v10 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v13 removeFromSuperview];

      ++v12;
      if (v15 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v16 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_detailsStackView;
  v17 = *&v124[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_detailsStackView];
  if (!v17)
  {
    goto LABEL_130;
  }

  v18 = [v17 subviews];
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v119 = v16;
  if (v19 >> 62)
  {
    goto LABEL_28;
  }

  for (j = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v21 = 0;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v22 = *(v19 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      [v22 removeFromSuperview];

      ++v21;
      if (v24 == j)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:

  v25 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView;
  v26 = v124;
  v27 = *&v124[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView];
  if (!v27)
  {
    goto LABEL_131;
  }

  [v27 setImage:0];
  v28 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_device;
  swift_beginAccess();
  v29 = &v26[v28];
  v30 = v123;
  sub_100044704(v29, v123, &qword_1001FFE10);
  v31 = v120;
  v32 = v30;
  v33 = v121;
  if ((*(v120 + 48))(v32, 1, v121) == 1)
  {
    sub_10003DD84(v123, &qword_1001FFE10);
    return;
  }

  (*(v31 + 32))(v122, v123, v33);
  v34 = v118;
  v35 = *&v118[v26];
  if (!v35)
  {
    goto LABEL_132;
  }

  if (!*&v26[v25])
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  [v35 addArrangedSubview:?];
  v36 = *&v34[v26];
  v37 = v122;
  if (!v36)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v38 = v119;
  if (!*&v26[v119])
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v39 = v26;
  [v36 addArrangedSubview:?];
  v40 = [objc_opt_self() sharedInstance];
  sub_1001242CC();
  sub_10003C49C(&unk_1001FD010);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v42 = swift_allocObject();
  *(v42 + 16) = v39;
  aBlock[4] = sub_10012491C;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100072168;
  aBlock[3] = &unk_1001C7C28;
  v43 = _Block_copy(aBlock);
  v44 = v39;

  [v40 deviceImageViewForDeviceStateAttributes:isa completion:v43];
  _Block_release(v43);

  v45 = [objc_allocWithZone(UILabel) init];
  TargetDevice.userAssignedName.getter();
  v46 = String._bridgeToObjectiveC()();

  [v45 setText:v46];

  v47 = &v44[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration];
  [v45 setFont:*&v44[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 8]];
  [v45 setTextColor:*(v47 + 2)];
  v48 = *&v39[v38];
  if (!v48)
  {
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v118 = v45;
  [v48 addArrangedSubview:v45];
  v49 = *v47;
  v50 = *(*v47 + 16);
  v123 = v47;
  if (!v50)
  {
    goto LABEL_55;
  }

  Hasher.init(_seed:)();

  String.hash(into:)();
  v51 = Hasher._finalize()();
  v52 = -1 << *(v49 + 32);
  v53 = v51 & ~v52;
  if (((*(v49 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
  {

    goto LABEL_55;
  }

  v54 = ~v52;
  while (1)
  {
    if (*(*(v49 + 48) + v53) > 2u)
    {
      goto LABEL_47;
    }

    if (*(*(v49 + 48) + v53))
    {
      v55 = 0x8000000100188910;
      if (*(*(v49 + 48) + v53) != 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v55 = 0x80000001001888F0;
    }

    if (0x8000000100188910 == v55)
    {
      break;
    }

LABEL_47:
    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v56)
    {
      goto LABEL_53;
    }

    v53 = (v53 + 1) & v54;
    if (((*(v49 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
    {

      v37 = v122;
      v47 = v123;
      goto LABEL_55;
    }
  }

LABEL_53:

  v57 = [objc_allocWithZone(UILabel) init];
  v37 = v122;
  TargetDevice.deviceClass.getter();
  v58 = String._bridgeToObjectiveC()();

  [v57 setText:v58];

  v47 = v123;
  [v57 setFont:*(v123 + 3)];
  [v57 setTextColor:*(v47 + 4)];
  v59 = *&v124[v119];
  if (!v59)
  {
    goto LABEL_137;
  }

  [v59 addArrangedSubview:v57];

LABEL_55:
  v60 = *v47;
  if (!*(*v47 + 16))
  {
    goto LABEL_76;
  }

  Hasher.init(_seed:)();

  String.hash(into:)();
  v61 = Hasher._finalize()();
  v62 = -1 << *(v60 + 32);
  v63 = v61 & ~v62;
  if (((*(v60 + 56 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
  {

    goto LABEL_76;
  }

  v64 = ~v62;
  while (2)
  {
    if (*(*(v60 + 48) + v63) > 2u)
    {
      goto LABEL_65;
    }

    if (*(*(v60 + 48) + v63))
    {
      if (*(*(v60 + 48) + v63) == 1)
      {
        v65 = 0x8000000100188910;
        goto LABEL_64;
      }

      goto LABEL_65;
    }

    v65 = 0x80000001001888F0;
LABEL_64:
    if (0x80000001001888F0 != v65)
    {
LABEL_65:
      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v66)
      {
        goto LABEL_71;
      }

      v63 = (v63 + 1) & v64;
      if (((*(v60 + 56 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
      {

        v37 = v122;
        v47 = v123;
        goto LABEL_76;
      }

      continue;
    }

    break;
  }

LABEL_71:

  v67 = [objc_allocWithZone(UILabel) init];
  v37 = v122;
  TargetDevice.marketingName.getter();
  v47 = v123;
  if (v68)
  {
    v69 = String._bridgeToObjectiveC()();
  }

  else
  {
    v69 = 0;
  }

  [v67 setText:v69];

  [v67 setFont:*(v47 + 3)];
  [v67 setTextColor:*(v47 + 4)];
  v70 = *&v124[v119];
  if (!v70)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  [v70 addArrangedSubview:v67];

LABEL_76:
  v71 = *v47;
  if (*(*v47 + 16))
  {
    Hasher.init(_seed:)();

    String.hash(into:)();
    v72 = Hasher._finalize()();
    v73 = -1 << *(v71 + 32);
    v74 = v72 & ~v73;
    if (((*(v71 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
    {

      goto LABEL_99;
    }

    v75 = ~v73;
    while (*(*(v71 + 48) + v74) > 2u || !*(*(v71 + 48) + v74) || *(*(v71 + 48) + v74) == 1)
    {
      v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v76)
      {
        goto LABEL_87;
      }

      v74 = (v74 + 1) & v75;
      if (((*(v71 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
      {

        v37 = v122;
        v47 = v123;
        goto LABEL_99;
      }
    }

LABEL_87:

    v77 = [objc_allocWithZone(UILabel) init];
    v78 = v115;
    v37 = v122;
    TargetDevice.status.getter();
    v80 = v116;
    v79 = v117;
    v81 = (*(v116 + 88))(v78, v117);
    v47 = v123;
    if (v81 == enum case for TargetDevice.Status.ready(_:))
    {
      v82 = 0;
      goto LABEL_97;
    }

    if (v81 == enum case for TargetDevice.Status.waiting(_:))
    {
      v83 = 0x495443454E4E4F43;
      v84 = 0xEA0000000000474ELL;
      goto LABEL_96;
    }

    if (v81 == enum case for TargetDevice.Status.unavailable(_:))
    {
      v83 = 0x414C494156414E55;
      v85 = 4541506;
LABEL_95:
      v84 = (v85 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000);
LABEL_96:
      sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v83, v84);
      v82 = String._bridgeToObjectiveC()();
    }

    else
    {
      if (v81 == enum case for TargetDevice.Status.unsupported(_:))
      {
        v83 = 0x524F505055534E55;
        v85 = 4474196;
        goto LABEL_95;
      }

      (*(v80 + 8))(v78, v79);
      v82 = 0;
    }

LABEL_97:
    [v77 setText:v82];

    [v77 setFont:*(v47 + 3)];
    [v77 setTextColor:*(v47 + 4)];
    v86 = *&v124[v119];
    if (v86)
    {
      [v86 addArrangedSubview:v77];

      goto LABEL_99;
    }

LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    return;
  }

LABEL_99:
  v87 = *v47;
  if (*(*v47 + 16))
  {
    Hasher.init(_seed:)();

    String.hash(into:)();
    v88 = Hasher._finalize()();
    v89 = -1 << *(v87 + 32);
    v90 = v88 & ~v89;
    if ((*(v87 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90))
    {
      v91 = ~v89;
      while (1)
      {
        v92 = *(*(v87 + 48) + v90);
        if (v92 > 2 && v92 != 4 && v92 != 5)
        {
          break;
        }

        v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v93)
        {
          goto LABEL_110;
        }

        v90 = (v90 + 1) & v91;
        if (((*(v87 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) == 0)
        {

          v37 = v122;
          v47 = v123;
          goto LABEL_113;
        }
      }

LABEL_110:

      v37 = v122;
      v94 = TargetDevice.isLocal.getter();
      v47 = v123;
      if (v94)
      {
        v95 = [objc_allocWithZone(UILabel) init];
        sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000025, 0x8000000100193030);
        v96 = String._bridgeToObjectiveC()();

        [v95 setText:v96];

        [v95 setFont:*(v47 + 3)];
        v97 = [objc_opt_self() secondaryLabelColor];
        [v95 setTextColor:v97];

        v98 = *&v124[v119];
        if (!v98)
        {
          goto LABEL_140;
        }

        [v98 addArrangedSubview:v95];
      }
    }

    else
    {
    }
  }

LABEL_113:
  v99 = *v47;
  if (!*(*v47 + 16))
  {
LABEL_123:

    (*(v120 + 8))(v37, v121);
    return;
  }

  Hasher.init(_seed:)();

  String.hash(into:)();
  v100 = Hasher._finalize()();
  v101 = -1 << *(v99 + 32);
  v102 = v100 & ~v101;
  if (((*(v99 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) == 0)
  {

    goto LABEL_123;
  }

  v103 = ~v101;
  while (1)
  {
    v104 = *(*(v99 + 48) + v102);
    if (v104 >= 4 && v104 != 5)
    {
      break;
    }

    v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v105)
    {
      goto LABEL_124;
    }

    v102 = (v102 + 1) & v103;
    if (((*(v99 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) == 0)
    {

      (*(v120 + 8))(v122, v121);
      return;
    }
  }

LABEL_124:

  v106 = v122;
  v107 = TargetDevice.isPrimaryHomeHub.getter();
  v108 = v119;
  v109 = v123;
  if (v107)
  {
    v110 = [objc_allocWithZone(UILabel) init];
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000002ELL, 0x8000000100193000);
    v111 = String._bridgeToObjectiveC()();

    [v110 setText:v111];

    [v110 setFont:*(v109 + 24)];
    v112 = [objc_opt_self() secondaryLabelColor];
    [v110 setTextColor:v112];

    v113 = *&v124[v108];
    if (!v113)
    {
      goto LABEL_141;
    }

    [v113 addArrangedSubview:v110];

    (*(v120 + 8))(v106, v121);
  }

  else
  {
    (*(v120 + 8))(v106, v121);
  }
}

unint64_t sub_1001242CC()
{
  sub_10003C49C(&unk_100201EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001845E0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = TargetDevice.deviceClass.getter();
  *(inited + 56) = v2;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v3;
  *(inited + 80) = TargetDevice.userAssignedName.getter();
  *(inited + 88) = v4;
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v5;
  *(inited + 112) = TargetDevice.productType.getter();
  *(inited + 120) = v6;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v7;
  *(inited + 144) = TargetDevice.deviceClass.getter();
  *(inited + 152) = v8;
  v9 = sub_1000D5698(inited);
  swift_setDeallocating();
  sub_10003C49C(&qword_100201D00);
  swift_arrayDestroy();
  v10 = TargetDevice.deviceColor.getter();
  if (v11)
  {
    v12 = v11;
    v13 = v10;
    v14 = TargetDevice.enclosureColor.getter();
    if (v15)
    {
      v16 = v14;
      v17 = v15;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10014240C(v13, v12, v18, v20, isUniquelyReferenced_nonNull_native);

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10013C284(v16, v17, v22, v23);
    }

    else
    {
    }
  }

  v24 = sub_100122120(v9);

  return v24;
}

void sub_1001244B0(void *a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView;
  v6 = *(a2 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView);
  if (!v6)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v7 = v4;
  v13 = a1;
  v8 = v6;
  v9 = [v7 image];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 imageWithAlignmentRectInsets:{0.0, -*(a2 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 64), 0.0, -*(a2 + OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration + 64)}];
  }

  else
  {
    v11 = 0;
  }

  [v8 setImage:v11];

  v12 = *(a2 + v5);
  if (!v12)
  {
    goto LABEL_12;
  }

  [v12 setContentMode:1];
}

id sub_100124628()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TargetDeviceDescriptionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TargetDeviceDescriptionView()
{
  result = qword_100201EA0;
  if (!qword_100201EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100124770()
{
  sub_1000CC568();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 sub_100124818(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10012483C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100124884(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001248E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100124924(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10012493C()
{
  sub_10003C49C(&unk_1001FDEA0);
  v0 = type metadata accessor for TargetDevice.DeviceType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100184F30;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for TargetDevice.DeviceType.iOS(_:), v0);
  v6(v5 + v2, enum case for TargetDevice.DeviceType.reality(_:), v0);
  v6(v5 + 2 * v2, enum case for TargetDevice.DeviceType.mac(_:), v0);
  v6(v5 + 3 * v2, enum case for TargetDevice.DeviceType.watch(_:), v0);
  v6(v5 + 4 * v2, enum case for TargetDevice.DeviceType.appleTV(_:), v0);
  v6(v5 + 5 * v2, enum case for TargetDevice.DeviceType.audioAccessory(_:), v0);
  result = (v6)(v5 + 6 * v2, enum case for TargetDevice.DeviceType.unknown(_:), v0);
  qword_100201E70 = v4;
  return result;
}

uint64_t sub_100124B0C()
{
  v0 = type metadata accessor for TargetDevice.DeviceType();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v22 - v5;
  v7 = TargetDevice.isLocal.getter();
  v8 = TargetDevice.isLocal.getter();
  if ((v7 & 1) == 0)
  {
    if (v8)
    {
      v9 = 0;
      return v9 & 1;
    }

LABEL_6:
    TargetDevice.deviceType.getter();
    TargetDevice.deviceType.getter();
    if (qword_1001FC830 != -1)
    {
      swift_once();
    }

    v10 = qword_100201E70;
    v11 = sub_100150974(v6, qword_100201E70);
    if ((v12 & 1) == 0)
    {
      v13 = v11;
      v14 = sub_100150974(v4, v10);
      if (v15)
      {
        goto LABEL_11;
      }

      if (v13 != v14)
      {
        v9 = v13 < v14;
        goto LABEL_19;
      }

      if (TargetDevice.isPrimaryHomeHub.getter())
      {
LABEL_11:
        v9 = 1;
        goto LABEL_19;
      }

      if ((TargetDevice.isPrimaryHomeHub.getter() & 1) == 0)
      {
        v16 = TargetDevice.userAssignedName.getter();
        v18 = v17;
        if (v16 == TargetDevice.userAssignedName.getter() && v18 == v19)
        {

          v9 = 0;
        }

        else
        {
          v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_19;
      }
    }

    v9 = 0;
LABEL_19:
    v20 = *(v1 + 8);
    v20(v4, v0);
    v20(v6, v0);
    return v9 & 1;
  }

  if (v8)
  {
    goto LABEL_6;
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t sub_100124D70(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v37 = sub_10003C49C(&unk_100201EF0);
  v3 = __chkstk_darwin(v37);
  v34 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v34 - v5;
  v6 = type metadata accessor for TargetDevice.DeviceType();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v40 = &v34 - v11;
  __chkstk_darwin(v10);
  v13 = &v34 - v12;
  static TargetDevice.DeviceType.current.getter();
  sub_1001251D8(&qword_1001FFDE8, &type metadata accessor for TargetDevice.DeviceType);
  v38 = a1;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v14 = *(v7 + 8);
  v14(v13, v6);
  v15 = v43;
  v16 = v42;
  static TargetDevice.DeviceType.current.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v35 = v14;
  v14(v13, v6);
  if (v15 != v16)
  {
    if (v43 == v42)
    {
      return 0;
    }

LABEL_6:
    v18 = v36;
    sub_100044704(v38, v36, &unk_100201EF0);
    v19 = v37;

    v20 = *(v7 + 32);
    v21 = v40;
    v20(v40, v18, v6);
    sub_100044704(v41, v18, &unk_100201EF0);

    v22 = v39;
    v20(v39, v18, v6);
    if (qword_1001FC830 != -1)
    {
      swift_once();
    }

    v23 = qword_100201E70;
    v24 = sub_100150974(v21, qword_100201E70);
    if (v25)
    {
      v17 = 0;
    }

    else
    {
      v26 = v24;
      v27 = sub_100150974(v22, v23);
      if (v28)
      {
        v17 = 1;
      }

      else
      {
        if (v26 == v27)
        {
          sub_100044704(v38, v18, &unk_100201EF0);
          v29 = *(*(v18 + *(v19 + 48)) + 16);

          v30 = v34;
          v22 = v39;
          sub_100044704(v41, v34, &unk_100201EF0);
          v31 = *(*(v30 + *(v19 + 48)) + 16);

          v17 = v29 < v31;
          v32 = v35;
          v35(v30, v6);
          v32(v18, v6);
LABEL_16:
          v32(v22, v6);
          v32(v40, v6);
          return v17;
        }

        v17 = v26 < v27;
      }
    }

    v32 = v35;
    goto LABEL_16;
  }

  if (v43 == v42)
  {
    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_1001251D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for TargetDeviceDescriptionView.DeviceLabelTraits(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TargetDeviceDescriptionView.DeviceLabelTraits(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100125394()
{
  result = qword_100201F08;
  if (!qword_100201F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201F08);
  }

  return result;
}

unint64_t sub_1001253E8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001BE100, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100125460(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_10012C004(v2, *(a1 + 36), 0, a1);
  sub_100078568(v4, v5);
  return v4;
}

uint64_t sub_1001254DC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000B2714(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000B2714(v3, v5, v2 != 0);
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

  v11 = sub_10012B2D4(v3, v5, v2 != 0, a1);
  sub_1000B2714(v3, v5, v2 != 0);
  return v11;
}

uint64_t sub_100125624@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void, void, uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = _HashTable.startBucket.getter();
  v9 = 1;
  if (v8 != 1 << *(a1 + 32))
  {
    a2(v8, *(a1 + 36), 0, a1);
    v9 = 0;
  }

  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4, v9, 1, v10);
}

uint64_t sub_100125720(uint64_t a1, unint64_t *a2)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.startIndex.getter();
    v7 = v6;
    v8 = __CocoaSet.endIndex.getter();
    v10 = v9;
    v11 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000B2714(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_1000B2714(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = _HashTable.startBucket.getter();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10012B670(v5, v7, v4 != 0, a1, a2);
  v14 = v13;
  sub_1000B2714(v5, v7, v4 != 0);
  return v14;
}

uint64_t sub_100125854(int a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v43 = a5;
  v44 = a4;
  v37 = a3;
  v38 = a1;
  v36 = a2;
  v7 = sub_10003C49C(&qword_1001FCE90);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v17 - 8);
  v42 = v17;
  __chkstk_darwin(v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v39 = *(v20 - 8);
  v40 = v20;
  __chkstk_darwin(v20);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23 = sub_100066608();
  v24 = [v23 presentedViewController];

  if (v24)
  {
    sub_10003E110(0, &qword_1001FCE88);
    if (static NSObject.== infix(_:_:)())
    {
      sub_10003E110(0, &qword_1001FD040);
      v25 = static OS_dispatch_queue.main.getter();
      v26 = swift_allocObject();
      *(v26 + 16) = v36;
      *(v26 + 24) = v37 & 1;
      *(v26 + 32) = v6;
      *(v26 + 40) = v38 & 1;
      v27 = v43;
      v28 = v44;
      *(v26 + 48) = v44;
      *(v26 + 56) = v27;
      aBlock[4] = sub_10012C5A8;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C7F00;
      v29 = _Block_copy(aBlock);
      v30 = v6;
      sub_10003E418(v28, v27);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10012BDA0(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
      sub_10003C49C(&unk_1001FD050);
      sub_1000446A0();
      v31 = v42;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v29);

      (*(v41 + 8))(v19, v31);
      (*(v39 + 8))(v22, v40);
      return swift_endAccess();
    }
  }

  if (v44)
  {
    v44();
  }

  v32 = v6;

  v34 = sub_10012BA70(v33, v32);

  sub_100125624(v34, sub_10012B22C, type metadata accessor for ModalPresentationCoordinator.QueueEntry, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10012BE34(v12);
  }

  else
  {
    sub_10003DBF4(v12, v16);
    sub_100127920(v16, v10);
    sub_10012BE34(v10);
    sub_10003DC58(v16);
  }

  return swift_endAccess();
}

void sub_100125DD8(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(type metadata accessor for DispatchQoS() - 8);
  v10 = __chkstk_darwin();
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*v3 & 1) == 0)
  {
    v12 = v10;
    v13 = a2;
    sub_10003C49C(&unk_1001FEAD0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v15 = qword_10020A4F8;
    *(v14 + 56) = sub_10003E110(0, &qword_1001FD6F0);
    *(v14 + 64) = sub_1000516BC();
    *(v14 + 32) = v15;
    v16 = v15;
    v17 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    *v3 = 1;
    v18 = sub_100066608();
    v35 = [v18 presentedViewController];

    if (v35)
    {
      v19 = v7;
      v20 = v13;
      v21 = a1;
      v22 = v12;
      v23 = v6;
      v24 = v9;
      v25 = sub_100066608();
      v26 = [v25 presentedViewController];

      if (v26)
      {
        sub_10003E110(0, &qword_1001FCE88);
        if (static NSObject.== infix(_:_:)())
        {
          sub_10003E110(0, &qword_1001FD040);
          v32 = static OS_dispatch_queue.main.getter();
          v27 = swift_allocObject();
          *(v27 + 16) = 0;
          *(v27 + 24) = 1;
          *(v27 + 32) = v35;
          *(v27 + 40) = 0;
          *(v27 + 48) = v21;
          *(v27 + 56) = v20;
          aBlock[4] = sub_10012BD84;
          aBlock[5] = v27;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100031FA8;
          aBlock[3] = &unk_1001C7E10;
          v28 = _Block_copy(aBlock);
          v35 = v35;
          sub_10003E418(v21, v20);

          v29 = v33;
          static DispatchQoS.unspecified.getter();
          aBlock[0] = &_swiftEmptyArrayStorage;
          sub_10012BDA0(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
          sub_10003C49C(&unk_1001FD050);
          sub_1000446A0();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v30 = v32;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v28);

          (*(v19 + 8))(v24, v23);
          (*(v34 + 8))(v29, v22);
          return;
        }
      }

      if (v21)
      {
        v21();
      }

      v31 = v35;
    }
  }
}

uint64_t sub_1001262B0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v1 - 8);
  __chkstk_darwin(v1);
  v60 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10003C49C(&qword_1001FCE90);
  v5 = __chkstk_darwin(v4 - 8);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v55 = &v51 - v8;
  __chkstk_darwin(v7);
  v10 = &v51 - v9;
  v11 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v57 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v53 = &v51 - v16;
  __chkstk_darwin(v15);
  v18 = (&v51 - v17);
  sub_1001273C0(*(v0 + 8), v10);
  v56 = v12;
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    return sub_10012BE34(v10);
  }

  v52 = v1;
  sub_10003DBF4(v10, v18);
  v21 = sub_100066608();
  v22 = [v21 presentedViewController];

  if (v22)
  {
  }

  else if ((*v0 & 1) == 0)
  {
    v24 = v18;
    v25 = *v18;

    v27 = sub_10012BA70(v26, v25);

    v28 = v55;
    sub_100125624(v27, sub_10012B22C, type metadata accessor for ModalPresentationCoordinator.QueueEntry, v55);

    if (v19(v28, 1, v11) == 1)
    {
      sub_10012BE34(v28);
    }

    else
    {
      v29 = v53;
      sub_10003DBF4(v28, v53);
      v30 = v54;
      sub_100127920(v29, v54);
      sub_10012BE34(v30);
      sub_10003DC58(v29);
    }

    v31 = v52;
    if (*(v24 + 8) == 1)
    {
      v32 = v24 + *(v11 + 44);
      if ((*(v32 + 32) & 1) == 0)
      {
        v34 = *(v32 + 16);
        v33 = *(v32 + 24);
        v36 = *v32;
        v35 = *(v32 + 8);
        v37 = [v25 popoverPresentationController];
        [v37 setSourceRect:{v36, v35, v34, v33}];

        v38 = [v25 popoverPresentationController];
        if (v38)
        {
          v39 = v38;
          [v38 setPermittedArrowDirections:3];
        }
      }

      v40 = [v25 popoverPresentationController];
      if (v40)
      {
        v41 = v40;
        v42 = sub_100066608();
        v43 = [v42 view];

        [v41 setSourceView:v43];
      }
    }

    sub_10003E110(0, &qword_1001FD040);
    v44 = static OS_dispatch_queue.main.getter();
    v45 = v57;
    sub_10010EDC4(v24, v57);
    v46 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v47 = swift_allocObject();
    sub_10003DBF4(v45, v47 + v46);
    aBlock[4] = sub_10012BFA4;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C7E88;
    v48 = _Block_copy(aBlock);

    v49 = v58;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10012BDA0(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_1000446A0();
    v50 = v60;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v48);

    (*(v62 + 8))(v50, v31);
    (*(v59 + 8))(v49, v61);
    v23 = v24;
    return sub_10003DC58(v23);
  }

  v23 = v18;
  return sub_10003DC58(v23);
}

uint64_t sub_100126A54(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v30 - v15);
  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = &v13[v11[9]];
  *v13 = v5;
  v13[8] = a5;
  *(v13 + 2) = a1;
  v18 = v5;
  Date.init()();
  v13[v11[8]] = a2 & 1;
  *v17 = 0;
  v17[8] = 1;
  v19 = [v18 popoverPresentationController];
  v20 = v19;
  if (v19)
  {
    [v19 sourceRect];
    v31 = v21;
    v32 = v22;
    v30 = v23;
    v33 = v24;

    *&v26 = v30;
    *&v25 = v31;
    *(&v25 + 1) = v32;
    *(&v26 + 1) = v33;
  }

  else
  {
    v25 = 0uLL;
    v26 = 0uLL;
  }

  v27 = &v13[v11[10]];
  v28 = &v13[v11[11]];
  *v28 = v25;
  *(v28 + 1) = v26;
  v28[32] = v20 == 0;
  *v27 = a3;
  *(v27 + 1) = a4;
  sub_10003DBF4(v13, v16);
  sub_10003E418(a3, a4);
  sub_100127134(v16);
  sub_10003DC58(v16);
  return swift_endAccess();
}

uint64_t *sub_100126D24@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void *sub_100126D40@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

Swift::Int sub_100126D60()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(*(v0 + 16));
  type metadata accessor for Date();
  sub_10012BDA0(&qword_100201A20, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100126E24()
{
  NSObject.hash(into:)();
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(*(v0 + 16));
  type metadata accessor for Date();
  sub_10012BDA0(&qword_100201A20, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100126EC8()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(*(v0 + 16));
  type metadata accessor for Date();
  sub_10012BDA0(&qword_100201A20, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100126F88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 != v3)
  {
    return v3 & (v2 ^ 1u);
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 == v6)
  {
    return static Date.< infix(_:_:)();
  }

  else
  {
    return v5 < v6;
  }
}

BOOL sub_100126FCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a1 + 8);
  if (v2 == v3)
  {
    v5 = *(a2 + 16);
    v6 = *(a1 + 16);
    if (v5 == v6)
    {
      v4 = static Date.< infix(_:_:)();
    }

    else
    {
      v4 = v5 < v6;
    }
  }

  else
  {
    v4 = v3 & (v2 ^ 1);
  }

  return (v4 & 1) == 0;
}

BOOL sub_100127034(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    if (v5 == v6)
    {
      v4 = static Date.< infix(_:_:)();
    }

    else
    {
      v4 = v5 < v6;
    }
  }

  else
  {
    v4 = v3 & (v2 ^ 1);
  }

  return (v4 & 1) == 0;
}

uint64_t sub_100127098(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a1 + 8);
  if (v2 != v3)
  {
    return v3 & (v2 ^ 1u);
  }

  v5 = *(a2 + 16);
  v6 = *(a1 + 16);
  if (v5 == v6)
  {
    return static Date.< infix(_:_:)();
  }

  else
  {
    return v5 < v6;
  }
}

uint64_t sub_1001270E0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return static Date.== infix(_:_:)();
  }

  else
  {
    return 0;
  }
}

void sub_100127134(id *a1)
{
  v2 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v21[-v7];
  v9 = sub_10003C49C(&qword_1001FCE90);
  __chkstk_darwin(v9 - 8);
  v11 = &v21[-v10];
  v12 = *a1;

  v14 = sub_10012BA70(v13, v12);

  sub_100125624(v14, sub_10012B22C, type metadata accessor for ModalPresentationCoordinator.QueueEntry, v11);

  LODWORD(v2) = (*(v3 + 48))(v11, 1, v2);
  sub_10012BE34(v11);
  if (v2 == 1)
  {
    v15 = sub_100066608();
    v16 = [v15 presentedViewController];

    if (!v16 || (sub_10003E110(0, &qword_1001FDE30), v17 = v12, v18 = static NSObject.== infix(_:_:)(), v16, v17, (v18 & 1) == 0))
    {
      sub_10010EDC4(a1, v6);
      sub_1001088BC(v8, v6);
      sub_10003DC58(v8);
      v19 = sub_100066608();
      v20 = [v19 presentedViewController];

      if (v20)
      {
      }

      else
      {
        sub_1001262B0();
      }
    }
  }
}

uint64_t sub_1001273C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  v4 = __chkstk_darwin(v41);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v38 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v38 - v11;
  __chkstk_darwin(v10);
  v15 = &v38 - v14;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  if (v18)
  {
    v40 = a2;
    v19 = 0;
    v20 = __clz(__rbit64(v18));
    v21 = (v18 - 1) & v18;
    v22 = (v16 + 63) >> 6;
LABEL_9:
    v25 = *(a1 + 48);
    v39 = v13;
    v26 = *(v13 + 72);
    sub_10010EDC4(v25 + v26 * v20, v12);
    sub_10003DBF4(v12, v15);

    v28 = v41;
    if (v21)
    {
      goto LABEL_16;
    }

LABEL_12:
    while (1)
    {
      v29 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v29 >= v22)
      {

        v35 = v40;
        sub_10003DBF4(v15, v40);
        return (*(v39 + 56))(v35, 0, 1, v28);
      }

      v21 = *(a1 + 56 + 8 * v29);
      ++v19;
      if (v21)
      {
        v19 = v29;
        while (1)
        {
LABEL_16:
          while (1)
          {
            v30 = __clz(__rbit64(v21));
            v21 &= v21 - 1;
            sub_10010EDC4(*(a1 + 48) + (v30 | (v19 << 6)) * v26, v6);
            sub_10003DBF4(v6, v9);
            v31 = v15[8];
            v32 = v9[8];
            if (v31 == v32)
            {
              break;
            }

            if (v32 & (v31 ^ 1))
            {
              goto LABEL_23;
            }

LABEL_11:
            result = sub_10003DC58(v9);
            if (!v21)
            {
              goto LABEL_12;
            }
          }

          v33 = *(v15 + 2);
          v34 = *(v9 + 2);
          if (v33 == v34)
          {
            if (static Date.< infix(_:_:)())
            {
              goto LABEL_23;
            }

            goto LABEL_11;
          }

          if (v33 >= v34)
          {
            goto LABEL_11;
          }

LABEL_23:
          sub_10003DC58(v15);
          result = sub_10003DBF4(v9, v15);
          if (!v21)
          {
            goto LABEL_12;
          }
        }
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 0;
    v22 = (v16 + 63) >> 6;
    while (v22 - 1 != v18)
    {
      v19 = v18 + 1;
      v24 = *(a1 + 64 + 8 * v18);
      v23 -= 64;
      ++v18;
      if (v24)
      {
        v40 = a2;
        v21 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) - v23;
        goto LABEL_9;
      }
    }

    v36 = *(v13 + 56);
    v37 = v41;

    return v36(a2, 1, 1, v37);
  }

  return result;
}

void sub_100127704(id *a1)
{
  v2 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  v3 = a1 + v2[9];
  if ((v3[8] & 1) == 0)
  {
    [*a1 setModalTransitionStyle:*v3];
  }

  v4 = sub_100066608();
  v5 = *a1;
  v6 = *(a1 + v2[8]);
  v7 = (a1 + v2[10]);
  if (*v7)
  {
    v8 = v7[1];
    v10[4] = *v7;
    v10[5] = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100031FA8;
    v10[3] = &unk_1001C7EB0;
    v9 = _Block_copy(v10);
  }

  else
  {
    v9 = 0;
  }

  [v4 presentViewController:v5 animated:v6 completion:v9];
  _Block_release(v9);
}

void sub_10012782C(uint64_t a1, char a2, id a3, char a4, void *a5, uint64_t a6)
{
  if ((a2 & 1) == 0)
  {
    [a3 setModalTransitionStyle:a1];
  }

  v9 = sub_100066608();
  if (a5)
  {
    v10[4] = a5;
    v10[5] = a6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100031FA8;
    v10[3] = &unk_1001C7E38;
    a5 = _Block_copy(v10);
  }

  [v9 dismissViewControllerAnimated:a4 & 1 completion:a5];
  _Block_release(a5);
}

uint64_t sub_100127920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v7 = *v2;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v8 = *(a1 + 8);
  Hasher._combine(_:)(*(a1 + 8));
  v9 = *(a1 + 16);
  Hasher._combine(_:)(v9);
  v28 = v4;
  v10 = *(v4 + 28);
  type metadata accessor for Date();
  sub_10012BDA0(&qword_100201A20, &type metadata accessor for Date);
  v26 = v10;
  v27 = a1;
  dispatch thunk of Hashable.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v7 + 32);
  v13 = v11 & ~v12;
  if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return (*(v25 + 56))(v24, 1, 1, v28);
  }

  v14 = ~v12;
  v15 = *(v25 + 72);
  while (1)
  {
    sub_10010EDC4(*(v7 + 48) + v15 * v13, v6);
    if (v8 == v6[8] && *(v6 + 2) == v9)
    {
      break;
    }

    sub_10003DC58(v6);
LABEL_4:
    v13 = (v13 + 1) & v14;
    if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return (*(v25 + 56))(v24, 1, 1, v28);
    }
  }

  v16 = static Date.== infix(_:_:)();
  sub_10003DC58(v6);
  if ((v16 & 1) == 0)
  {
    goto LABEL_4;
  }

  v17 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v17;
  v29 = *v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100128580();
    v19 = v29;
  }

  v20 = v24;
  sub_10003DBF4(*(v19 + 48) + v15 * v13, v24);
  sub_100129798(v13);
  *v17 = v29;
  return (*(v25 + 56))(v20, 0, 1, v28);
}

uint64_t sub_100127BBC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1001291C4();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_10003E110(0, &qword_100202990);
  v9 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100128764();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_100129AA8(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_100127D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TargetDevice.DeviceType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10012BDA0(&unk_1001FFDD0, &type metadata accessor for TargetDevice.DeviceType);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10012BDA0(&qword_1001FDEB0, &type metadata accessor for TargetDevice.DeviceType);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100128F8C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_100129C48(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

unint64_t sub_100127FFC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = AnyHashable._rawHashValue(seed:)(*(*v1 + 40));
  v5 = -1 << *(v3 + 32);
  v6 = result & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      sub_1000681EC(*(v3 + 48) + 40 * v6, v13);
      v8 = static AnyHashable.== infix(_:_:)();
      result = sub_10003DB48(v13);
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v1;
    v13[0] = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001288B4();
      v10 = v13[0];
    }

    v11 = *(v10 + 48) + 40 * v6;
    v12 = *(v11 + 16);
    *a1 = *v11;
    *(a1 + 16) = v12;
    *(a1 + 32) = *(v11 + 32);
    result = sub_100129F50(v6);
    *v1 = v13[0];
  }

  else
  {
LABEL_5:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100128134(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_10012932C(v4, a1);

      return v6;
    }

    return 0;
  }

  Hasher.init(_seed:)();
  v8 = *(a1 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
  v9 = *(a1 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator + 8);
  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(*(v3 + 48) + 8 * v12) + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
    v15 = *v14 == v8 && v14[1] == v9;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v1;
  v19 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100128BB0(&qword_100201A00);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_10012A108(v12);
  result = v18;
  *v1 = v19;
  return result;
}

uint64_t sub_1001282FC(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1001294BC(v4, a1);

      return v6;
    }

    return 0;
  }

  v27 = v1;
  Hasher.init(_seed:)();
  v28 = *(a1 + 40);
  v8 = [v28 serialNumber];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.hash(into:)();

  v9 = Hasher._finalize()();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(*(v3 + 48) + 8 * v11) + 40);

    v14 = [v13 serialNumber];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = [v28 serialNumber];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v15 == v19 && v17 == v21)
    {
      break;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_19;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_19:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v27;
  v29 = *v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100128BB0(&qword_100201A18);
    v25 = v29;
  }

  v26 = *(*(v25 + 48) + 8 * v11);
  sub_10012A2E0(v11);
  result = v26;
  *v27 = v29;
  return result;
}

void *sub_100128580()
{
  v1 = v0;
  v2 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003C49C(&qword_100201A28);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10010EDC4(*(v6 + 48) + v21, v5);
        result = sub_10003DBF4(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

id sub_100128764()
{
  v1 = v0;
  sub_10003C49C(&qword_100201A30);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_1001288B4()
{
  v1 = v0;
  sub_10003C49C(&unk_100202980);
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_1000681EC(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

void *sub_100128A40()
{
  v1 = v0;
  sub_10003C49C(&qword_100201A38);
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_100078568(v18, *(&v18 + 1));
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

void *sub_100128BB0(uint64_t *a1)
{
  v2 = v1;
  sub_10003C49C(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        *(*(v5 + 48) + 8 * (v15 | (v9 << 6))) = *(*(v3 + 48) + 8 * (v15 | (v9 << 6)));
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_100128CF0()
{
  v1 = v0;
  sub_10003C49C(&qword_100201A40);
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

void *sub_100128E4C()
{
  v1 = v0;
  sub_10003C49C(&qword_100201A48);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_100128F8C()
{
  v1 = v0;
  v2 = type metadata accessor for TargetDevice.DeviceType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003C49C(&qword_100201F10);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1001291C4()
{
  v1 = v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_100108050(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = NSObject._rawHashValue(seed:)(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_10003E110(0, &qword_100202990);
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_100129AA8(v8);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10012932C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  v7 = sub_100108240(v6, v5);
  v19 = v7;
  Hasher.init(_seed:)();
  v8 = *(a2 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
  v9 = *(a2 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator + 8);

  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = (*(*(v7 + 48) + 8 * v12) + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
      v15 = *v14 == v8 && v14[1] == v9;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

  v16 = *(*(v7 + 48) + 8 * v12);
  sub_10012A108(v12);
  v17 = v8 == *(v16 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator) && v9 == *(v16 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator + 8);
  if (v17 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    *v3 = v19;
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001294BC(uint64_t a1, uint64_t a2)
{

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_10010844C(v4, v3);
  v36 = v5;
  Hasher.init(_seed:)();
  v6 = *(a2 + 40);

  v7 = [v6 serialNumber];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.hash(into:)();

  v8 = Hasher._finalize()();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(*(v5 + 48) + 8 * v10) + 40);

      v13 = [v12 serialNumber];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = [v6 serialNumber];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (v14 == v18 && v16 == v20)
      {
        break;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {

        goto LABEL_12;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

LABEL_12:
  v23 = *(*(v5 + 48) + 8 * v10);
  sub_10012A2E0(v10);
  v24 = [v6 serialNumber];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = [*(v23 + 40) serialNumber];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (v25 == v29 && v27 == v31)
  {
    goto LABEL_18;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v33 & 1) == 0)
  {
    __break(1u);
LABEL_18:
  }

  *v35 = v36;
  return v23;
}

uint64_t sub_100129798(int64_t a1)
{
  v27 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  v3 = *(v27 - 8);
  result = __chkstk_darwin(v27);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v26 = (v12 + 1) & v11;
      v13 = *(v3 + 72);
      v14 = v11;
      do
      {
        v15 = v8;
        v16 = v13;
        v17 = v13 * v10;
        sub_10010EDC4(*(v7 + 48) + v13 * v10, v6);
        Hasher.init(_seed:)();
        v18 = v14;
        NSObject.hash(into:)();
        Hasher._combine(_:)(v6[8]);
        Hasher._combine(_:)(*(v6 + 2));
        type metadata accessor for Date();
        sub_10012BDA0(&qword_100201A20, &type metadata accessor for Date);
        dispatch thunk of Hashable.hash(into:)();
        v19 = Hasher._finalize()();
        sub_10003DC58(v6);
        v20 = v19 & v18;
        v14 = v18;
        if (a1 >= v26)
        {
          if (v20 < v26)
          {
            v13 = v16;
            goto LABEL_5;
          }

          v13 = v16;
          if (a1 < v20)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v13 = v16;
          if (v20 < v26 && a1 < v20)
          {
            goto LABEL_5;
          }
        }

        v21 = v13 * a1;
        if (v13 * a1 < v17 || *(v7 + 48) + v13 * a1 >= (*(v7 + 48) + v17 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v10;
        if (v21 != v17)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v10;
        }

LABEL_5:
        v10 = (v10 + 1) & v14;
        v8 = v15;
      }

      while (((*(v15 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v7 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v24;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_100129AA8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100129C48(int64_t a1)
{
  v3 = type metadata accessor for TargetDevice.DeviceType();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_10012BDA0(&unk_1001FFDD0, &type metadata accessor for TargetDevice.DeviceType);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_100129F50(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1000681EC(*(v3 + 48) + 40 * v6, v22);
        v12 = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
        sub_10003DB48(v22);
        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = v16 + 40 * v2;
            v18 = (v16 + 40 * v6);
            if (v2 != v6 || v17 >= v18 + 40)
            {
              v10 = *v18;
              v11 = v18[1];
              *(v17 + 32) = *(v18 + 4);
              *v17 = v10;
              *(v17 + 16) = v11;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10012A108(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10012A2E0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        v11 = *(v10 + 40);

        v12 = [v11 serialNumber];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        String.hash(into:)();

        v13 = Hasher._finalize()();

        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 8 * v2);
          v17 = (v15 + 8 * v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10012A4E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10003C49C(&qword_100201A28);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v33 = *(v31 + 72);
    sub_10010EDC4(v19 + v33 * (v16 | (v14 << 6)), v10);
    Hasher.init(_seed:)();
    NSObject.hash(into:)();
    Hasher._combine(_:)(v10[8]);
    Hasher._combine(_:)(*(v10 + 2));
    type metadata accessor for Date();
    sub_10012BDA0(&qword_100201A20, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      a4 = v30;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    a4 = v30;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_10003DBF4(v10, *(v11 + 48) + v23 * v33);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10012A804(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10003C49C(&qword_100201A30);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10012A9F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10003C49C(&qword_100201A38);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v18 = *v16;
    v17 = v16[1];
    Hasher.init(_seed:)();
    if (v17 >= 9)
    {

      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(qword_1001853F0[v17]);
      sub_100078568(v18, v17);
    }

    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_30;
        }
      }

      goto LABEL_34;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v18;
    v27[1] = v17;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10012AC48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for TargetDevice.DeviceType();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10003C49C(&qword_100201F10);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10012BDA0(&unk_1001FFDD0, &type metadata accessor for TargetDevice.DeviceType);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10012AF70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10003C49C(&unk_100202980);
  result = static _SetStorage.allocate(capacity:)();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    sub_1000681EC(*(a4 + 48) + 40 * (v13 | (v11 << 6)), v28);
    result = AnyHashable._rawHashValue(seed:)(*(v6 + 40));
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v6 + 48) + 40 * v19;
    v25 = v28[0];
    v26 = v28[1];
    *(v24 + 32) = v29;
    *v24 = v25;
    *(v24 + 16) = v26;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_10012B194(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_10012B888(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

uint64_t sub_10012B22C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 48);
  v6 = v5 + *(*(type metadata accessor for ModalPresentationCoordinator.QueueEntry() - 8) + 72) * result;

  return sub_10010EDC4(v6, a4);
}

uint64_t sub_10012B2D4(uint64_t result, int a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for CardState();
      swift_dynamicCast();
      return v21;
    }

    goto LABEL_27;
  }

  if (a3)
  {
    result = __CocoaSet.Index.age.getter();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    __CocoaSet.Index.element.getter();
    type metadata accessor for CardState();
    swift_dynamicCast();
    Hasher.init(_seed:)();
    v6 = [*(v21 + 40) serialNumber];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.hash(into:)();

    v7 = Hasher._finalize()();
    v8 = -1 << *(a4 + 32);
    v5 = v7 & ~v8;
    if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(*(a4 + 48) + 8 * v5) + 40);

        v11 = [v10 serialNumber];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = [*(v21 + 40) serialNumber];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        if (v12 == v16 && v14 == v18)
        {
          goto LABEL_20;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {
        }

        v5 = (v5 + 1) & v9;
      }

      while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
    }

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v5)
  {
    goto LABEL_25;
  }

  if (((*(a4 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_20:
  }
}

uint64_t sub_10012B5B0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for TargetDevice.DeviceType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void sub_10012B670(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10003E110(0, a5);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10003E110(0, a5);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v5 = v16;
    v9 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v10 = -1 << *(a4 + 32);
    a1 = v9 & ~v10;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * a1);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v11;
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

  v14 = *(*(a4 + 48) + 8 * a1);

  v15 = v14;
}

uint64_t sub_10012B888(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v24 = a4;
  v22 = a1;
  v5 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v10 << 6);
    sub_10010EDC4(*(a3 + 48) + *(v6 + 72) * v18, v9);
    sub_10003E110(0, &qword_1001FCE88);
    v19 = static NSObject.== infix(_:_:)();
    result = sub_10003DC58(v9);
    if (v19)
    {
      *(v22 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10012A4E0(v22, v21, v23, a3);
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      goto LABEL_15;
    }

    v17 = *(a3 + 56 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10012BA70(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  v30 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v27 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v27;
  v11 = a2;
  v12 = v11;
  if (v9 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26[1] = v26;
    v26[2] = v3;
    __chkstk_darwin(v11);
    v28 = v26 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v10);
    v29 = 0;
    v10 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v3 = (v13 + 63) >> 6;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v19 = v16 | (v10 << 6);
      sub_10010EDC4(*(a1 + 48) + *(v30 + 72) * v19, v8);
      sub_10003E110(0, &qword_1001FCE88);
      v20 = static NSObject.== infix(_:_:)();
      sub_10003DC58(v8);
      if (v20)
      {
        *&v28[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_10012A4E0(v28, v27, v29, a1);

          return v22;
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v3)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v12;
  v22 = sub_10012B194(v24, v27, a1, v25);

  return v22;
}

uint64_t sub_10012BD88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10012BDA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ModalPresentationCoordinator.QueueEntry()
{
  result = qword_100201F70;
  if (!qword_100201F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10012BE34(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FCE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10012BE9C()
{
  v1 = (type metadata accessor for ModalPresentationCoordinator.QueueEntry() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  if (*(v0 + v3 + v1[12]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_10012BFA4()
{
  v1 = *(type metadata accessor for ModalPresentationCoordinator.QueueEntry() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_100127704(v2);
}

uint64_t sub_10012C004(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10012C058()
{
  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10012C0A0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10012C10C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_10012C1CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10012C270()
{
  sub_10003E110(319, &qword_1001FDE30);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_10012C36C();
      if (v2 <= 0x3F)
      {
        sub_10012C3BC();
        if (v3 <= 0x3F)
        {
          sub_10012C420();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10012C36C()
{
  if (!qword_100201F80)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100201F80);
    }
  }
}

void sub_10012C3BC()
{
  if (!qword_100201F88)
  {
    sub_10003C4E4(&qword_100201F90);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100201F88);
    }
  }
}

void sub_10012C420()
{
  if (!qword_100201F98)
  {
    type metadata accessor for CGRect(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100201F98);
    }
  }
}

unint64_t sub_10012C49C()
{
  result = qword_100201FE0;
  if (!qword_100201FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201FE0);
  }

  return result;
}

unint64_t sub_10012C4F4()
{
  result = qword_100201FE8;
  if (!qword_100201FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201FE8);
  }

  return result;
}

__n128 sub_10012C5C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10012C5E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10012C630(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10012C6E4@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, unint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v37 = a8;
  *(&v33 + 1) = a2;
  v34 = a3;
  v36 = a10;
  v16 = a7 & 1;
  v17 = sub_10003C49C(&qword_1001FF698);
  __chkstk_darwin(v17 - 8);
  v19 = &v32 - v18;
  *&v40 = 0;
  State.init(wrappedValue:)();
  v20 = *(&v45 + 1);
  v38 = v45;
  v57 = v16;
  v35 = a6;
  LOBYTE(v40) = (a7 & 1) == 0 && a6 <= 0x18 && ((1 << a6) & 0x1010100) != 0;

  State.init(wrappedValue:)();
  v21 = v45;
  *&v33 = *(&v45 + 1);
  if (a5)
  {
  }

  else
  {
    if (a1 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v22 > a4)
    {
      *&v40 = a4;
      State.init(wrappedValue:)();

      v20 = *(&v45 + 1);
      v38 = v45;
    }
  }

  sub_10003E110(0, &qword_100201E38);
  v23 = [objc_opt_self() mainRunLoop];
  v24 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  v25 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_10003DD84(v19, &qword_1001FF698);
  *&v45 = v25;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_10012EED4(&qword_100201E40, &type metadata accessor for NSTimer.TimerPublisher);
  v26 = ConnectablePublisher.autoconnect()();

  *&v40 = v26;
  sub_10003C49C(&qword_100201DC8);
  State.init(wrappedValue:)();
  v27 = v45;
  v40 = xmmword_100185440;
  *v41 = 0x3FF0000000000000;
  *&v41[8] = v45;
  *&v41[24] = v38;
  v42.n128_u64[0] = v20;
  v42.n128_u8[8] = v21;
  *(&v42.n128_u32[2] + 1) = v58[0];
  v42.n128_u32[3] = *(v58 + 3);
  v43 = v33;
  *&v44[0] = v34;
  *(&v44[0] + 1) = a1;
  *&v44[1] = v35;
  BYTE8(v44[1]) = v57;
  v45 = xmmword_100185440;
  v46 = 0x3FF0000000000000;
  v47 = v27;
  v48 = v38;
  v49 = v20;
  v50 = v21;
  *v51 = v58[0];
  *&v51[3] = *(v58 + 3);
  v52 = v33;
  v53 = v34;
  v54 = a1;
  v55 = v35;
  v56 = v57;
  v28 = v37;
  sub_100044704(&v40, &v39, v37);
  sub_10003DD84(&v45, v28);
  v29 = v44[0];
  *(a9 + 64) = v43;
  *(a9 + 80) = v29;
  *(a9 + 89) = *(v44 + 9);
  v30 = *v41;
  *a9 = v40;
  *(a9 + 16) = v30;
  result = v42;
  *(a9 + 32) = *&v41[16];
  *(a9 + 48) = result;
  return result;
}

uint64_t sub_10012CAB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v43 = type metadata accessor for ScrollBounceBehavior();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ScrollIndicatorVisibility();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003C49C(&qword_100201FF8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  v44 = sub_10003C49C(&qword_100202000);
  v40 = *(v44 - 8);
  __chkstk_darwin(v44);
  v11 = &v38 - v10;
  v50 = sub_10003C49C(&qword_100202008);
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v38 - v12;
  v52 = sub_10003C49C(&qword_100202010);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = &v38 - v13;
  v47 = sub_10003C49C(&qword_100202018);
  __chkstk_darwin(v47);
  v46 = &v38 - v14;
  v54 = v2;
  static Axis.Set.vertical.getter();
  sub_10003C49C(&qword_100202020);
  sub_10005C71C(&qword_100202028, &qword_100202020);
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.hidden.getter();
  sub_10003C49C(&qword_1001FF278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC10;
  v16 = static Axis.Set.vertical.getter();
  *(inited + 32) = v16;
  v17 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v17;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v16)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v17)
  {
    Axis.Set.init(rawValue:)();
  }

  v18 = sub_10005C71C(&qword_100202030, &qword_100201FF8);
  View.scrollIndicators(_:axes:)();
  (*(v38 + 8))(v5, v39);
  (*(v7 + 8))(v9, v6);
  v19 = v41;
  static ScrollBounceBehavior.basedOnSize.getter();
  v20 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v20)
  {
    Axis.Set.init(rawValue:)();
  }

  *&v55 = v6;
  *(&v55 + 1) = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v45;
  v23 = v44;
  View.scrollBounceBehavior(_:axes:)();
  (*(v42 + 8))(v19, v43);
  (*(v40 + 8))(v11, v23);
  v58 = *(v2 + 16);
  v59 = *(v2 + 32);
  sub_10003C49C(&qword_100202038);
  State.projectedValue.getter();
  v58 = v55;
  v59 = v56;
  v60 = v57;
  v24 = swift_allocObject();
  v25 = *(v2 + 48);
  *(v24 + 48) = *(v2 + 32);
  *(v24 + 64) = v25;
  *(v24 + 80) = *(v2 + 64);
  *(v24 + 96) = *(v2 + 80);
  v26 = *(v2 + 16);
  *(v24 + 16) = *v2;
  *(v24 + 32) = v26;
  sub_10012E9A4(v2, &v55);
  sub_10003C49C(&qword_100202040);
  *&v55 = v23;
  *(&v55 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10012E9DC();
  sub_10012EA30();
  v27 = v48;
  v28 = v50;
  View.fullScreenCover<A, B>(item:onDismiss:content:)();

  (*(v49 + 8))(v22, v28);
  v29 = static Alignment.center.getter();
  v31 = v30;
  v32 = swift_allocObject();
  v33 = *(v2 + 48);
  *(v32 + 48) = *(v2 + 32);
  *(v32 + 64) = v33;
  *(v32 + 80) = *(v2 + 64);
  *(v32 + 96) = *(v2 + 80);
  v34 = *(v2 + 16);
  *(v32 + 16) = *v2;
  *(v32 + 32) = v34;
  v35 = v46;
  (*(v51 + 32))(v46, v27, v52);
  v36 = (v35 + *(v47 + 36));
  *v36 = sub_10012EB18;
  v36[1] = v32;
  v36[2] = v29;
  v36[3] = v31;
  sub_10012EB20(v35, v53);
  return sub_10012E9A4(v2, &v55);
}

uint64_t sub_10012D358@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v36 = sub_10003C49C(&qword_100202070);
  __chkstk_darwin(v36);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = *(a1 + 64);
  if (v8 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_10012EE5C(&v64);
    goto LABEL_8;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = swift_allocObject();
  v10 = *(a1 + 48);
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = v10;
  *(v9 + 80) = *(a1 + 64);
  *(v9 + 96) = *(a1 + 80);
  v11 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v11;

  sub_10012E9A4(a1, &v64);
  sub_10012C6E4(v8, sub_10012ED6C, v9, 0, 1, 0, 1, &qword_1002020C0, &v76, &unk_1001855E8);
  v82 = *(a1 + 40);
  v83 = *(a1 + 56);
  v64 = *(a1 + 40);
  *&v65 = *(a1 + 56);
  sub_10003C49C(&qword_1001FE090);
  State.wrappedValue.getter();
  v64 = v82;
  *&v65 = v83;
  State.wrappedValue.getter();
  if (qword_1001FC828 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(v51 + 9) = *&v81[9];
  v50[12] = v76;
  v50[13] = v77;
  v50[16] = v80;
  v51[0] = *v81;
  v50[14] = v78;
  v50[15] = v79;
  v54 = v78;
  v55 = v79;
  v52 = v76;
  v53 = v77;
  v56 = v80;
  v57 = *v81;
  v60 = v51[3];
  v61 = v51[4];
  v58 = v51[1];
  v59 = v51[2];
  v63 = 0uLL;
  *&v62 = sub_10012DC28;
  *(&v62 + 1) = 0;
  Int.id.getter(&v52);
  v72 = v60;
  v73 = v61;
  v74 = v62;
  v75 = v63;
  v68 = v56;
  v69 = v57;
  v70 = v58;
  v71 = v59;
  v64 = v52;
  v65 = v53;
  v66 = v54;
  v67 = v55;
LABEL_8:
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_10003C49C(&qword_100202078);
  v12 = *(*(a1 + 72) + 16);
  *&v50[0] = 0;
  *(&v50[0] + 1) = v12;
  swift_getKeyPath();
  v13 = swift_allocObject();
  v14 = *(a1 + 48);
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(a1 + 64);
  *(v13 + 96) = *(a1 + 80);
  v15 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v15;
  sub_10012E9A4(a1, &v52);
  sub_10003C49C(&qword_1001FF2A0);
  sub_10003C49C(&qword_100202080);
  sub_10009DB54();
  sub_10012ED7C();
  ForEach<>.init(_:id:content:)();
  v16 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v17 = &v7[*(v36 + 36)];
  *v17 = v16;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  v46 = v72;
  v47 = v73;
  v48 = v74;
  v49 = v75;
  v42 = v68;
  v43 = v69;
  v44 = v70;
  v45 = v71;
  v38 = v64;
  v39 = v65;
  v40 = v66;
  v41 = v67;
  v22 = v37;
  sub_100044704(v7, v37, &qword_100202070);
  v23 = v47;
  v50[8] = v46;
  v50[9] = v47;
  v24 = v48;
  v25 = v49;
  v50[10] = v48;
  v50[11] = v49;
  v26 = v42;
  v27 = v43;
  v50[4] = v42;
  v50[5] = v43;
  v28 = v44;
  v29 = v45;
  v50[6] = v44;
  v50[7] = v45;
  v30 = v38;
  v31 = v39;
  v50[0] = v38;
  v50[1] = v39;
  v32 = v40;
  v33 = v41;
  v50[2] = v40;
  v50[3] = v41;
  a2[8] = v46;
  a2[9] = v23;
  a2[10] = v24;
  a2[11] = v25;
  a2[4] = v26;
  a2[5] = v27;
  a2[6] = v28;
  a2[7] = v29;
  *a2 = v30;
  a2[1] = v31;
  a2[2] = v32;
  a2[3] = v33;
  v34 = sub_10003C49C(&qword_100202098);
  sub_100044704(v22, a2 + *(v34 + 48), &qword_100202070);
  sub_100044704(v50, &v52, &qword_1002020A0);
  sub_10003DD84(v7, &qword_100202070);
  sub_10003DD84(v22, &qword_100202070);
  v60 = v46;
  v61 = v47;
  v62 = v48;
  v63 = v49;
  v56 = v42;
  v57 = v43;
  v58 = v44;
  v59 = v45;
  v52 = v38;
  v53 = v39;
  v54 = v40;
  v55 = v41;
  return sub_10003DD84(&v52, &qword_1002020A0);
}

double sub_10012D90C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  v7 = *(a2 + 48);
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(a2 + 64);
  v8 = *(a2 + 80);
  v9 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v9;
  *(v6 + 96) = v8;
  *(v6 + 104) = a1;
  sub_10012E9A4(a2, v12);
  sub_10003C49C(&qword_1002020C8);
  sub_10012EFEC();
  Button.init(action:label:)();
  LOBYTE(a2) = static Edge.Set.all.getter();
  v10 = a3 + *(sub_10003C49C(&qword_100202118) + 36);
  *v10 = a2;
  result = 0.0;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 1;
  return result;
}

double sub_10012DA24@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(systemName:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  LOBYTE(v2) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  LOBYTE(v22) = 1;
  v21[8] = 0;
  v15 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = static Color.black.getter();
  v18 = static Edge.Set.all.getter();
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 48) = v12;
  *(a1 + 56) = v14;
  *(a1 + 64) = 0;
  *(a1 + 72) = KeyPath;
  *(a1 + 80) = v15;
  v19 = v23;
  *(a1 + 88) = v22;
  *(a1 + 104) = v19;
  result = *&v24;
  *(a1 + 120) = v24;
  *(a1 + 136) = v17;
  *(a1 + 144) = v18;
  return result;
}

void sub_10012DC28()
{
  sub_10003E110(0, &qword_100201438);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [ObjCClassFromMetadata appearance];
  v2 = objc_opt_self();
  v3 = [v2 labelColor];
  [v1 setCurrentPageIndicatorTintColor:v3];

  v4 = [ObjCClassFromMetadata appearance];
  v5 = [v2 secondaryLabelColor];
  [v4 setPageIndicatorTintColor:v5];
}

void *sub_10012DD38@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*result < *(*(a2 + 72) + 16))
  {

    sub_10012DE08(&v8);

    v4 = v8;
    v7 = v9;
    v5 = v10;
    v6 = v11;
    result = static Edge.Set.bottom.getter();
    *a3 = v4;
    *(a3 + 8) = v7;
    *(a3 + 24) = v5;
    *(a3 + 32) = v6;
    *(a3 + 40) = result;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 1;
    return result;
  }

  __break(1u);
  return result;
}

__n128 sub_10012DE08@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1;
  v4 = objc_allocWithZone(NSMutableAttributedString);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithString:v5];

  v7 = [objc_allocWithZone(UILabel) init];
  v8 = _UISolariumEnabled();
  v9 = &UIFontTextStyleTitle2;
  if (!v8)
  {
    v9 = &UIFontTextStyleBody;
  }

  v10 = *v9;
  v11 = [objc_opt_self() preferredFontForTextStyle:v10];

  [v7 setFont:v11];
  LODWORD(v10) = _UISolariumEnabled();
  v12 = objc_opt_self();
  v13 = &selRef_secondaryLabelColor;
  if (!v10)
  {
    v13 = &selRef_labelColor;
  }

  v14 = [v12 *v13];
  [v7 setTextColor:v14];

  [v7 setNumberOfLines:0];
  [v7 setAdjustsFontForContentSizeCategory:1];
  v15 = *(v1 + 80);
  if (v15 == 1)
  {
    v53.n128_u64[0] = dispatch thunk of CustomStringConvertible.description.getter();
    v53.n128_u64[1] = v16;
    v17._countAndFlagsBits = 0x2E656C637269632ELL;
    v17._object = 0xEC0000006C6C6966;
    String.append(_:)(v17);
    v18 = String._bridgeToObjectiveC()();

    v19 = [objc_opt_self() systemImageNamed:v18];

    if (v19)
    {
      v20 = [objc_opt_self() textAttachmentWithImage:v19];
      sub_10003C49C(&qword_1002020A8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10017EC00;
      v51 = v19;
      v52 = v2;
      *(inited + 32) = NSForegroundColorAttributeName;
      v22 = objc_opt_self();
      v23 = NSForegroundColorAttributeName;
      v24 = [v22 systemBlueColor];
      *(inited + 64) = sub_10003E110(0, &qword_100202970);
      *(inited + 40) = v24;
      sub_1000D6020(inited);
      swift_setDeallocating();
      sub_10003DD84(inited + 32, &qword_100200718);
      type metadata accessor for Key(0);
      v50 = sub_10012EED4(&qword_1001FCCE0, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v26 = [objc_opt_self() attributedStringWithAttachment:v20 attributes:isa];

      v27 = objc_allocWithZone(NSAttributedString);
      v28 = String._bridgeToObjectiveC()();
      v29 = [v27 initWithString:v28];

      [v26 appendAttributedString:v29];
      v30 = v26;
      [v30 size];
      v32 = v31;
      v33 = [objc_allocWithZone(NSMutableParagraphStyle) init];
      sub_10003C49C(&unk_1001FD020);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_10017EBF0;
      sub_1000D6148(_swiftEmptyArrayStorage);
      v35 = objc_allocWithZone(NSTextTab);
      type metadata accessor for OptionKey(0);
      sub_10012EED4(&qword_1001FCD58, type metadata accessor for OptionKey);
      v36 = Dictionary._bridgeToObjectiveC()().super.isa;

      v37 = [v35 initWithTextAlignment:0 location:v36 options:v32];

      *(v34 + 32) = v37;
      sub_10003E110(0, &qword_1002020B0);
      v38 = Array._bridgeToObjectiveC()().super.isa;

      [v33 setTabStops:v38];

      [v33 setHeadIndent:v32];
      [v30 appendAttributedString:v6];

      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_10017EC00;
      *(v39 + 32) = NSParagraphStyleAttributeName;
      *(v39 + 64) = sub_10003E110(0, &qword_1002020B8);
      *(v39 + 40) = v33;
      v6 = v30;
      v40 = NSParagraphStyleAttributeName;
      v41 = v33;
      v2 = v52;
      v42 = v41;
      sub_1000D6020(v39);
      swift_setDeallocating();
      sub_10003DD84(v39 + 32, &qword_100200718);
      v43 = Dictionary._bridgeToObjectiveC()().super.isa;
      v15 = 1;

      v44 = [v6 length];

      [v6 addAttributes:v43 range:{0, v44}];
    }
  }

  v45 = _UISolariumEnabled();
  if (v15)
  {
    v46 = 4;
  }

  else
  {
    v46 = 1;
  }

  if (v45)
  {
    v47 = 4;
  }

  else
  {
    v47 = v46;
  }

  [v7 setTextAlignment:{v47, v50}];
  [v7 setAttributedText:v6];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v48 = *(v2 + 8);
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();

  result = v53;
  a1->n128_u64[0] = v7;
  a1->n128_u64[1] = v48;
  a1[1] = v53;
  a1[2].n128_u64[0] = v54;
  return result;
}

uint64_t sub_10012E548@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView();
  __chkstk_darwin(v6 - 8);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(a2 + 64);
  v11 = objc_opt_self();

  v12 = [objc_msgSend(v11 "currentPlatform")];
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = 16;
  }

  else
  {
    v13 = 0;
  }

  sub_1000FB9F8(v10, v9, v13, v12 ^ 1, v8);
  KeyPath = swift_getKeyPath();
  v20 = *(a2 + 40);
  v21 = *(a2 + 56);
  sub_10003C49C(&qword_1001FE090);
  State.wrappedValue.getter();
  v15 = v19[0];
  v16 = v19[1];
  sub_1000FD270(v8, a3);
  result = sub_10003C49C(&qword_100202040);
  v18 = (a3 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = v15;
  v18[2] = v16;
  return result;
}

double sub_10012E6C4@<D0>(_OWORD *a1@<X8>)
{
  sub_10006D4A4();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10012E760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = static Color.clear.getter();
  (*(v7 + 16))(&v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v6);
  v10 = (*(v7 + 80) + 104) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = *(a2 + 48);
  *(v11 + 48) = *(a2 + 32);
  *(v11 + 64) = v12;
  *(v11 + 80) = *(a2 + 64);
  *(v11 + 96) = *(a2 + 80);
  v13 = *(a2 + 16);
  *(v11 + 16) = *a2;
  *(v11 + 32) = v13;
  (*(v7 + 32))(v11 + v10, &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v6);
  *a3 = v9;
  a3[1] = sub_10012EC6C;
  a3[2] = v11;
  a3[3] = 0;
  a3[4] = 0;
  return sub_10012E9A4(a2, v16);
}

uint64_t sub_10012E8D8()
{
  GeometryProxy.size.getter();
  sub_10003C49C(&qword_1001FE090);
  return State.wrappedValue.setter();
}

unint64_t sub_10012E9DC()
{
  result = qword_100202048;
  if (!qword_100202048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202048);
  }

  return result;
}

unint64_t sub_10012EA30()
{
  result = qword_100202050;
  if (!qword_100202050)
  {
    sub_10003C4E4(&qword_100202040);
    sub_10012EED4(&qword_100202058, type metadata accessor for SelfServiceInstructionsFullScreenViewerView);
    sub_10005C71C(&qword_100202060, &qword_100202068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202050);
  }

  return result;
}

uint64_t sub_10012EB20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_100202018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012EB90()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}