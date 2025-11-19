void sub_100667AC8()
{
  v1 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v43 - v6;
  v8 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for PageGrid();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkLayoutWithMetrics])
  {
    v15 = &v0[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkSize];
    if ((v0[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkSize + 16] & 1) == 0)
    {
      v43 = v2;
      v17 = *v15;
      v16 = v15[1];
      v18 = OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_pageGrid;
      swift_beginAccess();
      sub_1000A833C(&v0[v18], v10);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_10046DF7C(v10);
        return;
      }

      (*(v12 + 32))(v14, v10, v11);
      v19 = v0[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_sizeCategory];
      if (v19 != 7)
      {

        [v0 bounds];
        v45.origin.x = 0.0;
        v45.origin.y = 0.0;
        v45.size.width = 0.0;
        v45.size.height = 0.0;
        if (CGRectEqualToRect(v44, v45))
        {
          (*(v12 + 8))(v14, v11);

          return;
        }

        v20 = v0;
        sub_100699534(v19);
        v21 = v43;
        v22 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
        v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
        if (v19 != 6)
        {
          v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
        }

        if (v19 != 4)
        {
          v22 = v23;
        }

        (*(v43 + 104))(v4, *v22, v1);
        (*(v21 + 32))(v7, v4, v1);
        v24 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();

        (*(v21 + 8))(v7, v1);
        v25 = v20[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isExpanded];
        v26 = *&v20[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_videoMirrorView];
        [v20 bounds];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v35 = [v20 traitCollection];
        v36 = sub_1000F1BB8(v35, v28, v30, v32, v34, v17, v16, v24, v25);
        v38 = v37;
        v40 = v39;
        v42 = v41;

        [v26 setFrame:{v36, v38, v40, v42}];
      }

      (*(v12 + 8))(v14, v11);
    }
  }
}

id sub_100667F40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingVideoMirrorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingVideoMirrorView()
{
  result = qword_100990D10;
  if (!qword_100990D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100668038()
{
  sub_1000A77BC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10066810C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isExpanded) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_videoMirrorView;
  if (qword_10096D300 != -1)
  {
    swift_once();
  }

  v7[4] = *&byte_1009CE668[64];
  v7[5] = *&byte_1009CE668[80];
  v7[6] = *&byte_1009CE668[96];
  v7[7] = *&byte_1009CE668[112];
  v7[0] = *byte_1009CE668;
  v7[1] = *&byte_1009CE668[16];
  v7[2] = *&byte_1009CE668[32];
  v7[3] = *&byte_1009CE668[48];
  v3 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
  *(v0 + v2) = sub_10075DCD8(0, v7, 1.0, 0.0);
  *(v0 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkLayoutWithMetrics) = 0;
  v4 = v0 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkSize;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  v5 = OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_pageGrid;
  v6 = type metadata accessor for PageGrid();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isMirroring) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1006682A0()
{
  v1 = type metadata accessor for UUID();
  v59 = v1;
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10002849C(&qword_100973210);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B0B70;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v62 = type metadata accessor for NavigationActionDebugSetting();
  v7 = swift_allocObject();
  v7[7] = 0xD000000000000012;
  v7[8] = 0x800000010081EDF0;
  v7[10] = 0;
  v7[11] = 0;
  v7[9] = 0;
  v7[12] = sub_100669CD0;
  v7[13] = v6;
  v8 = v0;

  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  v12 = *(v2 + 8);
  v12(v4, v1);
  v65 = v9;
  v66 = v11;
  AnyHashable.init<A>(_:)();

  *(v5 + 32) = v7;
  v67 = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  type metadata accessor for ActionDebugSetting();
  v14 = swift_allocObject();
  strcpy((v14 + 56), "Reset Welcome");
  *(v14 + 70) = -4864;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = sub_100669CD8;
  *(v14 + 112) = v13;
  v15 = v8;

  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  v19 = v59;
  (v12)(v4);
  v65 = v16;
  v66 = v18;
  AnyHashable.init<A>(_:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  v21 = swift_allocObject();
  *(v21 + 56) = 0xD000000000000018;
  *(v21 + 64) = 0x800000010081EE10;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0u;
  *(v21 + 104) = sub_100669CE0;
  *(v21 + 112) = v20;
  v22 = v15;

  UUID.init()();
  v23 = UUID.uuidString.getter();
  v25 = v24;
  v12(v4, v19);
  v65 = v23;
  v66 = v25;
  AnyHashable.init<A>(_:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v26 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v27 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v64 = v12;
  if (v26 >= v27 >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  v29 = swift_allocObject();
  *(v29 + 56) = 0xD000000000000017;
  *(v29 + 64) = 0x800000010081EE30;
  *(v29 + 72) = 0u;
  *(v29 + 88) = 0u;
  *(v29 + 104) = sub_100669CE8;
  *(v29 + 112) = v28;
  v30 = v22;

  UUID.init()();
  v31 = UUID.uuidString.getter();
  v33 = v32;
  v64(v4, v19);
  v65 = v31;
  v66 = v33;
  AnyHashable.init<A>(_:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v61 = v67;
  v34 = swift_allocObject();
  v60 = xmmword_1007B15F0;
  *(v34 + 16) = xmmword_1007B15F0;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  v35 = swift_allocObject();
  *(v35 + 56) = 0xD00000000000001ELL;
  *(v35 + 64) = 0x800000010081EE50;
  *(v35 + 72) = 0;
  *(v35 + 80) = 0xD00000000000001FLL;
  *(v35 + 88) = 0x800000010081EE70;
  *(v35 + 96) = 0;
  UUID.init()();
  v36 = UUID.uuidString.getter();
  v38 = v37;
  v39 = v19;
  v40 = v19;
  v41 = v64;
  v64(v4, v39);
  v65 = v36;
  v66 = v38;
  AnyHashable.init<A>(_:)();
  *(v34 + 32) = v35;
  v42 = swift_allocObject();
  *(v42 + 16) = v30;
  v43 = swift_allocObject();
  strcpy((v43 + 56), "Edit Triggers");
  *(v43 + 70) = -4864;
  *(v43 + 80) = 0;
  *(v43 + 88) = 0;
  *(v43 + 72) = 0;
  *(v43 + 96) = sub_100669CF0;
  *(v43 + 104) = v42;
  v44 = v30;

  UUID.init()();
  v45 = UUID.uuidString.getter();
  v47 = v46;
  v41(v4, v40);
  v65 = v45;
  v66 = v47;
  AnyHashable.init<A>(_:)();

  *(v34 + 40) = v43;
  v48 = swift_allocObject();
  *(v48 + 16) = v60;
  type metadata accessor for DebugSection();
  v49 = swift_allocObject();
  UUID.init()();
  v50 = UUID.uuidString.getter();
  v52 = v51;
  v41(v4, v40);
  v49[2] = v50;
  v49[3] = v52;
  v49[4] = 0x737465656853;
  v49[5] = 0xE600000000000000;
  v49[6] = v61;
  *(v48 + 32) = v49;
  v53 = swift_allocObject();
  UUID.init()();
  v54 = UUID.uuidString.getter();
  v56 = v55;
  v41(v4, v40);
  v53[2] = v54;
  v53[3] = v56;
  v53[4] = 0x7364726143;
  v53[5] = 0xE500000000000000;
  v53[6] = v34;
  *(v48 + 40) = v53;
  return v48;
}

uint64_t sub_100668A84(uint64_t a1)
{
  v2 = type metadata accessor for FlowOrigin();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FlowAnimationBehavior();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for FlowPresentationContext();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = type metadata accessor for FlowPage();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v18 - 8);
  v20 = v29 - v19;
  v21 = sub_10002849C(&unk_100974490);
  v39 = a1;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1000F40E0(v20);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v24 = *(v15 + 104);
  v29[1] = v17;
  v24(v17, enum case for FlowPage.onboarding(_:), v14);
  v25 = type metadata accessor for URL();
  v26 = *(*(v25 - 8) + 56);
  v29[0] = v13;
  v26(v13, 1, 1, v25);
  v27 = type metadata accessor for ReferrerData();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v41 = &type metadata for OnboardingConfiguration;
  v40 = 0;
  static ActionMetrics.notInstrumented.getter();
  (*(v30 + 104))(v31, enum case for FlowPresentationContext.infer(_:), v32);
  (*(v34 + 104))(v33, enum case for FlowAnimationBehavior.infer(_:), v35);
  (*(v36 + 104))(v38, enum case for FlowOrigin.inapp(_:), v37);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v28 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  sub_1005F9C8C(v28, 1, v39, v20);

  return (*(v22 + 8))(v20, v21);
}

void sub_100669060()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v10 = [v0 initWithSuiteName:v1];

  v2 = v10;
  if (!v10)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v11 = v2;
  static WelcomeOnboardingStep.reset(userDefaults:)();
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() actionWithTitle:v6 style:1 handler:0];

  [v5 addAction:v7];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong presentViewController:v5 animated:1 completion:0];
  }
}

uint64_t sub_100669244()
{
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  type metadata accessor for AdPrivacyOnboardingStep();
  inited = swift_initStackObject();
  *(inited + 24) = 0;

  AnyHashable.init<A>(_:)();
  v1 = sub_10003C5F4();
  [v1 setAcknowledgedVersionForPersonalizedAds:0];

  swift_setDeallocating();
  sub_10003D614(inited + 32);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() actionWithTitle:v5 style:1 handler:0];

  [v4 addAction:v6];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong presentViewController:v4 animated:1 completion:0];
  }
}

void sub_100669464()
{
  v0 = sub_10002849C(&qword_1009839C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  if (qword_10096DB58 != -1)
  {
    swift_once();
  }

  v4 = sub_1000056A8(v0, qword_1009839A8);
  (*(v1 + 16))(v3, v4, v0);
  v12 = 0;
  v13 = 0;
  Preferences.subscript.setter();

  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() actionWithTitle:v8 style:1 handler:0];

  [v7 addAction:v9];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong presentViewController:v7 animated:1 completion:0];
  }
}

uint64_t sub_1006696D8(uint64_t a1)
{
  v2 = type metadata accessor for FlowOrigin();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FlowAnimationBehavior();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for FlowPresentationContext();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = type metadata accessor for FlowPage();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v18 - 8);
  v20 = v29 - v19;
  v21 = sub_10002849C(&unk_100974490);
  v39 = a1;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1000F40E0(v20);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v24 = *(v15 + 104);
  v29[1] = v17;
  v24(v17, enum case for FlowPage.debugTodayCardTriggers(_:), v14);
  v25 = type metadata accessor for URL();
  v26 = *(*(v25 - 8) + 56);
  v29[0] = v13;
  v26(v13, 1, 1, v25);
  v27 = type metadata accessor for ReferrerData();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v40 = 0u;
  v41 = 0u;
  static ActionMetrics.notInstrumented.getter();
  (*(v30 + 104))(v31, enum case for FlowPresentationContext.infer(_:), v32);
  (*(v34 + 104))(v33, enum case for FlowAnimationBehavior.infer(_:), v35);
  (*(v36 + 104))(v38, enum case for FlowOrigin.inapp(_:), v37);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v28 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  sub_1005F9C8C(v28, 1, v39, v20);

  return (*(v22 + 8))(v20, v21);
}

unint64_t sub_100669D0C()
{
  result = qword_100990D48;
  if (!qword_100990D48)
  {
    type metadata accessor for AppLaunchTrampolineAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990D48);
  }

  return result;
}

uint64_t sub_100669D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v8 - 8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  __chkstk_darwin(v17);
  v40 = v36 - v18;
  AppLaunchTrampolineAction.payloadUrl.getter();
  AppLaunchTrampolineAction.payloadUrl.getter();
  v38 = *(v5 + 48);
  v19 = v38(v16, 1, v4);
  v39 = a2;
  v37 = v5;
  if (v19 == 1)
  {
    sub_10002B894(v16, &qword_100982460);
    v20 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v16, v4);
    type metadata accessor for AdAttributionManager();
    BaseObjectGraph.optional<A>(_:)();
    v21 = v5;
    v20 = aBlock;
    if (aBlock)
    {
      AppLaunchTrampolineAction.bundleId.getter();
      dispatch thunk of AdAttributionManager.processReengagement(forBundleID:payloadURL:)();

      v22 = v37;
      (*(v37 + 8))(v7, v4);
      v23 = v40;
      sub_10002B894(v40, &qword_100982460);
      v20 = 1;
      (*(v22 + 56))(v13, 0, 1, v4);
      sub_100118248(v13, v23);
    }

    else
    {
      (*(v21 + 8))(v7, v4);
    }
  }

  sub_10002849C(&qword_1009764A0);
  v24 = Promise.__allocating_init()();
  v25 = [objc_allocWithZone(ASCAppLaunchTrampoline) init];
  AppLaunchTrampolineAction.bundleId.getter();
  v26 = String._bridgeToObjectiveC()();

  sub_1000417F0(v40, v10);
  if (v38(v10, 1, v4) == 1)
  {
    v28 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v27);
    v28 = v29;
    (*(v37 + 8))(v10, v4);
  }

  v30 = [v25 openApplicationWithBundleIdentifier:v26 payloadURL:v28 universalLinkRequired:{v20, v36[0], v36[1], v36[2], v36[3]}];

  v45 = sub_10066A810;
  v46 = v24;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_10066A568;
  v44 = &unk_1008CD700;
  v31 = _Block_copy(&aBlock);

  [v30 addSuccessBlock:v31];
  _Block_release(v31);
  v32 = swift_allocObject();
  v33 = v39;
  v32[2] = a1;
  v32[3] = v33;
  v32[4] = v24;
  v45 = sub_10066A818;
  v46 = v32;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100669D64;
  v44 = &unk_1008CD750;
  v34 = _Block_copy(&aBlock);

  [v30 addErrorBlock:v34];
  _Block_release(v34);

  sub_10002B894(v40, &qword_100982460);
  return v24;
}

uint64_t sub_10066A47C()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  Promise.resolve(_:)();
  return (*(v1 + 8))(v4, v0);
}

void sub_10066A570(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10066A5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for OSLogger();
  sub_1000056A8(v3, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v9[3] = v8;
  v4 = sub_1000056E0(v9);
  (*(*(v8 - 8) + 16))(v4);
  static LogMessage.sensitive(_:)();
  sub_10002B894(v9, &unk_1009711D0);
  Logger.error(_:)();

  v5 = AppLaunchTrampolineAction.fallbackAction.getter();
  if (!v5)
  {
    return Promise.reject(_:)();
  }

  sub_1005D0214(v5, 1, a3);
  Promise.pipe(to:)();
}

id sub_10066A82C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_100990D50 = result;
  return result;
}

char *sub_10066A880(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_itemLayoutContext;
  v15 = type metadata accessor for ItemLayoutContext();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView;
  type metadata accessor for HeroCarouselView();
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_state;
  v18 = sub_10002849C(&qword_100979DF8);
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  *&v5[v19] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v20 = &v5[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
  *v20 = 0;
  v20[1] = 0;
  swift_weakInit();
  v21 = &v5[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_impressionsUpdateBlock];
  *v21 = 0;
  v21[1] = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_currentTitleEffect;
  v23 = type metadata accessor for TitleEffect();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_onUpdatePageTitleEffect;
  sub_10002849C(&qword_100990DB8);
  swift_allocObject();
  *&v5[v24] = SyncEvent.init()();
  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  (*(v11 + 8))(v13, v10);
  v41[0] = v25;
  v41[1] = v27;
  AnyHashable.init<A>(_:)();
  v5[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_allowsAutoPlay] = 1;
  v5[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_isPlaying] = 0;
  swift_unknownObjectWeakInit();
  v28 = type metadata accessor for HeroCarouselCollectionViewCell();
  v42.receiver = v5;
  v42.super_class = v28;
  v29 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v31 = [v29 contentView];
  v32 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView;
  [v31 addSubview:*&v29[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView]];

  v33 = *&v29[v32];
  v41[3] = v28;
  v41[4] = &off_1008CD7B8;
  v41[0] = v29;
  v34 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  v35 = v29;
  v36 = v33;
  sub_1000315F8(v41, v33 + v34, &unk_100990DC0);
  swift_endAccess();

  v37 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  [*&v35[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_tapGestureRecognizer] addTarget:v35 action:"handleTap:"];
  v38 = *&v35[v37];
  [v38 setDelegate:v35];

  [v35 addGestureRecognizer:*&v35[v37]];
  return v35;
}

uint64_t sub_10066AD50(uint64_t a1)
{
  v3 = type metadata accessor for TitleEffectUpdate();
  v20 = *(v3 - 8);
  v21 = v3;
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_100986660);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for TitleEffect();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  v16 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_currentTitleEffect;
  swift_beginAccess();
  sub_10066CDB4(a1, v1 + v16);
  swift_endAccess();
  sub_100031660(v1 + v16, v8, &unk_100986660);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10002B894(a1, &unk_100986660);
    return sub_10002B894(v8, &unk_100986660);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v12, v15, v9);
    if (qword_10096EBF8 != -1)
    {
      swift_once();
    }

    v18 = qword_100990D50;
    TitleEffectUpdate.init(effect:isAnimated:animationDuration:timingFunction:)();
    SyncEvent.post(_:)();
    sub_10002B894(a1, &unk_100986660);
    (*(v20 + 8))(v5, v21);
    return (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_10066B08C()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for HeroCarouselCollectionViewCell();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView];
  v3 = [v0 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = &v1[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_impressionsUpdateBlock];
  result = swift_beginAccess();
  v14 = *v12;
  if (*v12)
  {

    v14(v15);
    return sub_10001F63C(v14);
  }

  return result;
}

void sub_10066B1F0()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100979DF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-1] - v3;
  v5 = type metadata accessor for HeroCarouselCollectionViewCell();
  v16.receiver = v0;
  v16.super_class = v5;
  objc_msgSendSuper2(&v16, "prepareForReuse");
  v6 = sub_10002849C(&qword_100979DF8);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_1000315F8(v4, &v0[v7], &qword_100979DF0);
  swift_endAccess();
  v8 = &v0[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
  v9 = *&v0[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
  *v8 = 0;
  *(v8 + 1) = 0;
  sub_10001F63C(v9);
  v10 = *(*&v0[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView] + OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView);
  sub_1005C4C74(_swiftEmptyArrayStorage, 0);
  v11 = *(v10 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker);
  *(v10 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker) = 0;
  sub_1005C485C(v11);

  *(v10 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection) = 1;
  sub_1005C4510();
  v12 = type metadata accessor for Feature.iOS();
  v15[3] = v12;
  v15[4] = sub_1005C7530();
  v13 = sub_1000056E0(v15);
  (*(*(v12 - 8) + 104))(v13, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v12);
  LOBYTE(v12) = isFeatureEnabled(_:)();
  sub_100007000(v15);
  if ((v12 & 1) == 0)
  {
    sub_100468D78(0);
  }

  v1[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_isPlaying] = 0;
}

void sub_10066B460(void *a1)
{
  v30.receiver = v1;
  v30.super_class = type metadata accessor for HeroCarouselCollectionViewCell();
  objc_msgSendSuper2(&v30, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView];
    v26 = v3;
    v5 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_parallaxY;
    *(v4 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_parallaxY) = *(v3 + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_parallaxY);
    v6 = *(v4 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
    if (v6 >> 62)
    {
      goto LABEL_20;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v27 = a1;

    if (v7)
    {
      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      v10 = &OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView;
      v11 = v6 & 0xFFFFFFFFFFFFFF8;
      v12 = &OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer;
      v28 = v6 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v9)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          a1 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v8 >= *(v11 + 16))
          {
            __break(1u);
LABEL_20:
            v7 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }

          v13 = *(v6 + 8 * v8 + 32);
          a1 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            goto LABEL_14;
          }
        }

        v14 = *(v4 + v5);
        v15 = *(*(*&v13[*v10] + *v12) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
        v16 = *&v15[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY];
        *&v15[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = v14;
        if (v14 != v16)
        {
          v17 = v9;
          v18 = v6;
          v19 = v7;
          v20 = v5;
          v21 = v12;
          v22 = v10;
          v23 = v13;
          [v15 setNeedsLayout];
          v13 = v23;
          v10 = v22;
          v12 = v21;
          v5 = v20;
          v7 = v19;
          v6 = v18;
          v9 = v17;
          v11 = v28;
        }

        ++v8;
      }

      while (a1 != v7);
    }

    v24 = type metadata accessor for Feature.iOS();
    v29[3] = v24;
    v29[4] = sub_1005C7530();
    v25 = sub_1000056E0(v29);
    (*(*(v24 - 8) + 104))(v25, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v24);
    LOBYTE(v24) = isFeatureEnabled(_:)();
    sub_100007000(v29);
    if ((v24 & 1) == 0)
    {
      *(v4 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isRubberbanding) = *(v26 + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_isRubberbanding);
      sub_100468ECC();
    }
  }
}

void sub_10066B768()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  }

  v4 = type metadata accessor for Feature.iOS();
  v6[3] = v4;
  v6[4] = sub_1005C7530();
  v5 = sub_1000056E0(v6);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v4);
  LOBYTE(v4) = isFeatureEnabled(_:)();
  sub_100007000(v6);
  if ((v4 & 1) == 0)
  {
    sub_100468D78(1);
  }

  *(v1 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_isPlaying) = 1;
}

void sub_10066B9F0()
{
  v91 = type metadata accessor for ImpressionMetrics.ID();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = v80 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v1 - 8);
  v92 = v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v80 - v4;
  __chkstk_darwin(v6);
  v8 = v80 - v7;
  __chkstk_darwin(v9);
  v11 = v80 - v10;
  v12 = type metadata accessor for ImpressionMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v88 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v80 - v16;
  __chkstk_darwin(v18);
  v20 = v80 - v19;
  __chkstk_darwin(v21);
  v23 = v80 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  swift_beginAccess();
  v26 = swift_weakLoadStrong();
  if (!v26)
  {

    return;
  }

  v87 = v26;
  v85 = v17;
  v27 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView;
  v28 = *&v25[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView];
  if ((v28[OBJC_IVAR____TtC8AppStore16HeroCarouselView_previousIndex + 8] & 1) == 0)
  {
    v86 = v13;
    v29 = *&v28[OBJC_IVAR____TtC8AppStore16HeroCarouselView_previousIndex];
    v30 = v28;
    v84 = v12;
    v31 = v30;
    v32 = v29;
    v13 = v86;
    v33 = sub_1005C55AC(v32, 0);

    v12 = v84;
    if (v33)
    {
      if (!*&v33[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem])
      {

        v13 = v86;
        (*(v86 + 56))(v11, 1, 1, v12);
        goto LABEL_10;
      }

      v82 = OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem;
      v83 = v33;

      HeroCarouselItem.impressionMetrics.getter();

      v13 = v86;
      v81 = *(v86 + 48);
      if (v81(v11, 1, v12) == 1)
      {

LABEL_10:
        sub_10002B894(v11, &qword_100973D30);
        goto LABEL_19;
      }

      v80[0] = *(v13 + 32);
      (v80[0])(v23, v11, v12);
      v34 = v89;
      ImpressionMetrics.id.getter();
      v96 = 0u;
      v97 = 0u;
      v98 = 1;
      v35 = ImpressionsCalculator.childCalculator(for:viewBounds:)();
      (*(v90 + 8))(v34, v91);
      if (!v35)
      {
        goto LABEL_18;
      }

      v80[1] = v35;
      if (*&v83[v82] && (, v36 = HeroCarouselItem.overlay.getter(), , v36))
      {
        HeroCarouselItemOverlay.impressionMetrics.getter();

        v37 = v84;
        v38 = v81(v8, 1, v84);
        v39 = v86;
        if (v38 != 1)
        {
          (v80[0])(v20, v8, v37);
          ImpressionsCalculator.removeElement(_:)();

          (*(v39 + 8))(v20, v37);
          goto LABEL_18;
        }
      }

      else
      {

        (*(v86 + 56))(v8, 1, 1, v84);
      }

      sub_10002B894(v8, &qword_100973D30);
LABEL_18:
      ImpressionsCalculator.removeElement(_:)();

      v13 = v86;
      v12 = v84;
      (*(v86 + 8))(v23, v84);
    }
  }

LABEL_19:
  v40 = *&v25[v27];
  v41 = sub_1004691D8();

  if (!v41)
  {

    return;
  }

  v42 = OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem;
  if (!*&v41[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem])
  {

    (*(v13 + 56))(v5, 1, 1, v12);
    goto LABEL_25;
  }

  HeroCarouselItem.impressionMetrics.getter();

  v43 = v13;
  v44 = *(v13 + 48);
  if (v44(v5, 1, v12) == 1)
  {

LABEL_25:
    v45 = v5;
LABEL_26:
    sub_10002B894(v45, &qword_100973D30);
    return;
  }

  v46 = *(v13 + 32);
  v47 = v85;
  v86 = v13 + 32;
  v84 = v46;
  v46(v85, v5, v12);
  [v41 bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v25;
  v57 = v12;
  v58 = [v56 superview];
  [v41 convertRect:v58 toView:{v49, v51, v53, v55}];

  ImpressionsCalculator.addElement(_:at:)();
  v59 = *&v41[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView];
  if (!v59)
  {

    (*(v13 + 8))(v47, v57);
    return;
  }

  if (!*&v41[v42])
  {

    v62 = v92;
LABEL_36:
    (*(v13 + 8))(v85, v57);
    (*(v13 + 56))(v62, 1, 1, v57);
    goto LABEL_37;
  }

  v60 = v59;

  v61 = HeroCarouselItem.overlay.getter();

  v62 = v92;
  if (!v61)
  {

    goto LABEL_36;
  }

  HeroCarouselItemOverlay.impressionMetrics.getter();

  v63 = v57;
  if (v44(v62, 1, v57) == 1)
  {

    (*(v13 + 8))(v85, v57);
LABEL_37:
    v45 = v62;
    goto LABEL_26;
  }

  v64 = v88;
  v84(v88, v62, v63);
  v65 = v89;
  v66 = v85;
  ImpressionMetrics.id.getter();
  v93 = 0u;
  v94 = 0u;
  v95 = 1;
  v67 = ImpressionsCalculator.childCalculator(for:viewBounds:)();
  (*(v90 + 8))(v65, v91);
  v68 = v43;
  if (v67)
  {
    v69 = v60;
    [v69 bounds];
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v78 = [v56 superview];

    [v69 convertRect:v78 toView:{v71, v73, v75, v77}];
    ImpressionsCalculator.addElement(_:at:)();
  }

  else
  {
  }

  v79 = *(v68 + 8);
  v79(v64, v63);
  v79(v66, v63);
}

