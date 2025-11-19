void sub_100324098()
{
  v1 = OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_preferredImageSizes) = &_swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsCalculator) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsUpdateBlock);
  *v3 = 0;
  v3[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100324190()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100324304(&qword_100973190, 255, type metadata accessor for VideoView);
    v4 = [v3 superview];
    if (!v4)
    {
LABEL_6:

      goto LABEL_7;
    }

    v5 = v4;
    sub_100005744(0, &qword_100972EB0);
    v6 = v1;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v3 = v8;
        [v8 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    [v1 addSubview:v9];
  }

  sub_1001B8790();

  return [v1 setNeedsLayout];
}

uint64_t sub_100324304(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10032434C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100324398(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t sub_100324430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OSSignpostID();
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v59 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = v5;
  __chkstk_darwin(v6);
  v60 = &v47[-v7];
  v8 = type metadata accessor for AdamId();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v47[-v13];
  sub_10002849C(&qword_1009764A0);
  v15 = Promise.__allocating_init()();
  OpenAppAction.adamId.getter();
  v16 = AdamId.numberValue.getter();
  v17 = *(v9 + 8);
  v17(v14, v8);
  if (v16)
  {
    v51 = v16;
    v58 = v4;
    v55 = v15;
    sub_10002849C(&unk_100973AF0);
    type metadata accessor for BaseObjectGraph();
    v54 = a2;
    inject<A, B>(_:from:)();
    swift_getObjectType();
    OpenAppAction.adamId.getter();
    v18 = dispatch thunk of AppStateController.stateMachine(forApp:)();
    swift_unknownObjectRelease();
    v17(v11, v8);
    swift_getObjectType();
    v53 = v18;
    v19 = dispatch thunk of AppStateMachine.hasCurrentBetaState.getter();
    v20 = "ActionDispatcher[ASDAppQuery]:handleOpenAppAction";
    v52 = a1;
    if (v19)
    {
      v21 = OpenAppAction.allowBetaApps.getter();
      if (v21)
      {
        v20 = "ActionDispatcher[ASDAppQuery.BetaApps]:handleOpenAppAction";
        v22 = 58;
      }

      else
      {
        v22 = 49;
      }
    }

    else
    {
      v21 = 0;
      v22 = 49;
    }

    v49 = v20;
    type metadata accessor for SignpostAggregator();
    static SignpostAggregator.log.getter();
    v25 = v60;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    v26 = static SignpostAggregator.log.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    sub_10002849C(&qword_100973210);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1007B0B70;
    v28 = v51;
    *(v27 + 32) = v51;
    sub_100005744(0, &qword_10097FB80);
    v50 = v28;
    v29.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v30 = objc_opt_self();
    v31 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    v48 = v21 & 1;
    if ((v21 & 1) == 0)
    {
      v31 = &selRef_queryForStoreItemIDs_;
    }

    v51 = [v30 *v31];

    v32 = v61;
    (*(v61 + 16))(v59, v25, v58);
    sub_100325C90(v57, v63);
    v33 = (*(v32 + 80) + 33) & ~*(v32 + 80);
    v34 = v33 + v56;
    v35 = (((v33 + v56) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
    v37 = v22;
    v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v40 + 16) = v49;
    *(v40 + 24) = v37;
    *(v40 + 32) = 2;
    v41 = v58;
    (*(v32 + 32))(v40 + v33, v59, v58);
    *(v40 + v34) = v48;
    *(v40 + (v34 & 0xFFFFFFFFFFFFFFF8) + 8) = v52;
    sub_100325CC8(v63, v40 + v35);
    v15 = v55;
    *(v40 + v36) = v54;
    *(v40 + v38) = v15;
    v42 = v50;
    *(v40 + v39) = v50;
    aBlock[4] = sub_100325D00;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10037FE78;
    aBlock[3] = &unk_1008BE2B0;
    v43 = _Block_copy(aBlock);
    v44 = v42;

    v45 = v51;
    [v51 executeQueryWithResultHandler:v43];
    _Block_release(v43);

    swift_unknownObjectRelease();
    (*(v61 + 8))(v60, v41);
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for OSLogger();
    sub_1000056A8(v23, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100325C3C();
    swift_allocError();
    *v24 = 0;
    Promise.reject(_:)();
  }

  return v15;
}

void sub_100324B24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  v45 = a7;
  v46 = a8;
  v47 = a11;
  v44 = a10;
  v13 = type metadata accessor for AdamId();
  __chkstk_darwin(v13 - 8);
  v41[1] = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v15 - 8);
  v43 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OpenableDestination();
  v42 = *(v17 - 8);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = static os_signpost_type_t.end.getter();
  type metadata accessor for SignpostAggregator();
  v22 = static SignpostAggregator.log.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  if (!a1)
  {
    goto LABEL_13;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:
    if (v45)
    {
      Action.title.getter();
      OpenAppAction.adamId.getter();
      OpenAppAction.destination.getter();
      Action.presentationStyle.getter();
      Action.actionMetrics.getter();
      type metadata accessor for OpenAppAction();
      swift_allocObject();
      v37 = OpenAppAction.init(title:adamId:allowBetaApps:destination:presentationStyle:actionMetrics:)();
      sub_1005D0478(v37, 1, v44);
      Promise.pipe(to:)();

      return;
    }

    v21 = a12;
    if (qword_10096D120 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) == 0)
  {
    v23 = v46;
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(a1 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_19:
    swift_once();
LABEL_16:
    v38 = type metadata accessor for OSLogger();
    sub_1000056A8(v38, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1E00;
    LogMessage.init(stringLiteral:)();
    v51 = sub_100005744(0, &qword_10097FB80);
    aBlock = v21;
    v39 = v21;
    static LogMessage.traceableSensitive(_:)();
    sub_10003D444(&aBlock);
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100325C3C();
    swift_allocError();
    *v40 = 1;
    Promise.reject(_:)();

    return;
  }

  v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v23 = v46;
LABEL_7:
  OpenAppAction.destination.getter();
  v25 = v42;
  v26 = (*(v42 + 88))(v20, v17);
  if (v26 == enum case for OpenableDestination.app(_:))
  {
    v27 = [v24 bundleID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static ActionMetrics.notInstrumented.getter();
    sub_1001963E0(_swiftEmptyArrayStorage);
    type metadata accessor for ArcadeLaunchAttributionAction();
    swift_allocObject();
    ArcadeLaunchAttributionAction.init(bundleIdentifier:additionalMetrics:actionMetrics:)();

    v29 = v44;
    sub_1005D0460(v28, 1, v44);

    v30 = objc_opt_self();
    sub_100325C90(a9, v54);
    v31 = swift_allocObject();
    sub_100325CC8(v54, (v31 + 2));
    v31[4] = v23;
    v31[5] = v29;
    v31[6] = v47;
    v52 = sub_100325F60;
    v53 = v31;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_1003259C0;
    v51 = &unk_1008BE350;
    v32 = _Block_copy(&aBlock);

    [v30 launchApp:v24 withResultHandler:v32];

    _Block_release(v32);
  }

  else if (v26 == enum case for OpenableDestination.messages(_:))
  {
    v33 = objc_opt_self();
    sub_100325C90(a9, v54);
    v34 = swift_allocObject();
    sub_100325CC8(v54, (v34 + 2));
    v35 = v44;
    v34[4] = v23;
    v34[5] = v35;
    v34[6] = v47;
    v52 = sub_100325DEC;
    v53 = v34;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_1003259C0;
    v51 = &unk_1008BE300;
    v36 = _Block_copy(&aBlock);

    [v33 launchMessagesExtensionForApp:v24 withResultHandler:v36];

    _Block_release(v36);
  }

  else
  {

    (*(v25 + 8))(v20, v17);
  }
}

uint64_t sub_1003252E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[0] = a3;
  v27[1] = a2;
  v5 = type metadata accessor for ActionOutcome();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for OSLogger();
    sub_1000056A8(v25, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    v29 = type metadata accessor for AdamId();
    sub_1000056E0(aBlock);
    OpenAppAction.adamId.getter();
    static LogMessage.traceableSensitive(_:)();
    sub_10003D444(aBlock);
    Logger.error(_:)();

    sub_10002849C(&qword_1009764A0);
    sub_100325C3C();
    swift_allocError();
    v24 = 1;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v18 = v15;
    sub_100005744(0, &qword_1009729E0);
    v19 = static OS_dispatch_queue.main.getter();
    sub_100325C90(v3, v32);
    v20 = swift_allocObject();
    sub_100325CC8(v32, v20 + 16);
    *(v20 + 32) = v27[0];
    v30 = sub_100325E8C;
    v31 = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    v29 = &unk_1008BE3A0;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100325E98(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0);
    sub_1000079A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v17, v18);
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for OSLogger();
    sub_1000056A8(v22, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    v29 = type metadata accessor for AdamId();
    sub_1000056E0(aBlock);
    OpenAppAction.adamId.getter();
    static LogMessage.traceableSensitive(_:)();
    sub_10003D444(aBlock);
    Logger.error(_:)();

    sub_10002849C(&qword_1009764A0);
    sub_100325C3C();
    swift_allocError();
    v24 = 2;
LABEL_9:
    *v23 = v24;
    return Promise.__allocating_init(error:)();
  }

  sub_10002849C(&qword_1009764A0);
  (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_1003259C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100325A14(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AlertActionStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v7 - 8);
  v8._object = 0x800000010080D9D0;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  localizedString(_:comment:)(v8, v9);
  v10._countAndFlagsBits = 0xD000000000000021;
  v10._object = 0x800000010080D9F0;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  localizedString(_:comment:)(v10, v11);
  static ActionMetrics.notInstrumented.getter();
  (*(v4 + 104))(v6, enum case for AlertActionStyle.normal(_:), v3);
  type metadata accessor for AlertAction();
  swift_allocObject();
  v12 = AlertAction.init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)();
  sub_1005D0490(v12, 1, a2);
}

unint64_t sub_100325C3C()
{
  result = qword_1009806E0;
  if (!qword_1009806E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009806E0);
  }

  return result;
}

void sub_100325D00(unint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for OSSignpostID() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100324B24(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8), v2 + v8, *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100325DF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100325E40(uint64_t a1)
{
  sub_1003252E0(a1, *(v1 + 32), *(v1 + 40));
  Promise.pipe(to:)();
}

uint64_t sub_100325E98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100325EF4()
{
  result = qword_1009806E8;
  if (!qword_1009806E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009806E8);
  }

  return result;
}

unint64_t sub_100325F78()
{
  result = qword_1009806F0;
  if (!qword_1009806F0)
  {
    type metadata accessor for SearchAdAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009806F0);
  }

  return result;
}

uint64_t sub_100325FD0(uint64_t a1, uint64_t a2)
{
  v3 = SearchAdAction.action.getter();
  v4 = sub_1005D0214(v3, 1, a2);

  return v4;
}

uint64_t sub_100326018(uint64_t a1)
{
  if (a1 != 2)
  {
    return 0;
  }

  sub_10002849C(&qword_100973210);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007B15F0;
  v2 = objc_opt_self();
  *(v1 + 32) = [v2 clearColor];
  sub_100005744(0, &qword_100970180);
  v3 = [v2 blackColor];
  v4 = [v3 colorWithAlphaComponent:0.06];

  isa = UIColor.init(light:dark:)(v4, [objc_allocWithZone(UIColor) initWithWhite:0.06667 alpha:1.0]).super.isa;
  result = v1;
  *(v1 + 40) = isa;
  return result;
}

unint64_t sub_100326148@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1003289B8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1003261A8()
{
  *&v0[OBJC_IVAR____TtC8AppStore26SearchCollectionViewLayout_backgroundCornerRadius] = 0;
  v1 = &v0[OBJC_IVAR____TtC8AppStore26SearchCollectionViewLayout_pendingPrepareObserver];
  v2 = type metadata accessor for SearchCollectionViewLayout();
  *v1 = 0;
  *(v1 + 1) = 0;
  v10.receiver = v0;
  v10.super_class = v2;
  v3 = objc_msgSendSuper2(&v10, "init");
  type metadata accessor for SearchResultBackgroundView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  type metadata accessor for SearchTransparencyView();
  v7 = swift_getObjCClassFromMetadata();
  static UICollectionReusableView.elementKind.getter();
  v8 = String._bridgeToObjectiveC()();

  [v5 registerClass:v7 forDecorationViewOfKind:v8];

  return v5;
}

double sub_100326394()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for SearchCollectionViewLayout();
  objc_msgSendSuper2(&v14, "collectionViewContentSize");
  v3 = v2;
  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 collectionView];
    if (v6 && (v7 = v6, v8 = [v6 delegate], v7, v8))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v9 = dispatch thunk of SearchResultsPresenter.transparencyLink.getter();
        if (v9)
        {
          v10 = v9;
          v11 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
          [*&v8[OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
          [*&v8[v11] pageMarginInsets];
          CGSize.subtracting(insets:)();
          sub_100273BA4(v12, v10, v5);
        }

        swift_unknownObjectRelease();
        [v1 minimumLineSpacing];
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return v3;
}

double *sub_100326550(double a1)
{
  v2 = v1;
  v74 = sub_10002849C(&qword_100980740);
  __chkstk_darwin(v74);
  v5 = &v61 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  v13 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  __chkstk_darwin(v19);
  v75 = &v61 - v20;
  v21 = sub_10032702C(a1);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for SearchCollectionViewLayout();
  v80.receiver = v1;
  v80.super_class = v28;
  result = objc_msgSendSuper2(&v80, "layoutAttributesForElementsInRect:", v21, v23, v25, v27);
  if (!result)
  {
    return result;
  }

  v30 = result;
  sub_100005744(0, &qword_1009759D0);
  v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = [v2 collectionView];
  if (!v31)
  {
    return v66;
  }

  v32 = v31;
  v33 = [v31 delegate];

  if (!v33)
  {
    return v66;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
    return v66;
  }

  v65 = v15;
  v63 = v9;
  v73 = v7;
  v61 = v33;
  v34 = [*(v33 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
  [v34 horizontalSizeClass];

  v35 = 1;
  dispatch thunk of SearchResultsPresenter.transparencyLinkIndex(columnCount:)();
  if ((v36 & 1) == 0)
  {
    IndexPath.init(item:section:)();
    v35 = 0;
  }

  v72 = *(v73 + 56);
  v73 += 56;
  v72(v75, v35, 1, v6);
  v79 = _swiftEmptyArrayStorage;
  if (v66 >> 62)
  {
    v37 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v37 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = v61;
  if (v37)
  {
    v78 = v2;
    if (v37 >= 1)
    {
      v38 = 0;
      v39 = v66;
      v69 = v66 & 0xC000000000000001;
      v70 = "backgroundCornerRadius";
      v67 = (v7 + 48);
      v68 = (v7 + 16);
      v62 = (v7 + 32);
      v76 = (v7 + 8);
      v71 = v37;
      v64 = v12;
      while (1)
      {
        if (v69)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v40 = *(v39 + 8 * v38 + 32);
        }

        v77 = v40;
        v41 = [v40 indexPath];
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = String._bridgeToObjectiveC()();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v44 = [v78 layoutAttributesForDecorationViewOfKind:v42 atIndexPath:isa];

        if (v44)
        {
          v45 = v44;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        (*v68)(v18, v12, v6);
        v72(v18, 0, 1, v6);
        v46 = *(v74 + 48);
        sub_10022BA04(v18, v5);
        sub_10022BA04(v75, &v5[v46]);
        v47 = *v67;
        if ((*v67)(v5, 1, v6) == 1)
        {
          break;
        }

        v48 = v18;
        v49 = v65;
        sub_10022BA04(v5, v65);
        if (v47(&v5[v46], 1, v6) == 1)
        {
          sub_10002B894(v48, &unk_10097DAE0);
          v50 = v49;
          v18 = v48;
          (*v76)(v50, v6);
          v12 = v64;
          v39 = v66;
LABEL_24:
          sub_10002B894(v5, &qword_100980740);
          goto LABEL_30;
        }

        v51 = v63;
        (*v62)(v63, &v5[v46], v6);
        sub_1003288F8();
        v52 = dispatch thunk of static Equatable.== infix(_:_:)();
        v53 = *v76;
        (*v76)(v51, v6);
        sub_10002B894(v48, &unk_10097DAE0);
        v54 = v49;
        v18 = v48;
        v53(v54, v6);
        sub_10002B894(v5, &unk_10097DAE0);
        v12 = v64;
        v39 = v66;
        if (v52)
        {
          goto LABEL_26;
        }

LABEL_30:
        v59 = v77;
        sub_1003271C4(v77);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v38;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*v76)(v12, v6);
        if (v71 == v38)
        {
          v60 = v79;
          goto LABEL_37;
        }
      }

      sub_10002B894(v18, &unk_10097DAE0);
      if (v47(&v5[v46], 1, v6) == 1)
      {
        sub_10002B894(v5, &unk_10097DAE0);
LABEL_26:
        type metadata accessor for SearchTransparencyView();
        static UICollectionReusableView.elementKind.getter();
        v55 = String._bridgeToObjectiveC()();

        v56 = IndexPath._bridgeToObjectiveC()().super.isa;
        v57 = [v78 layoutAttributesForDecorationViewOfKind:v55 atIndexPath:v56];

        if (v57)
        {
          v58 = v57;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        goto LABEL_30;
      }

      goto LABEL_24;
    }

    __break(1u);
  }

  else
  {
    v60 = _swiftEmptyArrayStorage;
LABEL_37:
    swift_unknownObjectRelease();

    sub_10002B894(v75, &unk_10097DAE0);
    return v60;
  }

  return result;
}

double sub_10032702C(double a1)
{
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 collectionView];
    if (v5 && (v6 = v5, v7 = [v5 delegate], v6, v7))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v8 = dispatch thunk of SearchResultsPresenter.transparencyLink.getter();
        if (v8)
        {
          v9 = v8;
          v10 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
          [*&v7[OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
          [*&v7[v10] pageMarginInsets];
          CGSize.subtracting(insets:)();
          sub_100273BA4(v11, v9, v4);
        }

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return a1;
}

id sub_1003271C4(void *a1)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v35 - v12;
  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    v16 = [v1 collectionView];
    if (!v16 || (v17 = v16, v18 = [v16 delegate], v17, !v18))
    {
LABEL_14:

      goto LABEL_15;
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v35 = &protocol descriptor for UICollectionViewDelegateSearchLayout;
      v36 = v4;
      v37 = v3;
      v19 = [*&v18[OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits] traitCollection];
      [v19 horizontalSizeClass];

      dispatch thunk of SearchResultsPresenter.transparencyLinkIndex(columnCount:)();
      if (v20)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        IndexPath.init(item:section:)();
        swift_unknownObjectRelease();
        v22 = v36;
        v21 = v37;
        (*(v36 + 32))(v13, v9, v37);
        v23 = [v2 collectionView];
        if (v23 && (v24 = v23, v25 = [v23 delegate], v24, v25))
        {
          swift_getObjectType();
          if (!swift_conformsToProtocol2())
          {

            swift_unknownObjectRelease();
            (*(v22 + 8))(v13, v21);
            goto LABEL_15;
          }

          v26 = dispatch thunk of SearchResultsPresenter.transparencyLink.getter();
          if (v26)
          {
            v27 = v26;
            v28 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
            [*&v25[OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
            [*&v25[v28] pageMarginInsets];
            CGSize.subtracting(insets:)();
            sub_100273BA4(v29, v27, v15);
          }

          swift_unknownObjectRelease();
          v32 = [v38 indexPath];
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v32) = static IndexPath.> infix(_:_:)();
          v33 = *(v22 + 8);
          v33(v6, v21);
          if (v32)
          {
            sub_100005744(0, &qword_1009759D0);
            v34 = NSCopying.makeCopy()();
            [v2 minimumLineSpacing];
            [v34 frame];
            [v34 setFrame:?];

            v33(v13, v21);
            return v34;
          }

          v33(v13, v21);
        }

        else
        {
          (*(v22 + 8))(v13, v21);
        }
      }

      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

LABEL_15:
  v30 = v38;

  return v30;
}

uint64_t sub_100327654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v129 = a2;
  v130 = a1;
  v6 = type metadata accessor for IndexPath();
  v127 = *(v6 - 8);
  __chkstk_darwin(v6);
  v124 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100980740);
  __chkstk_darwin(v8);
  v10 = &v117 - v9;
  v11 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v11 - 8);
  v125 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v126 = &v117 - v14;
  __chkstk_darwin(v15);
  v128 = &v117 - v16;
  v17 = type metadata accessor for FloatingPointRoundingRule();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v22 = type metadata accessor for SearchCollectionViewLayout();
  v132.receiver = v4;
  v132.super_class = v22;
  v23 = objc_msgSendSuper2(&v132, "layoutAttributesForItemAtIndexPath:", isa);

  if (!v23)
  {
    return 0;
  }

  v123 = v10;
  v24 = [v4 collectionView];
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = v24;
  v26 = [v4 collectionView];
  if (!v26 || (v122 = v6, v27 = v26, v28 = [v26 delegate], v27, !v28))
  {

LABEL_11:
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v120 = v28;
  v121 = v23;
  type metadata accessor for SearchCollectionLayoutAttributes();
  v29 = String._bridgeToObjectiveC()();
  v30 = IndexPath._bridgeToObjectiveC()().super.isa;
  v118 = [swift_getObjCClassFromMetadata() layoutAttributesForDecorationViewOfKind:v29 withIndexPath:v30];

  v31 = v25;
  v32 = [v31 traitCollection];
  v117 = [v32 horizontalSizeClass];

  v33 = [v31 traitCollection];
  v34 = [v33 userInterfaceIdiom];

  v119 = v31;
  if (v34)
  {
    if (qword_10096E6B0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for StaticDimension();
    sub_1000056A8(v35, qword_1009D2430);
    v36 = [v31 traitCollection];

    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1007B0B70;
    *(v37 + 32) = v36;
    v38 = v36;
    v39 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of AnyDimension.rawValue(in:)();
    v41 = v40;
  }

  else
  {
    if (qword_10096D8F0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for StaticDimension();
    sub_1000056A8(v43, qword_1009CFAB0);
    v44 = [v31 traitCollection];

    static Dimensions.defaultRoundingRule.getter();
    StaticDimension.value(compatibleWith:rounded:)();
    v41 = v45;

    (*(v18 + 8))(v20, v17);
  }

  v47 = v120;
  v46 = v121;
  v48 = v122;
  if (v130 != 0xD000000000000022 || 0x800000010080DA90 != v129)
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v49 = v119;
    if ((v50 & 1) != 0 && v117 == 1)
    {
      goto LABEL_23;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_28;
    }

    type metadata accessor for SearchTransparencyView();
    if (static UICollectionReusableView.elementKind.getter() == v130 && v73 == v129)
    {

      v74 = v128;
    }

    else
    {
      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v74 = v128;
      if ((v80 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v81 = v127;
    (*(v127 + 16))(v74, a3, v48);
    v82 = v48;
    v83 = *(v81 + 56);
    v84 = 1;
    v83(v74, 0, 1, v82);
    v129 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_presenter;
    v130 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
    v85 = [*&v47[OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits] traitCollection];
    [v85 horizontalSizeClass];

    dispatch thunk of SearchResultsPresenter.transparencyLinkIndex(columnCount:)();
    v86 = v126;
    if ((v87 & 1) == 0)
    {
      IndexPath.init(item:section:)();
      v84 = 0;
    }

    v88 = v84;
    v89 = v122;
    v83(v86, v88, 1, v122);
    v90 = v89;
    v91 = *(v8 + 48);
    v92 = v128;
    v93 = v123;
    sub_10022BA04(v128, v123);
    sub_10022BA04(v86, v93 + v91);
    v94 = *(v127 + 48);
    if (v94(v93, 1, v89) == 1)
    {
      sub_10002B894(v86, &unk_10097DAE0);
      sub_10002B894(v92, &unk_10097DAE0);
      v95 = v94(v93 + v91, 1, v89);
      v97 = v120;
      v96 = v121;
      if (v95 == 1)
      {
        sub_10002B894(v93, &unk_10097DAE0);
LABEL_59:
        v104 = v130;
        [*&v97[v130] pageMarginInsets];
        v106 = v105;
        v107 = v118;
        [v96 frame];
        MaxY = CGRectGetMaxY(v137);
        [v4 minimumLineSpacing];
        v110 = v109;
        v111 = dispatch thunk of SearchResultsPresenter.transparencyLink.getter();
        if (v111)
        {
          v112 = v111;
          [*&v97[v104] pageContainerSize];
          [*&v97[v104] pageMarginInsets];
          CGSize.subtracting(insets:)();
          v114 = sub_100273BA4(v113, v112, v49);
          v116 = v115;
        }

        else
        {
          v114 = 0.0;
          v116 = 0.0;
        }

        [v107 setFrame:{v106, MaxY + v110, v114, v116}];

        swift_unknownObjectRelease();
        return v107;
      }
    }

    else
    {
      v98 = v125;
      sub_10022BA04(v93, v125);
      v99 = v94(v93 + v91, 1, v90);
      v97 = v120;
      if (v99 != 1)
      {
        v100 = v127;
        v101 = v93 + v91;
        v102 = v124;
        (*(v127 + 32))(v124, v101, v90);
        sub_1003288F8();
        LODWORD(v117) = dispatch thunk of static Equatable.== infix(_:_:)();
        v103 = *(v100 + 8);
        v103(v102, v90);
        sub_10002B894(v86, &unk_10097DAE0);
        sub_10002B894(v128, &unk_10097DAE0);
        v103(v98, v90);
        v49 = v119;
        sub_10002B894(v93, &unk_10097DAE0);
        v96 = v121;
        if (v117)
        {
          goto LABEL_59;
        }

LABEL_57:
        swift_unknownObjectRelease();

        goto LABEL_53;
      }

      sub_10002B894(v86, &unk_10097DAE0);
      sub_10002B894(v128, &unk_10097DAE0);
      (*(v127 + 8))(v98, v90);
      v96 = v121;
    }

    sub_10002B894(v93, &qword_100980740);
    goto LABEL_57;
  }

  v49 = v119;
  if (v117 != 1)
  {
LABEL_28:
    v65 = sub_1002BD048();
    if (v65)
    {
      v52 = v65;
      [v46 frame];
      v66 = CGRectGetWidth(v135) + 24.0;
      [v46 frame];
      v67 = v41 + v41 + CGRectGetHeight(v136);
      [v46 frame];
      v69 = v68 + -12.0;
      v71 = v70 - v41;
      v63 = v118;
      [v63 setFrame:{v69, v71, v66, v67}];
      *&v63[OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_cornerRadius] = *&v4[OBJC_IVAR____TtC8AppStore26SearchCollectionViewLayout_backgroundCornerRadius];
      if (v52 != 1)
      {
        if (v52 == 2)
        {
          v64 = 0;
          goto LABEL_40;
        }

LABEL_32:
        if (v52 != 3)
        {
          v131 = v52;
          result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
          __break(1u);
          return result;
        }

        if (qword_10096E810 != -1)
        {
          swift_once();
        }

        v64 = qword_1009D28B0;
        v72 = qword_1009D28B0;
        goto LABEL_40;
      }

LABEL_39:
      v64 = [objc_opt_self() secondarySystemBackgroundColor];
      goto LABEL_40;
    }

    goto LABEL_52;
  }

LABEL_23:
  v51 = sub_1002BD048();
  if (!v51)
  {
LABEL_52:
    swift_unknownObjectRelease();

LABEL_53:
    return 0;
  }

  v52 = v51;
  [v46 frame];
  Width = CGRectGetWidth(v133);
  [v46 frame];
  v55 = Width + v54 + v54;
  [v46 frame];
  v56 = v41 + v41 + CGRectGetHeight(v134);
  [v46 frame];
  v58 = v57;
  v60 = v59;
  [v46 frame];
  v62 = v58 - v61;
  v63 = v118;
  [v63 setFrame:{v62, v60 - v41, v55, v56}];
  *&v63[OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_cornerRadius] = 0;
  if (v52 == 1)
  {
    goto LABEL_39;
  }

  v64 = 0;
  if (v52 != 2)
  {
    goto LABEL_32;
  }

LABEL_40:
  v75 = *&v63[OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_backgroundColor];
  *&v63[OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_backgroundColor] = v64;

  v76 = v63;
  *&v63[OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_backgroundGradientColors] = sub_100326018(v52);

  if (v52 >= 3)
  {
    if (qword_10096E818 != -1)
    {
      swift_once();
    }

    v77 = qword_1009D28B8;
    v78 = qword_1009D28B8;
  }

  else
  {
    v77 = 0;
  }

  v79 = *&v76[OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_borderColor];
  *&v76[OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_borderColor] = v77;

  [v76 setZIndex:-1];
  swift_unknownObjectRelease();

  return v76;
}

uint64_t sub_100328560()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 delegate];

    if (v3)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        type metadata accessor for SearchResultsCollectionViewDelegate();
        v4 = swift_dynamicCastClass();
        if (v4)
        {
          v5 = v4;
          v6 = sub_100399024(_swiftEmptyArrayStorage);
          v7 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_maxSizeForRowCache;
          swift_beginAccess();
          *(v5 + v7) = v6;

          *(v5 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_isFirstItemFullWidth) = 2;
        }
      }

      swift_unknownObjectRelease();
    }
  }

  v12.receiver = v0;
  v12.super_class = type metadata accessor for SearchCollectionViewLayout();
  objc_msgSendSuper2(&v12, "prepareLayout");
  v8 = &v0[OBJC_IVAR____TtC8AppStore26SearchCollectionViewLayout_pendingPrepareObserver];
  v9 = *&v0[OBJC_IVAR____TtC8AppStore26SearchCollectionViewLayout_pendingPrepareObserver];
  if (v9)
  {

    v9(v0);
    sub_10001F63C(v9);
    v10 = *v8;
  }

  else
  {
    v10 = 0;
  }

  *v8 = 0;
  v8[1] = 0;
  return sub_10001F63C(v10);
}

id sub_100328720()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchCollectionViewLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10032878C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009CFAB0);
  sub_1000056A8(v4, qword_1009CFAB0);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_1000056E0(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_1003288F8()
{
  result = qword_10098B750;
  if (!qword_10098B750)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098B750);
  }

  return result;
}

