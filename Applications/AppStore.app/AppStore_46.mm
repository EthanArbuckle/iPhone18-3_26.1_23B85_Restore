uint64_t sub_100523F04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 88) = a5;
  *(v5 + 180) = a4;
  type metadata accessor for LogMessage.StringInterpolation();
  *(v5 + 96) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 104) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 112) = v7;
  *(v5 + 120) = v6;

  return _swift_task_switch(sub_100523FCC, v7, v6);
}

uint64_t sub_100523FCC()
{
  if (*(v0 + 180) == 1)
  {
    if (qword_10096E888 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for OSLogger();
    *(v0 + 128) = v1;
    *(v0 + 136) = sub_1000056A8(v1, qword_10098A190);
    *(v0 + 144) = sub_10002849C(&unk_100972A10);
    v2 = *(type metadata accessor for LogMessage() - 8);
    *(v0 + 152) = *(v2 + 72);
    *(v0 + 176) = *(v2 + 80);
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    static LogMessage.identity(_:)();
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    v3 = type metadata accessor for AppUpdatesDataSource();
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = sub_1005243E0;

    return BaseObjectGraph.inject<A>(_:)(v0 + 72, v3, v3);
  }

  else
  {

    if (qword_10096E888 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 88);
    v6 = type metadata accessor for OSLogger();
    sub_1000056A8(v6, qword_10098A190);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    static LogMessage.identity(_:)();
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    v7 = [objc_opt_self() defaultCenter];
    type metadata accessor for UpdateStore();
    v8 = static UpdateStore.didChangeNotification.getter();
    [v7 addObserver:v5 selector:"refreshUpdatesCount" name:v8 object:0];

    if (*(v5 + qword_10098A1E8))
    {
      sub_10052659C();
    }

    else
    {
      sub_100527974();
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1005243E0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1005245C0;
  }

  else
  {
    v5 = sub_10052451C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10052451C()
{
  v1 = v0[11];

  v2 = qword_10098A1E8;
  v3 = *(v1 + qword_10098A1E8);
  *(v1 + qword_10098A1E8) = v0[9];

  if (*(v1 + v2))
  {
    sub_10052659C();
  }

  else
  {
    sub_100527974();
  }

  sub_100526C64();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005245C0()
{

  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100819160;
  v1._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_1000056E0(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894((v0 + 2), &unk_1009711D0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v6 = v0[1];

  return v6();
}

void sub_10052475C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = qword_10098A1D8;
  v6 = *&v2[qword_10098A1D8];
  if (a2)
  {
    if (v6)
    {
      v8 = v6;
      sub_10049C2CC(a1, a2);
    }

    else
    {
      v9 = objc_allocWithZone(type metadata accessor for CountBadgeView());
      v10 = sub_10049BD08(0, a1, a2);
      [v3 addSubview:v10];
      v8 = *&v3[v5];
      *&v3[v5] = v10;
    }

    [v3 setNeedsLayout];
  }

  else
  {
    if (v6)
    {
      [v6 removeFromSuperview];
      v6 = *&v2[v5];
    }

    *&v2[v5] = 0;
  }
}

void sub_100524860()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for AccountButton();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  [v0 bounds];
  Width = CGRectGetWidth(v13);
  [v0 bounds];
  Height = CGRectGetHeight(v14);
  if (Height >= Width)
  {
    Height = Width;
  }

  v3 = floor(Height * 0.5);
  v4 = [v0 layer];
  [v4 cornerRadius];
  v6 = v5;

  if (vabdd_f64(v6, v3) > COERCE_DOUBLE(1))
  {
    v7 = [v0 layer];
    [v7 setCornerRadius:v3];
  }

  v8 = *&v0[qword_10098A1D8];
  if (v8)
  {
    v9 = v8;
    [v0 frame];
    [v9 sizeThatFits:{v10, v11}];
    [v0 bounds];
    CGRectGetMaxX(v15);
    [v0 bounds];
    CGRectGetMinY(v16);
    [v0 bounds];
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v9 setFrame:?];
  }
}

void sub_100524A18(void *a1)
{
  v1 = a1;
  sub_100524860();
}

void sub_100524A60(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for AccountButton();
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, "invalidateIntrinsicContentSize");
  v2 = &v1[qword_10098A1D0];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 1;
}

double sub_100524ACC(void *a1)
{
  v1 = a1;
  sub_100524B10();
  v3 = v2;

  return v3;
}

void sub_100524B10()
{
  v1 = type metadata accessor for FontSource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &v0[qword_10098A1D0];
  if (v0[qword_10098A1D0 + 16])
  {
    if (qword_10096DC78 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for FontUseCase();
    v7 = sub_1000056A8(v6, qword_1009D0500);
    v8 = [v0 traitCollection];
    (*(*(v6 - 8) + 16))(v4, v7, v6);
    (*(v2 + 104))(v4, enum case for FontSource.useCase(_:), v1);
    v19[3] = v1;
    v19[4] = &protocol witness table for FontSource;
    v9 = sub_1000056E0(v19);
    (*(v2 + 16))(v9, v4, v1);
    CGFloat.scalingLike(_:with:)();
    v11 = v10;
    (*(v2 + 8))(v4, v1);
    sub_100007000(v19);
    v12 = floor(v11);
    Main = JUScreenClassGetMain();

    if (Main == 1)
    {
      v14 = v12 + -5.0;
    }

    else
    {
      v14 = v12;
    }

    [v0 bounds];
    Width = CGRectGetWidth(v20);
    [v0 bounds];
    Height = CGRectGetHeight(v21);
    if (Height >= Width)
    {
      Height = Width;
    }

    if (Height >= v14 || Height <= 0.0)
    {
      Height = v14;
    }

    *v5 = Height;
    v5[1] = Height;
    *(v5 + 16) = 0;
  }
}

void sub_100524DBC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v1 - 8);
  v52 = &v43 - v2;
  v47 = type metadata accessor for FlowOrigin();
  v44 = *(v47 - 8);
  __chkstk_darwin(v47);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FlowAnimationBehavior();
  v5 = *(v46 - 8);
  __chkstk_darwin(v46);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for FlowPresentationContext();
  v45 = *(v49 - 8);
  __chkstk_darwin(v49);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  v15 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v15 - 8);
  v17 = &v43 - v16;
  v18 = type metadata accessor for FlowPage();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_opt_self() ams_shieldSignInOrCreateFlows];
  v53 = v17;
  v54 = v0;
  if (v22)
  {
    v23 = v5;
    v24 = v4;
    type metadata accessor for CommerceDialogHandler();
    BaseObjectGraph.inject<A>(_:)();
    v25 = v57;
    v26 = CommerceDialogHandler.presentingViewController.getter();

    if (v26)
    {
      if (qword_10096E888 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for OSLogger();
      sub_1000056A8(v27, qword_10098A190);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B1890;
      static LogMessage.identity(_:)();
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      sub_100525924(v26);

      return;
    }

    v4 = v24;
    v5 = v23;
    v17 = v53;
  }

  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  (*(v19 + 104))(v21, enum case for FlowPage.account(_:), v18);
  v28 = type metadata accessor for URL();
  (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
  v29 = type metadata accessor for ReferrerData();
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  v55 = 0u;
  v56 = 0u;
  sub_100525664();
  v30 = v49;
  ObjectType = *(v45 + 104);
  ObjectType(v10, enum case for FlowPresentationContext.infer(_:), v49);
  (*(v5 + 104))(v50, enum case for FlowAnimationBehavior.infer(_:), v46);
  (*(v44 + 104))(v4, enum case for FlowOrigin.inapp(_:), v47);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v31 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v32 = ASKDeviceTypeGetCurrent();
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
  {

    v37 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v37 = &enum case for FlowPresentationContext.presentModal(_:);
    if (v38)
    {
      v37 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
    }
  }

  ObjectType(v51, *v37, v30);
  FlowAction.presentationContext.setter();
  v39 = *(v54 + qword_10098A1B0);
  v40 = sub_10002849C(&unk_100974490);
  v41 = v52;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v42 = *(v40 - 8);
  if ((*(v42 + 48))(v41, 1, v40) == 1)
  {

    sub_10002B894(v41, &unk_100972A00);
  }

  else
  {
    sub_1005F9C8C(v31, 1, v39, v41);

    (*(v42 + 8))(v41, v40);
  }
}

uint64_t sub_100525664()
{
  v0 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v0 - 8);
  sub_10002849C(&unk_10098A308);
  v1 = type metadata accessor for MetricsFieldInclusionRequest();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B10D0;
  static MetricsFieldInclusionRequest.pageFields.getter();
  sub_100083F08(v4);
  swift_setDeallocating();
  (*(v2 + 8))(v4 + v3, v1);
  swift_deallocClassInstance();
  sub_100398EF4(_swiftEmptyArrayStorage);
  type metadata accessor for ClickMetricsEvent();
  swift_allocObject();
  ClickMetricsEvent.init(targetType:targetId:including:excluding:eventFields:)();
  sub_10002849C(&unk_100988E30);
  type metadata accessor for MetricsData();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  dispatch thunk of MetricsEvent.metricsData.getter();
  ScalarDictionary.init()();
  ActionMetrics.init(data:custom:)();
}

void sub_1005258DC(void *a1)
{
  v1 = a1;
  sub_100524DBC();
}

void sub_100525924(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(AAUISignInController) init];
  [v4 setServiceType:AIDAServiceTypeStore];
  [v4 setDelegate:v1];
  if (qword_10096E888 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for OSLogger();
  sub_1000056A8(v5, qword_10098A190);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  static LogMessage.identity(_:)();
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v4;
  v7[4] = v6;
  v7[5] = ObjectType;
  v11[4] = sub_10052A27C;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100235C48;
  v11[3] = &unk_1008C7848;
  v8 = _Block_copy(v11);
  v9 = a1;
  v10 = v4;

  [v10 prepareInViewController:v9 completion:v8];
  _Block_release(v8);
}

id sub_100525BD0(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v9 = type metadata accessor for OSLogger();
  v47 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v12 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for AlertActionStyle();
  v45 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v18 - 8);
  if (a1)
  {
    if (qword_10096E888 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v9, qword_10098A190);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    return [a3 presentViewController:a4 animated:1 completion:0];
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  v44 = v14;
  v20 = _convertErrorToNSError(_:)();
  v21 = [v20 domain];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {

    goto LABEL_12;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
LABEL_12:
    if ([v20 code] == -7005)
    {
      if (qword_10096E888 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v9, qword_10098A190);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B1890;
      LogMessage.init(stringLiteral:)();
      *(&v51 + 1) = sub_100005744(0, &qword_10097D7D8);
      *&v50 = v20;
      v27 = v20;
      static LogMessage.safe(_:)();
      sub_10002B894(&v50, &unk_1009711D0);
      Logger.error(_:)();

      v28._object = 0x8000000100819050;
      v28._countAndFlagsBits = 0xD000000000000017;
      v29._countAndFlagsBits = 0;
      v29._object = 0xE000000000000000;
      localizedString(_:comment:)(v28, v29);
      v30._countAndFlagsBits = 0xD00000000000002ALL;
      v30._object = 0x8000000100819070;
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      localizedString(_:comment:)(v30, v31);
      static ActionMetrics.notInstrumented.getter();
      (*(v45 + 104))(v17, enum case for AlertActionStyle.normal(_:), v15);
      type metadata accessor for AlertAction();
      swift_allocObject();
      v32 = AlertAction.init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v34 = *(Strong + qword_10098A1B0);
        v35 = Strong;

        v36 = sub_10002849C(&unk_100974490);
        v37 = v44;
        BaseObjectGraph.injectIfAvailable<A>(_:)();
        v38 = *(v36 - 8);
        if ((*(v38 + 48))(v37, 1, v36) == 1)
        {

          return sub_10002B894(v37, &unk_100972A00);
        }

        else
        {
          sub_1005FA1B4(v32, 1, v34, v37);

          return (*(v38 + 8))(v37, v36);
        }
      }

      else
      {
      }
    }
  }

LABEL_19:
  if (qword_10096E888 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v9, qword_10098A190);
  v40 = v47;
  (*(v47 + 16))(v11, v39, v9);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  if (a2)
  {
    swift_getErrorValue();
    v41 = v48;
    v42 = v49;
    *(&v51 + 1) = v49;
    v43 = sub_1000056E0(&v50);
    (*(*(v42 - 8) + 16))(v43, v41, v42);
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  static LogMessage.safe(_:)();
  sub_10002B894(&v50, &unk_1009711D0);
  Logger.error(_:)();

  return (*(v40 + 8))(v11, v9);
}

void sub_10052653C(char *a1)
{
  v1 = *&a1[qword_10098A1E8];
  v2 = a1;
  if (v1)
  {
    sub_10052659C();
  }

  else
  {
    sub_100527974();
  }
}

void sub_10052659C()
{
  v1 = sub_10002849C(&qword_10098A2E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + qword_10098A1E8);
  if (v4)
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();
    v7 = v4;

    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;
    v9[5] = v6;

    sub_100221B78(0, 0, v3, &unk_1007D35C8, v9);
  }

  else
  {
    if (qword_10096E888 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for OSLogger();
    sub_1000056A8(v10, qword_10098A190);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }
}

uint64_t sub_10052684C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a5;
  v6 = type metadata accessor for AppUpdatesCounts();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[11] = v7;
  v5[12] = type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[14] = v8;
  *v8 = v5;
  v8[1] = sub_100526970;

  return AppUpdatesDataSource.getUpdatesCounts()(v7);
}

uint64_t sub_100526970()
{
  *(*v1 + 120) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100526B80;
  }

  else
  {
    v4 = sub_100526ACC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100526ACC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1005275EC();
  }

  (*(v0[10] + 8))(v0[11], v0[9]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100526B80()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = qword_10098A1D8;
    v4 = *(Strong + qword_10098A1D8);
    if (v4)
    {
      [v4 removeFromSuperview];
      v5 = *&v2[v3];
    }

    else
    {
      v5 = 0;
    }

    *&v2[v3] = 0;
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100526C64()
{
  v1 = sub_10002849C(&qword_10098A2E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_10002849C(&qword_10098A2E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = *(v0 + qword_10098A1E8);
  if (v11)
  {
    v20 = v11;
    AppUpdatesDataSource.makeUpdatesCountsStream()();
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v7, v10, v4);
    type metadata accessor for MainActor();

    v14 = static MainActor.shared.getter();
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = &protocol witness table for MainActor;
    (*(v5 + 32))(v16 + v15, v7, v4);
    *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;

    sub_100221B78(0, 0, v3, &unk_1007D35A8, v16);

    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    if (qword_10096E888 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for OSLogger();
    sub_1000056A8(v18, qword_10098A190);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }
}

uint64_t sub_10052705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for AppUpdatesCounts();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_10002849C(&qword_10098A2F0);
  v5[10] = swift_task_alloc();
  v7 = sub_10002849C(&unk_10098A2F8);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for MainActor();
  v5[15] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[16] = v9;
  v5[17] = v8;

  return _swift_task_switch(sub_1005271F4, v9, v8);
}

uint64_t sub_1005271F4()
{
  sub_10002849C(&qword_10098A2E8);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v1 = static MainActor.shared.getter();
  v0[18] = v1;
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_1005272EC;
  v3 = v0[10];
  v4 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v3, v1, &protocol witness table for MainActor, v4);
}

uint64_t sub_1005272EC()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_100527430, v3, v2);
}

uint64_t sub_100527430()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[9], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      sub_1005275EC();
    }

    (*(v0[8] + 8))(v0[9], v0[7]);
    v8 = static MainActor.shared.getter();
    v0[18] = v8;
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_1005272EC;
    v10 = v0[10];
    v11 = v0[11];

    return AsyncStream.Iterator.next(isolation:)(v10, v8, &protocol witness table for MainActor, v11);
  }
}

uint64_t sub_1005275EC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&qword_10098A2E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = AppUpdatesCounts.pendingManual.getter();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = v0;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  v9[5] = v5;
  v9[6] = ObjectType;
  sub_100221B78(0, 0, v4, &unk_1007D3590, v9);
}

uint64_t sub_100527734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005277CC, v7, v6);
}

uint64_t sub_1005277CC()
{
  v1 = v0[3];
  v2 = v0[2];

  if (*(v2 + qword_10098A1E0) == v1)
  {
    if (qword_10096E888 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for OSLogger();
    sub_1000056A8(v3, qword_10098A190);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();
  }

  else
  {
    *(v2 + qword_10098A1E0) = v0[3];
    sub_100528044();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100527974()
{
  sub_10002849C(&qword_10098A2D0);
  v0 = Promise.__allocating_init()();
  type metadata accessor for UpdateStore();
  updated = static UpdateStore.shared.getter();
  v8 = sub_100529F5C;
  v9 = v0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100527B5C;
  v7 = &unk_1008C7730;
  v2 = _Block_copy(v6);

  [updated getUpdatesWithCompletionBlock:v2];
  _Block_release(v2);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = sub_100005744(0, &qword_1009729E0);

  v4 = static OS_dispatch_queue.main.getter();
  v7 = v3;
  v8 = &protocol witness table for OS_dispatch_queue;
  v6[0] = v4;
  Promise.then(perform:orCatchError:on:)();

  sub_100007000(v6);
}

uint64_t sub_100527B5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100005744(0, &qword_10098A2D8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

uint64_t sub_100527BE0(unint64_t *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v12 = result;
  if (v10 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v13 = result;
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v3;
  v34 = v2;
  v31 = v5;
  v32 = v6;
  v29 = v9;
  v30 = v7;
  if (!v13)
  {
    goto LABEL_19;
  }

  if (v13 < 1)
  {
    __break(1u);
    return result;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = (v10 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v10 + 8 * v15 + 32);
    v17 = v16;
    v18 = [v16 updateState];
    if (!v18 || v18 == 3 || v18 == 4)
    {
      break;
    }

LABEL_8:
    if (v13 == ++v15)
    {
      goto LABEL_20;
    }
  }

  v19 = [v17 autoUpdateEnabled];

  if (v19)
  {
    goto LABEL_8;
  }

  if (!__OFADD__(v14++, 1))
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_19:
  v14 = 0;
LABEL_20:
  sub_100005744(0, &qword_1009729E0);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  *(v22 + 24) = v14;
  aBlock[4] = sub_100529F94;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C7780;
  v23 = _Block_copy(aBlock);
  v24 = v12;

  v25 = v29;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0);
  sub_100097060(&qword_100976F60, &unk_1009729F0);
  v26 = v31;
  v27 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v33 + 8))(v26, v27);
  return (*(v30 + 8))(v25, v32);
}

void sub_100527FBC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = qword_10098A1D8;
    v3 = *(Strong + qword_10098A1D8);
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *&v1[v2];
    }

    else
    {
      v4 = 0;
    }

    *&v1[v2] = 0;
  }
}

void sub_100528044()
{
  v1 = v0;
  v2 = *(v0 + qword_10098A1B8);
  if (v2)
  {
    v3 = v2;
    v4 = dispatch thunk of GameCenterFriendRequestCoordinator.currentFriendRequestCount.getter();
  }

  else
  {
    v4 = 0;
  }

  v5 = qword_10098A1E0;
  v6 = *(v1 + qword_10098A1E0);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
  }

  else if (qword_10096E888 == -1)
  {
    goto LABEL_6;
  }

  swift_once();
LABEL_6:
  v8 = type metadata accessor for OSLogger();
  sub_1000056A8(v8, qword_10098A190);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B73E0;
  LogMessage.init(stringLiteral:)();
  v9 = *(v1 + v5);
  v17 = &type metadata for Int;
  v16[0] = v9;
  static LogMessage.safe(_:)();
  sub_10002B894(v16, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  v17 = &type metadata for Int;
  v16[0] = v4;
  static LogMessage.safe(_:)();
  sub_10002B894(v16, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  v17 = &type metadata for Int;
  v16[0] = v7;
  static LogMessage.safe(_:)();
  sub_10002B894(v16, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  if (v7 < 1)
  {
    v13 = 0;
    v15 = 0;
  }

  else
  {
    v10 = objc_opt_self();
    sub_100005744(0, &qword_10097FB80);
    isa = NSNumber.init(integerLiteral:)(v7).super.super.isa;
    v12 = [v10 localizedStringFromNumber:isa numberStyle:1];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  sub_10052475C(v13, v15);
}

void sub_100528380(void *a1)
{
  v1 = a1;
  sub_1005283D0(1);
}

void sub_1005283D0(char a1)
{
  v2 = [objc_opt_self() sharedStore];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v6[4] = sub_10052A4CC;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100246D50;
  v6[3] = &unk_1008C7708;
  v5 = _Block_copy(v6);

  [v2 profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter:v5 completion:44.0];
  _Block_release(v5);
}

void sub_1005284F8(void *a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (!a1)
    {
      if (a3)
      {
        static Date.+ infix(_:_:)();
        Date.init()();
        v25 = static Date.> infix(_:_:)();
        v26 = *(v6 + 8);
        v26(v8, v5);
        v26(v11, v5);
        v27 = v13[qword_10098A1A8];
        v13[qword_10098A1A8] = 0;
        if (v27 == 1)
        {
          v28 = [v13 layer];
          [v28 setBorderColor:0];

          v29 = [v13 layer];
          [v29 setBorderWidth:0.0];

          [v13 setNeedsDisplay];
        }

        if (qword_10096E878 != -1)
        {
          swift_once();
        }

        [v13 setImage:qword_10098A180 forState:0];
        [v13 alpha];
        if (v30 <= COERCE_DOUBLE(1))
        {
          if (v25)
          {
            v31 = objc_opt_self();
            v32 = swift_allocObject();
            *(v32 + 16) = v13;
            v47 = sub_10052A4A8;
            v48 = v32;
            aBlock = _NSConcreteStackBlock;
            v44 = 1107296256;
            v45 = sub_100007A08;
            v46 = &unk_1008C7618;
            v33 = _Block_copy(&aBlock);
            v13 = v13;

            [v31 animateWithDuration:4 delay:v33 options:0 animations:0.33 completion:0.0];
            _Block_release(v33);
          }

          else
          {
            [v13 setAlpha:1.0];
          }
        }
      }

LABEL_23:

      return;
    }

    v14 = a1;
    [v13 intrinsicContentSize];
    UIGraphicsBeginImageContextWithOptions(v49, 0, 0.0);
    [v13 intrinsicContentSize];
    [v14 drawInRect:{0.0, 0.0, v15, v16}];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    static Date.+ infix(_:_:)();
    Date.init()();
    v18 = static Date.> infix(_:_:)();
    v19 = *(v6 + 8);
    v19(v8, v5);
    v19(v11, v5);
    [v13 setImage:v17 forState:0];
    [v13 alpha];
    if (v20 <= COERCE_DOUBLE(1))
    {
      if (v18)
      {
        v21 = objc_opt_self();
        v22 = swift_allocObject();
        *(v22 + 16) = v13;
        v47 = sub_10052A4A8;
        v48 = v22;
        aBlock = _NSConcreteStackBlock;
        v44 = 1107296256;
        v45 = sub_100007A08;
        v46 = &unk_1008C7668;
        v23 = _Block_copy(&aBlock);
        v24 = v13;

        [v21 animateWithDuration:4 delay:v23 options:0 animations:0.33 completion:0.0];

        _Block_release(v23);
LABEL_16:
        v34 = v13[qword_10098A1A8];
        v13[qword_10098A1A8] = 1;
        if ((v34 & 1) == 0)
        {
          v35 = [v13 layer];
          if (qword_10096E880 != -1)
          {
            swift_once();
          }

          v36 = [qword_10098A188 CGColor];
          [v35 setBorderColor:v36];

          v37 = [v13 layer];
          v38 = [v13 traitCollection];
          static Separator.thickness(compatibleWith:)();
          v40 = v39;

          [v37 setBorderWidth:v40];
          [v13 setNeedsDisplay];
        }

        v41 = qword_10098A1C0;
        if (*&v13[qword_10098A1C0])
        {

          dispatch thunk of DispatchWorkItem.cancel()();

          *&v13[v41] = 0;

          return;
        }

        goto LABEL_23;
      }

      [v13 setAlpha:1.0];
    }

    goto LABEL_16;
  }
}

void sub_100528B90(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AccountButton();
  v4 = v7.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", v5);
  [v4 invalidateIntrinsicContentSize];
  v6 = [v4 backgroundImageForState:0];
  if (v6)
  {

    sub_1005283D0(1);
  }
}

id sub_100528C3C(char a1)
{
  v3 = [v1 layer];
  v4 = v3;
  if (a1)
  {
    if (qword_10096E880 != -1)
    {
      swift_once();
    }

    v5 = [qword_10098A188 CGColor];
    [v4 setBorderColor:v5];

    v6 = [v1 layer];
    v7 = [v1 traitCollection];
    static Separator.thickness(compatibleWith:)();
    v9 = v8;

    [v6 setBorderWidth:v9];
  }

  else
  {
    [v3 setBorderColor:0];

    v6 = [v1 layer];
    [v6 setBorderWidth:0.0];
  }

  return [v1 setNeedsDisplay];
}

void sub_100528DAC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for AccountButton();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "_dynamicUserInterfaceTraitDidChange");
  sub_100528C3C(v1[qword_10098A1A8]);
}