id sub_10066C508()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroCarouselCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HeroCarouselCollectionViewCell()
{
  result = qword_100990D88;
  if (!qword_100990D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10066C6B8()
{
  sub_10066C8A0(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_10066C83C();
    if (v1 <= 0x3F)
    {
      sub_10066C8A0(319, &qword_100990DB0, &type metadata accessor for TitleEffect);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10066C83C()
{
  if (!qword_100990DA0)
  {
    sub_10002D1A8(&qword_100979DF8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100990DA0);
    }
  }
}

void sub_10066C8A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10066C8F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_playbackId;
  swift_beginAccess();
  return sub_10003D4AC(v1 + v3, a1);
}

void sub_10066C960()
{
  v1 = v0;
  v2 = type metadata accessor for Feature.iOS();
  v4[3] = v2;
  v4[4] = sub_1005C7530();
  v3 = sub_1000056E0(v4);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v2);
  LOBYTE(v2) = isFeatureEnabled(_:)();
  sub_100007000(v4);
  if ((v2 & 1) == 0)
  {
    sub_100468D78(0);
  }

  *(v1 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_isPlaying) = 0;
}

uint64_t sub_10066CA70()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_10066CAD0(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

uint64_t sub_10066CB68()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_10066CBC4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

void (*sub_10066CC84())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_10066CDAC;
}

uint64_t sub_10066CD2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_currentTitleEffect;
  swift_beginAccess();
  return sub_100031660(v3 + v4, a1, &unk_100986660);
}

uint64_t sub_10066CDB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100986660);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10066CE24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_100979DF8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25[-v8];
  v10 = sub_10002849C(&qword_100979DF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v25[-v11];
  v13 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_100031660(v3 + v13, v12, &qword_100979DF0);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_10002B894(v12, &qword_100979DF0);
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    v14 = sub_10002B894(v12, &qword_100979DF0);
    __chkstk_darwin(v14);
    *&v25[-16] = a1;
    sub_100218C40();
    WritableStateLens<A>.updateValue(_:)();
    (*(v7 + 8))(v9, v6);
  }

  v15 = (v3 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v16 = *v15;
  if (*v15)
  {

    v16(v17);
    sub_10001F63C(v16);
  }

  if (a2)
  {
    v18 = *(*(*(*(a2 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView) + OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v18)
    {
      type metadata accessor for VideoView();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        v20 = *(v19 + qword_100988CE0);
        if (v20)
        {
          v21 = v18;
          v22 = v20;
          dispatch thunk of VideoPlayer.restart()();
        }
      }
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  }
}

void sub_10066D154()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_itemLayoutContext;
  v7 = type metadata accessor for ItemLayoutContext();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView;
  type metadata accessor for HeroCarouselView();
  *(v1 + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_state;
  v10 = sub_10002849C(&qword_100979DF8);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  *(v1 + v11) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = (v1 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler);
  *v12 = 0;
  v12[1] = 0;
  swift_weakInit();
  v13 = (v1 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  *v13 = 0;
  v13[1] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_currentTitleEffect;
  v15 = type metadata accessor for TitleEffect();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_onUpdatePageTitleEffect;
  sub_10002849C(&qword_100990DB8);
  swift_allocObject();
  *(v1 + v16) = SyncEvent.init()();
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  v20[0] = v17;
  v20[1] = v19;
  AnyHashable.init<A>(_:)();
  *(v1 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_allowsAutoPlay) = 1;
  *(v1 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_isPlaying) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10066D474(uint64_t a1)
{
  result = [*(*(v1 + 16) + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl) currentPage];
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_10066D4C4(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000CAE24(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000CAE24(v3, v5, v2 != 0);
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

  sub_1006783CC(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1000CAE24(v3, v5, v2 != 0);
  return v12;
}

double sub_10066D5E0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v359 = a4;
  v383 = type metadata accessor for ShelfHeaderLayout(0);
  __chkstk_darwin(v383);
  v368 = &v323 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v360 = &v323 - v9;
  v10 = type metadata accessor for LabelPlaceholder();
  v379 = *(v10 - 8);
  v380 = v10;
  __chkstk_darwin(v10);
  v324 = &v323 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TextAppearance();
  v339 = *(v12 - 8);
  v340 = v12;
  __chkstk_darwin(v12);
  v357 = &v323 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v326 = &v323 - v15;
  __chkstk_darwin(v16);
  v337 = &v323 - v17;
  __chkstk_darwin(v18);
  v338 = &v323 - v19;
  v336 = type metadata accessor for FloatingPointRoundingRule();
  v334 = *(v336 - 8);
  __chkstk_darwin(v336);
  v333 = &v323 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v390 = type metadata accessor for AspectRatio();
  v378 = *(v390 - 8);
  __chkstk_darwin(v390);
  v335 = &v323 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v330 = &v323 - v23;
  v24 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v24 - 8);
  v365 = &v323 - v25;
  v26 = sub_10002849C(&unk_100987100);
  __chkstk_darwin(v26 - 8);
  v364 = &v323 - v27;
  v28 = type metadata accessor for UIButton.Configuration();
  v366 = *(v28 - 8);
  v367 = v28;
  __chkstk_darwin(v28);
  v363 = &v323 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v362 = &v323 - v31;
  v32 = sub_10002849C(&unk_100984380);
  __chkstk_darwin(v32 - 8);
  v356 = &v323 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v371 = &v323 - v35;
  __chkstk_darwin(v36);
  v328 = &v323 - v37;
  __chkstk_darwin(v38);
  v370 = &v323 - v39;
  v377 = type metadata accessor for ShelfHeader.Configuration();
  v388 = *(v377 - 8);
  __chkstk_darwin(v377);
  v354 = &v323 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10002849C(&qword_100990F78);
  __chkstk_darwin(v41 - 8);
  v358 = &v323 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v325 = &v323 - v44;
  __chkstk_darwin(v45);
  v389 = &v323 - v46;
  v47 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v47 - 8);
  v332 = &v323 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v329 = &v323 - v50;
  __chkstk_darwin(v51);
  v381 = &v323 - v52;
  __chkstk_darwin(v53);
  v374 = (&v323 - v54);
  v55 = sub_10002849C(&qword_100990F68);
  __chkstk_darwin(v55);
  v376 = &v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v375 = &v323 - v58;
  __chkstk_darwin(v59);
  v391 = &v323 - v60;
  __chkstk_darwin(v61);
  v385 = &v323 - v62;
  __chkstk_darwin(v63);
  v384 = &v323 - v64;
  __chkstk_darwin(v65);
  v67 = &v323 - v66;
  v68 = sub_10002849C(&qword_1009903A0);
  __chkstk_darwin(v68 - 8);
  v343 = &v323 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  *&v361 = &v323 - v71;
  __chkstk_darwin(v72);
  v74 = &v323 - v73;
  __chkstk_darwin(v75);
  v77 = &v323 - v76;
  v352 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v352);
  v386 = &v323 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v393 = (&v323 - v80);
  v81 = ShelfLayoutContext.traitCollection.getter();
  v373 = ShelfHeader.eyebrowArtwork.getter();
  ShelfHeader.eyebrowArtworkType.getter();
  v349 = ShelfHeader.titleArtwork.getter();
  v382 = v74;
  v387 = a1;
  ShelfHeader.titleArtworkType.getter();
  v392 = a2;
  sub_100678740();
  if (qword_10096EC40 != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for FontUseCase();
  v327 = sub_1000056A8(v82, qword_100990E20);
  isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v81).super.isa;
  [(objc_class *)isa pointSize];
  v85 = v84;
  v86 = objc_opt_self();
  v347 = isa;
  v348 = [v86 fontWithDescriptor:isa size:v85];
  [v348 lineHeight];
  v350 = v87;
  v88 = &v67[*(v55 + 48)];
  v89 = v67;
  v351 = v77;
  sub_100672318(v67, v88, v77);
  if (qword_10096EC48 != -1)
  {
    swift_once();
  }

  v355 = sub_1000056A8(v82, qword_100990E38);
  v90 = FontUseCase.makeFontDescriptor(compatibleWith:)(v81).super.isa;
  [(objc_class *)v90 pointSize];
  v344 = v90;
  v345 = [v86 fontWithDescriptor:v90 size:?];
  [v345 lineHeight];
  v372 = v91;
  v353 = v55;
  sub_10067297C(v384, &v384[*(v55 + 48)], v382);
  v394.super.isa = v81;
  v92 = [(objc_class *)v81 preferredContentSizeCategory];
  v93 = static UIContentSizeCategory.> infix(_:_:)();

  v369 = v82;
  if ((v93 & 1) == 0 || (v94 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v346 = v67;
    v95 = v86;
    v96 = *&v361;
    sub_100031660(v382, *&v361, &qword_1009903A0);
    v97 = type metadata accessor for ShelfHeader.ArtworkType();
    v98 = *(v97 - 8);
    v94 = 7.0;
    if ((*(v98 + 48))(v96, 1, v97) != 1)
    {
      v99 = v343;
      sub_100031660(v96, v343, &qword_1009903A0);
      v100 = (*(v98 + 88))(v99, v97);
      if (v100 != enum case for ShelfHeader.ArtworkType.icon(_:))
      {
        v94 = 5.0;
        if (v100 != enum case for ShelfHeader.ArtworkType.category(_:))
        {
          (*(v98 + 8))(v99, v97);
          v94 = 7.0;
        }
      }
    }

    sub_10002B894(v96, &qword_1009903A0);
    v82 = v369;
    v86 = v95;
    v89 = v346;
  }

  v346 = *&v94;
  v361 = a3;
  if (qword_10096EC58 != -1)
  {
    swift_once();
  }

  v331 = sub_1000056A8(v82, qword_100990E68);
  v101.super.isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v394).super.isa;
  [(objc_class *)v101.super.isa pointSize];
  v102 = [v86 fontWithDescriptor:v101.super.isa size:?];
  [v102 lineHeight];
  v104 = v103;
  static UIEdgeInsets.vertical(top:bottom:)();
  v343 = v105;
  v107 = v106;
  v109 = v108;
  v111 = v110;
  static UIEdgeInsets.vertical(top:bottom:)();
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;
  sub_100031660(v89, v385, &qword_100990F68);
  sub_100031660(v89, v391, &qword_100990F68);
  v120 = v382;
  if (v373)
  {
    Artwork.size.getter();
    v121 = v374;
    AspectRatio.init(_:_:)();
    v122 = 0;
  }

  else
  {
    v122 = 1;
    v121 = v374;
  }

  v123 = v372 - v104;
  v124 = *(v378 + 56);
  v124(v121, v122, 1, v390);
  v125 = *&UIEdgeInsetsZero.top;
  v341 = *&UIEdgeInsetsZero.bottom;
  v342 = v125;
  v126 = v384;
  sub_100031660(v384, v375, &qword_100990F68);
  sub_100031660(v126, v376, &qword_100990F68);
  if (v349)
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();

    v127 = 0;
  }

  else
  {

    v127 = 1;
  }

  v128 = v351;

  sub_10002B894(v384, &qword_100990F68);
  sub_10002B894(v89, &qword_100990F68);
  sub_10002B894(v120, &qword_1009903A0);
  sub_10002B894(v128, &qword_1009903A0);
  v129 = v127;
  v130 = v390;
  v124(v381, v129, 1, v390);
  v131 = v352;
  v132 = *(v353 + 48);
  v133 = *(v352 + 40);
  v134 = v393;
  v124(v393 + v133, 1, 1, v130);
  v382 = v131[15];
  v124(&v134[v382], 1, 1, v130);
  *v134 = v343;
  *(v134 + 1) = v107;
  *(v134 + 2) = v109;
  *(v134 + 3) = v111;
  *(v134 + 4) = v350;
  *(v134 + 5) = v113;
  *(v134 + 6) = v115;
  *(v134 + 7) = v117;
  *(v134 + 8) = v119;
  v135 = v131[7];
  v136 = type metadata accessor for StaticDimension();
  v137 = *(v136 - 8);
  v138 = *(v137 + 32);
  v351 = v135;
  v138(&v135[v134], v385, v136);
  v350 = v131[8];
  v384 = v132;
  v138(&v134[v350], &v132[v391], v136);
  *&v134[v131[9]] = 0x4008000000000000;
  v373 = v133;
  sub_1000315F8(v374, &v134[v133], &unk_1009732A0);
  *&v134[v131[11]] = v372;
  v139 = &v134[v131[12]];
  v140 = v341;
  *v139 = v342;
  v139[1] = v140;
  v353 = v131[13];
  v141 = v375;
  v138(&v134[v353], v375, v136);
  *&v372 = v131[14];
  v142 = v376;
  v138(&v134[*&v372], &v132[v376], v136);
  sub_1000315F8(v381, &v134[v382], &unk_1009732A0);
  *&v134[v131[16]] = v346;
  v143 = &v134[v131[17]];
  *v143 = v123;
  *(v143 + 2) = 0;
  *(v143 + 3) = 0;
  *(v143 + 1) = 0x4024000000000000;
  v144 = *(v137 + 8);
  v144(v142, v136);
  v145 = v384;
  v144(&v384[v141], v136);
  v144(v391, v136);
  v144(&v145[v385], v136);
  v374 = *(v379 + 56);
  v375 = v379 + 56;
  (v374)(v389, 1, 1, v380);
  v146 = v354;
  ShelfHeader.configuration.getter();
  LOBYTE(v136) = ShelfHeader.Configuration.includeSeparator.getter();
  v147 = *(v388 + 8);
  v148 = v377;
  v381 = v388 + 8;
  v376 = v147;
  v147(v146, v377);
  v149 = 0;
  v150 = 0;
  v151 = 0;
  v152 = v361;
  if (v136)
  {
    static Separator.thickness(compatibleWith:)();
    v150 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v149 = LayoutViewPlaceholder.init(representing:)();
    v151 = &protocol witness table for LayoutViewPlaceholder;
  }

  v417[0] = v149;
  v417[1] = 0;
  v417[2] = 0;
  v417[3] = v150;
  v417[4] = v151;
  ShelfHeader.eyebrow.getter();
  v153 = v363;
  v154 = v371;
  if (!v155)
  {
    v384 = 0;
    v160 = v393;
    goto LABEL_40;
  }

  if (qword_10096EC38 != -1)
  {
    swift_once();
  }

  v156 = qword_100990E18;
  (*(v388 + 56))(v370, 1, 1, v148);
  v384 = v156;
  v157 = v156;
  v158 = ShelfHeader.eyebrowAction.getter();
  if (v158)
  {
  }

  static UIButton.Configuration.plain()();
  UIButton.Configuration.titlePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  v159 = v328;
  sub_100031660(v370, v328, &unk_100984380);
  if ((*(v388 + 48))(v159, 1, v148) == 1)
  {
    sub_10002B894(v159, &unk_100984380);
LABEL_31:
    if (qword_10096EC60 != -1)
    {
      swift_once();
    }

    v162 = qword_100990E80;
    goto LABEL_34;
  }

  v161 = ShelfHeader.Configuration.eyebrowColor.getter();
  (v376)(v159, v148);
  if (!v161)
  {
    goto LABEL_31;
  }

LABEL_34:
  v163 = v158 != 0;
  v164 = v362;
  UIButton.Configuration.baseForegroundColor.setter();
  sub_100005744(0, &qword_1009730E0);
  v165 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  *(swift_allocObject() + 16) = v165;
  v166 = v165;
  v167 = v364;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v168 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v168 - 8) + 56))(v167, 0, 1, v168);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v169 = v365;
  v170 = v366;
  v171 = v367;
  (*(v366 + 16))(v365, v164, v367);
  (*(v170 + 56))(v169, 0, 1, v171);
  UIButton.configuration.setter();
  [v157 setUserInteractionEnabled:v163];
  [v157 _setWantsAccessibilityUnderline:v163];

  (*(v170 + 8))(v164, v171);
  sub_10002B894(v370, &unk_100984380);
  v172 = ShelfHeader.eyebrow.getter();
  v174 = v173;
  v175 = ShelfLayoutContext.traitCollection.getter();
  if (ShelfHeader.eyebrowTrailingArtwork.getter())
  {
    v154 = v371;
    if (qword_10096EC00 != -1)
    {
      swift_once();
    }

    v176 = [qword_100990DE0 configurationWithTraitCollection:v175];
    v177 = static SystemImage.load(artwork:with:includePrivateImages:)();
  }

  else
  {
    v177 = 0;
    v154 = v371;
  }

  v178 = sub_1006790BC(v172, v174, v175, v177);

  [v157 setAttributedTitle:v178 forState:0];

  v160 = v393;
  v148 = v377;
LABEL_40:
  if (ShelfHeader.eyebrowArtwork.getter())
  {

    v179 = v329;
    sub_100031660(v160 + v373, v329, &unk_1009732A0);
    v180 = v378;
    v181 = v390;
    if ((*(v378 + 48))(v179, 1, v390) == 1)
    {
      sub_10002B894(v179, &unk_1009732A0);
      v391 = 0;
    }

    else
    {
      (*(v180 + 32))(v330, v179, v181);
      v182 = v333;
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v183 = *(v334 + 8);
      v184 = v336;
      v183(v182, v336);
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v185 = v182;
      v153 = v363;
      v186 = v184;
      v154 = v371;
      v183(v185, v186);
      v187 = v330;
      AspectRatio.maxSize(fitting:)();
      type metadata accessor for LayoutViewPlaceholder();
      swift_allocObject();
      v391 = LayoutViewPlaceholder.init(representing:)();
      (*(v180 + 8))(v187, v181);
    }

    v148 = v377;
  }

  else
  {
    v391 = 0;
  }

  v188 = ShelfHeader.titleAction.getter();
  if (v188)
  {
  }

  v189 = v154;
  if (qword_10096EC30 != -1)
  {
    swift_once();
  }

  v190 = qword_100990E10;
  v191 = ShelfHeader.title.getter();
  v193 = v192;
  v194 = ShelfLayoutContext.traitCollection.getter();
  v195 = sub_1006793DC(v191, v193, v194, v188 != 0);

  v385 = v190;
  [v190 setAttributedTitle:v195 forState:0];

  v196 = v388;
  v197 = v189;
  (*(v388 + 56))(v189, 1, 1, v148);
  static UIButton.Configuration.plain()();
  UIButton.Configuration.titlePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  v198 = v356;
  sub_100031660(v189, v356, &unk_100984380);
  if ((*(v196 + 48))(v198, 1, v148) == 1)
  {
    sub_10002B894(v198, &unk_100984380);
  }

  else
  {
    v199 = ShelfHeader.Configuration.titleColor.getter();
    (v376)(v198, v148);
    if (v199)
    {
      goto LABEL_56;
    }
  }

  if (qword_10096EC68 != -1)
  {
    swift_once();
  }

  v200 = qword_100990E88;
LABEL_56:
  v201 = v188 != 0;
  UIButton.Configuration.baseForegroundColor.setter();
  v202 = [objc_opt_self() clearColor];
  v203 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v203(&v414, 0);
  v204 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v204(&v414, 0);
  v205 = sub_100005744(0, &qword_1009730E0);
  v206 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  *(swift_allocObject() + 16) = v206;
  v207 = v206;
  v208 = v364;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v209 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v209 - 8) + 56))(v208, 0, 1, v209);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v210 = v365;
  v211 = v366;
  v212 = v367;
  (*(v366 + 16))(v365, v153, v367);
  (*(v211 + 56))(v210, 0, 1, v212);
  v213 = v385;
  UIButton.configuration.setter();
  [v213 setNeedsUpdateConfiguration];
  [v213 setContentHorizontalAlignment:4];
  [v213 setUserInteractionEnabled:v201];
  [v213 _setWantsAccessibilityUnderline:v201];

  (*(v211 + 8))(v153, v212);
  sub_10002B894(v197, &unk_100984380);
  if (ShelfHeader.titleArtwork.getter())
  {

    v214 = v332;
    sub_100031660(v393 + v382, v332, &unk_1009732A0);
    v215 = v378;
    v216 = v390;
    v217 = (*(v378 + 48))(v214, 1, v390);
    v218 = v357;
    if (v217 == 1)
    {
      sub_10002B894(v214, &unk_1009732A0);
      v219 = 0;
    }

    else
    {
      (*(v215 + 32))(v335, v214, v216);
      v220 = v333;
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v388 = v205;
      v221 = *(v334 + 8);
      v222 = v336;
      v221(v220, v336);
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v221(v220, v222);
      v223 = v335;
      AspectRatio.maxSize(fitting:)();
      type metadata accessor for LayoutViewPlaceholder();
      swift_allocObject();
      v219 = LayoutViewPlaceholder.init(representing:)();
      (*(v215 + 8))(v223, v390);
    }
  }

  else
  {
    v219 = 0;
    v218 = v357;
  }

  v224 = v368;
  v225 = ShelfHeader.subtitle.getter();
  v227 = v369;
  v390 = v219;
  if (v226)
  {
    v228 = HIBYTE(v226) & 0xF;
    if ((v226 & 0x2000000000000000) == 0)
    {
      v228 = v225 & 0xFFFFFFFFFFFFLL;
    }

    if (v228)
    {
      v382 = v225;
      v388 = v226;
      TextAppearance.init()();
      if (qword_10096EC50 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v227, qword_100990E50);
      v229 = ShelfLayoutContext.traitCollection.getter();
      v230 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

      v231 = v326;
      TextAppearance.withFont(_:)();

      v232 = v218;
      v233 = v339;
      v234 = v340;
      v235 = *(v339 + 8);
      v235(v232, v340);
      v236 = v337;
      TextAppearance.withNumberOfLines(_:)();
      v235(v231, v234);
      v237 = v338;
      TextAppearance.withLineBreakMode(_:)();
      v235(v236, v234);
      (*(v233 + 16))(v236, v237, v234);
      LabelPlaceholder.Options.init(rawValue:)();
      v238 = v325;
      LabelPlaceholder.init(_:with:where:)();
      v235(v237, v234);
      v239 = v389;
      sub_10002B894(v389, &qword_100990F78);
      (v374)(v238, 0, 1, v380);
      sub_1000476A0(v238, v239, &qword_100990F78);
      v224 = v368;
      v219 = v390;
    }

    else
    {
    }
  }

  v240 = ShelfHeader.accessoryAction.getter();
  v241 = sub_1006795B8(v240);
  if (v243 == -1)
  {
    v413 = 0;
    v411 = 0u;
    v412 = 0u;
    v255 = v380;
  }

  else
  {
    v244 = v241;
    v245 = v242;
    if (v243)
    {
      v246 = v243;
      v247 = ShelfLayoutContext.traitCollection.getter();
      v248 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
      v249 = [objc_opt_self() configurationWithFont:v248 scale:2];
      v250 = String._bridgeToObjectiveC()();
      sub_100679E90(v244, v245, v246);
      v251 = [objc_opt_self() _systemImageNamed:v250 withConfiguration:v249];

      if (v251)
      {
        v252 = v251;
        [v252 size];
        v253 = type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();
        v254 = LayoutViewPlaceholder.init(representing:)();
        *(&v412 + 1) = v253;
        v413 = &protocol witness table for LayoutViewPlaceholder;

        *&v411 = v254;
      }

      else
      {
        v413 = 0;
        v411 = 0u;
        v412 = 0u;
      }

      v224 = v368;
      v255 = v380;
    }

    else
    {
      v256 = v337;
      TextAppearance.init()();
      v257 = ShelfLayoutContext.traitCollection.getter();
      v258 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

      TextAppearance.withFont(_:)();
      (*(v339 + 8))(v256, v340);
      LabelPlaceholder.Options.init(rawValue:)();
      v259 = v324;
      LabelPlaceholder.init(_:with:where:)();
      LabelPlaceholder.layoutTextView.getter();
      v255 = v380;
      (*(v379 + 8))(v259, v380);
      v260 = *(&v415 + 1);
      v261 = v416;
      v262 = sub_10002A400(&v414, *(&v415 + 1));
      *(&v412 + 1) = v260;
      v413 = v261[1];
      v263 = sub_1000056E0(&v411);
      (*(*(v260 - 8) + 16))(v263, v262, v260);
      sub_100007000(&v414);
    }

    v219 = v390;
  }

  v414 = v411;
  v415 = v412;
  v416 = v413;
  sub_10067860C(v393, v386);
  sub_100031660(v417, &v411, &qword_100975610);
  if (v384)
  {
    v264 = v384;
    if (([v264 isHidden] & 1) == 0 && objc_msgSend(v264, "hasContent"))
    {
      v265 = type metadata accessor for DynamicTypeButton();
      v410 = &protocol witness table for UIButton;
      *(&v409 + 1) = v265;
      *&v408 = v264;
      goto LABEL_84;
    }
  }

  v410 = 0;
  v408 = 0u;
  v409 = 0u;