unint64_t sub_100328964()
{
  result = qword_100980748;
  if (!qword_100980748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980748);
  }

  return result;
}

unint64_t sub_1003289B8(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t MetadataRibbonView.hasContent.getter()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = sub_1004849E0(0, v2);

  return v3 & 1;
}

uint64_t MetadataRibbonView.isInsideSearchAd.setter(char a1)
{
  v3 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_isInsideSearchAd;
  result = swift_beginAccess();
  v1[v7] = a1;
  if (a1)
  {
    static MetadataRibbonViewLayout.Metrics.standard.getter();
    v9 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v4 + 24))(&v1[v9], v6, v3);
    swift_endAccess();
    [v1 setNeedsLayout];
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

id sub_100328B9C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v44 = a2;
  v4 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MetadataRibbonItemViewType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v62 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_71;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v58 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
  v59 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
  v56 = enum case for MetadataRibbonItemViewType.starRating(_:);
  v57 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
  v54 = enum case for MetadataRibbonItemViewType.divider(_:);
  v55 = enum case for MetadataRibbonItemViewType.textLabel(_:);
  v61 = a1 & 0xC000000000000001;
  v53 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
  v51 = a1;
  if (v13)
  {
    v52 = v9;
    v9 = v13;
    v14 = 0;
    v60 = a1 & 0xFFFFFFFFFFFFFF8;
    v15 = (v7 + 11);
    v50 = v7++;
    while (1)
    {
      if (v61)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          v24 = v62;
          v13 = v9;
          v9 = v52;
          v7 = v50;
          goto LABEL_35;
        }
      }

      else
      {
        if (v14 >= *(v60 + 16))
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v13 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        v16 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          goto LABEL_32;
        }
      }

      MetadataRibbonItem.viewContainerType.getter();
      v17 = (*v15)(v12, v6);
      if (v17 == v59 || v17 == v58 || v17 == v57 || v17 == v56 || v17 == v55 || v17 == v54 || v17 == v53)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v51;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {

        (*v7)(v12, v6);
      }

      ++v14;
      if (v16 == v9)
      {
        goto LABEL_33;
      }
    }
  }

  v60 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = _swiftEmptyArrayStorage;
LABEL_35:
  v25 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemModels;
  v26 = v48;
  swift_beginAccess();
  *&v26[v25] = v24;

  if (v13)
  {
    v52 = v13;
    v27 = 0;
    v28 = (v7 + 11);
    ++v7;
    v29 = _swiftEmptyArrayStorage;
    do
    {
      v50 = v29;
      v12 = v27;
      while (1)
      {
        if (v61)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v27 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v12 >= *(v60 + 16))
          {
            goto LABEL_70;
          }

          v27 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        MetadataRibbonItem.viewContainerType.getter();
        v30 = (*v28)(v9, v6);
        if (v30 == v59)
        {
          type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView();
          v31 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
          v32 = &unk_100970650;
          goto LABEL_60;
        }

        if (v30 == v58)
        {
          type metadata accessor for MetadataRibbonEditorsChoiceView();
          v31 = type metadata accessor for MetadataRibbonEditorsChoiceView;
          v32 = &unk_100972E90;
          goto LABEL_60;
        }

        if (v30 == v57)
        {
          type metadata accessor for MetadataRibbonIconWithLabelView(0);
          v31 = type metadata accessor for MetadataRibbonIconWithLabelView;
          v32 = &unk_100970648;
          goto LABEL_60;
        }

        if (v30 == v56)
        {
          type metadata accessor for MetadataRibbonStarRatingView();
          v31 = type metadata accessor for MetadataRibbonStarRatingView;
          v32 = &unk_100972EA0;
          goto LABEL_60;
        }

        if (v30 == v55)
        {
          type metadata accessor for MetadataRibbonTagView();
          v31 = type metadata accessor for MetadataRibbonTagView;
          v32 = &unk_100970640;
          goto LABEL_60;
        }

        if (v30 == v54)
        {
          type metadata accessor for MetadataRibbonBarView();
          v31 = type metadata accessor for MetadataRibbonBarView;
          v32 = &unk_100972E80;
          goto LABEL_60;
        }

        if (v30 == v53)
        {
          break;
        }

        (*v7)(v9, v6);
        ++v12;
        if (v27 == v52)
        {
          v29 = v50;
          goto LABEL_67;
        }
      }

      type metadata accessor for MetadataRibbonHighlightedTextView();
      v31 = type metadata accessor for MetadataRibbonHighlightedTextView;
      v32 = &unk_100970638;
LABEL_60:
      v33 = sub_10032B100(v32, v31);
      v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      dispatch thunk of MetadataRibbonItemView.apply(_:asPartOf:)();
      MetadataRibbonItem.id.getter();
      dispatch thunk of MetadataRibbonItemView.id.setter();

      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_10003406C(0, *(v29 + 2) + 1, 1, v29);
      }

      v36 = *(v29 + 2);
      v35 = *(v29 + 3);
      if (v36 >= v35 >> 1)
      {
        v29 = sub_10003406C((v35 > 1), v36 + 1, 1, v29);
      }

      *(v29 + 2) = v36 + 1;
      v37 = &v29[2 * v36];
      *(v37 + 4) = v34;
      *(v37 + 5) = v33;
      a1 = v51;
    }

    while (v27 != v52);
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

LABEL_67:
  v38 = v48;
  sub_1003296A4(v29);
  v40 = v46;
  v39 = v47;
  v41 = v45;
  (*(v46 + 16))(v45, v44, v47);
  v42 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v40 + 24))(&v38[v42], v41, v39);
  swift_endAccess();
  [v38 setNeedsLayout];
  (*(v40 + 8))(v41, v39);
  return [v38 setNeedsLayout];
}

id sub_100329528()
{
  v1 = v0;
  v2 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews];
  v7 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v7], v2);

  v8 = MetadataRibbonViewLayout.Metrics.maximumNumberOfItems.getter();
  (*(v3 + 8))(v5, v2);
  result = sub_1000477CC(v8, v6);
  v13 = (v12 >> 1) - v11;
  if (v12 >> 1 == v11)
  {
    goto LABEL_5;
  }

  if ((v12 >> 1) > v11)
  {
    v14 = (v10 + 16 * v11);
    do
    {
      v15 = *v14;
      v14 += 2;
      [v1 addSubview:v15];
      --v13;
    }

    while (v13);
LABEL_5:
    swift_unknownObjectRelease();
    return [v1 setNeedsLayout];
  }

  __break(1u);
  return result;
}

id sub_1003296A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = 32;
    do
    {
      [*(v4 + v6) removeFromSuperview];
      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v1 + v3) = a1;

  return sub_100329528();
}

uint64_t MetadataRibbonView.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
  swift_beginAccess();
  v4 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1003297C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
  swift_beginAccess();
  v5 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100329854(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v5 + 24))(&v9[v10], v8, v4);
  swift_endAccess();
  [v9 setNeedsLayout];
  return (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall MetadataRibbonView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v33 = type metadata accessor for LayoutRect();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for MetadataRibbonViewLayout();
  v28 = *(v29 - 8);
  *&v5 = __chkstk_darwin(v29).n128_u64[0];
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46.receiver = v1;
  v46.super_class = ObjectType;
  v31 = ObjectType;
  objc_msgSendSuper2(&v46, "layoutSubviews", v5);
  v7 = *&v1[OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews];
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v11 = v7 + 40;
    while (v9 < *(v7 + 16))
    {
      v12 = *(v11 - 8);
      swift_getObjectType();
      v13 = v12;
      dispatch thunk of MetadataRibbonItemView.layoutContext.getter();
      v36 = v42;
      v37 = v43;
      v38 = v44;
      v39 = v45;
      v34 = v40;
      v35 = v41;

      if (*(&v35 + 1))
      {
        v42 = v36;
        v43 = v37;
        v44 = v38;
        v45 = v39;
        v40 = v34;
        v41 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100033284(0, *(v10 + 2) + 1, 1, v10);
        }

        v15 = *(v10 + 2);
        v14 = *(v10 + 3);
        if (v15 >= v14 >> 1)
        {
          v10 = sub_100033284((v14 > 1), v15 + 1, 1, v10);
        }

        *(v10 + 2) = v15 + 1;
        v16 = &v10[11 * v15];
        v17 = v41;
        *(v16 + 2) = v40;
        *(v16 + 3) = v17;
        v18 = v42;
        v19 = v43;
        v20 = v44;
        *(v16 + 56) = v45;
        *(v16 + 5) = v19;
        *(v16 + 6) = v20;
        *(v16 + 4) = v18;
      }

      else
      {
        sub_10002B894(&v34, &qword_100980758);
      }

      ++v9;
      v11 += 16;
      if (v8 == v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v21 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v25 + 16))(v24, &v1[v21], v27);
    v22 = v26;
    MetadataRibbonViewLayout.init(metadataRibbonItemLayoutContexts:metrics:)();
    LayoutMarginsAware<>.layoutFrame.getter();
    v23 = v30;
    MetadataRibbonViewLayout.placeChildren(relativeTo:in:)();
    (*(v32 + 8))(v23, v33);
    (*(v28 + 8))(v22, v29);
  }
}

uint64_t MetadataRibbonView.measurements(fitting:in:)(uint64_t a1)
{
  v29 = a1;
  v27 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for MetadataRibbonViewLayout();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v22 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews);
  v5 = *(v4 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v9 = v4 + 40;
    while (v7 < *(v4 + 16))
    {
      v10 = *(v9 - 8);
      swift_getObjectType();
      v11 = v10;
      dispatch thunk of MetadataRibbonItemView.layoutContext.getter();
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v30 = v36;
      v31 = v37;

      if (*(&v31 + 1))
      {
        v38 = v32;
        v39 = v33;
        v40 = v34;
        v41 = v35;
        v36 = v30;
        v37 = v31;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100033284(0, *(v8 + 2) + 1, 1, v8);
          v8 = result;
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          result = sub_100033284((v12 > 1), v13 + 1, 1, v8);
          v8 = result;
        }

        *(v8 + 2) = v13 + 1;
        v14 = &v8[11 * v13];
        v15 = v37;
        *(v14 + 2) = v36;
        *(v14 + 3) = v15;
        v16 = v38;
        v17 = v39;
        v18 = v40;
        *(v14 + 56) = v41;
        *(v14 + 5) = v17;
        *(v14 + 6) = v18;
        *(v14 + 4) = v16;
      }

      else
      {
        result = sub_10002B894(&v30, &qword_100980758);
      }

      ++v7;
      v9 += 16;
      if (v5 == v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v19 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
    v20 = v28;
    swift_beginAccess();
    (*(v25 + 16))(v23, v20 + v19, v27);
    v21 = v22;
    MetadataRibbonViewLayout.init(metadataRibbonItemLayoutContexts:metrics:)();
    MetadataRibbonViewLayout.measurements(fitting:in:)();
    return (*(v24 + 8))(v21, v26);
  }

  return result;
}

uint64_t MetadataRibbonView.isInsideSearchAd.getter()
{
  v1 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_isInsideSearchAd;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*MetadataRibbonView.isInsideSearchAd.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v8 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_isInsideSearchAd;
  v4[9] = v7;
  v4[10] = v8;
  swift_beginAccess();
  return sub_10032A504;
}

void sub_10032A504(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 48);
    if (v4[*(v3 + 80)] == 1)
    {
      v6 = *(v3 + 64);
      v5 = *(v3 + 72);
      v7 = *(v3 + 56);
      static MetadataRibbonViewLayout.Metrics.standard.getter();
      v8 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v4[v8], v5, v7);
      swift_endAccess();
      [v4 setNeedsLayout];
      (*(v6 + 8))(v5, v7);
    }
  }

  free(*(v3 + 72));

  free(v3);
}

uint64_t type metadata accessor for MetadataRibbonView()
{
  result = qword_100980788;
  if (!qword_100980788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10032A6D0()
{
  result = type metadata accessor for MetadataRibbonViewLayout.Metrics();
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

uint64_t sub_10032A784(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = type metadata accessor for Artwork.Crop();
  v3 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemModels;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (v7)
  {
    v8 = *(v2 + OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews);
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      goto LABEL_24;
    }

    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v10)
    {
      v11 = 0;
      v23 = v10;
      v24 = v7 & 0xC000000000000001;
      v17 = v3 + 1;
      v18 = v7;
      v12 = 32;
      v19 = v8;
      do
      {
        if (v24)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            v10 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }
        }

        v13 = *(v8 + 16);
        if (v11 == v13)
        {

          break;
        }

        if (v11 >= v13)
        {
          goto LABEL_23;
        }

        v3 = *(v8 + v12);
        type metadata accessor for MetadataRibbonIconWithLabelView(0);
        if (swift_dynamicCastClass())
        {
          v14 = v3;
          v15 = MetadataRibbonItem.artwork.getter();
          if (v15)
          {
            v3 = v15;
            v16 = v20;
            Artwork.crop.getter();
            Artwork.Crop.preferredContentMode.getter();
            (*v17)(v16, v21);
            Artwork.config(_:mode:prefersLayeredImage:)();
            type metadata accessor for ArtworkLoader();
            type metadata accessor for ArtworkView();
            static ArtworkLoader.handlerKey<A>(for:)();
            swift_allocObject();
            swift_unknownObjectWeakInit();

            ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

            sub_10002B894(v25, &qword_10096FB90);
            v7 = v18;
            v8 = v19;
          }

          else
          {
          }

          v10 = v23;
        }

        else
        {
        }

        ++v11;
        v12 += 16;
      }

      while (v10 != v11);
    }
  }

  return result;
}

uint64_t sub_10032AAE8(unint64_t a1, uint64_t a2)
{
  v34 = a2;
  v33 = type metadata accessor for Artwork.Crop();
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for AspectRatio();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout.Metrics();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MetadataRibbonItemViewType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  result = _swiftEmptyArrayStorage;
  if (!a1)
  {
    return result;
  }

  v42 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_4;
    }

    return _swiftEmptyArrayStorage;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  if (result >= 1)
  {
    v16 = 0;
    v39 = a1 & 0xC000000000000001;
    v38 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
    v37 = (v9 + 104);
    v17 = (v9 + 8);
    v27 = (v4 + 8);
    v26 = (v6 + 8);
    v25 = (v36 + 8);
    v35 = _swiftEmptyArrayStorage;
    v36 = a1;
    v40 = result;
    while (1)
    {
      if (v39)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      MetadataRibbonItem.viewContainerType.getter();
      (*v37)(v11, v38, v8);
      sub_10032B100(&qword_100980798, &type metadata accessor for MetadataRibbonItemViewType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v41[0] == v41[5] && v41[1] == v41[6])
      {
        v18 = *v17;
        (*v17)(v11, v8);
        v18(v14, v8);
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v20 = *v17;
        (*v17)(v11, v8);
        v20(v14, v8);

        if ((v19 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (MetadataRibbonItem.artwork.getter())
      {
        v21 = v28;
        static MetadataRibbonIconWithLabelViewLayout.Metrics.standard.getter();
        MetadataRibbonIconWithLabelViewLayout.Metrics.defaultArtworkHeight.getter();
        sub_10002A400(v41, v41[3]);
        AnyDimension.value(with:)();
        sub_100007000(v41);
        Artwork.size.getter();
        v22 = v30;
        AspectRatio.init(_:_:)();
        AspectRatio.width(fromHeight:)();
        (*v27)(v22, v31);
        (*v26)(v21, v29);
        v23 = v32;
        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        (*v25)(v23, v33);
        Artwork.config(_:mode:prefersLayeredImage:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v35 = v42;
        goto LABEL_7;
      }

LABEL_6:

LABEL_7:
      if (v40 == ++v16)
      {
        return v35;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10032B100(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10032B148(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v27 = sub_10002849C(&qword_100980990);
  __chkstk_darwin(v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for ComponentLayoutOptions();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v26 = v2;
  v16(v11, v2, v8, v13);
  v24 = sub_10032FDF8(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v17 = v27;
  sub_10032FDF8(&qword_100980998, &type metadata accessor for ComponentLayoutOptions);
  v25 = a2;
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v17 + 48);
  *v7 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v9 + 32))(&v7[v19], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v20 = v25;
    (v16)(&v7[v19], v25, v8);
    (v16)(v11, v20, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v21 = v28;
  sub_1000476A0(v7, v28, &qword_100980990);
  v22 = *v21;
  (*(v9 + 32))(v29, &v21[*(v17 + 48)], v8);
  return v22;
}

uint64_t sub_10032B44C(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v27 = sub_10002849C(&qword_100975438);
  __chkstk_darwin(v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for AppStoreConfig();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v26 = v2;
  v16(v11, v2, v8, v13);
  v24 = sub_10032FDF8(&qword_100975460, &type metadata accessor for AppStoreConfig);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v17 = v27;
  sub_10032FDF8(&qword_100975478, &type metadata accessor for AppStoreConfig);
  v25 = a2;
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v17 + 48);
  *v7 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v9 + 32))(&v7[v19], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v20 = v25;
    (v16)(&v7[v19], v25, v8);
    (v16)(v11, v20, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v21 = v28;
  sub_1000476A0(v7, v28, &qword_100975438);
  v22 = *v21;
  (*(v9 + 32))(v29, &v21[*(v17 + 48)], v8);
  return v22;
}

uint64_t sub_10032B750(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v27 = sub_10002849C(&qword_100980968);
  __chkstk_darwin(v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for VideoControls();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v26 = v2;
  v16(v11, v2, v8, v13);
  v24 = sub_10032FDF8(&unk_100988DE0, &type metadata accessor for VideoControls);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v17 = v27;
  sub_10032FDF8(&qword_100980970, &type metadata accessor for VideoControls);
  v25 = a2;
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v17 + 48);
  *v7 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v9 + 32))(&v7[v19], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v20 = v25;
    (v16)(&v7[v19], v25, v8);
    (v16)(v11, v20, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v21 = v28;
  sub_1000476A0(v7, v28, &qword_100980968);
  v22 = *v21;
  (*(v9 + 32))(v29, &v21[*(v17 + 48)], v8);
  return v22;
}

void sub_10032BA54(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    if (Strong)
    {
      type metadata accessor for ProductLockupCollectionViewCell();
      v4 = Strong;
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    sub_10032E3E0();
    v4 = Strong;
LABEL_9:

    goto LABEL_10;
  }

  if (Strong)
  {
    goto LABEL_8;
  }

LABEL_10:
}

void sub_10032BB24(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_1009CF410);

    if (a1)
    {
      sub_10032FDF8(&qword_100980978, type metadata accessor for ChevronView);
    }

    CompoundScrollObserver.removeChild(_:)();
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + qword_1009CF410);

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      sub_10032FDF8(&qword_100980978, type metadata accessor for ChevronView);
    }

    CompoundScrollObserver.addChild(_:)();
  }
}

uint64_t sub_10032BC8C()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ProductScrollObserver();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v1 + 24) = 1;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 32) = sub_10032FDF0;
    *(v1 + 40) = v2;
    *(v0 + 64) = v1;
  }

  return v1;
}

uint64_t sub_10032BD40(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10032DF68(a1, a2 & 1);
  }

  return result;
}