uint64_t sub_100528E14(char *a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = *&a1[qword_10098A1E8];
  v7 = a1;
  if (v6)
  {
    sub_10052659C();
  }

  else
  {
    sub_100527974();
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_100528F10(void *a1)
{
  v1 = a1;
  sub_100528F88();
  v3 = v2;

  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_100528F88()
{
  v1 = *(v0 + qword_10098A1D8);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC8AppStore14CountBadgeView_countLabel];
    v3 = v1;
    v4 = [v2 text];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v6;
    }
  }

  return 0;
}

uint64_t sub_100529020(void *a1, uint64_t a2, void *a3)
{
  sub_100005744(0, &unk_10098A2C0);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = a1;
  sub_100529BA0(v5);
}

void sub_1005290BC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100529DAC();
}

void sub_10052914C()
{
  if (!qword_10098A288)
  {
    type metadata accessor for StoreTab();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10098A288);
    }
  }
}

char *sub_1005291AC(int a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v6 = type metadata accessor for AutomationSemantics();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v56 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchTime();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v53 = &v49[-v12];
  v51 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v51);
  v52 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10002849C(&qword_10098A2A8);
  __chkstk_darwin(v14 - 8);
  v16 = &v49[-v15];
  *&v3[qword_1009D2938 + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[qword_10098A1A8] = 0;
  *&v3[qword_10098A1B8] = 0;
  *&v3[qword_10098A1C0] = 0;
  Date.init()();
  v17 = &v3[qword_10098A1D0];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = 1;
  v17[16] = 1;
  *&v3[qword_10098A1D8] = 0;
  *&v3[qword_10098A1E0] = 0;
  *&v3[qword_10098A1E8] = 0;
  v59 = a2;
  sub_100529AF4(a2, &v3[qword_1009D2930]);
  *&v3[qword_10098A1B0] = a3;
  v19 = type metadata accessor for AccountButton();
  v67.receiver = v3;
  v67.super_class = v19;

  v20 = objc_msgSendSuper2(&v67, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for GameCenterFriendRequestCoordinator();
  type metadata accessor for BaseObjectGraph();
  v21 = v20;
  inject<A, B>(_:from:)();
  v22 = qword_10098A1B8;
  v23 = *&v21[qword_10098A1B8];
  *&v21[qword_10098A1B8] = aBlock;

  v24 = *&v21[v22];
  if (v24)
  {
    v25 = v24;
    GameCenterFriendRequestCoordinator.onFriendRequestCountDidUpdate.getter();

    sub_10002849C(&qword_100985200);
    sub_100097060(&unk_10098A2B0, &qword_100985200);
    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(&aBlock);
    v18 = 0;
  }

  v26 = sub_10002849C(&qword_1009851E0);
  (*(*(v26 - 8) + 56))(v16, v18, 1, v26);
  sub_10002B894(v16, &qword_10098A2A8);
  v27 = v21;
  dispatch thunk of ImageAlignedButton.touchOutsideMargin.setter();
  [v27 setAlpha:0.0];
  v28 = v27;
  [v28 addTarget:v28 action:"goToAccount" forControlEvents:64];
  v29 = objc_opt_self();
  v30 = [v29 defaultCenter];
  [v30 addObserver:v28 selector:"profilePictureStoreDidChange" name:ASKProfilePictureStoreDidChange object:0];

  v31 = [objc_opt_self() sharedStore];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = 0;
  v65 = sub_100529B64;
  v66 = v33;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_100246D50;
  v64 = &unk_1008C7528;
  v34 = _Block_copy(&aBlock);

  [v31 profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter:v34 completion:44.0];
  _Block_release(v34);

  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v50 & 1;
  v65 = sub_100529B70;
  v66 = v36;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_100007A08;
  v64 = &unk_1008C7578;
  _Block_copy(&aBlock);
  v60 = &_swiftEmptyArrayStorage;
  sub_10002D150();

  sub_10002849C(&unk_1009729F0);
  sub_100097060(&qword_100976F60, &unk_1009729F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v37 = DispatchWorkItem.init(flags:block:)();

  *&v28[qword_10098A1C0] = v37;

  sub_100005744(0, &qword_1009729E0);
  v38 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v39 = v53;
  + infix(_:_:)();
  v40 = v55;
  v41 = *(v54 + 8);
  v41(v10, v55);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v41(v39, v40);
  v42 = [v29 defaultCenter];
  type metadata accessor for AutomaticUpdates();
  v43 = v28;
  v44 = static AutomaticUpdates.enabledDidChangeNotification.getter();
  [v42 addObserver:v43 selector:"automaticUpdatesEnabledDidChange:" name:v44 object:0];

  v45 = [v43 imageView];
  if (v45)
  {
    v46 = v45;
    [v45 setContentMode:2];
  }

  [v43 setContentHorizontalAlignment:3];

  [v43 setContentVerticalAlignment:3];
  v47 = v56;
  static AutomationSemantics.accountButton()();
  UIView.setAutomationSemantics(_:)();
  (*(v57 + 8))(v47, v58);
  sub_100523918();

  sub_10002B894(v59, &unk_1009796E0);
  return v43;
}

uint64_t sub_100529AF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009796E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100529BA0(uint64_t a1)
{
  if (qword_10096E888 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OSLogger();
  sub_1000056A8(v2, qword_10098A190);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1E00;
  static LogMessage.identity(_:)();
  LogMessage.init(stringLiteral:)();
  v5[3] = sub_10002849C(&unk_100990A80);
  v5[0] = a1;

  static LogMessage.safe(_:)();
  sub_10002B894(v5, &unk_1009711D0);
  Logger.info(_:)();

  type metadata accessor for CommerceDialogHandler();
  BaseObjectGraph.inject<A>(_:)();
  v3 = v5[0];
  v4 = CommerceDialogHandler.presentingViewController.getter();

  if (v4)
  {
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100529DAC()
{
  if (qword_10096E888 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for OSLogger();
  sub_1000056A8(v0, qword_10098A190);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  static LogMessage.identity(_:)();
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  type metadata accessor for CommerceDialogHandler();
  BaseObjectGraph.inject<A>(_:)();
  v1 = CommerceDialogHandler.presentingViewController.getter();

  if (v1)
  {
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_100529FC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10015A5C8;

  return sub_100527734(a1, v4, v5, v6, v7);
}

uint64_t sub_10052A090(uint64_t a1)
{
  v4 = *(sub_10002849C(&qword_10098A2E8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100095E9C;

  return sub_10052705C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10052A1BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10015A5C8;

  return sub_10052684C(a1, v4, v5, v7, v6);
}

uint64_t sub_10052A288(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10052A2D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10015A5C8;

  return sub_100523A50(a1, v4, v5, v7, v6);
}

uint64_t sub_10052A3C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10015A5C8;

  return sub_100523F04(a1, v4, v5, v6, v7);
}

uint64_t sub_10052A514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100982A90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-1] - v6;
  v8 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v8 - 8);
  v10 = &v20[-1] - v9;
  v11 = type metadata accessor for ActionOutcome();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v20[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for ActionOutcome.performed(_:), v11, v13);
  Promise.resolve(_:)();
  (*(v12 + 8))(v15, v11);
  v16 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    return sub_10002B894(v10, &unk_100972A00);
  }

  v20[3] = type metadata accessor for Action();
  v20[4] = sub_10052B074(&qword_100989C80, &type metadata accessor for Action);
  v20[0] = a3;
  (*(v5 + 104))(v7, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v4);

  ActionDispatcher.perform(_:withMetrics:asPartOf:)();

  (*(v5 + 8))(v7, v4);
  sub_100007000(v20);
  return (*(v17 + 8))(v10, v16);
}

uint64_t sub_10052A83C()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  Promise.resolve(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10052A928()
{
  sub_10052AF94();
  swift_allocError();
  *v0 = 1;
  Promise.reject(_:)();
}

uint64_t sub_10052A990(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v2 = sub_10002849C(&qword_10098A328);
  __chkstk_darwin(v2 - 8);
  v42 = &v35 - v3;
  v4 = sub_10002849C(&qword_10098A330);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = &v35 - v8;
  v9 = sub_10002849C(&qword_100972A80);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for AdamId();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  sub_10002849C(&qword_1009764A0);
  v19 = Promise.__allocating_init()();
  v20 = ArcadeAction.productId.getter();
  if (!v21)
  {
    goto LABEL_4;
  }

  v41 = v20;
  ArcadeAction.appAdamId.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_10002B894(v11, &qword_100972A80);
LABEL_4:
    sub_10052AF94();
    swift_allocError();
    *v22 = 0;
    Promise.reject(_:)();

    return v19;
  }

  v39 = v13;
  v40 = v12;
  (*(v13 + 32))(v18, v11, v12);
  v23 = ArcadeAction.postSubscribeAction.getter();
  if (v23)
  {
    v24 = v23;
    v25 = swift_allocObject();
    v25[2] = v19;
    v25[3] = v43;
    v25[4] = v24;

    v37 = sub_10052B068;
  }

  else
  {
    v37 = sub_10052AFE8;
    v25 = v19;
  }

  v26 = v44;
  v27 = type metadata accessor for ArcadeSubscriptionDecorator();
  v35 = *(*(v27 - 8) + 56);
  v35(v26, 1, 1, v27);
  swift_retain_n();
  v38 = v25;

  ArcadeAction.subscriptionToken.getter();
  v36 = v18;
  if (v46)
  {
    sub_100056164(&v45, v47);
    (*(v39 + 16))(v15, v18, v40);
    sub_1000073E8(v47, &v45);

    ArcadeSubscriptionDecorator.init(objectGraph:product:appAdamId:subscriptionToken:)();
    sub_100007000(v47);
    sub_10002B894(v26, &qword_10098A330);
    v35(v6, 0, 1, v27);
    sub_10052AFF8(v6, v26);
  }

  else
  {
    sub_10002B894(&v45, &unk_1009711D0);
  }

  type metadata accessor for CommerceDialogHandler();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v28 = *&v47[0];
  type metadata accessor for ArcadeSubscriptionManager();
  inject<A, B>(_:from:)();
  v29 = *&v47[0];
  ArcadeAction.paymentMetricsOverlay.getter();

  v30 = v42;
  ArcadeSubscriptionManager.PaymentCallbacks.init(success:failure:)();
  v31 = type metadata accessor for ArcadeSubscriptionManager.PaymentCallbacks();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v32 = v36;
  v33 = v44;
  ArcadeSubscriptionManager.purchaseSubscription(product:appAdamId:decorator:paymentMetricsOverlay:callbacks:dialogHandler:)();

  sub_10002B894(v30, &qword_10098A328);
  sub_10002B894(v33, &qword_10098A330);
  (*(v39 + 8))(v32, v40);
  return v19;
}

unint64_t sub_10052AF94()
{
  result = qword_10098A338;
  if (!qword_10098A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A338);
  }

  return result;
}

uint64_t sub_10052AFF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10098A330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10052B074(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10052B0DC()
{
  result = qword_10098A340;
  if (!qword_10098A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A340);
  }

  return result;
}

uint64_t ProductLockupLayout.Metrics.init(layoutMargins:bannerViewHeight:secondaryBannerViewHeight:iconSize:iconHorizontalMargin:titleSpace:titleFont:titleMaxNumberOfLines:subtitleSpace:subtitleFont:subtitleMaxNumberOfLines:tertiaryTitleSpace:tertiaryTitleFont:tertiaryTitleMaxNumberOfLines:offerTopSpace:offerSubtitleMetrics:shareButtonLeadingMargin:expandedOfferSubtitleSpace:expandedOfferHorizontalMargin:compactExpandedOfferShareButtonTopSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 *a20, uint64_t a21, __int128 *a22, __int128 *a23, uint64_t a24, __int128 *a25, __int128 *a26)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_100005A38(a1, (a9 + 4));
  sub_100005A38(a2, (a9 + 9));
  a9[14] = a14;
  a9[15] = a15;
  v33 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v34 = v33[8];
  v35 = sub_10002849C(&qword_100979010);
  v44 = *(*(v35 - 8) + 32);
  v44(a9 + v34, a3, v35);
  v44(a9 + v33[9], a4, v35);
  v36 = v33[10];
  v37 = sub_10002849C(&unk_100980410);
  v43 = *(*(v37 - 8) + 32);
  v43(a9 + v36, a5, v37);
  v38 = v33[11];
  v39 = sub_10002849C(&unk_100973B30);
  v40 = *(*(v39 - 8) + 32);
  v40(a9 + v38, a6, v39);
  v44(a9 + v33[12], a7, v35);
  v43(a9 + v33[13], a8, v37);
  v40(a9 + v33[14], a16, v39);
  v44(a9 + v33[15], a17, v35);
  v43(a9 + v33[16], a18, v37);
  v40(a9 + v33[17], a19, v39);
  sub_100005A38(a20, a9 + v33[18]);
  sub_10052B698(a21, a9 + v33[19], type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  sub_100005A38(a22, a9 + v33[20]);
  sub_100005A38(a23, a9 + v33[21]);
  v44(a9 + v33[22], a24, v35);
  sub_100005A38(a25, a9 + v33[23]);
  v41 = a9 + v33[24];

  return sub_100005A38(a26, v41);
}

__n128 ProductLockupLayout.init(metrics:iconView:titleLabel:developerLabel:taglineLabel:tertiaryTitleLabel:shareButton:offerButton:offerSubtitleLabel:expandedOfferTitleLabel:expandedOfferSubtitleLabel:hasExpandedOffer:offerSubtitleText:bannerView:secondaryBannerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_10052B698(a1, a9, type metadata accessor for ProductLockupLayout.Metrics);
  v23 = type metadata accessor for ProductLockupLayout(0);
  sub_100005A38(a2, a9 + v23[5]);
  sub_100005A38(a3, a9 + v23[6]);
  sub_100005A38(a4, a9 + v23[7]);
  sub_100005A38(a5, a9 + v23[8]);
  v24 = a9 + v23[9];
  v25 = *(a6 + 16);
  *v24 = *a6;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(a6 + 32);
  v26 = a9 + v23[10];
  v27 = *(a7 + 16);
  *v26 = *a7;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a7 + 32);
  sub_100005A38(a8, a9 + v23[11]);
  sub_100005A38(a10, a9 + v23[12]);
  v28 = a9 + v23[13];
  v29 = *(a11 + 16);
  *v28 = *a11;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a11 + 32);
  v30 = a9 + v23[14];
  v31 = *(a12 + 16);
  *v30 = *a12;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a12 + 32);
  *(a9 + v23[15]) = a13;
  v32 = (a9 + v23[16]);
  *v32 = a14;
  v32[1] = a15;
  v33 = a9 + v23[17];
  *(v33 + 32) = *(a16 + 32);
  v34 = *(a16 + 16);
  *v33 = *a16;
  *(v33 + 16) = v34;
  v35 = a9 + v23[18];
  *(v35 + 32) = *(a17 + 32);
  result = *(a17 + 16);
  *v35 = *a17;
  *(v35 + 16) = result;
  return result;
}

uint64_t sub_10052B698(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double ProductLockupLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();

  return sub_100531700(a1, v3, ObjectType, a2, a3);
}

uint64_t ProductLockupLayout.offerSubtitleText.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProductLockupLayout(0) + 64));

  return v1;
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.font.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 20);
  v4 = sub_10002849C(&unk_100980410);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.font.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 20);
  v4 = sub_10002849C(&unk_100980410);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.maxWidth.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 24);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.leadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.iconHorizontalMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 32);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.iconHorizontalMargin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 32);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 36);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 36);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.titleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 40);
  v4 = sub_10002849C(&unk_100980410);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.titleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 44);
  v4 = sub_10002849C(&unk_100973B30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 48);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 48);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 52);
  v4 = sub_10002849C(&unk_100980410);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 56);
  v4 = sub_10002849C(&unk_100973B30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleMaxNumberOfLines.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 56);
  v4 = sub_10002849C(&unk_100973B30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 60);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 60);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 64);
  v4 = sub_10002849C(&unk_100980410);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 68);
  v4 = sub_10002849C(&unk_100973B30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleMaxNumberOfLines.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 68);
  v4 = sub_10002849C(&unk_100973B30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 72);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.offerSubtitleMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);

  return sub_100430708(a1, v3);
}