LABEL_84:
  v266 = v379;
  v267 = v391;
  if (v391)
  {
    v268 = type metadata accessor for LayoutViewPlaceholder();
    v267 = &protocol witness table for LayoutViewPlaceholder;
    v269 = v391;
  }

  else
  {
    v269 = 0;
    v268 = 0;
    v407[2] = 0;
    v407[1] = 0;
  }

  v407[0] = v269;
  v407[3] = v268;
  v407[4] = v267;
  v270 = type metadata accessor for DynamicTypeButton();
  v406[4] = &protocol witness table for UIButton;
  v406[3] = v270;
  v406[0] = v385;
  if (v219)
  {
    v271 = type metadata accessor for LayoutViewPlaceholder();
    v272 = &protocol witness table for LayoutViewPlaceholder;
    v273 = v219;
  }

  else
  {
    v273 = 0;
    v271 = 0;
    v272 = 0;
    v405[2] = 0;
    v405[1] = 0;
  }

  v274 = v358;
  v405[0] = v273;
  v405[3] = v271;
  v405[4] = v272;
  sub_100031660(v389, v358, &qword_100990F78);
  if ((*(v266 + 48))(v274, 1, v255) == 1)
  {

    v275 = v385;
    sub_10002B894(v274, &qword_100990F78);
    v402 = 0u;
    v403 = 0u;
    v404 = 0;
  }

  else
  {
    *(&v403 + 1) = v255;
    v404 = &protocol witness table for LabelPlaceholder;
    v276 = sub_1000056E0(&v402);
    (*(v266 + 32))(v276, v274, v255);

    v277 = v385;
  }

  sub_100031660(&v414, v401, &qword_100975610);
  sub_10067860C(v386, v224);
  sub_100031660(&v411, v395, &qword_100975610);
  v278 = v396;
  if (v396)
  {
    v279 = v397;
    sub_10002A400(v395, v396);
    v280 = type metadata accessor for Optional();
    v281 = *(v280 - 8);
    __chkstk_darwin(v280);
    v283 = &v323 - v282;
    LayoutView.nilIfHidden()();
    v284 = *(v278 - 8);
    if ((*(v284 + 48))(v283, 1, v278) == 1)
    {
      (*(v281 + 8))(v283, v280);
      v400 = 0;
      v398 = 0u;
      v399 = 0u;
    }

    else
    {
      *(&v399 + 1) = v278;
      v400 = v279;
      v286 = sub_1000056E0(&v398);
      (*(v284 + 32))(v286, v283, v278);
    }

    v285 = v383;
    sub_100007000(v395);
  }

  else
  {
    sub_10002B894(v395, &qword_100975610);
    v398 = 0u;
    v399 = 0u;
    v400 = 0;
    v285 = v383;
  }

  v287 = v224 + v285[5];
  v288 = v399;
  *v287 = v398;
  *(v287 + 16) = v288;
  *(v287 + 32) = v400;
  sub_100031660(&v408, v224 + v285[6], &unk_10097B860);
  sub_100031660(v407, v395, &qword_100975610);
  v289 = v396;
  if (v396)
  {
    v290 = v397;
    sub_10002A400(v395, v396);
    v291 = type metadata accessor for Optional();
    v292 = *(v291 - 8);
    __chkstk_darwin(v291);
    v294 = &v323 - v293;
    LayoutView.nilIfHidden()();
    v295 = *(v289 - 8);
    if ((*(v295 + 48))(v294, 1, v289) == 1)
    {
      (*(v292 + 8))(v294, v291);
      v400 = 0;
      v398 = 0u;
      v399 = 0u;
    }

    else
    {
      *(&v399 + 1) = v289;
      v400 = v290;
      v296 = sub_1000056E0(&v398);
      (*(v295 + 32))(v296, v294, v289);
    }

    sub_100007000(v395);
    v285 = v383;
  }

  else
  {
    sub_10002B894(v395, &qword_100975610);
    v398 = 0u;
    v399 = 0u;
    v400 = 0;
  }

  v297 = v224 + v285[7];
  v298 = v399;
  *v297 = v398;
  *(v297 + 16) = v298;
  *(v297 + 32) = v400;
  sub_10002C0AC(v406, v224 + v285[8]);
  sub_100031660(v405, v395, &qword_100975610);
  v299 = v396;
  if (v396)
  {
    v300 = v397;
    sub_10002A400(v395, v396);
    v301 = type metadata accessor for Optional();
    v302 = *(v301 - 8);
    __chkstk_darwin(v301);
    v304 = &v323 - v303;
    LayoutView.nilIfHidden()();
    v305 = *(v299 - 8);
    if ((*(v305 + 48))(v304, 1, v299) == 1)
    {
      (*(v302 + 8))(v304, v301);
      v400 = 0;
      v398 = 0u;
      v399 = 0u;
    }

    else
    {
      *(&v399 + 1) = v299;
      v400 = v300;
      v306 = sub_1000056E0(&v398);
      (*(v305 + 32))(v306, v304, v299);
    }

    sub_100007000(v395);
    v285 = v383;
  }

  else
  {
    sub_10002B894(v395, &qword_100975610);
    v398 = 0u;
    v399 = 0u;
    v400 = 0;
  }

  v307 = v224 + v285[9];
  v308 = v399;
  *v307 = v398;
  *(v307 + 16) = v308;
  *(v307 + 32) = v400;
  sub_100031660(&v402, v224 + v285[10], &unk_10097B860);
  sub_100031660(v401, v395, &qword_100975610);
  v309 = v396;
  if (v396)
  {
    v310 = v224;
    v311 = v397;
    sub_10002A400(v395, v396);
    v312 = type metadata accessor for Optional();
    v313 = *(v312 - 8);
    __chkstk_darwin(v312);
    v315 = &v323 - v314;
    LayoutView.nilIfHidden()();
    v316 = *(v309 - 8);
    if ((*(v316 + 48))(v315, 1, v309) == 1)
    {
      sub_10002B894(v401, &qword_100975610);
      sub_10002B894(&v411, &qword_100975610);
      sub_100678670(v386, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10002B894(&v402, &unk_10097B860);
      sub_10002B894(v405, &qword_100975610);
      sub_100007000(v406);
      sub_10002B894(v407, &qword_100975610);
      sub_10002B894(&v408, &unk_10097B860);
      (*(v313 + 8))(v315, v312);
      v400 = 0;
      v398 = 0u;
      v399 = 0u;
    }

    else
    {
      *(&v399 + 1) = v309;
      v400 = v311;
      v317 = sub_1000056E0(&v398);
      (*(v316 + 32))(v317, v315, v309);
      sub_10002B894(v401, &qword_100975610);
      sub_10002B894(&v411, &qword_100975610);
      sub_100678670(v386, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10002B894(&v402, &unk_10097B860);
      sub_10002B894(v405, &qword_100975610);
      sub_100007000(v406);
      sub_10002B894(v407, &qword_100975610);
      sub_10002B894(&v408, &unk_10097B860);
    }

    sub_100007000(v395);
    v285 = v383;
    v224 = v310;
  }

  else
  {
    sub_10002B894(v401, &qword_100975610);
    sub_10002B894(&v411, &qword_100975610);
    sub_100678670(v386, type metadata accessor for ShelfHeaderLayout.Metrics);
    sub_10002B894(&v402, &unk_10097B860);
    sub_10002B894(v405, &qword_100975610);
    sub_100007000(v406);
    sub_10002B894(v407, &qword_100975610);
    sub_10002B894(&v408, &unk_10097B860);
    sub_10002B894(v395, &qword_100975610);
    v398 = 0u;
    v399 = 0u;
    v400 = 0;
  }

  v318 = v224 + v285[11];
  v319 = v399;
  *v318 = v398;
  *(v318 + 16) = v319;
  *(v318 + 32) = v400;
  v320 = v360;
  sub_100679FD4(v224, v360, type metadata accessor for ShelfHeaderLayout);
  v321 = ShelfLayoutContext.traitCollection.getter();
  ShelfHeaderLayout.measure(toFit:with:)(v321);

  sub_100678670(v320, type metadata accessor for ShelfHeaderLayout);
  sub_10002B894(&v414, &qword_100975610);
  sub_10002B894(v417, &qword_100975610);
  sub_10002B894(v389, &qword_100990F78);
  sub_100678670(v393, type metadata accessor for ShelfHeaderLayout.Metrics);
  return v152;
}

uint64_t sub_10067044C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v213 = a5;
  v226 = *&a3;
  v227 = a2;
  ObjectType = swift_getObjectType();
  v221 = type metadata accessor for AutomationSemantics();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v219 = &v199 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v217 = &v199 - v11;
  __chkstk_darwin(v12);
  v218 = &v199 - v13;
  v216 = sub_10002849C(&unk_1009731F0);
  v215 = *(v216 - 8);
  __chkstk_darwin(v216);
  v214 = &v199 - v14;
  v15 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v15 - 8);
  v235 = &v199 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v231 = &v199 - v18;
  v230 = sub_10002849C(&qword_100990F68);
  __chkstk_darwin(v230);
  v234 = &v199 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v233 = &v199 - v21;
  __chkstk_darwin(v22);
  v232 = &v199 - v23;
  __chkstk_darwin(v24);
  v240 = &v199 - v25;
  __chkstk_darwin(v26);
  v239 = &v199 - v27;
  __chkstk_darwin(v28);
  v238 = &v199 - v29;
  v208 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v208);
  v209 = &v199 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10002849C(&unk_100984380);
  __chkstk_darwin(v31 - 8);
  v206 = &v199 - v32;
  v225.super.isa = type metadata accessor for ShelfLayoutContext();
  v33 = *(v225.super.isa - 1);
  __chkstk_darwin(v225.super.isa);
  v222 = v34;
  v223 = &v199 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10002849C(&qword_1009903A0);
  __chkstk_darwin(v35 - 8);
  *&v200 = &v199 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v201 = &v199 - v38;
  __chkstk_darwin(v39);
  v229 = &v199 - v40;
  __chkstk_darwin(v41);
  v228 = &v199 - v42;
  __chkstk_darwin(v43);
  v45 = &v199 - v44;
  v46 = ShelfHeader.eyebrowArtwork.getter();
  ShelfHeader.eyebrowArtworkType.getter();
  sub_100676D1C(v46, v45, &OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtwork, &OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkView, &OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkType);

  sub_10002B894(v45, &qword_1009903A0);
  v236 = *&v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowButton];
  v47 = ShelfHeader.eyebrow.getter();
  v49 = v48;
  v237 = a4;
  v50 = ShelfLayoutContext.traitCollection.getter();
  v51 = ShelfHeader.eyebrowTrailingArtwork.getter();
  v224 = a1;
  if (v51)
  {
    if (qword_10096EC00 != -1)
    {
      swift_once();
    }

    v52 = [qword_100990DE0 configurationWithTraitCollection:v50];
    v53 = static SystemImage.load(artwork:with:includePrivateImages:)();
  }

  else
  {
    v53 = 0;
  }

  v54 = sub_1006790BC(v47, v49, v50, v53);

  [v236 setAttributedTitle:v54 forState:0];

  v55 = ShelfHeader.titleArtwork.getter();
  ShelfHeader.titleArtworkType.getter();
  sub_100676D1C(v55, v45, &OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtwork, &OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkView, &OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkType);

  sub_10002B894(v45, &qword_1009903A0);
  v56 = *&v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleButton];
  v57 = ShelfHeader.title.getter();
  v59 = v58;
  v60 = v237;
  v61 = ShelfLayoutContext.traitCollection.getter();
  v62 = ShelfHeader.titleAction.getter();
  if (v62)
  {
  }

  v63 = sub_1006793DC(v57, v59, v61, v62 != 0);

  v211 = v56;
  [v56 setAttributedTitle:v63 forState:0];

  v64 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_subtitleLabel];
  ShelfHeader.subtitle.getter();
  if (v65)
  {
    v66 = String._bridgeToObjectiveC()();
  }

  else
  {
    v66 = 0;
  }

  v212 = v64;
  [v64 setText:v66];

  v67 = ShelfHeader.accessoryAction.getter();
  v68 = sub_1006795B8(v67);
  if (v70 == -1)
  {
    v82 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryButton];
    [v82 setTitle:0 forState:0];
    v210 = v82;
    [v82 setImage:0 forState:0];
  }

  else
  {
    v71 = v70;
    v72 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryButton];
    v210 = v72;
    if (v70)
    {
      v73 = v68;
      v74 = v69;
      [v72 setTitle:0 forState:0];
      v75 = v72;
      v76 = ShelfLayoutContext.traitCollection.getter();
      sub_100005744(0, &qword_1009730E0);
      if (qword_10096EC58 != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for FontUseCase();
      sub_1000056A8(v77, qword_100990E68);
      v78 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
      v79 = [objc_opt_self() configurationWithFont:v78 scale:2];
      v80 = String._bridgeToObjectiveC()();
      sub_100679E90(v73, v74, v71);
      v81 = [objc_opt_self() _systemImageNamed:v80 withConfiguration:v79];

      [v75 setImage:v81 forState:0];
      v60 = v237;
    }

    else
    {
      v83 = v72;
      v84 = v68;
      v85 = v69;
      v86 = String._bridgeToObjectiveC()();
      sub_100679E90(v84, v85, v71);
      [v83 setTitle:v86 forState:0];

      [v83 setImage:0 forState:0];
    }
  }

  v87 = ShelfHeader.titleAction.getter();
  if (v87)
  {
    v88 = swift_allocObject();
    *(v88 + 24) = v226;
    swift_unknownObjectWeakInit();
    v89 = v223;
    isa = v225.super.isa;
    (*(v33 + 16))(v223, v60, v225.super.isa);
    v91 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = v88;
    (*(v33 + 32))(v92 + v91, v89, isa);

    v87 = swift_allocObject();
    *(v87 + 16) = sub_100679FBC;
    *(v87 + 24) = v92;
    v93 = sub_10067A04C;
  }

  else
  {
    v93 = 0;
  }

  v94 = &v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction];
  v95 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction];
  *v94 = v93;
  v94[1] = v87;
  sub_10001F63C(v95);
  v96 = ShelfHeader.accessoryAction.getter();
  if (v96)
  {
    v97 = swift_allocObject();
    *(v97 + 24) = v226;
    swift_unknownObjectWeakInit();
    v98 = v223;
    v99 = v225.super.isa;
    (*(v33 + 16))(v223, v60, v225.super.isa);
    v100 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = v97;
    (*(v33 + 32))(v101 + v100, v98, v99);

    v96 = swift_allocObject();
    *(v96 + 16) = sub_100679F2C;
    *(v96 + 24) = v101;
    v102 = sub_10067A04C;
  }

  else
  {
    v102 = 0;
  }

  v103 = &v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryAction];
  v104 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryAction];
  *v103 = v102;
  v103[1] = v96;
  sub_10001F63C(v104);
  v105 = ShelfHeader.eyebrowAction.getter();
  if (v105)
  {
    v106 = swift_allocObject();
    *(v106 + 24) = v226;
    swift_unknownObjectWeakInit();
    v107 = v223;
    v108 = v225.super.isa;
    (*(v33 + 16))(v223, v60, v225.super.isa);
    v109 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v110 = swift_allocObject();
    *(v110 + 16) = v106;
    (*(v33 + 32))(v110 + v109, v107, v108);

    v105 = swift_allocObject();
    *(v105 + 16) = sub_100679F14;
    *(v105 + 24) = v110;
    v111 = sub_10041D558;
  }

  else
  {
    v111 = 0;
  }

  v112 = &v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowAction];
  v113 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowAction];
  *v112 = v111;
  v112[1] = v105;
  sub_10001F63C(v113);
  v114 = v206;
  ShelfHeader.configuration.getter();
  v115 = type metadata accessor for ShelfHeader.Configuration();
  (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
  v116 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_configuration;
  swift_beginAccess();
  sub_1006786D0(v114, &v6[v116]);
  swift_endAccess();
  sub_100674B50();
  sub_10002B894(v114, &unk_100984380);
  v117 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtwork];
  v118 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkType;
  swift_beginAccess();
  v119 = v228;
  sub_100031660(&v6[v118], v228, &qword_1009903A0);
  v120 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtwork];
  v121 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkType;
  swift_beginAccess();
  v122 = v229;
  sub_100031660(&v6[v121], v229, &qword_1009903A0);
  v222 = v120;

  v227 = v117;

  sub_100678740();
  v223 = v6;
  v123 = [v6 traitCollection];
  if (qword_10096EC40 != -1)
  {
    swift_once();
  }

  v124 = type metadata accessor for FontUseCase();
  sub_1000056A8(v124, qword_100990E20);
  v125 = FontUseCase.makeFontDescriptor(compatibleWith:)(v123).super.isa;
  [(objc_class *)v125 pointSize];
  v127 = v126;
  v128 = objc_opt_self();
  v204 = v125;
  v205 = [v128 fontWithDescriptor:v125 size:v127];
  [v205 lineHeight];
  v206 = v129;
  v130 = v230;
  sub_100672318(v238, v238 + *(v230 + 48), v119);
  if (qword_10096EC48 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v124, qword_100990E38);
  v131 = FontUseCase.makeFontDescriptor(compatibleWith:)(v123).super.isa;
  [(objc_class *)v131 pointSize];
  v202 = v131;
  v203 = [v128 fontWithDescriptor:v131 size:?];
  [v203 lineHeight];
  v226 = v132;
  sub_10067297C(v239, v239 + *(v130 + 48), v122);
  v225.super.isa = v123;
  v133 = [(objc_class *)v123 preferredContentSizeCategory];
  v134 = static UIContentSizeCategory.> infix(_:_:)();

  if ((v134 & 1) == 0 || (v135 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v136 = v201;
    sub_100031660(v122, v201, &qword_1009903A0);
    v137 = type metadata accessor for ShelfHeader.ArtworkType();
    v138 = *(v137 - 8);
    v135 = 7.0;
    if ((*(v138 + 48))(v136, 1, v137) != 1)
    {
      v139 = v200;
      sub_100031660(v136, v200, &qword_1009903A0);
      v140 = (*(v138 + 88))(v139, v137);
      if (v140 != enum case for ShelfHeader.ArtworkType.icon(_:))
      {
        v135 = 5.0;
        if (v140 != enum case for ShelfHeader.ArtworkType.category(_:))
        {
          (*(v138 + 8))(v139, v137);
          v135 = 7.0;
        }
      }
    }

    sub_10002B894(v136, &qword_1009903A0);
  }

  ObjectType = *&v135;
  if (qword_10096EC58 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v124, qword_100990E68);
  v141.super.isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v225).super.isa;
  [(objc_class *)v141.super.isa pointSize];
  v142 = [v128 fontWithDescriptor:v141.super.isa size:?];
  [v142 lineHeight];
  v144 = v143;
  static UIEdgeInsets.vertical(top:bottom:)();
  v201 = v145;
  v147 = v146;
  v149 = v148;
  v151 = v150;
  static UIEdgeInsets.vertical(top:bottom:)();
  v153 = v152;
  v155 = v154;
  v157 = v156;
  v159 = v158;
  v160 = v238;
  sub_100031660(v238, v240, &qword_100990F68);
  sub_100031660(v160, v232, &qword_100990F68);
  if (v227)
  {
    Artwork.size.getter();
    v161 = v231;
    AspectRatio.init(_:_:)();
    v162 = 0;
  }

  else
  {
    v162 = 1;
    v161 = v231;
  }

  v163 = v226 - v144;
  v164 = type metadata accessor for AspectRatio();
  v165 = *(*(v164 - 8) + 56);
  v165(v161, v162, 1, v164);
  v166 = *&UIEdgeInsetsZero.top;
  v199 = *&UIEdgeInsetsZero.bottom;
  v200 = v166;
  v167 = v239;
  sub_100031660(v239, v233, &qword_100990F68);
  sub_100031660(v167, v234, &qword_100990F68);
  if (v222)
  {
    Artwork.size.getter();
    v168 = v235;
    AspectRatio.init(_:_:)();

    v169 = 0;
  }

  else
  {

    v169 = 1;
    v168 = v235;
  }

  v170 = v228;

  sub_10002B894(v239, &qword_100990F68);
  sub_10002B894(v238, &qword_100990F68);
  sub_10002B894(v229, &qword_1009903A0);
  sub_10002B894(v170, &qword_1009903A0);
  v165(v168, v169, 1, v164);
  v171 = *(v230 + 48);
  v172 = v208;
  v173 = *(v208 + 40);
  v174 = v209;
  v165(&v209[v173], 1, 1, v164);
  v239 = v172[15];
  v165(&v174[v239], 1, 1, v164);
  *v174 = v201;
  *(v174 + 1) = v147;
  *(v174 + 2) = v149;
  *(v174 + 3) = v151;
  *(v174 + 4) = v206;
  *(v174 + 5) = v153;
  *(v174 + 6) = v155;
  *(v174 + 7) = v157;
  *(v174 + 8) = v159;
  v175 = v172[7];
  v176 = type metadata accessor for StaticDimension();
  v177 = *(v176 - 8);
  v178 = *(v177 + 32);
  v178(&v174[v175], v240, v176);
  v179 = v232;
  v178(&v174[v172[8]], v232 + v171, v176);
  *&v174[v172[9]] = 0x4008000000000000;
  sub_1000315F8(v231, &v174[v173], &unk_1009732A0);
  *&v174[v172[11]] = v226;
  v180 = &v174[v172[12]];
  v181 = v199;
  *v180 = v200;
  *(v180 + 1) = v181;
  v182 = v233;
  v178(&v174[v172[13]], v233, v176);
  v183 = v234;
  v178(&v174[v172[14]], v234 + v171, v176);
  sub_1000315F8(v235, &v174[v239], &unk_1009732A0);
  *&v174[v172[16]] = ObjectType;
  v184 = &v174[v172[17]];
  *v184 = v163;
  *(v184 + 2) = 0;
  *(v184 + 3) = 0;
  *(v184 + 1) = 0x4024000000000000;
  v185 = *(v177 + 8);
  v185(v183, v176);
  v185(v182 + v171, v176);
  v185(v179, v176);
  v185(v240 + v171, v176);
  v186 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_metrics;
  v187 = v223;
  swift_beginAccess();
  sub_100679EB0(v174, &v187[v186]);
  swift_endAccess();
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  sub_1006771BC();

  if (ShelfHeader.titleAction.getter())
  {

    v188 = ShelfHeader.eyebrowAction.getter();
    v189 = v217;
    if (v188 || ShelfHeader.accessoryAction.getter())
    {

      v190 = 0;
    }

    else
    {
      v190 = 1;
    }
  }

  else
  {
    v190 = 0;
    v189 = v217;
  }

  v187[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_shouldHighlightEntireView] = v190;
  [*&v187[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_containerView] setUserInteractionEnabled:v190 ^ 1u];
  v191 = v214;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v192 = v216;
  ReadOnlyLens.subscript.getter();

  (*(v215 + 8))(v191, v192);
  v244 = 0u;
  v243 = 0u;
  v242 = &type metadata for AnyHashable;
  v241 = swift_allocObject();
  sub_10003D4AC(&v245, v241 + 16);
  static AutomationSemantics.shelf(_:id:parentId:)();
  sub_10002B894(&v243, &unk_1009711D0);
  sub_10002B894(&v241, &unk_1009711D0);
  v193 = ShelfHeader.titleAction.getter();
  if (v193)
  {
  }

  *(&v244 + 1) = &type metadata for Bool;
  LOBYTE(v243) = v193 != 0;
  v194 = v218;
  AutomationSemantics.attribute(key:value:)();
  v195 = *(v220 + 8);
  v196 = v221;
  v195(v189, v221);
  sub_10002B894(&v243, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();
  v195(v194, v196);
  v244 = 0u;
  v243 = 0u;
  v242 = &type metadata for AnyHashable;
  v241 = swift_allocObject();
  sub_10003D4AC(&v245, v241 + 16);
  v197 = v219;
  static AutomationSemantics.shelf(_:id:parentId:)();
  sub_10002B894(&v243, &unk_1009711D0);
  sub_10002B894(&v241, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();
  v195(v197, v196);
  v244 = 0u;
  v243 = 0u;
  v242 = &type metadata for AnyHashable;
  v241 = swift_allocObject();
  sub_10003D4AC(&v245, v241 + 16);
  static AutomationSemantics.shelf(_:id:parentId:)();
  sub_10002B894(&v243, &unk_1009711D0);
  sub_10002B894(&v241, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();
  v195(v197, v196);
  v244 = 0u;
  v243 = 0u;
  v242 = &type metadata for AnyHashable;
  v241 = swift_allocObject();
  sub_10003D4AC(&v245, v241 + 16);
  static AutomationSemantics.shelf(_:id:parentId:)();
  sub_10002B894(&v243, &unk_1009711D0);
  sub_10002B894(&v241, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();
  v195(v197, v196);
  v244 = 0u;
  v243 = 0u;
  v242 = &type metadata for AnyHashable;
  v241 = swift_allocObject();
  sub_10003D4AC(&v245, v241 + 16);
  static AutomationSemantics.shelf(_:id:parentId:)();
  sub_10002B894(&v243, &unk_1009711D0);
  sub_10002B894(&v241, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();
  v195(v197, v196);
  v244 = 0u;
  v243 = 0u;
  v242 = &type metadata for AnyHashable;
  v241 = swift_allocObject();
  sub_10003D4AC(&v245, v241 + 16);
  static AutomationSemantics.shelf(_:id:parentId:)();
  sub_10002B894(&v243, &unk_1009711D0);
  sub_10002B894(&v241, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();
  v195(v197, v196);
  [v187 setNeedsLayout];
  return sub_10003D614(&v245);
}

uint64_t sub_100672318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FontSource();
  v52 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_1009903A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = sub_10002849C(&qword_100990F68);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  sub_100031660(a3, v13, &qword_1009903A0);
  v17 = type metadata accessor for ShelfHeader.ArtworkType();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v55 = v13;
  v20 = v19(v13, 1, v17);
  v53 = a1;
  v54 = a2;
  if (v20 != 1)
  {
    sub_100031660(v55, v10, &qword_1009903A0);
    if ((*(v18 + 88))(v10, v17) == enum case for ShelfHeader.ArtworkType.category(_:))
    {
      v21 = v14;
      v50 = *(v14 + 48);
      if (qword_10096EC40 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for FontUseCase();
      v48 = sub_1000056A8(v22, qword_100990E20);
      v23 = *(v22 - 8);
      v47 = *(v23 + 16);
      v49 = v23 + 16;
      v24 = v51;
      v47(v51, v48, v22);
      LODWORD(v46) = enum case for FontSource.useCase(_:);
      v25 = v52;
      v45 = *(v52 + 104);
      v45(v24);
      v57 = v6;
      v58 = &protocol witness table for FontSource;
      v26 = sub_1000056E0(v56);
      v27 = *(v25 + 16);
      v27(v26, v24, v6);
      StaticDimension.init(_:scaledLike:)();
      v28 = *(v25 + 8);
      v28(v24, v6);
      v47(v24, v48, v22);
      (v45)(v24, v46, v6);
      v57 = v6;
      v58 = &protocol witness table for FontSource;
      v29 = sub_1000056E0(v56);
      v27(v29, v24, v6);
      StaticDimension.init(_:scaledLike:)();
      v28(v24, v6);
      v31 = v53;
      v30 = v54;
      goto LABEL_10;
    }

    (*(v18 + 8))(v10, v17);
  }

  v49 = *(v14 + 48);
  v50 = v14;
  if (qword_10096EC40 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for FontUseCase();
  v47 = sub_1000056A8(v32, qword_100990E20);
  v33 = *(v32 - 8);
  v46 = *(v33 + 16);
  v48 = v33 + 16;
  v34 = v51;
  v46(v51, v47, v32);
  v35 = enum case for FontSource.useCase(_:);
  v36 = v52;
  v45 = *(v52 + 104);
  (v45)(v34, enum case for FontSource.useCase(_:), v6);
  v57 = v6;
  v58 = &protocol witness table for FontSource;
  v37 = sub_1000056E0(v56);
  v38 = *(v36 + 16);
  v38(v37, v34, v6);
  StaticDimension.init(_:scaledLike:)();
  v39 = *(v36 + 8);
  v39(v34, v6);
  v46(v34, v47, v32);
  (v45)(v34, v35, v6);
  v57 = v6;
  v58 = &protocol witness table for FontSource;
  v40 = sub_1000056E0(v56);
  v38(v40, v34, v6);
  StaticDimension.init(_:scaledLike:)();
  v39(v34, v6);
  v31 = v53;
  v30 = v54;
  v21 = v50;
LABEL_10:
  sub_10002B894(v55, &qword_1009903A0);
  v41 = *(v21 + 48);
  v42 = type metadata accessor for StaticDimension();
  v43 = *(*(v42 - 8) + 32);
  v43(v31, v16, v42);
  return (v43)(v30, &v16[v41], v42);
}

uint64_t sub_10067297C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FontSource();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_1009903A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = sub_10002849C(&qword_100990F68);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  sub_100031660(a3, v14, &qword_1009903A0);
  v18 = type metadata accessor for ShelfHeader.ArtworkType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v57 = v14;
  v21 = v20(v14, 1, v18);
  v55 = a1;
  v56 = a2;
  if (v21 != 1)
  {
    sub_100031660(v57, v11, &qword_1009903A0);
    if ((*(v19 + 88))(v11, v18) == enum case for ShelfHeader.ArtworkType.category(_:))
    {
      v22 = v17;
      v23 = v15;
      v52 = *(v15 + 48);
      if (qword_10096EC48 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for FontUseCase();
      v50 = sub_1000056A8(v24, qword_100990E38);
      v25 = *(v24 - 8);
      v49 = *(v25 + 16);
      v51 = v25 + 16;
      v49(v8, v50, v24);
      LODWORD(v48) = enum case for FontSource.useCase(_:);
      v27 = v53;
      v26 = v54;
      v47 = *(v53 + 104);
      v47(v8);
      v59 = v26;
      v60 = &protocol witness table for FontSource;
      v28 = sub_1000056E0(v58);
      v29 = *(v27 + 16);
      v29(v28, v8, v26);
      StaticDimension.init(_:scaledLike:)();
      v30 = *(v27 + 8);
      v30(v8, v26);
      v49(v8, v50, v24);
      (v47)(v8, v48, v26);
      v59 = v26;
      v60 = &protocol witness table for FontSource;
      v31 = sub_1000056E0(v58);
      v29(v31, v8, v26);
      StaticDimension.init(_:scaledLike:)();
      v30(v8, v26);
      v33 = v55;
      v32 = v56;
      goto LABEL_10;
    }

    (*(v19 + 8))(v11, v18);
  }

  v51 = *(v15 + 48);
  v52 = v15;
  if (qword_10096EC48 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for FontUseCase();
  v49 = sub_1000056A8(v34, qword_100990E38);
  v35 = *(v34 - 8);
  v48 = *(v35 + 16);
  v50 = v35 + 16;
  v48(v8, v49, v34);
  v36 = enum case for FontSource.useCase(_:);
  v37 = v53;
  v38 = v54;
  v47 = *(v53 + 104);
  (v47)(v8, enum case for FontSource.useCase(_:), v54);
  v59 = v38;
  v60 = &protocol witness table for FontSource;
  v39 = sub_1000056E0(v58);
  v40 = *(v37 + 16);
  v40(v39, v8, v38);
  StaticDimension.init(_:scaledLike:)();
  v41 = *(v37 + 8);
  v41(v8, v38);
  v48(v8, v49, v34);
  (v47)(v8, v36, v38);
  v59 = v38;
  v60 = &protocol witness table for FontSource;
  v42 = sub_1000056E0(v58);
  v40(v42, v8, v38);
  StaticDimension.init(_:scaledLike:)();
  v41(v8, v38);
  v22 = v17;
  v33 = v55;
  v32 = v56;
  v23 = v52;
LABEL_10:
  sub_10002B894(v57, &qword_1009903A0);
  v43 = *(v23 + 48);
  v44 = type metadata accessor for StaticDimension();
  v45 = *(*(v44 - 8) + 32);
  v45(v33, v22, v44);
  return (v45)(v32, &v22[v43], v44);
}

id sub_100672FD0()
{
  result = [objc_opt_self() configurationWithScale:1];
  qword_100990DE0 = result;
  return result;
}

void sub_100673084(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = objc_allocWithZone(NSAttributedString);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithString:v6];

  *a4 = v7;
}

uint64_t sub_10067314C(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = type metadata accessor for FontUseCase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DynamicTypeButton();
  if (*a2 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v7, a3);
  (*(v8 + 16))(v10, v11, v7);
  result = DynamicTypeButton.__allocating_init(useCase:)();
  *a4 = result;
  return result;
}

char *sub_100673308(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v179 = a4;
  v178 = a3;
  v177 = a2;
  v176 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v6 - 8);
  v186 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v183 = &v158 - v9;
  v182 = sub_10002849C(&qword_100990F68);
  __chkstk_darwin(v182);
  v185 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v184 = &v158 - v12;
  __chkstk_darwin(v13);
  v192 = &v158 - v14;
  __chkstk_darwin(v15);
  v191 = &v158 - v16;
  __chkstk_darwin(v17);
  v190 = &v158 - v18;
  __chkstk_darwin(v19);
  v189 = &v158 - v20;
  v21 = sub_10002849C(&qword_1009903A0);
  __chkstk_darwin(v21 - 8);
  v158 = &v158 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v160 = &v158 - v24;
  __chkstk_darwin(v25);
  v193 = &v158 - v26;
  __chkstk_darwin(v27);
  v181 = &v158 - v28;
  v173 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v173);
  v174 = (&v158 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  top = COERCE_DOUBLE(type metadata accessor for DirectionalTextAlignment());
  v170 = *(*&top - 8);
  __chkstk_darwin(*&top);
  *&v172 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v31 - 8);
  v169 = &v158 - v32;
  v33 = type metadata accessor for FontUseCase();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v188 = &v158 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Separator.Position();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v158 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Separator();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v158 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_containerView;
  *&v5[v44] = [objc_allocWithZone(UIView) init];
  v180.super.isa = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_separatorView;
  (*(v37 + 104))(v39, enum case for Separator.Position.top(_:), v36);
  v196 = type metadata accessor for ZeroDimension();
  v197 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v195);
  static ZeroDimension.zero.getter();
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  v45 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v46 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v47 = *(v41 + 40);
  v48 = v45;
  v47(&v45[v46], v43, v40);
  swift_endAccess();

  *&v5[v180.super.isa] = v48;
  v49 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowButton;
  type metadata accessor for DynamicTypeButton();
  if (qword_10096EC40 != -1)
  {
    swift_once();
  }

  v50 = sub_1000056A8(v33, qword_100990E20);
  v168 = v34;
  v51 = *(v34 + 16);
  v166 = *&v50;
  v180.super.isa = v51;
  (v51)(v188);
  *&v5[v49] = DynamicTypeButton.__allocating_init(useCase:)();
  v164 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtwork;
  *&v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtwork] = 0;
  v52 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkType;
  v53 = type metadata accessor for ShelfHeader.ArtworkType();
  v161 = *(v53 - 8);
  v54 = *(v161 + 56);
  v165 = v52;
  v54(&v52[v5], 1, 1, v53);
  v55 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkView;
  type metadata accessor for ArtworkView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v55] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v57 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleButton;
  if (qword_10096EC48 != -1)
  {
    swift_once();
  }

  v163 = sub_1000056A8(v33, qword_100990E38);
  (v180.super.isa)(v188);
  *&v5[v57] = DynamicTypeButton.__allocating_init(useCase:)();
  v162 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtwork;
  *&v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtwork] = 0;
  v58 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkType;
  v159 = v53;
  v54(&v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkType], 1, 1, v53);
  v59 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkView;
  *&v5[v59] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v60 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryButton;
  if (qword_10096EC58 != -1)
  {
    swift_once();
  }

  v167 = sub_1000056A8(v33, qword_100990E68);
  isa = v180.super.isa;
  (v180.super.isa)(v188);
  *&v5[v60] = DynamicTypeButton.__allocating_init(useCase:)();
  v62 = &v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction];
  *v62 = 0;
  *(v62 + 1) = 0;
  v63 = &v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryAction];
  *v63 = 0;
  *(v63 + 1) = 0;
  v64 = &v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowAction];
  *v64 = 0;
  *(v64 + 1) = 0;
  v65 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_subtitleLabel;
  v66 = v182;
  v67 = v168;
  v68 = isa;
  if (qword_10096EC50 != -1)
  {
    swift_once();
  }

  v69 = sub_1000056A8(v33, qword_100990E50);
  v70 = v169;
  v68(v169, v69, v33);
  (*(v67 + 56))(v70, 0, 1, v33);
  (*(*&v170 + 104))(COERCE_CGFLOAT(*&v172), enum case for DirectionalTextAlignment.none(_:), COERCE_CGFLOAT(*&top));
  v71 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v65] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v72 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_configuration;
  v73 = type metadata accessor for ShelfHeader.Configuration();
  (*(*(v73 - 8) + 56))(&v5[v72], 1, 1, v73);
  v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_shouldHighlightEntireView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch] = 0;
  v74 = *&v164[v5];
  v75 = v165;
  swift_beginAccess();
  v76 = v181;
  sub_100031660(v75 + v5, v181, &qword_1009903A0);
  v77 = *&v162[v5];
  swift_beginAccess();
  sub_100031660(&v5[v58], v193, &qword_1009903A0);
  v78 = objc_opt_self();
  v168 = v77;

  v188 = v74;

  v79 = [v78 currentTraitCollection];
  bottom = UIEdgeInsetsZero.bottom;
  v81 = FontUseCase.makeFontDescriptor(compatibleWith:)(v79).super.isa;
  [(objc_class *)v81 pointSize];
  v83 = v82;
  v84 = objc_opt_self();
  v164 = v81;
  v165 = [v84 fontWithDescriptor:v81 size:v83];
  [v165 lineHeight];
  v169 = v85;
  sub_100672318(v189, v189 + *(v66 + 48), v76);
  v86 = FontUseCase.makeFontDescriptor(compatibleWith:)(v79).super.isa;
  [(objc_class *)v86 pointSize];
  v162 = v86;
  v163 = [v84 fontWithDescriptor:v86 size:?];
  [v163 lineHeight];
  v170 = v87;
  sub_10067297C(v190, v190 + *(v66 + 48), v193);
  v180.super.isa = v79;
  v88 = [(objc_class *)v79 preferredContentSizeCategory];
  LOBYTE(v76) = static UIContentSizeCategory.> infix(_:_:)();

  if ((v76 & 1) == 0 || (v89 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v90 = v160;
    sub_100031660(v193, v160, &qword_1009903A0);
    v91 = v161;
    v92 = v159;
    v89 = 7.0;
    if ((*(v161 + 48))(v90, 1, v159) != 1)
    {
      v93 = v158;
      sub_100031660(v90, v158, &qword_1009903A0);
      v94 = (*(v91 + 88))(v93, v92);
      if (v94 != enum case for ShelfHeader.ArtworkType.icon(_:))
      {
        v89 = 5.0;
        if (v94 != enum case for ShelfHeader.ArtworkType.category(_:))
        {
          (*(v161 + 8))(v93, v92);
          v89 = 7.0;
        }
      }
    }

    sub_10002B894(v90, &qword_1009903A0);
  }

  v166 = v89;
  v95.super.isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v180).super.isa;
  [(objc_class *)v95.super.isa pointSize];
  v96 = [v84 fontWithDescriptor:v95.super.isa size:?];
  [v96 lineHeight];
  v98 = v97;
  top = UIEdgeInsetsZero.top;
  static UIEdgeInsets.vertical(top:bottom:)();
  v167 = v99;
  v161 = v100;
  v160 = v101;
  v159 = v102;
  static UIEdgeInsets.vertical(top:bottom:)();
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v111 = v189;
  sub_100031660(v189, v191, &qword_100990F68);
  sub_100031660(v111, v192, &qword_100990F68);
  v172 = bottom;
  if (v188)
  {
    Artwork.size.getter();
    v112 = v183;
    AspectRatio.init(_:_:)();
    v113 = 0;
  }

  else
  {
    v113 = 1;
    v112 = v183;
  }

  v114 = type metadata accessor for AspectRatio();
  v115 = *(*(v114 - 8) + 56);
  v115(v112, v113, 1, v114);
  left = UIEdgeInsetsZero.left;
  right = UIEdgeInsetsZero.right;
  v118 = v190;
  sub_100031660(v190, v184, &qword_100990F68);
  sub_100031660(v118, v185, &qword_100990F68);
  v175 = v5;
  if (v168)
  {
    Artwork.size.getter();
    v119 = v186;
    AspectRatio.init(_:_:)();

    v120 = 0;
  }

  else
  {

    v120 = 1;
    v119 = v186;
  }

  v121 = v182;

  sub_10002B894(v190, &qword_100990F68);
  sub_10002B894(v189, &qword_100990F68);
  sub_10002B894(v193, &qword_1009903A0);
  sub_10002B894(v181, &qword_1009903A0);
  v115(v119, v120, 1, v114);
  v122 = v170;
  v123 = v170 - v98;
  v124 = *(v121 + 48);
  v125 = v173;
  v126 = *(v173 + 40);
  v127 = v174;
  v115(v174 + v126, 1, 1, v114);
  v193 = v125[15];
  v115(v127 + v193, 1, 1, v114);
  v128 = v161;
  *v127 = v167;
  v127[1] = v128;
  v129 = v159;
  v127[2] = v160;
  v127[3] = v129;
  v127[4] = v169;
  v127[5] = v104;
  v127[6] = v106;
  v127[7] = v108;
  v127[8] = v110;
  v130 = v125[7];
  v131 = type metadata accessor for StaticDimension();
  v132 = *(v131 - 8);
  v133 = *(v132 + 32);
  v133(v127 + v130, v191, v131);
  v133(v127 + v125[8], v192 + v124, v131);
  *(v127 + v125[9]) = 0x4008000000000000;
  sub_1000315F8(v183, v127 + v126, &unk_1009732A0);
  *(v127 + v125[11]) = v122;
  v134 = (v127 + v125[12]);
  *v134 = top;
  v134[1] = left;
  v134[2] = v172;
  v134[3] = right;
  v135 = v184;
  v133(v127 + v125[13], v184, v131);
  v136 = v185;
  v133(v127 + v125[14], v185 + v124, v131);
  sub_1000315F8(v186, v127 + v193, &unk_1009732A0);
  *(v127 + v125[16]) = v166;
  v137 = v127 + v125[17];
  *v137 = v123;
  *(v137 + 2) = 0;
  *(v137 + 3) = 0;
  *(v137 + 1) = 0x4024000000000000;
  v138 = *(v132 + 8);
  v138(v136, v131);
  v138(v135 + v124, v131);
  v138(v192, v131);
  v138(v191 + v124, v131);
  v139 = v175;
  sub_100679FD4(v127, &v175[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_metrics], type metadata accessor for ShelfHeaderLayout.Metrics);
  v140 = ObjectType;
  v194.receiver = v139;
  v194.super_class = ObjectType;
  v141 = objc_msgSendSuper2(&v194, "initWithFrame:", v176, v177, v178, v179);
  v142 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleButton;
  v143 = *&v141[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleButton];
  sub_100005744(0, &qword_10097CD40);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v144 = v141;
  v145 = v143;
  v146 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v145 addAction:v146 forControlEvents:0x2000];

  v147 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryButton;
  v148 = *&v144[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryButton];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v149 = v148;
  v150 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v149 addAction:v150 forControlEvents:0x2000];

  v151 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowButton;
  v152 = *&v144[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowButton];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v153 = v152;
  v154 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v153 addAction:v154 forControlEvents:0x2000];

  v155 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_containerView;
  [*&v144[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_containerView] addSubview:*&v144[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_separatorView]];
  [*&v144[v155] addSubview:*&v144[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkView]];
  [*&v144[v155] addSubview:*&v144[v151]];
  [*&v144[v155] addSubview:*&v144[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkView]];
  [*&v144[v155] addSubview:*&v141[v142]];
  [*&v144[v155] addSubview:*&v144[v147]];
  [*&v144[v155] addSubview:*&v144[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_subtitleLabel]];
  [v144 addSubview:*&v144[v155]];
  sub_100674B50();
  sub_10002849C(&qword_10097B110);
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_1007B1890;
  *(v156 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v156 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v156 + 48) = type metadata accessor for UITraitLegibilityWeight();
  *(v156 + 56) = &protocol witness table for UITraitLegibilityWeight;
  v196 = v140;
  v195 = v144;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(&v195);
  return v144;
}