uint64_t sub_10032BDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10032C250(a4, a1, a2);
  }

  return result;
}

uint64_t sub_10032BE50()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      memset(v2, 0, sizeof(v2));
      ProductDiffablePagePresenter.didSelectDeveloper(sender:)();

      return sub_10002B894(v2, &unk_1009711D0);
    }
  }

  return result;
}

void sub_10032BEE4(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a2;
  v6 = type metadata accessor for VideoControls();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v18 = sub_10002849C(&qword_100979D68);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v28 - v20;
  v22 = *(v7 + 16);
  v22(a4, a1, v6, v19);
  static VideoControls.muteUnmute.getter();
  (v22)(v11, a4, v6);
  sub_10032FDF8(&unk_100988DE0, &type metadata accessor for VideoControls);
  dispatch thunk of SetAlgebra.intersection(_:)();
  if (dispatch thunk of SetAlgebra.isEmpty.getter())
  {
    v23 = *(v7 + 8);
    v23(v14, v6);
    v23(v17, v6);
    v24 = 1;
  }

  else
  {
    dispatch thunk of SetAlgebra.subtract(_:)();
    v23 = *(v7 + 8);
    v23(v17, v6);
    (*(v7 + 32))(v21, v14, v6);
    v24 = 0;
  }

  (*(v7 + 56))(v21, v24, 1, v6);
  sub_10002B894(v21, &qword_100979D68);
  if (v31)
  {
    v25 = [v30 traitCollection];
    v26 = [v25 horizontalSizeClass];

    if (v26 == 2)
    {
      v27 = v29;
      static VideoControls.prominentPlayOnPause.getter();
      sub_10032B750(v11, v27);
      v23(v27, v6);
      v23(v11, v6);
    }
  }
}

uint64_t sub_10032C250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a3;
  v88 = a1;
  v3 = sub_10002849C(&qword_10098A2E0);
  __chkstk_darwin(v3 - 8);
  v81 = &v75 - v4;
  v86 = type metadata accessor for LegacyAppState.AppInstallationDetails();
  v89 = *(v86 - 8);
  __chkstk_darwin(v86);
  v77 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v87 = &v75 - v7;
  v8 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v8 - 8);
  v10 = &v75 - v9;
  v11 = type metadata accessor for LegacyAppState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v76 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v80 = &v75 - v15;
  __chkstk_darwin(v16);
  v83 = &v75 - v17;
  __chkstk_darwin(v18);
  v20 = &v75 - v19;
  v91 = sub_10002849C(&qword_100980980);
  v84 = *(v91 - 8);
  __chkstk_darwin(v91);
  v22 = &v75 - v21;
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v79 = ASKBagContract.downloadProgressDisplayWaitTime.getter();

  inject<A, B>(_:from:)();
  v75 = ASKBagContract.downloadProgressDisplayRemainingTime.getter();

  sub_10002849C(&qword_100980988);
  BaseObjectGraph.inject<A>(_:)();
  sub_10002A400(v94, v94[3]);
  v78 = dispatch thunk of NetworkInquiry.isLikelyReachable.getter();
  sub_100007000(v94);
  v23 = sub_1000D71CC();
  v92 = v22;
  v90 = v23;
  ItemLayoutContext.typedWritableState<A>(as:)();
  swift_getObjectType();
  v24 = v20;
  dispatch thunk of AppStateMachine.currentState.getter();
  dispatch thunk of AppStateMachine.startDownloadTime.getter();
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v10, 1, v25) == 1)
  {
    sub_10002B894(v10, &qword_100979710);
    v27 = 0.0;
  }

  else
  {
    Date.timeIntervalSinceNow.getter();
    v27 = v28;
    (*(v26 + 8))(v10, v25);
  }

  swift_getKeyPath();
  WritableStateLens<A>.subscript.getter();

  v29 = v94[0];
  v30 = *(v12 + 16);
  v31 = v83;
  v30(v83, v20, v11);
  v32 = (*(v12 + 88))(v31, v11);
  v34 = v85;
  v33 = v86;
  if (v32 != enum case for LegacyAppState.downloading(_:))
  {
    if (v32 != enum case for LegacyAppState.installing(_:))
    {
      goto LABEL_12;
    }

    v39 = v76;
    v30(v76, v31, v11);
    (*(v12 + 96))(v39, v11);
    v40 = v77;
    (*(v89 + 32))(v77, v39, v33);
    v41 = v91;
    if ((v29 & 1) != 0 && (LegacyAppState.AppInstallationDetails.hasPostProcessing.getter() & 1) == 0)
    {
      v54._object = 0x800000010080DC50;
      v54._countAndFlagsBits = 0xD000000000000024;
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      v56 = localizedString(_:comment:)(v54, v55);
      v57 = v33;
      countAndFlagsBits = v56._countAndFlagsBits;
      object = v56._object;
      (*(v89 + 8))(v40, v57);
      goto LABEL_21;
    }

    (*(v89 + 8))(v40, v33);
LABEL_19:
    v42 = *(v12 + 8);
    v42(v24, v11);
    countAndFlagsBits = 0;
    object = 0;
    goto LABEL_22;
  }

  v35 = v79;
  v36 = v80;
  v30(v80, v31, v11);
  (*(v12 + 96))(v36, v11);
  (*(v89 + 32))(v87, v36, v33);
  if ((v78 & (v35 < -v27)) != 0)
  {
    *&v37 = COERCE_DOUBLE(LegacyAppState.estimatedTimeRemaining.getter());
    if ((v38 & 1) == 0)
    {
      v45 = *&v37;
      v46 = LegacyAppState.AppInstallationDetails.hasPostProcessing.getter();
      v41 = v91;
      if ((v46 & 1) == 0 || (v47 = LegacyAppState.AppInstallationDetails.postProcessingPhaseProgress.getter()) == 0 || (v48 = v47, v49 = [v47 completedUnitCount], v48, v50 = v49 <= 0, v33 = v86, !v50))
      {
        if ((v75 < v45) | v29 & 1)
        {
          v51 = LegacyAppState.estimatedTimeRemainingText.getter();
          v52 = v33;
          countAndFlagsBits = v51;
          object = v53;
          (*(v89 + 8))(v87, v52);
LABEL_21:
          v42 = *(v12 + 8);
          v42(v24, v11);
          goto LABEL_22;
        }
      }

      (*(v89 + 8))(v87, v33);
      goto LABEL_19;
    }
  }

  (*(v89 + 8))(v87, v33);
LABEL_12:
  v42 = *(v12 + 8);
  v42(v24, v11);
  countAndFlagsBits = 0;
  object = 0;
  v41 = v91;
LABEL_22:
  v42(v31, v11);
  swift_getKeyPath();
  WritableStateLens<A>.subscript.getter();

  if ((object != 0) == LOBYTE(v94[0]) || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    v61 = 0;
  }

  else
  {
    v59 = Strong;
    v60 = [Strong traitCollection];

    v61 = UITraitCollection.prefersAccessibilityLayouts.getter();
  }

  __chkstk_darwin(Strong);
  *(&v75 - 32) = v62;
  *(&v75 - 3) = countAndFlagsBits;
  *(&v75 - 2) = object;
  v63 = v92;
  WritableStateLens<A>.updateValue(_:)();

  if (v61)
  {
    v64 = type metadata accessor for TaskPriority();
    v65 = v81;
    (*(*(v64 - 8) + 56))(v81, 1, 1, v64);
    type metadata accessor for MainActor();

    v66 = static MainActor.shared.getter();
    v67 = swift_allocObject();
    v67[2] = v66;
    v67[3] = &protocol witness table for MainActor;
    v67[4] = v34;
    sub_100221E78(0, 0, v65, &unk_1007C7F20, v67);
  }

  else
  {
    v68 = swift_unknownObjectWeakLoadStrong();
    if (v68)
    {
      v69 = v68;
      swift_getKeyPath();
      WritableStateLens<A>.subscript.getter();

      v70 = v94[0];
      v71 = v94[1];
      swift_getKeyPath();
      WritableStateLens<A>.subscript.getter();

      v72 = v93;
      v73 = sub_100079F24();
      swift_getObjectType();
      sub_100433F8C(v70, v71, v72, v73, v69);
      swift_unknownObjectRelease();
    }
  }

  return (*(v84 + 8))(v63, v41);
}

uint64_t sub_10032CCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10032CD74, v6, v5);
}

uint64_t sub_10032CD74()
{

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    ProductDiffablePagePresenter.reconfigureProductTopLockup()();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10032CE00(uint64_t a1, uint64_t a2)
{
  v104 = a2;
  v2 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v2 - 8);
  v103 = &v83 - v3;
  v4 = type metadata accessor for OfferButtonSubtitlePosition();
  v98 = *(v4 - 8);
  __chkstk_darwin(v4);
  v100 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009701A0);
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6);
  v99 = &v83 - v7;
  v8 = sub_10002849C(&unk_100970170);
  __chkstk_darwin(v8 - 8);
  v96 = &v83 - v9;
  v95 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v11 - 8);
  v97 = &v83 - v12;
  v13 = sub_10002849C(&qword_100973AC8);
  __chkstk_darwin(v13 - 8);
  v15 = &v83 - v14;
  v16 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v16 - 8);
  v18 = &v83 - v17;
  v19 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v19 - 8);
  v21 = &v83 - v20;
  v22 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v22 - 8);
  v108 = &v83 - v23;
  v24 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v24 - 8);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v83 - v28;
  v30 = type metadata accessor for AspectRatio();
  v106 = *(v30 - 8);
  v107 = v30;
  __chkstk_darwin(v30);
  v105 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductTopLockup();
  sub_10032FDF8(&qword_100973AE8, &type metadata accessor for ProductTopLockup);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v33 = *&v109[0];
  if (*&v109[0])
  {
    v92 = v21;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      v90 = v15;
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = swift_unknownObjectWeakLoadStrong();
      if (v37)
      {
        v83 = v18;
        v89 = v4;
        v38 = v33;
        v39 = v37;
        v40 = *(v37 + qword_1009CE4D0);

        v84 = ProductTopLockup.title.getter();
        v42 = v41;
        sub_100495A34();
        v43 = v105;
        AspectRatio.init(_:_:)();
        v91 = ProductDiffablePagePresenter.titleOfferDisplayProperties.getter();
        v86 = v38;
        v44 = v40;
        v85 = ProductTopLockup.offerAction.getter();
        v88 = v35;
        v45 = ProductDiffablePagePresenter.offerButtonMode.getter();
        v46 = OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView;
        sub_100275C3C(v84, v42);
        v48 = v106;
        v47 = v107;
        (*(v106 + 16))(v29, v43, v107);
        (*(v48 + 56))(v29, 0, 1, v47);
        v49 = *&v44[v46];
        sub_1000727A0(v29, v26);
        v50 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconAspectRatio;
        swift_beginAccess();
        sub_10032FC78(v26, v49 + v50);
        swift_endAccess();
        [v49 setNeedsLayout];
        sub_10002B894(v26, &unk_1009732A0);
        sub_10002B894(v29, &unk_1009732A0);
        v51 = &v44[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapHandler];
        v52 = *&v44[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapHandler];
        *v51 = sub_10032FC70;
        v51[1] = v36;
        swift_retain_n();
        sub_10001F63C(v52);
        v53 = *&v44[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapGestureRecognizer];

        [v53 setEnabled:1];

        v54 = OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton;
        LODWORD(v84) = [*&v44[OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton] isHidden];
        *&v44[OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButtonMode] = v45;
        if (ProductOfferButtonMode.isHidden.getter())
        {
          v55 = *&v44[v54];
          v56 = 1;
          v57 = v108;
        }

        else
        {
          v58 = ProductNavigationBarMode.rawValue.getter();
          v59 = ProductNavigationBarMode.rawValue.getter();
          v55 = *&v44[v54];
          v57 = v108;
          if (v58 == v59)
          {
            v56 = 1;
          }

          else
          {
            v56 = v44[OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility + 1];
          }
        }

        v60 = v91;
        [v55 setHidden:v56];
        v61 = ProductOfferButtonMode.isDisabled.getter();
        v87 = v36;
        if (v61)
        {
          v62 = enum case for OfferStyle.disabled(_:);
          v63 = type metadata accessor for OfferStyle();
          v64 = *(v63 - 8);
          (*(v64 + 104))(v57, v62, v63);
          (*(v64 + 56))(v57, 0, 1, v63);
          if (v60)
          {
            v65 = v83;
LABEL_16:
            v67 = type metadata accessor for OfferEnvironment();
            v68 = v92;
            (*(*(v67 - 8) + 56))(v92, 1, 1, v67);
            v69 = type metadata accessor for OfferTint();
            (*(*(v69 - 8) + 56))(v65, 1, 1, v69);
            v70 = type metadata accessor for OfferLabelStyle();
            v71 = v90;
            (*(*(v70 - 8) + 56))(v90, 1, 1, v70);
            memset(v109, 0, 32);
            v72 = v65;
            v73 = dispatch thunk of OfferDisplayProperties.newOfferDisplayPropertiesChanging(titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)();
            sub_10002B894(v109, &unk_1009711D0);
            sub_10002B894(v71, &qword_100973AC8);
            sub_10002B894(v72, &unk_100973AD0);
            sub_10002B894(v68, &unk_100970160);
LABEL_19:
            v75 = v93;
            v76 = v95;
            (*(v93 + 104))(v94, enum case for OfferButtonPresenterViewAlignment.right(_:), v95);
            v77 = 1;
            (*(v75 + 56))(v96, 1, 1, v76);
            sub_10032FDF8(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment);
            v78 = v97;
            AccessibilityConditional.init(value:axValue:)();
            v79 = sub_10002849C(&unk_100973240);
            (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
            v80 = v98;
            v81 = v89;
            (*(v98 + 104))(v100, enum case for OfferButtonSubtitlePosition.left(_:), v89);
            (*(v80 + 56))(v103, 1, 1, v81);
            sub_10032FDF8(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
            v82 = v99;
            AccessibilityConditional.init(value:axValue:)();
            sub_10064AFA4(v73, v85, 0, v78, v82, v104, 0, 0);
            (*(v101 + 8))(v82, v102);
            sub_10002B894(v78, &unk_100973230);
            if ((v84 & 1) == 0)
            {
              v77 = v44[OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility + 1];
            }

            [*&v44[v54] setHidden:v77];

            sub_10002B894(v108, &qword_100973AE0);
            (*(v106 + 8))(v105, v107);
          }
        }

        else
        {
          v65 = v83;
          if (v60)
          {
            OfferDisplayProperties.style.getter();
            v66 = type metadata accessor for OfferStyle();
            (*(*(v66 - 8) + 56))(v57, 0, 1, v66);
            goto LABEL_16;
          }

          v74 = type metadata accessor for OfferStyle();
          (*(*(v74 - 8) + 56))(v57, 1, 1, v74);
        }

        v73 = 0;
        goto LABEL_19;
      }
    }
  }

  return result;
}

void sub_10032DBE0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v1 = [Strong collectionView];

      if (v1)
      {
        [v1 _scrollToTopIfPossible:1];
      }
    }
  }
}

void sub_10032DC80(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong collectionView];

    if (v4)
    {
      sub_100005744(0, &qword_1009704D0);
      v5 = a1;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        sub_10032BC8C();
        sub_100043A7C(v5);

        [v5 safeAreaInsets];
        v8 = v7;
        v9 = swift_unknownObjectWeakLoadStrong();
        if (v9)
        {
          v10 = *&v9[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView];
          if (v10 && v8 > 0.0)
          {
            v32 = v9;
            v11 = v10;
            [v5 bounds];
            v12 = CGRectGetHeight(v34) * -0.5;
            [*&v32[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView] frame];
            v13 = CGRectGetMinY(v35) + v12;
            [v5 contentOffset];
            v15 = v14 / v13;
            if (v14 / v13 < 0.0)
            {
              v16 = 0.0;
            }

            else
            {
              v16 = v14 / v13;
            }

            v17 = 1.0 - v16;
            [v5 contentOffset];
            v19 = v18 / v8;
            if (v19 < 0.0)
            {
              v20 = 0.0;
            }

            else
            {
              v20 = v19;
            }

            v21 = 1.0 - v20;
            sub_10002849C(&qword_100973210);
            v22 = swift_allocObject();
            *(v22 + 16) = xmmword_1007B48F0;
            v23 = objc_opt_self();
            *(v22 + 32) = [v23 blackColor];
            v24 = [v23 blackColor];
            v25 = v24;
            if (v15 >= 1.0)
            {
              v26 = 0.0;
            }

            else
            {
              v26 = v17;
            }

            v27 = [v24 colorWithAlphaComponent:v26];

            *(v22 + 40) = v27;
            v28 = [v23 blackColor];
            v29 = v28;
            if (v19 >= 1.0)
            {
              v30 = 0.0;
            }

            else
            {
              v30 = v21;
            }

            v31 = [v28 colorWithAlphaComponent:v30];

            *(v22 + 48) = v31;
            *&v11[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v22;

            sub_1001C0CEC();

            v9 = v11;
          }
        }
      }
    }
  }
}

uint64_t sub_10032DF68(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_100972A80);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    HIDWORD(v29) = ProductDiffablePagePresenter.isOfferButtonHiddenByPresenter.getter();
    v32 = ProductNavigationBarMode.rawValue.getter();
    v31 = ProductNavigationBarMode.rawValue.getter();
    if (a2)
    {
      v30 = sub_100043BF4();
    }

    else
    {
      v30 = 0;
    }

    v12 = qword_1009CE4D0;
    v13 = ProductOfferButtonMode.isHidden.getter();
    v14 = ProductNavigationBarMode.rawValue.getter();
    if (v14 == ProductNavigationBarMode.rawValue.getter())
    {
      v15 = [v11 navigationItem];
      v16 = [v15 rightBarButtonItems];

      if (v16)
      {
        sub_100005744(0, &qword_100983870);
        v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v17 = 0;
      }

      *&v11[qword_1009CE4D8] = v17;
    }

    v18 = a2 ^ 1;
    v19 = *&v11[qword_1009CE4D8];
    if (v19)
    {
      if ((v13 & 1) == 0)
      {
        if (!a1)
        {
          v22 = swift_allocObject();
          *(v22 + 16) = v11;
          *(v22 + 24) = v19;

          v28 = v11;
          v19 = sub_10032FC68;
LABEL_21:
          v23 = *&v11[v12];
          v24 = v30;
          sub_1002753B4(a1, v30, v18 & 1, v19, v22);

          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            v26 = v25;
            ProductDiffablePagePresenter.adamId.getter();
            if (swift_weakLoadStrong())
            {
              ProductDiffablePagePresenter.shareAction.getter();
            }

            sub_100434330(v32 == v31, v24, v18 & 1, (v29 & 0x100000000) == 0, v8);

            sub_10001F63C(v19);

            return sub_10002B894(v8, &qword_100972A80);
          }

          else
          {
            v27 = v32 != v31;
            sub_10001F63C(v19);

            *(v3 + 48) = v27;
          }

          return result;
        }

        if (a1 == 1)
        {
          v20 = [v11 navigationItem];
          sub_100005744(0, &qword_100983870);
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v20 setRightBarButtonItems:isa animated:0];
        }
      }

      v19 = 0;
    }

    v22 = 0;
    goto LABEL_21;
  }
}

void sub_10032E348(void *a1)
{
  v1 = [a1 navigationItem];
  sub_100005744(0, &qword_100983870);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v1 setRightBarButtonItems:isa animated:0];
}