uint64_t ProductLockupLayout.Metrics.shareButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 84);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferHorizontalMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 88);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferHorizontalMargin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 88);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.compactExpandedOfferShareButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 92);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 96);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v260 = a6;
  v261 = a3;
  v242 = a2;
  v13 = type metadata accessor for FloatingPointRoundingRule();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v224 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400((*&v6 + 32), *(*&v6 + 56));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v18 = v17;
  v21 = *(v14 + 8);
  v19 = v14 + 8;
  v20 = v21;
  v21(v16, v13);
  sub_10002A400((*&v7 + 72), *(*&v7 + 96));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v23 = v22;
  v259 = v13;
  v21(v16, v13);
  v24 = **&v6;
  v25 = *(*&v6 + 8);
  v231 = v18;
  v232 = v23;
  v26 = sub_1000CC354(a3, a4, a5, a6, v18 + v24, v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = *(*&v6 + 112);
  v33 = *(*&v6 + 120);
  *&v35 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout(0));
  sub_10002A400((*&v7 + v35[5]), *(*&v7 + v35[5] + 24));
  v257 = a4;
  v256 = a5;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v278.origin.x = v26;
  v278.origin.y = v28;
  v278.size.width = v34;
  v243 = v33;
  v278.size.height = v33;
  MaxX = CGRectGetMaxX(v278);
  v36 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v272 = a1;
  v37 = sub_10002849C(&qword_100979010);
  Conditional.evaluate(with:)();
  v38 = v275;
  v279.origin.x = v26;
  v279.origin.y = v28;
  v279.size.width = v30;
  v279.size.height = v32;
  MinY = CGRectGetMinY(v279);
  v280.origin.x = v26;
  v280.origin.y = v28;
  v280.size.width = v30;
  v280.size.height = v32;
  Width = CGRectGetWidth(v280);
  *&v272 = a1;
  *&v240 = v37;
  Conditional.evaluate(with:)();
  v244 = v34;
  v40 = v34 + v275;
  v266 = v26;
  v281.origin.x = v26;
  v267 = v28;
  v281.origin.y = v28;
  v281.size.width = v30;
  v281.size.height = v32;
  Height = CGRectGetHeight(v281);
  v250 = v35[10];
  sub_100031660(*&v6 + v250, &v275, &qword_100975610);
  v263 = v30;
  if (v276)
  {
    sub_10002A400(&v275, v276);
    Measurable.measuredSize(fitting:in:)();
    v252 = v41;
    v228 = v42;
    sub_100007000(&v275);
  }

  else
  {
    sub_10002B894(&v275, &qword_100975610);
    v252 = 0.0;
    v228 = 0.0;
  }

  v43 = v32;
  v44 = MaxX + v38;
  v45 = Width - v40;
  sub_100031660(*&v6 + v250, &v275, &qword_100975610);
  v46 = v276;
  sub_10002B894(&v275, &qword_100975610);
  v47 = 0.0;
  if (v46)
  {
    sub_10002A400((*&v6 + *(v36 + 80)), *(*&v6 + *(v36 + 80) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v47 = v48;
    v20(v16, v259);
  }

  v248 = v36;
  v49 = (*&v6 + v35[11]);
  v50 = v49[3];
  v241 = v49;
  sub_10002A400(v49, v50);
  v282.origin.x = v44;
  v282.origin.y = MinY;
  v282.size.width = v45;
  v282.size.height = Height;
  CGRectGetWidth(v282);
  v265 = v45;
  v51 = v266;
  v283.origin.x = v266;
  v52 = v267;
  v283.origin.y = v267;
  v283.size.width = v263;
  v255 = v47;
  v53 = v263;
  v283.size.height = v43;
  CGRectGetHeight(v283);
  Measurable.measuredSize(fitting:in:)();
  v55 = v54;
  v251 = v56;
  v284.origin.x = v51;
  v284.origin.y = v52;
  v284.size.width = v53;
  v284.size.height = v43;
  v262 = v43;
  CGRectGetWidth(v284);
  v57 = *&v6 + *(v36 + 76);
  v58 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v59 = (v57 + *(v58 + 28));
  v60 = v59[3];
  v226 = v59;
  sub_10002A400(v59, v60);
  MaxX = v7;
  v61 = v35;
  v62 = a1;
  v63 = v20;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v64 = v259;
  v63(v16, v259);
  v245 = v55;
  v65 = v44;
  v66 = v252;
  v67 = (v57 + *(v58 + 24));
  v68 = v67[3];
  v224 = v67;
  sub_10002A400(v67, v68);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v246 = v16;
  v247 = v19;
  v253 = v63;
  v63(v16, v64);
  v69 = v62;
  v70 = (*&MaxX + v61[12]);
  v71 = v70[3];
  v227 = v70;
  sub_10002A400(v70, v71);
  v285.origin.x = v51;
  v72 = v52;
  v285.origin.y = v52;
  v73 = v263;
  v285.size.width = v263;
  v285.size.height = v43;
  CGRectGetHeight(v285);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v239 = v74;
  v75 = [v62 traitCollection];
  LOBYTE(v71) = UITraitCollection.isSizeClassCompact.getter();

  v286.origin.x = v65;
  v76 = v65;
  v258 = v65;
  v77 = MinY;
  v286.origin.y = MinY;
  v286.size.width = v265;
  v78 = Height;
  v286.size.height = Height;
  v79 = CGRectGetWidth(v286);
  if (v71)
  {
    v80 = v79;
  }

  else
  {
    v80 = v79 - v66 - v255;
  }

  v238 = v80;
  v81 = (*&MaxX + v61[6]);
  sub_10002A400(v81, v81[3]);
  v287.origin.x = v51;
  v287.origin.y = v72;
  v287.size.width = v73;
  v82 = v262;
  v287.size.height = v262;
  CGRectGetHeight(v287);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v255 = v83;
  v236 = v84;
  v86 = v85;
  v249 = v85;
  v254 = v87;
  v88 = v248;
  *&v272 = v69;
  Conditional.evaluate(with:)();
  v89 = v51;
  v90 = v275;
  v288.origin.x = v76;
  v288.origin.y = v77;
  v288.size.width = v265;
  v288.size.height = v78;
  MinX = CGRectGetMinX(v288);
  v289.origin.x = v89;
  v91 = v267;
  v289.origin.y = v267;
  v289.size.width = v73;
  v289.size.height = v82;
  v92 = CGRectGetMinY(v289);
  if (v90 - v86 > 0.0)
  {
    v93 = v90 - v86;
  }

  else
  {
    v93 = 0.0;
  }

  sub_10002A400(v81, v81[3]);
  dispatch thunk of LayoutTextView.languageAwareOutsets.getter();
  if (v255 >= v238)
  {
    v95 = v238;
  }

  else
  {
    v95 = v255;
  }

  v96 = v92 + v93 + v94;
  v290.origin.x = MinX;
  v290.origin.y = v96;
  v290.size.width = v95;
  v97 = v236;
  v290.size.height = v236;
  v237 = CGRectGetMaxY(v290) - v254;
  sub_10002A400(v81, v81[3]);
  v98 = v91;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v225 = v81;
  sub_10002C0AC(v81, &v275);
  *&v272 = v69;
  sub_10002849C(&unk_100973B30);
  Conditional.evaluate(with:)();
  *&v238 = v61[9];
  sub_100031660(*&MaxX + *&v238, &v272, &unk_10097E890);
  sub_10002B894(&v272, &unk_10097E890);
  sub_10002A400(&v275, v276);
  v291.var0 = v255;
  v291.var1 = v97;
  v291.var2 = v249;
  v291.var3 = v254;
  LayoutTextView.estimatedNumberOfLines(from:)(v291);
  sub_100007000(&v275);
  v99 = (*&MaxX + v61[7]);
  sub_10002A400(v99, v99[3]);
  dispatch thunk of LayoutTextView.numberOfLines.setter();
  v249 = *&v61;
  v100 = v61[8];
  v101 = *&MaxX;
  v102 = (*&MaxX + v100);
  sub_10002A400((*&MaxX + v100), *(*&MaxX + v100 + 24));
  dispatch thunk of LayoutTextView.numberOfLines.setter();
  *&v272 = v69;
  Conditional.evaluate(with:)();
  v103 = v275;
  sub_10002A400(v99, v99[3]);
  v104 = v258;
  v292.origin.x = v258;
  v105 = MinY;
  v292.origin.y = MinY;
  v106 = v265;
  v292.size.width = v265;
  v107 = Height;
  v292.size.height = Height;
  CGRectGetWidth(v292);
  v293.origin.x = v266;
  v293.origin.y = v98;
  v108 = v263;
  v293.size.width = v263;
  v293.size.height = v262;
  CGRectGetHeight(v293);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v110 = v109;
  v236 = v111;
  v113 = v112;
  v230 = v114;
  v294.origin.x = v104;
  v294.origin.y = v105;
  v294.size.width = v106;
  v294.size.height = v107;
  MinX = CGRectGetMinX(v294);
  v295.origin.x = v104;
  v295.origin.y = v105;
  v295.size.width = v106;
  v295.size.height = v107;
  v115 = CGRectGetWidth(v295);
  if (v110 < v115)
  {
    v115 = v110;
  }

  v255 = v115;
  v116 = v237 + v103;
  v254 = v237 + v103 - v113;
  sub_10002A400(v102, v102[3]);
  v296.origin.x = v104;
  v296.origin.y = v105;
  v296.size.width = v106;
  v296.size.height = v107;
  CGRectGetWidth(v296);
  v297.origin.x = v266;
  v297.origin.y = v267;
  v297.size.width = v108;
  v297.size.height = v262;
  CGRectGetHeight(v297);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v118 = v117;
  v237 = v119;
  v121 = v120;
  v229 = v122;
  v298.origin.x = v104;
  v298.origin.y = v105;
  v298.size.width = v106;
  v298.size.height = v107;
  v234 = CGRectGetMinX(v298);
  v299.origin.x = v104;
  v299.origin.y = v105;
  v299.size.width = v106;
  v299.size.height = v107;
  v123 = CGRectGetWidth(v299);
  if (v118 >= v123)
  {
    v118 = v123;
  }

  v124 = v116 - v121;
  sub_10002A400(v99, v99[3]);
  v125 = MinX;
  v126 = v236;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400(v102, v102[3]);
  v127 = v234;
  v233 = v124;
  v128 = v237;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v300.origin.x = v127;
  v129 = v127;
  v300.origin.y = v124;
  v300.size.width = v118;
  v300.size.height = v128;
  v130 = v128;
  MaxY = CGRectGetMaxY(v300);
  v132 = v125;
  v301.origin.x = v125;
  v133 = v254;
  v301.origin.y = v254;
  v134 = v255;
  v301.size.width = v255;
  v301.size.height = v126;
  v135 = CGRectGetMaxY(v301) < MaxY;
  v136 = v129;
  if (v135)
  {
    v137 = v129;
  }

  else
  {
    v137 = v132;
  }

  v138 = v233;
  if (v135)
  {
    v139 = v233;
  }

  else
  {
    v139 = v133;
  }

  v140 = v118;
  if (!v135)
  {
    v118 = v134;
  }

  v141 = v130;
  if (!v135)
  {
    v130 = v126;
  }

  v237 = CGRectGetMaxY(*&v136);
  v302.origin.x = v132;
  v302.origin.y = v133;
  v302.size.width = v134;
  v302.size.height = v126;
  v142 = CGRectGetMaxY(v302);
  v303.origin.x = v137;
  v303.origin.y = v139;
  v303.size.width = v118;
  v303.size.height = v130;
  v143 = CGRectGetMaxY(v303);
  sub_100031660(v101 + *&v238, &v272, &unk_10097E890);
  if (v273)
  {
    v144 = v230;
    if (v142 < v237)
    {
      v144 = v229;
    }

    v255 = v143 - v144;
    sub_100005A38(&v272, &v275);
    *&v270 = v69;
    Conditional.evaluate(with:)();
    v254 = *&v272;
    sub_10002A400(&v275, v276);
    v145 = v258;
    v304.origin.x = v258;
    v146 = MinY;
    v304.origin.y = MinY;
    v147 = v265;
    v304.size.width = v265;
    v148 = Height;
    v304.size.height = Height;
    CGRectGetWidth(v304);
    v305.origin.x = v266;
    v305.origin.y = v267;
    v305.size.width = v263;
    v305.size.height = v262;
    CGRectGetHeight(v305);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v150 = v149;
    v152 = v151;
    v154 = v153;
    v306.origin.x = v145;
    v306.origin.y = v146;
    v306.size.width = v147;
    v306.size.height = v148;
    v155 = CGRectGetMinX(v306);
    v307.origin.x = v145;
    v307.origin.y = v146;
    v307.size.width = v147;
    v307.size.height = v148;
    v156 = CGRectGetWidth(v307);
    if (v150 >= v156)
    {
      v150 = v156;
    }

    v157 = v255 + v254 - v154;
    sub_10002A400(&v275, v276);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v308.origin.x = v155;
    v308.origin.y = v157;
    v308.size.width = v150;
    v308.size.height = v152;
    v158 = CGRectGetMaxY(v308);
    v309.origin.x = v155;
    v309.origin.y = v157;
    v309.size.width = v150;
    v309.size.height = v152;
    CGRectGetMaxY(v309);
    sub_100007000(&v275);
    v159 = v88;
  }

  else
  {
    sub_10002B894(&v272, &unk_10097E890);
    v159 = v88;
    v158 = v143;
  }

  v160 = v241;
  sub_10002A400(v241, v241[3]);
  v161 = dispatch thunk of LayoutView.isHidden.getter();
  v310.origin.x = v266;
  v310.origin.y = v267;
  v310.size.width = v244;
  v310.size.height = v243;
  v162 = CGRectGetMaxY(v310);
  v163 = v239;
  if ((v161 & 1) == 0)
  {
    v163 = v251;
  }

  v164 = v162 - v163;
  sub_10002A400((v101 + *(v159 + 72)), *(v101 + *(v159 + 72) + 24));
  v165 = v246;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v167 = v166;
  v253(v165, v259);
  v240 = v158;
  v168 = v158 + v167;
  v311.origin.x = v258;
  v169 = MinY;
  v311.origin.y = MinY;
  v311.size.width = v265;
  v311.size.height = Height;
  v170 = CGRectGetMinX(v311);
  if (v164 <= v168)
  {
    v164 = v168;
  }

  sub_10002A400(v160, v160[3]);
  v171 = v261;
  v172 = v260;
  v254 = v170;
  v255 = v164;
  v173 = v245;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v174 = *&v249;
  if (*(v101 + *(*&v249 + 60)) == 1)
  {
    v175 = *(*&v249 + 52);
    sub_100031660(v101 + v175, &v272, &unk_10097E890);
    if (v273)
    {
      sub_100005A38(&v272, &v275);
      sub_100031660(v101 + v174[14], &v270, &unk_10097E890);
      v176 = v172;
      v177 = v257;
      if (v271)
      {
        v178 = v159;
        sub_100005A38(&v270, &v272);
        v179 = [v69 traitCollection];
        v180 = UITraitCollection.isSizeClassCompact.getter();

        v181 = v276;
        v182 = v277;
        v183 = sub_10002A400(&v275, v276);
        v184 = v273;
        v185 = v274;
        v186 = sub_10002A400(&v272, v273);
        v187 = *(v182 + 8);
        v188 = *(v185 + 8);
        if (v180)
        {
          sub_1005306AC(v266, v267, v244, v243, v252, v228, v254, v255, v183, v186, v69, v101, v181, v184, v187, v188, v173, v251, v240, v266, v267, v263, v262);
        }

        else
        {
          sub_10053354C(v252, v228, v254, v255, v173, v251, v266, v267, v183, v186, v69, v101, v181, v184, v187, v188, *&v263, *&v262, v258, v169, v265, Height);
        }

        sub_100007000(&v272);
        sub_100007000(&v275);
        v174 = *&v249;
        v159 = v178;
        goto LABEL_67;
      }

      sub_10002B894(&v270, &unk_10097E890);
      sub_100007000(&v275);
    }

    else
    {
      sub_10002B894(&v272, &unk_10097E890);
      v176 = v172;
      v177 = v257;
    }

    sub_100031660(v101 + v175, &v275, &unk_10097E890);
    v201 = v256;
    if (v276)
    {
      sub_10002A400(&v275, v276);
      dispatch thunk of LayoutView.frame.setter();
      sub_100007000(&v275);
    }

    else
    {
      sub_10002B894(&v275, &unk_10097E890);
    }

    sub_100031660(v101 + v174[14], &v275, &unk_10097E890);
    if (v276)
    {
      sub_10002A400(&v275, v276);
LABEL_81:
      dispatch thunk of LayoutView.frame.setter();
      sub_100007000(&v275);
      goto LABEL_84;
    }

    v204 = &unk_10097E890;
    v205 = &v275;
  }

  else
  {
    sub_100031660(v101 + *(*&v249 + 52), &v275, &unk_10097E890);
    if (v276)
    {
      sub_10002A400(&v275, v276);
      dispatch thunk of LayoutView.frame.setter();
      sub_100007000(&v275);
    }

    else
    {
      sub_10002B894(&v275, &unk_10097E890);
    }

    v189 = *&v263;
    v176 = v172;
    v177 = v257;
    sub_100031660(v101 + v174[14], &v275, &unk_10097E890);
    if (v276)
    {
      sub_10002A400(&v275, v276);
      dispatch thunk of LayoutView.frame.setter();
      sub_100007000(&v275);
    }

    else
    {
      sub_10002B894(&v275, &unk_10097E890);
    }

    v190 = Height;
    v191 = [v69 traitCollection];
    v192 = UITraitCollection.isSizeClassCompact.getter();

    if (v192)
    {
      sub_10052EEC4(v69, v254, v255, v173, v251, v252, v228, v266, v267, v193, v194, v195, v196, v197, v198, v199, v189, *&v262, v258, v169, v265, v190);
LABEL_67:
      v201 = v256;
      goto LABEL_84;
    }

    v200 = v227;
    sub_10002A400(v227, v227[3]);
    if (dispatch thunk of LayoutView.isHidden.getter())
    {
      sub_10002A400(v200, v200[3]);
      dispatch thunk of LayoutView.frame.setter();
      v159 = v248;
      v201 = v256;
    }

    else
    {
      sub_100031660(v101 + v250, &v275, &qword_100975610);
      v202 = v276;
      sub_10002B894(&v275, &qword_100975610);
      if (v202)
      {
        sub_10002A400((v101 + *(v248 + 80)), *(v101 + *(v248 + 80) + 24));
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v244 = v203;
        v253(v165, v259);
      }

      else
      {
        v244 = 0.0;
      }

      v206 = v265;
      v207 = v254;
      sub_100031660(v101 + v250, &v275, &qword_100975610);
      if (v276)
      {
        sub_10002A400(&v275, v276);
        Measurable.measuredSize(fitting:in:)();
        sub_100007000(&v275);
      }

      else
      {
        sub_10002B894(&v275, &qword_100975610);
      }

      v312.origin.x = v258;
      v312.origin.y = v169;
      v312.size.width = v206;
      v312.size.height = v190;
      CGRectGetWidth(v312);
      v313.origin.x = v207;
      v208 = v255;
      v313.origin.y = v255;
      v313.size.width = v173;
      v209 = v251;
      v313.size.height = v251;
      CGRectGetWidth(v313);
      sub_10002A400(v226, v226[3]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v210 = v165;
      v211 = v259;
      v212 = v165;
      v213 = v253;
      v253(v210, v259);
      v214 = v254;
      v215 = v173;
      sub_10002A400(v224, v224[3]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v213(v212, v211);
      sub_10002A400(v227, v227[3]);
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v217 = v216;
      v314.origin.x = v214;
      v314.origin.y = v208;
      v314.size.width = v215;
      v314.size.height = v209;
      CGRectGetMidY(v314);
      sub_10002A400(v160, v160[3]);
      if ((dispatch thunk of LayoutView.isHidden.getter() & 1) != 0 || (v315.origin.x = v214, v315.origin.y = v208, v315.size.width = v215, v315.size.height = v209, CGRectGetHeight(v315) < v217))
      {
        v316.origin.x = v214;
        v316.origin.y = v208;
        v316.size.width = v215;
        v316.size.height = v209;
        CGRectGetMinY(v316);
      }

      v201 = v256;
      sub_10002A400(v160, v160[3]);
      v218 = dispatch thunk of LayoutView.isHidden.getter();
      v165 = v246;
      v159 = v248;
      v219 = v214;
      v220 = v255;
      v221 = v245;
      v222 = v209;
      if (v218)
      {
        CGRectGetMinX(*&v219);
      }

      else
      {
        CGRectGetMaxX(*&v219);
        sub_10002A400(v226, v226[3]);
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v253(v165, v259);
      }

      v177 = v257;
      sub_10002A400(v227, v227[3]);
      CGRect.withLayoutDirection(in:relativeTo:)();
      dispatch thunk of LayoutView.frame.setter();
      v171 = v261;
      v169 = MinY;
      v190 = Height;
    }

    sub_100031660(v101 + v250, &v272, &qword_100975610);
    v174 = *&v249;
    if (v273)
    {
      sub_100005A38(&v272, &v275);
      sub_10002A400(v225, v225[3]);
      dispatch thunk of LayoutView.frame.getter();
      CGRectGetMidY(v317);
      v318.size.height = v190;
      v318.origin.x = v258;
      v318.origin.y = v169;
      v318.size.width = v265;
      CGRectGetMaxX(v318);
      sub_10002A400(&v275, v276);
      CGRect.withLayoutDirection(in:relativeTo:)();
      goto LABEL_81;
    }

    v204 = &qword_100975610;
    v205 = &v272;
  }

  sub_10002B894(v205, v204);
LABEL_84:
  sub_100031660(v101 + v174[17], &v272, &qword_100975610);
  if (v273)
  {
    sub_100005A38(&v272, &v275);
    sub_10002A400(&v275, v276);
    v319.origin.x = v171;
    v319.origin.y = v177;
    v319.size.width = v201;
    v319.size.height = v176;
    CGRectGetMinX(v319);
    v320.origin.x = v171;
    v320.origin.y = v177;
    v320.size.width = v201;
    v320.size.height = v176;
    CGRectGetMinY(v320);
    v321.origin.x = v171;
    v321.origin.y = v177;
    v321.size.width = v201;
    v321.size.height = v176;
    CGRectGetWidth(v321);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v275);
  }

  else
  {
    sub_10002B894(&v272, &qword_100975610);
  }

  sub_100031660(v101 + v174[18], &v272, &qword_100975610);
  if (v273)
  {
    sub_100005A38(&v272, &v275);
    sub_10002A400(&v275, v276);
    v322.origin.x = v171;
    v322.origin.y = v177;
    v322.size.width = v201;
    v322.size.height = v176;
    CGRectGetMinX(v322);
    v323.origin.x = v171;
    v323.origin.y = v177;
    v323.size.width = v201;
    v323.size.height = v176;
    CGRectGetMaxY(v323);
    sub_10002A400((v101 + *(v159 + 96)), *(v101 + *(v159 + 96) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v253(v165, v259);
    v324.origin.x = v171;
    v324.origin.y = v177;
    v324.size.width = v201;
    v324.size.height = v176;
    CGRectGetWidth(v324);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v275);
  }

  else
  {
    sub_10002B894(&v272, &qword_100975610);
  }

  return LayoutRect.init(representing:)();
}

uint64_t sub_10052EEC4(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CGFloat a19, double a20, CGFloat a21, CGFloat a22)
{
  v23 = v22;
  v169 = a9;
  v168 = a8;
  v164 = a7;
  v174 = a2;
  v29 = a21;
  v30 = a22;
  v173 = a20;
  v31 = a19;
  v179 = type metadata accessor for LabelPlaceholderCompatibility();
  v32 = *(v179 - 8);
  __chkstk_darwin(v179);
  v34 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v178 = &v145 - v36;
  v176 = type metadata accessor for CharacterSet();
  v151 = *(v176 - 1);
  __chkstk_darwin(v176);
  v150 = &v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for FloatingPointRoundingRule();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v145 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for ProductLockupLayout(0);
  v171 = *(v177 + 40);
  sub_100031660(v22 + v171, v182, &qword_100975610);
  v42 = v183;
  sub_10002B894(v182, &qword_100975610);
  v147 = v34;
  v175 = v32;
  if (v42)
  {
    v43 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_10002A400((v22 + *(v43 + 80)), *(v22 + *(v43 + 80) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v153 = v44;
    (*(v39 + 8))(v41, v38);
  }

  else
  {
    v153 = 0.0;
  }

  v166 = a18;
  v165 = a17;
  v185.origin.x = a19;
  v45 = v173;
  v185.origin.y = v173;
  v185.size.width = a21;
  v185.size.height = a22;
  Width = CGRectGetWidth(v185);
  v186.origin.x = v174;
  v186.origin.y = a3;
  v167 = a4;
  v186.size.width = a4;
  v172 = a5;
  v186.size.height = a5;
  v46 = CGRectGetWidth(v186);
  v148 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v47 = (v22 + *(v148 + 76));
  v48 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v49 = (v47 + *(v48 + 28));
  v50 = v49[3];
  v154 = v49;
  sub_10002A400(v49, v50);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v52 = v51;
  v53 = *(v39 + 8);
  v159 = v41;
  v160 = v39 + 8;
  v158 = v53;
  v53(v41, v38);
  v54 = v177;
  v55 = (v22 + *(v177 + 64));
  v56 = *(v55 + 1);
  v163 = *v55;
  v149 = v48;
  v182[0] = a1;
  sub_10002849C(&unk_100980410);
  v157 = v47;
  v57 = v56;
  Conditional.evaluate(with:)();
  v58 = v180;
  v59 = *(v22 + *(v54 + 60));
  v60 = (v22 + *(v54 + 44));
  v61 = v60[3];
  v170 = v60;
  sub_10002A400(v60, v61);
  v62 = dispatch thunk of LayoutView.isHidden.getter();
  v187.origin.x = a19;
  v187.origin.y = v45;
  v187.size.width = a21;
  v187.size.height = a22;
  CGRectGetWidth(v187);
  if (v57 == 0.0)
  {

    v65 = v172;
    v66 = v177;
    goto LABEL_21;
  }

  v63 = a6;
  v155 = a22;
  v156 = a21;
  v161 = a19;
  v162 = a3;
  v146 = v38;
  if (v62)
  {

    v64 = 0;
    v65 = v172;
LABEL_19:
    v80 = v177;
LABEL_20:
    v110 = (v23 + *(v80 + 48));
    v66 = v80;
    sub_10002A400(v110, v110[3]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      v145 = v63;
      if (v64)
      {
        v112 = v174;
        sub_10002A400(v110, v110[3]);
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v114 = v113;
        sub_10002A400(v157, v157[3]);
        v179 = v114;
        AnyDimension.topMargin(from:in:)();
        v189.origin.x = v112;
        v189.origin.y = a3;
        v115 = v167;
        v189.size.width = v167;
        v189.size.height = v65;
        CGRectGetMinX(v189);
        v190.origin.x = v112;
        v190.origin.y = a3;
        v190.size.width = v115;
        v190.size.height = v65;
        CGRectGetWidth(v190);
        sub_10002A400(v170, v170[3]);
        v116 = dispatch thunk of LayoutView.isHidden.getter();
        v117 = v112;
        v118 = a3;
        v119 = v115;
        v120 = v65;
        if (v116)
        {
          CGRectGetMinY(*&v117);
        }

        else
        {
          CGRectGetMaxY(*&v117);
        }

        v29 = v156;
        v111 = v171;
      }

      else
      {
        v121 = v171;
        sub_100031660(v23 + v171, v182, &qword_100975610);
        v122 = v183;
        sub_10002B894(v182, &qword_100975610);
        if (v122)
        {
          sub_10002A400((v23 + *(v148 + 80)), *(v23 + *(v148 + 80) + 24));
          v123 = v159;
          j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
          AnyDimension.value(in:rounded:)();
          v179 = v124;
          v158(v123, v146);
        }

        else
        {
          v179 = 0;
        }

        sub_100031660(v23 + v121, v182, &qword_100975610);
        if (v183)
        {
          sub_10002A400(v182, v183);
          Measurable.measuredSize(fitting:in:)();
          v178 = v125;
          sub_100007000(v182);
        }

        else
        {
          sub_10002B894(v182, &qword_100975610);
          v178 = 0;
        }

        v191.origin.x = v161;
        v191.origin.y = v173;
        v191.size.width = v29;
        v191.size.height = v30;
        CGRectGetWidth(v191);
        v126 = v174;
        v192.origin.x = v174;
        v192.origin.y = a3;
        v127 = v167;
        v192.size.width = v167;
        v128 = v172;
        v192.size.height = v172;
        CGRectGetWidth(v192);
        sub_10002A400(v154, v154[3]);
        v129 = v159;
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v130 = a3;
        v131 = v146;
        v132 = v158;
        v158(v129, v146);
        v133 = v128;
        sub_10002A400((v157 + *(v149 + 24)), *(v157 + *(v149 + 24) + 24));
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v134 = v129;
        v135 = v131;
        v132(v134, v131);
        sub_10002A400(v110, v110[3]);
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v137 = v136;
        v193.origin.x = v126;
        v193.origin.y = v130;
        v193.size.width = v127;
        v193.size.height = v133;
        CGRectGetMidY(v193);
        sub_10002A400(v170, v170[3]);
        if ((dispatch thunk of LayoutView.isHidden.getter() & 1) != 0 || (v194.origin.x = v126, v194.origin.y = v130, v194.size.width = v127, v194.size.height = v133, CGRectGetHeight(v194) < v137))
        {
          v138 = v126;
          v195.origin.x = v126;
          v195.origin.y = v130;
          v195.size.width = v127;
          v195.size.height = v133;
          CGRectGetMinY(v195);
        }

        else
        {
          v138 = v126;
        }

        sub_10002A400(v170, v170[3]);
        v139 = dispatch thunk of LayoutView.isHidden.getter();
        v111 = v171;
        v140 = v138;
        v141 = v162;
        v142 = v127;
        v143 = v172;
        if (v139)
        {
          CGRectGetMinX(*&v140);
        }

        else
        {
          CGRectGetMaxX(*&v140);
          sub_10002A400(v154, v154[3]);
          v144 = v159;
          j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
          AnyDimension.value(in:rounded:)();
          v158(v144, v135);
        }

        v29 = v156;
      }

      sub_10002A400(v110, v110[3]);
      CGRect.withLayoutDirection(in:relativeTo:)();
      dispatch thunk of LayoutView.frame.setter();
      v30 = v155;
      v31 = v161;
      v65 = v172;
      a3 = v162;
      goto LABEL_44;
    }

LABEL_21:
    sub_10002A400((v23 + *(v66 + 48)), *(v23 + *(v66 + 48) + 24));
    dispatch thunk of LayoutView.frame.setter();
    v111 = v171;
LABEL_44:
    sub_100031660(v23 + v111, &v180, &qword_100975610);
    if (!v181)
    {
      return sub_10002B894(&v180, &qword_100975610);
    }

    sub_100005A38(&v180, v182);
    sub_10002A400(v170, v170[3]);
    if (dispatch thunk of LayoutView.isHidden.getter())
    {
      v196.origin.x = v174;
      v196.origin.y = a3;
      v196.size.width = v167;
      v196.size.height = v65;
      CGRectGetMinY(v196);
    }

    else
    {
      v197.origin.x = v174;
      v197.origin.y = a3;
      v197.size.width = v167;
      v197.size.height = v65;
      CGRectGetMidY(v197);
    }

    v198.origin.x = v31;
    v198.origin.y = v173;
    v198.size.width = v29;
    v198.size.height = v30;
    CGRectGetMaxX(v198);
    sub_10002A400(v182, v183);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    return sub_100007000(v182);
  }

  v67 = v46;
  v68 = v63;
  v69 = objc_opt_self();

  v70 = [v69 mainScreen];
  [v70 bounds];
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;

  v188.origin.x = v72;
  v188.origin.y = v74;
  v188.size.width = v76;
  v188.size.height = v78;
  v79 = CGRectGetWidth(v188);
  JUScreenClassGetPortraitWidth();
  v80 = v177;
  if (v79 <= v81)
  {
    v82 = v150;
    CharacterSet.init(charactersIn:)();
    v182[0] = v163;
    *&v182[1] = v57;
    sub_10007FED4();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v84 = v83;
    (*(v151 + 8))(v82, v176);
    if ((v84 & 1) == 0)
    {

      v64 = 1;
      v63 = v68;
      v30 = v155;
      v29 = v156;
      v31 = v161;
      v65 = v172;
      a3 = v162;
      goto LABEL_20;
    }
  }

  v63 = v68;
  v29 = v156;
  a3 = v162;
  if (v59)
  {
    v85 = [a1 traitCollection];
    v86 = UITraitCollection.isSizeClassRegular.getter();

    if ((v86 & 1) == 0)
    {

      v64 = 1;
      v30 = v155;
      v31 = v161;
      v65 = v172;
      goto LABEL_20;
    }
  }

  v176 = v58;
  v151 = v23;
  v87 = Width - (v153 + v67 + v52 + v68);
  v153 = v57;
  result = sub_100530150();
  v89 = result;
  v90 = *(result + 16);
  v91 = (v175 + 8);
  LODWORD(v175) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v92 = result + 40;
  v93 = -v90;
  v94 = -1;
  v31 = v161;
  v65 = v172;
  while (1)
  {
    if (v93 + v94 == -1)
    {

      v103 = type metadata accessor for Feature();
      v183 = v103;
      v184 = sub_1005342E4(&qword_100972E50, &type metadata accessor for Feature);
      v104 = sub_1000056E0(v182);
      (*(*(v103 - 8) + 104))(v104, v175, v103);
      v105 = v176;
      isFeatureEnabled(_:)();
      sub_100007000(v182);
      v106 = v147;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      sub_1005342E4(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility);
      v107 = v179;
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v109 = v108;

      (*v91)(v106, v107);
      v64 = v87 < v109;
      goto LABEL_18;
    }

    if (++v94 >= *(v89 + 16))
    {
      break;
    }

    v95 = v92 + 16;
    v96 = type metadata accessor for Feature();
    v183 = v96;
    v184 = sub_1005342E4(&qword_100972E50, &type metadata accessor for Feature);
    v97 = sub_1000056E0(v182);
    (*(*(v96 - 8) + 104))(v97, v175, v96);

    v98 = v176;
    isFeatureEnabled(_:)();
    sub_100007000(v182);
    v99 = v178;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    sub_1005342E4(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility);
    v100 = v179;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v102 = v101;
    result = (*v91)(v99, v100);
    v92 = v95;
    if (v87 < v102)
    {

      v64 = 1;
LABEL_18:
      v30 = v155;
      v23 = v151;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100530150()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = (v0 + 16);

  sub_10002849C(&unk_10098A5F0);
  sub_10007FED4();
  sub_100534810();
  StringProtocol.enumerateSubstrings<A>(in:options:_:)();

  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double ProductLockupLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProductLockupLayout(0);
  sub_10002A400((v1 + v8[11]), *(v1 + v8[11] + 24));
  Measurable.measuredSize(fitting:in:)();
  v10 = rint(v9);
  v29 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10002A400((v2 + *(v29 + 96)), *(v2 + *(v29 + 96) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_10002A400((v2 + 72), *(v2 + 96));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v15 = v14;
  v13(v7, v4);
  swift_getObjectType();
  v16 = [a1 traitCollection];
  v17 = UITraitCollection.isSizeClassRegular.getter();

  if ((v17 & 1) == 0 && *(v2 + v8[15]) == 1)
  {
    v18 = sub_100532CF0(a1, v2);
    v19 = (v2 + v8[12]);
    sub_10002A400(v19, v19[3]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      sub_10002A400(v19, v19[3]);
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v21 = v20;
      v23 = v22;
      sub_10002A400((v2 + *(v29 + 76)), *(v2 + *(v29 + 76) + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v25 = v24;
      v13(v7, v4);
      v26 = v25 - v23;
      if (v25 - v23 <= 0.0)
      {
        v26 = 0.0;
      }

      v10 = v10 + v21 + v26;
    }

    if (v10 <= v18)
    {
      v10 = v18;
    }
  }

  return v12 + v15 + v10;
}

uint64_t sub_1005305C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(a8 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_100033E38(0, *(v11 + 2) + 1, 1, v11);
      *(a8 + 16) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_100033E38((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[2 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = a2;
    *(a8 + 16) = v11;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1005306AC(CGFloat a1, CGFloat a2, CGFloat a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, double a17, double a18, double a19, CGFloat a20, CGFloat a21, CGFloat a22, CGFloat a23)
{
  v159 = a16;
  v154 = a15;
  v171 = *&a11;
  v169 = a8;
  v151 = a6;
  v168 = a4;
  v165 = a3;
  v163 = a2;
  v152 = a1;
  v29 = a22;
  v166 = a18;
  v30 = a17;
  *&v31 = COERCE_DOUBLE(type metadata accessor for FloatingPointRoundingRule());
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a14 - 8);
  __chkstk_darwin(v36);
  v38 = &v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v39);
  v156 = v42;
  v43 = *(v42 + 16);
  v155 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = a13;
  v43(v40);
  v158 = v35;
  v44 = *(v35 + 16);
  v157 = v38;
  v161 = a14;
  v44(v38, a10, a14);
  v45 = type metadata accessor for ProductLockupLayout(0);
  v46 = v45[10];
  sub_100031660(a12 + v46, &v173, &qword_100975610);
  v162 = a20;
  v164 = a7;
  if (v174)
  {
    sub_100005A38(&v173, &v175);
    v47 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_10002A400((a12 + *(v47 + 92)), *(a12 + *(v47 + 92) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    v48 = v171;
    AnyDimension.value(in:rounded:)();
    v153 = a17;
    v50 = v49;
    (*(v32 + 8))(v34, v31);
    v177.origin.x = v152;
    v177.origin.y = v163;
    v177.size.width = v165;
    v177.size.height = v168;
    MaxY = CGRectGetMaxY(v177);
    v52 = v151;
    v53 = MaxY - v151;
    if (v53 > v50 + a19)
    {
      v54 = v53;
    }

    else
    {
      v54 = v50 + a19;
    }

    v178.origin.x = a20;
    v178.origin.y = a21;
    v178.size.width = a22;
    v178.size.height = a23;
    v55 = CGRectGetMaxX(v178) - a5;
    sub_10002A400(&v175, v176);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v179.origin.x = v55;
    v179.origin.y = v54;
    a7 = v164;
    v30 = v153;
    v179.size.width = a5;
    v179.size.height = v52;
    v29 = a22;
    v168 = CGRectGetMaxY(v179);
    sub_100007000(&v175);
    v56 = v162;
  }

  else
  {
    sub_10002B894(&v173, &qword_100975610);
    v180.origin.x = v152;
    v180.origin.y = v163;
    v180.size.width = v165;
    v180.size.height = v168;
    v57 = CGRectGetMaxY(v180);
    if (v57 <= a19)
    {
      v57 = a19;
    }

    v168 = v57;
    v56 = a20;
    v48 = v171;
  }

  v170 = a21;
  v167 = v29;
  v181.origin.x = v56;
  v181.origin.y = a21;
  v181.size.width = v29;
  v181.size.height = a23;
  MaxX = CGRectGetMaxX(v181);
  v182.origin.x = a7;
  v59 = v169;
  v182.origin.y = v169;
  v182.size.width = v30;
  v60 = v166;
  v182.size.height = v166;
  v171 = MaxX - CGRectGetWidth(v182);
  v163 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout.Metrics(0));
  sub_10002A400((a12 + *(*&v163 + 72)), *(a12 + *(*&v163 + 72) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v62 = v61;
  v63 = *(v32 + 8);
  v150 = v34;
  v152 = *&v31;
  *&v151 = v32 + 8;
  v149 = v63;
  v63(v34, v31);
  v64 = v168 + v62;
  v183.origin.x = a7;
  v183.origin.y = v59;
  v183.size.width = v30;
  v183.size.height = v60;
  Width = CGRectGetWidth(v183);
  v184.origin.x = a7;
  v184.origin.y = v59;
  v66 = v30;
  v184.size.width = v30;
  v184.size.height = v60;
  Height = CGRectGetHeight(v184);
  v68 = (a12 + v45[11]);
  v69 = v48;
  sub_10002A400(v68, v68[3]);
  v172 = a23;
  v168 = Height;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400(v68, v68[3]);
  v70 = dispatch thunk of LayoutView.isHidden.getter();
  sub_10002A400(v68, v68[3]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    v164 = v171;
    v169 = v64;
    v66 = Width;
    v166 = v168;
  }

  v71 = (a12 + v45[12]);
  sub_10002A400(v71, v71[3]);
  v72 = dispatch thunk of LayoutView.isHidden.getter();
  v165 = v64;
  if (v72)
  {
    sub_10002A400(v71, v71[3]);
    dispatch thunk of LayoutView.frame.setter();
    v73 = *&v163;
    v74 = v167;
    v75 = v172;
    v76 = v170;
    v77 = v56;
  }

  else
  {
    v73 = *&v163;
    v148 = Width;
    if (v70)
    {
      v78 = v56;
      sub_100031660(a12 + v46, &v175, &qword_100975610);
      v79 = v176;
      sub_10002B894(&v175, &qword_100975610);
      v153 = v66;
      v80 = v164;
      if (v79)
      {
        sub_10002A400((a12 + v73[20]), *(a12 + v73[20] + 24));
        v81 = v150;
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v147 = v82;
        v149(v81, *&v152);
      }

      else
      {
        v147 = 0.0;
      }

      v94 = v169;
      sub_100031660(a12 + v46, &v175, &qword_100975610);
      if (v176)
      {
        sub_10002A400(&v175, v176);
        v95 = v167;
        v96 = v172;
        Measurable.measuredSize(fitting:in:)();
        v145 = v97;
        sub_100007000(&v175);
      }

      else
      {
        sub_10002B894(&v175, &qword_100975610);
        v145 = 0;
        v96 = v172;
        v95 = v167;
      }

      v187.origin.x = v78;
      v187.origin.y = v170;
      v187.size.width = v95;
      v187.size.height = v96;
      CGRectGetWidth(v187);
      v188.origin.x = v80;
      v188.origin.y = v94;
      v169 = v94;
      v98 = v153;
      v188.size.width = v153;
      v99 = v166;
      v188.size.height = v166;
      CGRectGetWidth(v188);
      v100 = v73[19];
      v146 = a12;
      v101 = a12 + v100;
      v144 = a12 + v100;
      v102 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
      v103 = (v101 + *(v102 + 28));
      v104 = v103[3];
      v143 = v103;
      sub_10002A400(v103, v104);
      v105 = v150;
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v106 = v80;
      v107 = v152;
      v108 = v149;
      v149(v105, *&v152);
      sub_10002A400((v144 + *(v102 + 24)), *(v144 + *(v102 + 24) + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v108(v105, *&v107);
      v109 = v98;
      sub_10002A400(v71, v71[3]);
      v75 = v96;
      v110 = v169;
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v112 = v111;
      v189.origin.x = v106;
      v189.origin.y = v110;
      v189.size.width = v109;
      v189.size.height = v99;
      CGRectGetMidY(v189);
      sub_10002A400(v68, v68[3]);
      v113 = dispatch thunk of LayoutView.isHidden.getter();
      v147 = v112;
      if ((v113 & 1) != 0 || (v190.origin.x = v106, v190.origin.y = v110, v190.size.width = v109, v190.size.height = v99, CGRectGetHeight(v190) < v112))
      {
        v191.size.width = v109;
        v114 = v106;
        v191.origin.x = v106;
        v191.origin.y = v110;
        v191.size.height = v99;
        CGRectGetMinY(v191);
      }

      else
      {
        v114 = v106;
      }

      sub_10002A400(v68, v68[3]);
      v115 = dispatch thunk of LayoutView.isHidden.getter();
      v73 = *&v163;
      a12 = v146;
      v116 = v114;
      v117 = v110;
      v118 = v153;
      v119 = v166;
      if (v115)
      {
        CGRectGetMinX(*&v116);
      }

      else
      {
        CGRectGetMaxX(*&v116);
        sub_10002A400(v143, v143[3]);
        v120 = v150;
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v149(v120, *&v152);
      }

      v76 = v170;
      v77 = v162;
    }

    else
    {
      v83 = v164;
      v84 = v66;
      sub_10002A400(v71, v71[3]);
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v86 = v85;
      sub_10002A400((a12 + v73[19]), *(a12 + v73[19] + 24));
      v147 = v86;
      AnyDimension.topMargin(from:in:)();
      v185.origin.x = v83;
      v87 = v169;
      v185.origin.y = v169;
      v185.size.width = v84;
      v88 = v166;
      v185.size.height = v166;
      CGRectGetMinX(v185);
      v186.origin.x = v83;
      v186.origin.y = v87;
      v186.size.width = v84;
      v186.size.height = v88;
      CGRectGetWidth(v186);
      sub_10002A400(v68, v68[3]);
      v89 = dispatch thunk of LayoutView.isHidden.getter();
      v90 = v83;
      v91 = v87;
      v92 = v84;
      v93 = v88;
      if (v89)
      {
        CGRectGetMinY(*&v90);
      }

      else
      {
        CGRectGetMaxY(*&v90);
      }

      v76 = v170;
      v77 = v162;
      v75 = v172;
    }

    sub_10002A400(v71, v71[3]);
    v74 = v167;
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    Width = v148;
  }

  v192.origin.x = v77;
  v192.origin.y = v76;
  v192.size.width = v74;
  v192.size.height = v75;
  v121 = CGRectGetWidth(v192);
  v193.origin.x = v171;
  v193.origin.y = v165;
  v193.size.width = Width;
  v193.size.height = v168;
  v122 = v74;
  v123 = v121 - CGRectGetWidth(v193);
  *&v173 = v69;
  sub_10002849C(&qword_100979010);
  Conditional.evaluate(with:)();
  if (v123 - v175 > 0.0)
  {
    v124 = v123 - v175;
  }

  else
  {
    v124 = 0.0;
  }

  v194.origin.x = v77;
  v194.origin.y = v76;
  v194.size.width = v74;
  v125 = v172;
  v194.size.height = v172;
  CGRectGetHeight(v194);
  v126 = v155;
  v127 = v160;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v128 = Width;
  v130 = v129;
  v132 = v131;
  v169 = v133;
  v195.origin.x = v77;
  v195.origin.y = v76;
  v195.size.width = v122;
  v195.size.height = v125;
  MinX = CGRectGetMinX(v195);
  v196.origin.x = v171;
  v196.origin.y = v165;
  v196.size.width = v128;
  v196.size.height = v168;
  MinY = CGRectGetMinY(v196);
  if (v124 < v130)
  {
    v130 = v124;
  }

  v197.origin.x = MinX;
  v197.origin.y = MinY;
  v197.size.width = v130;
  v197.size.height = v132;
  v171 = CGRectGetMaxY(v197) - v169;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v198.origin.x = v77;
  v136 = v170;
  v198.origin.y = v170;
  v198.size.width = v122;
  v137 = v172;
  v198.size.height = v172;
  CGRectGetHeight(v198);
  v138 = v157;
  v139 = v161;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v168 = v140;
  v199.origin.x = v77;
  v199.origin.y = v136;
  v199.size.width = v122;
  v199.size.height = v137;
  v169 = CGRectGetMinX(v199);
  sub_10002A400((a12 + v73[21]), *(a12 + v73[21] + 24));
  AnyDimension.topMargin(from:in:)();
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  (*(v156 + 8))(v126, v127);
  return (*(v158 + 8))(v138, v139);
}

double sub_100531700(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 traitCollection];
  v21 = UITraitCollection.isSizeClassRegular.getter();

  sub_10002A400((a2 + 32), *(a2 + 56));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v16 = *(v11 + 8);
  v16(v14, v10);
  sub_10002A400((a2 + 72), *(a2 + 96));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v16(v14, v10);
  v17 = a4 - *(a2 + 8) - *(a2 + 24) - *(a2 + 112);
  v18 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v22 = a1;
  sub_10002849C(&qword_100979010);
  Conditional.evaluate(with:)();
  v20 = a3;
  sub_100531A60(a1, a2, a3, v17 - v23, a5);
  sub_10002A400((a2 + *(v18 + 96)), *(a2 + *(v18 + 96) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v16(v14, v10);
  if (v21 & 1) == 0 && (*(a2 + *(type metadata accessor for ProductLockupLayout(0) + 60)))
  {
    sub_100532004(a1, a2, v20, a4, a5);
  }

  return a4;
}

uint64_t sub_1005319F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_100531A60(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v48 = *(v10 - 8);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = UITraitCollection.isSizeClassRegular.getter();

  v49 = type metadata accessor for ProductLockupLayout(0);
  v16 = v49[10];
  sub_100031660(a2 + v16, v50, &qword_100975610);
  if (v51)
  {
    sub_10002A400(v50, v51);
    Measurable.measuredSize(fitting:in:)();
    v18 = v17;
    sub_100007000(v50);
  }

  else
  {
    sub_10002B894(v50, &qword_100975610);
    v18 = 0.0;
  }

  v19 = sub_100532F6C(a1, a2);
  sub_100031660(a2 + v16, v50, &qword_100975610);
  v20 = v51;
  sub_10002B894(v50, &qword_100975610);
  if (v20)
  {
    v21 = v49;
    if ((v15 & 1) == 0)
    {
      if (*(a2 + v49[15]))
      {
        v22 = type metadata accessor for ProductLockupLayout.Metrics(0);
        sub_10002A400((a2 + *(v22 + 92)), *(a2 + *(v22 + 92) + 24));
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v24 = v23;
        (*(v48 + 8))(v13, v10);
        v19 = v19 + v18 + v24;
      }

LABEL_9:
      if (*(a2 + v21[15]))
      {
        return v19;
      }
    }
  }

  else
  {
    v21 = v49;
    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v46 = *(a2 + 120);
  v25 = (a2 + v21[11]);
  v26 = v25[3];
  v45 = v25;
  sub_10002A400(v25, v26);
  Measurable.measuredSize(fitting:in:)();
  v28 = v27;
  sub_100031660(a2 + v16, v50, &qword_100975610);
  v29 = v51;
  sub_10002B894(v50, &qword_100975610);
  v47 = a3;
  if (v29)
  {
    v30 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_10002A400((a2 + *(v30 + 80)), *(a2 + *(v30 + 80) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v31 = a1;
    v32 = v48;
    (*(v48 + 8))(v13, v10);
    v33 = v10;
  }

  else
  {
    v33 = v10;
    v31 = a1;
    v32 = v48;
  }

  v44 = a2;
  v48 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v34 = a2 + *(v48 + 76);
  v35 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  sub_10002A400((v34 + *(v35 + 28)), *(v34 + *(v35 + 28) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v36 = *(v32 + 8);
  v36(v13, v33);
  v37 = v36;
  sub_10002A400((v34 + *(v35 + 24)), *(v34 + *(v35 + 24) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v36(v13, v33);
  v38 = v44;
  sub_10002A400((v44 + v49[12]), *(v44 + v49[12] + 24));
  Measurable.measuredSize(fitting:in:)();
  v40 = v39;
  sub_10002A400(v45, v45[3]);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
    v28 = v40;
  }

  sub_10002A400((v38 + *(v48 + 72)), *(v38 + *(v48 + 72) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v42 = v41;
  v37(v13, v33);
  if (v19 < v46 - v42 - v28)
  {
    v19 = v46 - v42 - v28;
  }

  return sub_100532004(v31, v38, v47, a4, a5) + v19;
}

double sub_100532004(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v44 = a3;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = UITraitCollection.isSizeClassRegular.getter();

  v16 = type metadata accessor for ProductLockupLayout(0);
  sub_10002A400((a2 + v16[11]), *(a2 + v16[11] + 24));
  Measurable.measuredSize(fitting:in:)();
  v18 = v17;
  v42 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10002A400((a2 + *(v42 + 72)), *(a2 + *(v42 + 72) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v20 = v19;
  v21 = *(v10 + 8);
  v43 = v9;
  v21(v13, v9);
  if ((v15 & 1) != 0 || *(a2 + v16[15]) == 1)
  {
    v22 = a2 + *(v42 + 76);
    v23 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10002A400((v22 + *(v23 + 28)), *(v22 + *(v23 + 28) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v25 = v24;
    v21(v13, v43);
    sub_10053246C(a1, a2, a4, a5, a4 - (v18 + v25));
    v27 = v26;
    v28 = sub_100532CF0(a1, a2);
    if (v27 > v28)
    {
      v28 = v27;
    }
  }

  else
  {
    v29 = v16[10];
    sub_100031660(a2 + v29, v45, &qword_100975610);
    if (v46)
    {
      sub_10002A400(v45, v46);
      Measurable.measuredSize(fitting:in:)();
      v31 = v30;
      sub_100007000(v45);
    }

    else
    {
      sub_10002B894(v45, &qword_100975610);
      v31 = 0.0;
    }

    v32 = v42;
    sub_100031660(a2 + v29, v45, &qword_100975610);
    v33 = v46;
    sub_10002B894(v45, &qword_100975610);
    if (v33)
    {
      sub_10002A400((a2 + *(v32 + 80)), *(a2 + *(v32 + 80) + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v35 = v34;
      v36 = v43;
      v21(v13, v43);
    }

    else
    {
      v35 = 0.0;
      v36 = v43;
    }

    v37 = a2 + *(v32 + 76);
    v38 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10002A400((v37 + *(v38 + 28)), *(v37 + *(v38 + 28) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v40 = v39;
    v21(v13, v36);
    sub_10053246C(a1, a2, a4, a5, a4 - (v35 + v31 + v18 + v40));
  }

  return v20 + 0.0 + v28;
}

void sub_10053246C(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v78 = type metadata accessor for LabelPlaceholderCompatibility();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v72 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = type metadata accessor for FloatingPointRoundingRule();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v73 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for CharacterSet();
  v75 = *(v77 - 1);
  __chkstk_darwin(v77);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ProductLockupLayout(0);
  v18 = (a2 + v17[11]);
  sub_10002A400(v18, v18[3]);
  Measurable.measuredSize(fitting:in:)();
  v19 = (a2 + v17[16]);
  v74 = v19[1];
  if (v74)
  {
    v69 = v13;
    v70 = v12;
    v71 = *v19;
    v20 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76));
    type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    v79[0] = a1;
    sub_10002849C(&unk_100980410);
    v66 = v20;
    Conditional.evaluate(with:)();
    v21 = v82;
    v67 = v17;
    v22 = v17[15];
    v68 = a2;
    v23 = *(a2 + v22);
    sub_10002A400(v18, v18[3]);
    if (dispatch thunk of LayoutView.isHidden.getter())
    {
    }

    else
    {
      v24 = objc_opt_self();
      v25 = v74;

      v26 = [v24 mainScreen];
      [v26 bounds];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v83.origin.x = v28;
      v83.origin.y = v30;
      v83.size.width = v32;
      v83.size.height = v34;
      Width = CGRectGetWidth(v83);
      JUScreenClassGetPortraitWidth();
      if (Width > v36 || (CharacterSet.init(charactersIn:)(), v79[0] = v71, v79[1] = v25, sub_10007FED4(), StringProtocol.rangeOfCharacter(from:options:range:)(), v38 = v37, (*(v75 + 8))(v16, v77), (v38)) && (!v23 || (v39 = [a1 traitCollection], v40 = UITraitCollection.isSizeClassRegular.getter(), v39, (v40)))
      {
        v77 = v21;
        v41 = sub_100530150();
        v42 = *(v41 + 16);
        v43 = (v76 + 8);
        LODWORD(v75) = enum case for Feature.measurement_with_labelplaceholder(_:);
        v44 = v41 + 40;
        v76 = -v42;
        v45 = -1;
        while (v76 + v45 != -1)
        {
          if (++v45 >= *(v41 + 16))
          {
            __break(1u);
            return;
          }

          v46 = v44 + 16;
          v47 = a1;
          v48 = type metadata accessor for Feature();
          v80 = v48;
          v81 = sub_1005342E4(&qword_100972E50, &type metadata accessor for Feature);
          v49 = sub_1000056E0(v79);
          (*(*(v48 - 8) + 104))(v49, v75, v48);

          v50 = v77;
          isFeatureEnabled(_:)();
          sub_100007000(v79);
          a1 = v47;
          LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
          sub_1005342E4(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility);
          v51 = v78;
          dispatch thunk of Measurable.measurements(fitting:in:)();
          v53 = v52;
          (*v43)(v11, v51);
          v44 = v46;
          if (v53 > a5)
          {

            v21 = v77;
            goto LABEL_13;
          }
        }

        v59 = type metadata accessor for Feature();
        v80 = v59;
        v81 = sub_1005342E4(&qword_100972E50, &type metadata accessor for Feature);
        v60 = sub_1000056E0(v79);
        (*(*(v59 - 8) + 104))(v60, v75, v59);
        v61 = v77;
        isFeatureEnabled(_:)();
        sub_100007000(v79);
        v62 = v72;
        LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        sub_1005342E4(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility);
        v63 = v78;
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v65 = v64;

        (*v43)(v62, v63);
        v54 = v70;
        v55 = v69;
        v56 = v68;
        v57 = v67;
        if (v65 > a5)
        {
          goto LABEL_14;
        }
      }

      else
      {
LABEL_13:

        v54 = v70;
        v55 = v69;
        v56 = v68;
        v57 = v67;
LABEL_14:
        sub_10002A400((v56 + v57[12]), *(v56 + v57[12] + 24));
        dispatch thunk of Measurable.measurements(fitting:in:)();
        sub_10002A400(v66, v66[3]);
        v58 = v73;
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        (*(v55 + 8))(v58, v54);
      }
    }
  }
}

double sub_100532CF0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProductLockupLayout(0);
  sub_100031660(a2 + *(v7 + 52), &v22, &unk_10097E890);
  if (!v23)
  {
    sub_10002B894(&v22, &unk_10097E890);
    return 0.0;
  }

  sub_100005A38(&v22, v24);
  sub_100031660(a2 + *(v7 + 56), &v20, &unk_10097E890);
  if (!v21)
  {
    sub_10002B894(&v20, &unk_10097E890);
    sub_100007000(v24);
    return 0.0;
  }

  sub_100005A38(&v20, &v22);
  sub_10002A400(v24, v24[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v9 = v8;
  v11 = v10;
  sub_10002A400(&v22, v23);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v13 = v12;
  v14 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10002A400((a2 + *(v14 + 84)), *(a2 + *(v14 + 84) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v16 = v15;
  (*(v4 + 8))(v6, v3);
  v17 = v13 + v9 - v11 + v16;
  sub_100007000(&v22);
  sub_100007000(v24);
  return v17;
}

double sub_100532F6C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v54 = UITraitCollection.isSizeClassRegular.getter();

  v10 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v55 = a1;
  v11 = sub_10002849C(&qword_100979010);
  Conditional.evaluate(with:)();
  v12 = *v58;
  v13 = v10;
  *&v55 = a1;
  v53 = v11;
  Conditional.evaluate(with:)();
  v14 = *v58;
  v15 = type metadata accessor for ProductLockupLayout(0);
  v16 = v15[10];
  sub_100031660(a2 + v16, v58, &qword_100975610);
  if (v59)
  {
    sub_10002A400(v58, v59);
    Measurable.measuredSize(fitting:in:)();
    sub_100007000(v58);
  }

  else
  {
    sub_10002B894(v58, &qword_100975610);
  }

  sub_100031660(a2 + v16, v58, &qword_100975610);
  v17 = v59;
  sub_10002B894(v58, &qword_100975610);
  if (v17)
  {
    sub_10002A400((a2 + *(v13 + 80)), *(a2 + *(v13 + 80) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v5 + 8))(v8, v4);
  }

  v18 = (a2 + v15[6]);
  sub_10002A400(v18, v18[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v21 = v20;
  v23 = v22;
  v24 = v19;
  v26 = v25;
  if (v12 - v19 > 0.0)
  {
    v27 = v12 - v19;
  }

  else
  {
    v27 = 0.0;
  }

  sub_10002A400(v18, v18[3]);
  dispatch thunk of LayoutTextView.languageAwareOutsets.getter();
  v29 = v23 - v26 + v27 + v28;
  sub_10002C0AC(v18, v58);
  *&v55 = a1;
  sub_10002849C(&unk_100973B30);
  Conditional.evaluate(with:)();
  v30 = v15[9];
  sub_100031660(a2 + v30, &v55, &unk_10097E890);
  sub_10002B894(&v55, &unk_10097E890);
  sub_10002A400(v58, v59);
  v60.var0 = v21;
  v60.var1 = v23;
  v60.var2 = v24;
  v60.var3 = v26;
  LayoutTextView.estimatedNumberOfLines(from:)(v60);
  sub_100007000(v58);
  v31 = (a2 + v15[8]);
  sub_10002A400(v31, v31[3]);
  dispatch thunk of LayoutTextView.numberOfLines.setter();
  v32 = (a2 + v15[7]);
  sub_10002A400(v32, v32[3]);
  dispatch thunk of LayoutTextView.numberOfLines.setter();
  sub_10002A400(v31, v31[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_10002A400(v32, v32[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v40 = v39;
  v41 = v14 - v36 + v34 - v38;
  v44 = v14 - v42 + v43 - v39;
  if (v41 > v44)
  {
    v45 = v41;
  }

  else
  {
    v45 = v44;
  }

  v46 = v29 + v45;
  sub_100031660(a2 + v30, &v55, &unk_10097E890);
  if (v56)
  {
    sub_100005A38(&v55, v58);
    v57 = a1;
    Conditional.evaluate(with:)();
    v47 = *&v55;
    sub_10002A400(v58, v59);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v49 = v48;
    v46 = v46 + v47 - v50 + v51 - v48;
    sub_100007000(v58);
  }

  else
  {
    if (v41 >= v44)
    {
      v49 = v38;
    }

    else
    {
      v49 = v40;
    }

    sub_10002B894(&v55, &unk_10097E890);
  }

  return v46 + v49;
}

uint64_t sub_10053354C(double a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CGFloat a19, CGFloat a20, CGFloat a21, CGFloat a22)
{
  v123 = a16;
  v118 = a15;
  v137 = a8;
  v125 = a6;
  v130 = a5;
  v129 = a4;
  v136 = a3;
  v116 = a1;
  v128 = COERCE_DOUBLE(type metadata accessor for FloatingPointRoundingRule());
  v29 = *(*&v128 - 8);
  __chkstk_darwin(*&v128);
  v127 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a14 - 8);
  __chkstk_darwin(v32);
  v34 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v35);
  v120 = v38;
  v39 = *(v38 + 16);
  v119 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39(v36);
  v122 = v31;
  v40 = *(v31 + 16);
  v121 = v34;
  v40(v34, a10, a14);
  *&v41 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout(0));
  v42 = v41[10];
  sub_100031660(a12 + v42, &v139, &qword_100975610);
  v135 = a12;
  v134 = a7;
  v138 = a18;
  v133 = a17;
  v132 = a21;
  v126 = a20;
  v131 = a19;
  v124 = a22;
  if (v140)
  {
    sub_100005A38(&v139, &v141);
    sub_10002A400((a12 + v41[6]), *(a12 + v41[6] + 24));
    dispatch thunk of LayoutView.frame.getter();
    CGRectGetMidY(v143);
    v115 = a2;
    v144.origin.x = a19;
    v144.origin.y = a20;
    v144.size.width = a21;
    v144.size.height = a22;
    CGRectGetMinY(v144);
    v145.origin.x = a19;
    v145.origin.y = a20;
    v145.size.width = a21;
    v145.size.height = a22;
    CGRectGetMaxX(v145);
    sub_10002A400(&v141, v142);
    CGRect.withLayoutDirection(in:relativeTo:)();
    a12 = v135;
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v141);
  }

  else
  {
    sub_10002B894(&v139, &qword_100975610);
  }

  v116 = *&v41;
  v43 = a12;
  v44 = (a12 + v41[12]);
  sub_10002A400(v44, v44[3]);
  v45 = dispatch thunk of LayoutView.isHidden.getter();
  v46 = v125;
  v47 = v129;
  if (v45)
  {
    sub_10002A400(v44, v44[3]);
    dispatch thunk of LayoutView.frame.setter();
    v48 = v124;
    v49 = v126;
  }

  else
  {
    v117 = v29;
    sub_100031660(v43 + v42, &v141, &qword_100975610);
    v50 = v142;
    sub_10002B894(&v141, &qword_100975610);
    v51 = v131;
    if (v50)
    {
      v52 = type metadata accessor for ProductLockupLayout.Metrics(0);
      sub_10002A400((v43 + *(v52 + 80)), *(v43 + *(v52 + 80) + 24));
      v53 = v127;
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      (*(v117 + 8))(v53, COERCE_DOUBLE(*&v128));
    }

    v54 = v132;
    v55 = v124;
    sub_100031660(v43 + v42, &v141, &qword_100975610);
    v56 = v126;
    v114 = a14;
    v113 = a13;
    if (v142)
    {
      sub_10002A400(&v141, v142);
      Measurable.measuredSize(fitting:in:)();
      sub_100007000(&v141);
    }

    else
    {
      sub_10002B894(&v141, &qword_100975610);
    }

    v57 = v117;
    v146.origin.x = v51;
    v146.origin.y = v56;
    v146.size.width = v54;
    v146.size.height = v55;
    CGRectGetWidth(v146);
    v147.origin.x = v136;
    v147.origin.y = v47;
    v58 = v130;
    v147.size.width = v130;
    v59 = v125;
    v147.size.height = v125;
    CGRectGetWidth(v147);
    v60 = v135 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);
    v61 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    v62 = (v60 + *(v61 + 28));
    v63 = v62[3];
    v112 = v62;
    sub_10002A400(v62, v63);
    v64 = v127;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v65 = a11;
    v66 = *(v57 + 8);
    v67 = v128;
    v66(v64, *&v128);
    v68 = v136;
    v69 = v58;
    v47 = v129;
    sub_10002A400((v60 + *(v61 + 24)), *(v60 + *(v61 + 24) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v115 = *&v66;
    v66(v64, *&v67);
    a11 = v65;
    sub_10002A400(v44, v44[3]);
    v46 = v59;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v71 = v70;
    v148.origin.x = v68;
    v148.origin.y = v47;
    v148.size.width = v69;
    v148.size.height = v59;
    CGRectGetMidY(v148);
    v72 = (v135 + *(*&v116 + 44));
    sub_10002A400(v72, v72[3]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) != 0 || (v149.origin.x = v68, v149.origin.y = v47, v149.size.width = v69, v149.size.height = v59, CGRectGetHeight(v149) < v71))
    {
      v150.origin.x = v68;
      v150.origin.y = v47;
      v150.size.width = v69;
      v150.size.height = v59;
      CGRectGetMinY(v150);
    }

    a14 = v114;
    sub_10002A400(v72, v72[3]);
    v73 = dispatch thunk of LayoutView.isHidden.getter();
    v29 = v117;
    v49 = v126;
    v74 = v68;
    v75 = v47;
    v76 = v69;
    v77 = v46;
    if (v73)
    {
      CGRectGetMinX(*&v74);
    }

    else
    {
      CGRectGetMaxX(*&v74);
      sub_10002A400(v112, v112[3]);
      v78 = v29;
      v79 = v127;
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v80 = v79;
      v29 = v78;
      (*&v115)(v80, *&v128);
    }

    a13 = v113;
    sub_10002A400(v44, v44[3]);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v48 = v124;
  }

  v81 = v47;
  sub_10002A400(v44, v44[3]);
  v82 = v132;
  v83 = v48;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v85 = v84;
  sub_10002A400(v44, v44[3]);
  v86 = dispatch thunk of LayoutView.isHidden.getter();
  v87 = 0.0;
  v88 = v135;
  if ((v86 & 1) == 0)
  {
    v89 = v88 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);
    v90 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10002A400((v89 + *(v90 + 28)), *(v89 + *(v90 + 28) + 24));
    v91 = v127;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v93 = v92;
    (*(v29 + 8))(v91, COERCE_DOUBLE(*&v128));
    v87 = v85 + v93;
  }

  v94 = v131;
  v151.origin.x = v131;
  v151.origin.y = v49;
  v151.size.width = v82;
  v151.size.height = v83;
  Width = CGRectGetWidth(v151);
  v152.origin.x = v136;
  v152.origin.y = v81;
  v152.size.width = v130;
  v152.size.height = v46;
  v96 = Width - CGRectGetWidth(v152);
  v97 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v139 = a11;
  sub_10002849C(&qword_100979010);
  Conditional.evaluate(with:)();
  if (v96 - v141 - v87 > 0.0)
  {
    v98 = v96 - v141 - v87;
  }

  else
  {
    v98 = 0.0;
  }

  v153.origin.x = v94;
  v153.origin.y = v49;
  v153.size.width = v82;
  v153.size.height = v83;
  CGRectGetHeight(v153);
  v99 = v119;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v101 = v100;
  v103 = v102;
  v128 = v104;
  v154.origin.x = v94;
  v154.origin.y = v49;
  v154.size.width = v82;
  v154.size.height = v83;
  MaxX = CGRectGetMaxX(v154);
  v155.origin.x = v136;
  v155.origin.y = v129;
  v155.size.width = v130;
  v155.size.height = v46;
  MinY = CGRectGetMinY(v155);
  if (v98 < v101)
  {
    v101 = v98;
  }

  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v156.origin.x = MaxX - v98;
  v156.origin.y = MinY;
  v156.size.width = v101;
  v156.size.height = v103;
  v136 = CGRectGetMaxY(v156) - v128;
  v107 = v131;
  v157.origin.x = v131;
  v157.origin.y = v49;
  v108 = v132;
  v157.size.width = v132;
  v157.size.height = v83;
  CGRectGetHeight(v157);
  v109 = v121;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v130 = v110;
  v158.origin.x = v107;
  v158.origin.y = v49;
  v158.size.width = v108;
  v158.size.height = v83;
  CGRectGetMaxX(v158);
  sub_10002A400((v88 + *(v97 + 84)), *(v88 + *(v97 + 84) + 24));
  AnyDimension.topMargin(from:in:)();
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  (*(v120 + 8))(v99, a13);
  return (*(v122 + 8))(v109, a14);
}

uint64_t sub_100534260(uint64_t a1)
{
  *(a1 + 8) = sub_1005342E4(&qword_1009856F0, type metadata accessor for ProductLockupLayout);
  result = sub_1005342E4(&qword_10098A350, type metadata accessor for ProductLockupLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1005342E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100534354()
{
  type metadata accessor for ProductLockupLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_100154428(319, &unk_10098A3C0);
    if (v1 <= 0x3F)
    {
      sub_100154428(319, &qword_10097E940);
      if (v2 <= 0x3F)
      {
        sub_100154308(319, &unk_10098A3D0, &unk_10097E950);
        if (v3 <= 0x3F)
        {
          sub_100154308(319, &qword_10098A3E0, &unk_10097E960);
          if (v4 <= 0x3F)
          {
            sub_1000C6500();
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

void sub_1005344E8()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    sub_100154428(319, &qword_1009842D0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_1005346D4(319, qword_10097EA30);
        if (v3 <= 0x3F)
        {
          sub_100534660();
          if (v4 <= 0x3F)
          {
            sub_1005346D4(319, &unk_10098A4D8);
            if (v5 <= 0x3F)
            {
              type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(319);
              if (v6 <= 0x3F)
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

void sub_100534660()
{
  if (!qword_10098A4C8)
  {
    sub_10002D1A8(&qword_100973F50);
    sub_1000367E8();
    v0 = type metadata accessor for Conditional();
    if (!v1)
    {
      atomic_store(v0, &qword_10098A4C8);
    }
  }
}

void sub_1005346D4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_10002D1A8(&qword_100973F50);
    v3 = type metadata accessor for Conditional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_100534768()
{
  sub_100154428(319, &qword_1009842D0);
  if (v0 <= 0x3F)
  {
    sub_100534660();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100534810()
{
  result = qword_10098A600;
  if (!qword_10098A600)
  {
    sub_10002D1A8(&unk_10098A5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A600);
  }

  return result;
}

unint64_t sub_100534888()
{
  result = qword_10098A608;
  if (!qword_10098A608)
  {
    type metadata accessor for CancelPreorderAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A608);
  }

  return result;
}

uint64_t sub_1005348E0(uint64_t a1, uint64_t a2)
{
  v14[1] = a2;
  v3 = type metadata accessor for ActionOutcome();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSLogger();
  sub_1000056A8(v8, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x80000001008191B0;
  v9._countAndFlagsBits = 0xD000000000000018;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v10 = type metadata accessor for PreorderStatus();
  v15[3] = v10;
  v11 = sub_1000056E0(v15);
  (*(*(v10 - 8) + 16))(v11, a1, v10);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v15);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  (*(v4 + 104))(v6, enum case for ActionOutcome.performed(_:), v3);
  Promise.resolve(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100534BC8()
{
  v0 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100819190;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  swift_getErrorValue();
  v7[3] = v6;
  v3 = sub_1000056E0(v7);
  (*(*(v6 - 8) + 16))(v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v7);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  swift_getObjectType();
  AppStateController.clearWaiting(for:)();
  return Promise.reject(_:)();
}

uint64_t sub_100534E2C()
{
  v0 = type metadata accessor for AdamId();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  sub_10002849C(&qword_1009764A0);
  v7 = Promise.__allocating_init()();
  CancelPreorderAction.preorderAdamId.getter();
  CancelPreorderAction.isArcade.getter();
  type metadata accessor for Commerce();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  sub_10002849C(&unk_100973AF0);
  inject<A, B>(_:from:)();
  v14 = v15;
  dispatch thunk of Commerce.cancelPreorder(for:isArcade:)();
  (*(v1 + 16))(v3, v6, v0);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v14;
  (*(v1 + 32))(v10 + v8, v3, v0);
  *(v10 + v9) = v7;
  v11 = sub_1000076C0();
  swift_retain_n();
  swift_unknownObjectRetain();
  v12 = static OS_dispatch_queue.main.getter();
  v16 = v11;
  v17 = &protocol witness table for OS_dispatch_queue;
  *&v15 = v12;
  Promise.then(perform:orCatchError:on:)();
  swift_unknownObjectRelease();

  (*(v1 + 8))(v6, v0);
  sub_100007000(&v15);
  return v7;
}

uint64_t sub_100535104()
{
  type metadata accessor for AdamId();

  return sub_100534BC8();
}

uint64_t sub_1005351A4()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_10098A610);
  sub_1000056A8(v4, qword_10098A610);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

void sub_1005352F8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v49 = a6;
  Strong = a5;
  v9 = type metadata accessor for OSLogger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v13 - 8);
  v48 = &v44 - v14;
  v15 = type metadata accessor for AlertActionStyle();
  v47 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v18 - 8);
  if (a1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    [Strong presentViewController:a4 animated:1 completion:0];
    v19 = Strong;

    return;
  }

  if (!a2)
  {
    goto LABEL_18;
  }

  *&v54 = a2;
  swift_errorRetain();
  sub_10002849C(&qword_10098A690);
  v20 = sub_100005744(0, &qword_10097D7D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v45 = v20;
  v46 = v51;
  v21 = [v51 domain];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {

      goto LABEL_18;
    }
  }

  v27 = v46;
  if ([v46 code] == -7005)
  {
    if (qword_10096E890 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v9, qword_10098A610);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    *(&v55 + 1) = v45;
    *&v54 = v46;
    v28 = v46;
    static LogMessage.safe(_:)();
    sub_10002B894(&v54, &unk_1009711D0);
    Logger.error(_:)();

    v29 = v28;
    Promise.reject(_:)();

    v30._object = 0x8000000100819050;
    v30._countAndFlagsBits = 0xD000000000000017;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    localizedString(_:comment:)(v30, v31);
    v32._countAndFlagsBits = 0xD00000000000002ALL;
    v32._object = 0x8000000100819070;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    localizedString(_:comment:)(v32, v33);
    static ActionMetrics.notInstrumented.getter();
    (*(v47 + 104))(v17, enum case for AlertActionStyle.normal(_:), v15);
    type metadata accessor for AlertAction();
    swift_allocObject();
    v34 = AlertAction.init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)();
    v35 = sub_10002849C(&unk_100974490);
    v37 = v48;
    v36 = v49;
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v38 = *(v35 - 8);
    if ((*(v38 + 48))(v37, 1, v35) == 1)
    {

      sub_10002B894(v37, &unk_100972A00);
    }

    else
    {
      sub_1005FA1B4(v34, 1, v36, v37);

      (*(v38 + 8))(v37, v35);
    }

    return;
  }

LABEL_18:
  if (qword_10096E890 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v9, qword_10098A610);
  (*(v10 + 16))(v12, v39, v9);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  if (a2)
  {
    swift_getErrorValue();
    v40 = v52;
    v41 = v53;
    *(&v55 + 1) = v53;
    v42 = sub_1000056E0(&v54);
    (*(*(v41 - 8) + 16))(v42, v40, v41);
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  static LogMessage.safe(_:)();
  sub_10002B894(&v54, &unk_1009711D0);
  Logger.error(_:)();

  (*(v10 + 8))(v12, v9);
  sub_100536688();
  swift_allocError();
  *v43 = 1;
  Promise.reject(_:)();
}

void sub_100535BA8(void *a1, uint64_t a2)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a2 + 16))
  {
    v6 = sub_1000072B8(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(a2 + 56) + 8 * v6);
      v10 = [v9 success];
      v11 = [v9 error];
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v12;
      *(v13 + 32) = v10;
      v25 = sub_100536B18;
      v26 = v13;
      v21 = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_100007A08;
      v24 = &unk_1008C7B40;
      v14 = _Block_copy(&v21);
      v15 = v11;

      [a1 dismissViewControllerAnimated:1 completion:v14];
      _Block_release(v14);

      return;
    }
  }

  else
  {
  }

  sub_100536688();
  v16 = swift_allocError();
  *v17 = 0;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v18;
  *(v19 + 32) = 0;
  v25 = sub_100536B18;
  v26 = v19;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_100007A08;
  v24 = &unk_1008C7AF0;
  v20 = _Block_copy(&v21);
  swift_errorRetain();

  [a1 dismissViewControllerAnimated:1 completion:v20];
  _Block_release(v20);
}

uint64_t sub_100535EE8(void *a1)
{
  sub_100536688();
  v2 = swift_allocError();
  *v3 = 1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  *(v5 + 32) = 0;
  v8[4] = sub_1005366DC;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100007A08;
  v8[3] = &unk_1008C7AA0;
  v6 = _Block_copy(v8);
  swift_errorRetain();

  [a1 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

char *sub_10053608C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for ActionOutcome();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_10096E890 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for OSLogger();
    sub_1000056A8(v10, qword_10098A610);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    swift_getErrorValue();
    v11 = v23[1];
    v12 = v24;
    v26 = v24;
    v13 = sub_1000056E0(v25);
    (*(*(v12 - 1) + 16))(v13, v11, v12);
    static LogMessage.safe(_:)();
    sub_10002B894(v25, &unk_1009711D0);
    Logger.error(_:)();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      goto LABEL_20;
    }

    v15 = Strong;
    if (*(Strong + OBJC_IVAR____TtCV8AppStore26SignInActionImplementationP33_C9E7F6675EBDA5331FAB461813C5261514SignInDelegate_outcome))
    {

      Promise.reject(_:)();

LABEL_17:

      goto LABEL_20;
    }
  }

  else
  {
    v23[0] = v7;
    if (qword_10096E890 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for OSLogger();
    sub_1000056A8(v16, qword_10098A610);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    v26 = &type metadata for Bool;
    LOBYTE(v25[0]) = a3 & 1;
    static LogMessage.safe(_:)();
    sub_10002B894(v25, &unk_1009711D0);
    Logger.info(_:)();

    if (a3)
    {
      swift_beginAccess();
      v17 = swift_unknownObjectWeakLoadStrong();
      if (!v17)
      {
        goto LABEL_20;
      }

      v18 = v17;
      if (*(v17 + OBJC_IVAR____TtCV8AppStore26SignInActionImplementationP33_C9E7F6675EBDA5331FAB461813C5261514SignInDelegate_outcome))
      {

        v19 = v23[0];
        (*(v6 + 104))(v9, enum case for ActionOutcome.performed(_:), v23[0]);
        Promise.resolve(_:)();

        (*(v6 + 8))(v9, v19);
        goto LABEL_20;
      }
    }

    else
    {
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (!v20)
      {
        goto LABEL_20;
      }

      v18 = v20;
      if (*(v20 + OBJC_IVAR____TtCV8AppStore26SignInActionImplementationP33_C9E7F6675EBDA5331FAB461813C5261514SignInDelegate_outcome))
      {

        sub_100536688();
        swift_allocError();
        *v21 = 2;
        Promise.reject(_:)();

        goto LABEL_17;
      }
    }
  }

LABEL_20:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *&result[OBJC_IVAR____TtCV8AppStore26SignInActionImplementationP33_C9E7F6675EBDA5331FAB461813C5261514SignInDelegate_outcome] = 0;
  }

  return result;
}

unint64_t sub_100536688()
{
  result = qword_10098A658;
  if (!qword_10098A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A658);
  }

  return result;
}

uint64_t sub_1005366F0()
{

  return _swift_deallocObject(v0, 33, 7);
}

unint64_t sub_100536754()
{
  result = qword_10098A668;
  if (!qword_10098A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A668);
  }

  return result;
}

unint64_t sub_1005367AC()
{
  result = qword_10098A670;
  if (!qword_10098A670)
  {
    type metadata accessor for SignInAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A670);
  }

  return result;
}

uint64_t sub_100536804(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = OBJC_IVAR____TtCV8AppStore26SignInActionImplementationP33_C9E7F6675EBDA5331FAB461813C5261514SignInDelegate_outcome;
  if (*(v4 + OBJC_IVAR____TtCV8AppStore26SignInActionImplementationP33_C9E7F6675EBDA5331FAB461813C5261514SignInDelegate_outcome))
  {
    sub_100536688();
    swift_allocError();
    *v6 = 3;

    Promise.invalidate(_:)();
  }

  sub_10002849C(&qword_1009764A0);
  v7 = Promise.__allocating_init()();
  *(v4 + v5) = v7;

  v8 = [objc_allocWithZone(AAUISignInController) init];
  sub_10002849C(&unk_10098A680);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B10D0;
  v10 = AIDAServiceTypeStore;
  *(v9 + 32) = AIDAServiceTypeStore;
  type metadata accessor for AIDAServiceType(0);
  v11 = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setServiceTypes:isa];

  [v8 setDelegate:v4];
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100536A80(v2, v19);
  v14 = swift_allocObject();
  sub_100536AB8(v19, (v14 + 2));
  v14[4] = v8;
  v14[5] = v7;
  v14[6] = a1;
  v18[4] = sub_100536AF0;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100235C48;
  v18[3] = &unk_1008C7CA0;
  v15 = _Block_copy(v18);

  v16 = v8;

  [v16 prepareInViewController:Strong completion:v15];
  _Block_release(v15);

  return v7;
}

uint64_t sub_100536B1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_100536B64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100536BB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>, double a8@<D4>, double a9@<D5>)
{
  v43 = a6;
  v44 = a5;
  v42 = a4;
  v51 = a7;
  v52 = a3;
  v49 = a1;
  v50 = a2;
  v46 = a8;
  v47 = a9;
  v41 = type metadata accessor for DynamicTypeSize();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Shelf.ContentType();
  v53 = *(v48 - 8);
  __chkstk_darwin(v48);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PageGrid.Direction();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v18 = sub_10002849C(&qword_100974650);
  __chkstk_darwin(v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v37 - v22;
  sub_100031660(v49, &v37 - v22, &unk_10098FFB0);
  sub_100031660(v50, &v23[*(v18 + 48)], &unk_10098FFB0);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0);
  ReadOnlyLens.subscript.getter();

  v49 = v13;
  v24 = *(v13 + 104);
  v25 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v55)
  {
    v25 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v26 = *v25;
  v50 = v12;
  v24(v17, v26, v12);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v27 = *(v53 + 88);
  v45 = v11;
  v28 = v48;
  if (v27(v11) == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    v29 = v23;
    v30 = v49;
    v31 = v50;
    if (v43)
    {
      v32 = 2;
    }

    else
    {
      v32 = v44;
    }

    v33 = v38;
    PageEnvironment.dynamicTypeSize.getter();
    v34 = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v40 + 8))(v33, v41);
    if (v34 & 1) != 0 && (PageEnvironment.isHorizontalSizeClassCompact.getter())
    {
      v32 = 1;
    }

    (*(v30 + 16))(v39, v17, v31);
    sub_1001D231C(v32);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v30 + 8))(v17, v31);
    return sub_10002B894(v29, &qword_100974650);
  }

  else
  {
    v54 = v42;
    sub_100031660(v23, v20, &qword_100974650);
    v36 = *(v18 + 48);
    sub_10010E37C();
    PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
    (*(v49 + 8))(v17, v50);
    sub_10002B894(v23, &qword_100974650);
    sub_10002B894(&v20[v36], &unk_10098FFB0);
    sub_10002B894(v20, &unk_10098FFB0);
    return (*(v53 + 8))(v45, v28);
  }
}

uint64_t sub_1005371B0()
{
  sub_1005375D4();

  return PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_100537294()
{
  sub_1005375D4();

  return PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_100537378(uint64_t a1, uint64_t a2)
{
  v4 = sub_100537628();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_1005373DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D6>, double a9@<D7>)
{
  v23[6] = a5;
  v23[7] = a6;
  v23[5] = a4;
  *&v23[3] = a8;
  *&v23[4] = a9;
  v23[1] = a7;
  v23[2] = a1;
  v12 = sub_10002849C(&qword_100974650);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v23 - v17;
  v19 = *(v9 + 2);
  v20 = *(v9 + 24);
  sub_100031660(a2, v23 - v17, &unk_10098FFB0);
  sub_100031660(a3, &v18[*(v13 + 56)], &unk_10098FFB0);
  v24 = *v9;
  v25 = v19;
  v26 = v20;
  sub_100031660(v18, v15, &qword_100974650);
  v21 = *(v13 + 56);
  PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
  sub_10002B894(v18, &qword_100974650);
  sub_10002B894(&v15[v21], &unk_10098FFB0);
  return sub_10002B894(v15, &unk_10098FFB0);
}

unint64_t sub_1005375D4()
{
  result = qword_10098A698;
  if (!qword_10098A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A698);
  }

  return result;
}

unint64_t sub_100537628()
{
  result = qword_10098A6A0;
  if (!qword_10098A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A6A0);
  }

  return result;
}

uint64_t sub_100537688@<X0>(uint64_t a1@<X8>)
{
  sub_1000DCAC8();
  v2 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
  v3 = type metadata accessor for LockupMediaLayout.DisplayType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for AppTrailerLockupCollectionViewCell()
{
  result = qword_10098A6D0;
  if (!qword_10098A6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_100537800(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_cardView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v20 = [v18 contentView];
  [v20 addSubview:*&v18[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_cardView]];

  return v18;
}

void sub_100537A94()
{
  v0 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v0 - 8);
  v59 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v48 - v3;
  v5 = type metadata accessor for ImpressionMetrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v60 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  if (!v10)
  {

    return;
  }

  v11 = v10;
  v12 = [v9 superview];
  if (!v12)
  {

LABEL_21:

    return;
  }

  v13 = v12;
  v14 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_cardView;
  v15 = *&v9[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_cardView];

  v16 = v13;
  v17 = v15;
  sub_1002F54C8(v17, v11, v16);

  v18 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v15) = sub_100736BE4();

  if ((v15 & 1) == 0)
  {

    goto LABEL_21;
  }

  v19 = [v9 viewWithTag:58236912];
  [v19 removeFromSuperview];

  v20 = *&v9[v14];
  v21 = qword_10097F7A8;
  swift_beginAccess();
  v58 = v20;
  v22 = *&v20[v21];
  v52 = v9;
  v51 = v11;
  v50 = v16;
  if (v22 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v24 = qword_10097F790;
    v25 = v58;
    v49 = v58;

    v64 = v24;
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v26 = 0;
    v62 = v22 & 0xFFFFFFFFFFFFFF8;
    v63 = v22 & 0xC000000000000001;
    v61 = (v6 + 48);
    v57 = (v6 + 32);
    v56 = (v6 + 16);
    v55 = (v6 + 56);
    v54 = (v6 + 8);
    v27 = 32;
    v53 = v4;
    while (1)
    {
      if (v63)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *(v62 + 16))
        {
          goto LABEL_25;
        }

        v6 = *(v22 + 8 * v26 + 32);
      }

      v28 = *&v25[v64];
      if (v26 >= *(v28 + 16))
      {
        break;
      }

      v29 = *(v28 + v27);
      Lockup.impressionMetrics.getter();
      if ((*v61)(v4, 1, v5) == 1)
      {

        sub_10002B894(v4, &qword_100973D30);
      }

      else
      {
        v30 = v60;
        (*v57)(v60, v4, v5);
        v31 = v29;
        [v31 bounds];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v40 = [objc_opt_self() blueColor];
        v41 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
        v42 = sub_10077F3D4(v40, v33, v35, v37, v39);
        v43 = i;
        v44 = v22;
        v45 = v59;
        (*v56)(v59, v30, v5);
        (*v55)(v45, 0, 1, v5);
        sub_10077EFB4(v45);
        sub_10002B894(v45, &qword_100973D30);
        v46 = [v31 viewWithTag:58236912];
        [v46 removeFromSuperview];

        v22 = v44;
        i = v43;
        v4 = v53;
        [v31 addSubview:v42];

        v47 = v30;
        v25 = v58;
        (*v54)(v47, v5);
      }

      ++v26;

      v27 += 16;
      if (i == v26)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_22:
}

uint64_t type metadata accessor for ArcadeDownloadPackCollectionViewCell()
{
  result = qword_10098A708;
  if (!qword_10098A708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005381A0()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100538298(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100538350()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_1005383AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

void (*sub_10053846C())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_10053850C;
}

void sub_100538514()
{
  v1 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_itemLayoutContext;
  v2 = type metadata accessor for ItemLayoutContext();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_cardView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100538614()
{
  result = qword_10098A718;
  if (!qword_10098A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A718);
  }

  return result;
}

uint64_t sub_100538668(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  v3 = type metadata accessor for URL();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_100538728, 0, 0);
}

id sub_100538728()
{
  if (ExternalUrlAction.isSensitive.getter())
  {
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v2;
    *(v0 + 144) = 1;
    *(v0 + 168) = &type metadata for Bool;
    sub_100056164((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100051CAC((v0 + 176), v1, v3, isUniquelyReferenced_nonNull_native);
  }

  if (ExternalUrlAction.allowFromLockscreen.getter())
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    *(v0 + 104) = &type metadata for Bool;
    *(v0 + 80) = 1;
    sub_100056164((v0 + 80), (v0 + 112));
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_100051CAC((v0 + 112), v5, v7, v8);
  }

  v9 = ExternalUrlAction.timeoutSeconds.getter();
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    *(v0 + 40) = &type metadata for Double;
    *(v0 + 16) = v11;
    sub_100056164((v0 + 16), (v0 + 48));
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_100051CAC((v0 + 48), v12, v14, v15);
  }

  if (_swiftEmptyDictionarySingleton[2])
  {
    v16 = [objc_allocWithZone(_LSOpenConfiguration) init];
    if (v16)
    {
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v16 setFrontBoardOptions:isa];
    }
  }

  else
  {
    v16 = 0;
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v19 = result;
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = *(v0 + 224);
    v23 = *(v0 + 208);

    ExternalUrlAction.url.getter();
    URL._bridgeToObjectiveC()(v24);
    v26 = v25;
    (*(v21 + 8))(v20, v22);
    [v19 openURL:v26 configuration:v16 completionHandler:0];

    v27 = enum case for ActionOutcome.performed(_:);
    v28 = type metadata accessor for ActionOutcome();
    (*(*(v28 - 8) + 104))(v23, v27, v28);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100538A58(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100095E9C;

  return sub_100538668(a1, v4);
}

unint64_t sub_100538AFC()
{
  result = qword_10098A720;
  if (!qword_10098A720)
  {
    type metadata accessor for ExternalUrlAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A720);
  }

  return result;
}

uint64_t sub_100538B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100538BA8();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_100538BA8()
{
  result = qword_10098A728;
  if (!qword_10098A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A728);
  }

  return result;
}

uint64_t sub_100538BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v21 = a4;
  v22 = a2;
  v25 = type metadata accessor for Shelf.PresentationHints();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ComponentLayoutOptions();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&unk_10097DAF0);
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - v10;
  v12 = sub_10002849C(&unk_1009731D0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v13 + 8))(v15, v12);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v16 = sub_100079F24();
  (*(*(v21 + 8) + 80))(v26, v11, v22, v8, v5, v16, v24);
  swift_unknownObjectRelease();
  (*(v23 + 8))(v5, v25);
  (*(v6 + 8))(v8, v20);
  (*(v9 + 8))(v11, v19);
  return sub_100007000(v26);
}

char *sub_1005390CC()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() effectWithBlurRadius:26.0];
  v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v2];

  v4 = OBJC_IVAR____TtC8AppStore31AppBundleGradientBackgroundView_blurView;
  *&v0[OBJC_IVAR____TtC8AppStore31AppBundleGradientBackgroundView_blurView] = v3;
  v5 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v5 setValue:isa forKey:kCAFilterInputAmount];

  v7 = [*&v0[v4] contentView];
  v8 = [v7 layer];

  sub_10002849C(&qword_1009701B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B10D0;
  *(v9 + 56) = sub_1005395EC();
  *(v9 + 32) = v5;
  v10 = v5;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  [v8 setFilters:v11];

  *&v0[OBJC_IVAR____TtC8AppStore31AppBundleGradientBackgroundView_gradientView] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v29.receiver = v0;
  v29.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setClipsToBounds:0];
  v17 = OBJC_IVAR____TtC8AppStore31AppBundleGradientBackgroundView_gradientView;
  [v16 addSubview:*&v16[OBJC_IVAR____TtC8AppStore31AppBundleGradientBackgroundView_gradientView]];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC8AppStore31AppBundleGradientBackgroundView_blurView]];
  v18 = [v16 layer];
  [v18 setAllowsGroupBlending:0];

  v19 = *&v16[v17];
  *&v28.a = _swiftEmptyArrayStorage;
  v20 = v19;
  specialized ContiguousArray.reserveCapacity(_:)();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:1.0];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.2];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.0];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  *&v20[OBJC_IVAR____TtC8AppStore12GradientView_colors] = _swiftEmptyArrayStorage;

  sub_1001C0CEC();

  v21 = *&v16[v17];
  v22 = [v21 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 1.0}];

  v23 = *&v16[v17];
  v24 = [v23 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 0.0}];

  v25 = *&v16[v17];
  sub_1001C0B48(&off_1008B0190);

  v26 = *&v16[v17];
  CGAffineTransformMakeRotation(&v28, -0.20943951);
  [v26 setTransform:&v28];

  return v16;
}

unint64_t sub_1005395EC()
{
  result = qword_100982738;
  if (!qword_100982738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100982738);
  }

  return result;
}

double sub_100539638(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = *a1;
  ObjectType = swift_getObjectType();

  return sub_1005397D8(a2, v9, a7, ObjectType);
}

uint64_t sub_100539698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ContingentOffer();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    sub_100539A70(v5, a3);
  }

  else
  {
    type metadata accessor for OfferItem();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v7 = result;

    sub_100539C84(v7, a3);
  }
}

double sub_1005397D8(double a1, uint64_t a2, void *a3, void *a4)
{
  type metadata accessor for ContingentOffer();
  if (swift_dynamicCastClass())
  {

    ContingentOffer.title.getter();
    v7 = Paragraph.text.getter();

    v8 = ContingentOffer.badge.getter();
    v10 = v9;
    v11 = ContingentOffer.subtitle.getter();
    v13 = v12;
    v14 = ContingentOffer.trunkAppIcon.getter();
    if (qword_10096D5D8 != -1)
    {
      swift_once();
    }

    sub_100438080(&unk_1009CEDC8, a3);
    v15 = type metadata accessor for AppPromotionCardView();
    sub_1000FFA50(v7, v8, v10, v11, v13, v14, a3, a1, v15, a4);
  }

  else
  {
    type metadata accessor for OfferItem();
    if (swift_dynamicCastClass())
    {

      OfferItem.title.getter();
      v16 = Paragraph.text.getter();

      v17 = OfferItem.badge.getter();
      v19 = v18;
      v20 = OfferItem.subtitle.getter();
      v22 = v21;
      if (qword_10096D5D8 != -1)
      {
        swift_once();
      }

      sub_100438080(&unk_1009CEDC8, a3);
      v23 = type metadata accessor for AppPromotionCardView();
      sub_1000FFA50(v16, v17, v19, v20, v22, 0, a3, a1, v23, a4);
    }

    else
    {
      return 0.0;
    }
  }

  return a1;
}

uint64_t sub_100539A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = AppPromotion.clickAction.getter();
  if (v9)
  {
    v16[1] = v9;
    type metadata accessor for Action();
    type metadata accessor for BaseObjectGraph();
    sub_10053A078(&qword_100992FB0, &type metadata accessor for Action);
    ComponentModel.pairedWith<A>(objectGraph:)();

    v10 = sub_10002849C(&unk_10097B3D0);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_10002849C(&unk_10097B3D0);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = OBJC_IVAR____TtC8AppStore16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_100079964(v8, v3 + v12);
  swift_endAccess();
  v13 = ContingentOffer.label.getter();
  sub_1002C3B04(v13, v14);
  return sub_100100AE8(a1, a2);
}

uint64_t sub_100539C84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = AppPromotion.clickAction.getter();
  if (v9)
  {
    v16[1] = v9;
    type metadata accessor for Action();
    type metadata accessor for BaseObjectGraph();
    sub_10053A078(&qword_100992FB0, &type metadata accessor for Action);
    ComponentModel.pairedWith<A>(objectGraph:)();

    v10 = sub_10002849C(&unk_10097B3D0);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_10002849C(&unk_10097B3D0);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = OBJC_IVAR____TtC8AppStore16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_100079964(v8, v3 + v12);
  swift_endAccess();
  v13 = OfferItem.formattedEndDateString.getter();
  sub_1002C3B04(v13, v14);
  return sub_1001018CC(a1, a2);
}

void sub_100539E98(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v8, a3);
  type metadata accessor for ArtworkView();
  sub_10053A078(&qword_100970E80, &type metadata accessor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = qword_100988CC0;
    v6 = Strong;
    v5 = [*(Strong + qword_100988CC0) layer];
    [v5 removeAllAnimations];

    [*&v6[v4] setImage:0];
    type metadata accessor for VideoView();
    sub_10053A078(&unk_1009840E0, type metadata accessor for VideoView);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }
}

uint64_t sub_10053A078(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MSODiffablePageViewController()
{
  result = qword_10098A7D8;
  if (!qword_10098A7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10053A144(uint64_t a1, SEL *a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  result = [v7 *a2];
  *a4 = v7;
  return result;
}

uint64_t sub_10053A1A0(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  swift_beginAccess();
  v3 = *(v1 + 32);
  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > a1)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
    return 0;
  }

LABEL_4:
  result = swift_beginAccess();
  v5 = *(v1 + 32);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v6 = *(v5 + 8 * a1 + 32);

LABEL_7:
    swift_endAccess();
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10053A27C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for AutomationSemantics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  v13 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v13 - 8);
  result = Lockup.icon.getter();
  if (result)
  {
    v17 = a2;
    swift_beginAccess();
    [a3 contentMode];
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [a3 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    if (*(v3 + 16))
    {
      type metadata accessor for ArtworkView();
      sub_10009A098();

      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    v19 = 0u;
    v20 = 0u;
    memset(v18, 0, sizeof(v18));
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    sub_10003D444(v18);
    sub_10003D444(&v19);
    *(&v20 + 1) = &type metadata for Int;
    *&v19 = v17;
    AutomationSemantics.attribute(key:value:)();
    v15 = *(v7 + 8);
    v15(v9, v6);
    sub_10003D444(&v19);
    UIView.setAutomationSemantics(_:)();

    return (v15)(v12, v6);
  }

  return result;
}

uint64_t sub_10053A570()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10053A5D4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_10053A660(double a1, double a2)
{
  result = swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_10053A6F4@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for RiverRowLayoutStyle.icons(_:);
  v3 = type metadata accessor for RiverRowLayoutStyle();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10053A768@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10053A1A0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10053A790()
{
  v0 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  type metadata accessor for ArtworkView();
  v3 = static ArtworkView.iconArtworkView.getter();
  if (qword_10096DAA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Shadow();
  v5 = sub_1000056A8(v4, qword_1009CFE58);
  v6 = *(v4 - 8);
  (*(v6 + 16))(v2, v5, v4);
  (*(v6 + 56))(v2, 0, 1, v4);
  ArtworkView.shadow.setter();
  return v3;
}

uint64_t sub_10053A8DC()
{
  result = ArtworkView.image.setter();
  if (*(v0 + 16))
  {
    type metadata accessor for ArtworkView();
    sub_10009A098();

    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  return result;
}

unint64_t sub_10053A984()
{
  result = qword_10098AE70;
  if (!qword_10098AE70)
  {
    type metadata accessor for GameCenterInvitePlayerAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098AE70);
  }

  return result;
}

uint64_t sub_10053A9DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&qword_10098A2E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34[-1] - v4;
  v6 = type metadata accessor for GameCenterInvitePlayerAction.InvitationType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v34[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002849C(&qword_1009764A0);
  v10 = Promise.__allocating_init()();
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v11 = v34[0];
  GameCenterInvitePlayerAction.invitationType.getter();
  v12 = (*(v7 + 88))(v9, v6);
  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.messages(_:))
  {
    (*(v7 + 96))(v9, v6);
    v13 = *v9;
    v14 = v9[1];
    v15 = Promise.__allocating_init()();
    type metadata accessor for GameCenter();
    v16 = sub_100005744(0, &qword_1009729E0);
    v17 = static OS_dispatch_queue.main.getter();
    v35 = v16;
    v36 = &protocol witness table for OS_dispatch_queue;
    v34[0] = v17;
    v18 = swift_allocObject();
    v18[2] = v15;
    v18[3] = v13;
    v18[4] = v14;
    v18[5] = a2;

    static GameCenter.withLocalPlayer(on:_:)();

    sub_100007000(v34);
    Promise.pipe(to:)();

    return v10;
  }

  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.player(_:))
  {
    (*(v7 + 96))(v9, v6);
    v19 = *v9;
    v20 = v9[1];
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v19;
    v22[5] = v20;
    v22[6] = v11;
    v22[7] = v10;

    v23 = &unk_1007D4010;
LABEL_7:
    sub_100221B78(0, 0, v5, v23, v22);

    return v10;
  }

  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.contact(_:))
  {
    (*(v7 + 96))(v9, v6);
    v33 = *v9;
    v24 = v9[2];
    v25 = v9[3];
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    *(v22 + 2) = v33;
    v22[6] = v24;
    v22[7] = v25;
    v22[8] = v11;
    v22[9] = v10;

    v23 = &unk_1007D4000;
    goto LABEL_7;
  }

  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for OSLogger();
  *&v33 = sub_1000056A8(v27, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  v28 = Promise.__allocating_init()();
  type metadata accessor for GameCenter();
  v29 = sub_100005744(0, &qword_1009729E0);
  v30 = static OS_dispatch_queue.main.getter();
  v35 = v29;
  v36 = &protocol witness table for OS_dispatch_queue;
  v34[0] = v30;
  v31 = swift_allocObject();
  v31[2] = v28;
  v31[3] = 0;
  v31[4] = 0;
  v31[5] = a2;

  static GameCenter.withLocalPlayer(on:_:)();

  sub_100007000(v34);
  Promise.pipe(to:)();

  (*(v7 + 8))(v9, v6);
  return v10;
}

uint64_t sub_10053AFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = type metadata accessor for ActionOutcome();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v9 = type metadata accessor for GameCenter.PushFriendInvitationType();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();

  return _swift_task_switch(sub_10053B10C, 0, 0);
}

uint64_t sub_10053B10C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[10];
  v4 = v0[11];
  type metadata accessor for GameCenter();
  *v1 = v5;
  v1[1] = v4;
  (*(v2 + 104))(v1, enum case for GameCenter.PushFriendInvitationType.player(_:), v3);

  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_10053B208;
  v7 = v0[19];
  v8 = v0[12];

  return static GameCenter.sendFriendInvitationViaPush(_:bag:)(v7, v8);
}

uint64_t sub_10053B208()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10053B43C;
  }

  else
  {
    v5 = sub_10053B378;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10053B378()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  Promise.resolve(_:)();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10053B43C()
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_1000056E0(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  static LogMessage.sensitive(_:)();
  sub_10003D444((v0 + 2));
  Logger.error(_:)();

  Promise.reject(_:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10053B664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v13;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  v9 = type metadata accessor for ActionOutcome();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v10 = type metadata accessor for GameCenter.PushFriendInvitationType();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_10053B790, 0, 0);
}

uint64_t sub_10053B790()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  type metadata accessor for GameCenter();
  *v1 = v7;
  v1[1] = v6;
  v1[2] = v5;
  v1[3] = v4;
  (*(v2 + 104))(v1, enum case for GameCenter.PushFriendInvitationType.contact(_:), v3);

  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_10053B8A4;
  v9 = v0[21];
  v10 = v0[14];

  return static GameCenter.sendFriendInvitationViaPush(_:bag:)(v9, v10);
}

uint64_t sub_10053B8A4()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  *(*v1 + 184) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10053BAD8;
  }

  else
  {
    v5 = sub_10053BA14;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10053BA14()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  Promise.resolve(_:)();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10053BAD8()
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_1000056E0(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  static LogMessage.sensitive(_:)();
  sub_10003D444((v0 + 2));
  Logger.error(_:)();

  Promise.reject(_:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10053BD00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    type metadata accessor for GameCenter();
    v8 = a1;
    static GameCenter.inviteFriendViewController(localPlayer:contactId:)();
    v9 = swift_allocObject();
    *(v9 + 16) = a5;
    *(v9 + 24) = a2;
    v10 = sub_100005744(0, &qword_1009729E0);
    swift_retain_n();

    v13[3] = v10;
    v13[4] = &protocol witness table for OS_dispatch_queue;
    v13[0] = static OS_dispatch_queue.main.getter();
    Promise.then(perform:orCatchError:on:)();

    return sub_100007000(v13);
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for OSLogger();
    sub_1000056A8(v12, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_10053C7C8();
    swift_allocError();
    Promise.reject(_:)();
  }
}

uint64_t sub_10053BFB0(void **a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v31 = type metadata accessor for FlowOrigin();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FlowAnimationBehavior();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for FlowPresentationContext();
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v28 - v14;
  v16 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v16 - 8);
  v18 = &v28 - v17;
  v19 = type metadata accessor for FlowPage();
  __chkstk_darwin(v19);
  v21 = *a1;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  (*(v22 + 104))(&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.viewController(_:));
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = type metadata accessor for ReferrerData();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v35 = sub_100005744(0, &qword_1009711C0);
  v34 = v21;
  v25 = v21;
  static ActionMetrics.notInstrumented.getter();
  (*(v9 + 104))(v11, enum case for FlowPresentationContext.infer(_:), v28);
  (*(v6 + 104))(v8, enum case for FlowAnimationBehavior.infer(_:), v29);
  (*(v4 + 104))(v30, enum case for FlowOrigin.inapp(_:), v31);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v26 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  sub_1005D01FC(v26, 1, v32);
  Promise.pipe(to:)();
}

uint64_t sub_10053C49C()
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for OSLogger();
  sub_1000056A8(v0, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  return Promise.reject(_:)();
}

uint64_t sub_10053C608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100095E9C;

  return sub_10053B664(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10053C6F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10015A5C8;

  return sub_10053AFEC(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_10053C7C8()
{
  result = qword_10098AE78;
  if (!qword_10098AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098AE78);
  }

  return result;
}

unint64_t sub_10053C840()
{
  result = qword_10098AE80;
  if (!qword_10098AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098AE80);
  }

  return result;
}

uint64_t sub_10053C898@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v60 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&qword_1009794E0);
  __chkstk_darwin(v2 - 8);
  v57 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v47 - v5;
  v7 = sub_10002849C(&qword_1009794E8);
  __chkstk_darwin(v7 - 8);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = &v47 - v10;
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v52 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v49 = &v47 - v15;
  __chkstk_darwin(v16);
  v18 = (&v47 - v17);
  v19 = sub_10002849C(&unk_100984380);
  __chkstk_darwin(v19 - 8);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v47 - v23;
  v25 = type metadata accessor for ShelfHeader.Configuration();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v24, 1, 1, v25);
  v27 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v54 = *(v27 - 8);
  v55 = v27;
  (*(v54 + 56))(v6, 1, 1);
  v50 = v24;
  sub_100031660(v24, v21, &unk_100984380);
  if ((*(v26 + 48))(v21, 1, v25) == 1)
  {
    sub_10002B894(v21, &unk_100984380);
    v28 = 0;
  }

  else
  {
    v28 = ShelfHeader.Configuration.eyebrowColor.getter();
    (*(v26 + 8))(v21, v25);
  }

  v29 = v18;
  sub_100512504(v28, v18);

  if (qword_10096E778 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v11, qword_1009D26D0);
  v31 = v51;
  (*(v12 + 56))(v51, 1, 1, v11);
  v32 = v49;
  sub_1001EFDF0(v29, v49);
  v33 = v52;
  sub_1001EFDF0(v30, v52);
  v47 = v29;
  v34 = v53;
  sub_100031660(v31, v53, &qword_1009794E8);
  v35 = v6;
  v36 = v6;
  v37 = v57;
  sub_100031660(v36, v57, &qword_1009794E0);
  v39 = v58;
  v38 = v59;
  v40 = v60;
  (*(v58 + 104))(v59, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v60);
  sub_100028BB8();
  v48 = static UIColor.defaultLine.getter();
  sub_10002B894(v35, &qword_1009794E0);
  sub_10002B894(v31, &qword_1009794E8);
  sub_1001EFF9C(v47);
  sub_10002B894(v50, &unk_100984380);
  v41 = type metadata accessor for TitleHeaderView.Style(0);
  v42 = v41[8];
  v43 = v56;
  sub_10022A9A0(v32, v56);
  sub_10022A9A0(v33, v43 + v41[5]);
  sub_1001EFE54(v34, v43 + v41[6]);
  *(v43 + v41[7]) = 0;
  *(v43 + v42) = 1;
  *(v43 + v41[9]) = 0;
  *(v43 + v41[14]) = 0x4030000000000000;
  *(v43 + v41[12]) = 0;
  *(v43 + v41[13]) = v48;
  (*(v39 + 32))(v43 + v41[11], v38, v40);
  v45 = v54;
  v44 = v55;
  if ((*(v54 + 48))(v37, 1, v55) != 1)
  {
    return (*(v45 + 32))(v43 + v41[10], v37, v44);
  }

  sub_10002B894(v37, &qword_1009794E0);
  return (*(v45 + 104))(v43 + v41[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v44);
}

uint64_t sub_10053CFC4()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InAppPurchaseShowcase();
  sub_10053D284(&qword_10097B2E8, &type metadata accessor for InAppPurchaseShowcase);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v9 = v13;
  if (v13)
  {
    v10 = sub_100079F24();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    (*(v5 + 8))(v7, v4);
    type metadata accessor for InAppPurchaseShowcaseLockupView();
    sub_1006AABFC(v9, v10);
    if (qword_10096D900 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for StaticDimension();
    sub_1000056A8(v11, qword_100980A50);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    swift_unknownObjectRelease();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_10053D284(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10053D2CC(double a1, double a2, double a3, double a4)
{
  v9 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v9 - 8);
  v11 = v52 - v10 + 16;
  v12 = OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  type metadata accessor for ArtworkView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView] = 0;
  v13 = OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  *&v4[v13] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
  v53.receiver = v4;
  v53.super_class = v14;
  v15 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  [v15 setClipsToBounds:1];
  [v15 _setContinuousCornerRadius:20.0];
  v16 = OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  [*&v15[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView] setClipsToBounds:1];
  [v15 addSubview:*&v15[v16]];
  v17 = sub_10053DA3C();
  [v15 addSubview:v17];

  v18 = OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  [*(*&v15[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v15[v18] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v15[v18] + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  v19 = qword_10096EFE0;
  v20 = *&v15[v18];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_1001DC148();
  Copyable.copyWithOverrides(in:)();
  v21 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_1001B6AE0(v52, v20 + v21);
  swift_endAccess();

  v22 = qword_10096EFE8;
  v23 = *&v15[v18];
  if (v22 != -1)
  {
    swift_once();
  }

  Copyable.copyWithOverrides(in:)();
  v24 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_1001B6AE0(v52, v23 + v24);
  swift_endAccess();

  v25 = qword_10096DAB8;
  v26 = *(*&v15[v18] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Shadow();
  v28 = sub_1000056A8(v27, qword_1009CFE88);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v11, v28, v27);
  (*(v29 + 56))(v11, 0, 1, v27);
  ArtworkView.shadow.setter();

  v30 = *&v15[v18];
  v31 = objc_opt_self();
  v32 = v30;
  sub_10003D9F8([v31 whiteColor]);

  v33 = *(*&v15[v18] + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel);
  v34 = [v31 whiteColor];
  [v33 setTextColor:v34];

  v35 = *(*&v15[v18] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  sub_100028BB8();
  v36 = v35;
  v37 = static UIColor.secondaryText.getter();
  v38 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v39 = [v37 resolvedColorWithTraitCollection:v38];

  [v36 setTextColor:v39];
  v40 = *(*&v15[v18] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  v41 = [v31 whiteColor];
  [v40 setTintColor:v41];

  v42 = *(*&v15[v18] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
  v43 = [v31 whiteColor];
  [v42 setTextColor:v43];

  v44 = *(*&v15[v18] + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkTitleLabel);
  v45 = [v31 whiteColor];
  [v44 setTextColor:v45];

  v46 = *(*&v15[v18] + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkSubtitleLabel);
  v47 = [v31 whiteColor];
  [v46 setTextColor:v47];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = String._bridgeToObjectiveC()();

  v49 = [*(*&v15[v18] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) layer];
  [v49 setCompositingFilter:v48];

  [v15 addSubview:*&v15[v18]];
  return v15;
}

char *sub_10053DA3C()
{
  v1 = OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
    v6 = sub_1001DCC8C(&off_1008AF500);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10053DB64()
{
  v1 = v0;
  v2 = type metadata accessor for OfferButtonMetrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v27[-v8 - 8];

  [v0 bounds];
  if (qword_10096EFE0 != -1)
  {
    swift_once();
  }

  if (qword_10096EFE8 != -1)
  {
    swift_once();
  }

  v10 = [v0 traitCollection];
  [v0 bounds];
  Width = CGRectGetWidth(v31);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v12 = &xmmword_1009D4040;
  }

  else
  {
    v12 = &xmmword_1009D3ED0;
  }

  sub_10003B8E8(v12, v27);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v13 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v13 = qword_100991028;
  }

  v14 = sub_1000056A8(v2, v13);
  (*(v3 + 16))(v5, v14, v2);
  (*(v3 + 32))(v9, v5, v2);
  if ((v30 & 1) == 0 && v28 == 0.0 && v29 == 0.0)
  {
    OfferButtonMetrics.minimumSize.getter();
    v16 = v15;
    OfferButtonMetrics.minimumSize.getter();
    v28 = v16;
    v29 = v17;
    v30 = 0;
  }

  _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v27, v10, Width);
  v19 = v18;

  (*(v3 + 8))(v9, v2);
  sub_10003B944(v27);
  v20 = v19 + 12.0 + 16.0;
  [v0 bounds];
  MinX = CGRectGetMinX(v32);
  ArtworkView.frame.getter();
  v22 = CGRectGetMaxY(v33) - v20;
  [v0 bounds];
  v23 = CGRectGetWidth(v34);
  v24 = *&v0[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView];
  [*&v1[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] setLayoutMargins:{12.0, 20.0, 16.0, 20.0}];
  return [v24 setFrame:{MinX, v22, v23, v20}];
}

uint64_t sub_10053DF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v107 = a2;
  v106 = type metadata accessor for Artwork.Crop();
  v98 = *(v106 - 8);
  __chkstk_darwin(v106);
  v97 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v90 - v9;
  v11 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v11 - 8);
  v104 = &v90 - v12;
  v13 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v13 - 8);
  v103 = &v90 - v14;
  v15 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v15 - 8);
  v102 = &v90 - v16;
  v17 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v17 - 8);
  v101 = &v90 - v18;
  v19 = sub_10002849C(&unk_100970170);
  __chkstk_darwin(v19 - 8);
  v21 = &v90 - v20;
  v22 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v99 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v25 - 8);
  v100 = &v90 - v26;
  v27 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v27 - 8);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  v105 = a3;
  inject<A, B>(_:from:)();
  v108 = a1;
  v109 = v110[0];
  v30 = MediumAdLockupWithAlignedRegionBackground.alignedRegionArtwork.getter();
  if (v30)
  {
    v31 = v30;
    v91 = v10;
    v32 = [v3 traitCollection];
    sub_10053EE98(v107, v32);

    v33 = Artwork.config(_:mode:prefersLayeredImage:)();
    v34 = *&v4[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView];
    Artwork.style.getter();
    v94 = v29;
    ArtworkView.style.setter();
    [v34 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    v107 = v31;
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    [v34 setContentMode:2];
    v35 = type metadata accessor for ArtworkView();
    v36 = sub_10053F640(&qword_100970E80, &type metadata accessor for ArtworkView);
    v95 = v33;
    v92 = v36;
    v93 = v35;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    v96 = v4;
    v37 = *&v4[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView];
    [*&v37[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:0];
    v38 = MediumAdLockupWithAlignedRegionBackground.lockup.getter();
    v39 = *(v23 + 104);
    v39(v99, enum case for OfferButtonPresenterViewAlignment.right(_:), v22);
    v39(v21, enum case for OfferButtonPresenterViewAlignment.left(_:), v22);
    (*(v23 + 56))(v21, 0, 1, v22);
    sub_10053F640(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment);
    v40 = v100;
    AccessibilityConditional.init(value:axValue:)();
    v41 = sub_10002849C(&unk_100973240);
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    v42 = type metadata accessor for OfferStyle();
    v43 = v101;
    (*(*(v42 - 8) + 56))(v101, 1, 1, v42);
    v44 = type metadata accessor for OfferEnvironment();
    v45 = v102;
    (*(*(v44 - 8) + 56))(v102, 1, 1, v44);
    v46 = type metadata accessor for OfferTint();
    v47 = v103;
    (*(*(v46 - 8) + 56))(v103, 1, 1, v46);
    v48 = sub_10002849C(&unk_1009701A0);
    v49 = v104;
    (*(*(v48 - 8) + 56))(v104, 1, 1, v48);
    sub_1004F3190(v38, v37, v40, v105, 0, 0, v43, v45, v47, v49);
    v37[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 1;
    sub_100776DD8();
    [v37 setNeedsLayout];
    sub_100776DD8();

    sub_10002B894(v49, &unk_100970150);
    sub_10002B894(v47, &unk_100973AD0);
    sub_10002B894(v45, &unk_100970160);
    sub_10002B894(v43, &qword_100973AE0);
    sub_10002B894(v40, &unk_100973230);
    v50 = *&v37[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
    if (v50)
    {
      v51 = objc_opt_self();
      v52 = v50;
      v53 = [v51 whiteColor];
      [v52 setTextColor:v53];
    }

    v54 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
    v55 = *&v37[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
    if (v55)
    {
      v56 = objc_opt_self();
      v57 = v55;
      v58 = [v56 whiteColor];
      [v57 setTextColor:v58];

      v59 = *&v37[v54];
      if (v59)
      {
        v60 = qword_10096DD58;
        v61 = v59;
        if (v60 != -1)
        {
          swift_once();
        }

        v62 = type metadata accessor for FontUseCase();
        v63 = sub_1000056A8(v62, qword_1009D07A0);
        v64 = *(v62 - 8);
        v65 = v91;
        (*(v64 + 16))(v91, v63, v62);
        (*(v64 + 56))(v65, 0, 1, v62);
        dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

        v66 = *&v37[v54];
        if (v66)
        {
          [v66 setAccessibilityIgnoresInvertColors:1];
        }
      }
    }

    v67 = Artwork.backgroundColor.getter();
    if (v67)
    {
      v68 = v67;
      v69 = UIColor.isDark.getter();

      if (v69)
      {
        v70 = 2;
      }

      else
      {
        v70 = 1;
      }
    }

    else
    {
      v70 = 2;
    }

    v71 = v106;
    v72 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v73 = *&v37[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
    v74 = objc_opt_self();
    v75 = v73;
    v76 = [v74 systemGray5Color];
    v77 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v70];
    v78 = [v76 resolvedColorWithTraitCollection:v77];

    v79 = [v78 colorWithAlphaComponent:0.35];
    ArtworkView.backgroundColor.setter();

    MediumAdLockupWithAlignedRegionBackground.lockup.getter();
    v80 = Lockup.icon.getter();

    if (v80)
    {
      if (qword_10096EFE0 != -1)
      {
        swift_once();
      }

      sub_1001DC148();
      Copyable.copyWithOverrides(in:)();
      sub_10003B944(v110);
      v81 = v97;
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v98 + 8))(v81, v71);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v82 = *&v37[v72];
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v82 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100028BB8();
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      [*&v37[v72] setContentMode:1];
      v83 = *&v37[v72];
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    v4 = v96;
  }

  v84 = sub_10053DA3C();
  v85 = [v4 backgroundColor];
  v86 = sub_1001DDCA4(v85);
  v88 = v87;

  sub_1001DC508(2, v86, v88);

  [v4 setNeedsLayout];
}

id sub_10053ED98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10053EE98(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for OfferButtonMetrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  PageGrid.columnWidth.getter();
  v11 = v10;
  if (qword_10096EFE0 != -1)
  {
    swift_once();
  }

  sub_1001DC148();
  Copyable.copyWithOverrides(in:)();
  if (qword_10096EFE8 != -1)
  {
    swift_once();
  }

  Copyable.copyWithOverrides(in:)();
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v12 = v24;
  }

  else
  {
    v12 = v25;
  }

  sub_10003B8E8(v12, v20);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v13 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v13 = qword_100991028;
  }

  v14 = sub_1000056A8(v3, v13);
  (*(v4 + 16))(v6, v14, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v23 & 1) == 0 && v21 == 0.0 && v22 == 0.0)
  {
    OfferButtonMetrics.minimumSize.getter();
    v16 = v15;
    OfferButtonMetrics.minimumSize.getter();
    v21 = v16;
    v22 = v17;
    v23 = 0;
  }

  v18 = _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v20, a2, v11);
  (*(v4 + 8))(v9, v3, v18);
  sub_10003B944(v20);
  sub_10003B944(v24);
  sub_10003B944(v25);
  return v11;
}

uint64_t sub_10053F1D8()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MediumAdLockupWithAlignedRegionBackground();
  sub_10053F640(&unk_10098B050, &type metadata accessor for MediumAdLockupWithAlignedRegionBackground);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v10)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.columnWidth.getter();
    v5 = *(v1 + 8);
    v5(v3, v0);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v6 = v10;
    sub_10053EE98(v3, v10);

    v5(v3, v0);
    v7 = _swiftEmptyArrayStorage;
    v11 = _swiftEmptyArrayStorage;
    if (MediumAdLockupWithAlignedRegionBackground.alignedRegionArtwork.getter())
    {
      Artwork.config(_:mode:prefersLayeredImage:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v7 = v11;
    }

    MediumAdLockupWithAlignedRegionBackground.lockup.getter();
    v8 = Lockup.icon.getter();

    if (v8)
    {
      if (qword_10096EFE0 != -1)
      {
        swift_once();
      }

      sub_1001DC148();
      Copyable.copyWithOverrides(in:)();
      sub_10003B944(&v10);
      Artwork.config(_:mode:prefersLayeredImage:)();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v7 = v11;
    }

    ArtworkLoader.prefetchArtwork(using:)(v7);
  }

  return result;
}

void sub_10053F578()
{
  v1 = OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  type metadata accessor for ArtworkView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView) = 0;
  v2 = OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10053F640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10053F68C(void *a1)
{
  v2 = type metadata accessor for Placement();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_10098B200);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for DisjointStack.Placements();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  type metadata accessor for DisjointStack();
  sub_100543010(&qword_10098B228, &type metadata accessor for DisjointStack);
  v30 = a1;
  dispatch thunk of PrimitiveLayout.layout(relativeTo:with:)();
  v24 = v17;
  v25 = v9;
  (*(v9 + 16))(v11, v17, v8);
  sub_100543010(&qword_10098B230, &type metadata accessor for DisjointStack.Placements);
  dispatch thunk of Sequence.makeIterator()();
  sub_100543010(&qword_10098B238, &type metadata accessor for DisjointStack.Placements);
  dispatch thunk of IteratorProtocol.next()();
  v18 = v31;
  v19 = v31 + 48;
  v20 = *(v31 + 48);
  if (v20(v7, 1, v2) != 1)
  {
    v21 = *(v18 + 32);
    v31 = v18 + 32;
    v26 = (v18 + 8);
    v27 = v21;
    v28 = v7;
    v29 = v19;
    do
    {
      v27(v4, v7, v2);
      Placement.child.getter();
      sub_10002A400(v32, v32[3]);
      Placement.frame.getter();
      [v30 layoutDirection];
      CGRect.withLayoutDirection(_:relativeTo:)();
      v7 = v28;
      dispatch thunk of Placeable.place(at:with:)();
      (*v26)(v4, v2);
      sub_100007000(v32);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v20(v7, 1, v2) != 1);
  }

  v22 = *(v25 + 8);
  v22(v14, v8);
  return (v22)(v24, v8);
}

uint64_t sub_10053FB34(void *a1)
{
  v2 = type metadata accessor for Placement();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_10098B200);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for VerticalStack.Placements();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  type metadata accessor for VerticalStack();
  sub_100543010(&qword_10098B208, &type metadata accessor for VerticalStack);
  v30 = a1;
  dispatch thunk of PrimitiveLayout.layout(relativeTo:with:)();
  v24 = v17;
  v25 = v9;
  (*(v9 + 16))(v11, v17, v8);
  sub_100543010(&qword_10098B210, &type metadata accessor for VerticalStack.Placements);
  dispatch thunk of Sequence.makeIterator()();
  sub_100543010(&qword_10098B218, &type metadata accessor for VerticalStack.Placements);
  dispatch thunk of IteratorProtocol.next()();
  v18 = v31;
  v19 = v31 + 48;
  v20 = *(v31 + 48);
  if (v20(v7, 1, v2) != 1)
  {
    v21 = *(v18 + 32);
    v31 = v18 + 32;
    v26 = (v18 + 8);
    v27 = v21;
    v28 = v7;
    v29 = v19;
    do
    {
      v27(v4, v7, v2);
      Placement.child.getter();
      sub_10002A400(v32, v32[3]);
      Placement.frame.getter();
      [v30 layoutDirection];
      CGRect.withLayoutDirection(_:relativeTo:)();
      v7 = v28;
      dispatch thunk of Placeable.place(at:with:)();
      (*v26)(v4, v2);
      sub_100007000(v32);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v20(v7, 1, v2) != 1);
  }

  v22 = *(v25 + 8);
  v22(v14, v8);
  return (v22)(v24, v8);
}

uint64_t sub_10053FFDC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10098B060);
  sub_1000056A8(v4, qword_10098B060);
  if (qword_10096E3D0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1AF0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1005401B4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10098B078);
  sub_1000056A8(v4, qword_10098B078);
  if (qword_10096E3D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1B08);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100540388()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10098B090);
  sub_1000056A8(v4, qword_10098B090);
  if (qword_10096E3E8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1B38);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10054055C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10098B0A8);
  sub_1000056A8(v4, qword_10098B0A8);
  if (qword_10096E3E8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1B38);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_100540730(double a1, double a2, double a3, double a4)
{
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v83 - v10;
  v12 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v21 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_materialBackground;
  *&v4[v21] = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_collectionArtwork;
  type metadata accessor for CollectionLockupArtwork();
  *&v4[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_badgeLabel;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v23] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_titleLabel;
  *&v4[v25] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v26 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_descriptionLabel;
  *&v4[v26] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = String._bridgeToObjectiveC()();
  v28 = [objc_opt_self() systemImageNamed:v27];

  if (v28)
  {
    v29 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_chevronView;
    v30 = [objc_allocWithZone(UIImageView) initWithImage:v28];

    *&v4[v29] = v30;
    v31 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
    *&v4[v31] = [objc_allocWithZone(UITapGestureRecognizer) init];
    v32 = &v4[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_selectionHandler];
    v33 = type metadata accessor for CarouselItemCollectionLockupOverlay(0);
    *v32 = 0;
    *(v32 + 1) = 0;
    v89.receiver = v4;
    v89.super_class = v33;
    v34 = objc_msgSendSuper2(&v89, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v38 = v34;
    [v38 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    [v38 setOverrideUserInterfaceStyle:2];
    [v38 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    v86 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_materialBackground;
    v39 = *&v38[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_materialBackground];
    sub_10075B130(26.0);

    v40 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_badgeLabel;
    v41 = qword_10096E3D0;
    v42 = *&v38[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_badgeLabel];
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for FontUseCase();
    v44 = sub_1000056A8(v43, qword_1009D1AF0);
    v45 = *(v43 - 8);
    v46 = *(v45 + 16);
    v46(v11, v44, v43);
    v47 = *(v45 + 56);
    v47(v11, 0, 1, v43);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    [*&v38[v40] setNumberOfLines:1];
    v48 = *&v38[v40];
    v49 = objc_opt_self();
    v50 = v48;
    v88 = v49;
    v51 = [v49 secondaryLabelColor];
    v52 = v40;
    v53 = v51;
    [v50 setTextColor:v51];

    v87 = v52;
    v54 = [*&v38[v52] layer];
    v85 = kCAFilterPlusL;
    [v54 setCompositingFilter:?];

    v55 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_titleLabel;
    v56 = qword_10096E3D8;
    v57 = *&v38[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_titleLabel];
    if (v56 != -1)
    {
      swift_once();
    }

    v58 = sub_1000056A8(v43, qword_1009D1B08);
    v46(v11, v58, v43);
    v47(v11, 0, 1, v43);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    [*&v38[v55] setNumberOfLines:1];
    v59 = *&v38[v55];
    v60 = [v88 labelColor];
    [v59 setTextColor:v60];

    v61 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_descriptionLabel;
    v62 = *&v38[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_descriptionLabel];
    v84 = v55;
    v63 = qword_10096E3E8;
    v64 = v62;
    if (v63 != -1)
    {
      swift_once();
    }

    v65 = sub_1000056A8(v43, qword_1009D1B38);
    v46(v11, v65, v43);
    v47(v11, 0, 1, v43);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    [*&v38[v61] setNumberOfLines:1];
    v66 = *&v38[v61];
    v67 = v88;
    v68 = [v88 secondaryLabelColor];
    [v66 setTextColor:v68];

    v69 = [*&v38[v61] layer];
    v70 = v85;
    [v69 setCompositingFilter:v85];

    v71 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_chevronView;
    v72 = *&v38[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_chevronView];
    v73 = objc_opt_self();
    v74 = v72;
    v75 = [v73 configurationWithTextStyle:UIFontTextStyleBody];
    [v74 setPreferredSymbolConfiguration:v75];

    v76 = *&v38[v71];
    v77 = [v67 secondaryLabelColor];
    [v76 setTintColor:v77];

    v78 = [*&v38[v71] layer];
    [v78 setCompositingFilter:v70];

    v79 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
    [*&v38[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_tapGestureRecognizer] setEnabled:0];
    v80 = *&v38[v79];
    v81 = v38;
    [v80 addTarget:v81 action:"handleSelection:"];
    v82 = *&v38[v79];
    [v82 setDelegate:v81];

    [v81 addGestureRecognizer:*&v38[v79]];
    [v81 addSubview:*&v38[v86]];
    [v81 addSubview:*&v81[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_collectionArtwork]];
    [v81 addSubview:*&v38[v87]];
    [v81 addSubview:*&v38[v84]];
    [v81 addSubview:*&v38[v61]];
    [v81 addSubview:*&v38[v71]];
    sub_100541BF8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005412E8@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v75 = a1;
  v77 = a2;
  v68 = type metadata accessor for FlankedHorizontalLayout.ViewAlignment();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = &v61 - v6;
  v73 = type metadata accessor for FlankedHorizontalLayout();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for HorizontalStack();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v63 = &v61 - v10;
  __chkstk_darwin(v11);
  v64 = &v61 - v12;
  v13 = type metadata accessor for VerticalStack();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v61 - v18;
  __chkstk_darwin(v20);
  v22 = &v61 - v21;
  __chkstk_darwin(v23);
  v25 = &v61 - v24;
  VerticalStack.init(with:)();
  v26 = *(v3 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_badgeLabel);
  v27 = type metadata accessor for DynamicTypeLabel();
  v92 = v27;
  v93 = &protocol witness table for UILabel;
  v91 = v26;
  v28 = v26;
  VerticalStack.adding(_:with:)();
  v74 = v14;
  v29 = *(v14 + 8);
  v29(v16, v13);
  sub_100007000(&v91);
  v30 = *(v3 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_titleLabel);
  v92 = v27;
  v93 = &protocol witness table for UILabel;
  v91 = v30;
  v31 = v30;
  VerticalStack.adding(_:with:)();
  v29(v19, v13);
  sub_100007000(&v91);
  v32 = *(v3 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_descriptionLabel);
  v92 = v27;
  v93 = &protocol witness table for UILabel;
  v91 = v32;
  v33 = v32;
  v78 = v25;
  VerticalStack.adding(_:with:)();
  v34 = v13;
  v76 = v29;
  v29(v22, v13);
  sub_100007000(&v91);
  if (v75)
  {
    v35 = v62;
    HorizontalStack.init(with:)();
    v36 = *(v3 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_collectionArtwork);
    v92 = type metadata accessor for CollectionLockupArtwork();
    v93 = sub_100543010(&qword_10098B258, type metadata accessor for CollectionLockupArtwork);
    v91 = v36;
    v37 = v36;
    v38 = v63;
    HorizontalStack.adding(_:with:)();
    v39 = *(v65 + 8);
    v40 = v66;
    v39(v35, v66);
    sub_100007000(&v91);
    v92 = v13;
    v93 = &protocol witness table for VerticalStack;
    v41 = sub_1000056E0(&v91);
    (*(v74 + 16))(v41, v78, v13);
    v42 = v64;
    HorizontalStack.adding(_:with:)();
    v39(v38, v40);
    sub_100007000(&v91);
    v43 = *(v3 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_chevronView);
    v89 = sub_10019FDD0();
    v90 = &protocol witness table for UIImageView;
    v88 = v43;
    v92 = v40;
    v93 = &protocol witness table for HorizontalStack;
    sub_1000056E0(&v91);
    v44 = v43;
    HorizontalStack.adding(_:with:)();
    v39(v42, v40);
    sub_100007000(&v88);
  }

  else
  {
    v45 = v74;
    (*(v74 + 16))(v22, v78, v13);
    v46 = type metadata accessor for TextLayout(0);
    v47 = swift_allocObject();
    (*(v45 + 32))(v47 + OBJC_IVAR____TtC8AppStoreP33_FD91B5375966D5A2B51FAB9F079F554E10TextLayout_textStack, v22, v13);
    v92 = v46;
    v93 = sub_100543010(&unk_10098B240, type metadata accessor for TextLayout);
    v91 = v47;
    v48 = *(v3 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_collectionArtwork);
    v49 = type metadata accessor for CollectionLockupArtwork();
    v90 = &protocol witness table for UIView;
    v89 = v49;
    v88 = v48;
    v86 = &type metadata for CGFloat;
    v87 = &protocol witness table for CGFloat;
    v85 = 0x4024000000000000;
    v50 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
    v51 = *(v67 + 104);
    v52 = v68;
    v51(v69, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v68);
    v53 = *(v3 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_chevronView);
    v83 = sub_10019FDD0();
    v84 = &protocol witness table for UIView;
    v81 = &protocol witness table for CGFloat;
    v82 = v53;
    v80 = &type metadata for CGFloat;
    v79 = 0x4038000000000000;
    v51(v71, v50, v52);
    v54 = v48;
    v55 = v53;
    v56 = v70;
    FlankedHorizontalLayout.init(sublayout:leadingView:leadingMargin:leadingAlignment:trailingView:trailingMargin:trailingAlignment:)();
    sub_100543010(&qword_10098B250, &type metadata accessor for FlankedHorizontalLayout);
    v57 = v73;
    Measurable.placeable.getter();
    (*(v72 + 8))(v56, v57);
  }

  sub_10002C0AC(&v91, &v88);
  v58 = type metadata accessor for Margins();
  v59 = v77;
  v77[3] = v58;
  v59[4] = &protocol witness table for Margins;
  sub_1000056E0(v59);
  Margins.init(insets:child:)();
  v76(v78, v34);
  return sub_100007000(&v91);
}

id sub_100541BF8()
{
  v1 = v0;
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v37 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v34 - v19;
  v35 = *&v1[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_badgeLabel];
  v21 = *(v12 + 16);
  v42 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_displayOptions;
  v43 = v21;
  (v21)(&v34 - v19, &v1[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_displayOptions], v11, v18);
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  v36 = *(v12 + 8);
  v36(v20, v11);
  v22 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.badgeColor.getter();
  v23 = *(v3 + 8);
  v39 = v3 + 8;
  v40 = v2;
  v41 = v23;
  v23(v10, v2);
  if (!v22)
  {
    v22 = [objc_opt_self() secondaryLabelColor];
  }

  [v35 setTextColor:v22];

  v24 = *&v1[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_titleLabel];
  v43(v16, &v1[v42], v11);
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  v25 = v16;
  v26 = v36;
  v36(v25, v11);
  v27 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.titleColor.getter();
  v28 = v40;
  v41(v7, v40);
  if (!v27)
  {
    v27 = [objc_opt_self() labelColor];
  }

  [v24 setTextColor:v27];

  v29 = *&v1[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_descriptionLabel];
  v30 = v37;
  v43(v37, &v1[v42], v11);
  v31 = v38;
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  v26(v30, v11);
  v32 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.descriptionColor.getter();
  v41(v31, v28);
  if (!v32)
  {
    v32 = [objc_opt_self() secondaryLabelColor];
  }

  [v29 setTextColor:v32];

  return [v1 setNeedsLayout];
}

id sub_1005420B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemCollectionLockupOverlay(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100542204()
{
  result = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
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

uint64_t sub_1005422B8(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_10000827C(a1);
  sub_10000827C(a1);
  sub_10001F63C(v5);
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_10001F63C(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_10001F63C(a1);
}

uint64_t sub_10054236C(uint64_t a1, char *a2)
{
  v3 = HeroCarouselItemOverlay.collectionIcons.getter();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10062D4DC(v4, a2);
}

uint64_t sub_1005423DC()
{
  type metadata accessor for ArtworkView();
  sub_100543010(&qword_100970E80, &type metadata accessor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1005424D4()
{
  v1 = OBJC_IVAR____TtC8AppStoreP33_FD91B5375966D5A2B51FAB9F079F554E10TextLayout_textStack;
  v2 = type metadata accessor for VerticalStack();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100542598()
{
  result = type metadata accessor for VerticalStack();
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

uint64_t sub_100542628(void *a1)
{
  v1 = [a1 traitCollection];
  sub_10053FB34(v1);

  return LayoutRect.init(representing:)();
}

double sub_1005426D4(void *a1)
{
  v2 = type metadata accessor for VerticalStack.Placements();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 traitCollection];
  measuringBoundingRect(toFit:)();
  type metadata accessor for VerticalStack();
  sub_100543010(&qword_10098B208, &type metadata accessor for VerticalStack);
  dispatch thunk of PrimitiveLayout.layout(relativeTo:with:)();
  sub_100543010(&qword_10098B220, &type metadata accessor for VerticalStack.Placements);
  dispatch thunk of PlacementSequence.measure.getter();
  v9 = v8;

  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_100542914(uint64_t a1, void *a2, uint64_t a3)
{
  VerticalStack.Properties.alignment.setter();
  v5 = static VerticalStack.Edge.top.getter();
  VerticalStack.Edge.init(rawValue:)();
  VerticalStack.Edge.init(rawValue:)();
  if (VerticalStack.Edge.init(rawValue:)() != v5)
  {
    VerticalStack.Edge.init(rawValue:)();
  }

  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for StaticDimension();
  v7 = sub_1000056A8(v6, a3);
  v10[3] = v6;
  v10[4] = &protocol witness table for StaticDimension;
  v8 = sub_1000056E0(v10);
  (*(*(v6 - 8) + 16))(v8, v7, v6);
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_100542A1C()
{
  VerticalStack.Properties.alignment.setter();
  sub_10002849C(&qword_10097B040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  v1 = static VerticalStack.Edge.top.getter();
  *(inited + 32) = v1;
  v2 = static VerticalStack.Edge.bottom.getter();
  *(inited + 40) = v2;
  VerticalStack.Edge.init(rawValue:)();
  VerticalStack.Edge.init(rawValue:)();
  if (VerticalStack.Edge.init(rawValue:)() != v1)
  {
    VerticalStack.Edge.init(rawValue:)();
  }

  VerticalStack.Edge.init(rawValue:)();
  if (VerticalStack.Edge.init(rawValue:)() != v2)
  {
    VerticalStack.Edge.init(rawValue:)();
  }

  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  if (qword_10096E8B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for StaticDimension();
  v4 = sub_1000056A8(v3, qword_10098B090);
  v11 = v3;
  v12 = &protocol witness table for StaticDimension;
  v5 = sub_1000056E0(v10);
  v6 = *(*(v3 - 8) + 16);
  v6(v5, v4, v3);
  VerticalStack.Properties.topSpacing.setter();
  if (qword_10096E8C0 != -1)
  {
    swift_once();
  }

  v7 = sub_1000056A8(v3, qword_10098B0A8);
  v11 = v3;
  v12 = &protocol witness table for StaticDimension;
  v8 = sub_1000056E0(v10);
  v6(v8, v7, v3);
  return VerticalStack.Properties.bottomSpacing.setter();
}

id sub_100542C9C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_badgeLabel];
  HeroCarouselItemOverlay.badgeText.getter();
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  v5 = *&v0[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_titleLabel];
  HeroCarouselItemOverlay.titleText.getter();
  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText:v7];

  v8 = *&v0[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_descriptionLabel];
  HeroCarouselItemOverlay.descriptionText.getter();
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v8 setText:v10];

  v11 = *&v0[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_collectionArtwork];
  v12 = HeroCarouselItemOverlay.collectionIcons.getter();
  if (!v12)
  {
    i = 0;
    goto LABEL_15;
  }

  if (v12 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

LABEL_15:
    v14 = 4;
    if (i < 4)
    {
      v14 = i;
    }

    v15 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_iconCount;
    v16 = *&v11[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_iconCount];
    *&v11[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_iconCount] = v14;
    v17 = &StringUserDefaultsDebugSetting;
    if (v14 == v16)
    {
      break;
    }

    sub_10002849C(&qword_100973210);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007BB060;
    v19 = *&v11[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon1];
    *(inited + 32) = v19;
    v20 = *&v11[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon2];
    *(inited + 40) = v20;
    v21 = *&v11[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon3];
    *(inited + 48) = v21;
    v22 = *&v11[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon4];
    *(inited + 56) = v22;
    v23 = inited & 0xC000000000000001;
    v24 = v19;
    v25 = v20;
    v26 = v21;
    v27 = v22;
    if ((inited & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v28 = v24;
    }

    v29 = v28;
    [v28 setHidden:*&v11[v15] < 1];

    if (v23)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_32;
      }

      v30 = *(inited + 40);
    }

    v31 = v30;
    [v30 setHidden:*&v11[v15] < 2];

    if (v23)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_32;
      }

      v32 = *(inited + 48);
    }

    v33 = v32;
    [v32 setHidden:*&v11[v15] < 3];

    if (v23)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_30;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v34 = *(inited + 56);
LABEL_30:
      v35 = v34;
      [v34 setHidden:*&v11[v15] < 4];

      swift_setDeallocating();
      swift_arrayDestroy();
      v17 = &StringUserDefaultsDebugSetting;
      [v11 setNeedsLayout];
      return [v1 v17[41].base_meths];
    }

LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  return [v1 v17[41].base_meths];
}

uint64_t sub_100543010(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100543058()
{
  v1 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v10 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_materialBackground;
  *(v0 + v10) = [objc_allocWithZone(UIVisualEffectView) init];
  v11 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_collectionArtwork;
  type metadata accessor for CollectionLockupArtwork();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_badgeLabel;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_titleLabel;
  *(v0 + v14) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_descriptionLabel;
  *(v0 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() systemImageNamed:v16];

  if (!v17)
  {
    __break(1u);
  }

  v18 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_chevronView;
  v19 = [objc_allocWithZone(UIImageView) initWithImage:v17];

  *(v0 + v18) = v19;
  v20 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
  *(v0 + v20) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v21 = (v0 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_selectionHandler);
  *v21 = 0;
  v21[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1005433CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  sub_100543634();
  if (Lockup.icon.getter())
  {
    v5 = *(v2 + OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_lockupView);
    v6 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v7 = qword_10096EE80;
    v8 = *(v5 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for SmallLockupLayout.Metrics();
    sub_1000056A8(v9, qword_1009D3798);
    SmallLockupLayout.Metrics.artworkSize.getter();
    [v8 contentMode];
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v8 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    v10 = *(v5 + v6);
    type metadata accessor for ArtworkView();
    sub_100544610(&qword_100970E80, &type metadata accessor for ArtworkView);
    v11 = v10;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  result = Lockup.children.getter();
  if (result)
  {
    sub_100208FF4(result, a2);
  }

  return result;
}

void sub_100543634()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_lockupView);
  v3 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v31, v5);

  v6 = *(v2 + v3);
  type metadata accessor for ArtworkView();
  sub_100544610(&qword_100970E80, &type metadata accessor for ArtworkView);
  v7 = v6;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v28 = *(v1 + OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_bundleView);
  v8 = sub_1002A6C38();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    v14 = OBJC_IVAR____TtC8AppStore15BundleChildView_icon;
    v15 = *&v12[OBJC_IVAR____TtC8AppStore15BundleChildView_icon];
    v32.value.super.isa = 0;
    v32.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v32, v16);

    v17 = *&v13[v14];
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  while (v10 != v11);
LABEL_10:

  v18 = sub_1002A6C50();
  v19 = v18;
  if (v18 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20)
    {
LABEL_12:
      if (v20 >= 1)
      {
        v21 = 0;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v22 = *(v19 + 8 * v21 + 32);
          }

          v23 = v22;
          ++v21;
          v24 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
          v25 = *&v22[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
          v33.value.super.isa = 0;
          v33.is_nil = 0;
          ArtworkView.setImage(image:animated:)(v33, v26);

          v27 = *&v23[v24];
          ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
        }

        while (v20 != v21);
        goto LABEL_19;
      }

LABEL_23:
      __break(1u);
      return;
    }
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  v29 = *&v28[OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView];
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

double sub_100543944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, void *a6, double a7)
{
  v96 = a5;
  v84 = a3;
  v85 = a4;
  v81 = a2;
  v79 = a1;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v98 = *(v9 - 8);
  v99 = v9;
  __chkstk_darwin(v9);
  v97 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Artwork.Style();
  v94 = *(v11 - 8);
  v95 = v11;
  __chkstk_darwin(v11);
  v93 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SmallSearchLockupLayout();
  v91 = *(v13 - 8);
  v92 = v13;
  __chkstk_darwin(v13);
  v90 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for LabelPlaceholderCompatibility();
  v83 = *(v103 - 8);
  __chkstk_darwin(v103);
  v82 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OfferButtonMetrics();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v69 - v21;
  v23 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v86 = v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v69 - v27;
  CGSize.subtracting(insets:)();
  ObjectType = swift_getObjectType();
  v29 = [a6 traitCollection];
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v23, qword_1009CDC00);
  v31 = *(v24 + 16);
  v89 = v23;
  v76 = v31;
  v77 = v24 + 16;
  v31(v28, v30, v23);
  v32 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v100 = a6;
  v88 = v24;
  if (v32)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v33 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v33 = qword_100991028;
  }

  v34 = sub_1000056A8(v16, v33);
  v75 = v17;
  (*(v17 + 16))(v19, v34, v16);
  (*(v17 + 32))(v22, v19, v16);
  v74 = v29;
  v35 = [v29 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  v102 = v28;
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v36 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v73 = LayoutViewPlaceholder.init(representing:)();
  v37 = objc_opt_self();

  v71 = v37;
  v69[1] = [v37 preferredFontForTextStyle:UIFontTextStyleBody];
  v38 = type metadata accessor for Feature();
  v80 = v22;
  v39 = v38;
  v140[3] = v38;
  v40 = sub_100544610(&qword_100972E50, &type metadata accessor for Feature);
  v78 = v16;
  v41 = v40;
  v140[4] = v40;
  v70 = v40;
  v42 = sub_1000056E0(v140);
  v72 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v43 = *(v39 - 8);
  v101 = *(v43 + 104);
  v44 = v43 + 104;
  v101(v42);
  v69[2] = v44;
  isFeatureEnabled(_:)();
  sub_100007000(v140);
  v45 = v82;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v83 = *(v83 + 8);
  (v83)(v45, v103);

  v46 = [v37 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v139[3] = v39;
  v139[4] = v41;
  v47 = sub_1000056E0(v139);
  v48 = v72;
  (v101)(v47, v72, v39);
  isFeatureEnabled(_:)();
  sub_100007000(v139);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v49 = v103;
  v50 = v83;
  (v83)(v45, v103);
  v51 = [v71 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v138[3] = v39;
  v138[4] = v70;
  v52 = sub_1000056E0(v138);
  (v101)(v52, v48, v39);
  isFeatureEnabled(_:)();
  sub_100007000(v138);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v50(v45, v49);
  sub_1000AE138(0, 0);
  swift_allocObject();
  v53 = LayoutViewPlaceholder.init(representing:)();

  sub_1000AE138(0, 0);
  swift_allocObject();
  v54 = LayoutViewPlaceholder.init(representing:)();
  v55 = v89;
  v76(v86, v102, v89);
  v137 = &protocol witness table for LayoutViewPlaceholder;
  v136 = v36;
  v135 = v73;
  v134 = 0;
  *&v132[40] = 0u;
  v133 = 0u;
  sub_10002C0AC(v140, v132);
  sub_10002C0AC(v139, &v131);
  v130 = 0;
  v128 = 0u;
  v129 = 0u;
  v127 = 0;
  v125 = 0u;
  v126 = 0u;

  v56 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v124 = &protocol witness table for LayoutViewPlaceholder;
  v123 = v36;
  v122 = v56;
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  v118 = 0;
  v116 = 0u;
  v117 = 0u;
  v115 = 0;
  v113 = 0u;
  v114 = 0u;
  v112 = 0;
  v111 = 0u;
  *&v110[40] = 0u;
  sub_10002C0AC(v138, v110);
  v108 = v36;
  v109 = &protocol witness table for LayoutViewPlaceholder;
  v106 = &protocol witness table for LayoutViewPlaceholder;
  v107 = v53;
  v105 = v36;
  v104 = v54;
  v57 = v90;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1007B0B70;
  v59 = v74;
  *(v58 + 32) = v74;
  v60 = v59;
  v61 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_100544610(&unk_100972E60, &type metadata accessor for SmallSearchLockupLayout);
  v62 = v92;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v91 + 8))(v57, v62);
  sub_100007000(v138);
  sub_100007000(v139);
  sub_100007000(v140);
  (*(v75 + 8))(v80, v78);
  (*(v88 + 8))(v102, v55);
  v64 = v93;
  v63 = v94;
  v65 = v95;
  (*(v94 + 104))(v93, enum case for Artwork.Style.roundedRect(_:), v95);
  if (v96)
  {
    v66 = v96;
  }

  else
  {
    v66 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for BundleView();

  sub_10020BCC0(v64, v66, v100);

  (*(v63 + 8))(v64, v65);
  if (qword_10096E4D0 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_1009D1D90, qword_1009D1DA8);
  v67 = v97;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v98 + 8))(v67, v99);
  return a7;
}