void sub_100674AB8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = &Strong[*a3];
    v7 = *v6;
    if (*v6)
    {
      sub_10000827C(*v6);

      v7();
      sub_10001F63C(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_100674B50()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v2 - 8);
  v118 = &v96 - v3;
  v4 = sub_10002849C(&unk_100987100);
  __chkstk_darwin(v4 - 8);
  v117 = &v96 - v5;
  v115 = type metadata accessor for UIButton.Configuration();
  v119 = *(v115 - 8);
  __chkstk_darwin(v115);
  v101 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v112 = &v96 - v8;
  __chkstk_darwin(v9);
  v11 = &v96 - v10;
  v12 = sub_10002849C(&unk_100984380);
  __chkstk_darwin(v12 - 8);
  v99 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v113 = &v96 - v15;
  __chkstk_darwin(v16);
  v18 = &v96 - v17;
  __chkstk_darwin(v19);
  v102 = &v96 - v20;
  v21 = type metadata accessor for ShelfHeader.Configuration();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_separatorView];
  v26 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_configuration;
  swift_beginAccess();
  v116 = v22;
  v29 = *(v22 + 48);
  v27 = v22 + 48;
  v28 = v29;
  v30 = 1;
  v31 = v29(&v1[v26], 1, v21);
  v121 = v29;
  if (!v31)
  {
    v32 = v116;
    (*(v116 + 16))(v24, &v1[v26], v21);
    v33 = ShelfHeader.Configuration.includeSeparator.getter();
    v34 = v32;
    v28 = v121;
    (*(v34 + 8))(v24, v21);
    v30 = v33 ^ 1;
  }

  [v25 setHidden:v30 & 1];
  v120 = v27;
  v35 = v28(&v1[v26], 1, v21);
  v100 = v24;
  if (!v35)
  {
    v36 = v116;
    (*(v116 + 16))(v24, &v1[v26], v21);
    ShelfHeader.Configuration.eyebrowImageColor.getter();
    (*(v36 + 8))(v24, v21);
  }

  ArtworkView.artworkTintColor.setter();
  v37 = *&v1[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowButton];
  v114 = v26;
  v38 = &v1[v26];
  v39 = v102;
  sub_100031660(v38, v102, &unk_100984380);
  v40 = *&v1[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowAction];
  v98 = [v1 traitCollection];
  static UIButton.Configuration.plain()();
  UIButton.Configuration.titlePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  sub_100031660(v39, v18, &unk_100984380);
  v41 = v21;
  if (v121(v18, 1, v21) == 1)
  {
    sub_10002B894(v18, &unk_100984380);
    v42 = v112;
  }

  else
  {
    v43 = ShelfHeader.Configuration.eyebrowColor.getter();
    (*(v116 + 8))(v18, v21);
    v42 = v112;
    if (v43)
    {
      goto LABEL_11;
    }
  }

  if (qword_10096EC60 != -1)
  {
    swift_once();
  }

  v44 = qword_100990E80;
LABEL_11:
  v97 = v41;
  UIButton.Configuration.baseForegroundColor.setter();
  v45 = sub_100005744(0, &qword_1009730E0);
  if (qword_10096EC40 != -1)
  {
    swift_once();
  }

  v46 = v40 != 0;
  v103 = type metadata accessor for FontUseCase();
  sub_1000056A8(v103, qword_100990E20);
  v47 = v98;
  v111 = v45;
  v48 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  *(swift_allocObject() + 16) = v48;
  v49 = v48;
  v50 = v117;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v51 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v110 = v51;
  v109 = v53;
  v108 = v52 + 56;
  (v53)(v50, 0, 1);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v54 = v118;
  v55 = v119;
  v56 = *(v119 + 16);
  v57 = v115;
  v107 = v119 + 16;
  v106 = v56;
  v56(v118, v11, v115);
  v58 = *(v55 + 56);
  v105 = v55 + 56;
  v104 = v58;
  v58(v54, 0, 1, v57);
  UIButton.configuration.setter();
  [v37 setUserInteractionEnabled:v46];
  [v37 _setWantsAccessibilityUnderline:v46];

  v59 = *(v55 + 8);
  v119 = v55 + 8;
  v112 = v59;
  (v59)(v11, v57);
  sub_10002B894(v102, &unk_100984380);
  v60 = *&v1[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleButton];
  v61 = v113;
  sub_100031660(&v1[v114], v113, &unk_100984380);
  v62 = *&v1[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction];
  v63 = [v1 traitCollection];
  static UIButton.Configuration.plain()();
  UIButton.Configuration.titlePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  v64 = v61;
  v65 = v99;
  sub_100031660(v64, v99, &unk_100984380);
  v66 = v97;
  if (v121(v65, 1, v97) == 1)
  {
    sub_10002B894(v65, &unk_100984380);
  }

  else
  {
    v67 = ShelfHeader.Configuration.titleColor.getter();
    (*(v116 + 8))(v65, v66);
    if (v67)
    {
      goto LABEL_19;
    }
  }

  if (qword_10096EC68 != -1)
  {
    swift_once();
  }

  v68 = qword_100990E88;
LABEL_19:
  UIButton.Configuration.baseForegroundColor.setter();
  v102 = objc_opt_self();
  v69 = [v102 clearColor];
  v70 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v70(v122, 0);
  v71 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v71(v122, 0);
  if (qword_10096EC48 != -1)
  {
    swift_once();
  }

  v72 = v62 != 0;
  sub_1000056A8(v103, qword_100990E38);
  v73 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  *(swift_allocObject() + 16) = v73;
  v74 = v73;
  v75 = v117;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v109(v75, 0, 1, v110);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v76 = v118;
  v77 = v115;
  v106(v118, v42, v115);
  v104(v76, 0, 1, v77);
  UIButton.configuration.setter();
  [v60 setNeedsUpdateConfiguration];
  [v60 setContentHorizontalAlignment:4];
  [v60 setUserInteractionEnabled:v72];
  [v60 _setWantsAccessibilityUnderline:v72];

  (v112)(v42, v77);
  sub_10002B894(v113, &unk_100984380);
  v78 = v114;
  v79 = v121(&v1[v114], 1, v66);
  v80 = v101;
  if (v79)
  {
    v81 = v100;
  }

  else
  {
    v82 = v116;
    v81 = v100;
    (*(v116 + 16))(v100, &v1[v78], v66);
    ShelfHeader.Configuration.titleImageColor.getter();
    (*(v82 + 8))(v81, v66);
  }

  ArtworkView.artworkTintColor.setter();
  static UIButton.Configuration.plain()();
  UIButton.Configuration.titlePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  if (v121(&v1[v78], 1, v66) || (v84 = v116, (*(v116 + 16))(v81, &v1[v78], v66), v85 = ShelfHeader.Configuration.accessoryColor.getter(), (*(v84 + 8))(v81, v66), !v85))
  {
    v83 = [v102 systemBlueColor];
  }

  UIButton.Configuration.baseForegroundColor.setter();
  if (qword_10096EC58 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v103, qword_100990E68);
  v86 = [v1 traitCollection];
  v87 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  *(swift_allocObject() + 16) = v87;
  v88 = v87;
  v89 = v117;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v109(v89, 0, 1, v110);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v90 = v118;
  v106(v118, v80, v77);
  v104(v90, 0, 1, v77);
  UIButton.configuration.setter();
  v91 = *&v1[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_subtitleLabel];
  if (v121(&v1[v78], 1, v66) || (v93 = v78, v94 = v116, (*(v116 + 16))(v81, &v1[v93], v66), v92 = ShelfHeader.Configuration.subtitleColor.getter(), (*(v94 + 8))(v81, v66), !v92))
  {
    if (qword_10096EC70 != -1)
    {
      swift_once();
    }

    v92 = qword_100990E90;
  }

  [v91 setTextColor:v92];

  [v1 setNeedsLayout];
  return (v112)(v80, v77);
}