void sub_10032E3E0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v0 = swift_unknownObjectWeakLoadStrong();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 collectionView];

    if (v2)
    {
      v3 = *&Strong[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton];
      v4 = *&Strong[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel];
      if (v4)
      {
        v5 = v3;
        v6 = v4;
        if (([v6 isHidden] & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v7 = v3;
      }

      v6 = *&Strong[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel];
LABEL_12:
      v8 = v3;
      v9 = v6;
      if ([v8 isHidden])
      {
        v10 = [v9 isHidden];

        if ((v10 & 1) == 0)
        {

          v11 = v9;
          goto LABEL_20;
        }
      }

      else
      {
      }

      v11 = v9;
      if ([v11 isHidden] || (v55.receiver = v8, v55.super_class = type metadata accessor for OfferButton(), objc_msgSendSuper2(&v55, "frame"), MaxY = CGRectGetMaxY(v57), objc_msgSend(v11, "frame"), MaxY >= CGRectGetMaxY(v58)))
      {

        v11 = v8;
      }

      else
      {
      }

LABEL_20:
      v13 = v11;
      [v13 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [v13 superview];

      [v2 convertRect:v22 fromView:{v15, v17, v19, v21}];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v59.origin.x = v24;
      v59.origin.y = v26;
      v59.size.width = v28;
      v59.size.height = v30;
      MinY = CGRectGetMinY(v59);
      v32 = swift_unknownObjectWeakLoadStrong();
      if (!v32)
      {
        goto LABEL_24;
      }

      v33 = v32;
      v34 = [v32 view];
      if (v34)
      {
        v35 = v34;
        type metadata accessor for InsetCollectionViewControllerContentView();
        v36 = swift_dynamicCastClass();
        if (v36)
        {
          v37 = v36;

          v38 = *(v37 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);
          if (v38)
          {
LABEL_28:
            v52 = sub_10032BC8C();
            *(v52 + 16) = MinY;
            *(v52 + 24) = 0;
            v53 = *(v52 + 32);
            if (v53)
            {
              v53(*(v52 + 48), 0, *(v52 + 56));
            }

            return;
          }

LABEL_24:
          v39 = swift_unknownObjectWeakLoadStrong();
          v40 = 0.0;
          if (v39)
          {
            v41 = v39;
            v42 = [v39 navigationController];

            if (v42)
            {
              v43 = [v42 navigationBar];

              [v43 frame];
              v45 = v44;
              v47 = v46;
              v49 = v48;
              v51 = v50;

              v60.origin.x = v45;
              v60.origin.y = v47;
              v60.size.width = v49;
              v60.size.height = v51;
              v40 = CGRectGetMaxY(v60);
            }
          }

          MinY = MinY - v40;
          goto LABEL_28;
        }
      }

      __break(1u);
      return;
    }
  }
}

uint64_t sub_10032E7AC()
{
  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_10032E848(void *a1)
{
  [a1 adjustedContentInset];
  v4 = v3;
  [a1 contentOffset];
  *(v1 + OBJC_IVAR____TtC8AppStore11ChevronView_shouldAnimate) = v4 + v5 <= 0.1;

  sub_10002C6BC();
}

uint64_t sub_10032E8C4()
{
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  swift_weakAssign();
  swift_unknownObjectWeakAssign();
  type metadata accessor for ProductTopLockupIconFetcher();
  swift_allocObject();
  *(v0 + 40) = ProductTopLockupIconFetcher.init(artworkLoader:)();
  return v0;
}

void sub_10032E978(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for LegacyAppState();
  v116 = *(v8 - 8);
  __chkstk_darwin(v8);
  v109 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v111 = &ObjectType - v11;
  v12 = sub_10002849C(&qword_100972A80);
  __chkstk_darwin(v12 - 8);
  v115 = &ObjectType - v13;
  v14 = type metadata accessor for ItemLayoutContext();
  v110 = *(v14 - 8);
  v15 = *(v110 + 64);
  __chkstk_darwin(v14);
  v16 = type metadata accessor for AdamId();
  v113 = *(v16 - 8);
  v114 = v16;
  __chkstk_darwin(v16);
  v18 = &ObjectType - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductLockupCollectionViewCell();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v108 = v8;
    v112 = a3;
    type metadata accessor for ProductTopLockup();
    v117 = a2;
    sub_10032FDF8(&qword_100973AE8, &type metadata accessor for ProductTopLockup);
    v21 = a1;
    ItemLayoutContext.typedModel<A>(as:)();
    v22 = v121;
    if (!v121)
    {

      return;
    }

    if (!swift_weakLoadStrong())
    {

LABEL_54:

      return;
    }

    v105 = v21;
    v104 = v20;
    sub_10032BA54(v20);
    sub_10002849C(&unk_100973AF0);
    v103 = v14;
    BaseObjectGraph.inject<A>(_:)();
    swift_getObjectType();
    v107 = v22;
    ProductTopLockup.adamId.getter();
    v23 = dispatch thunk of AppStateController.stateMachine(forApp:)();
    v25 = v24;
    swift_unknownObjectRelease();
    (*(v113 + 8))(v18, v114);
    v26 = v117;
    sub_10032C250(v117, v23, v25);
    ObjectType = swift_getObjectType();
    dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = v110;
    v29 = v103;
    (*(v110 + 16))(&ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v103);
    v30 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v27;
    (*(v28 + 32))(v31 + v30, &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
    *(v31 + ((v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v112;
    v32 = v104;

    v110 = v23;
    dispatch thunk of AppStateMachine.addStateTransitionObserver(_:action:)();

    if ((*(v4 + 48) & 1) == 0)
    {
LABEL_28:
      v55 = *&v32[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_disclosureArrow];
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      v57 = v55;
      sub_10032BB24(Strong);

      v58 = swift_allocObject();
      swift_weakInit();
      v59 = &v32[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerTapHandler];
      v60 = *&v32[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerTapHandler];
      *v59 = sub_10032F6B4;
      v59[1] = v58;

      sub_10001F63C(v60);

      sub_10032CE00(v117, v112);
      v61 = swift_unknownObjectWeakLoadStrong();
      if (v61)
      {
        v62 = v61;
        v63 = *(v61 + qword_1009CE4D0);

        v64 = *(*&v63[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView] + OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconView);
      }

      else
      {
        v64 = 0;
      }

      dispatch thunk of ProductTopLockupIconFetcher.addIconRecipient(recipient:)();

      v65 = *&v32[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView];
      dispatch thunk of ProductTopLockupIconFetcher.addIconRecipient(recipient:)();

      dispatch thunk of ProductTopLockupIconFetcher.fetchArtwork(for:in:)();
      v66 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView;
      v67 = *&v32[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView];
      if (!v67)
      {
        goto LABEL_52;
      }

      v68 = swift_unknownObjectWeakLoadStrong();
      v69 = v67;
      if (v68)
      {
        v70 = [v68 navigationItem];
      }

      else
      {
        v70 = 0;
      }

      v71 = OBJC_IVAR____TtC8AppStore14UberHeaderView_navigationItem;
      v72 = *&v69[OBJC_IVAR____TtC8AppStore14UberHeaderView_navigationItem];
      if (v72)
      {
        v73 = v72;
        v74 = String._bridgeToObjectiveC()();
        [v73 removeObserver:v69 forKeyPath:v74 context:&unk_100974E90];

        v75 = *&v69[v71];
      }

      else
      {
        v75 = 0;
      }

      *&v69[v71] = v70;
      v76 = v70;

      v77 = *&v69[v71];
      if (v77)
      {
        v78 = v77;
        v79 = String._bridgeToObjectiveC()();
        [v78 addObserver:v69 forKeyPath:v79 options:0 context:&unk_100974E90];

        v80 = *&v69[v71];
        if (v80)
        {
          v80 = [v80 title];
          if (v80)
          {
            v81 = v80;
            v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v84 = v83;

            v85 = v84;
            v80 = v82;
          }

          else
          {
            v85 = 0;
          }

          goto LABEL_44;
        }
      }

      else
      {
        v80 = 0;
      }

      v85 = 0;
LABEL_44:
      sub_1001136B0(v80, v85);

      v86 = *&v32[v66];
      if (v86)
      {
        v87 = swift_unknownObjectWeakLoadStrong();
        if (v87)
        {
          v88 = v87;
          v89 = *(v87 + qword_1009CE4E0);
          v90 = v86;
        }

        else
        {
          v91 = v86;
          v89 = 0;
        }

        swift_unknownObjectWeakAssign();
        sub_100113BEC();

        v92 = *&v32[v66];
        if (v92)
        {
          v93 = *(*(*(v92 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
          if (v93)
          {
            type metadata accessor for VideoView();
            v94 = swift_dynamicCastClass();
            if (v94)
            {
              v95 = v94;
              v96 = swift_allocObject();
              v97 = v105;
              *(v96 + 16) = v105;
              v98 = (v95 + qword_1009D21D0);
              v99 = *(v95 + qword_1009D21D0);
              *v98 = sub_10032F6BC;
              v98[1] = v96;
              v100 = v97;
              v101 = v93;

              sub_10001F63C(v99);
              sub_1004E77F8();

              swift_unknownObjectRelease();

              goto LABEL_54;
            }
          }

          swift_unknownObjectRelease();

LABEL_53:

          goto LABEL_54;
        }
      }

LABEL_52:

      swift_unknownObjectRelease();
      goto LABEL_53;
    }

    *(v4 + 48) = 0;
    v33 = ProductDiffablePagePresenter.isOfferButtonHiddenByPresenter.getter();
    v34 = v115;
    ProductTopLockup.adamId.getter();
    v35 = v113;
    v36 = v34;
    v37 = v114;
    (*(v113 + 56))(v36, 0, 1, v114);
    if (swift_weakLoadStrong())
    {
      ProductDiffablePagePresenter.shareAction.getter();
    }

    v38 = (*(v35 + 48))(v115, 1, v37);
    v39 = v108;
    if (v38 == 1 || !*&v32[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_appStateMachine])
    {
      (*(v116 + 104))(v111, enum case for LegacyAppState.unknown(_:), v108);
    }

    else
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of AppStateMachine.currentState.getter();
      swift_unknownObjectRelease();
    }

    v40 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton;
    [*(*&v32[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton] + OBJC_IVAR____TtC8AppStore11OfferButton_imageView) setContentMode:1];
    if (v33)
    {
      v41 = 0;
    }

    else
    {
      v41 = *&v32[v40];
      v42 = v41;
    }

    v43 = *&v32[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel];
    v44 = v109;
    if (v43 && v32[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible] == 1)
    {
      goto LABEL_24;
    }

    (*(v116 + 16))(v109, v111, v39);
    v45 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel;
    v46 = [*&v32[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel] text];
    if (v46)
    {
      v47 = v46;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v50 = LegacyAppState.isBuyable.getter();
    (*(v116 + 8))(v44, v39);
    if (v50)
    {
      if (v49)
      {

        v43 = *&v32[v45];
LABEL_24:
        v51 = v43;
LABEL_27:
        v118 = *&v32[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView];
        v119 = v41;
        v120 = v43;
        v52 = v118;
        [v52 setAlpha:1.0];
        [v52 setHidden:0];

        v53 = v41;
        [v53 setAlpha:1.0];
        [v53 setHidden:0];

        v54 = v43;
        sub_10002849C(&qword_100980960);
        swift_arrayDestroy();
        [v54 setAlpha:1.0];
        [v54 setHidden:0];

        [v32 setNeedsLayout];
        (*(v116 + 8))(v111, v108);
        sub_10002B894(v115, &qword_100972A80);
        goto LABEL_28;
      }
    }

    else
    {
    }

    v43 = 0;
    goto LABEL_27;
  }
}

uint64_t sub_10032F604(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ItemLayoutContext() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_10032BDC4(a1, a2, v6, v7);
}

void sub_10032F6C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_10097DAF0);
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - v4;
  v34 = sub_10002849C(&qword_100980980);
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v32 - v6;
  v7 = type metadata accessor for Shelf.ContentType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v32 - v11;
  v46 = sub_10002849C(&unk_1009731F0);
  v12 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v32 - v13;
  v14 = type metadata accessor for ItemLayoutContext();
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  if (v19)
  {
    v21 = *(v15 + 16);
    v20 = v15 + 16;
    v22 = a2 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v41 = *(v20 + 56);
    v42 = v21;
    v40 = (v12 + 8);
    v39 = enum case for Shelf.ContentType.productTopLockup(_:);
    v37 = (v8 + 8);
    v38 = (v8 + 104);
    v43 = v20;
    v36 = (v20 - 8);
    v32 = (v5 + 8);
    v44 = v14;
    v21(v18, v22, v14, v16);
    while (1)
    {
      swift_getKeyPath();
      v28 = v45;
      ItemLayoutContext.subscript.getter();

      swift_getKeyPath();
      v29 = v46;
      ReadOnlyLens.subscript.getter();

      (*v40)(v28, v29);
      (*v38)(v48, v39, v7);
      sub_10032FDF8(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v51 == v49 && v52 == v50)
      {
        break;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v31 = *v37;
      (*v37)(v48, v7);
      v31(v47, v7);

      if (v30)
      {
        goto LABEL_4;
      }

LABEL_5:
      v26 = v44;
      (*v36)(v18, v44);
      v22 += v41;
      if (!--v19)
      {
        return;
      }

      v42(v18, v22, v26, v27);
    }

    v23 = *v37;
    (*v37)(v48, v7);
    v23(v47, v7);

LABEL_4:
    ItemLayoutContext.mutableState.getter();
    v24 = v33;
    WritableStateLens.init(_:)();
    sub_1000D71CC();
    v25 = v34;
    WritableStateLens<A>.updateValue(_:)();
    (*v32)(v24, v25);
    goto LABEL_5;
  }
}

uint64_t sub_10032FC78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009732A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032FCE8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v3;

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_10032FD3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100095E9C;

  return sub_10032CCDC(a1, v4, v5, v6);
}

uint64_t sub_10032FDF8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10032FE58()
{
  type metadata accessor for BundleImage();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1009809A0 = result;
  return result;
}

id sub_10032FEB0(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10096D8F8 != -1)
  {
    swift_once();
  }

  v6 = qword_1009809A0;
  v7 = a3;
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v6 withConfiguration:v7];

  result = v9;
  if (!v9)
  {
    if (qword_10096D110 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for OSLogger();
    sub_1000056A8(v11, qword_1009CE1E8);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    v15 = &type metadata for String;
    v13 = a1;
    v14 = a2;

    static LogMessage.sensitive(_:)();
    sub_10002B894(&v13, &unk_1009711D0);
    Logger.error(_:)();

    v12 = objc_allocWithZone(UIImage);
    return [v12 init];
  }

  return result;
}

id sub_100330100(uint64_t a1, objc_class *a2)
{
  v22 = a2;
  v2 = type metadata accessor for Artwork.URLTemplate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Artwork.template.getter();
  Artwork.URLTemplate.rawValue.getter();
  (*(v3 + 8))(v5, v2);
  URL.init(string:)();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10002B894(v8, &qword_100982460);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v13 = URL.host.getter();
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      if (dispatch thunk of Artwork.isBundleImage.getter())
      {
        v17.value.super.super.isa = v22;
        v18 = Artwork.configuration(with:)(v17);
        v19 = sub_10032FEB0(v16, v15, v18);

        (*(v10 + 8))(v12, v9);
        return v19;
      }

      (*(v10 + 8))(v12, v9);
    }

    else
    {
      (*(v10 + 8))(v12, v9);
    }
  }

  return 0;
}

UIImage *_sSo7UIImageC8AppStoreE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(void *a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  v11.width = 1.0;
  v11.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, v4);
  v5 = UIGraphicsGetCurrentContext();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [a1 CGColor];
    CGContextSetFillColorWithColor(v7, v8);

    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = 1.0;
    v12.size.height = 1.0;
    CGContextFillRect(v7, v12);
  }

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

uint64_t sub_100330508@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_100330564(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100330630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1003313FC(&qword_100974AF8, type metadata accessor for PlaceholderCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1003306C8(uint64_t a1)
{
  v3 = type metadata accessor for Shelf.PresentationHints();
  v83 = *(v3 - 8);
  v84 = v3;
  __chkstk_darwin(v3);
  v81 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v82 = &v75 - v6;
  v7 = type metadata accessor for ShelfLayoutContext();
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin(v7);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v9 - 8);
  v11 = &v75 - v10;
  v12 = sub_10002849C(&unk_1009731F0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v75 - v14;
  v16 = type metadata accessor for Shelf.ContentType();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v77 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v75 - v20;
  __chkstk_darwin(v22);
  v85 = &v75 - v23;
  type metadata accessor for Placeholder();
  sub_1003313FC(&qword_100980A40, &type metadata accessor for Placeholder);
  ItemLayoutContext.typedModel<A>(as:)();
  result = v86;
  if (!v86)
  {
    return result;
  }

  v76 = v1;

  swift_getKeyPath();
  v75 = a1;
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v13 + 8))(v15, v12);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    return sub_1000CD7FC(v11);
  }

  v25 = v85;
  (*(v17 + 32))(v85, v11, v16);
  v26 = *(v17 + 16);
  v26(v21, v25, v16);
  v27 = (*(v17 + 88))(v21, v16);
  if (v27 == enum case for Shelf.ContentType.smallLockup(_:) || v27 == enum case for Shelf.ContentType.mediumLockup(_:) || v27 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    v33 = *&v76[OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_placeholderView];
    type metadata accessor for LockupPlaceholderView();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v35 = v34;
      v36 = v33;
    }

    else
    {
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    v40 = v77;
    v26(v77, v25, v16);
    v41 = OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_contentType;
    swift_beginAccess();
    (*(v17 + 24))(&v35[v41], v40, v16);
    swift_endAccess();
    v28 = v35;
    [v28 setNeedsLayout];
    (*(v17 + 8))(v40, v16);
    v42 = v78;
    ItemLayoutContext.parentShelfLayoutContext.getter();
    v43 = v82;
    ShelfLayoutContext.shelfPresentationHints.getter();
    (*(v79 + 8))(v42, v80);
    v44 = v81;
    static Shelf.PresentationHints.isAppleArcadeContext.getter();
    sub_1003313FC(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
    v45 = v84;
    v46 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v47 = *(v83 + 8);
    v47(v44, v45);
    v47(v43, v45);
    v28[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_wantsHeadingTextPlaceholder] = v46 & 1;
    [v28 setNeedsLayout];

    v32 = v76;
    goto LABEL_17;
  }

  if (v27 != enum case for Shelf.ContentType.videoCard(_:))
  {
    if (v27 == enum case for Shelf.ContentType.brick(_:))
    {
      v32 = v76;
      v37 = *&v76[OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_placeholderView];
      type metadata accessor for BrickPlaceholderView();
      v38 = swift_dynamicCastClass();
      if (v38)
      {
        v28 = v38;
        v39 = v37;
      }

      else
      {
        v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      }

      v58 = v78;
      ItemLayoutContext.parentShelfLayoutContext.getter();
      v59 = v82;
      ShelfLayoutContext.shelfPresentationHints.getter();
      (*(v79 + 8))(v58, v80);
      v60 = v81;
      static Shelf.PresentationHints.showSupplementaryText.getter();
      sub_1003313FC(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
      v61 = v84;
      v62 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v63 = *(v83 + 8);
      v63(v60, v61);
      v63(v59, v61);
      v28[OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] = v62 & 1;
      [v28 setNeedsLayout];
      goto LABEL_17;
    }

    if (v27 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
      goto LABEL_24;
    }

    if (v27 == enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      type metadata accessor for TodayCardPlaceholderView();
    }

    else
    {
      if (v27 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v27 == enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        type metadata accessor for MixedMediaLockupPlaceholderView();
        v64 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v65 = v77;
        v26(v77, v25, v16);
        v66 = OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_contentType;
        swift_beginAccess();
        (*(v17 + 24))(&v64[v66], v65, v16);
        swift_endAccess();
        v28 = v64;
        [v28 setNeedsLayout];
        (*(v17 + 8))(v65, v16);
        v67 = v78;
        ItemLayoutContext.parentShelfLayoutContext.getter();
        v68 = v82;
        ShelfLayoutContext.shelfPresentationHints.getter();
        (*(v79 + 8))(v67, v80);
        v69 = v81;
        static Shelf.PresentationHints.showSupplementaryText.getter();
        sub_1003313FC(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
        v70 = v84;
        LOBYTE(v66) = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v71 = *(v83 + 8);
        v71(v69, v70);
        v71(v68, v70);
        v28[OBJC_IVAR____TtC8AppStore31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder] = v66 & 1;
        [v28 setNeedsLayout];

        goto LABEL_9;
      }

      if (v27 != enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        v32 = v76;
        if (v27 == enum case for Shelf.ContentType.posterLockup(_:))
        {
          v28 = [objc_allocWithZone(UIView) init];
          v72 = [objc_opt_self() secondarySystemBackgroundColor];
          [v28 setBackgroundColor:v72];

          v73 = [v28 layer];
          [v73 setCornerRadius:20.0];

          v74 = [v28 layer];
          [v74 setCornerCurve:kCACornerCurveContinuous];

          goto LABEL_17;
        }

        if (v27 == enum case for Shelf.ContentType.appPromotion(_:))
        {
          type metadata accessor for AppEventPlaceholderView();
          goto LABEL_35;
        }

        if (v27 != enum case for Shelf.ContentType.tagBrick(_:))
        {
          (*(v17 + 8))(v21, v16);
          v28 = 0;
          v32 = v76;
          goto LABEL_18;
        }

LABEL_24:
        v32 = v76;
        v55 = *&v76[OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_placeholderView];
        type metadata accessor for CategoryBrickPlaceholderView();
        v56 = swift_dynamicCastClass();
        if (v56)
        {
          v28 = v56;
          v57 = v55;
          goto LABEL_17;
        }

LABEL_35:
        v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        goto LABEL_17;
      }

      type metadata accessor for TodayBrickPlaceholderView();
    }

    v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    goto LABEL_9;
  }

  v28 = [objc_allocWithZone(UIView) init];
  v29 = [objc_opt_self() secondarySystemBackgroundColor];
  [v28 setBackgroundColor:v29];

  v30 = [v28 layer];
  [v30 setCornerRadius:20.0];

  v31 = [v28 layer];
  [v31 setCornerCurve:kCACornerCurveContinuous];

LABEL_9:
  v32 = v76;
LABEL_17:
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
LABEL_18:
  v48 = OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_placeholderView;
  [*&v32[OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_placeholderView] removeFromSuperview];
  if (v28)
  {
    v49 = v28;
    v50 = [v32 contentView];
    [v50 addSubview:v49];

    v51 = *&v32[v48];
    *&v32[v48] = v49;
    v52 = v49;

    [v32 setNeedsLayout];
  }

  else
  {
    v53 = [objc_allocWithZone(UIView) init];
    v54 = *&v32[v48];
    *&v32[v48] = v53;
  }

  return (*(v17 + 8))(v85, v16);
}

uint64_t sub_1003313FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100331458()
{
  result = qword_100980A48;
  if (!qword_100980A48)
  {
    type metadata accessor for FlowPreviewAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980A48);
  }

  return result;
}

uint64_t sub_1003314B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v5 = type metadata accessor for ActionOutcome();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowPresentationContext();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_1009764A0);
  v12 = Promise.__allocating_init()();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = [Strong presentedViewController];

  if (v14)
  {

    v15 = swift_unknownObjectUnownedLoadStrong();
    sub_100331E70(v3, v44);
    v16 = swift_allocObject();
    sub_100331EA8(v44, (v16 + 2));
    v17 = v42;
    v16[3] = a1;
    v16[4] = v17;
    v16[5] = v12;
    aBlock[4] = sub_100331EE0;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008BE670;
    v18 = _Block_copy(aBlock);

    [v15 dismissViewControllerAnimated:1 completion:v18];
    _Block_release(v18);
  }

  else
  {
    v19 = v42;
    v38 = v3;
    v39 = v9;
    v40 = v7;
    v37 = v12;
    v20 = FlowPreviewAction.previewViewController.getter();
    FlowPreviewAction.presentationContext.getter();
    if (FlowPreviewAction.requiresNavigationController.getter())
    {
      type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
      v21 = type metadata accessor for StoreNavigationController();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph] = v19;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v45.receiver = v22;
      v45.super_class = v21;

      v24 = v11;
      v25 = objc_msgSendSuper2(&v45, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
      [v25 setDelegate:v25];
      sub_100005744(0, &qword_10097CD40);
      swift_allocObject();
      v26 = swift_unknownObjectUnownedLoadStrong();
      swift_unknownObjectWeakInit();

      v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      sub_100039F8C(v20, v27);

      sub_10002849C(&qword_100973210);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1007B0B70;
      *(v28 + 32) = v20;
      sub_100005744(0, &qword_1009711C0);
      v29 = v20;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v25 setViewControllers:isa];

      v31 = swift_unknownObjectUnownedLoadStrong();
      [v31 presentViewController:v25 animated:0 completion:0];

      v20 = v25;
      v11 = v24;
    }

    else
    {
      v31 = swift_unknownObjectUnownedLoadStrong();
      [v31 presentViewController:v20 animated:0 completion:0];
    }

    v32 = v39;
    v33 = v40;

    (*(v32 + 8))(v11, v8);
    v34 = v41;
    (*(v41 + 104))(v33, enum case for ActionOutcome.performed(_:), v5);
    v12 = v37;
    Promise.resolve(_:)();
    (*(v34 + 8))(v33, v5);
  }

  return v12;
}

uint64_t sub_1003319F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v6 = type metadata accessor for ActionOutcome();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FlowPresentationContext();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = FlowPreviewAction.previewViewController.getter();
  FlowPreviewAction.presentationContext.getter();
  if (FlowPreviewAction.requiresNavigationController.getter())
  {
    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v15 = type metadata accessor for StoreNavigationController();
    v29 = v10;
    v16 = v15;
    v17 = objc_allocWithZone(v15);
    v30 = a4;
    v18 = v17;
    *&v17[OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph] = a3;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32.receiver = v18;
    v32.super_class = v16;

    v20 = objc_msgSendSuper2(&v32, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v20 setDelegate:v20];
    sub_100005744(0, &qword_10097CD40);
    swift_allocObject();
    v28 = v6;
    Strong = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectWeakInit();

    v10 = v29;
    v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100039F8C(v14, v22);

    sub_10002849C(&qword_100973210);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1007B0B70;
    *(v23 + 32) = v14;
    sub_100005744(0, &qword_1009711C0);
    v24 = v14;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v20 setViewControllers:isa];

    v6 = v28;
    v26 = swift_unknownObjectUnownedLoadStrong();
    [v26 presentViewController:v20 animated:0 completion:0];

    v14 = v20;
  }

  else
  {
    v26 = swift_unknownObjectUnownedLoadStrong();
    [v26 presentViewController:v14 animated:0 completion:0];
  }

  (*(v11 + 8))(v13, v10);
  (*(v7 + 104))(v9, enum case for ActionOutcome.performed(_:), v6);
  Promise.resolve(_:)();
  return (*(v7 + 8))(v9, v6);
}

void sub_100331DD8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentedViewController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_100331EF4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100980A50);
  sub_1000056A8(v4, qword_100980A50);
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1640);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

char *sub_1003320C8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore39InAppPurchaseShowcaseCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC8AppStore39InAppPurchaseShowcaseCollectionViewCell_lockupView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for InAppPurchaseShowcaseLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell();
  v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v14 = [v12 contentView];
  [v14 addSubview:*&v12[OBJC_IVAR____TtC8AppStore39InAppPurchaseShowcaseCollectionViewCell_lockupView]];

  return v12;
}

id sub_100332408()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseShowcaseCollectionViewCell()
{
  result = qword_100980A90;
  if (!qword_100980A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003324E4()
{
  v3 = *(*(v0 + OBJC_IVAR____TtC8AppStore39InAppPurchaseShowcaseCollectionViewCell_lockupView) + OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_iconView);
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v5, v1);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v6, v2);
  type metadata accessor for ArtworkView();
  sub_10009A098();
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

void sub_1003325DC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for InAppPurchaseTheme();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  sub_10002C0AC(a1, v22);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for InAppPurchaseShowcase();
  if (swift_dynamicCast())
  {
    v12 = *&v2[OBJC_IVAR____TtC8AppStore39InAppPurchaseShowcaseCollectionViewCell_lockupView];
    v19 = v21;
    v13 = *(v12 + OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_iconView);
    v17 = InAppPurchaseShowcase.lockup.getter();
    v20 = [v2 backgroundColor];
    InAppPurchaseLockup.theme.getter();
    v18 = a2;
    v14 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
    swift_beginAccess();
    (*(v6 + 24))(&v13[v14], v11, v5);
    swift_endAccess();
    v15 = *(v6 + 16);
    v15(v8, &v13[v14], v5);
    sub_1002EBEE4(v8);
    v16 = *(v6 + 8);
    v16(v8, v5);
    v16(v11, v5);
    [v13 setBackgroundColor:v20];
    sub_1001BCDCC(v17, v13, v18);
    v15(v11, &v13[v14], v5);
    sub_1002EBEE4(v11);
    v16(v11, v5);
    [v13 setNeedsLayout];
  }
}