uint64_t sub_100675B14()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&unk_100984380);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_10002849C(&qword_1009903A0);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v21 - v7;
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "prepareForReuse", v6);
  v9 = &v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowAction];
  v10 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  sub_10001F63C(v10);
  [*&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowButton] setAttributedTitle:0 forState:0];
  *&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtwork] = 0;

  [*&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkView] setHidden:1];
  v11 = type metadata accessor for ShelfHeader.ArtworkType();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkType;
  swift_beginAccess();
  sub_1000315F8(v8, &v0[v12], &qword_1009903A0);
  swift_endAccess();
  v13 = &v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryAction];
  v14 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  sub_10001F63C(v14);
  v15 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryButton];
  [v15 setTitle:0 forState:0];
  [v15 setImage:0 forState:0];
  v16 = &v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction];
  v17 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction];
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_10001F63C(v17);
  [*&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleButton] setAttributedTitle:0 forState:0];
  [*&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_subtitleLabel] setText:0];
  v18 = type metadata accessor for ShelfHeader.Configuration();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_configuration;
  swift_beginAccess();
  sub_1006786D0(v4, &v0[v19]);
  swift_endAccess();
  sub_100674B50();
  return sub_10002B894(v4, &unk_100984380);
}

double sub_100675E70@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_metrics;
  swift_beginAccess();
  v69 = v5;
  sub_10067860C(v2 + v6, v5);
  v7 = *(v2 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_separatorView);
  v86[3] = type metadata accessor for SeparatorView();
  v86[4] = &protocol witness table for UIView;
  v86[0] = v7;
  v8 = *(v2 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowButton);
  v9 = v7;
  if (([v8 isHidden] & 1) != 0 || !objc_msgSend(v8, "hasContent"))
  {
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
  }

  else
  {
    *(&v84 + 1) = type metadata accessor for DynamicTypeButton();
    v85 = &protocol witness table for UIButton;
    *&v83 = v8;
    v10 = v8;
  }

  v11 = *(v2 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkView);
  v12 = type metadata accessor for ArtworkView();
  v82[3] = v12;
  v82[4] = &protocol witness table for UIView;
  v82[0] = v11;
  v13 = *(v2 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleButton);
  v14 = type metadata accessor for DynamicTypeButton();
  v81[3] = v14;
  v81[4] = &protocol witness table for UIButton;
  v80[4] = &protocol witness table for UIView;
  v81[0] = v13;
  v15 = *(v2 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkView);
  v80[3] = v12;
  v80[0] = v15;
  v16 = v11;
  v17 = v13;
  v18 = v15;
  v19 = sub_100676C04();
  v20 = v19;
  if (v19)
  {
    v19 = type metadata accessor for DynamicTypeLabel();
    v21 = &protocol witness table for UILabel;
  }

  else
  {
    v21 = 0;
    v79[1] = 0;
    v79[2] = 0;
  }

  v79[0] = v20;
  v79[3] = v19;
  v79[4] = v21;
  v22 = *(v2 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryButton);
  if (([v22 isHidden] & 1) != 0 || !objc_msgSend(v22, "hasContent"))
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v14;
    v78 = &protocol witness table for UIView;
    *&v76 = v22;
    v23 = v22;
  }

  v24 = v68;
  sub_10067860C(v69, v68);
  sub_100031660(v86, v70, &qword_100975610);
  v25 = v71;
  if (v71)
  {
    v26 = v72;
    sub_10002A400(v70, v71);
    v27 = type metadata accessor for Optional();
    v28 = *(v27 - 8);
    __chkstk_darwin(v27);
    v30 = &v67 - v29;
    LayoutView.nilIfHidden()();
    v31 = *(v25 - 8);
    if ((*(v31 + 48))(v30, 1, v25) == 1)
    {
      (*(v28 + 8))(v30, v27);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v25;
      v75 = v26;
      v32 = sub_1000056E0(&v73);
      (*(v31 + 32))(v32, v30, v25);
    }

    sub_100007000(v70);
  }

  else
  {
    sub_10002B894(v70, &qword_100975610);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v33 = type metadata accessor for ShelfHeaderLayout(0);
  v34 = v24 + v33[5];
  v35 = v74;
  *v34 = v73;
  *(v34 + 16) = v35;
  *(v34 + 32) = v75;
  sub_100031660(&v83, v24 + v33[6], &unk_10097B860);
  sub_100031660(v82, v70, &qword_100975610);
  v36 = v71;
  if (v71)
  {
    v37 = v72;
    sub_10002A400(v70, v71);
    v38 = type metadata accessor for Optional();
    v39 = *(v38 - 8);
    __chkstk_darwin(v38);
    v41 = &v67 - v40;
    LayoutView.nilIfHidden()();
    v42 = *(v36 - 8);
    if ((*(v42 + 48))(v41, 1, v36) == 1)
    {
      (*(v39 + 8))(v41, v38);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v36;
      v75 = v37;
      v43 = sub_1000056E0(&v73);
      (*(v42 + 32))(v43, v41, v36);
    }

    sub_100007000(v70);
  }

  else
  {
    sub_10002B894(v70, &qword_100975610);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v44 = v24 + v33[7];
  v45 = v74;
  *v44 = v73;
  *(v44 + 16) = v45;
  *(v44 + 32) = v75;
  sub_10002C0AC(v81, v24 + v33[8]);
  sub_100031660(v80, v70, &qword_100975610);
  v46 = v71;
  if (v71)
  {
    v47 = v72;
    sub_10002A400(v70, v71);
    v48 = type metadata accessor for Optional();
    v49 = *(v48 - 8);
    __chkstk_darwin(v48);
    v51 = &v67 - v50;
    LayoutView.nilIfHidden()();
    v52 = *(v46 - 8);
    if ((*(v52 + 48))(v51, 1, v46) == 1)
    {
      (*(v49 + 8))(v51, v48);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v46;
      v75 = v47;
      v53 = sub_1000056E0(&v73);
      (*(v52 + 32))(v53, v51, v46);
    }

    sub_100007000(v70);
  }

  else
  {
    sub_10002B894(v70, &qword_100975610);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v54 = v24 + v33[9];
  v55 = v74;
  *v54 = v73;
  *(v54 + 16) = v55;
  *(v54 + 32) = v75;
  sub_100031660(v79, v24 + v33[10], &unk_10097B860);
  sub_100031660(&v76, v70, &qword_100975610);
  v56 = v71;
  if (v71)
  {
    v57 = v72;
    sub_10002A400(v70, v71);
    v58 = type metadata accessor for Optional();
    v67 = &v67;
    v59 = *(v58 - 8);
    __chkstk_darwin(v58);
    v61 = &v67 - v60;
    LayoutView.nilIfHidden()();
    v62 = *(v56 - 8);
    if ((*(v62 + 48))(v61, 1, v56) == 1)
    {
      sub_100678670(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10002B894(&v76, &qword_100975610);
      sub_10002B894(v79, &unk_10097B860);
      sub_10002B894(v80, &qword_100975610);
      sub_100007000(v81);
      sub_10002B894(v82, &qword_100975610);
      sub_10002B894(&v83, &unk_10097B860);
      sub_10002B894(v86, &qword_100975610);
      (*(v59 + 8))(v61, v58);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v56;
      v75 = v57;
      v63 = sub_1000056E0(&v73);
      (*(v62 + 32))(v63, v61, v56);
      sub_100678670(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10002B894(&v76, &qword_100975610);
      sub_10002B894(v79, &unk_10097B860);
      sub_10002B894(v80, &qword_100975610);
      sub_100007000(v81);
      sub_10002B894(v82, &qword_100975610);
      sub_10002B894(&v83, &unk_10097B860);
      sub_10002B894(v86, &qword_100975610);
    }

    sub_100007000(v70);
  }

  else
  {
    sub_100678670(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
    sub_10002B894(&v76, &qword_100975610);
    sub_10002B894(v79, &unk_10097B860);
    sub_10002B894(v80, &qword_100975610);
    sub_100007000(v81);
    sub_10002B894(v82, &qword_100975610);
    sub_10002B894(&v83, &unk_10097B860);
    sub_10002B894(v86, &qword_100975610);
    sub_10002B894(v70, &qword_100975610);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v64 = v24 + v33[11];
  result = *&v73;
  v66 = v74;
  *v64 = v73;
  *(v64 + 16) = v66;
  *(v64 + 32) = v75;
  return result;
}

void *sub_100676C04()
{
  if ([v0 isHidden])
  {
    return 0;
  }

  v1 = [v0 text];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      goto LABEL_9;
    }
  }

  v7 = [v0 attributedText];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [v7 length];

  if (v9 < 1)
  {
    return 0;
  }

LABEL_9:
  v10 = v0;
  return v0;
}

uint64_t sub_100676D1C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v29 = a4;
  v30 = a5;
  v9 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v9 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_1009903A0);
  __chkstk_darwin(v12 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v27 - v16;
  v18 = type metadata accessor for ShelfHeader.ArtworkType();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_100031660(a2, v17, &qword_1009903A0);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      v24 = *(v19 + 32);
      v27[1] = v11;
      v28 = v24;
      v24(v21, v17, v18);
      *(v5 + *a3) = a1;
      swift_retain_n();

      [*(v5 + *v29) setHidden:0];
      Artwork.style.getter();
      ArtworkView.style.setter();

      v28(v14, v21, v18);
      (*(v19 + 56))(v14, 0, 1, v18);
      v25 = *v30;
      swift_beginAccess();
      v23 = v5 + v25;
      goto LABEL_6;
    }

    sub_10002B894(v17, &qword_1009903A0);
  }

  *(v5 + *a3) = 0;

  [*(v5 + *v29) setHidden:1];
  (*(v19 + 56))(v14, 1, 1, v18);
  v22 = *v30;
  swift_beginAccess();
  v23 = v5 + v22;
LABEL_6:
  sub_1000315F8(v14, v23, &qword_1009903A0);
  return swift_endAccess();
}

uint64_t sub_100677084(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v5 = sub_10002849C(&unk_1009731F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    ShelfLayoutContext.shelf.getter();
    a3(v8, ObjectType, v10);
    swift_unknownObjectRelease();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void sub_1006771BC()
{
  v1 = type metadata accessor for Artwork.Crop();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtwork))
  {

    Artwork.size.getter();
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v2 + 8))(v4, v1);
    Artwork.config(_:mode:prefersLayeredImage:)();
    type metadata accessor for ArtworkView();
    sub_10009A098();
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  if (*(v0 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtwork))
  {

    Artwork.size.getter();
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v2 + 8))(v4, v1);
    Artwork.config(_:mode:prefersLayeredImage:)();
    type metadata accessor for ArtworkView();
    sub_10009A098();
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

void sub_1006773F8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_shouldHighlightEntireView] == 1)
  {
    v6 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch;
    v7 = *&v2[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch];
    if (!v7 || [v7 phase] == 3 || (v8 = *&v2[v6]) != 0 && objc_msgSend(v8, "phase") == 4)
    {
      v9 = sub_10066D4C4(a1);
      if (v9)
      {
        v10 = *&v2[v6];
        *&v2[v6] = v9;
        v11 = v9;

        [v2 alpha];
        if (v12 == 0.5)
        {
        }

        else
        {
          v14 = objc_opt_self();
          v15 = swift_allocObject();
          *(v15 + 16) = v2;
          *(v15 + 24) = 0x3FE0000000000000;
          aBlock[4] = sub_10067A05C;
          aBlock[5] = v15;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100007A08;
          aBlock[3] = &unk_1008CD960;
          v16 = _Block_copy(aBlock);
          v17 = v2;

          [v14 animateWithDuration:4 delay:v16 options:0 animations:0.2 completion:0.0];

          _Block_release(v16);
        }

        sub_100005744(0, &qword_100981660);
        sub_10008DB40();
        v13.super.isa = Set._bridgeToObjectiveC()().super.isa;
        objc_msgSendSuper2(&v19, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v2, ObjectType);
      }

      else
      {
        sub_100005744(0, &qword_100981660);
        sub_10008DB40();
        v13.super.isa = Set._bridgeToObjectiveC()().super.isa;
        v21.receiver = v2;
        v21.super_class = ObjectType;
        objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
      }
    }

    else
    {
      sub_100005744(0, &qword_100981660);
      sub_10008DB40();
      v13.super.isa = Set._bridgeToObjectiveC()().super.isa;
      objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", v13.super.isa, a2, v2, ObjectType, v19.receiver, v19.super_class);
    }
  }

  else
  {
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v13.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v22.receiver = v2;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
  }
}

void sub_1006776F0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v14.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v22.receiver = v2;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, "touchesMoved:withEvent:", v14.super.isa, a2, v19.receiver, v19.super_class);
    goto LABEL_14;
  }

  v6 = *&v2[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch];
  if (!v6)
  {
LABEL_11:
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v14.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v21.receiver = v2;
    v21.super_class = ObjectType;
    objc_msgSendSuper2(&v21, "touchesMoved:withEvent:", v14.super.isa, a2, v19.receiver, v19.super_class);
    goto LABEL_14;
  }

  v7 = v6;
  if ((sub_100296044(v7, a1) & 1) == 0)
  {

    goto LABEL_11;
  }

  [v7 locationInView:v2];
  v9 = v8;
  v11 = v10;
  [v2 bounds];
  v23.x = v9;
  v23.y = v11;
  if (CGRectContainsPoint(v24, v23))
  {
    v12 = 0.5;
  }

  else
  {
    v12 = 1.0;
  }

  [v2 alpha];
  if (v13 == v12)
  {
  }

  else
  {
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    *(v16 + 24) = v12;
    aBlock[4] = sub_10067A05C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008CD910;
    v17 = _Block_copy(aBlock);
    v18 = v2;

    [v15 animateWithDuration:4 delay:v17 options:0 animations:0.2 completion:0.0];

    _Block_release(v17);
  }

  sub_100005744(0, &qword_100981660);
  sub_10008DB40();
  v14.super.isa = Set._bridgeToObjectiveC()().super.isa;
  objc_msgSendSuper2(&v19, "touchesMoved:withEvent:", v14.super.isa, a2, v2, ObjectType);
LABEL_14:
}

uint64_t sub_1006779BC(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_100005744(0, &qword_100981660);
  sub_10008DB40();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_100677A6C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v19.receiver = v2;
    v19.super_class = ObjectType;
    objc_msgSendSuper2(&v19, "touchesCancelled:withEvent:", v11.super.isa, a2, v16.receiver, v16.super_class);
    goto LABEL_11;
  }

  v6 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch;
  v7 = *&v2[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch];
  if (!v7)
  {
LABEL_8:
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v18.receiver = v2;
    v18.super_class = ObjectType;
    objc_msgSendSuper2(&v18, "touchesCancelled:withEvent:", v11.super.isa, a2, v16.receiver, v16.super_class);
    goto LABEL_11;
  }

  v8 = v7;
  if ((sub_100296044(v8, a1) & 1) == 0)
  {

    goto LABEL_8;
  }

  v9 = *&v2[v6];
  *&v2[v6] = 0;

  [v2 alpha];
  if (v10 == 1.0)
  {
  }

  else
  {
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 24) = 0x3FF0000000000000;
    aBlock[4] = sub_10067A05C;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008CD8C0;
    v14 = _Block_copy(aBlock);
    v15 = v2;

    [v12 animateWithDuration:4 delay:v14 options:0 animations:0.2 completion:0.0];

    _Block_release(v14);
  }

  sub_100005744(0, &qword_100981660);
  sub_10008DB40();
  v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
  objc_msgSendSuper2(&v16, "touchesCancelled:withEvent:", v11.super.isa, a2, v2, ObjectType);
LABEL_11:
}

void sub_100677CF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v22.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v26.receiver = v3;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, "touchesEnded:withEvent:", v22.super.isa, a2, v23.receiver, v23.super_class);
    goto LABEL_13;
  }

  v7 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch;
  v8 = *&v3[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch];
  if (!v8)
  {
LABEL_12:
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v22.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v25.receiver = v3;
    v25.super_class = ObjectType;
    objc_msgSendSuper2(&v25, "touchesEnded:withEvent:", v22.super.isa, a2, v23.receiver, v23.super_class);
    goto LABEL_13;
  }

  v9 = v8;
  if ((sub_100296044(v9, a1) & 1) == 0)
  {

    goto LABEL_12;
  }

  v10 = *&v3[v7];
  *&v3[v7] = 0;

  [v3 alpha];
  if (v11 != 1.0)
  {
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    *(v13 + 24) = 0x3FF0000000000000;
    aBlock[4] = sub_100309940;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008CD870;
    v14 = _Block_copy(aBlock);
    v15 = v3;

    [v12 animateWithDuration:4 delay:v14 options:0 animations:0.2 completion:0.0];
    _Block_release(v14);
  }

  [v9 locationInView:v3];
  v17 = v16;
  v19 = v18;
  [v3 bounds];
  v27.x = v17;
  v27.y = v19;
  if (CGRectContainsPoint(v28, v27))
  {
    v20 = *&v3[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction];
    if (v20)
    {

      v20(v21);
      sub_10001F63C(v20);
    }
  }

  sub_100005744(0, &qword_100981660);
  sub_10008DB40();
  v22.super.isa = Set._bridgeToObjectiveC()().super.isa;
  objc_msgSendSuper2(&v23, "touchesEnded:withEvent:", v22.super.isa, a2, v3, ObjectType);
LABEL_13:
}

uint64_t type metadata accessor for ShelfHeaderView()
{
  result = qword_100990F48;
  if (!qword_100990F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006781F0()
{
  type metadata accessor for ShelfHeaderLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_100678378(319, &qword_100990F58, &type metadata accessor for ShelfHeader.ArtworkType);
    if (v1 <= 0x3F)
    {
      sub_100678378(319, &qword_100990F60, &type metadata accessor for ShelfHeader.Configuration);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100678378(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1006783CC(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100005744(0, &qword_100981660);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100005744(0, &qword_100981660);
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

uint64_t sub_10067860C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100678670(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006786D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100984380);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100678740()
{
  v66 = sub_10002849C(&qword_100990F70);
  __chkstk_darwin(v66);
  v69 = (&v62 - v0);
  v1 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v1 - 8);
  v63 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v62 - v4;
  __chkstk_darwin(v6);
  v8 = &v62 - v7;
  v9 = sub_10002849C(&qword_100981228);
  __chkstk_darwin(v9 - 8);
  v62 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v65 = &v62 - v12;
  v13 = type metadata accessor for ShelfBackground();
  v67 = *(v13 - 8);
  v68 = v13;
  __chkstk_darwin(v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&unk_1009731F0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v62 - v18;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v64 = v15;
  ReadOnlyLens.subscript.getter();

  v20 = *(v17 + 8);
  v20(v19, v16);
  v21 = v63;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v21, &unk_10098FFB0);
  sub_1000476A0(v5, v8, &unk_10098FFB0);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_10002B894(v8, &unk_10098FFB0);
    v22 = 1;
    v23 = v65;
  }

  else
  {
    swift_getKeyPath();
    v23 = v65;
    ReadOnlyLens.subscript.getter();

    v20(v8, v16);
    v22 = 0;
  }

  v25 = v67;
  v24 = v68;
  (*(v67 + 56))(v23, v22, 1, v68);
  v26 = *(v66 + 48);
  v27 = v69;
  (*(v25 + 32))(v69, v64, v24);
  sub_1000476A0(v23, v27 + v26, &qword_100981228);
  v28 = *(v25 + 88);
  v29 = v28(v27, v24);
  v30 = enum case for ShelfBackground.color(_:);
  if (v29 == enum case for ShelfBackground.color(_:))
  {
    (*(v25 + 96))(v27, v24);

    v31 = *(sub_10002849C(&qword_100972A40) + 48);
    v32 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v32 - 8) + 8))(v27 + v31, v32);
LABEL_8:
    sub_10002B894(v27 + v26, &qword_100981228);
    return static UIEdgeInsets.vertical(top:bottom:)();
  }

  v33 = enum case for ShelfBackground.gradient(_:);
  if (v29 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v25 + 96))(v27, v24);

    v34 = sub_10002849C(&qword_100978418);
    v35 = v34[12];
    v36 = v34[16];
    v37 = v34[20];
    v38 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v38 - 8) + 8))(v27 + v37, v38);
    v39 = type metadata accessor for ShelfBackgroundGradientLocation();
    v40 = *(*(v39 - 8) + 8);
    v40(v27 + v36, v39);
    v40(v27 + v35, v39);
    goto LABEL_8;
  }

  v42 = enum case for ShelfBackground.materialGradient(_:);
  if (v29 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v25 + 96))(v27, v24);
    v43 = *(sub_10002849C(&qword_100978410) + 48);
    v44 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v44 - 8) + 8))(v27 + v43, v44);
    v45 = type metadata accessor for ShelfBackgroundMaterialGradientColors();
    (*(*(v45 - 8) + 8))(v27, v45);
    goto LABEL_8;
  }

  if ((*(v25 + 48))(v27 + v26, 1, v24) != 1)
  {
    v46 = v62;
    sub_100031660(v27 + v26, v62, &qword_100981228);
    v47 = v28(v46, v24);
    if (v47 == v30)
    {
      (*(v25 + 96))(v46, v24);

      v48 = *(sub_10002849C(&qword_100972A40) + 48);
      v49 = type metadata accessor for ShelfBackgroundStyle();
      (*(*(v49 - 8) + 8))(v46 + v48, v49);
    }

    else if (v47 == v33)
    {
      v50 = v62;
      (*(v25 + 96))(v62, v24);

      v51 = sub_10002849C(&qword_100978418);
      v52 = v51[12];
      v53 = v51[16];
      v54 = v51[20];
      v55 = type metadata accessor for ShelfBackgroundStyle();
      (*(*(v55 - 8) + 8))(v50 + v54, v55);
      v56 = type metadata accessor for ShelfBackgroundGradientLocation();
      v57 = *(*(v56 - 8) + 8);
      v57(v50 + v53, v56);
      v57(v50 + v52, v56);
    }

    else
    {
      v58 = v62;
      if (v47 != v42)
      {
        (*(v25 + 8))(v62, v24);
        return sub_10002B894(v27, &qword_100990F70);
      }

      (*(v25 + 96))(v62, v24);
      v59 = *(sub_10002849C(&qword_100978410) + 48);
      v60 = type metadata accessor for ShelfBackgroundStyle();
      (*(*(v60 - 8) + 8))(v58 + v59, v60);
      v61 = type metadata accessor for ShelfBackgroundMaterialGradientColors();
      (*(*(v61 - 8) + 8))(v58, v61);
    }

    sub_10002B894(v27 + v26, &qword_100981228);
    (*(v25 + 8))(v27, v24);
    return static UIEdgeInsets.vertical(top:bottom:)();
  }

  return sub_10002B894(v27, &qword_100990F70);
}

id sub_1006790BC(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v8 = objc_allocWithZone(NSAttributedString);

  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 initWithString:v9];

  if (a4)
  {
    v11 = objc_opt_self();
    v12 = a4;
    v13 = [v11 textAttachmentWithImage:v12];
    v14 = [objc_opt_self() attributedStringWithAttachment:v13];

    if (!a2)
    {
      goto LABEL_10;
    }

    v15 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v15 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = [objc_allocWithZone(NSMutableAttributedString) init];
      if ([a3 layoutDirection])
      {
        if (qword_10096EC10 != -1)
        {
          swift_once();
        }

        v17 = &qword_100990DF0;
      }

      else
      {
        if (qword_10096EC08 != -1)
        {
          swift_once();
        }

        v17 = &qword_100990DE8;
      }

      [v16 appendAttributedString:*v17];
      if (qword_10096EC18 != -1)
      {
        swift_once();
      }

      [v16 appendAttributedString:qword_100990DF8];
      [v16 appendAttributedString:v10];
      if (qword_10096EC20 != -1)
      {
        swift_once();
      }

      v18 = qword_100990E00;
      [v16 appendAttributedString:qword_100990E00];
      if (qword_10096EC28 != -1)
      {
        swift_once();
      }

      [v16 appendAttributedString:qword_100990E08];
      [v16 appendAttributedString:v14];
      [v16 appendAttributedString:v18];
      v19 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v16];

      v10 = v14;
      v14 = v19;
    }

    else
    {
LABEL_10:
      v16 = v12;
    }

    return v14;
  }

  return v10;
}

id sub_1006793DC(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v8 = type metadata accessor for SystemImage();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  if (a4)
  {
    (*(v9 + 104))(v12, enum case for SystemImage.chevronForward(_:), v8, v10);
    if (qword_10096EC00 != -1)
    {
      swift_once();
    }

    v14 = [qword_100990DE0 configurationWithTraitCollection:a3];
    v15 = static SystemImage.load(_:with:)();

    (*(v9 + 8))(v12, v8);
    v16 = [objc_opt_self() secondaryLabelColor];
    v13 = [v15 imageWithTintColor:v16];
  }

  v17 = sub_1006790BC(a1, a2, a3, v13);

  return v17;
}

uint64_t sub_1006795B8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = Action.title.getter();
  v3 = v2;

  if (v3)
  {
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {

      return v1;
    }
  }

  v5 = Action.artwork.getter();

  if (!v5)
  {

    return 0;
  }

  v1 = dispatch thunk of Artwork.systemImageName.getter();
  v7 = v6;

  if (!v7)
  {
    return 0;
  }

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return 0;
  }

  return v1;
}