uint64_t sub_1003328A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v86 = a6;
  v72 = a4;
  v83 = a1;
  v84 = a3;
  v6 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v6 - 8);
  v82 = &v70 - v7;
  v8 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v8 - 8);
  v81 = &v70 - v9;
  v10 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v10 - 8);
  v80 = &v70 - v11;
  v12 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v12 - 8);
  v79 = &v70 - v13;
  v14 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v14 - 8);
  v78 = &v70 - v15;
  v16 = sub_10002849C(&unk_100970E10);
  __chkstk_darwin(v16 - 8);
  v71 = &v70 - v17;
  v18 = type metadata accessor for ComponentLayoutOptions();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FontSource();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for Separator.Position();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Separator();
  v73 = *(v75 - 8);
  *&v30 = __chkstk_darwin(v75).n128_u64[0];
  v32 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = [v86 traitCollection];
  (*(v27 + 104))(v29, enum case for Separator.Position.bottom(_:), v26);
  *v25 = UIFontTextStyleBody;
  (*(v23 + 104))(v25, enum case for FontSource.textStyle(_:), v22);
  v89 = type metadata accessor for StaticDimension();
  v90 = &protocol witness table for StaticDimension;
  sub_1000056E0(v88);
  v87[3] = v22;
  v87[4] = &protocol witness table for FontSource;
  v33 = sub_1000056E0(v87);
  (*(v23 + 16))(v33, v25, v22);
  v34 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v23 + 8))(v25, v22);
  v86 = v32;
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_1003335E0(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  LOBYTE(v27) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v35 = *(v19 + 8);
  v74 = v18;
  v76 = v19 + 8;
  v35(v21, v18);
  if (v27)
  {
    v36 = v73;
    v37 = v71;
    v38 = v75;
    (*(v73 + 56))(v71, 1, 1, v75);
    v39 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separator;
    v40 = v77;
    swift_beginAccess();
    sub_10005A354(v37, &v40[v39]);
    swift_endAccess();
    sub_1002B0944();
    sub_10002B894(v37, &unk_100970E10);
    static ComponentLayoutOptions.fixedHeightContainer.getter();
    v41 = v74;
    v42 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v35(v21, v41);
    v43 = [v40 contentView];
    v44 = v43;
    v45 = v40;
    v46 = v38;
    if (v42)
    {
      [v43 layoutMargins];
      [v44 setLayoutMargins:?];
    }

    else
    {
      Separator.verticalOutset.getter();
      sub_10002A400(v88, v89);
      AnyDimension.value(with:)();
      [v44 layoutMargins];
      [v44 setLayoutMargins:?];

      sub_100007000(v88);
    }
  }

  else
  {
    v47 = v73;
    v48 = v71;
    v49 = v75;
    (*(v73 + 16))(v71, v86, v75);
    (*(v47 + 56))(v48, 0, 1, v49);
    v50 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separator;
    v51 = v77;
    swift_beginAccess();
    sub_10005A354(v48, &v51[v50]);
    swift_endAccess();
    sub_1002B0944();
    sub_10002B894(v48, &unk_100970E10);
    v52 = [v51 contentView];
    [v52 layoutMargins];
    [v52 setLayoutMargins:?];

    static ComponentLayoutOptions.hasBackground.getter();
    v53 = v74;
    v54 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v35(v21, v53);
    v55 = v51[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout];
    v51[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = v54 & 1;
    v45 = v51;
    v46 = v49;
    v36 = v47;
    if ((v54 & 1) != v55)
    {
      v56 = *&v45[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separatorView];
      if (v56)
      {
        v57 = 1.0;
        if (v54)
        {
          v57 = 0.0;
        }

        [v56 setAlpha:v57];
      }
    }
  }

  v58 = *&v45[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView];
  v59 = sub_10002849C(&unk_100973240);
  v60 = v78;
  (*(*(v59 - 8) + 56))(v78, 1, 1, v59);
  v61 = type metadata accessor for OfferStyle();
  v62 = v79;
  (*(*(v61 - 8) + 56))(v79, 1, 1, v61);
  v63 = type metadata accessor for OfferEnvironment();
  v64 = v80;
  (*(*(v63 - 8) + 56))(v80, 1, 1, v63);
  v65 = sub_10002849C(&unk_1009701A0);
  v66 = v81;
  (*(*(v65 - 8) + 56))(v81, 1, 1, v65);
  v67 = type metadata accessor for OfferTint();
  v68 = v82;
  (*(*(v67 - 8) + 56))(v82, 1, 1, v67);
  sub_1004F3190(v83, v58, v60, v84, 0, 0, v62, v64, v68, v66);
  sub_10002B894(v68, &unk_100973AD0);
  v58[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_10070AB34();
  [v58 setNeedsLayout];
  sub_10002B894(v66, &unk_100970150);
  sub_10002B894(v64, &unk_100970160);
  sub_10002B894(v62, &qword_100973AE0);
  sub_10002B894(v60, &unk_100973230);
  [v45 setNeedsLayout];

  return (*(v36 + 8))(v86, v46);
}

uint64_t sub_10033347C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SmallLockupLayout.Metrics();
  sub_1000056A8(v2, qword_1009D3798);
  SmallLockupLayout.Metrics.artworkSize.getter();
  ComponentPrefetchSizing.init(size:contentMode:)();
  v3 = type metadata accessor for ComponentPrefetchSizing();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1003335E0(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100333628(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v36 = a4;
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FontSource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Separator.Position();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Separator();
  v34 = *(v15 - 8);
  v35 = v15;
  __chkstk_darwin(v15);
  v33 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ComponentLayoutOptions();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_1003335E0(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  v21 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v18 + 8))(v20, v17);
  (*(v12 + 104))(v14, enum case for Separator.Position.bottom(_:), v11);
  *v10 = UIFontTextStyleBody;
  (*(v8 + 104))(v10, enum case for FontSource.textStyle(_:), v7);
  v39 = type metadata accessor for StaticDimension();
  v40 = &protocol witness table for StaticDimension;
  sub_1000056E0(v38);
  v37[3] = v7;
  v37[4] = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v37);
  (*(v8 + 16))(v22, v10, v7);
  v23 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v8 + 8))(v10, v7);
  if (v21)
  {
    v24 = v33;
    Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
    Separator.verticalOutset.getter();
    (*(v34 + 8))(v24, v35);
    sub_10002A400(v38, v39);
    v25 = v30;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    v26 = v36;
    AnyDimension.value(in:rounded:)();
    (*(v31 + 8))(v25, v32);
    sub_100007000(v38);
  }

  else
  {
    v27 = v33;
    Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
    v26 = v36;
    Separator.height(in:)();
    (*(v34 + 8))(v27, v35);
  }

  swift_getObjectType();
  sub_1002B1794(v26);
  return a1;
}

uint64_t sub_100333BD4(uint64_t a1, uint64_t a2, void *a3)
{
  v23[1] = a1;
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Separator.Position();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Separator();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for Separator.Position.bottom(_:), v8, v14);
  *v7 = UIFontTextStyleBody;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v25[3] = type metadata accessor for StaticDimension();
  v25[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v25);
  v24[3] = v4;
  v24[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v24);
  (*(v5 + 16))(v17, v7, v4);
  v18 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v5 + 8))(v7, v4);
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  swift_getObjectType();
  Separator.height(in:)();
  (*(v13 + 8))(v16, v12);
  sub_1002B1794(a3);
  v19 = objc_opt_self();
  PageTraitEnvironment.pageColumnWidth.getter();
  v20 = [v19 absoluteDimension:?];
  v21 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v21;
}

uint64_t sub_100333F20()
{
  v1 = v0;
  v2 = type metadata accessor for DisjointStack();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  DisjointStack.init(with:)();
  DisjointStack.insert(_:at:with:)();
  sub_10002C0AC(v1 + 88, v7);
  v8[3] = type metadata accessor for Margins();
  v8[4] = &protocol witness table for Margins;
  sub_1000056E0(v8);
  Margins.init(top:left:bottom:right:child:)();
  DisjointStack.insert(_:at:with:)();
  sub_100007000(v8);
  dispatch thunk of Placeable.place(at:with:)();
  return (*(v3 + 8))(v5, v2);
}

void sub_1003340F4(char a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView);
  if (v4)
  {
    v5 = v4;
    dispatch thunk of RiverView.isAnimating.setter();
  }

  v6 = *(v2 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v6)
  {
    v7 = v6[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating];
    v6[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] = a1 & 1;
    if (v7 != (a1 & 1))
    {
      v8 = v6;
      sub_1004A3758();
    }
  }
}

char *sub_1003341B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_todayCard] = 0;
  v11 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for HeaderView()) init];
  v12 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer;
  type metadata accessor for TodayListCardLockupContainer();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView] = 0;
  v13 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_cardStyle;
  v14 = type metadata accessor for TodayCard.Style();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_isMediaDark] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton] = 0;
  v43[0] = sub_1000DB5A0;
  v43[1] = 0;
  v43[2] = sub_1005AB29C;
  v43[3] = 0;
  v43[4] = sub_1005AB458;
  v43[5] = 0;
  v43[6] = sub_1005AB484;
  v43[7] = 0;
  v43[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v43[9] = 0;
  v43[10] = sub_1005AB2C8;
  v43[11] = 0;
  v44 = 0x4000000000000000uLL;
  *v45 = 0;
  *&v45[8] = 0x4018000000000000;
  *&v45[16] = 0;
  v45[24] = 1;
  v15 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
  *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView] = sub_100550DDC(v43, &v44);
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 layer];
  [v17 setAllowsGroupBlending:0];

  v18 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer;
  v19 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  v20 = v16[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded];
  v21 = *&v16[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer];

  v22 = v21[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded];
  v21[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded] = v20;
  if (v20 != v22)
  {
    [v21 setNeedsLayout];
  }

  v23 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView;
  if (*(*(*&v16[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) == 1)
  {
    if (v16[v19])
    {
      v24 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v24 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v25 = v16[*v24] == 4;
  }

  else
  {
    v25 = 0;
  }

  [*&v16[v18] setHidden:v25];
  v26 = [*&v16[v18] layer];
  [v26 setZPosition:0.0];

  v27 = v16;
  v28 = [v27 contentView];
  [v28 addSubview:*&v16[v18]];

  v29 = [v27 backgroundView];
  if (v29)
  {
    v30 = v29;
    sub_100005744(0, &qword_100970180);
    v31 = static UIColor.todayCardDefaultBackground.getter();
    [v30 setBackgroundColor:v31];
  }

  sub_100334720();
  v32 = [v27 contentView];
  [v32 addSubview:*&v16[v23]];

  v33 = [v27 contentView];
  v34 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView;
  [v33 addSubview:*&v27[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView]];

  v35 = *&v27[v34];
  sub_10033494C();
  v36 = &v35[qword_10098B7B0];
  *(v36 + 25) = *&v45[9];
  v37 = *v45;
  *v36 = v44;
  *(v36 + 1) = v37;
  [v35 setNeedsLayout];

  v38 = [v27 contentView];
  [v38 setClipsToBounds:1];

  sub_100334A10();
  sub_10002849C(&qword_10097B110);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007B10D0;
  *(v39 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v39 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v41[3] = ObjectType;
  v41[0] = v27;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v41);
  return v27;
}

uint64_t sub_100334720()
{
  v1 = type metadata accessor for CornerStyle();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v7 = 0;
  }

  else
  {
    v8 = v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory];
    if (*(*(*&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) == 1 && v8 == 4)
    {
      v7 = -1;
    }

    else if (v8 == 6)
    {
      v10 = [v0 traitCollection];
      v11 = UITraitCollection.prefersRightToLeftLayouts.getter();

      if (v11)
      {
        v7 = 10;
      }

      else
      {
        v7 = 5;
      }

      v6 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView;
    }

    else
    {
      v7 = 3;
    }
  }

  v12 = *&v0[v6];
  (*(v2 + 104))(v5, enum case for CornerStyle.continuous(_:), v1, v3);
  sub_10070C5EC(v5, 20.0);
  if ((v7 & 0xC) != 0)
  {
    [v12 _setContinuousCornerRadius:20.0];
  }

  v13 = [v12 layer];
  [v13 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_10033494C()
{
  if (*(*(*&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) == 1)
  {
    if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (v0[*v1] == 6)
    {
      v2 = 1;
    }

    else
    {
      v3 = [v0 traitCollection];
      v4 = UITraitCollection.prefersAccessibilityLayouts.getter();

      v2 = v4 ^ 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_100334A10()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_1009752C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for TodayCard.Style();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = *&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  v15 = sub_10033494C();
  v28 = v14;
  [v14 setHidden:(v15 & 1) == 0];
  v16 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_100031660(&v1[v16], v4, &qword_1009752C8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002B894(v4, &qword_1009752C8);
  }

  else
  {
    (*(v6 + 32))(v13, v4, v5);
    if ((sub_10033494C() & 1) != 0 && v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_isMediaDark] == 1)
    {
      (*(v6 + 104))(v10, enum case for TodayCard.Style.dark(_:), v5);
    }

    else
    {
      (*(v6 + 16))(v10, v13, v5);
    }

    v17 = v27;
    v18 = sub_10033494C();
    sub_100550798(v10, v18 & 1);
    if ((sub_10033494C() & 1) != 0 && (v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_isMediaDark] & 1) != 0 || (*(*&v28[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView] + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) & 1) == 0 && (!v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] ? (v19 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) : (v19 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory), v1[*v19] == 6))
    {
      (*(v6 + 104))(v17, enum case for TodayCard.Style.dark(_:), v5);
    }

    else
    {
      (*(v6 + 16))(v17, v13, v5);
    }

    v20 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
    if (v20)
    {
      v21 = v20;
      if (sub_10033494C())
      {
        v22 = 1;
      }

      else if (*(*&v28[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView] + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia))
      {
        v22 = 0;
      }

      else
      {
        if (v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
        {
          v23 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
        }

        else
        {
          v23 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
        }

        v22 = v1[*v23] == 6;
      }

      sub_100550798(v17, v22);
    }

    v24 = *(v6 + 8);
    v24(v17, v5);
    v24(v10, v5);
    v24(v13, v5);
  }

  sub_100334720();
  return [v1 setNeedsLayout];
}

__n128 sub_100334E90@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32);
  result = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets);
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

id sub_100334EB4(id result)
{
  v2 = &v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  v3 = *&v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 16];
  v5 = v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32];
  v6 = *(result + 1);
  *v2 = *result;
  *(v2 + 1) = v6;
  v7 = *(result + 32);
  v2[32] = v7;
  if (v7)
  {
    if (v5)
    {
      return result;
    }

    return [v1 setNeedsLayout];
  }

  if (v5)
  {
    return [v1 setNeedsLayout];
  }

  v4 = vceqq_f64(*(result + 1), v4);
  *&v3.f64[0] = vmovn_s32(vuzp1q_s32(vceqq_f64(*result, v3), v4));
  LOWORD(v3.f64[0]) = vminv_u16(*&v3.f64[0]);
  if ((LOBYTE(v3.f64[0]) & 1) == 0)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_100334F20()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of RiverView.isAnimating.setter();
  }

  v3 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isMotionEnabled);
    v5 = v3[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating];
    v3[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] = v4;
    if (v4 != v5)
    {
      v6 = v3;
      sub_1004A3758();
    }
  }
}

void sub_100335008(uint64_t a1)
{
  v3 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v6, &qword_10097DBD0);
  swift_endAccess();
  v7 = *(*(v1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  sub_100031660(v1 + v6, v5, &qword_10097DBD0);
  v8 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  v9 = v7;
  sub_1000315F8(v5, v7 + v8, &qword_10097DBD0);
  swift_endAccess();
}

void sub_100335144()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView] + qword_10098B800) = v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning];
  sub_100551D80();
  v3 = *&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
  if (v3)
  {
    *(v3 + qword_10098B800) = v1[v2];
    sub_100551D80();
  }

  v4 = *(*&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  v5 = v1[v2];
  v4[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isTransitioning] = v5;
  *(*&v4[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView] + OBJC_IVAR____TtC8AppStore18RevealingImageView_isTransitioning) = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *((swift_isaMask & *Strong) + 0xC8);
    v8 = Strong;
    v9 = v4;
    v7(v5);
  }

  v10 = [v1 contentView];
  [v10 setClipsToBounds:(v1[v2] & 1) == 0];
}

uint64_t sub_1003352E0()
{
  if (*(*(*&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) != 1)
  {
    return 1;
  }

  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v1] == 6)
  {
    return 0;
  }

  v3 = [v0 traitCollection];
  v4 = UITraitCollection.prefersAccessibilityLayouts.getter();

  return v4 & 1;
}

void sub_100335434(char a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setDragging:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  *(v4 + OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isDragging) = objc_msgSendSuper2(&v8, "isDragging");
  v5 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v5)
  {
    v7.receiver = v1;
    v7.super_class = ObjectType;
    v6 = v5;
    v6[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isDragging] = objc_msgSendSuper2(&v7, "isDragging");
  }
}

uint64_t sub_100335590(double a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "_setContinuousCornerRadius:", a1);
  v8 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "_continuousCornerRadius");
  v10 = v9;
  (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
  sub_10070C5EC(v7, v10);
  v11 = [v8 layer];
  [v11 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

  return (*(v5 + 8))(v7, v4);
}

void *sub_100335728()
{
  result = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton);
  if (result)
  {
    [result alpha];
    return (v2 != 0.0);
  }

  return result;
}

void sub_100335760(char a1)
{
  if (a1)
  {

    sub_1003357E0();
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton);
    *(v1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton) = 0;
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];
    }
  }
}

void sub_1003357E0()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v7 = sub_1001C66CC(14.0);
  [v7 addTarget:v0 action:"handleMuteButtonTapped" forControlEvents:64];
  v3 = [v0 contentView];
  [v3 addSubview:v7];

  v4 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton] = v7;
  if (v4)
  {
    v5 = v7;
    [v4 removeFromSuperview];
  }

  else
  {
    v6 = v7;
  }

  [v1 setNeedsLayout];
}

uint64_t sub_1003358E8(void *a1)
{
  if (a1)
  {
    v3 = *(*(v1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
    v4 = *&v3[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView];
    v5 = v3;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      sub_100005744(0, &qword_100972EB0);
      v8 = v4;
      v9 = static NSObject.== infix(_:_:)();

      v5 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void (*sub_1003359F8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100335A78;
}

void sub_100335A78(uint64_t a1, char a2)
{
  v3 = *a1;
  v8 = *(*(a1 + 8) + *(a1 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3;
    v6 = v8;
    sub_1006666C8(Strong);

    Strong = v5;
  }

  else
  {
    v7 = v8;
    sub_1006666C8(Strong);
  }
}

uint64_t sub_100335B48()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for VerticalStack();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DisjointStack();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for PageGrid();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "layoutSubviews", v13);
  v16 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_100031660(&v1[v16], v10, &qword_10097DBD0);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v10, v11);
    if (v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v17 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v17 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v18 = v1[*v17];
    switch(v18)
    {
      case 7:
        sub_1003370EC(v15, v63);
        v34 = [v1 contentView];
        [v34 bounds];

        v35 = [v1 traitCollection];
        v36 = v58;
        sub_10040F3DC(v35);
        v37 = v60;
        dispatch thunk of Placeable.place(at:with:)();

        (*(v59 + 8))(v36, v37);
        sub_10034360C(v63);
        (*(v12 + 8))(v15, v11);
        goto LABEL_17;
      case 6:
        sub_100336C58(v15, v62);
        if (v62[13])
        {
          memcpy(v63, v62, sizeof(v63));
          v24 = [v1 contentView];
          [v24 bounds];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;

          v33 = [v1 traitCollection];
          sub_100461828(v33, v26, v28, v30, v32);

          sub_100343660(v63);
LABEL_16:
          (*(v12 + 8))(v15, v11);
          goto LABEL_17;
        }

        sub_10002B894(v62, &qword_100980BE0);
        sub_1003370EC(v15, v63);
        v42 = [v1 contentView];
        [v42 bounds];

        v43 = [v1 traitCollection];
        v44 = v58;
        sub_10040F3DC(v43);
        v45 = v60;
        dispatch thunk of Placeable.place(at:with:)();

        (*(v59 + 8))(v44, v45);
        break;
      case 4:
        sub_10033658C(v15, v63);
        v19 = [v1 contentView];
        [v19 bounds];

        v20 = v15;
        v21 = v11;
        v22 = [v1 traitCollection];
        DisjointStack.init(with:)();
        DisjointStack.insert(_:at:with:)();
        sub_10002C0AC(&v63[11], &v61);
        v62[3] = type metadata accessor for Margins();
        v62[4] = &protocol witness table for Margins;
        sub_1000056E0(v62);
        Margins.init(top:left:bottom:right:child:)();
        DisjointStack.insert(_:at:with:)();
        sub_100007000(v62);
        v23 = v57;
        dispatch thunk of Placeable.place(at:with:)();

        (*(v56 + 8))(v7, v23);
        sub_1003436B4(v63);
        (*(v12 + 8))(v20, v21);
        goto LABEL_17;
      default:
        sub_1003370EC(v15, v63);
        v38 = [v1 contentView];
        [v38 bounds];

        v39 = [v1 traitCollection];
        v40 = v58;
        sub_10040F3DC(v39);
        v41 = v60;
        dispatch thunk of Placeable.place(at:with:)();

        (*(v59 + 8))(v40, v41);
        break;
    }

    sub_10034360C(v63);
    goto LABEL_16;
  }

  sub_10002B894(v10, &qword_10097DBD0);
LABEL_17:
  if (v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4 && v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] == 1 && v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory] == 5)
  {
    v46 = objc_opt_self();
    v47 = swift_allocObject();
    *(v47 + 16) = v1;
    v48 = swift_allocObject();
    v49 = sub_1003435F0;
    *(v48 + 16) = sub_1003435F0;
    *(v48 + 24) = v47;
    v63[4] = sub_10006F094;
    v63[5] = v48;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 1107296256;
    v63[2] = sub_1000489A8;
    v63[3] = &unk_1008BEAB0;
    v50 = _Block_copy(v63);
    v51 = v1;

    [v46 performWithoutAnimation:v50];
    _Block_release(v50);
    LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

    if ((v46 & 1) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  v52 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v52)
  {
    [v52 layoutIfNeeded];
  }

  [*&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer] layoutIfNeeded];
  v49 = 0;
LABEL_25:
  v53 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton];
  if (v53)
  {
    v54 = v53;
    [v1 bounds];
    [v54 setFrame:{CGRectGetMaxX(v65) + -32.0 + -12.0, 12.0, 32.0, 32.0}];
  }

  return sub_10001F63C(v49);
}