void sub_1006796C0()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v4 - 8);
  v44 = &v43 - v5;
  v6 = type metadata accessor for FontUseCase();
  v48 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Separator.Position();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Separator();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_containerView;
  *(v1 + v17) = [objc_allocWithZone(UIView) init];
  v49 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_separatorView;
  (*(v10 + 104))(v12, enum case for Separator.Position.top(_:), v9);
  v50[3] = type metadata accessor for ZeroDimension();
  v50[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v50);
  static ZeroDimension.zero.getter();
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  v18 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v20 = *(v14 + 40);
  v21 = v18;
  v20(&v18[v19], v16, v13);
  swift_endAccess();

  *(v49 + v1) = v21;
  v22 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowButton;
  type metadata accessor for DynamicTypeButton();
  if (qword_10096EC40 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v6, qword_100990E20);
  v49 = *(v48 + 16);
  v49(v8, v23, v6);
  *(v1 + v22) = DynamicTypeButton.__allocating_init(useCase:)();
  *(v1 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtwork) = 0;
  v24 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkType;
  v25 = type metadata accessor for ShelfHeader.ArtworkType();
  v26 = *(*(v25 - 8) + 56);
  v26(v1 + v24, 1, 1, v25);
  v27 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkView;
  type metadata accessor for ArtworkView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v27) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v29 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleButton;
  if (qword_10096EC48 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v6, qword_100990E38);
  v49(v8, v30, v6);
  *(v1 + v29) = DynamicTypeButton.__allocating_init(useCase:)();
  *(v1 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtwork) = 0;
  v26(v1 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkType, 1, 1, v25);
  v31 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkView;
  *(v1 + v31) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v32 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryButton;
  if (qword_10096EC58 != -1)
  {
    swift_once();
  }

  v33 = sub_1000056A8(v6, qword_100990E68);
  v49(v8, v33, v6);
  *(v1 + v32) = DynamicTypeButton.__allocating_init(useCase:)();
  v34 = (v1 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v1 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryAction);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v1 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowAction);
  *v36 = 0;
  v36[1] = 0;
  v37 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_subtitleLabel;
  if (qword_10096EC50 != -1)
  {
    swift_once();
  }

  v38 = sub_1000056A8(v6, qword_100990E50);
  v39 = v44;
  v49(v44, v38, v6);
  (*(v48 + 56))(v39, 0, 1, v6);
  (*(v45 + 104))(v47, enum case for DirectionalTextAlignment.none(_:), v46);
  v40 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v37) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v41 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_configuration;
  v42 = type metadata accessor for ShelfHeader.Configuration();
  (*(*(v42 - 8) + 56))(v1 + v41, 1, 1, v42);
  *(v1 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_shouldHighlightEntireView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100679E90(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100679EA8();
  }

  return result;
}

uint64_t sub_100679EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100679FD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10067A060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for StyledText.MediaType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  InAppPurchaseLockup.parent.getter();
  v9 = Lockup.title.getter();
  v11 = v10;

  if (v11)
  {
    v27 = a3;
    v28 = v3;
    v13._countAndFlagsBits = 0x465F4E4F5F444441;
    v13._object = 0xEE005050415F524FLL;
    v14._object = 0x8000000100800630;
    v14._countAndFlagsBits = 0xD000000000000031;
    localizedString(_:comment:)(v13, v14);
    sub_10002849C(&unk_10097E350);
    v15 = swift_allocObject();
    v26 = xmmword_1007B10D0;
    *(v15 + 16) = xmmword_1007B10D0;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_1000BFD1C();
    *(v15 + 32) = v9;
    *(v15 + 40) = v11;

    String.init(format:_:)();
    v17 = v16;

    v18 = InAppPurchaseLockup.productAction.getter();
    if (v18)
    {
      v19 = v18;
      sub_10002849C(&qword_100975C38);
      inited = swift_initStackObject();
      v25[1] = v17;
      v21 = inited;
      *(inited + 16) = v26;
      *(inited + 32) = v9;
      v22 = inited + 32;
      *(inited + 40) = v11;
      *(inited + 48) = v19;
      *(inited + 56) = v27;
      (*(v6 + 104))(v8, enum case for StyledText.MediaType.plainText(_:), v5);
      type metadata accessor for StyledText();
      swift_allocObject();

      v23 = StyledText.init(rawText:rawTextType:)();
      sub_1002F6004(v23, 0, v21);

      swift_setDeallocating();
      return sub_10067A360(v22);
    }

    else
    {

      (*(v6 + 104))(v8, enum case for StyledText.MediaType.plainText(_:), v5);
      type metadata accessor for StyledText();
      swift_allocObject();
      v24 = StyledText.init(rawText:rawTextType:)();
      sub_1002F6004(v24, 0, _swiftEmptyArrayStorage);
    }
  }

  return result;
}

uint64_t sub_10067A360(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100975C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10067A3E0(uint64_t a1, double (*a2)(double, double), double a3, double a4)
{
  v9 = type metadata accessor for Resize.Rule();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v40[-v14];
  __chkstk_darwin(v16);
  v18 = &v40[-v17];
  __chkstk_darwin(v19);
  v21 = &v40[-v20];
  v22 = a2(a3, a4);
  v23 = [v4 traitCollection];
  v24 = [v23 horizontalSizeClass];

  if (v24 == 2)
  {
    v25 = 635.0;
  }

  else
  {
    v25 = a3;
  }

  if (v25 <= v22)
  {
    sub_10002C0AC(a1, v42);
    *(v21 + 3) = &type metadata for CGFloat;
    *(v21 + 4) = &protocol witness table for CGFloat;
    *v21 = v25;
    v34 = *(v10 + 104);
    v34(v21, enum case for Resize.Rule.replaced(_:), v9);
    v35 = enum case for Resize.Rule.unchanged(_:);
    v34(v18, enum case for Resize.Rule.unchanged(_:), v9);
    v34(v15, v35, v9);
    v34(v12, v35, v9);
    v44 = type metadata accessor for Resize();
    v45 = &protocol witness table for Resize;
    sub_1000056E0(v43);
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  }

  else
  {
    MeasurementRange.init(minimum:maximum:)();
    v27 = v26;
    v29 = v28;
    sub_10002C0AC(a1, v42);
    MeasurementRange.init(minimum:maximum:)();
    v31 = v30;
    v33 = v32;
    v44 = type metadata accessor for Constrain();
    v45 = &protocol witness table for Constrain;
    sub_1000056E0(v43);
    v41 = v31 & 1;
    v40[0] = v33 & 1;
    Constrain.init(_:width:height:)();
    v42[0] = v27 & 1;
    v41 = v29 & 1;
    MeasurementRange.constrain(_:)();
  }

  sub_10002A400(v43, v44);
  v36 = [v4 traitCollection];
  dispatch thunk of Placeable.measure(toFit:with:)();
  v38 = v37;

  sub_100007000(v43);
  return v38;
}

char *sub_10067A79C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView();
  *&v4[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_platterView;
  type metadata accessor for CarouselItemModulePlatterView();
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  *&v4[v20] = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v14);
  (*(v11 + 104))(v13, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v10);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v21 = &v4[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_selectionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v27 = [v26 layer];
  [v27 setAllowsGroupOpacity:0];

  v28 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  [*&v26[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_tapGestureRecognizer] setEnabled:0];
  [*&v26[v28] addTarget:v26 action:"handleSelection:"];
  v29 = *&v26[v28];
  [v29 setDelegate:v26];

  [v26 addGestureRecognizer:*&v26[v28]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_headerView]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_platterView]];

  return v26;
}

uint64_t sub_10067ABD4@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for VerticalStack();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for DisjointStack();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  DisjointStack.init(with:)();
  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  VerticalStack.init(with:)();
  v14 = *&v13[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_headerView];
  v25 = type metadata accessor for CarouselItemModuleHeaderView();
  v26 = sub_10067B9F8(&qword_100990FE0, type metadata accessor for CarouselItemModuleHeaderView);
  v24[0] = v14;
  v15 = v14;
  VerticalStack.adding(_:with:)();
  v16 = *(v3 + 8);
  v16(v5, v2);
  sub_100007000(v24);
  v17 = *&v13[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_platterView];
  v23[3] = type metadata accessor for CarouselItemModulePlatterView();
  v23[4] = sub_10067B9F8(&qword_100990FE8, type metadata accessor for CarouselItemModulePlatterView);
  v23[0] = v17;
  v25 = v2;
  v26 = &protocol witness table for VerticalStack;
  sub_1000056E0(v24);
  v18 = v17;
  VerticalStack.adding(_:with:)();
  v16(v8, v2);
  sub_100007000(v23);
  v19 = v22;
  v22[3] = v9;
  v19[4] = &protocol witness table for DisjointStack;
  sub_1000056E0(v19);
  DisjointStack.inserting(_:at:with:)();
  (*(v10 + 8))(v12, v9);
  return sub_100007000(v24);
}

uint64_t sub_10067B00C()
{
  v0 = type metadata accessor for DisjointStack.EdgePosition();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3[3] = type metadata accessor for ZeroDimension();
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  (*(v1 + 104))(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  return DisjointStack.Properties.bottomEdge.setter();
}

uint64_t sub_10067B100(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  HeroCarouselItemOverlay.DisplayOptions.horizontalPlacement.getter();
  (*(v8 + 8))(v10, v7);
  HeroCarouselItemOverlay.DisplayOptions.Placement.verticalStackAlignment.getter();
  (*(v4 + 8))(v6, v3);
  return VerticalStack.Properties.alignment.setter();
}

uint64_t type metadata accessor for CarouselItemCollectionModuleOverlay()
{
  result = qword_100990FC8;
  if (!qword_100990FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10067B4F0()
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

uint64_t sub_10067B59C(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_10000827C(a1);
  sub_10000827C(a1);
  sub_10001F63C(v5);
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_10001F63C(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_10001F63C(a1);
}

uint64_t sub_10067B650(uint64_t a1, uint64_t a2)
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

  sub_10059D2E8(v4, a2);
}

id sub_10067B6D0()
{
  v1 = v0;
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  HeroCarouselItemOverlay.displayOptions.getter();
  v6 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v3 + 40))(&v1[v6], v5, v2);
  swift_endAccess();
  sub_1006B2DE0();
  HeroCarouselItemOverlay.displayOptions.getter();
  v7 = HeroCarouselItemOverlay.badgeText.getter();
  v9 = v8;
  v10 = HeroCarouselItemOverlay.descriptionText.getter();
  sub_1004D877C(v5, v7, v9, v10, v11);

  (*(v3 + 8))(v5, v2);
  return [v1 setNeedsLayout];
}

uint64_t sub_10067B878()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_platterView) + OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_lockupCollectionView);
  v2 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for ArtworkView();
      sub_10067B9F8(&qword_100970E80, &type metadata accessor for ArtworkView);
      ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t sub_10067B9F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10067BA40()
{
  v1 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView();
  *(v0 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_platterView;
  type metadata accessor for CarouselItemModulePlatterView();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  *(v0 + v12) = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v7 + 104))(v9, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v6);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v13 = (v0 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_selectionHandler);
  *v13 = 0;
  v13[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double *sub_10067BCD4(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        type metadata accessor for MixedMediaLockup();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return _swiftEmptyArrayStorage;
}

double *sub_10067BE44(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_10002C0AC(i, v5);
    sub_10002849C(&qword_100973D50);
    type metadata accessor for GameCenterPlayer();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

double *sub_10067BF50(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1000073E8(i, v5);
    sub_10067C21C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id CBCentralManager.isPencilPaired.getter()
{
  result = [v0 sharedPairingAgent];
  if (result)
  {
    v2 = result;
    i = [result retrievePairedPeers];

    if (i)
    {
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = sub_10067BF50(v4);

      if (v5)
      {
        if (v5 >> 62)
        {
          goto LABEL_23;
        }

        for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v6 = 0;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v7 = *&v5[v6 + 4];
            }

            v8 = v7;
            v9 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              break;
            }

            objc_opt_self();
            v10 = swift_dynamicCastObjCClass();
            if (v10)
            {
              v11 = v10;
              v12 = String._bridgeToObjectiveC()();
              LOBYTE(v11) = [v11 hasTag:v12];

              if (v11)
              {
                i = 1;
                goto LABEL_19;
              }
            }

            else
            {
            }

            ++v6;
            if (v9 == i)
            {
              i = 0;
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          ;
        }

LABEL_19:
      }

      else
      {
        return 0;
      }
    }

    return i;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10067C21C()
{
  result = qword_100990FF0;
  if (!qword_100990FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100990FF0);
  }

  return result;
}

unint64_t sub_10067C27C()
{
  result = qword_100990FF8;
  if (!qword_100990FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990FF8);
  }

  return result;
}

uint64_t sub_10067C2D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_10097DAF0);
  __chkstk_darwin(v6 - 8);
  v46 = &v42 - v7;
  v8 = sub_10002849C(&unk_100992FA0);
  v47 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v11 - 8);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = sub_10002849C(&qword_10098F3E8);
  __chkstk_darwin(v16 - 8);
  v18 = &v42 - v17;
  v19 = type metadata accessor for Annotation();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100037234(&qword_10096FE80, &type metadata accessor for Annotation);
  ItemLayoutContext.typedModel<A>(as:)();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_10002B894(v18, &qword_10098F3E8);
  }

  v43 = v8;
  v44 = a1;
  v45 = a2;
  (*(v20 + 32))(v22, v18, v19);
  *&v3[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems] = Annotation.items.getter();

  v24 = Annotation.title.getter();
  v25 = &v3[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleText];
  *v25 = v24;
  v25[1] = v26;

  v27 = *&v3[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel];

  v28 = String._bridgeToObjectiveC()();

  [v27 setText:v28];

  [v3 setNeedsLayout];
  v29 = Annotation.summary.getter();
  v30 = &v3[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_explicitSummary];
  *v30 = v29;
  v30[1] = v31;

  sub_1000B19A4();
  v32 = Annotation.linkAction.getter();
  if (v32)
  {
    v49 = v32;
    type metadata accessor for Action();
    type metadata accessor for BaseObjectGraph();
    sub_100037234(&qword_100992FB0, &type metadata accessor for Action);
    ComponentModel.pairedWith<A>(objectGraph:)();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = sub_10002849C(&unk_10097B3D0);
  v35 = 1;
  (*(*(v34 - 8) + 56))(v15, v33, 1, v34);
  v36 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  sub_10003715C(v15, &v3[v36]);
  swift_endAccess();
  sub_1000B1B2C();
  sub_10002B894(v15, &qword_10097B3F0);
  ItemLayoutContext.mutableState.getter();
  WritableStateLens.init(_:)();
  sub_100036A58();
  v37 = v43;
  WritableStateLens<A>.currentValue.getter();
  (*(v47 + 8))(v10, v37);
  if ((v49 & 1) == 0)
  {
    v35 = Annotation.shouldAlwaysPresentExpanded.getter();
  }

  sub_1000B351C();
  v3[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isExpanded] = v35 & 1;
  sub_1000B16F8();
  v38 = Annotation.linkAction.getter();
  v39 = v48;
  if (v38)
  {
    v49 = v38;
    type metadata accessor for Action();
    type metadata accessor for BaseObjectGraph();
    sub_100037234(&qword_100992FB0, &type metadata accessor for Action);
    ComponentModel.pairedWith<A>(objectGraph:)();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = sub_10002849C(&unk_10097B3D0);
  (*(*(v41 - 8) + 56))(v39, v40, 1, v41);
  swift_beginAccess();
  sub_10003715C(v39, &v3[v36]);
  swift_endAccess();
  sub_1000B1B2C();
  sub_10002B894(v39, &qword_10097B3F0);
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_10067C9B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_10067CA0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10067CADC()
{
  sub_100028BB8();
  result = static UIColor.primaryText.getter();
  qword_1009D3290 = result;
  return result;
}

uint64_t sub_10067CB10()
{
  sub_100028BB8();
  result = static UIColor.secondaryText.getter();
  qword_1009D3298 = result;
  return result;
}

id sub_10067CB44()
{
  result = [objc_opt_self() systemGray5Color];
  qword_1009D32A0 = result;
  return result;
}

uint64_t sub_10067CB80()
{
  sub_100028BB8();
  result = static UIColor.secondaryText.getter();
  qword_1009D32A8 = result;
  return result;
}

void sub_10067CBE4()
{
  if (qword_10096EC98 != -1)
  {
    swift_once();
  }

  v0 = qword_1009D32B0;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithTextStyle:v2 scale:2];

  qword_1009D32C0 = v3;
}

uint64_t sub_10067CC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v35 = a4;
  v31[1] = a1;
  v32 = a2;
  v4 = type metadata accessor for Shelf.ContentType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31[0] = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  v10 = type metadata accessor for PageGrid.Direction();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v33 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v31 - v14;
  v16 = sub_10002849C(&qword_100974650);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = v31 - v18;
  sub_100031660(v32, v31 - v18, &unk_10098FFB0);
  v20 = *(v17 + 56);
  v21 = v10;
  v32 = v19;
  sub_100031660(v34, &v19[v20], &unk_10098FFB0);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0);
  ReadOnlyLens.subscript.getter();

  v22 = *(v11 + 104);
  v23 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v38)
  {
    v23 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v24 = *v23;
  v34 = v15;
  v25 = v15;
  v26 = v31[0];
  v22(v25, v24, v10);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v5 + 104))(v26, enum case for Shelf.ContentType.appTrailerLockup(_:), v4);
  sub_10017720C();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v38 == v36 && v39 == v37)
  {
    v27 = 32.0;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v27 = 32.0;
  }

  else
  {
    v27 = 20.0;
  }

  v28 = *(v5 + 8);
  v28(v26, v4);
  v28(v9, v4);

  v29 = v34;
  (*(v11 + 16))(v33, v34, v21);
  sub_1001A3360(v27);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v11 + 8))(v29, v21);
  return sub_10002B894(v32, &qword_100974650);
}

uint64_t sub_10067D114()
{
  sub_10067D4CC();

  return PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_10067D1F8()
{
  sub_10067D4CC();

  return PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_10067D2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D6>, double a9@<D7>)
{
  v22[5] = a5;
  v22[6] = a6;
  v22[4] = a4;
  *&v22[2] = a8;
  *&v22[3] = a9;
  v22[0] = a7;
  v22[1] = a1;
  v12 = sub_10002849C(&qword_100974650);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v22 - v17;
  v19 = *v9;
  sub_100031660(a2, v22 - v17, &unk_10098FFB0);
  sub_100031660(a3, &v18[*(v13 + 56)], &unk_10098FFB0);
  v22[7] = v19;
  sub_100031660(v18, v15, &qword_100974650);
  v20 = *(v13 + 56);
  PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
  sub_10002B894(v18, &qword_100974650);
  sub_10002B894(&v15[v20], &unk_10098FFB0);
  return sub_10002B894(v15, &unk_10098FFB0);
}

unint64_t sub_10067D4CC()
{
  result = qword_100991000;
  if (!qword_100991000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991000);
  }

  return result;
}

uint64_t sub_10067D520()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E0F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_1009D1268);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  return OfferButtonMetrics.fontSource.setter();
}

void sub_10067D6A0()
{
  v0 = [objc_opt_self() systemFontOfSize:10.0 weight:UIFontWeightBold];
  v1 = [objc_opt_self() configurationWithFont:v0];

  qword_100991008 = v1;
}

uint64_t sub_10067D724()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_100991010);
  v20[2] = sub_1000056A8(v8, qword_100991010);
  if (qword_10096E0F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D1250);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = type metadata accessor for StaticDimension();
  v23[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v22);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  v18 = [objc_opt_self() systemFontOfSize:15.0 weight:UIFontWeightBold];
  [objc_opt_self() configurationWithFont:v18];

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

uint64_t sub_10067DB34()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_100991028);
  v20[2] = sub_1000056A8(v8, qword_100991028);
  if (qword_10096E0F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D1250);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = type metadata accessor for StaticDimension();
  v23[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v22);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  sub_10067DF14();
  v18 = UIFontTextStyleFootnote;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

unint64_t sub_10067DF14()
{
  result = qword_1009870A0;
  if (!qword_1009870A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009870A0);
  }

  return result;
}

uint64_t sub_10067DF60()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_100991040);
  v21[2] = sub_1000056A8(v8, qword_100991040);
  if (qword_10096E130 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D1310);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = type metadata accessor for StaticDimension();
  v24[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v23);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  sub_10067DF14();
  v18 = UIFontTextStyleFootnote;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  v19 = v18;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

uint64_t sub_10067E368()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24[0] = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = v24 - v4;
  __chkstk_darwin(v5);
  v7 = v24 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_100991058);
  v24[2] = sub_1000056A8(v8, qword_100991058);
  if (qword_10096E0F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D1250);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v24[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v25;
  v11(v25, v14, v9);
  v13(v15, v12, v0);
  v16 = v24[0];
  v11(v24[0], v14, v9);
  v13(v16, v12, v0);
  v27[3] = type metadata accessor for StaticDimension();
  v27[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v27);
  v26[3] = v0;
  v26[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v26);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  v18 = objc_opt_self();
  v19 = [v18 systemFontOfSize:36.0 weight:UIFontWeightSemibold];
  v20 = objc_opt_self();
  v21 = [v20 configurationWithFont:v19];

  v22 = [v18 systemFontOfSize:15.0 weight:UIFontWeightBold];
  [v20 configurationWithFont:v22];

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

uint64_t sub_10067E7CC(unsigned int *a1, double *a2, double a3)
{
  v6 = type metadata accessor for SystemImage();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *a1, v6, v8);
  v11 = [objc_opt_self() systemFontOfSize:a3 weight:*a2];
  v12 = [objc_opt_self() configurationWithFont:v11];

  v13 = static SystemImage.load(_:with:)();
  (*(v7 + 8))(v10, v6);
  return v13;
}

uint64_t sub_10067E930()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_1009D32C8);
  v20[2] = sub_1000056A8(v8, qword_1009D32C8);
  if (qword_10096E118 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D12C8);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = type metadata accessor for StaticDimension();
  v23[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v22);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  sub_10067DF14();
  v18 = UIFontTextStyleFootnote;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

uint64_t sub_10067ED14()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_1009D32E0);
  v20[2] = sub_1000056A8(v8, qword_1009D32E0);
  if (qword_10096E128 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D12F8);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = type metadata accessor for StaticDimension();
  v23[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v22);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  sub_10067DF14();
  v18 = UIFontTextStyleFootnote;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

uint64_t sub_10067F0F0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_1009D32F8);
  v20[2] = sub_1000056A8(v8, qword_1009D32F8);
  if (qword_10096E120 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D12E0);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = type metadata accessor for StaticDimension();
  v23[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v22);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  sub_10067DF14();
  v18 = UIFontTextStyleFootnote;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

uint64_t sub_10067F4D4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v22[0] = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v23 = v22 - v4;
  __chkstk_darwin(v5);
  v7 = v22 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_100991070);
  v22[2] = sub_1000056A8(v8, qword_100991070);
  if (qword_10096E100 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D1280);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v22[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v23;
  v11(v23, v14, v9);
  v13(v15, v12, v0);
  v16 = v22[0];
  v11(v22[0], v14, v9);
  v13(v16, v12, v0);
  v27[3] = type metadata accessor for StaticDimension();
  v27[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v27);
  v25 = v0;
  v26 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v24);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  sub_10067DF14();
  v18 = UIFontTextStyleFootnote;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  v19 = type metadata accessor for Feature();
  v25 = v19;
  v26 = sub_100085D7C();
  v20 = sub_1000056E0(v24);
  (*(*(v19 - 8) + 104))(v20, enum case for Feature.glass_offer_button_2025A(_:), v19);
  isFeatureEnabled(_:)();
  sub_100007000(v24);
  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

id sub_10067F92C()
{
  v0 = sub_10032FEB0(0xD000000000000013, 0x800000010081F3F0, 0);
  v1 = [v0 imageWithRenderingMode:2];

  return v1;
}

uint64_t sub_10067F990()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_100991088);
  v21[2] = sub_1000056A8(v8, qword_100991088);
  if (qword_10096E130 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D1310);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = type metadata accessor for StaticDimension();
  v24[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v23);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  sub_10067DF14();
  v18 = UIFontTextStyleFootnote;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  v19 = v18;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

uint64_t sub_10067FD98()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.icloudAndArrowDown(_:), v0, v2);
  sub_10067DF14();
  v5 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
  v6 = static SystemImage.load(_:with:)();

  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_10067FEC8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_1009D3310);
  v21[2] = sub_1000056A8(v8, qword_1009D3310);
  if (qword_10096E120 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D12E0);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = type metadata accessor for StaticDimension();
  v24[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v23);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  sub_10067DF14();
  v18 = UIFontTextStyleHeadline;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  v19 = UIFontTextStyleFootnote;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

id sub_1006802E0()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.icloudAndArrowDown(_:), v0, v2);
  sub_10067DF14();
  v5 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
  v6 = static SystemImage.load(_:with:)();

  (*(v1 + 8))(v4, v0);
  v7 = [v6 imageWithRenderingMode:2];

  return v7;
}

uint64_t sub_100680434()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.pauseFill(_:), v0, v2);
  if (qword_10096ECB0 != -1)
  {
    swift_once();
  }

  v5 = static SystemImage.load(_:with:)();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_100680570@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v34[0] = a2;
  v5 = type metadata accessor for AspectRatio();
  __chkstk_darwin(v5 - 8);
  v34[1] = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BreakoutDetailsLayout.DetailDimension();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = (v34 - v13);
  [a1 pageMarginInsets];
  v16 = v15;
  v18 = v17;
  v19 = [a1 traitCollection];
  v20 = UITraitCollection.isSizeClassCompact.getter();

  if (v20)
  {
    *v14 = 1.0;
    (*(v8 + 104))(v14, enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:), v7);
    if (JUScreenClassGetMain() == 1)
    {
      v41 = &type metadata for Double;
      v42 = &protocol witness table for Double;
      v40[0] = 0x407E000000000000;
      v21 = 0x4070400000000000;
    }

    else
    {
      HasRoundedCorners = JUScreenClassHasRoundedCorners();
      v23 = 560.0;
      if (HasRoundedCorners)
      {
        v23 = 610.0;
      }

      v38 = &type metadata for Double;
      v39 = &protocol witness table for Double;
      *&v37 = v23;
      sub_100005A38(&v37, v40);
      v21 = 0x4075400000000000;
    }
  }

  else
  {
    *(v14 + 3) = &type metadata for CGFloat;
    *(v14 + 4) = &protocol witness table for CGFloat;
    *v14 = a3 - (v16 + v18 + 80.0);
    (*(v8 + 104))(v14, enum case for BreakoutDetailsLayout.DetailDimension.static(_:), v7);
    v21 = 0;
    v41 = &type metadata for Double;
    v42 = &protocol witness table for Double;
    v40[0] = 0x4083100000000000;
  }

  if (qword_10096ED08 != -1)
  {
    swift_once();
  }

  v24 = sub_10002849C(&qword_100989DD0);
  sub_1000056A8(v24, qword_1009910A0);
  *&v37 = a1;
  swift_unknownObjectRetain();
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  (*(v8 + 16))(v10, v14, v7);
  if (qword_10096ED18 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for StaticDimension();
  v26 = sub_1000056A8(v25, qword_1009D3340);
  v38 = v25;
  v39 = &protocol witness table for StaticDimension;
  v27 = sub_1000056E0(&v37);
  (*(*(v25 - 8) + 16))(v27, v26, v25);
  v36[14] = &protocol witness table for Double;
  v36[13] = &type metadata for Double;
  v36[10] = 0x4071C00000000000;
  v36[9] = &protocol witness table for CGFloat;
  v36[8] = &type metadata for CGFloat;
  v36[5] = 0x4034000000000000;
  if (qword_10096ED10 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for CappedSizeStaticDimension();
  v29 = sub_1000056A8(v28, qword_1009D3328);
  v36[3] = v28;
  v36[4] = sub_1006838D4(&unk_100991130, &type metadata accessor for CappedSizeStaticDimension);
  v30 = sub_1000056E0(v36);
  (*(*(v28 - 8) + 16))(v30, v29, v28);
  sub_10002C0AC(v40, &v35);
  if (v20)
  {
    v31 = &protocol witness table for CGFloat;
    v32 = &type metadata for CGFloat;
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v21 = 0;
    v34[3] = 0;
    v34[4] = 0;
  }

  v34[5] = v32;
  v34[6] = v31;
  v34[2] = v21;
  UpsellBreakoutLayout.Metrics.init(backgroundMediaAspectRatio:detailsWidth:actionButtonHeight:actionButtonMinWidth:actionButtonTopMargin:buttonDetailsSpace:layoutMargins:height:mediaSafeAreaHeight:)();
  sub_100007000(v40);
  return (*(v8 + 8))(v14, v7);
}

uint64_t sub_100680AD0()
{
  v0 = type metadata accessor for AspectRatio();
  __chkstk_darwin(v0);
  __chkstk_darwin(v1);
  v2 = sub_10002849C(&qword_100989DD0);
  sub_100005644(v2, qword_1009910A0);
  sub_1000056A8(v2, qword_1009910A0);
  AspectRatio.init(_:_:)();
  AspectRatio.init(_:_:)();
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_100680BF0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CappedSizeStaticDimension();
  sub_100005644(v4, qword_1009D3328);
  sub_1000056A8(v4, qword_1009D3328);
  if (qword_10096E318 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D18C8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v7 = UIContentSizeCategoryExtraExtraExtraLarge;
  return CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
}

uint64_t sub_100680D8C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D3340);
  sub_1000056A8(v4, qword_1009D3340);
  if (qword_10096E118 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D12C8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100680F64()
{
  v0 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  v6 = sub_10002849C(&unk_1009732B0);
  sub_100005644(v6, qword_1009D3358);
  sub_1000056A8(v6, qword_1009D3358);
  if (qword_10096D000 != -1)
  {
    swift_once();
  }

  v7 = sub_1000056A8(v0, qword_1009CDE88);
  sub_1000C2608(v7, v5);
  if (qword_10096CFF8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009CDE70);
  sub_1000C2608(v8, v2);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:compactValue:)();
}

char *sub_1006810F4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v103 = type metadata accessor for AutomationSemantics();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v11 - 8);
  v97 = &v90 - v12;
  v105 = type metadata accessor for DirectionalTextAlignment();
  v13 = *(v105 - 8);
  __chkstk_darwin(v105);
  v98 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v107 = &v90 - v16;
  v99 = type metadata accessor for FontUseCase();
  v106 = *(v99 - 8);
  __chkstk_darwin(v99);
  v104 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10002849C(&unk_1009732B0);
  v18 = *(v96 - 1);
  __chkstk_darwin(v96);
  v20 = &v90 - v19;
  v21 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_tapGestureRecognizer;
  *(v4 + v21) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v22 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v4 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = type metadata accessor for MediaView();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView] = 0;
  *&v24[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] = 0;
  v24[OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding] = 0;
  *&v24[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v24[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset] = 0;
  v25 = type metadata accessor for UberContentContainer();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = 0;
  *&v26[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
  v27 = &v26[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v26[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v28[32] = 1;
  *&v26[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView] = 0;
  v114.receiver = v26;
  v114.super_class = v25;
  v29 = objc_msgSendSuper2(&v114, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v30 = v29;
  if (*&v29[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView])
  {
    [v29 addSubview:?];
  }

  v31 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer;
  *&v24[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] = v30;
  v113.receiver = v24;
  v113.super_class = v23;
  v32 = objc_msgSendSuper2(&v113, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v32 setClipsToBounds:1];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer]];

  *(v5 + v31) = v32;
  v33 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_artworkView;
  type metadata accessor for ArtworkView();
  *(v5 + v33) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_detailsView;
  if (qword_10096ED20 != -1)
  {
    swift_once();
  }

  v35 = v96;
  v36 = sub_1000056A8(v96, qword_1009D3358);
  (*(v18 + 16))(v20, v36, v35);
  v37 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v5 + v34) = sub_100147904(v20);
  v95 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsView;
  v96 = v5;
  if (qword_10096E318 != -1)
  {
    swift_once();
  }

  v38 = v99;
  v39 = sub_1000056A8(v99, qword_1009D18C8);
  v40 = v106;
  v41 = *(v106 + 16);
  v42 = v104;
  v41(v104, v39, v38);
  v93 = v41;
  v91 = UIContentSizeCategoryExtraExtraExtraLarge;
  v43 = enum case for DirectionalTextAlignment.none(_:);
  v94 = v13;
  v44 = *(v13 + 104);
  v45 = v105;
  v44(v107, enum case for DirectionalTextAlignment.none(_:), v105);
  v92 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v92[qword_1009902D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v46 = v97;
  v41(v97, v42, v38);
  v47 = v45;
  v48 = *(v40 + 56);
  v48(v46, 0, 1, v38);
  v49 = v98;
  v44(v98, v43, v47);
  v50 = v91;
  v51 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v52 = v104;
  v93(v46, v104, v38);
  v48(v46, 0, 1, v38);
  v53 = v51;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  dispatch thunk of DynamicTypeLabel.updateFont(to:)();
  [v53 setNumberOfLines:0];
  v54 = v94;
  v55 = v107;
  v56 = v105;
  (*(v94 + 16))(v49, v107, v105);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  (*(v54 + 8))(v55, v56);
  (*(v106 + 8))(v52, v38);
  v57 = v96;
  *(v96 + v95) = v53;
  v58 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsTextAlignment;
  v59 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v60 = type metadata accessor for BreakoutDetails.TextAlignment();
  (*(*(v60 - 8) + 104))(&v57[v58], v59, v60);
  v61 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_offerButton;
  v62 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v57[v61] = sub_1000F5284(0);
  *&v57[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_pageTraits] = 0;
  v57[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_isBackgroundEffectViewHidden] = 1;
  v112.receiver = v57;
  v112.super_class = ObjectType;
  v63 = objc_msgSendSuper2(&v112, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v67 = v63;
  [v67 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_100005744(0, &qword_100970180);
  v68 = static UIColor.placeholderBackground.getter();
  [v67 setBackgroundColor:v68];

  v69 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsView;
  v70 = *&v67[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsView];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v71 = [*&v67[v69] layer];
  [v71 setCompositingFilter:kCAFilterPlusL];

  v72 = *&v67[v69];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v73 = v72;
  v74 = v101;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v108);
  sub_10003D444(&v110);
  UIView.setAutomationSemantics(_:)();

  v75 = *(v102 + 8);
  v76 = v103;
  v75(v74, v103);
  v77 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_detailsView;
  v78 = *&v67[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_detailsView];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v79 = v78;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v108);
  sub_10003D444(&v110);
  UIView.setAutomationSemantics(_:)();

  v75(v74, v76);
  v80 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_artworkView;
  v81 = *&v67[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_artworkView];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v82 = v81;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v108);
  sub_10003D444(&v110);
  UIView.setAutomationSemantics(_:)();

  v75(v74, v76);
  [v67 addSubview:*&v67[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer]];
  [v67 addSubview:*&v67[v77]];
  [v67 addSubview:*&v67[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_offerButton]];
  [v67 addSubview:*&v67[v69]];
  v83 = *&v67[v80];
  ArtworkView.frameUpdatesImageSize.setter();

  v84 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_tapGestureRecognizer;
  v85 = *&v67[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_tapGestureRecognizer];
  v86 = v67;
  [v85 addTarget:v86 action:"didTapVideo"];
  v87 = *&v67[v84];
  [v87 setDelegate:v86];

  [v86 addGestureRecognizer:*&v67[v84]];
  v88 = [v86 layer];

  [v88 setAllowsGroupBlending:0];
  return v86;
}

void sub_100681D88(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer);
  v4 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  if (a1)
  {
    sub_1006838D4(&qword_100973190, type metadata accessor for VideoView);
    v6 = a1;
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100005744(0, &qword_100972EB0);
      v9 = v5;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        [v6 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v11 = *&v5[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
  *&v5[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = a1;
  v12 = a1;
  sub_10047C6C8(v11);

  if (*(*(v3 + v4) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
  {
    type metadata accessor for VideoView();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      *(v13 + qword_100988CA8 + 8) = &off_1008CDCD0;

      swift_unknownObjectWeakAssign();
    }
  }
}

void (*sub_100681F44(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer);
  a1[1] = v1;
  a1[2] = v3;
  v4 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  a1[3] = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_100681FE4;
}

void sub_100681FE4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 16) + *(a1 + 24));
  if (a2)
  {
    if (v3)
    {
      sub_1006838D4(&qword_100973190, type metadata accessor for VideoView);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100005744(0, &qword_100972EB0);
        v8 = v4;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
    v18 = v3;
    sub_10047C6C8(v17);

    if (*(*(v16 + v15) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
    {
      type metadata accessor for VideoView();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        *(v19 + qword_100988CA8 + 8) = &off_1008CDCD0;
        swift_unknownObjectWeakAssign();
      }
    }

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_1006838D4(&qword_100973190, type metadata accessor for VideoView);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100005744(0, &qword_100972EB0);
        v13 = v4;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v22 = *(a1 + 16);
    v21 = *(a1 + 24);
    v23 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
    v24 = v3;
    sub_10047C6C8(v23);

    if (*(*(v22 + v21) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
    {
      type metadata accessor for VideoView();
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        *(v25 + qword_100988CA8 + 8) = &off_1008CDCD0;

        swift_unknownObjectWeakAssign();
      }
    }
  }
}

double sub_100682310(double a1)
{
  v3 = type metadata accessor for UpsellBreakoutLayout.Metrics();
  __chkstk_darwin(v3 - 8);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UpsellBreakoutLayout();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_pageTraits))
  {
    return 0.0;
  }

  v10 = swift_unknownObjectRetain();
  sub_100680570(v10, v5, a1);
  v11 = *(v1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer);
  v22[19] = type metadata accessor for MediaView();
  v22[20] = &protocol witness table for UIView;
  v22[16] = v11;
  v12 = *(v1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_detailsView);
  v22[14] = type metadata accessor for BreakoutDetailsView(0);
  v22[15] = &protocol witness table for UIView;
  v22[11] = v12;
  v13 = *(v1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_offerButton);
  v22[9] = type metadata accessor for OfferButton();
  v22[10] = &protocol witness table for UIView;
  v22[6] = v13;
  v14 = *(v1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsView);
  v22[4] = type metadata accessor for CappedSizeDynamicTypeLabel();
  v22[5] = &protocol witness table for UILabel;
  v22[1] = v14;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  UpsellBreakoutLayout.init(metrics:backgroundMediaView:detailsView:actionButton:buttonDetailsView:)();
  UpsellBreakoutLayout.measuredSize(fitting:in:)();
  v20 = v19;
  swift_unknownObjectRelease();
  (*(v7 + 8))(v9, v6);
  return v20;
}

id sub_100682598()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UpsellBreakoutLayout.Metrics();
  __chkstk_darwin(v7 - 8);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UpsellBreakoutLayout();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60.receiver = v1;
  v60.super_class = ObjectType;
  result = objc_msgSendSuper2(&v60, "layoutSubviews", v12);
  v16 = *&v1[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_pageTraits];
  if (v16)
  {
    v46 = v11;
    v47 = v10;
    swift_unknownObjectRetain();
    [v1 bounds];
    sub_100680570(v16, v9, v17);
    v44[0] = v3;
    v18 = *&v1[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer];
    v19 = type metadata accessor for MediaView();
    v44[1] = ObjectType;
    v58 = v19;
    v59 = &protocol witness table for UIView;
    v57 = v18;
    v20 = *&v1[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_detailsView];
    v55 = type metadata accessor for BreakoutDetailsView(0);
    v56 = &protocol witness table for UIView;
    v54 = v20;
    v21 = *&v1[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_offerButton];
    v52 = type metadata accessor for OfferButton();
    v53 = &protocol witness table for UIView;
    v51 = v21;
    v22 = *&v1[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsView];
    v49 = type metadata accessor for CappedSizeDynamicTypeLabel();
    v50 = &protocol witness table for UILabel;
    v48 = v22;
    v45 = v18;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    UpsellBreakoutLayout.init(metrics:backgroundMediaView:detailsView:actionButton:buttonDetailsView:)();
    [v1 bounds];
    UpsellBreakoutLayout.placeChildren(relativeTo:in:)();
    (*(v4 + 8))(v6, v44[0]);
    v26 = *&v1[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_backgroundEffectView];
    [v1 bounds];
    MaxY = CGRectGetMaxY(v61);
    [v23 frame];
    MinY = CGRectGetMinY(v62);
    v29 = &v26[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradientHeight];
    *v29 = MaxY - MinY;
    *(v29 + 8) = 0;
    [v1 bounds];
    [v26 setFrame:?];
    LayoutMarginsAware<>.layoutFrame.getter();
    if (v31 >= v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }

    if (v32 <= 31.0)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v32 * 0.5;
    }

    [v23 frame];
    v34 = CGRectGetMinY(v63) + -34.0;
    v35 = 30.0;
    if (v32 <= 60.0)
    {
      v35 = v33;
    }

    v36 = v34 - v35;
    LayoutMarginsAware<>.layoutFrame.getter();
    MidY = CGRectGetMidY(v64);
    v38 = *&v45[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer];
    v39 = &v38[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
    if (v36 >= MidY)
    {
      v43 = v39[8];
      *v39 = 0;
      v39[8] = 1;
      v41 = v47;
      v42 = v46;
      if (v43)
      {
LABEL_16:
        swift_unknownObjectRelease();
        return (*(v42 + 8))(v14, v41);
      }
    }

    else
    {
      MidY = *v39;
      v40 = v39[8];
      *v39 = v36;
      v39[8] = 0;
      v41 = v47;
      v42 = v46;
      if ((v40 & 1) == 0 && v36 == MidY)
      {
        goto LABEL_16;
      }
    }

    [v38 setNeedsLayout];
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100682A5C()
{
  v1 = *(*(*&v0[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v1)
  {
    type metadata accessor for VideoView();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v1;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 24) = 0;
  v16 = sub_100684390;
  v17 = v6;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100007A08;
  v15 = &unk_1008CDDD8;
  v7 = _Block_copy(&v12);

  v8 = v0;

  v9 = swift_allocObject();
  *(v9 + 16) = sub_100684378;
  *(v9 + 24) = v4;
  v16 = sub_1006843A4;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100504C5C;
  v15 = &unk_1008CDE28;
  v10 = _Block_copy(&v12);

  [v5 animateWithDuration:4 delay:v7 options:v10 animations:0.3 completion:0.0];
  _Block_release(v10);
  _Block_release(v7);
}

void sub_100682C94()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + qword_100988CE8);
    if (v2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1000D0740;
      aBlock[5] = v3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100235C48;
      aBlock[3] = &unk_1008CDE78;
      v4 = _Block_copy(aBlock);
      v5 = v2;

      [v5 enterFullScreenAnimated:1 completionHandler:v4];

      _Block_release(v4);
      v1 = v5;
    }
  }
}

id sub_100682E0C(uint64_t a1, double a2)
{
  [*(a1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_backgroundEffectView) setAlpha:?];
  [*(a1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_detailsView) setAlpha:a2];
  [*(a1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_offerButton) setAlpha:a2];
  v4 = *(a1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsView);

  return [v4 setAlpha:a2];
}

void sub_100682EA4()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = 0x3FF0000000000000;
  v11 = sub_1006838C8;
  v12 = v2;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_100007A08;
  v10 = &unk_1008CDD10;
  v3 = _Block_copy(&v7);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v11 = sub_1000089D4;
  v12 = v5;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_100504C5C;
  v10 = &unk_1008CDD60;
  v6 = _Block_copy(&v7);

  [v1 animateWithDuration:4 delay:v3 options:v6 animations:0.3 completion:0.0];
  _Block_release(v6);
  _Block_release(v3);
}

uint64_t type metadata accessor for UpsellBreakoutView()
{
  result = qword_100991110;
  if (!qword_100991110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100683354()
{
  result = type metadata accessor for BreakoutDetails.TextAlignment();
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

uint64_t sub_100683410()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

uint64_t (*sub_100683484(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100681F44(v2);
  return sub_1000B4CAC;
}

void sub_1006834F4()
{
  if (*(*(*(v0 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
  {
    type metadata accessor for VideoView();
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = *(v1 + qword_100988CE8);
      if (v2)
      {

        [v2 setShowsPlaybackControls:1];
      }
    }
  }
}

uint64_t sub_100683590()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1006838D4(&qword_100991140, type metadata accessor for UpsellBreakoutView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_100683604(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1006838D4(&qword_100991140, type metadata accessor for UpsellBreakoutView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_100683690(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1006838D4(&qword_100991140, type metadata accessor for UpsellBreakoutView);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_10068374C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  sub_100005744(0, &qword_100972EB0);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_1006838D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10068391C()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v59 = &v52 - v3;
  v58 = type metadata accessor for DirectionalTextAlignment();
  v4 = *(v58 - 8);
  __chkstk_darwin(v58);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v52 - v7;
  v61 = type metadata accessor for FontUseCase();
  v64 = *(v61 - 8);
  __chkstk_darwin(v61);
  v63 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10002849C(&unk_1009732B0);
  v57 = *(v62 - 8);
  __chkstk_darwin(v62);
  v10 = &v52 - v9;
  v11 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_tapGestureRecognizer;
  *(v1 + v11) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = type metadata accessor for MediaView();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView] = 0;
  *&v14[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] = 0;
  v14[OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding] = 0;
  *&v14[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v14[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset] = 0;
  v15 = type metadata accessor for UberContentContainer();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = 0;
  *&v16[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
  v17 = &v16[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v16[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  *&v16[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView] = 0;
  v67.receiver = v16;
  v67.super_class = v15;
  v19 = objc_msgSendSuper2(&v67, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = v19;
  if (*&v19[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView])
  {
    [v19 addSubview:?];
  }

  v21 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer;
  *&v14[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] = v20;
  v66.receiver = v14;
  v66.super_class = v13;
  v22 = objc_msgSendSuper2(&v66, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v22 setClipsToBounds:1];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer]];

  *(v1 + v21) = v22;
  v23 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_artworkView;
  type metadata accessor for ArtworkView();
  *(v1 + v23) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_detailsView;
  if (qword_10096ED20 != -1)
  {
    swift_once();
  }

  v25 = v62;
  v26 = sub_1000056A8(v62, qword_1009D3358);
  (*(v57 + 16))(v10, v26, v25);
  v27 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  v28 = sub_100147904(v10);
  v62 = v1;
  *(v1 + v24) = v28;
  v57 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsView;
  if (qword_10096E318 != -1)
  {
    swift_once();
  }

  v29 = v61;
  v30 = sub_1000056A8(v61, qword_1009D18C8);
  v31 = v63;
  v32 = v64;
  v33 = *(v64 + 16);
  v33(v63, v30, v29);
  v55 = v33;
  v52 = UIContentSizeCategoryExtraExtraExtraLarge;
  v34 = enum case for DirectionalTextAlignment.none(_:);
  v56 = v4;
  v35 = *(v4 + 104);
  v36 = v58;
  v35(v65, enum case for DirectionalTextAlignment.none(_:), v58);
  v54 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v54[qword_1009902D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v37 = v59;
  v33(v59, v31, v29);
  v38 = v36;
  v53 = *(v32 + 56);
  v53(v37, 0, 1, v29);
  v39 = v60;
  v35(v60, v34, v38);
  v40 = v52;
  v41 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v42 = v63;
  v55(v37, v63, v29);
  v53(v37, 0, 1, v29);
  v43 = v41;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  dispatch thunk of DynamicTypeLabel.updateFont(to:)();
  [v43 setNumberOfLines:0];
  v44 = v56;
  v45 = v65;
  (*(v56 + 16))(v39, v65, v38);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  (*(v44 + 8))(v45, v38);
  (*(v64 + 8))(v42, v29);
  v46 = v62;
  *(v62 + v57) = v43;
  v47 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsTextAlignment;
  v48 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v49 = type metadata accessor for BreakoutDetails.TextAlignment();
  (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
  v50 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_offerButton;
  v51 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v46 + v50) = sub_1000F5284(0);
  *(v46 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_pageTraits) = 0;
  *(v46 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_isBackgroundEffectViewHidden) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1006840DC(void *a1)
{
  [a1 locationInView:v1];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer];
  if (!*(*&v4[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
  {
    return 0;
  }

  v5 = v2;
  v6 = v3;
  type metadata accessor for VideoView();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return 0;
  }

  v8 = &selRef__setDefaultAttributes_;
  [v7 frame];
  v26.x = v5;
  v26.y = v6;
  if (!CGRectContainsPoint(v28, v26))
  {
    return 0;
  }

  v9 = [v1 subviews];
  sub_100005744(0, &qword_100972EB0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    goto LABEL_21;
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
          goto LABEL_20;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (([v13 isHidden] & 1) == 0 && (objc_msgSend(v14, "isUserInteractionEnabled") & 1) != 0 && (objc_msgSend(v14, v8[407]), v27.x = v5, v27.y = v6, CGRectContainsPoint(v29, v27)))
      {
        v16 = v4;
        v17 = v4;
        v18 = static NSObject.== infix(_:_:)();

        v4 = v16;
        v8 = &selRef__setDefaultAttributes_;
        if ((v18 & 1) == 0)
        {

          return 0;
        }
      }

      else
      {
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  v19 = *(*&v4[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (!v19)
  {
    return 0;
  }

  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    return 0;
  }

  v21 = *(v20 + qword_100988CE0);
  if (!v21)
  {
    return 0;
  }

  v22 = v19;
  v23 = v21;
  v24 = dispatch thunk of VideoPlayer.isPlaying.getter();

  return v24 & 1;
}

uint64_t type metadata accessor for PrefetchMarkerCollectionViewCell()
{
  result = qword_100991170;
  if (!qword_100991170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006845C8()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10068468C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100684834(&qword_100974AD0);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100684710@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_100684768(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100684834(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PrefetchMarkerCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100684878(id a1)
{
  v2 = v1;
  *&v103 = type metadata accessor for StoreTab.Identifier();
  v4 = *(v103 - 8);
  __chkstk_darwin(v103);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10002849C(&unk_1009796D0);
  __chkstk_darwin(v102);
  v8 = (&v85 - v7);
  v9 = sub_100005744(0, &qword_10097AAF0);
  v93 = sub_10002849C(&qword_100973210);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007B15F0;
  if (qword_10096D598 != -1)
  {
LABEL_76:
    swift_once();
  }

  v11 = qword_1009CED60;
  *(v10 + 32) = qword_1009CED60;
  v12 = qword_10096D5A0;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v91 = a1;
  v14 = qword_1009CED68;
  *(v10 + 40) = qword_1009CED68;
  v15 = v14;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v107.value.super.isa = 0;
  v107.is_nil = 0;
  v94 = v9;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v107, 1, 0xFFFFFFFFFFFFFFFFLL, v10, v80).super.super.isa;
  type metadata accessor for ASKBagContract();
  v95 = v2;
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v90 = v104;
  v10 = ASKBagContract.tabs.getter();
  v106 = _swiftEmptyArrayStorage;
  v17 = *(v10 + 16);
  if (!v17)
  {
    v92 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v9 = 0;
  v101 = (v4 + 88);
  v99 = enum case for StoreTab.Identifier.games(_:);
  v100 = enum case for StoreTab.Identifier.today(_:);
  v97 = enum case for StoreTab.Identifier.arcade(_:);
  v98 = enum case for StoreTab.Identifier.apps(_:);
  v96 = (v4 + 8);
  v86 = v17 - 1;
  v92 = _swiftEmptyArrayStorage;
  do
  {
    v18 = v9;
    v4 = v102;
    while (1)
    {
      if (v18 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_76;
      }

      v19 = type metadata accessor for StoreTab();
      v20 = *(v19 - 8);
      v21 = *(v20 + 16);
      v22 = v10 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18;
      v9 = *(v4 + 48);
      *v8 = v18;
      v21(v8 + v9, v22, v19);
      v23 = sub_100040EAC();
      if (v23)
      {
        break;
      }

LABEL_8:
      ++v18;
      sub_10068634C(v8);
      if (v17 == v18)
      {
        goto LABEL_26;
      }
    }

    a1 = v23;
    v24 = [a1 title];
    if (!v24)
    {

      goto LABEL_8;
    }

    v25 = v24;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    StoreTab.identifier.getter();
    v26 = (*v101)(v6, v103);
    if (v26 == v100)
    {
      v27 = &selRef_handleTodayTabSwitchKeyCommand;
      goto LABEL_21;
    }

    if (v26 == v99)
    {
      v27 = &selRef_handleGamesTabSwitchKeyCommand;
      goto LABEL_21;
    }

    if (v26 == v98)
    {
      v27 = &selRef_handleAppsTabSwitchKeyCommand;
      goto LABEL_21;
    }

    if (v26 != v97)
    {

      (*v96)(v6, v103);
      v4 = v102;
      goto LABEL_8;
    }

    v27 = &selRef_handleArcadeTabSwitchKeyCommand;
LABEL_21:
    v92 = *v27;
    v88 = sub_100005744(0, &qword_100982610);
    v87 = [a1 image];

    v9 = v18 + 1;
    *&v104 = v18 + 1;
    dispatch thunk of CustomStringConvertible.description.getter();
    v104 = 0u;
    v105 = 0u;
    UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();

    sub_10068634C(v8);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      a1 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v92 = v106;
  }

  while (v86 != v18);
LABEL_26:

  v28 = v92;
  if (v92 >> 62)
  {
    sub_100005744(0, &qword_1009818C0);

    v29 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100005744(0, &qword_1009818C0);
    v29 = v28;
  }

  v30 = v95;

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v108.value.super.isa = 0;
  v108.is_nil = 0;
  v32.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v31, 0, v108, 1, 0xFFFFFFFFFFFFFFFFLL, v29, v80).super.super.isa;
  *&v104 = _swiftEmptyArrayStorage;
  v33 = *(v30 + OBJC_IVAR____TtC8AppStore14MenuBarManager_activeStoreAccount);
  if (v33 && (v34 = [v33 ams_DSID]) != 0)
  {

    if (qword_10096D5A8 != -1)
    {
      swift_once();
    }

    v35 = qword_1009CED70;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v36 = v104;
    v37 = (v95 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions);
    sub_10002A400((v95 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions), *(v95 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions + 24));
    if ((dispatch thunk of RestrictionsProtocol.isRunningInStoreDemoMode.getter() & 1) == 0)
    {
      sub_10002A400(v37, v37[3]);
      if ((dispatch thunk of RestrictionsProtocol.isAccountModificationRestricted.getter() & 1) == 0)
      {
        if (qword_10096DC10 != -1)
        {
          swift_once();
        }

        v38 = qword_1009D0418;
        goto LABEL_44;
      }
    }
  }

  else
  {
    sub_10002A400((v95 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions), *(v95 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions + 24));
    if (dispatch thunk of RestrictionsProtocol.isAccountModificationRestricted.getter())
    {
      v36 = _swiftEmptyArrayStorage;
    }

    else
    {
      if (qword_10096DC08 != -1)
      {
        swift_once();
      }

      v38 = qword_1009D0410;
LABEL_44:
      v39 = v38;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v36 = v104;
    }
  }

  if (v36 >> 62)
  {
    sub_100005744(0, &qword_1009818C0);

    v40 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100005744(0, &qword_1009818C0);
    v40 = v36;
  }

  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v109.value.super.isa = 0;
  v109.is_nil = 0;
  v42 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v41, 0, v109, 1, 0xFFFFFFFFFFFFFFFFLL, v40, v81.super.super.isa).super.super.isa;
  v43._object = 0x800000010081F5A0;
  v43._countAndFlagsBits = 0xD000000000000010;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  v45 = localizedString(_:comment:)(v43, v44);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1007B48F0;
  v47 = isa;
  *(v46 + 32) = isa;
  *(v46 + 40) = v32;
  *(v46 + 48) = v42;
  v48 = v47;
  v49 = v32.super.super.isa;
  v50 = v42;
  v110.value.super.isa = 0;
  v110.is_nil = 0;
  v51.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v45, 0, v110, 0, 0xFFFFFFFFFFFFFFFFLL, v46, v82).super.super.isa;
  v52 = v91;
  [v91 insertSiblingMenu:v51.super.super.isa afterMenuForIdentifier:UIMenuEdit];
  v53 = swift_allocObject();
  v103 = xmmword_1007B0B70;
  *(v53 + 16) = xmmword_1007B0B70;
  if (qword_10096DC18 != -1)
  {
    swift_once();
  }

  v54 = qword_1009D0420;
  *(v53 + 32) = qword_1009D0420;
  v55 = v54;
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  v111.value.super.isa = 0;
  v111.is_nil = 0;
  v57.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v56, 0, v111, 1, 0xFFFFFFFFFFFFFFFFLL, v53, v83.super.super.isa).super.super.isa;
  [v52 insertChildMenu:v57.super.super.isa atEndOfMenuForIdentifier:UIMenuHelp];
  v58 = ASKBuildTypeGetCurrent();
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;
  if (v59 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v61 == v62)
  {

    goto LABEL_60;
  }

  v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v63)
  {
LABEL_55:

    goto LABEL_59;
  }

  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;
  if (v64 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v66 != v67)
  {
    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v73)
    {
      goto LABEL_55;
    }

    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;
    if (v74 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v76 == v77)
    {
    }

    else
    {
      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v78 & 1) == 0)
      {

        return;
      }
    }

    type metadata accessor for LocalPreferences();
    static LocalPreferences.currentApplication.getter();
    v52 = v91;
    if (qword_10096E988 != -1)
    {
      swift_once();
    }

    v79 = sub_10002849C(&qword_100979740);
    sub_1000056A8(v79, qword_1009D2A68);
    Preferences.subscript.getter();

    if (v106 != 2 && (v106 & 1) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_63;
  }

LABEL_59:
  v52 = v91;
LABEL_60:
  v68 = swift_allocObject();
  *(v68 + 16) = v103;
  if (qword_10096DC20 != -1)
  {
    swift_once();
  }

  v69 = qword_1009D0428;
  *(v68 + 32) = qword_1009D0428;
  v70 = v69;
  v71._countAndFlagsBits = 0x6775626544;
  v71._object = 0xE500000000000000;
  v112.value.super.isa = 0;
  v112.is_nil = 0;
  v72 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v71, 0, v112, 0, 0xFFFFFFFFFFFFFFFFLL, v68, v84.super.super.isa).super.super.isa;
  [v52 insertSiblingMenu:v72 beforeMenuForIdentifier:UIMenuWindow];

LABEL_63:
}

uint64_t sub_100685654()
{
  if (static Selector.== infix(_:_:)())
  {
    v1 = *(v0 + OBJC_IVAR____TtC8AppStore14MenuBarManager_activeStoreAccount);
    if (v1)
    {
      v2 = [v1 ams_DSID];
      if (v2)
      {

        return 1;
      }
    }

    sub_10002A400((v0 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions), *(v0 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions + 24));
    return dispatch thunk of RestrictionsProtocol.isAccountModificationRestricted.getter() & 1;
  }

  if (static Selector.== infix(_:_:)())
  {
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore14MenuBarManager_activeStoreAccount);
    if (!v3)
    {
      return 1;
    }

    v4 = [v3 ams_DSID];
    if (!v4)
    {
      return 1;
    }

    v5 = (v0 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions);
    sub_10002A400((v0 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions), *(v0 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions + 24));
    if (dispatch thunk of RestrictionsProtocol.isRunningInStoreDemoMode.getter())
    {
      return 1;
    }

    sub_10002A400(v5, v5[3]);
    return dispatch thunk of RestrictionsProtocol.isAccountModificationRestricted.getter() & 1;
  }

  return 2;
}

char *sub_100685788(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC8AppStore14MenuBarManager_activeStoreAccount;
  *&v3[OBJC_IVAR____TtC8AppStore14MenuBarManager_activeStoreAccount] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore14MenuBarManager_objectGraph] = a1;
  *&v3[OBJC_IVAR____TtC8AppStore14MenuBarManager_tabBarController] = a2;
  v29 = type metadata accessor for Restrictions();
  v30 = &protocol witness table for Restrictions;
  type metadata accessor for BaseObjectGraph();

  v26 = a2;
  inject<A, B>(_:from:)();
  sub_100005A38(&v28, &v3[OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions]);
  sub_100005744(0, &qword_10098D1A0);
  inject<A, B>(_:from:)();
  v8 = v28;
  *&v3[OBJC_IVAR____TtC8AppStore14MenuBarManager_storeAccountStore] = v28;
  v9 = [v8 ams_activeiTunesAccount];
  v10 = *&v3[v7];
  *&v3[v7] = v9;

  v27.receiver = v3;
  v27.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v27, "init");
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  [v14 addObserver:v13 selector:"storeAccountsDidChange" name:ACAccountStoreDidChangeNotification object:*&v13[OBJC_IVAR____TtC8AppStore14MenuBarManager_storeAccountStore]];

  v15 = [v12 defaultCenter];
  v16 = static Restrictions.DidChangeMessage.name.getter();
  v17 = *&v13[OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions + 24];
  v18 = sub_10002A400(&v13[OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions], v17);
  v19 = *(v17 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v26 - v21;
  (*(v19 + 16))(&v26 - v21, v20);
  v23 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v19 + 8))(v22, v17);
  [v15 addObserver:v13 selector:"rebuildMenu" name:v16 object:v23];

  swift_unknownObjectRelease();
  v24 = [objc_opt_self() mainSystem];
  [v24 setNeedsRebuild];

  return v13;
}

uint64_t sub_100685AAC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v4 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0);
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v7);
  v11 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  v13 = v18;
  *(v12 + 16) = v18;
  aBlock[4] = sub_100686344;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008CDEC8;
  v14 = _Block_copy(aBlock);
  v15 = v13;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v19);
}

void sub_100685DFC(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v6 = *(v22 - 8);
  *&v7 = __chkstk_darwin(v22).n128_u64[0];
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [*(a1 + OBJC_IVAR____TtC8AppStore14MenuBarManager_storeAccountStore) ams_activeiTunesAccount];
  v10 = [v23 ams_DSID];
  v11 = OBJC_IVAR____TtC8AppStore14MenuBarManager_activeStoreAccount;
  v12 = *(a1 + OBJC_IVAR____TtC8AppStore14MenuBarManager_activeStoreAccount);
  if (v12)
  {
    v13 = [v12 ams_DSID];
    v14 = v13;
    if (v10)
    {
      if (v13)
      {
        sub_100005744(0, &qword_10097FB80);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_10;
        }

LABEL_8:
        v16 = *(a1 + v11);
        v17 = v23;
        *(a1 + v11) = v23;
        v18 = v17;

        sub_100005744(0, &qword_1009729E0);
        v19 = static OS_dispatch_queue.main.getter();
        aBlock[4] = sub_10068616C;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100007A08;
        aBlock[3] = &unk_1008CDEF0;
        v20 = _Block_copy(aBlock);
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10002D150();
        sub_10002849C(&unk_1009729F0);
        sub_1000079A4();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v20);

        (*(v3 + 8))(v5, v2);
        (*(v6 + 8))(v9, v22);
        return;
      }

LABEL_7:

      goto LABEL_8;
    }

    v10 = v13;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  else if (v10)
  {
    goto LABEL_7;
  }

LABEL_10:
  v21 = v23;
}

void sub_10068616C()
{
  v0 = [objc_opt_self() mainSystem];
  [v0 setNeedsRebuild];
}

uint64_t sub_10068634C(uint64_t a1)
{
  v2 = sub_10002849C(&unk_1009796D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1006863BC(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView] = 0;
  v4[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_sizeCategory] = 5;
  v4[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_originalSizeCategory] = 5;
  v4[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isLayoutRequired] = 1;
  v4[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for InfoLayerOverlayContainerView();
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  sub_10002849C(&qword_10097B110);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007B10D0;
  *(v10 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v10 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v11 = v9;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v11;
}

void sub_1006865EC()
{
  v1 = OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView);
  if (v2)
  {
    v4[0] = 0x3FF0000000000000;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = 0x3FF0000000000000;
    v4[4] = 0;
    v4[5] = 0;
    [v2 setTransform:v4];
    v2 = *(v0 + v1);
  }

  [v2 removeFromSuperview];
  v3 = *(v0 + v1);
  *(v0 + v1) = 0;

  *(v0 + OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isLayoutRequired) = 1;
}

void sub_10068666C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for InfoLayerOverlayContainerView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView];
  if (v1)
  {
    v2 = v0[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_originalSizeCategory];
    v3 = v1;
    v4 = v3;
    if (v2 == 4)
    {
      sub_100686754(v3);
    }

    else
    {
      [v0 bounds];
      [v4 setFrame:?];
    }
  }
}

uint64_t sub_100686754(void *a1)
{
  v2 = v1;
  [v1 bounds];
  v5 = v4;
  [a1 bounds];
  v7 = v6;
  v9 = v8;
  v10 = objc_opt_self();
  [v10 setAnimationsEnabled:0];
  if (v5 == v7)
  {
    goto LABEL_2;
  }

  if (v7 < v5 && (v7 != 0.0 || v9 != 0.0))
  {
    goto LABEL_11;
  }

  if (v7 == 0.0 && v9 == 0.0)
  {
LABEL_2:
    [v2 bounds];
    [a1 setFrame:?];
LABEL_3:
    [v10 setAnimationsEnabled:1];
    v20.a = 1.0;
    v20.b = 0.0;
    v20.c = 0.0;
    v20.d = 1.0;
    v20.tx = 0.0;
    v20.ty = 0.0;
    return [a1 setTransform:&v20];
  }

  if (*(v2 + OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isExpanded) == 1)
  {
LABEL_11:
    [v2 bounds];
    [a1 setFrame:?];
    [a1 transform];
    CGAffineTransformScale(&v19, &v20, v7 / v5, v7 / v5);
    v20 = v19;
    [a1 setTransform:&v20];
    goto LABEL_3;
  }

  CGAffineTransformMakeScale(&v20, v5 / v7, v5 / v7);
  v14 = *&v20.c;
  v15 = *&v20.a;
  tx = v20.tx;
  ty = v20.ty;
  [v10 setAnimationsEnabled:1];
  [a1 transform];
  v20.a = 1.0;
  v20.b = 0.0;
  v20.c = 0.0;
  v20.d = 1.0;
  v20.tx = 0.0;
  v20.ty = 0.0;
  result = static CGAffineTransform.== infix(_:_:)();
  if (result)
  {
    v16[0] = v15;
    v16[1] = v14;
    v17 = tx;
    v18 = ty;
    return [a1 setTransform:v16];
  }

  return result;
}

void sub_100686978()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView];
  if (v1)
  {
    [v1 sizeThatFits:?];
  }

  else
  {
    v2 = [v0 traitCollection];
    if (qword_10096EFE0 != -1)
    {
      swift_once();
    }

    sub_1002D2EF4(v2, &xmmword_1009D3ED0, 1);
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
  }
}

id sub_100686AD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InfoLayerOverlayContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_100686B5C(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore15LockupMediaView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100686BC0;
}

void sub_100686BC0(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_100690838(&qword_100973190, 255, type metadata accessor for VideoView);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100005744(0, &qword_100972EB0);
        v10 = v4;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    sub_1001B8790();
    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_100690838(&qword_100973190, 255, type metadata accessor for VideoView);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100005744(0, &qword_100972EB0);
      v16 = v4;
      v17 = static NSObject.== infix(_:_:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [a1[1] addSubview:v19];
  }

  sub_1001B8790();
  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

id (*sub_100686E84(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100686EE8;
}

id sub_100686EE8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView);
    v7 = *(v6 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton);
    if (v7)
    {
      [v7 addTarget:? action:? forControlEvents:?];
      v5 = *(a1 + 24);
    }

    v8 = *(v6 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);

    return [v8 addTarget:v5 action:"disableAdvertRotationTap" forControlEvents:64];
  }

  return result;
}

char *sub_100686F98(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  *&v4[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_preferredImageSizes] = _swiftEmptyDictionarySingleton;
  v11 = &v4[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_disableAdvertRotation];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_impressionsCalculator] = 0;
  v12 = &v4[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_impressionsUpdateBlock];
  v13 = type metadata accessor for AdvertsSearchResultContentView();
  *v12 = 0;
  *(v12 + 1) = 0;
  v20.receiver = v4;
  v20.super_class = v13;
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView]];

  return v18;
}

id sub_1006871EC()
{
  v1 = v0;
  v2 = type metadata accessor for SmallSearchLockupLayout();
  v142 = *(v2 - 8);
  v143 = v2;
  __chkstk_darwin(v2);
  v141 = &v110[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v145 = *(v4 - 8);
  v146 = v4;
  __chkstk_darwin(v4);
  v113 = &v110[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LabelPlaceholderCompatibility();
  v130 = *(v6 - 8);
  v131 = v6;
  __chkstk_darwin(v6);
  v129 = &v110[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OfferButtonMetrics();
  v153 = *(v8 - 8);
  v154 = v8;
  __chkstk_darwin(v8);
  v127 = &v110[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v152 = &v110[-v11];
  v157 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v151 = *(v157 - 8);
  __chkstk_darwin(v157);
  v137 = &v110[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v158 = &v110[-v14];
  v15 = sub_10002849C(&unk_1009912C0);
  __chkstk_darwin(v15 - 8);
  v112 = &v110[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v156 = &v110[-v18];
  v19 = sub_10002849C(&unk_10096FC10);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v110[-v21];
  v23 = type metadata accessor for AdvertsSearchResultContentView();
  v196.receiver = v0;
  v196.super_class = v23;
  objc_msgSendSuper2(&v196, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = *&v0[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView];
  sub_1000AB0CC();
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v32 setFrame:?];
  static StandardSearchResultContentViewMetrics.bottomMargin.getter();
  v33 = [v0 traitCollection];
  v34 = type metadata accessor for TraitEnvironmentPlaceholder();
  v136 = sub_10002849C(&qword_100973210);
  v35 = swift_allocObject();
  v150 = xmmword_1007B0B70;
  *(v35 + 16) = xmmword_1007B0B70;
  *(v35 + 32) = v33;
  v36 = v33;
  v147 = v34;
  v37 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  v133 = sub_1000320F0();
  dispatch thunk of AnyDimension.rawValue(in:)();
  v132 = v38;

  v39 = *(v20 + 8);
  v138 = v22;
  v139 = v20 + 8;
  v140 = v19;
  v135 = v39;
  v39(v22, v19);
  v197.origin.x = v25;
  v197.origin.y = v27;
  v197.size.width = v29;
  v197.size.height = v31;
  MinX = CGRectGetMinX(v197);
  [v32 frame];
  MaxY = CGRectGetMaxY(v198);
  v40 = *&v32[OBJC_IVAR____TtC8AppStore14BaseLockupView_title + 8];
  v119 = *&v32[OBJC_IVAR____TtC8AppStore14BaseLockupView_title];
  v41 = *&v32[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
  v118 = v40;

  v42 = [v41 text];
  if (v42)
  {
    v43 = v42;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v45;
    v122 = v44;
  }

  else
  {
    v121 = 0;
    v122 = 0;
  }

  v46 = [*&v32[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_descriptionLabel] text];
  v47 = v145;
  if (v46)
  {
    v48 = v46;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v50;
    v124 = v49;
  }

  else
  {
    v123 = 0;
    v124 = 0;
  }

  v51 = *&v32[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView];
  v52 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v53 = *(v51 + v52);
  v54 = *(*&v32[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels);
  v111 = v32[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_shouldEvenlyDistribute];
  v149 = v54;

  v155 = v53;

  v55 = [v1 traitCollection];
  (*(v47 + 56))(v156, 1, 1, v146);
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v56 = v157;
  v57 = sub_1000056A8(v157, qword_1009CDC00);
  v125 = *(v151 + 16);
  v126 = v151 + 16;
  v125(v158, v57, v56);
  v58 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v144 = v1;
  if (v58)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v59 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v59 = qword_100991028;
  }

  v60 = v154;
  v61 = sub_1000056A8(v154, v59);
  v62 = v153;
  v63 = v127;
  (*(v153 + 16))(v127, v61, v60);
  (*(v62 + 32))(v152, v63, v60);
  v64 = [v55 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v120 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v127 = LayoutViewPlaceholder.init(representing:)();
  v65 = objc_opt_self();
  v116 = v65;
  v66 = [v65 preferredFontForTextStyle:UIFontTextStyleBody];
  v148 = v55;
  v67 = type metadata accessor for Feature();
  v195[3] = v67;
  v68 = sub_100690838(&qword_100972E50, 255, &type metadata accessor for Feature);
  v195[4] = v68;
  v115 = v68;
  v69 = sub_1000056E0(v195);
  v70 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v71 = *(v67 - 8);
  v72 = *(v71 + 104);
  v117 = v71 + 104;
  v114 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v72(v69, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  isFeatureEnabled(_:)();
  sub_100007000(v195);
  v73 = v129;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v74 = v131;
  v130 = *(v130 + 8);
  (v130)(v73, v131);
  v75 = [v65 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v194[3] = v67;
  v194[4] = v68;
  v76 = sub_1000056E0(v194);
  v72(v76, v70, v67);
  isFeatureEnabled(_:)();
  sub_100007000(v194);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v77 = v130;
  (v130)(v73, v74);
  v78 = [v116 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v193[3] = v67;
  v193[4] = v115;
  v79 = sub_1000056E0(v193);
  v72(v79, v114, v67);
  isFeatureEnabled(_:)();
  sub_100007000(v193);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v77(v73, v74);
  v80 = v155;
  LODWORD(v131) = sub_1000AE138(0, v155) & (v80 != 0);
  if (v131 == 1)
  {
    v81 = v120;
    v82 = objc_allocWithZone(v147);
    v83 = v148;
    v84 = TraitEnvironmentPlaceholder.init(traitCollection:)();
    v85 = v112;
    sub_100031660(v156, v112, &unk_1009912C0);
    v87 = v145;
    v86 = v146;
    v88 = *(v145 + 48);
    if (v88(v85, 1, v146) == 1)
    {
      v89 = v113;
      static MetadataRibbonViewLayout.Metrics.standard.getter();
      if (v88(v85, 1, v86) != 1)
      {
        sub_10002B894(v85, &unk_1009912C0);
      }
    }

    else
    {
      v89 = v113;
      (*(v87 + 32))(v113, v85, v86);
    }

    v91 = v84;
    sub_1000AD91C(v155, v89, v91);

    (*(v87 + 8))(v89, v86);
    swift_allocObject();
    v90 = LayoutViewPlaceholder.init(measurements:)();
  }

  else
  {
    v81 = v120;
    swift_allocObject();
    v90 = LayoutViewPlaceholder.init(representing:)();
  }

  v92 = v90;

  v93 = v149;
  if ((sub_1000AE138(v149, 0) & (v93 != 0)) == 1)
  {
    sub_100046528(v93, v111);
    swift_allocObject();
    v94 = LayoutViewPlaceholder.init(measurements:)();
  }

  else
  {
    swift_allocObject();
    v94 = LayoutViewPlaceholder.init(representing:)();
  }

  v95 = v94;
  v125(v137, v158, v157);
  v192 = &protocol witness table for LayoutViewPlaceholder;
  v191 = v81;
  v190 = v127;
  v189 = 0;
  *&v187[40] = 0u;
  v188 = 0u;
  sub_10002C0AC(v195, v187);
  sub_10002C0AC(v194, &v186);
  v185 = 0;
  v183 = 0u;
  v184 = 0u;
  v182 = 0;
  v180 = 0u;
  v181 = 0u;

  v146 = v95;
  v96 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v179 = &protocol witness table for LayoutViewPlaceholder;
  v178 = v81;
  v177 = v96;
  v176 = 0;
  v174 = 0u;
  v175 = 0u;
  v173 = 0;
  v171 = 0u;
  v172 = 0u;
  v170 = 0;
  v168 = 0u;
  v169 = 0u;
  v167 = 0;
  v166 = 0u;
  *&v165[40] = 0u;
  sub_10002C0AC(v193, v165);
  v163 = v81;
  v164 = &protocol witness table for LayoutViewPlaceholder;
  v161 = &protocol witness table for LayoutViewPlaceholder;
  v162 = v92;
  v160 = v81;
  v159 = v95;
  v97 = v141;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  v98 = swift_allocObject();
  *(v98 + 16) = v150;
  v99 = v148;
  *(v98 + 32) = v148;
  v100 = v99;
  v101 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_100690838(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout);
  v102 = v143;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v142 + 8))(v97, v102);
  sub_100007000(v193);
  sub_100007000(v194);
  sub_100007000(v195);
  (*(v153 + 8))(v152, v154);
  (*(v151 + 8))(v158, v157);
  sub_10002B894(v156, &unk_1009912C0);
  v103 = v138;
  static StandardSearchResultContentViewMetrics.bottomMargin.getter();
  v104 = swift_allocObject();
  *(v104 + 16) = v150;
  *(v104 + 32) = v100;
  v105 = v100;
  v106 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  v107 = v140;
  dispatch thunk of AnyDimension.rawValue(in:)();

  v135(v103, v107);
  v108 = *&v144[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView];
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v108 setFrame:?];
}