id sub_10033658C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = &v57[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v59 = &v57[-v10];
  v11 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v11 - 8);
  v13 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v57[-v15];
  __chkstk_darwin(v17);
  v19 = &v57[-v18];
  __chkstk_darwin(v20);
  v22 = &v57[-v21];
  v23 = a1;
  if (v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
  {
    PageGrid.safeAreaInsets.getter();
    v25 = v24;
  }

  else
  {
    v25 = *&v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  }

  v26 = v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded];
  v27 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v27 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v58 = v3[*v27];
  v62 = v3;
  v63 = [v3 traitCollection];
  v61 = v7;
  v28 = *(v7 + 16);
  v29 = (v7 + 56);
  v30 = (v7 + 48);
  if (v26 == 1)
  {
    v28(v22, v23, v6);
    (*v29)(v22, 0, 1, v6);
    sub_100031660(v22, v19, &qword_10097DBD0);
    if ((*v30)(v19, 1, v6) == 1)
    {
      sub_10002B894(v19, &qword_10097DBD0);
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v34 = v63;
    }

    else
    {
      v36 = v61;
      v37 = v59;
      (*(v61 + 32))(v59, v19, v6);
      PageGrid.horizontalDirectionalMargins.getter();
      PageGrid.horizontalDirectionalMargins.getter();
      v34 = v63;
      [v63 layoutDirection];
      NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
      left = v38;
      bottom = v39;
      right = v40;
      (*(v36 + 8))(v37, v6);
    }

    v35 = v62;
    sub_10002B894(v22, &qword_10097DBD0);
    if ((UITraitCollection.isSizeClassCompact.getter() & 1) == 0)
    {
      if (qword_10096E6E0 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for StaticDimension();
      sub_1000056A8(v41, qword_1009D24C0);
      type metadata accessor for TraitEnvironmentPlaceholder();
      sub_10002849C(&qword_100973210);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1007B0B70;
      *(v42 + 32) = v34;
      v43 = v34;
      v44 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
      dispatch thunk of AnyDimension.rawValue(in:)();
      v25 = v45;
    }

    v46 = v25 + 20.0;
  }

  else
  {
    v28(v16, v23, v6);
    (*v29)(v16, 0, 1, v6);
    sub_100031660(v16, v13, &qword_10097DBD0);
    if ((*v30)(v13, 1, v6) == 1)
    {
      sub_10002B894(v13, &qword_10097DBD0);
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;

      v35 = v62;
    }

    else
    {
      v48 = v60;
      v47 = v61;
      (*(v61 + 32))(v60, v13, v6);
      v35 = v62;
      if (v58 != 4)
      {
        PageGrid.horizontalDirectionalMargins.getter();
        PageGrid.horizontalDirectionalMargins.getter();
      }

      v49 = v63;
      [v63 layoutDirection];
      NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
      left = v50;
      right = v51;

      (*(v47 + 8))(v48, v6);
    }

    sub_10002B894(v16, &qword_10097DBD0);
    bottom = 20.0;
    v46 = 20.0;
  }

  v52 = sub_10033494C();

  v53 = *&v35[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  *(a2 + 72) = type metadata accessor for HeaderView();
  *(a2 + 80) = sub_100343708(&qword_100980BE8, type metadata accessor for HeaderView);
  *(a2 + 48) = v53;
  v63 = *&v35[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView];
  *(a2 + 112) = type metadata accessor for TodayCardLabelsView();
  *(a2 + 120) = &protocol witness table for CustomLayoutView;
  *(a2 + 88) = v63;
  *a2 = v52 & 1;
  *(a2 + 8) = v46;
  *(a2 + 16) = left;
  *(a2 + 24) = bottom;
  *(a2 + 32) = right;
  *(a2 + 40) = 0x4030000000000000;
  v54 = v53;
  v55 = v63;

  return v55;
}

uint64_t sub_100336C58@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v4 && (v5 = *&v2[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView]) != 0 && *&v2[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_todayCard])
  {
    v6 = result;
    if (v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
    {

      v7 = v4;
      v8 = v5;
      PageGrid.safeAreaInsets.getter();
      v10 = v9;
    }

    else
    {
      v10 = *&v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];

      v11 = v4;
      v12 = v5;
    }

    v13 = [v3 traitCollection];
    v44 = sub_100340000(v6, v13, v10);
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [v3 traitCollection];
    v21 = sub_100343828(v6, v20);
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = sub_10033494C();
    v29 = v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded];
    v43 = v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning];

    if (v29)
    {
      v30 = 272.0;
    }

    else
    {
      v30 = 177.0;
    }

    v68 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
    type metadata accessor for HeaderView();
    Measurable.placeable.getter();
    v66 = v5;
    v31 = type metadata accessor for TodayCardLabelsView();
    Measurable.placeable.getter();
    v32 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView];
    v63 = v31;
    v64 = &protocol witness table for CustomLayoutView;
    *&v62 = v32;
    v60 = type metadata accessor for TodayListCardLockupContainer();
    v61 = &protocol witness table for UIView;
    v33 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer];
    v58 = &protocol witness table for UIView;
    *&v59 = v4;
    v57 = v60;
    *&v56 = v33;
    v34 = OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v35 = *(*&v33[v34] + 16);
    if (*&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView])
    {
      *&v50 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView];
      sub_100005744(0, &qword_100972EB0);
      v36 = v32;
      v37 = v33;
      Measurable.placeable.getter();
    }

    else
    {
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      v38 = v32;
      v39 = v33;
    }

    v40 = v28 & 1;
    if (*&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView])
    {
      *&v47 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView];
      sub_10002849C(&qword_10097D5D0);
      Measurable.placeable.getter();
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
    }

    v41 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView];
    if (v41)
    {
      v46 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView];
      type metadata accessor for RiverTodayCardBackgroundView();
      v42 = v41;
      Measurable.placeable.getter();
    }

    else
    {

      v49 = 0;
      v47 = 0u;
      v48 = 0u;
    }

    *a2 = v29;
    *(a2 + 1) = v43;
    *(a2 + 2) = v40;
    *(a2 + 3) = v46;
    *(a2 + 7) = BYTE4(v46);
    *(a2 + 8) = v44;
    *(a2 + 16) = v15;
    *(a2 + 24) = v17;
    *(a2 + 32) = v19;
    *(a2 + 40) = v21;
    *(a2 + 48) = v23;
    *(a2 + 56) = v25;
    *(a2 + 64) = v27;
    *(a2 + 72) = v30;
    sub_100005A38(&v67, a2 + 80);
    sub_100005A38(&v65, a2 + 120);
    sub_100005A38(&v62, a2 + 160);
    sub_100005A38(&v59, a2 + 200);
    result = sub_100005A38(&v56, a2 + 240);
    *(a2 + 280) = v35;
    *(a2 + 288) = v53;
    *(a2 + 304) = v54;
    *(a2 + 320) = v55;
    *(a2 + 328) = v50;
    *(a2 + 344) = v51;
    *(a2 + 360) = v52;
    *(a2 + 368) = v47;
    *(a2 + 384) = v48;
    *(a2 + 400) = v49;
  }

  else
  {
    *(a2 + 400) = 0;
    *(a2 + 368) = 0u;
    *(a2 + 384) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 352) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

id sub_1003370EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v65 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v64 = &v62[-v10];
  v11 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v11 - 8);
  v13 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v66 = &v62[-v15];
  __chkstk_darwin(v16);
  v18 = &v62[-v17];
  __chkstk_darwin(v19);
  v21 = &v62[-v20];
  v22 = a1;
  if (v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
  {
    PageGrid.safeAreaInsets.getter();
    v24 = v23;
  }

  else
  {
    v24 = *&v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  }

  v69 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  v25 = v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded];
  v26 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v26 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v63 = v3[*v26];
  v27 = [v3 traitCollection];
  v67 = v7;
  v68 = v27;
  v28 = *(v7 + 16);
  v29 = (v7 + 56);
  v30 = (v7 + 48);
  if (v25 == 1)
  {
    v28(v21, v22, v6);
    (*v29)(v21, 0, 1, v6);
    sub_100031660(v21, v18, &qword_10097DBD0);
    if ((*v30)(v18, 1, v6) == 1)
    {
      sub_10002B894(v18, &qword_10097DBD0);
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v34 = v68;
    }

    else
    {
      v36 = v67;
      v37 = v64;
      (*(v67 + 32))(v64, v18, v6);
      PageGrid.horizontalDirectionalMargins.getter();
      PageGrid.horizontalDirectionalMargins.getter();
      v34 = v68;
      [v68 layoutDirection];
      NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
      left = v38;
      bottom = v39;
      right = v40;
      (*(v36 + 8))(v37, v6);
    }

    sub_10002B894(v21, &qword_10097DBD0);
    if ((UITraitCollection.isSizeClassCompact.getter() & 1) == 0)
    {
      if (qword_10096E6E0 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for StaticDimension();
      sub_1000056A8(v41, qword_1009D24C0);
      type metadata accessor for TraitEnvironmentPlaceholder();
      sub_10002849C(&qword_100973210);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1007B0B70;
      *(v42 + 32) = v34;
      v43 = v34;
      v44 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
      dispatch thunk of AnyDimension.rawValue(in:)();
      v24 = v45;
    }

    v46 = v24 + 20.0;
  }

  else
  {
    v35 = v66;
    v28(v66, v22, v6);
    (*v29)(v35, 0, 1, v6);
    sub_100031660(v35, v13, &qword_10097DBD0);
    if ((*v30)(v13, 1, v6) == 1)
    {
      sub_10002B894(v13, &qword_10097DBD0);
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;
    }

    else
    {
      v47 = v67;
      v48 = v65;
      (*(v67 + 32))(v65, v13, v6);
      if (v63 != 4)
      {
        PageGrid.horizontalDirectionalMargins.getter();
        PageGrid.horizontalDirectionalMargins.getter();
      }

      v49 = v68;
      [v68 layoutDirection];
      NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
      left = v50;
      right = v51;

      (*(v47 + 8))(v48, v6);
    }

    sub_10002B894(v35, &qword_10097DBD0);
    bottom = 20.0;
    v46 = 20.0;
  }

  v52 = sub_10033494C();
  v53 = v3[v69];

  if (v53)
  {
    v54 = 272.0;
  }

  else
  {
    v54 = 177.0;
  }

  v55 = v52 & 1;
  v56 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  *(a2 + 88) = type metadata accessor for HeaderView();
  *(a2 + 96) = sub_100343708(&qword_100980BE8, type metadata accessor for HeaderView);
  *(a2 + 64) = v56;
  v57 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView];
  *(a2 + 128) = type metadata accessor for TodayCardLabelsView();
  *(a2 + 136) = &protocol witness table for CustomLayoutView;
  *(a2 + 104) = v57;
  v69 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer];
  *(a2 + 168) = type metadata accessor for TodayListCardLockupContainer();
  *(a2 + 176) = &protocol witness table for UIView;
  *(a2 + 144) = v69;
  *a2 = v53;
  *(a2 + 1) = v55;
  *(a2 + 8) = v46;
  *(a2 + 16) = left;
  *(a2 + 24) = bottom;
  *(a2 + 32) = right;
  *(a2 + 40) = 0x4030000000000000;
  *(a2 + 48) = v54;
  *(a2 + 56) = 0x405B800000000000;
  v58 = v56;
  v59 = v57;
  v60 = v69;

  return v60;
}

void sub_100337864()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&qword_1009752C8);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v21[-v5];
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "prepareForReuse", v4);
  v7 = *(*&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  sub_10070CE5C();

  sub_10036AAA4();
  v8 = type metadata accessor for TodayCard.Style();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_1000315F8(v6, &v1[v9], &qword_1009752C8);
  swift_endAccess();
  v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_isMediaDark] = 0;
  v10 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton] = 0;
  if (v10)
  {
    [v10 removeFromSuperview];
  }

  sub_100337AC0();
  v11 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView;
  v12 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView];
  if (v12)
  {
    v13 = v12;
    v14 = dispatch thunk of RiverView.dataSource.getter();

    swift_beginAccess();
    *(v14 + 32) = _swiftEmptyArrayStorage;

    v15 = *&v1[v11];
    if (v15)
    {
      v16 = v15;
      dispatch thunk of RiverView.flushRows()();
    }
  }

  v17 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView];
  if (v17)
  {
    v18 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors;
    swift_beginAccess();
    v19 = *&v17[v18];
    *&v17[v18] = _swiftEmptyArrayStorage;
    v20 = v17;
    sub_1004A2DB8(v19);
  }
}

void sub_100337AC0()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (*(v0 + *v1) == 6)
  {
    if (*(*(*(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) != 1)
    {
      return;
    }

    v2 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView;
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView);
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *(v0 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v0 + v2) = 0;

    v17 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView;
    v18 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView);
    if (v18)
    {
      [v18 removeFromSuperview];
      v16 = *(v0 + v17);
    }

    else
    {
      v16 = 0;
    }

    *(v0 + v17) = 0;
  }

  else
  {
    v5 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer;
    v6 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v0 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v0 + v5) = 0;

    v8 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView;
    v9 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView);
    if (v9)
    {
      [v9 removeFromSuperview];
      v10 = *(v0 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v0 + v8) = 0;

    v11 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView;
    v12 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView);
    if (v12)
    {
      [v12 removeFromSuperview];
      v13 = *(v0 + v11);
    }

    else
    {
      v13 = 0;
    }

    *(v0 + v11) = 0;

    v14 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView;
    v15 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView);
    if (v15)
    {
      [v15 removeFromSuperview];
      v16 = *(v0 + v14);
    }

    else
    {
      v16 = 0;
    }

    *(v0 + v14) = 0;
  }

  v19 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v19)
  {

    [v19 setHidden:1];
  }
}

id sub_100337CE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for CornerStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004EE4C4();
  v7 = *&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView];
  v8 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v9 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v9 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v10 = v0[*v9];
  v11 = sub_100287668;
  v12 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v13 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v14 = sub_1005AB608;
  v52 = v4;
  v53 = v3;
  v51 = ObjectType;
  if (v10 != 6)
  {
    if (v10 == 4)
    {
      v11 = sub_100287668;
      v12 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v14 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v13 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    }

    else
    {
      v11 = sub_1005AB2C8;
      v12 = sub_1005AB484;
      v13 = sub_1005AB458;
      v14 = sub_1005AB29C;
    }
  }

  v15 = &v7[qword_10098B7F0];
  *v15 = sub_1000DB5A0;
  v15[1] = 0;
  v15[2] = v14;
  v15[3] = 0;
  v15[4] = v13;
  v15[5] = 0;
  v15[6] = v12;
  v15[7] = 0;
  v15[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v15[9] = 0;
  v15[10] = v11;
  v15[11] = 0;

  sub_100551950();
  sub_10033494C();
  v16 = &v7[qword_10098B7B0];
  *v16 = 0x4000000000000000;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0x4018000000000000;
  *(v16 + 4) = 0;
  v16[40] = 1;
  [v7 setNeedsLayout];
  v17 = *&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  v18 = *&v17[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView];
  v19 = v0[v8];
  v20 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded;
  v18[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded] = v19;
  v21 = *&v18[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView];
  v21[OBJC_IVAR____TtC8AppStore18RevealingImageView_isExpanded] = v19;
  v22 = v18;
  [v21 setNeedsLayout];
  *(*&v22[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView] + OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded) = v18[v20];
  sub_100665B04();

  v23 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer];
  v24 = v1[v8];
  v25 = v23[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded];
  v23[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded] = v24;
  if (v24 != v25)
  {
    [v23 setNeedsLayout];
  }

  v26 = 20.0;
  if (v1[v8])
  {
    v26 = 0.0;
  }

  v27 = v51;
  v55.receiver = v1;
  v55.super_class = v51;
  objc_msgSendSuper2(&v55, "_setContinuousCornerRadius:", v26);
  v54.receiver = v1;
  v54.super_class = v27;
  objc_msgSendSuper2(&v54, "_continuousCornerRadius");
  v29 = v28;
  v31 = v52;
  v30 = v53;
  (*(v52 + 104))(v6, enum case for CornerStyle.continuous(_:), v53);
  sub_10070C5EC(v6, v29);
  v32 = [v17 layer];
  [v32 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

  (*(v31 + 8))(v6, v30);
  v33 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v33)
  {
    v34 = v1[v8];
    v35 = v33[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded];
    v33[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded] = v34;
    if (v34 != v35)
    {
      [v33 setNeedsLayout];
    }
  }

  v36 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView;
  v37 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
  if (v37)
  {
    v38 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    if (!v1[v8])
    {
      v38 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v39 = v1[*v38];
    v40 = sub_100287668;
    v41 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v43 = sub_1005AB608;
    if (v39 != 6)
    {
      if (v39 == 4)
      {
        v40 = sub_100287668;
        v41 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v43 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      }

      else
      {
        v40 = sub_1005AB2C8;
        v41 = sub_1005AB484;
        v42 = sub_1005AB458;
        v43 = sub_1005AB29C;
      }
    }

    v44 = &v37[qword_10098B7F0];
    *v44 = sub_1000DB5A0;
    v44[1] = 0;
    v44[2] = v43;
    v44[3] = 0;
    v44[4] = v42;
    v44[5] = 0;
    v44[6] = v41;
    v44[7] = 0;
    v44[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v44[9] = 0;
    v44[10] = v40;
    v44[11] = 0;
    v45 = v37;

    sub_100551950();

    v46 = *&v1[v36];
    if (v46)
    {
      v47 = v46;
      sub_10033494C();
      v48 = &v47[qword_10098B7B0];
      *v48 = 0x4000000000000000;
      *(v48 + 1) = 0;
      *(v48 + 2) = 0;
      *(v48 + 3) = 0x4018000000000000;
      *(v48 + 4) = 0;
      v48[40] = 1;
      [v47 setNeedsLayout];
    }
  }

  sub_100338410();
  sub_1002149C0();
  return [v1 setNeedsLayout];
}

void sub_100338410()
{
  if ((*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning) & 1) == 0)
  {
    v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
    if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v2 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v2 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (*(v0 + *v2) == 6)
    {
      v3 = *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) ^ 1u;
    }

    else
    {
      v3 = 0;
    }

    [*(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView) setHidden:v3];
    v4 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView);
    if (v4)
    {
      if (*(v0 + v1))
      {
        v5 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v5 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v5) == 6)
      {
        v6 = *(v0 + v1);
      }

      else
      {
        v6 = 1;
      }

      [v4 setHidden:v6];
    }

    v7 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView);
    if (v7)
    {
      if (*(v0 + v1))
      {
        v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v8) == 6)
      {
        v9 = *(v0 + v1) | *(*(*(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia);
      }

      else
      {
        v9 = 1;
      }

      [v7 setHidden:v9 & 1];
    }

    v10 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView);
    if (v10)
    {
      if (*(v0 + v1))
      {
        v11 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v11 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v11) == 6)
      {
        v12 = *(v0 + v1) | *(*(*(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia);
      }

      else
      {
        v12 = 1;
      }

      [v10 setHidden:v12 & 1];
    }

    if (*(v0 + v1))
    {
      v13 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v13 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v14 = *(v0 + *v13);
    if (v14 == 6)
    {
      v15 = *(v0 + v1) ^ 1u;
    }

    else
    {
      v15 = (v14 == 4) & *(*(*(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia);
    }

    [*(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer) setHidden:v15];
    v16 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer);
    if (v16)
    {
      if (*(v0 + v1))
      {
        v17 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v17 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v17) == 6)
      {
        v18 = *(v0 + v1);
      }

      else
      {
        v18 = 1;
      }

      [v16 setHidden:v18];
    }

    v19 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView);
    v20 = (sub_10033494C() & 1) == 0;

    [v19 setHidden:v20];
  }
}

id sub_100338688(unsigned __int8 a1)
{
  v2 = v1;
  [v1 setNeedsLayout];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView];
  v5 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v2[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v6 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v6 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  *(v4 + qword_10098B7B8) = v2[*v6];
  sub_10055189C();
  v7 = *&v2[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
  if (v7)
  {
    if (v2[v5])
    {
      v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v7[qword_10098B7B8] = v2[*v8];
    v9 = v7;
    sub_10055189C();
  }

  v10 = *(*&v2[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
  if (v2[v5])
  {
    v11 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v11 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v10[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_sizeCategory] = v2[*v11];
  v12 = v10;
  sub_10070D304();

  if (v2[v5])
  {
    v13 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v13 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  sub_1003387E4(v2[*v13], a1);

  return [v2 setNeedsLayout];
}

void sub_1003387E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = a1;
  v4 = a2;
  v5 = type metadata accessor for RiverViewStyling();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v53[-1] - v10;
  if (v3 == 7)
  {
    if (v4 == 7)
    {
      return;
    }
  }

  else if (v4 != 7)
  {
    switch(v3)
    {
      case 6:
        if (v4 == 6)
        {
          return;
        }

        break;
      case 5:
        if (v4 == 5)
        {
          return;
        }

        break;
      case 4:
        if (v4 == 4)
        {
          return;
        }

        break;
      default:
        if ((v4 - 7) <= 0xFFFFFFFC && v3 == v4)
        {
          return;
        }

        break;
    }
  }

  if (v2[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] == 6)
  {
    static RiverViewStyling.defaultSpeed.getter();
    static RiverViewStyling.defaultRowOffsets.getter();
    RiverViewStyling.init(itemSize:interRowSpacing:interItemSpacing:speed:rowOffsets:reverseAlternatingRows:)();
    v12 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView;
    v13 = *&v2[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView];
    v52 = v6;
    if (v13)
    {
      [v13 setHidden:0];
    }

    else
    {
      (*(v6 + 16))(v8, v11, v5);
      v14 = objc_allocWithZone(type metadata accessor for RiverTodayCardBackgroundView());
      v15 = sub_1004A23B8(v8);
      [v15 setClipsToBounds:1];
      [v2 bounds];
      CGRectGetWidth(v57);
      [v2 bounds];
      CGRectGetHeight(v58);
      [v15 bounds];
      [v15 setBounds:?];
      [v15 _setContinuousCornerRadius:20.0];
      v16 = [v15 layer];

      v17 = [v2 traitCollection];
      v18 = UITraitCollection.prefersRightToLeftLayouts.getter();

      if (v18)
      {
        v19 = 10;
      }

      else
      {
        v19 = 5;
      }

      [v16 setMaskedCorners:{v19, v52}];

      v20 = *&v2[v12];
      *&v2[v12] = v15;
      v21 = v15;

      v22 = [v2 contentView];
      [v22 addSubview:v21];
    }

    v23 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView;
    if (!*&v2[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView])
    {
      v24 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView;
      if (!*&v2[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView])
      {
        v25 = [objc_allocWithZone(UIView) init];
        [v25 setClipsToBounds:1];
        v26 = *&v2[v23];
        *&v2[v23] = v25;
        v27 = v25;

        v28 = [v2 contentView];
        [v28 addSubview:v27];

        type metadata accessor for RiverCardDataSource();
        v29 = swift_allocObject();
        *(v29 + 32) = _swiftEmptyArrayStorage;
        *(v29 + 16) = xmmword_1007C4950;
        *(v29 + 40) = vdupq_n_s64(0x4058C00000000000uLL);
        (*(v52 + 16))(v8, v11, v5);
        v30 = objc_allocWithZone(sub_10002849C(&qword_10097D5D0));

        v31 = RiverView.init(dataSource:styling:)();
        [v31 setClipsToBounds:0];
        v32 = *&v2[v24];
        *&v2[v24] = v31;
        v33 = v31;

        [v27 addSubview:v33];
      }
    }

    v34 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer;
    if (!*&v2[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer])
    {
      type metadata accessor for TodayListCardLockupContainer();
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v36 = v35;
      v37 = v2[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded];
      v38 = v35[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded];
      v35[OBJC_IVAR____TtC8AppStore28TodayListCardLockupContainer_isExpanded] = v37;
      if (v37 != v38)
      {
        [v35 setNeedsLayout];
      }

      v39 = v36;
      v40 = [v39 layer];
      [v40 setZPosition:0.0];

      [v39 setClipsToBounds:1];
      v41 = *&v2[v34];
      *&v2[v34] = v39;
      v42 = v39;

      v43 = [v2 contentView];
      [v43 addSubview:v42];
    }

    v44 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView;
    if (!*&v2[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView])
    {
      v53[0] = sub_1000DB5A0;
      v53[1] = 0;
      v53[2] = sub_1005AB608;
      v53[3] = 0;
      v53[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v53[5] = 0;
      v53[6] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v53[7] = 0;
      v53[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v53[9] = 0;
      v53[10] = sub_100287668;
      v53[11] = 0;
      v54 = 0x4000000000000000uLL;
      *v55 = 0;
      *&v55[8] = 0x4018000000000000;
      *&v55[16] = 0;
      v55[24] = 1;
      v45 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
      v46 = sub_100550DDC(v53, &v54);
      sub_10033494C();
      v47 = &v46[qword_10098B7B0];
      *(v47 + 25) = *&v55[9];
      v48 = *v55;
      *v47 = v54;
      *(v47 + 1) = v48;
      [v46 setNeedsLayout];
      v46[qword_10098B7B8] = v3;
      sub_10055189C();
      v49 = *&v2[v44];
      *&v2[v44] = v46;
      v50 = v46;

      v51 = [v2 contentView];
      [v51 addSubview:v50];
    }

    [v2 setNeedsLayout];
    (*(v52 + 8))(v11, v5);
  }

  else
  {

    sub_100337AC0();
  }
}

void sub_100338F5C()
{
  v1 = v0;
  swift_beginAccess();
  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_10001F63C(v3);
  type metadata accessor for TodayListCardLockupContainer();
  sub_100343708(&qword_100980BD8, type metadata accessor for TodayListCardLockupContainer);
  NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v4)
  {
    v5 = v4;
    NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
  }
}

void sub_10033908C()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ImpressionsCalculator.removeAllElements()();
  }

  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_10001F63C(v3);
  type metadata accessor for TodayListCardLockupContainer();
  sub_100343708(&qword_100980BD8, type metadata accessor for TodayListCardLockupContainer);
  NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)();
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v4)
  {
    v5 = v4;
    NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)();
  }
}

void sub_1003391CC(unint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v151 = a4;
  v159 = a1;
  v145 = type metadata accessor for StringCharacteristics();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v152 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TodayCard.Style();
  v155 = *(v9 - 8);
  v156 = v9;
  __chkstk_darwin(v9);
  v153 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for EditorialDisplayOptions();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v157 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v148 = &v130 - v13;
  v14 = sub_10002849C(&qword_1009752C8);
  __chkstk_darwin(v14 - 8);
  v16 = &v130 - v15;
  v17 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v17 - 8);
  v19 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v130 - v21;
  v23 = type metadata accessor for PageGrid();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v143 = a3;
  v25(v22, a3, v23);
  (*(v24 + 56))(v22, 0, 1, v23);
  v26 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000315F8(v22, &v4[v26], &qword_10097DBD0);
  swift_endAccess();
  v27 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView;
  v154 = *&v4[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
  v28 = *&v154[OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView];
  sub_100031660(&v4[v26], v19, &qword_10097DBD0);
  v29 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  v30 = v28;
  sub_1000315F8(v19, v28 + v29, &qword_10097DBD0);
  swift_endAccess();

  v158 = a2;
  sub_1004EAB3C(a2);
  v31 = [v4 backgroundView];
  if (v31)
  {
    v32 = v31;
    v33 = TodayCard.backgroundColor.getter();
    if (!v33)
    {
      sub_100005744(0, &qword_100970180);
      v33 = static UIColor.todayCardDefaultBackground.getter();
    }

    v34 = v33;
    [v32 setBackgroundColor:v33];
  }

  *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_todayCard] = v159;

  v35 = TodayCard.media.getter();
  type metadata accessor for TodayCardMediaList();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {

    *(*&v154[v27] + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) = 0;
    sub_100338410();
    return;
  }

  v37 = v36;
  v141 = v35;
  TodayCard.style.getter();
  (*(v155 + 56))(v16, 0, 1, v156);
  v38 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_1000315F8(v16, &v5[v38], &qword_1009752C8);
  swift_endAccess();
  v39 = TodayCardMediaList.isMediaDark.getter();
  v40 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_isMediaDark;
  v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_isMediaDark] = v39 & 1;
  v140 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v41 = v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v169 = TodayCard.media.getter();
  type metadata accessor for TodayCardMedia();
  sub_10002849C(&qword_100972DD0);
  v42 = swift_dynamicCast();
  v147 = v37;
  if (v42)
  {
    v146 = v40;
    sub_100005A38(&v166, &aBlock);
    sub_10002A400(&aBlock, v163);
    v43 = [v5 traitCollection];
    v44 = TodayCardMediaWithArtwork.video(for:)();

    if (v44)
    {
      sub_10002A400(&aBlock, v163);
      v45 = dispatch thunk of TodayCardMediaWithArtwork.artworkLayoutsWithMetrics.getter();
      if (v45)
      {
        sub_1003403C0(v44, v45, v158, v143, v151);

        if (qword_10096D350 != -1)
        {
          swift_once();
        }

        v46 = qword_1009CE710;
        v47 = *algn_1009CE718;
        v48 = TodayCardMediaList.isMediaDark.getter();
        v49 = v148;
        TodayCard.editorialDisplayOptions.getter();
        v50 = EditorialDisplayOptions.useMaterialBlur.getter();
        (*(v149 + 8))(v49, v150);
        sub_10033FB9C(v46, v47, v48 & 1, v50 & 1);

        sub_100007000(&aBlock);
        v40 = v146;
        goto LABEL_29;
      }
    }

    sub_100007000(&aBlock);
    v40 = v146;
  }

  else
  {
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    sub_10002B894(&v166, &qword_100972DD8);
  }

  v169 = TodayCard.media.getter();
  if (!swift_dynamicCast())
  {
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    sub_10002B894(&v166, &qword_100972DD8);
LABEL_28:
    *(*&v154[v27] + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) = 0;
    goto LABEL_29;
  }

  sub_100005A38(&v166, &aBlock);
  sub_10002A400(&aBlock, v163);
  v51 = [v5 traitCollection];
  v52 = TodayCardMediaWithArtwork.artwork(for:)();

  if (!v52)
  {
LABEL_27:
    sub_100007000(&aBlock);
    goto LABEL_28;
  }

  sub_10002A400(&aBlock, v163);
  v53 = dispatch thunk of TodayCardMediaWithArtwork.artworkLayoutsWithMetrics.getter();
  if (!v53)
  {

    goto LABEL_27;
  }

  v54 = v40;
  if (v41 == 7)
  {
    v55 = v158;
  }

  else
  {
    v55 = v41;
  }

  sub_100342140(v52, v53, v55, v143, v151);

  if (qword_10096D348 != -1)
  {
    swift_once();
  }

  v56 = qword_1009CE700;
  v57 = *algn_1009CE708;
  v58 = TodayCardMediaList.isMediaDark.getter();
  v59 = v148;
  TodayCard.editorialDisplayOptions.getter();
  v60 = EditorialDisplayOptions.useMaterialBlur.getter();
  (*(v149 + 8))(v59, v150);
  sub_10033FB9C(v56, v57, v58 & 1, v60 & 1);

  sub_100007000(&aBlock);
  v40 = v54;
LABEL_29:
  v61 = *&v5[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView];
  if ((sub_10033494C() & 1) != 0 && *(v40 + v5) == 1)
  {
    (*(v155 + 104))(v153, enum case for TodayCard.Style.dark(_:), v156);
  }

  else
  {
    TodayCard.style.getter();
  }

  v62 = TodayCard.heading.getter();
  v64 = v63;
  v142 = TodayCard.title.getter();
  v146 = v65;
  v66 = TodayCard.shortTitle.getter();
  v148 = v67;
  TodayCard.titleCharacteristics.getter();
  v68 = TodayCardMediaList.marketingText.getter();
  v154 = v69;
  TodayCard.editorialDisplayOptions.getter();
  v70 = v158;
  v71 = sub_1005AB608;
  v133 = v68;
  v132 = v66;
  if (v158 == 6)
  {
    v134 = sub_1000DB5A0;
    v135 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v136 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v137 = sub_100287668;
  }

  else if (v158 == 4)
  {
    v137 = sub_100287668;
    v136 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v71 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v134 = sub_1000DB5A0;
    v135 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v137 = sub_1005AB2C8;
    v136 = sub_1005AB484;
    v135 = sub_1005AB458;
    v71 = sub_1005AB29C;
    v134 = sub_1000DB5A0;
  }

  v138 = sub_10033494C();
  v61[qword_10098B7E8] = 0;
  v72 = *&v61[qword_10098B7D0];
  *(v72 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v73 = *&v61[qword_10098B7C8];
  v139 = v64;
  sub_10006E7C4(v62, v64);
  v74 = EditorialDisplayOptions.showBadgeInSmallCards.getter();
  v75 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v76 = *&v73[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  if (v70 != 4 || (v74 & 1) != 0)
  {
    v77 = [v76 text];
    if (v77)
    {
      v78 = v77;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v79 = static String.isNilOrEmpty(_:)();
    v80 = v79 & 1;

    if (v80 == [*&v73[v75] isHidden] || (v73[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v73[v75] setHidden:v80];
    }

    else
    {
      if ((v79 & 1) == 0)
      {
        [*&v73[v75] setAlpha:0.0];
        v130 = objc_opt_self();
        [v130 inheritedAnimationDuration];
        v82 = v81;
        v83 = swift_allocObject();
        *(v83 + 16) = v73;
        v164 = sub_1000A9214;
        v165 = v83;
        aBlock = _NSConcreteStackBlock;
        v161 = 1107296256;
        v162 = sub_100007A08;
        v163 = &unk_1008BE858;
        v131 = _Block_copy(&aBlock);
        v84 = v73;

        v85 = swift_allocObject();
        *(v85 + 16) = v84;
        v164 = sub_1000A9220;
        v165 = v85;
        aBlock = _NSConcreteStackBlock;
        v161 = 1107296256;
        v162 = sub_100504C5C;
        v163 = &unk_1008BE8A8;
        v86 = _Block_copy(&aBlock);
        v87 = v84;

        v88 = v131;
        [v130 animateWithDuration:0 delay:v131 options:v86 animations:v82 completion:0.0];
        _Block_release(v86);
        _Block_release(v88);
      }

      [*&v73[v75] setHidden:v79 & 1];
      v73[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v73 setNeedsLayout];
    }
  }

  else if (([v76 isHidden] & 1) != 0 || (v73[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*&v73[v75] setHidden:1];
  }

  else
  {
    [*&v73[v75] setHidden:1];
    v73[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v73 setNeedsLayout];
  }

  v89 = &v61[qword_10098B7F0];
  *v89 = v134;
  v89[1] = 0;
  v89[2] = v71;
  v89[3] = 0;
  v89[4] = v135;
  v89[5] = 0;
  v89[6] = v136;
  v89[7] = 0;
  v89[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v89[9] = 0;
  v89[10] = v137;
  v89[11] = 0;

  sub_100551950();
  v90 = v154;
  if (v146)
  {
    if (v158 == 4)
    {
      sub_1005531F8();
    }

    else
    {
      sub_10055321C();
    }

    v91 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
    v92 = *(v72 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
    v93 = objc_allocWithZone(NSAttributedString);
    v94 = v92;
    v95 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_100343708(&qword_100976620, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v97 = [v93 initWithString:v95 attributes:isa];

    [v94 setAttributedText:v97];
    [*(v72 + v91) setAdjustsFontSizeToFitWidth:0];
    [*(v72 + v91) setMinimumScaleFactor:0.0];
    [*(v72 + v91) setAttributedText:0];
    if (v148 && v61[qword_10098B7C0] == 4)
    {
      v90 = v154;
      if (v158 == 4)
      {
        v98 = v142;
        v99 = v146;
        v100 = v132;
        v101 = v148;
      }

      else
      {
        v98 = v132;
        v99 = v148;
        v100 = v142;
        v101 = v146;
      }

      sub_10006E8BC(v98, v99, v100, v101);
    }

    else
    {
      sub_10006E7C4(v142, v146);
      v90 = v154;
    }
  }

  v102 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v103 = *(v72 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v104 = [v103 text];
  if (v104)
  {
    v105 = v147;
    v106 = &StringUserDefaultsDebugSetting;
  }

  else
  {
    v104 = [*(v72 + v102) attributedText];
    v106 = &StringUserDefaultsDebugSetting;
    if (!v104)
    {
      v107 = 1;
      v105 = v147;
      goto LABEL_68;
    }

    v105 = v147;
  }

  v107 = 0;
LABEL_68:
  v108 = v158;
  [v103 setHidden:v107];

  [v61 v106[41].base_meths];
  v109 = *&v61[qword_10098B7D8];
  [v109 setImage:0];
  [v109 setHidden:1];
  if (v108 != 4 && (EditorialDisplayOptions.suppressTagline.getter() & 1) == 0 && v90)
  {
    v110 = v105;
    v111 = HIBYTE(v90) & 0xF;
    if ((v90 & 0x2000000000000000) == 0)
    {
      v111 = v133 & 0xFFFFFFFFFFFFLL;
    }

    v112 = v111 == 0;
    v113 = *&v61[qword_10098B7E0];
    v114 = &v113[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    v115 = *&v113[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    goto LABEL_76;
  }

  v113 = *&v61[qword_10098B7E0];
  v114 = &v113[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  v115 = *&v113[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  if (v90)
  {
    v110 = v105;
    v112 = 1;
LABEL_76:
    v116 = v115;
    v90 = String._bridgeToObjectiveC()();
    v105 = v110;
    goto LABEL_78;
  }

  v116 = v115;
  v112 = 1;
LABEL_78:
  [v116 setText:v90];

  if (v112 == [*v114 isHidden] || (v113[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v114 setHidden:v112];
  }

  else
  {
    if (!v112)
    {
      [*v114 setAlpha:0.0];
      v117 = objc_opt_self();
      [v117 inheritedAnimationDuration];
      v119 = v118;
      v120 = swift_allocObject();
      *(v120 + 16) = v113;
      v164 = sub_1000A8B90;
      v165 = v120;
      aBlock = _NSConcreteStackBlock;
      v161 = 1107296256;
      v162 = sub_100007A08;
      v163 = &unk_1008BE7B8;
      v121 = _Block_copy(&aBlock);
      v122 = v113;

      v123 = swift_allocObject();
      *(v123 + 16) = v122;
      v164 = sub_1000A8B98;
      v165 = v123;
      aBlock = _NSConcreteStackBlock;
      v161 = 1107296256;
      v162 = sub_100504C5C;
      v163 = &unk_1008BE808;
      v124 = _Block_copy(&aBlock);
      v125 = v122;
      v105 = v147;

      [v117 animateWithDuration:0 delay:v121 options:v124 animations:v119 completion:0.0];
      _Block_release(v124);
      _Block_release(v121);
    }

    [*v114 setHidden:v112];
    v113[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v113 setNeedsLayout];
  }

  v126 = v153;
  sub_100550798(v153, v138 & 1);
  [v61 setNeedsLayout];

  (*(v149 + 8))(v157, v150);
  (*(v144 + 8))(v152, v145);
  sub_10033494C();
  v127 = &v61[qword_10098B7B0];
  *v127 = 0x4000000000000000;
  *(v127 + 1) = 0;
  *(v127 + 2) = 0;
  *(v127 + 3) = 0x4018000000000000;
  *(v127 + 4) = 0;
  v127[40] = 1;
  [v61 setNeedsLayout];
  (*(v155 + 8))(v126, v156);
  v128 = TodayCardMediaList.lockups.getter();
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  v129 = v151;
  inject<A, B>(_:from:)();
  sub_10036CB48(v128);

  if (v5[v140] == 6)
  {
    sub_10033A940(v159, v105, v158, v143, v129);
  }

  sub_100334720();
  sub_100337AC0();
  sub_100338410();
  sub_100334A10();
  sub_10033BEC8();
  [v5 setNeedsLayout];
}

void sub_10033A940(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v134 = a5;
  v148 = a3;
  v147 = a1;
  v138 = type metadata accessor for EditorialDisplayOptions();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v149 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for StringCharacteristics();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v10 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TodayCard.Style();
  v143 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = *(v5 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView);
  v139 = OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView;
  v15 = *(*(v141 + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia);
  v16 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView;
  v17 = *(v5 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView);
  v145 = a2;
  v146 = v5;
  v144 = v14;
  v142 = v10;
  if (v15)
  {
    if (v17)
    {
      v18 = v17;
      v19 = dispatch thunk of RiverView.dataSource.getter();

      swift_beginAccess();
      *(v19 + 32) = _swiftEmptyArrayStorage;
    }

    v20 = *(v6 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView);
    if (v20)
    {
      v21 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors;
      swift_beginAccess();
      v22 = *&v20[v21];
      *&v20[v21] = _swiftEmptyArrayStorage;
      v23 = v20;
      sub_1004A2DB8(v22);
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v17)
  {
    v24 = v17;
    v25 = dispatch thunk of RiverView.dataSource.getter();

    v26 = TodayCardMediaList.lockups.getter();
    swift_beginAccess();
    *(v25 + 32) = v26;

    v27 = *(v6 + v16);
    if (v27)
    {
      v28 = v27;
      v29 = dispatch thunk of RiverView.dataSource.getter();

      type metadata accessor for ArtworkLoader();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      *(v29 + 16) = aBlock;
    }
  }

  v30 = *(v6 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (!v30)
  {
    goto LABEL_36;
  }

  v23 = v30;
  v31 = TodayCardMediaList.lockups.getter();
  v32 = v31;
  aBlock = _swiftEmptyArrayStorage;
  v33 = v31 & 0xFFFFFFFFFFFFFF8;
  if (v31 >> 62)
  {
LABEL_32:
    v34 = _CocoaArrayWrapper.endIndex.getter();
    if (v34)
    {
      goto LABEL_12;
    }

LABEL_33:
    v133 = _swiftEmptyArrayStorage;
    goto LABEL_34;
  }

  v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_33;
  }

LABEL_12:
  v35 = 0;
  v133 = _swiftEmptyArrayStorage;
  v140 = v11;
  do
  {
    v11 = v35;
    while (1)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v35 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v11 >= *(v33 + 16))
        {
          goto LABEL_31;
        }

        v35 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }
      }

      if (dispatch thunk of Lockup.artwork.getter())
      {
        break;
      }

LABEL_15:
      ++v11;
      if (v35 == v34)
      {
        v11 = v140;
        goto LABEL_34;
      }
    }

    v36 = Artwork.backgroundColor.getter();

    if (!v36)
    {
      goto LABEL_15;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v133 = aBlock;
    v11 = v140;
  }

  while (v35 != v34);
LABEL_34:

  v37 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v38 = *&v23[v37];
  *&v23[v37] = v133;
  sub_1004A2DB8(v38);
  v6 = v146;
  v14 = v144;
LABEL_35:

LABEL_36:
  v39 = *(v6 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView);
  if (!v39)
  {
    goto LABEL_97;
  }

  v40 = *(*&v139[v141] + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) == 1;
  v140 = v11;
  if (v40)
  {
    if (*(v6 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_isMediaDark))
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if (*(v6 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v42 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v42 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (*(v6 + *v42) != 6)
  {
LABEL_40:
    v41 = v39;
    TodayCard.style.getter();
    goto LABEL_46;
  }

LABEL_45:
  (*(v143 + 104))(v14, enum case for TodayCard.Style.dark(_:), v11, v12);
  v43 = v39;
LABEL_46:
  v44 = TodayCard.heading.getter();
  v46 = v45;
  v133 = TodayCard.title.getter();
  v139 = v47;
  v126 = TodayCard.shortTitle.getter();
  v141 = v48;
  TodayCard.titleCharacteristics.getter();
  v49 = TodayCardMediaList.marketingText.getter();
  v147 = v50;
  TodayCard.editorialDisplayOptions.getter();
  v51 = v148;
  v52 = sub_1005AB608;
  v127 = v49;
  if (v148 == 6)
  {
    v130 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v131 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v132 = sub_100287668;
  }

  else if (v148 == 4)
  {
    v132 = sub_100287668;
    v131 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v52 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v130 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v132 = sub_1005AB2C8;
    v131 = sub_1005AB484;
    v130 = sub_1005AB458;
    v52 = sub_1005AB29C;
  }

  v128 = sub_10033494C();
  v39[qword_10098B7E8] = 0;
  v53 = *&v39[qword_10098B7D0];
  *(v53 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v54 = *&v39[qword_10098B7C8];
  v129 = v46;
  sub_10006E7C4(v44, v46);
  v55 = EditorialDisplayOptions.showBadgeInSmallCards.getter();
  v56 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v57 = *&v54[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  if (v51 != 4 || (v55 & 1) != 0)
  {
    v58 = [v57 text];
    if (v58)
    {
      v59 = v58;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v60 = static String.isNilOrEmpty(_:)();
    v61 = v60 & 1;

    if (v61 == [*&v54[v56] isHidden] || (v54[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v54[v56] setHidden:v61];
    }

    else
    {
      if ((v60 & 1) == 0)
      {
        [*&v54[v56] setAlpha:0.0];
        v125 = objc_opt_self();
        [v125 inheritedAnimationDuration];
        v63 = v62;
        v64 = swift_allocObject();
        *(v64 + 16) = v54;
        v154 = sub_1000A9214;
        v155 = v64;
        aBlock = _NSConcreteStackBlock;
        v151 = 1107296256;
        v152 = sub_100007A08;
        v153 = &unk_1008BE9E8;
        v124 = _Block_copy(&aBlock);
        v65 = v54;

        v66 = swift_allocObject();
        *(v66 + 16) = v65;
        v154 = sub_1000A9220;
        v155 = v66;
        aBlock = _NSConcreteStackBlock;
        v151 = 1107296256;
        v152 = sub_100504C5C;
        v153 = &unk_1008BEA38;
        v67 = _Block_copy(&aBlock);
        v68 = v65;

        v69 = v124;
        [v125 animateWithDuration:0 delay:v124 options:v67 animations:v63 completion:0.0];
        _Block_release(v67);
        _Block_release(v69);
      }

      [*&v54[v56] setHidden:v60 & 1];
      v54[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_64:
      [v54 setNeedsLayout];
    }
  }

  else
  {
    if ([v57 isHidden] & 1) == 0 && (v54[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning])
    {
      [*&v54[v56] setHidden:1];
      v54[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      goto LABEL_64;
    }

    [*&v54[v56] setHidden:1];
  }

  v70 = &v39[qword_10098B7F0];
  *v70 = sub_1000DB5A0;
  v70[1] = 0;
  v70[2] = v52;
  v70[3] = 0;
  v70[4] = v130;
  v70[5] = 0;
  v70[6] = v131;
  v70[7] = 0;
  v70[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v70[9] = 0;
  v70[10] = v132;
  v70[11] = 0;

  sub_100551950();
  v11 = v147;
  if (v139)
  {
    if (v148 == 4)
    {
      sub_1005531F8();
    }

    else
    {
      sub_10055321C();
    }

    v71 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
    v72 = *(v53 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
    v73 = objc_allocWithZone(NSAttributedString);
    v74 = v72;
    v75 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_100343708(&qword_100976620, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v77 = [v73 initWithString:v75 attributes:isa];

    [v74 setAttributedText:v77];
    [*(v53 + v71) setAdjustsFontSizeToFitWidth:0];
    [*(v53 + v71) setMinimumScaleFactor:0.0];
    [*(v53 + v71) setAttributedText:0];
    if (v141 && v39[qword_10098B7C0] == 4)
    {
      v11 = v147;
      if (v148 == 4)
      {
        v78 = v133;
        v79 = v139;
        v80 = v126;
        v81 = v141;
      }

      else
      {
        v78 = v126;
        v79 = v141;
        v80 = v133;
        v81 = v139;
      }

      sub_10006E8BC(v78, v79, v80, v81);
    }

    else
    {
      sub_10006E7C4(v133, v139);
      v11 = v147;
    }
  }

  v82 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v83 = *(v53 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v84 = [v83 text];
  if (v84 || (v84 = [*(v53 + v82) attributedText]) != 0)
  {
    v6 = v146;

    v85 = 0;
  }

  else
  {
    v85 = 1;
    v6 = v146;
  }

  v86 = v148;
  [v83 setHidden:v85];

  [v39 setNeedsLayout];
  v87 = *&v39[qword_10098B7D8];
  [v87 setImage:0];
  [v87 setHidden:1];
  if (v86 == 4 || (EditorialDisplayOptions.suppressTagline.getter() & 1) != 0 || !v11)
  {
    v90 = *&v39[qword_10098B7E0];
    v91 = &v90[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    v92 = *&v90[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    if (v11)
    {
      v89 = 1;
      goto LABEL_88;
    }

    v93 = v92;
    v89 = 1;
  }

  else
  {
    v88 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v88 = v127 & 0xFFFFFFFFFFFFLL;
    }

    v89 = v88 == 0;
    v90 = *&v39[qword_10098B7E0];
    v91 = &v90[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    v92 = *&v90[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
LABEL_88:
    v93 = v92;
    v11 = String._bridgeToObjectiveC()();
  }

  [v93 setText:v11];

  v94 = [*v91 isHidden];
  v95 = v144;
  if (v89 == v94 || (v90[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v91 setHidden:v89];
  }

  else
  {
    if (!v89)
    {
      [*v91 setAlpha:0.0];
      v96 = objc_opt_self();
      [v96 inheritedAnimationDuration];
      v98 = v97;
      v99 = swift_allocObject();
      *(v99 + 16) = v90;
      v154 = sub_1000A9214;
      v155 = v99;
      aBlock = _NSConcreteStackBlock;
      v151 = 1107296256;
      v152 = sub_100007A08;
      v153 = &unk_1008BE948;
      v11 = _Block_copy(&aBlock);
      v100 = v90;

      v101 = swift_allocObject();
      *(v101 + 16) = v100;
      v154 = sub_1000A9220;
      v155 = v101;
      aBlock = _NSConcreteStackBlock;
      v151 = 1107296256;
      v6 = v146;
      v152 = sub_100504C5C;
      v153 = &unk_1008BE998;
      v102 = _Block_copy(&aBlock);
      v103 = v100;
      v95 = v144;

      [v96 animateWithDuration:0 delay:v11 options:v102 animations:v98 completion:0.0];
      _Block_release(v102);
      _Block_release(v11);
    }

    [*v91 setHidden:v89];
    v90[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v90 setNeedsLayout];
  }

  v104 = v140;
  sub_100550798(v95, v128 & 1);
  [v39 setNeedsLayout];

  (*(v137 + 8))(v149, v138);
  (*(v135 + 8))(v142, v136);
  sub_10033494C();
  v105 = &v39[qword_10098B7B0];
  *v105 = 0x4000000000000000;
  *(v105 + 1) = 0;
  *(v105 + 2) = 0;
  *(v105 + 3) = 0x4018000000000000;
  *(v105 + 4) = 0;
  v105[40] = 1;
  [v39 setNeedsLayout];

  (*(v143 + 8))(v95, v104);
LABEL_97:
  if (*(v6 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
  {
    return;
  }

  v106 = TodayCardMediaList.lockups.getter();
  v107 = v106;
  v108 = v106 >> 62;
  if (v106 >> 62)
  {
    if (v106 < 0)
    {
      v111 = v106;
    }

    else
    {
      v111 = v106 & 0xFFFFFFFFFFFFFF8;
    }

    v112 = _CocoaArrayWrapper.endIndex.getter();
    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      goto LABEL_134;
    }

    if (v112 >= 6)
    {
      v122 = 6;
    }

    else
    {
      v122 = v112;
    }

    if ((v112 & 0x8000000000000000) == 0)
    {
      v110 = v122;
    }

    else
    {
      v110 = 6;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < v110)
    {
      goto LABEL_143;
    }

LABEL_103:
    if ((v107 & 0xC000000000000001) != 0 && v110)
    {
      type metadata accessor for Lockup();

      _ArrayBuffer._typeCheckSlowPath(_:)(0);
      if (v110 != 1)
      {
        _ArrayBuffer._typeCheckSlowPath(_:)(1);
        if (v110 != 2)
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(2);
          if (v110 != 3)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(3);
            if (v110 != 4)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(4);
              if (v110 != 5)
              {
                _ArrayBuffer._typeCheckSlowPath(_:)(5);
              }
            }
          }
        }
      }
    }

    else
    {
    }

    if (v108)
    {
      v111 = _CocoaArrayWrapper.subscript.getter();
      v11 = v113;
      v39 = v114;
      v112 = v115;

      if (v112)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v39 = 0;
      v111 = v107 & 0xFFFFFFFFFFFFFF8;
      v11 = (v107 & 0xFFFFFFFFFFFFFF8) + 32;
      v112 = (2 * v110) | 1;
      if (v112)
      {
LABEL_117:
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v118 = swift_dynamicCastClass();
        if (!v118)
        {
          swift_unknownObjectRelease();
          v118 = _swiftEmptyArrayStorage;
        }

        v119 = *(v118 + 2);

        if (!__OFSUB__(v112 >> 1, v39))
        {
          if (v119 == (v112 >> 1) - v39)
          {
            v117 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (v117)
            {
              goto LABEL_124;
            }

            v117 = _swiftEmptyArrayStorage;
LABEL_123:
            swift_unknownObjectRelease();
LABEL_124:
            v120 = *(v6 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer);
            if (v120)
            {
              type metadata accessor for ArtworkLoader();
              type metadata accessor for BaseObjectGraph();
              v121 = v120;
              inject<A, B>(_:from:)();
              sub_10036CB48(v117);
            }

            else
            {
            }

            return;
          }

          goto LABEL_135;
        }

LABEL_134:
        __break(1u);
LABEL_135:
        swift_unknownObjectRelease_n();
      }
    }

    sub_1005E7C90(v111, v11, v39, v112);
    v117 = v116;
    goto LABEL_123;
  }

  v109 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v109 >= 6)
  {
    v110 = 6;
  }

  else
  {
    v110 = v109;
  }

  if (v109 >= v110)
  {
    goto LABEL_103;
  }

LABEL_143:
  __break(1u);
}

void sub_10033BEC8()
{
  sub_1004EB9C0();
  v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if ((v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0 && v0[*v1] == 6 && (v2 = *&v0[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView]) != 0)
  {
    v3 = v2;
    v4 = [v0 contentView];
    sub_1005504B4();
    if (v5)
    {
      v7 = String._bridgeToObjectiveC()();
    }

    else
    {
      v7 = 0;
    }

    [v4 setAccessibilityLabel:v7];
  }

  else
  {
    v4 = [v0 contentView];
    sub_1005504B4();
    if (v6)
    {
      v7 = String._bridgeToObjectiveC()();
    }

    else
    {
      v7 = 0;
    }

    [v4 setAccessibilityLabel:v7];
  }
}

void sub_10033C024(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  v18 = &unk_100980000;
  v57 = a3;
  if ((a3 & 1) == 0)
  {
    v19 = swift_getObjectType();
    (*(a2 + 112))(v19, a2);
    v20 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    v56 = ObjectType;
    sub_1000315F8(v17, &v4[v20], &qword_10097DBD0);
    swift_endAccess();
    v21 = *(*&v4[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView);
    sub_100031660(&v4[v20], v14, &qword_10097DBD0);
    v22 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_pageGrid;
    swift_beginAccess();
    v23 = v21;
    v24 = v21 + v22;
    v18 = &unk_100980000;
    sub_1000315F8(v14, v24, &qword_10097DBD0);
    swift_endAccess();

    v4[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] = (*(a2 + 160))(v19, a2);
    sub_100340218();
    v25 = (*(a2 + 136))(v19, a2);
    sub_1004EAB3C(v25);
  }

  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    *&v4[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_todayCard] = *(v26 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_todayCard);
    v56 = a1;

    v28 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView;
    v29 = v18[368];
    v55 = *&v4[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView];
    v30 = *&v55[v29];
    v31 = *(*&v27[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + v29);
    v32 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_100031660(&v4[v32], v11, &qword_10097DBD0);
    v33 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (v4[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v33 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    v34 = v4[*v33];
    v35 = v30;
    v36 = v31;
    v37 = v57;
    sub_10070C7C4(v36, v57 & 1, v11, v34);

    sub_10002B894(v11, &qword_10097DBD0);
    if (v37)
    {
      sub_10033C588(v27);
    }

    else
    {
      v38 = *&v4[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView];
      if (v38)
      {
        v39 = v38;
        dispatch thunk of RiverView.isAnimating.setter();
      }

      swift_unknownObjectWeakAssign();
      v40 = *&v27[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView];
      sub_1005533F0(v40);

      v41 = *&v27[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer];
      sub_10036CBF8(v41);

      [*&v27[v28] frame];
      v42 = v55;
      [v55 setFrame:?];
      [v42 setHidden:{objc_msgSend(*&v27[v28], "isHidden")}];
      v43 = *(*&v27[v28] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_gradientBlurView);
      v44 = *&v43[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_style];
      v45 = *&v43[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_style + 8];
      v46 = *&v43[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle] == 2;

      sub_10033FB9C(v44, v45, v46, [v43 isHidden] ^ 1);

      [v42 setNeedsLayout];
      v47 = *&v27[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
      if (v47)
      {
        v48 = *&v4[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
        if (v48)
        {
          v49 = v47;
          v50 = v48;
          sub_1005533F0(v49);
        }
      }

      v51 = *&v27[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer];
      if (v51)
      {
        v52 = *&v4[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer];
        if (v52)
        {
          v53 = v51;
          v54 = v52;
          sub_10036CBF8(v53);
        }
      }

      sub_10033BEC8();
    }

    [v4 setNeedsLayout];
  }
}

char *sub_10033C588(char *result)
{
  if ((*(*(*&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) & 1) == 0)
  {
    v2 = v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] ? &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory : &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (v1[*v2] == 6)
    {
      v3 = result;
      v4 = [v1 contentView];
      v5 = [v3 contentView];
      v6 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView;
      v7 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView];
      v8 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView;
      if (v7)
      {
        [v7 removeFromSuperview];
        v8 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView;
      }

      v9 = *&v1[v8];
      if (v9)
      {
        [v9 removeFromSuperview];
      }

      if (v7)
      {
        v10 = *&v1[v8];
        *&v1[v8] = v7;
        v11 = v7;

        if (v4)
        {
          [v4 addSubview:v11];
        }
      }

      if (v9)
      {
        v12 = *&v3[v6];
        *&v3[v6] = v9;
        v13 = v9;

        if (!v5)
        {
          v5 = v4;
LABEL_19:

          v15 = [v1 contentView];
          v64 = v3;
          v65 = [v3 contentView];
          v16 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView;
          v17 = *&v3[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView];
          v18 = v15;
          v19 = v17;
          [v19 removeFromSuperview];
          v20 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView;
          v21 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverContainerView];
          v22 = v21;
          [v22 removeFromSuperview];
          if (v17)
          {
            v23 = *&v1[v20];
            *&v1[v20] = v17;
            v24 = v1;
            v25 = v16;
            v26 = v19;

            v27 = v26;
            v16 = v25;
            [v18 addSubview:v27];
          }

          if (v21)
          {
            v28 = *&v64[v16];
            *&v64[v16] = v21;
            v29 = v64;
            v30 = v22;

            [v65 addSubview:v30];
          }

          v31 = *&v1[v20];
          v66 = v16;
          v32 = *&v64[v16];
          v33 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView;
          v34 = *&v64[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView];
          if (v34)
          {
            v35 = v31;
            v36 = v34;
            v37 = v32;
            [v36 removeFromSuperview];
            v38 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView;
            v39 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView];
            if (!v39)
            {
LABEL_26:
              if (v34)
              {
                v40 = *&v1[v38];
                *&v1[v38] = v34;
                v41 = v1;
                v42 = v34;

                if (v31)
                {
                  [v31 addSubview:v42];
                }
              }

              if (v39)
              {
                v43 = *&v64[v33];
                *&v64[v33] = v39;
                v44 = v64;
                v45 = v39;

                if (!v32)
                {
                  goto LABEL_33;
                }

                v46 = v45;
                [v32 addSubview:v46];
              }

              v45 = v32;
LABEL_33:

              v47 = [v1 contentView];
              v48 = *&v64[v66];
              v49 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView;
              v50 = *&v64[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
              if (v50)
              {
                v51 = v48;
                [v50 removeFromSuperview];
                v52 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView;
                v53 = *&v1[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView];
                if (!v53)
                {
LABEL_36:
                  if (v50)
                  {
                    v54 = *&v1[v52];
                    *&v1[v52] = v50;
                    v55 = v1;
                    v56 = v50;

                    if (v47)
                    {
                      [v47 addSubview:v56];
                    }
                  }

                  if (v53)
                  {
                    v57 = *&v64[v49];
                    *&v64[v49] = v53;
                    v58 = v64;
                    v59 = v53;

                    if (!v48)
                    {

                      goto LABEL_48;
                    }

                    v60 = v59;
                    [v48 addSubview:v60];
                  }

                  v47 = v48;
LABEL_48:

                  [v64 setNeedsLayout];

                  return [v1 setNeedsLayout];
                }
              }

              else
              {
                v63 = v48;
                v52 = v49;
                v53 = *&v1[v49];
                if (!v53)
                {
                  goto LABEL_36;
                }
              }

              [v53 removeFromSuperview];
              goto LABEL_36;
            }
          }

          else
          {
            v61 = v31;
            v62 = v32;
            v38 = v33;
            v39 = *&v1[v33];
            if (!v39)
            {
              goto LABEL_26;
            }
          }

          [v39 removeFromSuperview];
          goto LABEL_26;
        }

        v14 = v13;
        [v5 addSubview:v14];
      }

      v13 = v4;
      goto LABEL_19;
    }
  }

  return result;
}

void sub_10033CB80(void (*a1)(void), int a2, char a3, void *a4, void *a5, void (*a6)(char *, char *, uint64_t))
{
  v175 = a6;
  v185 = a5;
  v183 = a4;
  LODWORD(v184) = a2;
  v8 = type metadata accessor for TextAppearance();
  v182 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = (&v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v158 - v12);
  __chkstk_darwin(v14);
  v181 = &v158 - v15;
  __chkstk_darwin(v16);
  v178 = (&v158 - v17);
  __chkstk_darwin(v18);
  v177 = (&v158 - v19);
  __chkstk_darwin(v20);
  v172 = &v158 - v21;
  __chkstk_darwin(v22);
  v180 = (&v158 - v23);
  v24 = type metadata accessor for EditorialDisplayOptions();
  v173 = *(v24 - 8);
  v174 = v24;
  __chkstk_darwin(v24);
  v179 = &v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PageGrid();
  v176 = *(v26 - 8);
  __chkstk_darwin(v26);
  v169 = (&v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v28 - 8);
  v170 = &v158 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v171 = &v158 - v31;
  v32 = sub_10002849C(&unk_100996820);
  __chkstk_darwin(v32 - 8);
  v34 = &v158 - v33;
  v35 = type metadata accessor for UIView.LayoutRegion();
  __chkstk_darwin(v35);
  v38 = &v158 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v166 = v36;
    v167 = a1;
    v39 = TodayCard.media.getter();
    v40 = type metadata accessor for TodayCardMediaList();
    v41 = swift_dynamicCastClass();
    if (v41)
    {
      v158 = v26;
      v160 = v13;
      v162 = v10;
      v168 = v8;
      v165 = v39;
      v187[0] = v41;
      v42 = v41;
      v43 = TodayCardMediaWithArtwork.video(for:)();
      v161 = v42;
      v187[0] = v42;
      v159 = v40;
      v163 = TodayCardMediaWithArtwork.artwork(for:)();
      v164 = v43;
      v44 = (v43 | v163) != 0;
      if (v175)
      {
        v45 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
        v46 = type metadata accessor for UIView.LayoutRegion.AdaptivityAxis();
        v47 = *(v46 - 8);
        (*(v47 + 104))(v34, v45, v46);
        (*(v47 + 56))(v34, 0, 1, v46);
        static UIView.LayoutRegion.safeArea(cornerAdaptation:)();
        sub_10002B894(v34, &unk_100996820);
        UIView.edgeInsets(for:)();
        v49 = v48;
        (*(v166 + 8))(v38, v35);
        v50 = v184;
        v51 = v183;
      }

      else
      {
        v51 = v183;
        PageGrid.safeAreaInsets.getter();
        v49 = v55;
        v50 = v184;
      }

      v56 = v176;
      if (v44)
      {
        v57 = v185;
      }

      else
      {
        if (v50 == 6)
        {
          sub_100340000(v51, v185, v49);
          left = v58;
          right = v60;
        }

        else
        {
          v62 = v171;
          v63 = v158;
          v176[2](v171, v51, v158);
          (v56[7])(v62, 0, 1, v63);
          v64 = v62;
          v65 = v170;
          sub_100031660(v64, v170, &qword_10097DBD0);
          if ((v56[6])(v65, 1, v63) == 1)
          {
            sub_10002B894(v65, &qword_10097DBD0);
            left = UIEdgeInsetsZero.left;
            right = UIEdgeInsetsZero.right;
            v66 = v185;
          }

          else
          {
            v67 = v169;
            (v56)[4](v169, v65, v63);
            PageGrid.horizontalDirectionalMargins.getter();
            PageGrid.horizontalDirectionalMargins.getter();
            v66 = v185;
            [v185 layoutDirection];
            NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
            left = v68;
            right = v69;
            (v56[1])(v67, v63);
          }

          sub_10002B894(v171, &qword_10097DBD0);
          if ((UITraitCollection.isSizeClassCompact.getter() & 1) == 0)
          {
            if (qword_10096E6E0 != -1)
            {
              swift_once();
            }

            v70 = type metadata accessor for StaticDimension();
            sub_1000056A8(v70, qword_1009D24C0);
            type metadata accessor for TraitEnvironmentPlaceholder();
            sub_10002849C(&qword_100973210);
            v71 = swift_allocObject();
            *(v71 + 16) = xmmword_1007B0B70;
            *(v71 + 32) = v66;
            v72 = v66;
            v73 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
            dispatch thunk of AnyDimension.rawValue(in:)();

            v50 = v184;
          }
        }

        PageGrid.columnWidth.getter();
        v75 = v74;
        TodayCard.heading.getter();
        v77 = v76;
        v78 = TodayCard.title.getter();
        v183 = v79;
        TodayCard.media.getter();
        if (swift_dynamicCastClass())
        {
          v80 = TodayCardMediaList.marketingText.getter();
          v82 = v81;
        }

        else
        {

          v80 = 0;
          v82 = 0;
        }

        v83 = sub_100287668;
        v84 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v85 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v86 = sub_1005AB608;
        v159 = v80;
        v166 = v78;
        if (v50 != 6)
        {
          if (v50 == 4)
          {
            v83 = sub_100287668;
            v84 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
            v86 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
            v85 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
          }

          else
          {
            v83 = sub_1005AB2C8;
            v84 = sub_1005AB484;
            v85 = sub_1005AB458;
            v86 = sub_1005AB29C;
          }
        }

        v199[0] = sub_1000DB5A0;
        v199[1] = 0;
        v199[2] = v86;
        v199[3] = 0;
        v199[4] = v85;
        v199[5] = 0;
        v169 = v84;
        v199[6] = v84;
        v199[7] = 0;
        v199[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v199[9] = 0;
        v167 = v83;
        v199[10] = v83;
        v199[11] = 0;
        v87 = TodayCard.editorialDisplayOptions.getter();
        __chkstk_darwin(v87);
        *(&v158 - 2) = v199;
        v88 = v185;
        v89 = UITraitCollection.modifyingTraits(_:)();
        v90 = [v88 preferredContentSizeCategory];
        sub_1000DB5A0();

        TextAppearance.init()();
        if (qword_10096E8E0 != -1)
        {
          swift_once();
        }

        v91 = qword_10098B758;
        v176 = objc_opt_self();
        v170 = v89;
        v92 = [v176 preferredFontDescriptorWithTextStyle:v91 compatibleWithTraitCollection:v89];
        v93 = [v92 fontDescriptorWithSymbolicTraits:2];
        v94 = objc_opt_self();
        if (v93)
        {
          v95 = [v94 fontWithDescriptor:v93 size:0.0];

          v92 = v93;
        }

        else
        {
          v95 = [v94 fontWithDescriptor:v92 size:0.0];
        }

        v184 = v82;

        v96 = v172;
        v97 = v177;
        TextAppearance.withFont(_:)();

        v98 = *(v182 + 8);
        v99 = v168;
        v98(v97, v168);
        TextAppearance.withNumberOfLines(_:)();
        v98(v96, v99);
        v100 = sub_100397304(_swiftEmptyArrayStorage);
        if (qword_10096E8E8 != -1)
        {
          swift_once();
        }

        v101 = qword_10098B760;
        v177 = type metadata accessor for TodayTransitioningLabelView();
        objc_allocWithZone(v177);
        v102 = sub_10006CFBC(v100, v101);
        v103 = *&v102[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
        v104 = v178;
        v171 = v77;
        v105 = v103;
        if (v77)
        {
          v106 = String._bridgeToObjectiveC()();
        }

        else
        {
          v106 = 0;
        }

        [v103 setText:v106];

        v172 = v102;
        v107 = *(v182 + 16);
        v108 = v168;
        v182 += 16;
        v175 = v107;
        v107(v104, v180, v168);
        UILabel.textAppearance.setter();
        if (qword_10096E8F0 != -1)
        {
          swift_once();
        }

        v109 = qword_10098B768;
        v110 = [v185 preferredContentSizeCategory];
        v167();

        __chkstk_darwin(v111);
        *(&v158 - 2) = v199;
        v112 = UITraitCollection.modifyingTraits(_:)();
        v113 = v160;
        TextAppearance.init()();
        v167 = v112;
        v114 = [v176 preferredFontDescriptorWithTextStyle:v109 compatibleWithTraitCollection:v112];
        v115 = objc_opt_self();
        v116 = [v115 fontWithDescriptor:v114 size:0.0];

        TextAppearance.withFont(_:)();
        v98(v113, v108);
        TextAppearance.withNumberOfLines(_:)();
        v98(v104, v108);
        v117 = sub_100397304(_swiftEmptyArrayStorage);
        if (qword_10096E8F8 != -1)
        {
          swift_once();
        }

        v118 = qword_10098B770;
        v119 = objc_allocWithZone(v177);
        v120 = sub_10006CFBC(v117, v118);
        v121 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
        v122 = *&v120[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
        v123 = v183;
        if (v183)
        {
          v124 = v122;
          v123 = String._bridgeToObjectiveC()();
        }

        else
        {
          v125 = v122;
        }

        [v122 setText:v123];

        v166 = v121;
        v126 = v178;
        v127 = v168;
        v175(v178, v181, v168);
        v128 = UILabel.textAppearance.setter();
        __chkstk_darwin(v128);
        *(&v158 - 2) = v199;
        v129 = v185;
        v130 = UITraitCollection.modifyingTraits(_:)();
        v131 = v160;
        TextAppearance.init()();
        if (qword_10096E908 != -1)
        {
          swift_once();
        }

        v132 = v75 - left;
        v133 = v176;
        v176 = v130;
        v134 = [v133 preferredFontDescriptorWithTextStyle:qword_10098B780 compatibleWithTraitCollection:v130];
        v135 = [v115 fontWithDescriptor:v134 size:0.0];

        TextAppearance.withFont(_:)();
        v98(v131, v127);
        v136 = [v129 preferredContentSizeCategory];
        v169();

        TextAppearance.withNumberOfLines(_:)();
        v98(v126, v127);
        v137 = sub_100397304(_swiftEmptyArrayStorage);
        if (qword_10096E910 != -1)
        {
          swift_once();
        }

        v138 = v132 - right;
        v139 = qword_10098B788;
        v140 = objc_allocWithZone(v177);
        v141 = sub_10006CFBC(v137, v139);
        v142 = *&v141[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
        v143 = EditorialDisplayOptions.suppressTagline.getter();
        v144 = 0;
        v145 = v166;
        if ((v143 & 1) == 0 && v184)
        {
          v144 = String._bridgeToObjectiveC()();
        }

        [v142 setText:v144];

        v146 = v162;
        v147 = v168;
        v175(v178, v162, v168);
        UILabel.textAppearance.setter();
        v148 = *&v120[v145];
        v192 = type metadata accessor for DynamicTypeLabel();
        v193 = &protocol witness table for UILabel;
        v190 = v120;
        v191 = v148;
        v194 = 0u;
        v195 = 0u;
        v196 = 0;
        v197 = v141;
        v187[0] = 0x4000000000000000;
        v187[1] = 0;
        v187[2] = 0;
        v187[3] = 0x4018000000000000;
        v187[4] = 0;
        v188 = 1;
        v189 = v172;
        v198 = 0;
        v149 = v148;
        v57 = v185;
        sub_1005AD274(v185, v186, v138, 1.79769313e308);
        sub_10002A400(v186, v186[3]);
        dispatch thunk of Placeable.measure(toFit:with:)();

        v98(v146, v147);
        v98(v181, v147);
        v98(v180, v147);
        (*(v173 + 8))(v179, v174);
        sub_10034359C(v187);
        sub_100007000(v186);
      }

      v150 = TodayCardMediaList.lockups.getter();
      if (v150 >> 62)
      {
        v151 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v151 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      type metadata accessor for TodayListCardLockupContainer();
      sub_1003692D0(v151, v57);
      if ((UITraitCollection.isSizeClassCompact.getter() & 1) == 0)
      {
        if (qword_10096E6E0 != -1)
        {
          swift_once();
        }

        v152 = type metadata accessor for StaticDimension();
        sub_1000056A8(v152, qword_1009D24C0);
        type metadata accessor for TraitEnvironmentPlaceholder();
        sub_10002849C(&qword_100973210);
        v153 = swift_allocObject();
        *(v153 + 16) = xmmword_1007B0B70;
        *(v153 + 32) = v57;
        v154 = v57;
        v155 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
        dispatch thunk of AnyDimension.rawValue(in:)();
      }

      v156 = [v57 preferredContentSizeCategory];
      static UIContentSizeCategory.> infix(_:_:)();

      static UIEdgeInsets.vertical(top:bottom:)();
      v157 = [v57 preferredContentSizeCategory];
      static UIContentSizeCategory.> infix(_:_:)();

      static UIEdgeInsets.vertical(top:bottom:)();
    }

    else
    {
    }
  }

  else
  {
    v52 = v184;
    v53 = v183;
    v54 = v185;

    sub_100467918(v52, v53, v54);
  }
}