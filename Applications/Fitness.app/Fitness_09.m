unint64_t sub_10015C3E4()
{
  result = qword_1008DC798;
  if (!qword_1008DC798)
  {
    sub_100141EEC(&qword_1008DC788);
    sub_10014A6B0(&qword_1008DC7A0, &qword_1008DC780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC798);
  }

  return result;
}

uint64_t sub_10015C49C()
{
  v1 = *(type metadata accessor for AwardsCardView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10015AF80(v2);
}

uint64_t sub_10015C4FC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10015C580()
{
  result = qword_1008DC830;
  if (!qword_1008DC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC830);
  }

  return result;
}

unint64_t sub_10015C5D4()
{
  result = qword_1008DC868;
  if (!qword_1008DC868)
  {
    sub_100141EEC(&qword_1008DC7E0);
    sub_10015C93C(&qword_1008DC858, type metadata accessor for SmallAwardsCardView);
    sub_10015C93C(&qword_1008DC860, type metadata accessor for LargeAwardsCardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC868);
  }

  return result;
}

unint64_t sub_10015C6C0()
{
  result = qword_1008DC888;
  if (!qword_1008DC888)
  {
    sub_100141EEC(&qword_1008DC7D0);
    sub_10015C5D4();
    sub_10015C4FC(&qword_1008DC870, &qword_1008DC7B8, &unk_1006D4F80, sub_100071784);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC888);
  }

  return result;
}

uint64_t sub_10015C778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015C7E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10015C840()
{
  v1 = *(type metadata accessor for AwardsCardView() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10015B03C(v2, v3);
}

uint64_t sub_10015C8B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AwardsCardView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_10015B2C0(a1, a2, v8, a3);
}

uint64_t sub_10015C93C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10015C984@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AAUIAwardsDataProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10015C9C4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityDashboardViewController();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10015CA04@<X0>(uint64_t *a1@<X8>)
{
  sub_1000059F8(0, &unk_1008DC348);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10015CA54@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FIPauseRingsCoordinator();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10015CA94@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SeymourCatalogItemDataProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10015CAD4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutImageProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10015CB14@<X0>(uint64_t *a1@<X8>)
{
  sub_1000059F8(0, &unk_1008F2050);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

id sub_10015CB64(uint64_t a1)
{
  *&v1[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView] = 0;
  *&v1[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_observers] = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_presentationContext] = a1;
  sub_1000059F8(0, &qword_1008DC998);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v9 = [v4 bundleForClass:ObjCClassFromMetadata];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v15.receiver = v1;
  v15.super_class = type metadata accessor for ActivitySetupThreeRingsOnboardingViewController();
  v13 = objc_msgSendSuper2(&v15, "initWithTitle:detailText:icon:contentLayout:", v8, v12, 0, 3);

  return v13;
}

void sub_10015CDEC()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008DC990);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = type metadata accessor for ActivitySetupThreeRingsOnboardingViewController();
  v30.receiver = v0;
  v30.super_class = v8;
  objc_msgSendSuper2(&v30, "viewDidLoad");
  v9 = [objc_opt_self() boldButton];
  [v9 addTarget:v1 action:"didTapAcceptButton" forControlEvents:64];
  sub_1000059F8(0, &qword_1008DC998);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = v9;
  v28 = ObjCClassFromMetadata;
  v13 = [v11 bundleForClass:ObjCClassFromMetadata];
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v12 setTitle:v16 forState:0];
  UIButton.configuration.getter();
  v17 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v17 - 8) + 48))(v7, 1, v17))
  {
    sub_10015DEBC(v7, v5);
    UIButton.configuration.setter();

    sub_10015DF2C(v7);
  }

  else
  {
    v18 = BPSPillSelectedColor();
    v19 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v19(v29, 0);
    UIButton.configuration.setter();
  }

  v20 = [v1 buttonTray];
  [v20 addButton:v12];

  if (*&v1[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_presentationContext] == 4)
  {
    v21 = [objc_opt_self() linkButton];
    [v21 addTarget:v1 action:"didTapSkipButton" forControlEvents:64];
    v22 = [v11 bundleForClass:v28];
    v23 = String._bridgeToObjectiveC()();
    v24 = String._bridgeToObjectiveC()();
    v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

    if (!v25)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = String._bridgeToObjectiveC()();
    }

    [v21 setTitle:v25 forState:0];
    v26 = [v1 buttonTray];
    [v26 addButton:v21];
  }

  sub_10015D5A8();
}

void sub_10015D2C0(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ActivitySetupThreeRingsOnboardingViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  sub_10015D9AC();
  v3 = *&v1[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView];
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView_playerLayer];
    v5 = v3;
    v6 = [v4 player];
    [v6 play];
  }
}

void sub_10015D418()
{
  v3 = [objc_allocWithZone(CHASActivitySetupViewController) initWithPresentationContext:*&v0[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_presentationContext]];
  [v3 setDelegate:{objc_msgSend(v0, "delegate")}];
  swift_unknownObjectRelease();
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    [v1 pushViewController:v3 animated:1];
  }
}

uint64_t sub_10015D5A8()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = objc_opt_self();
  v4 = [v3 mainQueue];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_10015DEAC;
  v20 = v5;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100026F8C;
  v18 = &unk_100847AC8;
  v6 = _Block_copy(&v15);

  v7 = [v2 addObserverForName:UIApplicationWillEnterForegroundNotification object:0 queue:v4 usingBlock:v6];
  _Block_release(v6);

  v8 = [v1 defaultCenter];
  v9 = [v3 mainQueue];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_10015DEB4;
  v20 = v10;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100026F8C;
  v18 = &unk_100847AF0;
  v11 = _Block_copy(&v15);

  v12 = [v8 addObserverForName:UIApplicationDidEnterBackgroundNotification object:0 queue:v9 usingBlock:v11];
  _Block_release(v11);

  sub_100140278(&qword_1008E7590);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006D1F70;
  *(v13 + 56) = swift_getObjectType();
  *(v13 + 32) = v7;
  *(v13 + 88) = swift_getObjectType();
  *(v13 + 64) = v12;
  *(v0 + OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_observers) = v13;
}

void sub_10015D880()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10015D9AC();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView);
    v4 = v2;
    v5 = v3;

    if (v3)
    {
      v6 = [*&v5[OBJC_IVAR____TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView_playerLayer] player];
      [v6 play];
    }
  }
}

void sub_10015D958()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10015DCD4();
  }
}

void sub_10015D9AC()
{
  v1 = [objc_allocWithZone(type metadata accessor for ActivitySetupThreeRingsOnboardingVideoView()) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v0 contentView];
  [v2 addSubview:v1];

  v3 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006D5300;
  v5 = [v1 leadingAnchor];
  v6 = [v0 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v4 + 32) = v8;
  v9 = [v1 trailingAnchor];
  v10 = [v0 contentView];
  v11 = [v10 trailingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v4 + 40) = v12;
  v13 = [v1 topAnchor];
  v14 = [v0 contentView];
  v15 = [v14 topAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:30.0];
  *(v4 + 48) = v16;
  v17 = [v1 bottomAnchor];

  v18 = [v0 contentView];
  v19 = [v18 bottomAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v4 + 56) = v20;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];

  v22 = *&v0[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView];
  *&v0[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView] = v1;
}

void sub_10015DCD4()
{
  v1 = v0;
  v2 = OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView;
  v3 = *(v0 + OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView);
  if (v3)
  {
    v4 = v3;
    sub_1006761A4();

    v5 = *(v1 + v2);
    if (v5)
    {
      [v5 removeFromSuperview];
      v5 = *(v1 + v2);
    }
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v2) = 0;
}

id sub_10015DDB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySetupThreeRingsOnboardingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10015DEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DC990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015DF2C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DC990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10015E19C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ActivityChartDataCache()
{
  result = qword_1008DCA30;
  if (!qword_1008DCA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015E2B4()
{
  result = type metadata accessor for Calendar();
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

__n128 sub_10015E3B4@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008DCAD8);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0xC008000000000000;
  v6[16] = 0;
  v7 = sub_100140278(&qword_1008DCAE0);
  sub_10015E4FC(a1, &v6[*(v7 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10015EC38(v6, a2);
  v8 = a2 + *(sub_100140278(&qword_1008DCAE8) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

id sub_10015E4FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin(v3);
  v57 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008DCAF0);
  v6 = __chkstk_darwin(v5 - 8);
  v62 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v57 - v8;
  v9 = sub_100140278(&qword_1008DCAF8);
  v10 = __chkstk_darwin(v9 - 8);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v57 - v12;
  type metadata accessor for ActivitySharingAvatarProvider();
  sub_100549740(a1, 120.0);
  v14 = Image.init(uiImage:)();
  v15 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  *&v74 = v14;
  BYTE8(v74) = v15;
  *&v75 = v16;
  *(&v75 + 1) = v17;
  *&v76 = v18;
  *(&v76 + 1) = v19;
  LOBYTE(v77) = 0;
  sub_100140278(&qword_1008DCB00);
  sub_10015ECA8();
  v64 = v13;
  View.accessibilityHidden(_:)();

  v60 = a1;
  result = [a1 displayName];
  if (result)
  {
    v21 = result;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *&v74 = v22;
    *(&v74 + 1) = v24;
    sub_10000FCBC();
    v25 = Text.init<A>(_:)();
    v27 = v26;
    LOBYTE(v24) = v28;
    static Font.largeTitle.getter();
    v29 = Text.font(_:)();
    v31 = v30;
    v33 = v32;

    sub_10004642C(v25, v27, v24 & 1);

    v34 = Text.bold()();
    v36 = v35;
    LOBYTE(v24) = v37;
    v39 = v38;
    sub_10004642C(v29, v31, v33 & 1);

    KeyPath = swift_getKeyPath();
    v41 = swift_getKeyPath();
    v42 = v24 & 1;
    v83 = v24 & 1;
    v82 = 0;
    LOBYTE(v24) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v84 = 0;
    *&v66 = v34;
    *(&v66 + 1) = v36;
    LOBYTE(v67) = v42;
    *(&v67 + 1) = v39;
    *&v68 = KeyPath;
    *(&v68 + 1) = 2;
    LOBYTE(v69) = 0;
    *(&v69 + 1) = v41;
    LOBYTE(v70) = 1;
    BYTE8(v70) = v24;
    *&v71 = v43;
    *(&v71 + 1) = v44;
    *&v72 = v45;
    *(&v72 + 1) = v46;
    v73 = 0;
    v47 = v57;
    static AccessibilityTraits.isHeader.getter();
    sub_100140278(&qword_1008DCB10);
    sub_10015ED2C();
    v48 = v65;
    View.accessibilityAddTraits(_:)();
    (*(v58 + 8))(v47, v59);
    v78 = v70;
    v79 = v71;
    v80 = v72;
    v81 = v73;
    v74 = v66;
    v75 = v67;
    v76 = v68;
    v77 = v69;
    sub_10000EA04(&v74, &qword_1008DCB10);
    sub_10015EA98(v60, &v66);
    v49 = v66;
    LOBYTE(v24) = v67;
    v50 = *(&v67 + 1);
    v51 = v61;
    sub_10001B104(v64, v61, &qword_1008DCAF8);
    v52 = v48;
    v53 = v62;
    sub_10001B104(v52, v62, &qword_1008DCAF0);
    v54 = v63;
    sub_10001B104(v51, v63, &qword_1008DCAF8);
    v55 = sub_100140278(&qword_1008DCB60);
    sub_10001B104(v53, v54 + *(v55 + 48), &qword_1008DCAF0);
    v56 = v54 + *(v55 + 64);
    *v56 = v49;
    *(v56 + 16) = v24;
    *(v56 + 24) = v50;
    sub_10006965C(v49, *(&v49 + 1), v24);

    sub_10000EA04(v65, &qword_1008DCAF0);
    sub_10000EA04(v64, &qword_1008DCAF8);
    sub_10004642C(v49, *(&v49 + 1), v24);

    sub_10000EA04(v53, &qword_1008DCAF0);
    return sub_10000EA04(v51, &qword_1008DCAF8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015EA98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 contact];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 relationship];

    v6 = [v5 cloudKitAddress];
    if (v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  sub_10000FCBC();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  static Font.subheadline.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;

  sub_10004642C(v7, v9, v11 & 1);

  static Color.secondary.getter();
  v17 = Text.foregroundColor(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_10004642C(v12, v14, v16 & 1);

  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v23;
  return result;
}

uint64_t sub_10015EC38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DCAD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10015ECA8()
{
  result = qword_1008DCB08;
  if (!qword_1008DCB08)
  {
    sub_100141EEC(&qword_1008DCB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCB08);
  }

  return result;
}

unint64_t sub_10015ED2C()
{
  result = qword_1008DCB18;
  if (!qword_1008DCB18)
  {
    sub_100141EEC(&qword_1008DCB10);
    sub_10015EDB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCB18);
  }

  return result;
}

unint64_t sub_10015EDB8()
{
  result = qword_1008DCB20;
  if (!qword_1008DCB20)
  {
    sub_100141EEC(&qword_1008DCB28);
    sub_10015EE70();
    sub_10014A6B0(&qword_1008DCB50, &qword_1008DCB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCB20);
  }

  return result;
}

unint64_t sub_10015EE70()
{
  result = qword_1008DCB30;
  if (!qword_1008DCB30)
  {
    sub_100141EEC(&qword_1008DCB38);
    sub_10014A6B0(&qword_1008DCB40, &qword_1008DCB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCB30);
  }

  return result;
}

unint64_t sub_10015EF28()
{
  result = qword_1008DCB68;
  if (!qword_1008DCB68)
  {
    sub_100141EEC(&qword_1008DCAE8);
    sub_10014A6B0(&qword_1008DCB70, &qword_1008DCAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCB68);
  }

  return result;
}

id sub_10015F0E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutBuddyStatus();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10015F17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v71 = sub_100140278(&qword_1008DCC80);
  __chkstk_darwin(v71);
  v58 = &v55 - v3;
  v72 = sub_100140278(&qword_1008DCC88);
  v60 = *(v72 - 8);
  __chkstk_darwin(v72);
  v59 = &v55 - v4;
  v64 = sub_100140278(&qword_1008DCC90);
  __chkstk_darwin(v64);
  v55 = (&v55 - v5);
  v66 = sub_100140278(&qword_1008DCC98);
  v57 = *(v66 - 8);
  __chkstk_darwin(v66);
  v56 = &v55 - v6;
  v68 = sub_100140278(&qword_1008DCCA0);
  __chkstk_darwin(v68);
  v70 = &v55 - v7;
  v61 = sub_100140278(&qword_1008DCCA8);
  __chkstk_darwin(v61);
  v63 = &v55 - v8;
  v69 = sub_100140278(&qword_1008DCCB0);
  __chkstk_darwin(v69);
  v65 = &v55 - v9;
  v67 = type metadata accessor for AccessibilityChildBehavior();
  v10 = *(v67 - 8);
  __chkstk_darwin(v67);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008DCCB8);
  __chkstk_darwin(v13);
  v15 = &v55 - v14;
  v62 = sub_100140278(&qword_1008DCCC0);
  v16 = *(v62 - 8);
  __chkstk_darwin(v62);
  v18 = &v55 - v17;
  v19 = a1;
  v20 = (a1 + *(type metadata accessor for DashboardCardView() + 20));
  v21 = v20[3];
  v22 = v20[4];
  sub_1000066AC(v20, v21);
  v23 = (*(v22 + 16))(v21, v22);
  if (v25 != 3)
  {
    goto LABEL_14;
  }

  if (v23 > 4)
  {
    if (!(v23 ^ 5 | v24))
    {
      v37 = static Alignment.top.getter();
      v38 = v55;
      *v55 = v37;
      *(v38 + 8) = v39;
      v40 = sub_100140278(&qword_1008DCF00);
      sub_10016038C(v19, (v38 + *(v40 + 44)));
      static AccessibilityChildBehavior.combine.getter();
      v41 = sub_10014A6B0(&qword_1008DCCD8, &qword_1008DCC90);
      v42 = v56;
      v43 = v64;
      View.accessibilityElement(children:)();
      (*(v10 + 8))(v12, v67);
      sub_10000EA04(v38, &qword_1008DCC90);
      v44 = v57;
      v45 = v66;
      (*(v57 + 16))(v63, v42, v66);
      swift_storeEnumTagMultiPayload();
      v46 = sub_10014A6B0(&qword_1008DCCD0, &qword_1008DCCB8);
      v74 = v13;
      v75 = v46;
      swift_getOpaqueTypeConformance2();
      v74 = v43;
      v75 = v41;
      swift_getOpaqueTypeConformance2();
      v47 = v65;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v47, v70, &qword_1008DCCB0);
      swift_storeEnumTagMultiPayload();
      sub_1001612E8();
      v48 = sub_100054664();
      v74 = v71;
      v75 = v48;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v47, &qword_1008DCCB0);
      return (*(v44 + 8))(v42, v45);
    }

    if (!(v23 ^ 6 | v24))
    {
      v26 = 0;
      goto LABEL_18;
    }

    v27 = 8.0;
    v28 = 8.0;
    v29 = 8.0;
    if (!(v23 ^ 9 | v24))
    {
LABEL_15:
      *v15 = static HorizontalAlignment.center.getter();
      *(v15 + 1) = 0;
      v15[16] = 0;
      v30 = sub_100140278(&qword_1008DCCC8);
      sub_10015FC4C(a1, &v15[*(v30 + 44)], 0.0, v27, v28, v29);
      static AccessibilityChildBehavior.combine.getter();
      v31 = sub_10014A6B0(&qword_1008DCCD0, &qword_1008DCCB8);
      View.accessibilityElement(children:)();
      (*(v10 + 8))(v12, v67);
      sub_10000EA04(v15, &qword_1008DCCB8);
      v32 = v62;
      (*(v16 + 16))(v63, v18, v62);
      swift_storeEnumTagMultiPayload();
      v74 = v13;
      v75 = v31;
      swift_getOpaqueTypeConformance2();
      v33 = sub_10014A6B0(&qword_1008DCCD8, &qword_1008DCC90);
      v74 = v64;
      v75 = v33;
      swift_getOpaqueTypeConformance2();
      v34 = v65;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v34, v70, &qword_1008DCCB0);
      swift_storeEnumTagMultiPayload();
      sub_1001612E8();
      v35 = sub_100054664();
      v74 = v71;
      v75 = v35;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v34, &qword_1008DCCB0);
      return (*(v16 + 8))(v18, v32);
    }

LABEL_14:
    sub_10001D4F8(v23, v24, v25);
    v28 = 12.0;
    v27 = 15.0;
    v29 = 15.0;
    goto LABEL_15;
  }

  if (__PAIR128__((v23 >= 3) + v24 - 1, v23 - 3) >= 2)
  {
    if (!(v23 | v24))
    {
      v27 = 15.0;
      if (static Solarium.isEnabled.getter())
      {
        v29 = 10.0;
      }

      else
      {
        v29 = 15.0;
      }

      v28 = 12.0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v26 = 1;
LABEL_18:
  v49 = v58;
  sub_10004C2FC(v26, v58);
  static AccessibilityChildBehavior.combine.getter();
  v50 = sub_100054664();
  v51 = v59;
  v52 = v71;
  View.accessibilityElement(children:)();
  (*(v10 + 8))(v12, v67);
  sub_10000EA04(v49, &qword_1008DCC80);
  v53 = v60;
  v54 = v72;
  (*(v60 + 16))(v70, v51, v72);
  swift_storeEnumTagMultiPayload();
  sub_1001612E8();
  v74 = v52;
  v75 = v50;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v53 + 8))(v51, v54);
}

uint64_t sub_10015FC4C@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v53 = a2;
  v48 = sub_100140278(&qword_1008DD020);
  __chkstk_darwin(v48);
  v46 = &v41 - v11;
  v51 = sub_100140278(&qword_1008DD028) - 8;
  v12 = __chkstk_darwin(v51);
  v52 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v54 = &v41 - v14;
  v15 = type metadata accessor for DashboardCardView();
  v16 = (v15 - 8);
  v17 = *(v15 - 8);
  __chkstk_darwin(v15);
  v41 = v18;
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100140278(&qword_1008DCF08);
  v49 = *(v50 - 8);
  v20 = __chkstk_darwin(v50);
  v47 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v43 = &v41 - v22;
  v45 = v16[7];
  sub_100007C5C(a1 + v45, v55);
  v44 = v16[9];
  sub_10001B104(a1 + v44, v56, &qword_1008DC808);
  v56[40] = *(a1 + v16[11]);
  v56[48] = static Edge.Set.all.getter();
  v57 = xmmword_1006D4E50;
  v58 = xmmword_1006D4E60;
  v59 = 0;
  v42 = type metadata accessor for DashboardCardView;
  sub_100051EE4(a1, v19, type metadata accessor for DashboardCardView);
  v23 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v24 = swift_allocObject();
  sub_1000523E8(v19, v24 + v23, type metadata accessor for DashboardCardView);
  sub_100140278(&qword_1008DC810);
  sub_10005250C();
  View.onTapGesture(count:perform:)();

  sub_10000EA04(v55, &qword_1008DC810);
  v25 = v46;
  sub_10004C2FC(0, v46);
  *(v25 + *(sub_100140278(&qword_1008DCF18) + 36)) = 0;
  v26 = static Edge.Set.all.getter();
  v27 = v25 + *(v48 + 36);
  *v27 = v26;
  *(v27 + 8) = a3;
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  *(v27 + 32) = a6;
  *(v27 + 40) = 0;
  sub_100051EE4(a1, v19, v42);
  v28 = swift_allocObject();
  sub_1000523E8(v19, v28 + v23, type metadata accessor for DashboardCardView);
  sub_10005455C(&qword_1008DD030, &qword_1008DD020, &unk_1006D58D8, sub_10006E46C);
  v29 = v54;
  View.onTapGesture(count:perform:)();

  sub_10000EA04(v25, &qword_1008DD020);
  v30 = v29 + *(v51 + 44);
  sub_100007C5C(a1 + v45, v30);
  sub_10001B104(a1 + v44, v30 + 40, &qword_1008DC808);
  v31 = v49;
  v32 = *(v49 + 16);
  v33 = v47;
  v34 = v43;
  v35 = v50;
  v32(v47, v43, v50);
  v36 = v52;
  sub_10001B104(v29, v52, &qword_1008DD028);
  v37 = v53;
  v32(v53, v33, v35);
  v38 = sub_100140278(&qword_1008DD038);
  sub_10001B104(v36, &v37[*(v38 + 48)], &qword_1008DD028);
  sub_10000EA04(v54, &qword_1008DD028);
  v39 = *(v31 + 8);
  v39(v34, v35);
  sub_10000EA04(v36, &qword_1008DD028);
  return (v39)(v33, v35);
}

uint64_t sub_1001602A4(uint64_t a1, void (*a2)(void *, _OWORD *, uint64_t, uint64_t, uint64_t))
{
  v4 = type metadata accessor for DashboardCardView();
  sub_10001B104(a1 + *(v4 + 28), v13, &qword_1008DC808);
  if (!v14)
  {
    return sub_10000EA04(v13, &qword_1008DC808);
  }

  v5 = sub_1000066AC(v13, v14);
  v6 = (a1 + *(v4 + 20));
  memset(v12, 0, sizeof(v12));
  v7 = *v5;
  v8 = v6[3];
  v9 = v6[4];
  v10 = sub_1000066AC(v6, v8);
  a2(v10, v12, v7, v8, v9);
  sub_10000EA04(v12, &qword_1008E51F0);
  return sub_100005A40(v13);
}

uint64_t sub_10016038C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v3 = sub_100140278(&qword_1008DCF08);
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  __chkstk_darwin(v3);
  v47 = &v39 - v5;
  v6 = sub_100140278(&qword_1008DCF10);
  v7 = __chkstk_darwin(v6 - 8);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v39 - v9;
  v10 = type metadata accessor for DashboardCardView();
  v11 = (v10 - 8);
  v12 = *(v10 - 8);
  __chkstk_darwin(v10);
  v41 = v13;
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008DCF18);
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  v46 = sub_100140278(&qword_1008DCF20);
  v45 = *(v46 - 8);
  v18 = __chkstk_darwin(v46);
  v44 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v43 = &v39 - v20;
  sub_10004C2FC(0, v17);
  v17[*(v15 + 36)] = 0;
  v42 = type metadata accessor for DashboardCardView;
  sub_100051EE4(a1, v14, type metadata accessor for DashboardCardView);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v40 = type metadata accessor for DashboardCardView;
  sub_1000523E8(v14, v22 + v21, type metadata accessor for DashboardCardView);
  sub_10006E46C();
  View.onTapGesture(count:perform:)();

  sub_10000EA04(v17, &qword_1008DCF18);
  sub_100007C5C(a1 + v11[7], v53);
  sub_10001B104(a1 + v11[9], v54, &qword_1008DC808);
  v54[40] = *(a1 + v11[11]);
  v54[48] = static Edge.Set.all.getter();
  v55 = xmmword_1006D4E50;
  v56 = xmmword_1006D4E60;
  v57 = 0;
  sub_100051EE4(a1, v14, v42);
  v23 = swift_allocObject();
  sub_1000523E8(v14, v23 + v21, v40);
  v24 = sub_100140278(&qword_1008DC810);
  v25 = sub_10005250C();
  v26 = v47;
  View.onTapGesture(count:perform:)();

  sub_10000EA04(v53, &qword_1008DC810);
  v53[0] = v24;
  v53[1] = v25;
  swift_getOpaqueTypeConformance2();
  v27 = v52;
  v28 = v49;
  View.accessibilitySortPriority(_:)();
  (*(v50 + 8))(v26, v28);
  v29 = v45;
  v30 = *(v45 + 16);
  v31 = v44;
  v32 = v43;
  v33 = v46;
  v30(v44, v43, v46);
  v34 = v48;
  sub_10001B104(v27, v48, &qword_1008DCF10);
  v35 = v51;
  v30(v51, v31, v33);
  v36 = sub_100140278(&qword_1008DCF30);
  sub_10001B104(v34, &v35[*(v36 + 48)], &qword_1008DCF10);
  sub_10000EA04(v52, &qword_1008DCF10);
  v37 = *(v29 + 8);
  v37(v32, v33);
  sub_10000EA04(v34, &qword_1008DCF10);
  return (v37)(v31, v33);
}

uint64_t sub_1001609CC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DashboardCardView();
  v23 = *(v6 - 1);
  v7 = *(v23 + 64);
  __chkstk_darwin(v6);
  v8 = sub_100140278(&qword_1008DCF08);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v24 = &v23 - v10;
  v11 = sub_100140278(&qword_1008DCF48);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  if (a1)
  {
    sub_100007C5C(a2 + v6[5], v25);
    sub_10001B104(a2 + v6[7], v26, &qword_1008DC808);
    v28 = *(a2 + v6[9]);
    v29 = static Edge.Set.all.getter();
    v30 = xmmword_1006D4E50;
    v31 = xmmword_1006D4E60;
    v32 = 0;
    sub_100051EE4(a2, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DashboardCardView);
    v17 = *(v23 + 80);
    v23 = v8;
    v18 = swift_allocObject() + ((v17 + 16) & ~v17);
    sub_1000523E8(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18, type metadata accessor for DashboardCardView);
    sub_100140278(&qword_1008DC810);
    sub_10005250C();
    v19 = v24;
    View.onTapGesture(count:perform:)();

    sub_10000EA04(v25, &qword_1008DC810);
    v20 = v23;
    (*(v9 + 32))(v16, v19, v23);
    (*(v9 + 56))(v16, 0, 1, v20);
  }

  else
  {
    (*(v9 + 56))(&v23 - v15, 1, 1, v8);
  }

  sub_100007C5C(a2 + v6[5], v25);
  v35 = 1;
  State.init(wrappedValue:)();
  v26[0] = v33[0];
  v27 = v34;
  sub_10001B104(v16, v14, &qword_1008DCF48);
  sub_10004766C(v25, v33);
  sub_10001B104(v14, a3, &qword_1008DCF48);
  v21 = sub_100140278(&qword_1008DCF50);
  sub_10004766C(v33, a3 + *(v21 + 48));
  sub_10016163C(v25);
  sub_10000EA04(v16, &qword_1008DCF48);
  sub_10016163C(v33);
  return sub_10000EA04(v14, &qword_1008DCF48);
}

uint64_t sub_100160E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v22 = a2;
  v3 = sub_100140278(&qword_1008DD098);
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  v6 = type metadata accessor for AccessibilityActionKind();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008DD0A0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  sub_10001B104((v2 + 5), &v23, &qword_1008DC808);
  if (*(&v24 + 1))
  {
    v20 = v7;
    sub_100006260(&v23, v29);
    v13 = v2[3];
    v14 = v2[4];
    sub_1000066AC(v2, v13);
    if ((*(v14 + 32))(v13, v14))
    {
      sub_100007C5C(v29, v28);
      sub_100161C84(v2, &v23);
      v15 = swift_allocObject();
      sub_100006260(v28, v15 + 16);
      v16 = v23;
      *(v15 + 72) = v24;
      v17 = v26;
      *(v15 + 88) = v25;
      *(v15 + 104) = v17;
      *(v15 + 120) = v27;
      *(v15 + 56) = v16;
      static AccessibilityActionKind.default.getter();
      sub_100140278(&qword_1008DD0A8);
      sub_10014A6B0(&qword_1008DD0B8, &qword_1008DD0A8);
      View.accessibilityAction(_:_:)();

      (*(v20 + 8))(v9, v6);
      sub_10001B104(v12, v5, &qword_1008DD0A0);
      swift_storeEnumTagMultiPayload();
      sub_100161B9C();
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v12, &qword_1008DD0A0);
      return sub_100005A40(v29);
    }

    sub_100005A40(v29);
  }

  else
  {
    sub_10000EA04(&v23, &qword_1008DC808);
  }

  v19 = sub_100140278(&qword_1008DD0A8);
  (*(*(v19 - 8) + 16))(v5, v21, v19);
  swift_storeEnumTagMultiPayload();
  sub_100161B9C();
  sub_10014A6B0(&qword_1008DD0B8, &qword_1008DD0A8);
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10016125C(void *a1, void *a2)
{
  v3 = sub_1000066AC(a1, a1[3]);
  memset(v9, 0, sizeof(v9));
  v4 = *v3;
  v5 = a2[3];
  v6 = a2[4];
  v7 = sub_1000066AC(a2, v5);
  sub_100607BA4(v7, v9, v4, v5, v6);
  return sub_10000EA04(v9, &qword_1008E51F0);
}

unint64_t sub_1001612E8()
{
  result = qword_1008DCCE0;
  if (!qword_1008DCCE0)
  {
    sub_100141EEC(&qword_1008DCCB0);
    sub_100141EEC(&qword_1008DCCB8);
    sub_10014A6B0(&qword_1008DCCD0, &qword_1008DCCB8);
    swift_getOpaqueTypeConformance2();
    sub_100141EEC(&qword_1008DCC90);
    sub_10014A6B0(&qword_1008DCCD8, &qword_1008DCC90);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCCE0);
  }

  return result;
}

unint64_t sub_100161448()
{
  result = qword_1008DCD20;
  if (!qword_1008DCD20)
  {
    sub_100141EEC(&qword_1008DCD28);
    sub_10005436C();
    sub_1000542E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCD20);
  }

  return result;
}

unint64_t sub_1001614D4()
{
  result = qword_1008DCDF8;
  if (!qword_1008DCDF8)
  {
    sub_100141EEC(&qword_1008DCE00);
    sub_10006D128(&qword_1008DCE08, type metadata accessor for FriendCardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCDF8);
  }

  return result;
}

unint64_t sub_100161588()
{
  result = qword_1008DCE10;
  if (!qword_1008DCE10)
  {
    sub_100141EEC(&qword_1008DCE18);
    sub_10006D128(&qword_1008DCE20, type metadata accessor for FriendsHighlightCardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCE10);
  }

  return result;
}

__n128 sub_100161744(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100161760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1001617A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10016180C()
{
  result = qword_1008DD040;
  if (!qword_1008DD040)
  {
    sub_100141EEC(&qword_1008DCC78);
    sub_1001618C4();
    sub_10014A6B0(&qword_1008DD088, &qword_1008DD090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD040);
  }

  return result;
}

unint64_t sub_1001618C4()
{
  result = qword_1008DD048;
  if (!qword_1008DD048)
  {
    sub_100141EEC(&qword_1008DCC70);
    sub_100161950();
    sub_100161B2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD048);
  }

  return result;
}

unint64_t sub_100161950()
{
  result = qword_1008DD050;
  if (!qword_1008DD050)
  {
    sub_100141EEC(&qword_1008DCC68);
    sub_1000543F8(&qword_1008DD058, &qword_1008DD060, &unk_1006D5968, sub_100161A08);
    sub_100161AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD050);
  }

  return result;
}

unint64_t sub_100161A08()
{
  result = qword_1008DD068;
  if (!qword_1008DD068)
  {
    sub_100141EEC(&qword_1008DD070);
    sub_1001612E8();
    sub_100141EEC(&qword_1008DCC80);
    sub_100054664();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD068);
  }

  return result;
}

unint64_t sub_100161AD8()
{
  result = qword_1008DD078;
  if (!qword_1008DD078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD078);
  }

  return result;
}

unint64_t sub_100161B2C()
{
  result = qword_1008DD080;
  if (!qword_1008DD080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD080);
  }

  return result;
}

unint64_t sub_100161B9C()
{
  result = qword_1008DD0B0;
  if (!qword_1008DD0B0)
  {
    sub_100141EEC(&qword_1008DD0A0);
    sub_10014A6B0(&qword_1008DD0B8, &qword_1008DD0A8);
    sub_10006D128(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD0B0);
  }

  return result;
}

unint64_t sub_100161CC8()
{
  result = qword_1008DD0C0;
  if (!qword_1008DD0C0)
  {
    sub_100141EEC(&qword_1008DD0C8);
    sub_100161B9C();
    sub_10014A6B0(&qword_1008DD0B8, &qword_1008DD0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD0C0);
  }

  return result;
}

unint64_t sub_100161D8C()
{
  result = qword_1008DD0D0;
  if (!qword_1008DD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD0D0);
  }

  return result;
}

unint64_t sub_100161DE0()
{
  result = qword_1008DD0D8;
  if (!qword_1008DD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD0D8);
  }

  return result;
}

unint64_t sub_100161E38()
{
  result = qword_1008DD0E0;
  if (!qword_1008DD0E0)
  {
    sub_100141EEC(&qword_1008DD0E8);
    sub_100161DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD0E0);
  }

  return result;
}

uint64_t sub_100161EBC()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_100924F90);
  sub_10001AC90(v0, qword_100924F90);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_100161F7C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10016200C;

  return sub_100162AD8();
}

uint64_t sub_10016200C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_10016211C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002BACC;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_1001621D4()
{
  result = qword_1008DD0F0;
  if (!qword_1008DD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD0F0);
  }

  return result;
}

unint64_t sub_10016222C()
{
  result = qword_1008DD0F8;
  if (!qword_1008DD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD0F8);
  }

  return result;
}

uint64_t sub_100162280@<X0>(uint64_t a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void (*sub_100162304(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100162378;
}

void sub_100162378(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1001623C4()
{
  result = qword_1008DD100;
  if (!qword_1008DD100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD100);
  }

  return result;
}

uint64_t sub_100162418(uint64_t a1, uint64_t a2)
{
  v4 = sub_10016326C();
  v5 = sub_100163314();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100162484()
{
  result = qword_1008DD108;
  if (!qword_1008DD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD108);
  }

  return result;
}

unint64_t sub_1001624DC()
{
  result = qword_1008DD110;
  if (!qword_1008DD110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD110);
  }

  return result;
}

unint64_t sub_100162530()
{
  result = qword_1008DD118;
  if (!qword_1008DD118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD118);
  }

  return result;
}

uint64_t sub_1001625A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA520 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10001AC90(v2, qword_100924F90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100162648(uint64_t a1)
{
  v2 = sub_10016326C();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_100162684()
{
  v0 = sub_100140278(&qword_1008DD180);
  __chkstk_darwin(v0 - 8);
  v1 = sub_100140278(&qword_1008DD188);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100748440;
  v2._countAndFlagsBits = 0xD000000000000018;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_100140278(&qword_1008DD190);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10016281C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10016326C();
  v6 = sub_1001632C0();
  v7 = sub_100163314();
  *v4 = v2;
  v4[1] = sub_1001628E8;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1001628E8()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1001629F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100162DF8();
  *a1 = result;
  return result;
}

uint64_t sub_100162A18(uint64_t a1)
{
  v2 = sub_1001623C4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100162A74()
{
  result = qword_1008DD120;
  if (!qword_1008DD120)
  {
    sub_100141EEC(&qword_1008DD128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD120);
  }

  return result;
}

uint64_t sub_100162AF4()
{
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0[2] = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD198);
  static AppDependencyManager.shared.getter();
  v1 = AppDependency.__allocating_init(key:manager:)();
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_100162C30;

  return sub_10032FFB0(v1);
}

uint64_t sub_100162C30(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100162D8C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_100162D8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100162DF8()
{
  v20 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v20 - 8);
  __chkstk_darwin(v20);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100140278(&qword_1008DD130);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v19 = sub_100140278(&qword_1008DD140);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 0, 1, v12);
  v24 = 0;
  v25 = 512;
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  static AppDependencyManager.shared.getter();
  v16 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  static AppDependencyManager.shared.getter();
  v17 = AppDependency.__allocating_init(key:manager:)();
  *&v21 = v16;
  *(&v21 + 1) = v17;
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v20);
  sub_1001631C4();
  sub_100163218();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
}

unint64_t sub_1001631C4()
{
  result = qword_1008DD158;
  if (!qword_1008DD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD158);
  }

  return result;
}

unint64_t sub_100163218()
{
  result = qword_1008DD160;
  if (!qword_1008DD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD160);
  }

  return result;
}

unint64_t sub_10016326C()
{
  result = qword_1008DD168;
  if (!qword_1008DD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD168);
  }

  return result;
}

unint64_t sub_1001632C0()
{
  result = qword_1008DD170;
  if (!qword_1008DD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD170);
  }

  return result;
}

unint64_t sub_100163314()
{
  result = qword_1008DD178;
  if (!qword_1008DD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD178);
  }

  return result;
}

uint64_t *sub_100163368(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_10016341C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutActivityCacheContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100163484()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10016350C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100163598()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100163604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_100140278(&qword_1008E1760);
  v3[4] = swift_task_alloc();

  return _swift_task_switch(sub_1001636A0, 0, 0);
}

uint64_t sub_1001636A0()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v3;
  sub_10055AF2C(v1, &unk_1006D5DF8, v4);
  sub_10000EA04(v1, &qword_1008E1760);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001637E8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100164F7C();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100163874(unint64_t a1, void *a2)
{
  v174 = a1;
  v181 = type metadata accessor for WorkoutChartDataElement(0);
  v180 = *(v181 - 8);
  __chkstk_darwin(v181);
  v158 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v159 = &v156 - v6;
  __chkstk_darwin(v7);
  v195 = &v156 - v8;
  __chkstk_darwin(v9);
  v156 = &v156 - v10;
  __chkstk_darwin(v11);
  v196 = &v156 - v12;
  __chkstk_darwin(v13);
  v157 = &v156 - v14;
  v15 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v15 - 8);
  v176 = &v156 - v16;
  v179 = type metadata accessor for Calendar();
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v177 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for WorkoutChartViewModel(0);
  v162 = *(v183 - 8);
  __chkstk_darwin(v183);
  v188 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008DD250);
  __chkstk_darwin(v19 - 8);
  v160 = &v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v161 = &v156 - v22;
  v186 = sub_100140278(&unk_1008F73D0);
  v171 = *(v186 - 1);
  __chkstk_darwin(v186);
  v187 = &v156 - v23;
  v24 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v24 - 8);
  v172 = (&v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v167 = &v156 - v27;
  __chkstk_darwin(v28);
  v173 = (&v156 - v29);
  __chkstk_darwin(v30);
  v32 = &v156 - v31;
  v33 = type metadata accessor for Date();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v182 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v189 = &v156 - v37;
  __chkstk_darwin(v38);
  v169 = &v156 - v39;
  __chkstk_darwin(v40);
  v168 = &v156 - v41;
  __chkstk_darwin(v42);
  v185 = &v156 - v43;
  __chkstk_darwin(v44);
  v194 = &v156 - v45;
  __chkstk_darwin(v46);
  v48 = &v156 - v47;
  *&v50 = __chkstk_darwin(v49).n128_u64[0];
  v52 = &v156 - v51;
  v170 = *(v2 + 64);
  v175 = a2;
  v53 = [v170 formattedHeartRate:a2 context:{@"WorkoutDetailDisplayContext", v50}];
  swift_getKeyPath();
  swift_getKeyPath();
  v199 = v53;

  static Published.subscript.setter();
  v54 = *(v2 + 24);
  v190 = v52;
  v191 = v33;
  v192 = v2;
  v193 = v34;
  v184 = v48;
  if (v54)
  {
    v55 = [v54 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = v34[4];
    v56(v32, v48, v33);
    v57 = 1;
    v58 = v34[7];
    v58(v32, 0, 1, v33);
    v56(v52, v32, v33);
    v59 = [v54 endDate];
    v60 = &selRef_currentItem;
    v61 = v167;
    if (v59)
    {
      v62 = v59;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v57 = 0;
    }

    v69 = v57;
    v68 = v191;
    v63 = v58;
    v58(v61, v69, 1, v191);
    v67 = v173;
    sub_100015E80(v61, v173, &unk_1008F73A0);
    v66 = v193[6];
    if (v66(v67, 1, v68) != 1)
    {
      v56(v194, v67, v68);
      v71 = v68;
      v52 = v190;
      goto LABEL_12;
    }

    v64 = v192;
    v52 = v190;
  }

  else
  {
    v63 = v34[7];
    v63(v32, 1, 1, v33);
    v64 = v2;
    v65 = [*(v2 + 16) startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = v34[6];
    if (v66(v32, 1, v33) != 1)
    {
      sub_10000EA04(v32, &unk_1008F73A0);
    }

    v67 = v173;
    v68 = v191;
    v63(v173, 1, 1, v191);
    v60 = &selRef_currentItem;
  }

  v70 = [*(v64 + 16) v60[161]];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v71 = v68;
  if (v66(v67, 1, v68) != 1)
  {
    sub_10000EA04(v67, &unk_1008F73A0);
  }

LABEL_12:
  v72 = v187;
  v164 = v63;
  v73 = v193;
  v75 = (v193 + 2);
  v74 = v193[2];
  v76 = v184;
  v74(v184, v52, v71);
  v74(v185, v194, v71);
  type metadata accessor for WorkoutChartProperties();
  v77 = swift_allocObject();
  *(v77 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBuckets) = 0x404E000000000000;
  *(v77 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration) = 0x404E000000000000;
  v78 = (v77 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth);
  v165 = (v77 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth);
  *v78 = 0;
  v78[8] = 1;
  v79 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties__touchPoint;
  v199 = 0;
  v200 = 1;
  v163 = sub_100140278(&unk_1008F73E0);
  Published.init(initialValue:)();
  v80 = v171;
  (*(v171 + 32))(v77 + v79, v72, v186);
  *(v77 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v167 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
  v166 = v73 + 7;
  v63((v77 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate), 1, 1, v71);
  *(v77 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetAmount) = 0;
  v81 = (v77 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetFrom);
  *v81 = 0;
  v81[8] = 1;
  v82 = v168;
  v74(v168, v76, v71);
  swift_beginAccess();
  v74(v169, v82, v71);
  Published.init(initialValue:)();
  v83 = v73[1];
  v83(v82, v71);
  swift_endAccess();
  v84 = v184;
  v74((v77 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBucketStartDate), v184, v71);
  swift_beginAccess();
  (*(v80 + 8))(v77 + v79, v186);
  v197 = 0;
  v198 = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v85 = v165;
  *v165 = 0;
  *(v85 + 8) = 1;
  v74((v77 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate), v84, v71);
  v86 = v185;
  v187 = v75;
  v74((v77 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutEndDate), v185, v71);
  Date.timeIntervalSince(_:)();
  *(v77 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutDuration) = v87;
  sub_1002E552C(1, 10.0, 90.0);
  v83(v86, v71);
  v193 = v73 + 1;
  v186 = v83;
  v83(v84, v71);
  v88 = v172;
  v164(v172, 1, 1, v71);
  v89 = v167;
  swift_beginAccess();
  sub_100169198(v88, &v89[v77]);
  swift_endAccess();
  v90 = sub_100169208(v174, v77);
  v172 = v77;
  v91 = sub_100222D84(v77);
  v92 = [v170 fitnessUIFormattingManager];
  [v175 doubleValue];
  v93 = [v92 localizedStringWithBeatsPerMinute:1 requirePositiveValue:?];

  v173 = v74;
  v185 = v91;
  if (v93)
  {
    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v95;
  }

  else
  {
    v94 = 0;
    v96 = 0;
  }

  v97 = v182;
  v98 = objc_opt_self();
  v99 = [v98 mainBundle];
  v100 = String._bridgeToObjectiveC()();
  v101 = [v99 localizedStringForKey:v100 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1006D46C0;
  *(v102 + 56) = &type metadata for String;
  *(v102 + 64) = sub_10000A788();
  if (!v96)
  {
    v103 = [v98 mainBundle];
    v104 = String._bridgeToObjectiveC()();
    v105 = [v103 localizedStringForKey:v104 value:0 table:0];

    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v106;
  }

  *(v102 + 32) = v94;
  *(v102 + 40) = v96;
  String.init(format:_:)();

  v107 = objc_allocWithZone(NSAttributedString);
  v108 = String._bridgeToObjectiveC()();

  v175 = [v107 initWithString:v108];

  v109 = v191;
  v110 = v173;
  v173(v189, v190, v191);
  v110(v97, v194, v109);
  v184 = *(v192 + 56);

  v111 = v188;
  UUID.init()();
  v112 = v183;
  v174 = *(v183 + 76);
  v113 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v114 = v177;
  static Calendar.current.getter();
  v115 = v176;
  static Locale.current.getter();
  v116 = type metadata accessor for Locale();
  (*(*(v116 - 8) + 56))(v115, 0, 1, v116);
  Calendar.locale.setter();
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  [v113 setCalendar:isa];

  [v113 setUnitsStyle:0];
  [v113 setZeroFormattingBehavior:0];
  [v113 setAllowedUnits:224];
  (*(v178 + 8))(v114, v179);
  *&v111[v174] = v113;
  v118 = v112[20];
  v119 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v119 setZeroFormattingBehavior:1];
  [v119 setUnitsStyle:4];
  [v119 setAllowedUnits:224];
  *&v111[v118] = v119;
  v111[v112[5]] = 0;
  v120 = &v111[v112[6]];
  *v120 = 0;
  *(v120 + 1) = 0xE000000000000000;
  *&v111[v112[7]] = v175;
  v199 = v90;

  sub_10056EDEC(&v199);
  v121 = v112[13];
  *&v111[v112[8]] = v199;
  v111[v112[9]] = 1;
  v122 = v189;
  v110(&v111[v112[10]], v189, v109);
  v110(&v111[v112[11]], v97, v109);
  v123 = v184;
  *&v111[v112[12]] = v185;
  *&v111[v121] = 0;
  *&v111[v112[14]] = v123;
  v124 = v111;
  v125 = v90[2];
  v126 = v181;
  v127 = v180;
  if (!v125)
  {
    *(v124 + v112[15]) = 0;

    v140 = v186;
    v186(v97, v109);
    v140(v122, v109);
    v134 = 0.0;
    v138 = 0.0;
    v139 = v124;
LABEL_23:
    *(v139 + v112[16]) = v138;
    v141 = (v134 + v138) * 0.5;
    v142 = v141 + -5.0;
    v143 = v141 + 5.0;
    if (v138 - v134 >= 10.0)
    {
      v144 = v134;
    }

    else
    {
      v144 = v142;
    }

    if (v138 - v134 >= 10.0)
    {
      v143 = v138;
    }

    v145 = (v143 - v144) / 44.0;
    *(v139 + v112[18]) = v145;
    v146 = v145 + v145;
    v147 = v144 - v146;
    v148 = v143 + v146;
    v149 = v190;
    if (v147 <= v148)
    {
      v150 = (v139 + v112[17]);
      *v150 = v147;
      v150[1] = v148;
      v151 = v161;
      sub_10002B318(v139, v161, type metadata accessor for WorkoutChartViewModel);
      (*(v162 + 56))(v151, 0, 1, v112);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100169118(v151, v160);

      static Published.subscript.setter();
      sub_10000EA04(v151, &qword_1008DD250);
      swift_getKeyPath();
      swift_getKeyPath();
      v199 = v172;

      static Published.subscript.setter();
      v152 = v186;
      v186(v194, v109);
      return v152(v149, v109);
    }

    goto LABEL_44;
  }

  v128 = v90 + ((*(v180 + 80) + 32) & ~*(v180 + 80));
  v129 = v196;
  sub_100169E98(v128, v196, type metadata accessor for WorkoutChartDataElement);
  v130 = v159;
  v131 = v158;
  if (v125 != 1)
  {
    v154 = 1;
    while (v154 < v90[2])
    {
      sub_100169E98(v128 + *(v127 + 72) * v154, v131, type metadata accessor for WorkoutChartDataElement);
      if (*(v131 + *(v126 + 24)) >= *(v129 + *(v126 + 24)))
      {
        sub_100169F24(v131, type metadata accessor for WorkoutChartDataElement);
      }

      else
      {
        sub_100169F24(v196, type metadata accessor for WorkoutChartDataElement);
        v129 = v196;
        sub_10002B318(v131, v196, type metadata accessor for WorkoutChartDataElement);
      }

      if (v125 == ++v154)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_19:
  v132 = v129;
  v133 = v157;
  sub_10002B318(v132, v157, type metadata accessor for WorkoutChartDataElement);
  v134 = *(v133 + *(v126 + 24));
  sub_100169F24(v133, type metadata accessor for WorkoutChartDataElement);
  v112 = v183;
  *&v188[*(v183 + 60)] = v134;
  if (v90[2])
  {
    v135 = v195;
    sub_100169E98(v128, v195, type metadata accessor for WorkoutChartDataElement);
    if (v125 == 1)
    {
LABEL_21:

      v109 = v191;
      v136 = v186;
      v186(v182, v191);
      v136(v189, v109);
      v137 = v156;
      sub_10002B318(v135, v156, type metadata accessor for WorkoutChartDataElement);
      v138 = *(v137 + *(v126 + 28));
      sub_100169F24(v137, type metadata accessor for WorkoutChartDataElement);
      v139 = v188;
      goto LABEL_23;
    }

    v155 = 1;
    while (v155 < v90[2])
    {
      sub_100169E98(v128 + *(v127 + 72) * v155, v130, type metadata accessor for WorkoutChartDataElement);
      if (*(v135 + *(v126 + 28)) >= *(v130 + *(v126 + 28)))
      {
        sub_100169F24(v130, type metadata accessor for WorkoutChartDataElement);
      }

      else
      {
        sub_100169F24(v195, type metadata accessor for WorkoutChartDataElement);
        v135 = v195;
        sub_10002B318(v130, v195, type metadata accessor for WorkoutChartDataElement);
      }

      if (v125 == ++v155)
      {
        goto LABEL_21;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_100164F7C()
{
  v1 = *v0;
  v2 = v0[6];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v1;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v9[4] = sub_100169188;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10055B134;
  v9[3] = &unk_100847DD0;
  v8 = _Block_copy(v9);

  [v2 heartRateDataForWorkout:v3 workoutActivity:v4 completion:v8];
  _Block_release(v8);
}

uint64_t sub_1001650B0(unint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v389 = a3;
  v369 = a2;
  v388 = a1;
  v376 = type metadata accessor for WorkoutChartDataElement(0);
  v395 = *(v376 - 8);
  v5 = __chkstk_darwin(v376);
  v350 = v313 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v390 = v313 - v8;
  v9 = __chkstk_darwin(v7);
  v348 = v313 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = v313 - v12;
  v14 = __chkstk_darwin(v11);
  v394 = v313 - v15;
  v16 = __chkstk_darwin(v14);
  v347 = v313 - v17;
  v18 = __chkstk_darwin(v16);
  v354 = v313 - v19;
  v20 = __chkstk_darwin(v18);
  v355 = (v313 - v21);
  v22 = __chkstk_darwin(v20);
  v356 = v313 - v23;
  v24 = __chkstk_darwin(v22);
  v352 = v313 - v25;
  v26 = __chkstk_darwin(v24);
  v396 = (v313 - v27);
  __chkstk_darwin(v26);
  v353 = v313 - v28;
  v29 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v29 - 8);
  v374 = v313 - v30;
  v31 = type metadata accessor for Calendar();
  v380 = *(v31 - 8);
  __chkstk_darwin(v31);
  v375 = v313 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v387 = type metadata accessor for WorkoutChartViewModel(0);
  v358 = *(v387 - 1);
  v33 = __chkstk_darwin(v387);
  v357 = v313 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v351 = v313 - v36;
  v37 = __chkstk_darwin(v35);
  v367 = v313 - v38;
  v39 = __chkstk_darwin(v37);
  v363 = v313 - v40;
  v359 = v41;
  __chkstk_darwin(v39);
  v368 = v313 - v42;
  v362 = type metadata accessor for Logger();
  v361 = *(v362 - 8);
  __chkstk_darwin(v362);
  v360 = v313 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v44 - 8);
  v373 = v313 - v45;
  v383 = sub_100140278(&unk_1008F73D0);
  v379 = *(v383 - 8);
  __chkstk_darwin(v383);
  v372 = v313 - v46;
  v47 = type metadata accessor for Date();
  v377 = *(v47 - 8);
  v48 = __chkstk_darwin(v47);
  v364 = v313 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v52 = v313 - v51;
  v53 = __chkstk_darwin(v50);
  v366 = v313 - v54;
  v55 = __chkstk_darwin(v53);
  v349 = v313 - v56;
  v57 = __chkstk_darwin(v55);
  v365 = v313 - v58;
  v59 = __chkstk_darwin(v57);
  v381 = v313 - v60;
  v61 = __chkstk_darwin(v59);
  v385 = v313 - v62;
  v63 = __chkstk_darwin(v61);
  v371 = v313 - v64;
  v65 = __chkstk_darwin(v63);
  v370 = v313 - v66;
  v67 = __chkstk_darwin(v65);
  v382 = v313 - v68;
  v69 = __chkstk_darwin(v67);
  v378 = v313 - v70;
  v71 = __chkstk_darwin(v69);
  v384 = v313 - v72;
  __chkstk_darwin(v71);
  v386 = v313 - v73;
  v393 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v393 - 8);
  __chkstk_darwin(v393);
  v392 = v313 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchQoS();
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v391 = v313 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v80 = result;
    if (a4)
    {
      swift_errorRetain();
      v81 = static os_log_type_t.error.getter();
      v82 = HKLogWorkouts;
      if (!os_log_type_enabled(HKLogWorkouts, v81))
      {
      }

      v83 = v82;
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      aBlock = v85;
      *v84 = 136315138;
      swift_getErrorValue();
      v86 = Error.localizedDescription.getter();
      v88 = sub_10000AFDC(v86, v87, &aBlock);

      *(v84 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v83, v81, "Error getting heart rates: %s", v84, 0xCu);
      sub_100005A40(v85);
    }

    v339 = v31;
    v335 = v52;
    v327 = v13;
    v344 = v47;
    v343 = sub_1000059F8(0, &qword_1008E3FD0);
    v89 = static OS_dispatch_queue.main.getter();
    v90 = swift_allocObject();
    v91 = v389;
    *(v90 + 16) = v80;
    *(v90 + 24) = v91;
    v403 = sub_100169190;
    v404 = v90;
    aBlock = _NSConcreteStackBlock;
    v400 = 1107296256;
    v401 = sub_1000449A8;
    v402 = &unk_100847E20;
    v92 = _Block_copy(&aBlock);
    v329 = v91;

    v93 = v391;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    v94 = sub_100045BD8(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
    v95 = sub_100140278(&unk_1008E7F50);
    v96 = sub_10002621C();
    v345 = v76;
    v97 = v392;
    v341 = v95;
    v340 = v96;
    v98 = v393;
    v342 = v94;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v92);

    v101 = *(v74 + 8);
    v100 = v74 + 8;
    v99 = v101;
    v102 = v345;
    (v101)(v97, v98);
    v105 = *(v77 + 8);
    v104 = v77 + 8;
    v103 = v105;
    (v105)(v93, v102);
    if (!v388)
    {
    }

    v346 = v80;
    if (v388 >> 62)
    {
      goto LABEL_96;
    }

    for (i = *((v388 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v107 = v346;
      if (!i)
      {
      }

      v331 = v99;
      v332 = v104;
      v333 = v100;
      v108 = v346[3];
      v330 = v103;
      if (v108)
      {

        v109 = v108;
        v110 = [v109 endDate];
        if (v110)
        {
          v111 = v384;
          v112 = v110;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v113 = [v109 startDate];
          v114 = v386;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          goto LABEL_18;
        }

        v107 = v346;
      }

      else
      {
      }

      v115 = [v107[2] startDate];
      v114 = v386;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v109 = [v107[2] endDate];
      v111 = v384;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_18:

      v116 = v377;
      v118 = v377 + 16;
      v117 = *(v377 + 16);
      v119 = v378;
      v120 = v344;
      v117(v378, v114, v344);
      v117(v382, v111, v120);
      v320 = type metadata accessor for WorkoutChartProperties();
      v121 = swift_allocObject();
      *&v121[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBuckets] = 0x404E000000000000;
      *&v121[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration] = 0x404E000000000000;
      v122 = &v121[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth];
      v337 = &v121[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth];
      *v122 = 0;
      v122[8] = 1;
      v123 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties__touchPoint;
      aBlock = 0;
      LOBYTE(v400) = 1;
      v325 = sub_100140278(&unk_1008F73E0);
      v124 = v372;
      Published.init(initialValue:)();
      v125 = v379;
      v126 = v379[4];
      v319 = (v379 + 4);
      v318 = v126;
      v126(&v121[v123], v124, v383);
      *&v121[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v324 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
      v127 = v116 + 56;
      v326 = *(v116 + 56);
      v326(&v121[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate], 1, 1, v120);
      *&v121[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetAmount] = 0;
      v128 = &v121[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetFrom];
      *v128 = 0;
      v128[8] = 1;
      v129 = v370;
      v117(v370, v119, v120);
      swift_beginAccess();
      v117(v371, v129, v120);
      Published.init(initialValue:)();
      v130 = (v377 + 8);
      v131 = *(v377 + 8);
      v131(v129, v120);
      swift_endAccess();
      v132 = v378;
      v117(&v121[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBucketStartDate], v378, v120);
      swift_beginAccess();
      v133 = v125[1];
      v379 = v125 + 1;
      v317 = v133;
      v133(&v121[v123], v383);
      v397 = 0;
      v398 = 1;
      Published.init(initialValue:)();
      swift_endAccess();
      v134 = v337;
      *v337 = 0;
      *(v134 + 8) = 1;
      v117(&v121[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate], v132, v120);
      v135 = v382;
      v338 = v118;
      v328 = v117;
      v117(&v121[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutEndDate], v382, v120);
      Date.timeIntervalSince(_:)();
      *&v121[OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutDuration] = v136;
      sub_1002E552C(1, 10.0, 90.0);
      v131(v135, v120);
      v337 = v130;
      v336 = v131;
      v131(v132, v120);
      v137 = v373;
      v321 = v127;
      v326(v373, 1, 1, v120);
      v138 = v324;
      swift_beginAccess();
      sub_100169198(v137, v138 + v121);
      swift_endAccess();
      v334 = v121;
      v139 = sub_100169208(v388, v121);
      v141 = v346[2];
      v140 = v346[3];
      type metadata accessor for WorkoutHeartRateInfo();
      swift_allocObject();
      v142 = v140;
      v143 = sub_10030EFF0(v141, v140);
      v144 = v360;
      static WOLog.app.getter();

      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        aBlock = v148;
        *v147 = 136315138;

        v149 = sub_10030E8E4();
        v151 = v150;

        v152 = sub_10000AFDC(v149, v151, &aBlock);

        *(v147 + 4) = v152;
        _os_log_impl(&_mh_execute_header, v145, v146, "[HeartRate] Loaded heartRateInfo: %s", v147, 0xCu);
        sub_100005A40(v148);
      }

      (*(v361 + 8))(v144, v362);
      v153 = static OS_dispatch_queue.main.getter();
      v154 = swift_allocObject();
      *(v154 + 16) = v346;
      *(v154 + 24) = v143;
      v403 = sub_100169E90;
      v404 = v154;
      aBlock = _NSConcreteStackBlock;
      v400 = 1107296256;
      v401 = sub_1000449A8;
      v402 = &unk_100847E70;
      v155 = _Block_copy(&aBlock);

      v156 = v391;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      v157 = v392;
      v158 = v393;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v155);

      v331(v157, v158);
      (v330)(v156, v345);
      v159 = COERCE_DOUBLE(sub_10030E618());
      v160 = 0;
      if (v161)
      {
        v162 = v334;
      }

      else
      {
        v162 = v334;
        if (v159 > 0.0)
        {
          v160 = sub_10030E6D4();
        }
      }

      v163 = v346;
      v362 = sub_100222D84(v162);
      v164 = [v163[8] fitnessUIFormattingManager];
      if (v389)
      {
        [v329 doubleValue];
      }

      else
      {
        v165 = -1.0;
      }

      v166 = [v164 localizedStringWithBeatsPerMinute:1 requirePositiveValue:v165];

      v389 = v139;
      v322 = v143;
      if (v166)
      {
        v361 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v168 = v167;
      }

      else
      {
        v361 = 0;
        v168 = 0;
      }

      v169 = objc_opt_self();
      v170 = [v169 mainBundle];
      v171 = String._bridgeToObjectiveC()();
      v172 = [v170 localizedStringForKey:v171 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50);
      v173 = swift_allocObject();
      *(v173 + 16) = xmmword_1006D46C0;
      *(v173 + 56) = &type metadata for String;
      *(v173 + 64) = sub_10000A788();
      v388 = v160;
      if (v168)
      {
        v174 = v361;
      }

      else
      {
        v175 = [v169 mainBundle];
        v176 = String._bridgeToObjectiveC()();
        v177 = [v175 localizedStringForKey:v176 value:0 table:0];

        v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v168 = v178;
      }

      *(v173 + 32) = v174;
      *(v173 + 40) = v168;
      String.init(format:_:)();

      v316 = v169;
      v179 = [v169 mainBundle];
      v180 = String._bridgeToObjectiveC()();
      v181 = [v179 localizedStringForKey:v180 value:0 table:0];

      v361 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v360 = v182;

      v183 = objc_allocWithZone(NSAttributedString);
      v184 = String._bridgeToObjectiveC()();

      v324 = [v183 initWithString:v184];

      v185 = v344;
      v186 = v328;
      (v328)(v385, v386, v344);
      v186(v381, v384, v185);
      v187 = v346[7];

      v329 = v187;

      v188 = v363;
      UUID.init()();
      v189 = v387;
      v323 = v387[19];
      v190 = [objc_allocWithZone(NSDateComponentsFormatter) init];
      v191 = v375;
      static Calendar.current.getter();
      v192 = v374;
      static Locale.current.getter();
      v193 = type metadata accessor for Locale();
      v194 = *(v193 - 8);
      v195 = *(v194 + 56);
      v315 = v193;
      v314 = v195;
      v313[1] = v194 + 56;
      (v195)(v192, 0, 1);
      Calendar.locale.setter();
      isa = Calendar._bridgeToObjectiveC()().super.isa;
      [v190 setCalendar:isa];

      [v190 setUnitsStyle:0];
      [v190 setZeroFormattingBehavior:0];
      [v190 setAllowedUnits:224];
      v313[0] = *(v380 + 8);
      v380 += 8;
      (v313[0])(v191, v339);
      *(v188 + v323) = v190;
      v197 = v189[20];
      v198 = [objc_allocWithZone(NSDateComponentsFormatter) init];
      [v198 setZeroFormattingBehavior:1];
      [v198 setUnitsStyle:4];
      [v198 setAllowedUnits:224];
      *(v188 + v197) = v198;
      *(v188 + v189[5]) = 0;
      v199 = (v188 + v189[6]);
      v200 = v360;
      *v199 = v361;
      v199[1] = v200;
      *(v188 + v189[7]) = v324;
      v201 = v389;
      aBlock = v389;

      sub_10056EDEC(&aBlock);
      v361 = 0;
      v202 = v189[13];
      *(v188 + v189[8]) = aBlock;
      *(v188 + v189[9]) = 1;
      v186((v188 + v189[10]), v385, v185);
      v104 = v381;
      v186((v188 + v189[11]), v381, v185);
      *(v188 + v189[12]) = v362;
      *(v188 + v202) = v388;
      *(v188 + v189[14]) = v329;
      v99 = v201[2];
      v103 = v376;
      v203 = v189;
      v204 = v395;
      if (v99)
      {
        v205 = v201 + ((*(v395 + 80) + 32) & ~*(v395 + 80));
        v206 = v396;
        sub_100169E98(v205, v396, type metadata accessor for WorkoutChartDataElement);
        v100 = v356;
        v186 = v355;
        v104 = v354;
        if (v99 != 1)
        {
          v287 = 1;
          while (v287 < v389[2])
          {
            sub_100169E98(v205 + *(v204 + 72) * v287, v104, type metadata accessor for WorkoutChartDataElement);
            if (*(v104 + *(v103 + 6)) >= *(v206 + *(v103 + 6)))
            {
              sub_100169F24(v104, type metadata accessor for WorkoutChartDataElement);
            }

            else
            {
              sub_100169F24(v396, type metadata accessor for WorkoutChartDataElement);
              v206 = v396;
              sub_10002B318(v104, v396, type metadata accessor for WorkoutChartDataElement);
            }

            if (v99 == ++v287)
            {
              goto LABEL_35;
            }
          }

          __break(1u);
          goto LABEL_93;
        }

LABEL_35:
        v207 = v206;
        v203 = type metadata accessor for WorkoutChartDataElement;
        v208 = v353;
        sub_10002B318(v207, v353, type metadata accessor for WorkoutChartDataElement);
        v209 = *(v208 + *(v103 + 6));
        sub_100169F24(v208, type metadata accessor for WorkoutChartDataElement);
        v210 = v387[15];
        v396 = v387 + 15;
        *(v188 + v210) = v209;
        v104 = v389;
        if (!v389[2])
        {
          goto LABEL_98;
        }

        sub_100169E98(v205, v100, type metadata accessor for WorkoutChartDataElement);
        if (v99 != 1)
        {
          v288 = 1;
          while (v288 < *(v104 + 16))
          {
            sub_100169E98(v205 + *(v204 + 72) * v288, v186, type metadata accessor for WorkoutChartDataElement);
            if (*(v100 + *(v103 + 7)) >= *(v186 + *(v103 + 7)))
            {
              sub_100169F24(v186, type metadata accessor for WorkoutChartDataElement);
            }

            else
            {
              sub_100169F24(v100, type metadata accessor for WorkoutChartDataElement);
              sub_10002B318(v186, v100, type metadata accessor for WorkoutChartDataElement);
            }

            if (v99 == ++v288)
            {
              goto LABEL_37;
            }
          }

LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

LABEL_37:

        v211 = v344;
        v212 = v336;
        v336(v381, v344);
        v212(v385, v211);
        v205 = v352;
        sub_10002B318(v100, v352, type metadata accessor for WorkoutChartDataElement);
        v213 = *(v205 + *(v103 + 7));
        sub_100169F24(v205, type metadata accessor for WorkoutChartDataElement);
        v203 = v387;
      }

      else
      {
        v214 = v189[15];
        v396 = v189 + 15;
        *(v188 + v214) = 0;

        v205 = v337;
        v215 = v336;
        v336(v104, v185);
        v215(v385, v185);
        v209 = 0.0;
        v213 = 0.0;
      }

      *(v188 + *(v203 + 64)) = v213;
      v216 = (v209 + v213) * 0.5;
      v217 = v216 + -5.0;
      v218 = v216 + 5.0;
      if (v213 - v209 >= 10.0)
      {
        v219 = v209;
      }

      else
      {
        v219 = v217;
      }

      if (v213 - v209 >= 10.0)
      {
        v218 = v213;
      }

      v220 = (v218 - v219) / 44.0;
      *(v188 + *(v203 + 72)) = v220;
      v221 = v220 + v220;
      v222 = v219 - v221;
      v223 = v218 + v221;
      v208 = v368;
      if (v222 > v223)
      {
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v224 = (v188 + *(v203 + 68));
      *v224 = v222;
      v224[1] = v223;
      sub_10002B318(v188, v208, type metadata accessor for WorkoutChartViewModel);
      v225 = static OS_dispatch_queue.main.getter();
      v226 = v367;
      sub_100169E98(v208, v367, type metadata accessor for WorkoutChartViewModel);
      v227 = (*(v358 + 80) + 24) & ~*(v358 + 80);
      v186 = ((v359 + v227 + 7) & 0xFFFFFFFFFFFFFFF8);
      v385 = *(v358 + 80);
      v228 = swift_allocObject();
      *(v228 + 16) = v346;
      v389 = v227;
      sub_10002B318(v226, v228 + v227, type metadata accessor for WorkoutChartViewModel);
      *(v186 + v228) = v334;
      v403 = sub_100169F00;
      v404 = v228;
      aBlock = _NSConcreteStackBlock;
      v400 = 1107296256;
      v401 = sub_1000449A8;
      v402 = &unk_100847EC0;
      v229 = _Block_copy(&aBlock);

      v230 = v391;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      v231 = v392;
      v232 = v393;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v229);

      v331(v231, v232);
      (v330)(v230, v345);
      v99 = v369;
      if (!v369)
      {

        sub_100169F24(v208, type metadata accessor for WorkoutChartViewModel);
        v285 = v344;
        v286 = v336;
        v336(v384, v344);
        return v286(v386, v285);
      }

      v203 = v369 & 0xFFFFFFFFFFFFFF8;
      v104 = v344;
      v205 = v386;
      if (!(v369 >> 62))
      {
        v233 = *((v369 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_48;
      }

LABEL_99:
      v233 = _CocoaArrayWrapper.endIndex.getter();
LABEL_48:
      v234 = v328;
      if (!v233)
      {

        sub_100169F24(v208, type metadata accessor for WorkoutChartViewModel);
        v289 = v336;
        v336(v384, v104);
        return v289(v205, v104);
      }

      v363 = v186;
      if ((v99 & 0xC000000000000001) != 0)
      {
        v235 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(v203 + 16))
        {
          __break(1u);
          goto LABEL_102;
        }

        v235 = v99[4];
      }

      v236 = [v235 date];

      v237 = v349;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v238 = v365;
      (*(v377 + 32))(v365, v237, v104);
      v239 = v366;
      Date.addingTimeInterval(_:)();
      v240 = v378;
      (v234)(v378, v238, v104);
      (v234)(v382, v239, v104);
      v241 = swift_allocObject();
      *(v241 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBuckets) = 0x404E000000000000;
      *(v241 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration) = 0x404E000000000000;
      v242 = (v241 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth);
      *v242 = 0;
      v242[8] = 1;
      v243 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties__touchPoint;
      aBlock = 0;
      LOBYTE(v400) = 1;
      v244 = v372;
      Published.init(initialValue:)();
      v318(v241 + v243, v244, v383);
      *(v241 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_delegate + 8) = 0;
      swift_unknownObjectWeakInit();
      v381 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
      v326((v241 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate), 1, 1, v104);
      *(v241 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetAmount) = 0;
      v245 = (v241 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetFrom);
      *v245 = 0;
      v245[8] = 1;
      v246 = v370;
      (v234)(v370, v240, v104);
      swift_beginAccess();
      (v234)(v371, v246, v104);
      Published.init(initialValue:)();
      v247 = v336;
      v336(v246, v104);
      swift_endAccess();
      (v234)(v241 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBucketStartDate, v240, v104);
      swift_beginAccess();
      v317(v241 + v243, v383);
      v397 = 0;
      v398 = 1;
      Published.init(initialValue:)();
      swift_endAccess();
      *v242 = 0;
      v242[8] = 1;
      (v234)(v241 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate, v240, v104);
      v248 = v382;
      (v234)(v241 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutEndDate, v382, v104);
      v249 = v234;
      Date.timeIntervalSince(_:)();
      *(v241 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutDuration) = v250;
      sub_1002E552C(1, 10.0, 90.0);
      v247(v248, v104);
      v247(v240, v104);
      v251 = v373;
      v326(v373, 1, 1, v104);
      v252 = v381;
      swift_beginAccess();
      sub_100169198(v251, &v252[v241]);
      swift_endAccess();
      v378 = v241;
      v99 = sub_100169208(v369, v241);
      v253 = [v316 mainBundle];
      v254 = String._bridgeToObjectiveC()();
      v255 = [v253 localizedStringForKey:v254 value:0 table:0];

      v382 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v381 = v256;

      v379 = [objc_allocWithZone(NSAttributedString) init];
      (v249)(v335, v365, v104);
      (v249)(v364, v366, v104);
      v383 = v346[7];

      v257 = v357;
      UUID.init()();
      v258 = v387[19];
      v259 = [objc_allocWithZone(NSDateComponentsFormatter) init];
      v260 = v375;
      static Calendar.current.getter();
      v261 = v374;
      static Locale.current.getter();
      v314(v261, 0, 1, v315);
      Calendar.locale.setter();
      v262 = Calendar._bridgeToObjectiveC()().super.isa;
      [v259 setCalendar:v262];

      [v259 setUnitsStyle:0];
      [v259 setZeroFormattingBehavior:0];
      [v259 setAllowedUnits:224];
      (v313[0])(v260, v339);
      *&v257[v258] = v259;
      v263 = v387;
      v264 = v387[20];
      v265 = [objc_allocWithZone(NSDateComponentsFormatter) init];
      [v265 setZeroFormattingBehavior:1];
      [v265 setUnitsStyle:4];
      [v265 setAllowedUnits:224];
      *&v257[v264] = v265;
      v266 = v257;
      v257[v263[5]] = 0;
      v267 = &v257[v263[6]];
      v268 = v381;
      *v267 = v382;
      *(v267 + 1) = v268;
      *&v257[v263[7]] = v379;
      aBlock = v99;

      v269 = v361;
      sub_10056EDEC(&aBlock);
      if (v269)
      {
        goto LABEL_104;
      }

      v270 = v263[13];
      *(v266 + v263[8]) = aBlock;
      *(v266 + v263[9]) = 1;
      v271 = v328;
      (v328)(v266 + v263[10], v335, v104);
      v272 = v364;
      (v271)(v266 + v263[11], v364, v104);
      *(v266 + v263[12]) = _swiftEmptyArrayStorage;
      *(v266 + v270) = 0;
      *(v266 + v263[14]) = v383;
      v103 = v99[2];
      v273 = v351;
      v274 = v376;
      v275 = v272;
      v100 = v350;
      if (!v103)
      {
        *(v266 + *v396) = 0;

        v290 = v336;
        v336(v275, v104);
        v290(v335, v104);
        v279 = 0.0;
        v284 = 0.0;
        goto LABEL_73;
      }

      v276 = v99 + ((*(v395 + 80) + 32) & ~*(v395 + 80));
      v277 = v394;
      sub_100169E98(v276, v394, type metadata accessor for WorkoutChartDataElement);
      v104 = v348;
      if (v103 != 1)
      {
        v311 = 1;
        while (v311 < v99[2])
        {
          sub_100169E98(v276 + *(v395 + 72) * v311, v100, type metadata accessor for WorkoutChartDataElement);
          if (*(v100 + *(v274 + 24)) >= *(v277 + *(v274 + 24)))
          {
            sub_100169F24(v100, type metadata accessor for WorkoutChartDataElement);
          }

          else
          {
            sub_100169F24(v394, type metadata accessor for WorkoutChartDataElement);
            v277 = v394;
            sub_10002B318(v100, v394, type metadata accessor for WorkoutChartDataElement);
          }

          if (v103 == ++v311)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_94;
      }

LABEL_55:
      v278 = v347;
      sub_10002B318(v277, v347, type metadata accessor for WorkoutChartDataElement);
      v279 = *(v278 + *(v274 + 24));
      sub_100169F24(v278, type metadata accessor for WorkoutChartDataElement);
      *&v357[*v396] = v279;
      if (!v99[2])
      {
        goto LABEL_103;
      }

      sub_100169E98(v276, v104, type metadata accessor for WorkoutChartDataElement);
      v280 = v390;
      v100 = v364;
      if (v103 == 1)
      {
LABEL_57:

        v281 = v344;
        v282 = v336;
        v336(v100, v344);
        v282(v335, v281);
        v283 = v327;
        sub_10002B318(v104, v327, type metadata accessor for WorkoutChartDataElement);
        v284 = *(v283 + *(v274 + 28));
        sub_100169F24(v283, type metadata accessor for WorkoutChartDataElement);
        v266 = v357;
LABEL_73:
        v291 = v387;
        *(v266 + v387[16]) = v284;
        v292 = (v279 + v284) * 0.5;
        v293 = v292 + -5.0;
        v294 = v292 + 5.0;
        if (v284 - v279 >= 10.0)
        {
          v295 = v279;
        }

        else
        {
          v295 = v293;
        }

        if (v284 - v279 >= 10.0)
        {
          v294 = v284;
        }

        v296 = (v294 - v295) / 44.0;
        *(v266 + v291[18]) = v296;
        v297 = v296 + v296;
        v298 = v295 - v297;
        v299 = v294 + v297;
        if (v298 <= v299)
        {
          v300 = (v266 + v291[17]);
          *v300 = v298;
          v300[1] = v299;
          sub_10002B318(v266, v273, type metadata accessor for WorkoutChartViewModel);
          v301 = static OS_dispatch_queue.main.getter();
          v302 = v367;
          sub_100169E98(v273, v367, type metadata accessor for WorkoutChartViewModel);
          v303 = v363;
          v304 = swift_allocObject();
          *(v304 + 16) = v346;
          sub_10002B318(v302, v389 + v304, type metadata accessor for WorkoutChartViewModel);
          *&v303[v304] = v378;
          v403 = sub_10016A148;
          v404 = v304;
          aBlock = _NSConcreteStackBlock;
          v400 = 1107296256;
          v401 = sub_1000449A8;
          v402 = &unk_100847F10;
          v305 = _Block_copy(&aBlock);

          v306 = v391;
          static DispatchQoS.unspecified.getter();
          aBlock = _swiftEmptyArrayStorage;
          v307 = v392;
          v308 = v393;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v305);

          v331(v307, v308);
          (v330)(v306, v345);
          sub_100169F24(v273, type metadata accessor for WorkoutChartViewModel);
          v309 = v344;
          v310 = v336;
          v336(v366, v344);
          v310(v365, v309);
          sub_100169F24(v368, type metadata accessor for WorkoutChartViewModel);
          v310(v384, v309);
          return (v310)(v386, v309);
        }

LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:

        __break(1u);
        return result;
      }

      v312 = 1;
      while (v312 < v99[2])
      {
        sub_100169E98(v276 + *(v395 + 72) * v312, v280, type metadata accessor for WorkoutChartDataElement);
        if (*(v104 + *(v274 + 28)) >= *(v280 + *(v274 + 28)))
        {
          sub_100169F24(v280, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v104, type metadata accessor for WorkoutChartDataElement);
          v280 = v390;
          sub_10002B318(v390, v104, type metadata accessor for WorkoutChartDataElement);
        }

        if (v103 == ++v312)
        {
          goto LABEL_57;
        }
      }

LABEL_95:
      __break(1u);
LABEL_96:
      ;
    }
  }

  return result;
}

uint64_t sub_100168248(uint64_t a1, uint64_t a2)
{
  [*(a1 + 64) formattedHeartRate:a2 context:@"WorkoutDetailDisplayContext"];
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1001682E4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100168360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DD250);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_100169E98(a2, &v15 - v10, type metadata accessor for WorkoutChartViewModel);
  v12 = type metadata accessor for WorkoutChartViewModel(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100169118(v11, v9);

  static Published.subscript.setter();
  sub_10000EA04(v11, &qword_1008DD250);
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = a3;

  static Published.subscript.setter();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(a1 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v16)
    {
      *(v16 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_delegate + 8) = v14;
      swift_unknownObjectWeakAssign();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001685AC()
{
  v1 = OBJC_IVAR____TtC10FitnessApp31WorkoutDetailHeartRateDataStore__averageHeartRate;
  v2 = sub_100140278(&qword_1008DD4C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10FitnessApp31WorkoutDetailHeartRateDataStore__heartRateInfo;
  v4 = sub_100140278(&qword_1008DD4B8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC10FitnessApp31WorkoutDetailHeartRateDataStore__postWorkoutData;
  v6 = sub_100140278(&qword_1008DD4B0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC10FitnessApp31WorkoutDetailHeartRateDataStore__postWorkoutProperties;
  v8 = sub_100140278(&qword_1008DD4A8);
  v9 = *(*(v8 - 8) + 8);

  return v9(v0 + v7, v8);
}

uint64_t sub_100168704()
{
  v0 = sub_100222AA4();
  v1 = OBJC_IVAR____TtC10FitnessApp31WorkoutDetailHeartRateDataStore__averageHeartRate;

  v2 = sub_100140278(&qword_1008DD4C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10FitnessApp31WorkoutDetailHeartRateDataStore__heartRateInfo;
  v4 = sub_100140278(&qword_1008DD4B8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC10FitnessApp31WorkoutDetailHeartRateDataStore__postWorkoutData;
  v6 = sub_100140278(&qword_1008DD4B0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC10FitnessApp31WorkoutDetailHeartRateDataStore__postWorkoutProperties;
  v8 = sub_100140278(&qword_1008DD4A8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutDetailHeartRateDataStore()
{
  result = qword_1008DD218;
  if (!qword_1008DD218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001688F8()
{
  sub_100168A80();
  if (v0 <= 0x3F)
  {
    sub_100144538(319, &qword_1008DD238, &qword_1008DD240);
    if (v1 <= 0x3F)
    {
      sub_100144538(319, &qword_1008DD248, &qword_1008DD250);
      if (v2 <= 0x3F)
      {
        sub_100144538(319, &qword_1008DD258, &unk_1008DD260);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100168A80()
{
  if (!qword_1008DD228)
  {
    sub_1000059F8(255, &qword_1008DD230);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DD228);
    }
  }
}

uint64_t sub_100168AE8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutDetailHeartRateDataStore();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100168B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_1001637C8(a1, v4, v5, v6);
}

char *sub_100168BDC(void *a1, void *a2, void *a3, void *a4)
{
  v51 = a3;
  v52 = a4;
  v49 = a1;
  v50 = a2;
  v5 = sub_100140278(&qword_1008DD4A8);
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  __chkstk_darwin(v5);
  v53 = v44 - v7;
  v54 = sub_100140278(&qword_1008DD4B0);
  v8 = *(v54 - 8);
  __chkstk_darwin(v54);
  v10 = v44 - v9;
  v47 = sub_100140278(&qword_1008DD250);
  v11 = __chkstk_darwin(v47);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v44 - v14;
  v16 = sub_100140278(&qword_1008DD4B8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v44 - v18;
  v20 = OBJC_IVAR____TtC10FitnessApp31WorkoutDetailHeartRateDataStore__heartRateInfo;
  v58 = 0;
  sub_100140278(&qword_1008DD240);
  Published.init(initialValue:)();
  (*(v17 + 32))(&v4[v20], v19, v16);
  v21 = OBJC_IVAR____TtC10FitnessApp31WorkoutDetailHeartRateDataStore__postWorkoutData;
  v22 = type metadata accessor for WorkoutChartViewModel(0);
  v23 = *(v22 - 8);
  v46 = *(v23 + 56);
  v48 = v23 + 56;
  v46(v15, 1, 1, v22);
  sub_100169118(v15, v13);
  Published.init(initialValue:)();
  sub_10000EA04(v15, &qword_1008DD250);
  v24 = *(v8 + 32);
  v44[1] = v8 + 32;
  v45 = v24;
  v24(&v4[v21], v10, v54);
  v25 = OBJC_IVAR____TtC10FitnessApp31WorkoutDetailHeartRateDataStore__postWorkoutProperties;
  v58 = 0;
  sub_100140278(&unk_1008DD260);
  v26 = v53;
  Published.init(initialValue:)();
  v27 = *(v56 + 32);
  v56 += 32;
  v27(&v4[v25], v26, v55);
  v28 = [objc_allocWithZone(NSAttributedString) init];
  swift_beginAccess();
  v57 = v28;
  sub_1000059F8(0, &qword_1008DD230);
  Published.init(initialValue:)();
  swift_endAccess();
  *(v4 + 5) = 0;
  swift_unknownObjectWeakInit();
  v29 = OBJC_IVAR____TtC10FitnessApp22WorkoutDetailDataStore__inWorkoutData;
  v46(v15, 1, 1, v22);
  sub_100169118(v15, v13);
  Published.init(initialValue:)();
  sub_10000EA04(v15, &qword_1008DD250);
  v45(&v4[v29], v10, v54);
  v30 = OBJC_IVAR____TtC10FitnessApp22WorkoutDetailDataStore__inWorkoutProperties;
  v58 = 0;
  v31 = v53;
  Published.init(initialValue:)();
  v27(&v4[v30], v31, v55);
  v32 = v49;
  v33 = v50;
  *(v4 + 2) = v49;
  *(v4 + 3) = v33;
  v35 = v51;
  v34 = v52;
  *(v4 + 6) = v51;
  *(v4 + 8) = v34;
  v36 = v33;
  v37 = v35;
  v38 = v34;
  v39 = v32;
  v40 = [v38 fitnessUIFormattingManager];
  type metadata accessor for WorkoutChartDataElementFormattingManager();
  v41 = swift_allocObject();
  v42 = sub_10005772C();
  v41[2] = v40;
  v41[3] = v39;
  v41[4] = v33;
  v41[5] = v42;
  *(v4 + 7) = v41;
  return v4;
}

uint64_t sub_100169118(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DD250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100169198(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008F73A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (**sub_100169208(unint64_t a1, void *a2))(char *, uint64_t, uint64_t)
{
  v100 = a2;
  v3 = type metadata accessor for NSIndexSetIterator();
  v81 = *(v3 - 1);
  v4 = __chkstk_darwin(v3);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v80 - v7;
  v88 = type metadata accessor for WorkoutChartDataElement(0);
  v87 = *(v88 - 8);
  v9 = __chkstk_darwin(v88);
  v97 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = &v80 - v11;
  v12 = sub_100140278(&qword_1008DD4C8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v80 - v16;
  v101 = type metadata accessor for Date();
  v85 = *(v101 - 8);
  v18 = __chkstk_darwin(v101);
  v95 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v92 = &v80 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v80 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = (&v80 - v26);
  __chkstk_darwin(v25);
  v29 = &v80 - v28;
  v104 = &_swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_67:
    v30 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v91 = v6;
  v98 = v8;
  v86 = v3;
  v89 = v15;
  v93 = v17;
  if (!v30)
  {
    v43 = &_swiftEmptyDictionarySingleton;
    goto LABEL_23;
  }

  result = objc_opt_self();
  v99 = result;
  if (v30 < 1)
  {
    __break(1u);
    return result;
  }

  v83 = v30;
  v17 = 0;
  v32 = a1;
  v94 = (a1 & 0xC000000000000001);
  v90 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration;
  a1 = v85 + 8;
  v82 = (v85 + 16);
  v84 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutDuration;
  v33 = v32;
  v3 = v27;
  while (1)
  {
    if (v94)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v35 = *(v32 + 8 * v17 + 32);
    }

    v15 = v35;
    v36 = [v35 date];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    Date.timeIntervalSince(_:)();
    Date.addingTimeInterval(_:)();
    v8 = *a1;
    v37 = v101;
    (*a1)(v24, v101);
    (v8)(v3, v37);
    v38 = [v15 quantity];
    v27 = [v99 _countPerMinuteUnit];
    [v38 doubleValueForUnit:v27];
    v40 = v39;

    v6 = v104;
    if (*(v104 + 2))
    {
      v41 = sub_1004C577C(v29);
      if (v42)
      {
        if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_64;
        }

        if (v40 <= -9.22337204e18)
        {
          goto LABEL_65;
        }

        if (v40 >= 9.22337204e18)
        {
          goto LABEL_66;
        }

        [*(*(v6 + 7) + 8 * v41) addIndex:v40];
        goto LABEL_7;
      }
    }

    (*v82)(v92, v29, v101);
    if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_62;
    }

    if (v40 <= -9.22337204e18)
    {
      goto LABEL_63;
    }

    if (v40 >= 9.22337204e18)
    {
      break;
    }

    v34 = [objc_allocWithZone(NSMutableIndexSet) initWithIndex:v40];
    sub_100559840(v34, v92);
LABEL_7:
    ++v17;

    (v8)(v29, v101);
    v8 = v98;
    v32 = v33;
    if (v83 == v17)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  v43 = v104;
  v15 = v89;
  v17 = v93;
LABEL_23:
  v44 = *(v43 + 8);
  v90 = (v43 + 64);
  v45 = 1 << v43[32];
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  a1 = v46 & v44;
  v82 = ((v45 + 63) >> 6);
  v83 = v85 + 16;
  v99 = (v85 + 32);
  v94 = (v81 + 8);
  v84 = v43;

  v24 = 0;
  v100 = _swiftEmptyArrayStorage;
  v29 = &qword_1008DD4D0;
  v3 = &unk_1006F4B60;
  v47 = v90;
  if (!a1)
  {
LABEL_27:
    if (v82 <= (v24 + 1))
    {
      v50 = v24 + 1;
    }

    else
    {
      v50 = v82;
    }

    v6 = v50 - 1;
    while (1)
    {
      v49 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v49 >= v82)
      {
        v79 = sub_100140278(&qword_1008DD4D0);
        (*(*(v79 - 8) + 56))(v15, 1, 1, v79);
        a1 = 0;
        v24 = v6;
        goto LABEL_36;
      }

      a1 = *(v47 + 8 * v49);
      ++v24;
      if (a1)
      {
        v48 = v15;
        v24 = v49;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  while (1)
  {
    v48 = v15;
    v49 = v24;
LABEL_35:
    v51 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v52 = v51 | (v49 << 6);
    v53 = v84;
    v54 = v85;
    v55 = v92;
    v56 = v101;
    (*(v85 + 16))(v92, *(v84 + 48) + *(v85 + 72) * v52, v101);
    v57 = *(*(v53 + 56) + 8 * v52);
    v58 = sub_100140278(&qword_1008DD4D0);
    v59 = *(v58 + 48);
    v60 = v56;
    v15 = v48;
    (*(v54 + 32))(v48, v55, v60);
    *&v48[v59] = v57;
    v29 = &qword_1008DD4D0;
    (*(*(v58 - 8) + 56))(v48, 0, 1, v58);
    v61 = v57;
    v17 = v93;
    v8 = v98;
LABEL_36:
    sub_100015E80(v15, v17, &qword_1008DD4C8);
    v62 = sub_100140278(&qword_1008DD4D0);
    if ((*(*(v62 - 8) + 48))(v17, 1, v62) == 1)
    {
      break;
    }

    v63 = *(v17 + *(v62 + 48));
    v64 = *v99;
    (*v99)(v95, v17, v101);
    NSIndexSet.makeIterator()();
    sub_100045BD8(&qword_1008DD4D8, &type metadata accessor for NSIndexSetIterator);
    v65 = v86;
    dispatch thunk of IteratorProtocol.next()();
    if (v103)
    {
      v66 = *v94;
      (*v94)(v8, v65);
      v67 = 0.0;
    }

    else
    {
      v68 = v102;
      dispatch thunk of IteratorProtocol.next()();
      if ((v103 & 1) == 0)
      {
        do
        {
          if (v102 < v68)
          {
            v68 = v102;
          }

          dispatch thunk of IteratorProtocol.next()();
        }

        while (v103 != 1);
      }

      v66 = *v94;
      (*v94)(v8, v65);
      v67 = v68;
      v29 = &qword_1008DD4D0;
    }

    v69 = v91;
    NSIndexSet.makeIterator()();
    dispatch thunk of IteratorProtocol.next()();
    if (v103)
    {
      v66(v69, v65);
      v70 = 0.0;
      v8 = v98;
    }

    else
    {
      v71 = v102;
      dispatch thunk of IteratorProtocol.next()();
      if (v103)
      {
        v72 = v91;
        v8 = v98;
      }

      else
      {
        v72 = v91;
        v8 = v98;
        do
        {
          if (v71 <= v102)
          {
            v71 = v102;
          }

          dispatch thunk of IteratorProtocol.next()();
        }

        while (v103 != 1);
      }

      v66(v72, v65);
      v70 = v71;
      v29 = &qword_1008DD4D0;
    }

    v73 = v96;
    v64(v96, v95, v101);
    v74 = v88;
    *(v73 + *(v88 + 24)) = v67;
    *(v73 + *(v74 + 28)) = v70;
    *(v73 + *(v74 + 20)) = (v67 + v70) * 0.5;
    sub_100169E98(v73, v97, type metadata accessor for WorkoutChartDataElement);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v93;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v100 = sub_1001A1EB4(0, v100[2] + 1, 1, v100);
    }

    v77 = v100[2];
    v76 = v100[3];
    if (v77 >= v76 >> 1)
    {
      v100 = sub_1001A1EB4(v76 > 1, v77 + 1, 1, v100);
    }

    v27 = type metadata accessor for WorkoutChartDataElement;
    sub_100169F24(v96, type metadata accessor for WorkoutChartDataElement);
    v78 = v100;
    v100[2] = v77 + 1;
    sub_10002B318(v97, v78 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v77, type metadata accessor for WorkoutChartDataElement);
    v15 = v89;
    v3 = &unk_1006F4B60;
    v47 = v90;
    if (!a1)
    {
      goto LABEL_27;
    }
  }

  return v100;
}

uint64_t sub_100169E98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100169F24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100169F84()
{
  v1 = (type metadata accessor for WorkoutChartViewModel(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v1[12];
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v9(v5 + v1[13], v8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10016A16C()
{
  v1 = *(type metadata accessor for WorkoutChartViewModel(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  return sub_100168360(*(v0 + 16), v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_10016A248(char a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR___CHWelcomeViewController_buttonHandler];
  *v5 = a2;
  v5[1] = a3;
  v3[OBJC_IVAR___CHWelcomeViewController_fitnessPlusAvailable] = a1;
  v6 = objc_opt_self();
  sub_10000B210(a2);
  v7 = [v6 mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 localizedStringForKey:v8 value:0 table:0];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for WelcomeViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithTitle:detailText:icon:contentLayout:", v9, 0, 0, 2);
  sub_1000245E0(a2);

  return v10;
}

void sub_10016A410()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008DC990);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v70 - v6;
  v8 = type metadata accessor for WelcomeViewController();
  v80.receiver = v0;
  v80.super_class = v8;
  objc_msgSendSuper2(&v80, "viewDidLoad");
  v9 = [v0 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_39;
  }

  v10 = v9;
  v77 = v7;
  v73 = v5;
  v71 = objc_opt_self();
  v11 = [v71 secondarySystemGroupedBackgroundColor];
  [v10 setBackgroundColor:v11];

  v12 = [objc_opt_self() sharedBehavior];
  if (!v12)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v12 isStandalonePhoneFitnessMode];

  LODWORD(v74) = v14;
  if (v14)
  {
    v15 = "WELCOME_DESCRIPTION_KAHANA_VEGA";
  }

  else
  {
    v15 = "meViewController";
  }

  v16 = &off_10083D328;
  if (!v14)
  {
    v16 = &off_10083D320;
  }

  v17 = [objc_opt_self() smm_systemImageNamed:*v16];
  v18 = objc_opt_self();
  v19 = [v18 mainBundle];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 localizedStringForKey:v20 value:0 table:0];

  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  v78 = v18;
  v22 = [v18 mainBundle];
  v76 = v15;
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 localizedStringForKey:v23 value:0 table:0];

  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = String._bridgeToObjectiveC()();
  }

  v75 = v17;
  [v1 addBulletedListItemWithTitle:v21 description:v24 image:v17];

  v25 = type metadata accessor for WorkoutFeatures();
  v79[3] = v25;
  v79[4] = sub_100043B08();
  v26 = sub_100005994(v79);
  (*(*(v25 - 8) + 104))(v26, enum case for WorkoutFeatures.Kahana(_:), v25);
  LOBYTE(v25) = isFeatureEnabled(_:)();
  sub_100005A40(v79);
  v27 = v78;
  if ((v25 & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
  {
    v72 = v1;
    v28 = 0xD00000000000001ALL;
    if (v74)
    {
      v28 = 0xD00000000000001FLL;
    }

    v74 = v28;
    v29 = String._bridgeToObjectiveC()();
    v30 = [objc_opt_self() smm_systemImageNamed:v29];

    v31 = [v27 mainBundle];
    v32 = String._bridgeToObjectiveC()();

    v33 = String._bridgeToObjectiveC()();
    v34 = [v31 localizedStringForKey:v32 value:0 table:v33];

    if (!v34)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = String._bridgeToObjectiveC()();
    }

    v35 = [v27 mainBundle];
    v36 = String._bridgeToObjectiveC()();

    v37 = String._bridgeToObjectiveC()();
    v38 = [v35 localizedStringForKey:v36 value:0 table:v37];

    if (!v38)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = String._bridgeToObjectiveC()();
    }

    v1 = v72;
    [v72 addBulletedListItemWithTitle:v34 description:v38 image:v30];

    v27 = v78;
  }

  if (*(v1 + OBJC_IVAR___CHWelcomeViewController_fitnessPlusAvailable) == 1)
  {
    v39 = String._bridgeToObjectiveC()();
    v40 = [objc_opt_self() smm_systemImageNamed:v39];

    v41 = [v27 mainBundle];
    v42 = String._bridgeToObjectiveC()();
    v43 = [v41 localizedStringForKey:v42 value:0 table:0];

    if (!v43)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = String._bridgeToObjectiveC()();
    }

    v44 = [v27 mainBundle];
    v45 = String._bridgeToObjectiveC()();
    v46 = [v44 localizedStringForKey:v45 value:0 table:0];

    if (!v46)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = String._bridgeToObjectiveC()();
    }

    [v1 addBulletedListItemWithTitle:v43 description:v46 image:v40];
    v27 = v78;
  }

  v47 = [objc_opt_self() smm_systemImageNamed:@"person.2.fill"];
  v48 = [v27 mainBundle];
  v49 = String._bridgeToObjectiveC()();
  v50 = [v48 localizedStringForKey:v49 value:0 table:0];

  if (!v50)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = String._bridgeToObjectiveC()();
  }

  v51 = [v27 mainBundle];
  v52 = String._bridgeToObjectiveC()();
  v53 = [v51 localizedStringForKey:v52 value:0 table:0];

  if (!v53)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = String._bridgeToObjectiveC()();
  }

  [v1 addBulletedListItemWithTitle:v50 description:v53 image:v47];
  v54 = [objc_opt_self() boldButton];
  [v54 addTarget:v1 action:"didTapContinueButton" forControlEvents:64];
  v55 = objc_opt_self();
  v56 = v54;
  v57 = [v55 keyColors];
  if (!v57)
  {
    goto LABEL_40;
  }

  v58 = v57;

  v59 = [v58 nonGradientTextColor];

  [v56 setTintColor:v59];
  v60 = [v78 mainBundle];
  v61 = String._bridgeToObjectiveC()();
  v62 = [v60 localizedStringForKey:v61 value:0 table:0];

  if (!v62)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = String._bridgeToObjectiveC()();
  }

  [v56 setTitle:v62 forState:0];
  v63 = v77;
  UIButton.configuration.getter();
  v64 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v64 - 8) + 48))(v63, 1, v64))
  {
    sub_10015DEBC(v63, v73);
    UIButton.configuration.setter();

    sub_10015DF2C(v63);
  }

  else
  {
    v65 = [v71 blackColor];
    UIButton.Configuration.baseForegroundColor.setter();
    UIButton.configuration.setter();
  }

  v66 = v75;
  v67 = v56;
  v68 = String._bridgeToObjectiveC()();
  [v67 setAccessibilityIdentifier:v68];

  v69 = [v1 buttonTray];
  [v69 addButton:v67];

  [v1 setModalInPresentation:1];
}

id sub_10016B0DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WelcomeViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10016B150(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10016B164(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10016B1AC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10016B224@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = sub_100140278(&qword_1008DD518);
  __chkstk_darwin(v43);
  v5 = &v40 - v4;
  v44 = sub_100140278(&qword_1008DD520);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v7 = &v40 - v6;
  v46 = sub_100140278(&qword_1008DD528);
  __chkstk_darwin(v46);
  v9 = &v40 - v8;
  v10 = sub_100140278(&qword_1008DD530);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v45 = sub_100140278(&qword_1008DD538);
  __chkstk_darwin(v45);
  v42 = &v40 - v13;
  if (*v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v14 = v51;
    if (v51)
    {
      if (*(v51 + 16))
      {
        v15 = static Axis.Set.horizontal.getter();
        v40 = a1;
        __chkstk_darwin(v15);
        *(&v40 - 2) = v14;
        *(&v40 - 1) = v2;
        sub_100140278(&qword_1008DD5C8);
        sub_10016C230();
        ScrollView.init(_:showsIndicators:content:)();

        static Edge.Set.horizontal.getter();
        v51 = 0u;
        v52 = 0u;
        v53 = 1;
        sub_100140278(&qword_1008DD5A0);
        SafeAreaPaddingModifier.init(edges:insets:)();
        v16 = static Edge.Set.bottom.getter();
        EdgeInsets.init(_all:)();
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v25 = &v5[*(sub_100140278(&qword_1008DD590) + 36)];
        *v25 = v16;
        *(v25 + 1) = v18;
        *(v25 + 2) = v20;
        *(v25 + 3) = v22;
        *(v25 + 4) = v24;
        v25[40] = 0;
        v26 = static Edge.Set.horizontal.getter();
        v27 = static SafeAreaRegions.all.getter();
        v28 = v43;
        v29 = &v5[*(v43 + 36)];
        *v29 = v27;
        v29[8] = v26;
        v30 = sub_10016BFD4();
        v31 = sub_10016C1D4();
        View.scrollTargetBehavior<A>(_:)();
        sub_10016C2E8(v5);
        v32 = v41;
        v33 = v44;
        (*(v41 + 16))(v12, v7, v44);
        swift_storeEnumTagMultiPayload();
        sub_100140278(&qword_1008DD550);
        sub_10016BE3C();
        v47 = v28;
        v48 = &type metadata for HighlightsPagingScrollTargetBehavior;
        v49 = v30;
        v50 = v31;
        swift_getOpaqueTypeConformance2();
        v34 = v42;
        _ConditionalContent<>.init(storage:)();
        sub_100083B00(v34, v9);
        swift_storeEnumTagMultiPayload();
        sub_10016BD58();
        _ConditionalContent<>.init(storage:)();
        sub_100083B70(v34);
        return (*(v32 + 8))(v7, v33);
      }

      else
      {

        v36 = static Edge.Set.all.getter();
        LOBYTE(v51) = 0;
        *v12 = 0;
        *(v12 + 8) = xmmword_1006D6090;
        v12[24] = v36;
        *(v12 + 2) = xmmword_1006D60A0;
        *(v12 + 3) = xmmword_1006D60B0;
        v12[64] = 0;
        *(v12 + 72) = 0u;
        *(v12 + 88) = 0u;
        v12[104] = 1;
        swift_storeEnumTagMultiPayload();
        sub_100140278(&qword_1008DD550);
        sub_10016BE3C();
        v37 = sub_10016BFD4();
        v38 = sub_10016C1D4();
        *&v51 = v43;
        *(&v51 + 1) = &type metadata for HighlightsPagingScrollTargetBehavior;
        *&v52 = v37;
        *(&v52 + 1) = v38;
        swift_getOpaqueTypeConformance2();
        v39 = v42;
        _ConditionalContent<>.init(storage:)();
        sub_100083B00(v39, v9);
        swift_storeEnumTagMultiPayload();
        sub_10016BD58();
        _ConditionalContent<>.init(storage:)();
        return sub_100083B70(v39);
      }
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_10016BD58();
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    type metadata accessor for ActivitySharingHighlightDataProvider();
    sub_10016C430(&qword_1008DC028, type metadata accessor for ActivitySharingHighlightDataProvider);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10016B904@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0x4024000000000000;
  *(a3 + 16) = 0;
  sub_100140278(&qword_1008DD5E8);
  v18 = a1;
  v19 = *a2;
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = *(a2 + 4);
  v9 = *(a2 + 5);
  v10 = swift_allocObject();
  v11 = a2[1];
  v10[1] = *a2;
  v10[2] = v11;
  v10[3] = a2[2];

  sub_10016C358(&v19, v17);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  sub_100140278(&qword_1008DD5F8);
  type metadata accessor for UUID();
  type metadata accessor for ActivitySharingHighlightViewWrapper(0);
  sub_10014A6B0(&qword_1008DD600, &qword_1008DD5F8);
  sub_10016C430(&qword_1008DD608, type metadata accessor for ActivitySharingHighlightViewWrapper);
  sub_10016C430(&qword_1008DD610, type metadata accessor for ActivitySharingHighlight);
  ForEach<>.init(_:content:)();
  result = sub_100140278(&qword_1008DD5C8);
  *(a3 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_10016BB08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Calendar();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ActivitySharingHighlightViewModel();
  v8 = (v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[2];
  v12 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  sub_10016C3C8(a1, v10, type metadata accessor for ActivitySharingHighlight);
  *&v10[v8[7]] = v11;
  *&v10[v8[8]] = v12;
  *&v10[v8[9]] = v14;
  *&v10[v8[10]] = v13;
  v10[v8[11]] = 0;
  v15 = v11;
  v16 = v12;
  v17 = v14;
  v18 = v13;
  static Calendar.autoupdatingCurrent.getter();
  FIUIRelativeDateTimeFormatter.init(calendar:)();
  v19 = v8[13];
  v20 = [objc_allocWithZone(NSDateFormatter) init];
  [v20 setDateStyle:1];
  *&v10[v19] = v20;
  sub_10016C3C8(v10, a3, type metadata accessor for ActivitySharingHighlightViewModel);
  v21 = (a3 + *(type metadata accessor for ActivitySharingHighlightViewWrapper(0) + 20));
  type metadata accessor for ActivitySharingNavigationCoordinator();
  sub_10016C430(&qword_1008DC018, type metadata accessor for ActivitySharingNavigationCoordinator);
  v22 = EnvironmentObject.init()();
  v24 = v23;
  result = sub_10016C478(v10);
  *v21 = v22;
  v21[1] = v24;
  return result;
}

unint64_t sub_10016BD58()
{
  result = qword_1008DD540;
  if (!qword_1008DD540)
  {
    sub_100141EEC(&qword_1008DD538);
    sub_10016BE3C();
    sub_100141EEC(&qword_1008DD518);
    sub_10016BFD4();
    sub_10016C1D4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD540);
  }

  return result;
}

unint64_t sub_10016BE3C()
{
  result = qword_1008DD548;
  if (!qword_1008DD548)
  {
    sub_100141EEC(&qword_1008DD550);
    sub_10016BEF4();
    sub_10014A6B0(&qword_1008DD570, &qword_1008DD578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD548);
  }

  return result;
}

unint64_t sub_10016BEF4()
{
  result = qword_1008DD558;
  if (!qword_1008DD558)
  {
    sub_100141EEC(&qword_1008DD560);
    sub_10016BF80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD558);
  }

  return result;
}

unint64_t sub_10016BF80()
{
  result = qword_1008DD568;
  if (!qword_1008DD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD568);
  }

  return result;
}

unint64_t sub_10016BFD4()
{
  result = qword_1008DD580;
  if (!qword_1008DD580)
  {
    sub_100141EEC(&qword_1008DD518);
    sub_10016C060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD580);
  }

  return result;
}

unint64_t sub_10016C060()
{
  result = qword_1008DD588;
  if (!qword_1008DD588)
  {
    sub_100141EEC(&qword_1008DD590);
    sub_10016C0EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD588);
  }

  return result;
}

unint64_t sub_10016C0EC()
{
  result = qword_1008DD598;
  if (!qword_1008DD598)
  {
    sub_100141EEC(&qword_1008DD5A0);
    sub_10014A6B0(&qword_1008DD5A8, &qword_1008DD5B0);
    sub_10016C430(&qword_1008DD5B8, &type metadata accessor for SafeAreaPaddingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD598);
  }

  return result;
}

unint64_t sub_10016C1D4()
{
  result = qword_1008DD5C0;
  if (!qword_1008DD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD5C0);
  }

  return result;
}

unint64_t sub_10016C230()
{
  result = qword_1008DD5D0;
  if (!qword_1008DD5D0)
  {
    sub_100141EEC(&qword_1008DD5C8);
    sub_10014A6B0(&qword_1008DD5D8, &qword_1008DD5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD5D0);
  }

  return result;
}

uint64_t sub_10016C2E8(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DD518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10016C358(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DD5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016C3C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016C430(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10016C478(uint64_t a1)
{
  v2 = type metadata accessor for ActivitySharingHighlightViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10016C4D4()
{
  result = qword_1008DD618;
  if (!qword_1008DD618)
  {
    sub_100141EEC(&qword_1008DD620);
    sub_10016BD58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD618);
  }

  return result;
}

unint64_t sub_10016C560@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10016C950(*a1);
  *a2 = result;
  return result;
}

id sub_10016C5CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GoalDay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for GoalDay.Day(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GoalDay.Day(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10016C788()
{
  result = qword_1008DD668;
  if (!qword_1008DD668)
  {
    sub_100141EEC(&qword_1008DD670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD668);
  }

  return result;
}

unint64_t sub_10016C7F0()
{
  result = qword_1008DD678;
  if (!qword_1008DD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD678);
  }

  return result;
}

unint64_t sub_10016C848()
{
  result = qword_1008DD680;
  if (!qword_1008DD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD680);
  }

  return result;
}

uint64_t sub_10016C8B4(uint64_t a1)
{
  v2 = DateComponents.weekday.getter();
  v4 = v3;
  v5 = type metadata accessor for DateComponents();
  (*(*(v5 - 8) + 8))(a1, v5);
  if (v2 <= 7)
  {
    v6 = 0x504030201000607uLL >> (8 * v2);
  }

  else
  {
    v6 = 7;
  }

  if (v4)
  {
    return 7;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_10016C950(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

void sub_10016CA58()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for WorkoutDetailedPowerViewController();
  objc_msgSendSuper2(&v21, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v2 setBackgroundColor:v4];

  v5 = [v0 navigationItem];
  v6 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v0 action:"close"];
  [v5 setRightBarButtonItem:v6];

  v7 = [v0 navigationItem];
  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  [v7 setTitle:v10];
  v11 = *&v0[OBJC_IVAR___CHWorkoutDetailedPowerViewController_powerController];
  v12 = [v11 view];
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [v11 view];
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v3 clearColor];
  [v15 setBackgroundColor:v16];

  v17 = [v0 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v11 view];
  if (v19)
  {
    v20 = v19;
    [v18 addSubview:v19];

    [v0 addChildViewController:v11];
    [v11 didMoveToParentViewController:v0];
    sub_10016CFA4();
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_10016CDA8(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for WorkoutDetailedPowerViewController();
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [objc_allocWithZone(UINavigationBarAppearance) init];
    [v3 configureWithOpaqueBackground];
    v4 = objc_opt_self();
    v5 = [v4 systemBackgroundColor];
    [v3 setBackgroundColor:v5];

    v6 = [v4 systemBackgroundColor];
    [v3 setShadowColor:v6];

    v7 = [v1 navigationItem];
    [v7 setScrollEdgeAppearance:v3];

    v8 = [v1 tabBarController];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 tabBar];

      v11 = [objc_allocWithZone(UITabBarAppearance) init];
      [v10 setScrollEdgeAppearance:v11];
    }
  }
}

void sub_10016CFA4()
{
  sub_100140278(&unk_1008E4E20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D5300;
  v2 = *&v0[OBJC_IVAR___CHWorkoutDetailedPowerViewController_powerController];
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [v3 topAnchor];

  v6 = [v0 view];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v6 safeAreaLayoutGuide];

  v9 = [v8 topAnchor];
  v10 = [v5 constraintEqualToAnchor:v9];

  *(v1 + 32) = v10;
  v11 = [v2 view];
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [v11 leadingAnchor];

  v14 = [v0 view];
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v14;
  v16 = [v14 safeAreaLayoutGuide];

  v17 = [v16 leadingAnchor];
  v18 = [v13 constraintEqualToAnchor:v17];

  *(v1 + 40) = v18;
  v19 = [v2 view];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v22;
  v24 = [v22 safeAreaLayoutGuide];

  v25 = [v24 trailingAnchor];
  v26 = [v21 constraintEqualToAnchor:v25];

  *(v1 + 48) = v26;
  v27 = [v2 view];
  if (!v27)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v0 view];
  if (!v30)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v31 = v30;
  v32 = objc_opt_self();
  v33 = [v31 safeAreaLayoutGuide];

  v34 = [v33 bottomAnchor];
  v35 = [v29 constraintEqualToAnchor:v34];

  *(v1 + 56) = v35;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints:isa];
}

id sub_10016D3C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailedPowerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10016D4B4(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v69 = a5;
  v68 = a3;
  v9 = sub_100140278(&qword_1008DD4A8);
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v65 = &v56 - v10;
  v11 = sub_100140278(&qword_1008DD4B0);
  v62 = *(v11 - 8);
  v63 = v11;
  __chkstk_darwin(v11);
  v61 = &v56 - v12;
  v60 = sub_100140278(&qword_1008DD250);
  v13 = __chkstk_darwin(v60);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v56 - v16;
  v18 = sub_100140278(&qword_1008DD6D8);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v56 - v20;
  v64 = v5;
  *&v5[OBJC_IVAR___CHWorkoutDetailedPowerViewController_workout] = a1;
  v59 = a2;
  *&v5[OBJC_IVAR___CHWorkoutDetailedPowerViewController_workoutActivity] = a2;
  v22 = a2;
  v23 = a1;
  v58 = v22;
  v57 = v23;
  v56 = [a4 dataCalculator];
  type metadata accessor for WorkoutDetailPowerDataStore();
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtC10FitnessApp27WorkoutDetailPowerDataStore__powerInfo;
  v71 = 0;
  v26 = a4;
  sub_100140278(&qword_1008DD6E0);
  Published.init(initialValue:)();
  (*(v19 + 32))(&v24[v25], v21, v18);
  v27 = [objc_allocWithZone(NSAttributedString) init];
  swift_beginAccess();
  v77 = v27;
  sub_1000059F8(0, &qword_1008DD230);
  Published.init(initialValue:)();
  swift_endAccess();
  *(v24 + 5) = 0;
  swift_unknownObjectWeakInit();
  v28 = OBJC_IVAR____TtC10FitnessApp22WorkoutDetailDataStore__inWorkoutData;
  v29 = type metadata accessor for WorkoutChartViewModel(0);
  (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
  sub_100169118(v17, v15);
  v30 = v61;
  Published.init(initialValue:)();
  sub_10016DAC0(v17);
  (*(v62 + 32))(&v24[v28], v30, v63);
  v31 = OBJC_IVAR____TtC10FitnessApp22WorkoutDetailDataStore__inWorkoutProperties;
  v71 = 0;
  sub_100140278(&unk_1008DD260);
  v32 = v65;
  Published.init(initialValue:)();
  (*(v66 + 32))(&v24[v31], v32, v67);
  v33 = v57;
  v34 = v59;
  *(v24 + 2) = v57;
  *(v24 + 3) = v34;
  v35 = v56;
  *(v24 + 6) = v56;
  *(v24 + 8) = v26;
  v36 = v33;
  v37 = v58;
  v38 = v26;
  v39 = v35;
  v40 = [v38 fitnessUIFormattingManager];
  type metadata accessor for WorkoutChartDataElementFormattingManager();
  v41 = swift_allocObject();
  v42 = sub_10005772C();

  v41[2] = v40;
  v41[3] = v36;
  v41[4] = v34;
  v41[5] = v42;
  *(v24 + 7) = v41;
  v43 = v64;
  *&v64[OBJC_IVAR___CHWorkoutDetailedPowerViewController_dataStore] = v24;
  sub_10016DB28();

  v44 = v68;
  v45 = ObservedObject.init(wrappedValue:)();
  v47 = v46;
  LOBYTE(v77) = 0;
  State.init(wrappedValue:)();
  v48 = v71;
  v49 = v72;
  v50 = &v43[OBJC_IVAR___CHWorkoutDetailedPowerViewController_powerView];
  *v50 = v45;
  *(v50 + 1) = v47;
  *(v50 + 2) = v44;
  v51 = v69;
  v50[24] = v69;
  v50[32] = v48;
  *(v50 + 5) = v49;
  v71 = v45;
  v72 = v47;
  v73 = v44;
  v74 = v51;
  v75 = v48;
  v76 = v49;
  v52 = objc_allocWithZone(sub_100140278(&qword_1008DD6F0));

  v53 = v44;

  *&v43[OBJC_IVAR___CHWorkoutDetailedPowerViewController_powerController] = UIHostingController.init(rootView:)();
  v54 = type metadata accessor for WorkoutDetailedPowerViewController();
  v70.receiver = v43;
  v70.super_class = v54;
  return objc_msgSendSuper2(&v70, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_10016DAC0(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DD250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10016DB28()
{
  result = qword_1008DD6E8;
  if (!qword_1008DD6E8)
  {
    type metadata accessor for WorkoutDetailPowerDataStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD6E8);
  }

  return result;
}

uint64_t sub_10016DB80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10016DBC8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10016DC30@<X0>(uint64_t a1@<X8>)
{
  sub_10000FCBC();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.footnote.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10004642C(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  result = static HierarchicalShapeStyle.secondary.getter();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 42) = 1;
  *(a1 + 44) = result;
  return result;
}

unint64_t sub_10016DD40()
{
  result = qword_1008DD6F8;
  if (!qword_1008DD6F8)
  {
    sub_100141EEC(&qword_1008DD700);
    sub_10016DDF8();
    sub_10014A6B0(&qword_1008DD728, &qword_1008DD730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD6F8);
  }

  return result;
}

unint64_t sub_10016DDF8()
{
  result = qword_1008DD708;
  if (!qword_1008DD708)
  {
    sub_100141EEC(&qword_1008DD710);
    sub_10016DE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD708);
  }

  return result;
}

unint64_t sub_10016DE84()
{
  result = qword_1008DD718;
  if (!qword_1008DD718)
  {
    sub_100141EEC(&qword_1008DD720);
    sub_10014A6B0(&qword_1008DCB50, &qword_1008DCB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD718);
  }

  return result;
}

void *sub_10016DF3C(void *a1)
{
  v3 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v10 = (v1 + OBJC_IVAR____TtC10FitnessApp40SeymourWorkoutRecommendationDataProvider_updateHandler);
  *v10 = 0;
  v10[1] = 0;
  v1[15] = a1;
  v1[16] = 0x8000000000000000;
  v11 = a1;
  v1[14] = sub_1004C9AA0(_swiftEmptyArrayStorage);
  v1[17] = _swiftEmptyArrayStorage;
  static Date.distantPast.getter();
  (*(v7 + 32))(v1 + OBJC_IVAR____TtC10FitnessApp40SeymourWorkoutRecommendationDataProvider_lastRecommendationUpdate, v9, v6);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  v15 = sub_100653FFC(0, 0, v5, &unk_1006D67B0, v14);

  v1[16] = v15;

  return v1;
}

uint64_t sub_10016E18C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_10016E274;

    return sub_10016E38C();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10016E274()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_10016E3AC()
{
  v1 = *(v0 + 56);
  static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  if (*(v1 + 128) >> 62 == 1)
  {
    static os_log_type_t.default.getter();
    v3 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    sub_10017374C();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
  }

  else
  {
    type metadata accessor for SubscriptionToken();
    swift_allocObject();
    swift_unknownObjectRetain();
    v6 = SubscriptionToken.init(eventHub:)();
    swift_getObjectType();
    type metadata accessor for RecommendationsUpdated();
    swift_unknownObjectRetain();

    dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

    swift_unknownObjectRelease();
    sub_100005A40(v0 + 16);
    static os_log_type_t.default.getter();
    v7 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    *(v1 + 128) = v6 | 0x4000000000000000;

    sub_10016E640();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10016E640()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  Date.init()();
  v12 = *(v1 + OBJC_IVAR____TtC10FitnessApp40SeymourWorkoutRecommendationDataProvider_updateHandler);
  if (!v12)
  {
    return (*(v6 + 8))(v11, v5);
  }

  v24 = v4;
  v13 = *(v1 + OBJC_IVAR____TtC10FitnessApp40SeymourWorkoutRecommendationDataProvider_updateHandler + 8);
  v14 = OBJC_IVAR____TtC10FitnessApp40SeymourWorkoutRecommendationDataProvider_lastRecommendationUpdate;
  swift_beginAccess();
  (*(v6 + 16))(v9, v1 + v14, v5);

  Date.timeIntervalSince(_:)();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v9, v5);
  if (v16 <= 5.0)
  {
    v17(v11, v5);
    return sub_1000245E0(v12);
  }

  else
  {
    swift_beginAccess();
    (*(v6 + 24))(v1 + v14, v11, v5);
    swift_endAccess();
    v18 = type metadata accessor for TaskPriority();
    v19 = v24;
    (*(*(v18 - 8) + 56))(v24, 1, 1, v18);
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v20;
    v21[5] = v12;
    v21[6] = v13;

    sub_10026E198(0, 0, v19, &unk_1006D67C0, v21);

    sub_1000245E0(v12);
    return (v17)(v11, v5);
  }
}

uint64_t sub_10016E968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  return _swift_task_switch(sub_10016E98C, 0, 0);
}

uint64_t sub_10016E98C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10016EA9C, Strong, 0);
  }

  else
  {
    static os_log_type_t.default.getter();
    v2 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    (*(v0 + 112))();
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_10016EA9C()
{
  v1 = *(*(v0 + 128) + 120);
  *(v0 + 136) = v1;
  v2 = v1;

  return _swift_task_switch(sub_10016EB14, 0, 0);
}

uint64_t sub_10016EB14()
{
  v1 = v0[17];
  v2 = *&v1[OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider];
  v0[18] = v2;
  v3 = v2;

  v4 = swift_task_alloc();
  v0[19] = v4;
  *(v4 + 16) = v3;
  v5 = swift_task_alloc();
  v0[20] = v5;
  v6 = sub_100140278(&qword_1008DD900);
  *v5 = v0;
  v5[1] = sub_10016EC3C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 11, 0, 0, 0xD000000000000024, 0x8000000100748CB0, sub_100173BE8, v4, v6);
}

uint64_t sub_10016EC3C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_10016EEF4;
  }

  else
  {

    v2 = sub_10016ED58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016ED58()
{
  *(v0 + 176) = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 184) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10016F0F0, Strong, 0);
  }

  else
  {
    v2 = static os_log_type_t.default.getter();
    v3 = HKLogActivity;
    v4 = os_log_type_enabled(HKLogActivity, v2);
    v5 = *(v0 + 176);
    if (v4)
    {

      v6 = v3;
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      v8 = *(v5 + 16);

      *(v7 + 4) = v8;

      _os_log_impl(&_mh_execute_header, v6, v2, "[SeymourWorkoutRecommendationDataProvider] Received %ld updated recommendations", v7, 0xCu);
    }

    else
    {
    }

    (*(v0 + 112))(v9);
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10016EEF4()
{
  v15 = v0;

  v1 = static os_log_type_t.error.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = *(v0 + 168);
    v4 = v2;
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    *(v0 + 96) = v3;
    swift_errorRetain();
    sub_100140278(&qword_1008EB640);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000AFDC(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v4, v1, "[SeymourWorkoutRecommendationDataProvider] Failed to fetch recommendations: %s.", v5, 0xCu);
    sub_100005A40(v6);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10016F294, Strong, 0);
  }

  else
  {

    (*(v0 + 112))(v11);
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10016F0F0()
{
  *(*(v0 + 184) + 136) = *(v0 + 176);

  return _swift_task_switch(sub_10016F170, 0, 0);
}

uint64_t sub_10016F170()
{
  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  v3 = os_log_type_enabled(HKLogActivity, v1);
  v4 = *(v0 + 176);
  if (v3)
  {

    v5 = v2;
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    v7 = *(v4 + 16);

    *(v6 + 4) = v7;

    _os_log_impl(&_mh_execute_header, v5, v1, "[SeymourWorkoutRecommendationDataProvider] Received %ld updated recommendations", v6, 0xCu);
  }

  else
  {
  }

  (*(v0 + 112))(v8);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10016F294()
{
  *(*(v0 + 192) + 136) = _swiftEmptyArrayStorage;

  return _swift_task_switch(sub_10016F314, 0, 0);
}

uint64_t sub_10016F314()
{

  (*(v0 + 112))(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016F380()
{

  v1 = OBJC_IVAR____TtC10FitnessApp40SeymourWorkoutRecommendationDataProvider_lastRecommendationUpdate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000245E0(*(v0 + OBJC_IVAR____TtC10FitnessApp40SeymourWorkoutRecommendationDataProvider_updateHandler));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SeymourWorkoutRecommendationDataProvider()
{
  result = qword_1008DD768;
  if (!qword_1008DD768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10016F484()
{
  result = type metadata accessor for Date();
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

unint64_t sub_10016F550(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_10016F56C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10016F5C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10016F628(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MetricDataProviderTimeScale(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10016F684(uint64_t a1, unsigned int a2)
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

uint64_t sub_10016F6CC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10016F738(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_10016F75C, v2, 0);
}

uint64_t sub_10016F75C()
{
  v20 = v0;
  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = v2;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136315138;
    _StringGuts.grow(_:)(36);

    v19[1] = 91;
    v19[2] = 0xE100000000000000;
    v8._countAndFlagsBits = v4;
    v8._object = v3;
    String.append(_:)(v8);
    v9._object = 0x8000000100748B30;
    v9._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v9);
    v10 = sub_10000AFDC(91, 0xE100000000000000, v19);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, v1, "[SeymourWorkoutRecommendationDataProvider][%s] Fetching catalog item view model.", v6, 0xCu);
    sub_100005A40(v7);
  }

  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];
  v14 = sub_100173A24(&qword_1008DD8B8, type metadata accessor for SeymourWorkoutRecommendationDataProvider);
  v15 = swift_task_alloc();
  v0[6] = v15;
  v15[2] = v11;
  v15[3] = v13;
  v15[4] = v12;
  v16 = swift_task_alloc();
  v0[7] = v16;
  v17 = type metadata accessor for CatalogItemViewModel();
  *v16 = v0;
  v16[1] = sub_10016F9DC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v11, v14, 0xD000000000000031, 0x8000000100748AF0, sub_100173914, v15, v17);
}

uint64_t sub_10016F9DC()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_10016FB1C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_10016FB00;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10016FB1C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10016FB80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_100140278(&qword_1008DD8D0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = *(*(a2 + 120) + OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider);
  (*(v9 + 16))(&v17 - v11, a1, v8, v10);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v12, v8);
  v16 = v13;
  sub_100171028(a3, a4, sub_100173920, v15, v16);
}

uint64_t sub_10016FD04(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_100140278(&qword_1008DD8D0);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    sub_10017374C();
    swift_allocError();
    *v3 = 2;
    sub_100140278(&qword_1008DD8D0);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10016FDA4(uint64_t a1, double a2, double a3)
{
  *(v4 + 128) = v3;
  *(v4 + 112) = a2;
  *(v4 + 120) = a3;
  *(v4 + 104) = a1;
  sub_100140278(&qword_1008E1760);
  *(v4 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_10016FE48, v3, 0);
}

uint64_t sub_10016FE48()
{
  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = v0[13];
    v4 = v2;
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, v1, "[SeymourWorkoutRecommendationDataProvider] Looking up artwork for %@", v5, 0xCu);
    sub_10000EA04(v6, &unk_1008DB8B0);
  }

  v8 = v0[16];
  swift_beginAccess();
  v9 = *(v8 + 112);
  if (!*(v9 + 16))
  {
    goto LABEL_12;
  }

  v10 = v0[13];

  v11 = sub_1004C5850(v10);
  if ((v12 & 1) == 0)
  {

LABEL_12:
    v25 = v0[16];
    v26 = v0[17];
    v28 = v0[14];
    v27 = v0[15];
    v29 = v0[13];
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v26, 1, 1, v30);
    v31 = sub_100173A24(&qword_1008DD8B8, type metadata accessor for SeymourWorkoutRecommendationDataProvider);
    v32 = swift_allocObject();
    v32[2] = v25;
    v32[3] = v31;
    v32[4] = v29;
    v32[5] = v25;
    v32[6] = v29;
    v32[7] = v28;
    v32[8] = v27;
    v33 = v29;
    swift_retain_n();
    v34 = v33;
    v35 = sub_100654268(0, 0, v26, &unk_1006D6750, v32);
    v0[21] = v35;
    swift_beginAccess();
    v36 = v34;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v8 + 112);
    *(v8 + 112) = 0x8000000000000000;
    sub_10048F9E8(v35, 0, v36, isUniquelyReferenced_nonNull_native);

    *(v8 + 112) = v44;
    swift_endAccess();
    v38 = swift_task_alloc();
    v0[22] = v38;
    v39 = sub_1000059F8(0, &qword_1008DD8C0);
    v40 = sub_100140278(&qword_1008EB640);
    *v38 = v0;
    v38[1] = sub_100170528;
    v41 = v0 + 11;
    v42 = v35;
    goto LABEL_13;
  }

  v13 = *(v9 + 56) + 16 * v11;
  v14 = *v13;
  v0[18] = *v13;
  v15 = *(v13 + 8);
  sub_1000A72F0(v14, v15);

  v16 = static os_log_type_t.default.getter();
  v17 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v16))
  {
    v18 = v0[13];
    v19 = v17;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v18;
    *v21 = v18;
    v22 = v18;
    _os_log_impl(&_mh_execute_header, v19, v16, "[SeymourWorkoutRecommendationDataProvider] Found artwork in cache for %@.", v20, 0xCu);
    sub_10000EA04(v21, &unk_1008DB8B0);
  }

  if (v15)
  {

    v23 = v0[1];

    return v23(v14);
  }

  v43 = swift_task_alloc();
  v0[19] = v43;
  v39 = sub_1000059F8(0, &qword_1008DD8C0);
  v40 = sub_100140278(&qword_1008EB640);
  *v43 = v0;
  v43[1] = sub_100170384;
  v41 = v0 + 12;
  v42 = v14;
LABEL_13:

  return Task.value.getter(v41, v42, v39, v40, &protocol self-conformance witness table for Error);
}

uint64_t sub_100170384()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_100170754;
  }

  else
  {
    v4 = sub_1001704B0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001704B0()
{
  sub_1000A73A4(*(v0 + 144), 0);
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100170528()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_1001707C4;
  }

  else
  {
    v4 = sub_100170654;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100170654()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[11];
  swift_beginAccess();
  v4 = v2;
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_10048F9E8(v3, 1, v4, isUniquelyReferenced_nonNull_native);

  *(v1 + 112) = v9;
  swift_endAccess();

  v7 = v0[1];

  return v7(v5);
}

uint64_t sub_100170754()
{
  sub_1000A73A4(*(v0 + 144), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001707C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100170830(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a1;
  *(v8 + 24) = a6;
  return _swift_task_switch(sub_100170858, a7, 0);
}

uint64_t sub_100170858()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = sub_100173A24(&qword_1008DD8B8, type metadata accessor for SeymourWorkoutRecommendationDataProvider);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v10 = *(v0 + 32);
  *(v5 + 16) = v3;
  *(v5 + 24) = v10;
  *(v5 + 40) = v2;
  *(v5 + 48) = v1;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v7 = sub_1000059F8(0, &qword_1008DD8C0);
  *v6 = v0;
  v6[1] = sub_1001709C4;
  v8 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v10, v4, 0xD00000000000002FLL, 0x8000000100748AC0, sub_100173884, v5, v7);
}

uint64_t sub_1001709C4()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[4];

    return _swift_task_switch(sub_100170B00, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100170B00()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100170B64(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_100140278(&qword_1008DD8C8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = static os_log_type_t.default.getter();
  v13 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v12))
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26 = a3;
    v18 = a1;
    v19 = v17;
    *v16 = 138412290;
    *(v16 + 4) = a2;
    *v17 = a2;
    v20 = a2;
    _os_log_impl(&_mh_execute_header, v14, v12, "[SeymourWorkoutRecommendationDataProvider] Fetching artwork for %@.", v16, 0xCu);
    sub_10000EA04(v19, &unk_1008DB8B0);
    a1 = v18;
    a3 = v26;

    a4 = v27;
  }

  v21 = *(*(a3 + 120) + OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider);
  (*(v9 + 16))(v11, a1, v8);
  v22 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  (*(v9 + 32))(v23 + v22, v11, v8);
  v24 = a2;
  v25 = v21;
  sub_100419358(a4, sub_100173894, v23);
}

uint64_t sub_100170DE0(void *a1, void *a2)
{
  if (a1)
  {
    a1;
    v3 = static os_log_type_t.default.getter();
    v4 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v3))
    {
      v5 = v4;
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = a2;
      *v7 = a2;
      v8 = a2;
      _os_log_impl(&_mh_execute_header, v5, v3, "[SeymourWorkoutRecommendationDataProvider] Fetched artwork for %@.", v6, 0xCu);
      sub_10000EA04(v7, &unk_1008DB8B0);
    }

    sub_100140278(&qword_1008DD8C8);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    v10 = static os_log_type_t.error.getter();
    v11 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v10))
    {
      v12 = v11;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = a2;
      *v14 = a2;
      v15 = a2;
      _os_log_impl(&_mh_execute_header, v12, v10, "[SeymourWorkoutRecommendationDataProvider] Failed to fetch artwork for %@.", v13, 0xCu);
      sub_10000EA04(v14, &unk_1008DB8B0);
    }

    sub_10017374C();
    swift_allocError();
    *v16 = 3;
    sub_100140278(&qword_1008DD8C8);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100171028(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  v101 = a5;
  v103 = a4;
  v102 = a3;
  v93 = sub_100140278(&qword_1008DD8D8);
  v92 = *(v93 - 8);
  v7 = *(v92 + 64);
  __chkstk_darwin(v93);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v90 = &v85 - v10;
  v11 = sub_100140278(&unk_1008F2010);
  v97 = *(v11 - 8);
  v12 = *(v97 + 64);
  __chkstk_darwin(v11);
  v94 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v95 = &v85 - v14;
  __chkstk_darwin(v15);
  v96 = &v85 - v16;
  v100 = type metadata accessor for CatalogLockupPlaceholder();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107[3] = &type metadata for SeymourWorkoutRecommendation;
  v107[4] = &off_10085FF18;
  v107[0] = a1;
  v107[1] = a2;
  sub_100140278(&qword_1008DD8E0);
  inited = swift_initStackObject();
  v91 = xmmword_1006D46C0;
  *(inited + 16) = xmmword_1006D46C0;
  swift_bridgeObjectRetain_n();
  *(inited + 32) = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v19;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v20 = sub_1002FC244(inited);
  swift_setDeallocating();
  sub_10000EA04(inited + 32, &qword_1008DD8E8);
  v21 = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  if (!*(v20 + 16))
  {

    goto LABEL_7;
  }

  v89 = v11;
  v23 = sub_100066F20(v21, v22);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_10000B1B4(*(v20 + 56) + 32 * v23, v104);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    static os_log_type_t.error.getter();
    v44 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1006D1F70;
    *(v45 + 56) = &type metadata for String;
    v46 = sub_10000A788();
    *(v45 + 64) = v46;
    *(v45 + 32) = 0xD00000000000002ALL;
    *(v45 + 40) = 0x8000000100748BB0;
    *&v104[0] = 0;
    *(&v104[0] + 1) = 0xE000000000000000;
    v47 = v44;
    _StringGuts.grow(_:)(36);

    *&v104[0] = 91;
    *(&v104[0] + 1) = 0xE100000000000000;
    v48._countAndFlagsBits = a1;
    v48._object = a2;
    String.append(_:)(v48);
    v49._countAndFlagsBits = 0xD000000000000021;
    v49._object = 0x8000000100748B30;
    String.append(_:)(v49);
    v50 = v104[0];
    *(v45 + 96) = &type metadata for String;
    *(v45 + 104) = v46;
    *(v45 + 72) = v50;
    os_log(_:dso:log:_:_:)();

    v102(0);
    return sub_100005A40(v107);
  }

  v26 = v106;
  v88 = v105;
  LODWORD(v87) = static os_log_type_t.default.getter();
  v27 = HKLogActivity;
  v86 = sub_100140278(&unk_1008E4E50);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1006D1F70;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_10000A788();
  *(v28 + 64) = v29;
  *(v28 + 32) = 0xD00000000000002ALL;
  *(v28 + 40) = 0x8000000100748BB0;
  v85 = 0x8000000100748BB0;
  *&v104[0] = 0;
  *(&v104[0] + 1) = 0xE000000000000000;
  v30 = v27;
  _StringGuts.grow(_:)(36);

  *&v104[0] = 91;
  *(&v104[0] + 1) = 0xE100000000000000;
  v31._countAndFlagsBits = a1;
  v31._object = a2;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0xD000000000000021;
  v32._object = 0x8000000100748B30;
  String.append(_:)(v32);
  v33 = v104[0];
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 72) = v33;
  os_log(_:dso:log:_:_:)();

  v34 = v88;

  v35 = v101;
  v36 = *(v101 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogItemViewModelCache);
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 objectForKey:v37];

  if (v38)
  {
    static os_log_type_t.default.getter();
    v39 = HKLogActivity;
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1006D64F0;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = v29;
    *(v40 + 32) = 0xD00000000000002ALL;
    *(v40 + 40) = v85;
    *(v40 + 96) = &type metadata for String;
    *(v40 + 104) = v29;
    *(v40 + 72) = v34;
    *(v40 + 80) = v26;
    *(v40 + 136) = type metadata accessor for CatalogItemViewModel();
    *(v40 + 144) = sub_100173A24(&qword_1008DD8F8, type metadata accessor for CatalogItemViewModel);
    *(v40 + 112) = v38;
    v41 = v39;
    v42 = v38;
    os_log(_:dso:log:_:_:)();

    v43 = v42;
    v102(v38);
  }

  else
  {
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = swift_allocObject();
    v87 = v53;
    v53[2] = v52;
    v53[3] = v34;
    v53[4] = v26;
    v54 = v102;
    v55 = v103;
    v53[5] = v102;
    v53[6] = v55;
    sub_100007C5C(v107, v104);
    v56 = swift_allocObject();
    v86 = v56;
    sub_100006260(v104, v56 + 16);
    *(v56 + 56) = v54;
    *(v56 + 64) = v55;
    swift_retain_n();

    v57 = v98;
    CatalogLockupPlaceholder.init(identifier:referenceType:editorialCardIdentifier:)();
    v58 = *(v35 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 24);
    v103 = *(v35 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 32);
    sub_1000066AC((v35 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient), v58);
    sub_100140278(&qword_1008DD8F0);
    v59 = v99;
    v60 = (*(v99 + 80) + 32) & ~*(v99 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v91;
    (*(v59 + 16))(v61 + v60, v57, v100);
    v62 = v90;
    dispatch thunk of CatalogClientProtocol.fetchRemoteCatalogLockups(displayStyle:placeholders:)();

    v63 = swift_allocObject();
    v64 = v87;
    *(v63 + 16) = sub_10017399C;
    *(v63 + 24) = v64;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1001739AC;
    *(v65 + 24) = v63;
    v66 = v92;
    v67 = v93;
    (*(v92 + 16))(v8, v62, v93);
    v68 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v69 = swift_allocObject();
    (*(v66 + 32))(v69 + v68, v8, v67);
    v70 = (v69 + ((v7 + v68 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v70 = sub_1001739C8;
    v70[1] = v65;

    v71 = v95;
    Promise.init(asyncOperation:)();
    (*(v66 + 8))(v62, v67);
    v72 = swift_allocObject();
    v73 = v86;
    *(v72 + 16) = sub_1001739A0;
    *(v72 + 24) = v73;
    v74 = swift_allocObject();
    *(v74 + 16) = sub_1001739F8;
    *(v74 + 24) = v72;
    v75 = v97;
    v76 = v94;
    v77 = v89;
    (*(v97 + 16))(v94, v71, v89);
    v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v79 = swift_allocObject();
    (*(v75 + 32))(v79 + v78, v76, v77);
    v80 = (v79 + ((v12 + v78 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v80 = sub_100173A14;
    v80[1] = v74;

    v81 = v96;
    Promise.init(asyncOperation:)();
    v82 = *(v75 + 8);
    v82(v71, v77);
    v83 = Promise.operation.getter();
    v84 = swift_allocObject();
    *(v84 + 16) = 0;
    *(v84 + 24) = 0;
    v83(sub_100173A1C, v84);

    v82(v81, v77);
    (*(v99 + 8))(v98, v100);
  }

  return sub_100005A40(v107);
}

uint64_t sub_100171CD0(void *a1, void (*a2)(id), uint64_t a3, uint64_t a4)
{
  v104 = a4;
  v105 = a2;
  v106 = a3;
  v95 = sub_100140278(&qword_1008DD8D8);
  v94 = *(v95 - 8);
  v5 = *(v94 + 64);
  v6 = __chkstk_darwin(v95);
  v7 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v88 - v8;
  v10 = sub_100140278(&unk_1008F2010);
  v99 = *(v10 - 8);
  v100 = v10;
  v11 = *(v99 + 64);
  v12 = __chkstk_darwin(v10);
  v96 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v97 = &v88 - v14;
  __chkstk_darwin(v13);
  v98 = &v88 - v15;
  v16 = type metadata accessor for CatalogLockupPlaceholder();
  v102 = *(v16 - 8);
  v103 = v16;
  __chkstk_darwin(v16);
  v101 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110[3] = sub_1000059F8(0, &qword_1008ED7C0);
  v110[4] = &off_10084F7C0;
  v110[0] = a1;
  v18 = a1;
  v19 = sub_100289324();
  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = v19;
  v21 = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  if (!*(v20 + 16))
  {

    goto LABEL_8;
  }

  v23 = sub_100066F20(v21, v22);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_10000B1B4(*(v20 + 56) + 32 * v23, v107);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    static os_log_type_t.error.getter();
    v46 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1006D1F70;
    *(v47 + 56) = &type metadata for String;
    v48 = sub_10000A788();
    *(v47 + 64) = v48;
    *(v47 + 32) = 0xD00000000000002ALL;
    *(v47 + 40) = 0x8000000100748BB0;
    v49 = v46;
    v50 = [v18 description];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    *(v47 + 96) = &type metadata for String;
    *(v47 + 104) = v48;
    *(v47 + 72) = v51;
    *(v47 + 80) = v53;
    os_log(_:dso:log:_:_:)();

    v105(0);
    return sub_100005A40(v110);
  }

  v88 = v9;
  v92 = v108;
  v93 = v109;
  LODWORD(v91) = static os_log_type_t.default.getter();
  v26 = HKLogActivity;
  v90 = sub_100140278(&unk_1008E4E50);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1006D1F70;
  *(v27 + 56) = &type metadata for String;
  v28 = sub_10000A788();
  *(v27 + 64) = v28;
  *(v27 + 32) = 0xD00000000000002ALL;
  *(v27 + 40) = 0x8000000100748BB0;
  v89 = 0x8000000100748BB0;
  v29 = v26;
  v30 = [v18 description];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  *(v27 + 96) = &type metadata for String;
  *(v27 + 104) = v28;
  v34 = v28;
  *(v27 + 72) = v31;
  *(v27 + 80) = v33;
  v35 = v92;
  os_log(_:dso:log:_:_:)();

  v36 = v104;
  v37 = *(v104 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogItemViewModelCache);
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 objectForKey:v38];

  if (v39)
  {
    static os_log_type_t.default.getter();
    v40 = HKLogActivity;
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1006D64F0;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = v34;
    *(v41 + 32) = 0xD00000000000002ALL;
    *(v41 + 40) = v89;
    *(v41 + 96) = &type metadata for String;
    *(v41 + 104) = v34;
    v42 = v93;
    *(v41 + 72) = v35;
    *(v41 + 80) = v42;
    *(v41 + 136) = type metadata accessor for CatalogItemViewModel();
    *(v41 + 144) = sub_100173A24(&qword_1008DD8F8, type metadata accessor for CatalogItemViewModel);
    *(v41 + 112) = v39;
    v43 = v40;
    v44 = v39;
    os_log(_:dso:log:_:_:)();

    v45 = v44;
    v105(v39);
  }

  else
  {
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    v91 = v56;
    v56[2] = v55;
    v56[3] = v35;
    v58 = v105;
    v57 = v106;
    v56[4] = v93;
    v56[5] = v58;
    v56[6] = v57;
    sub_100007C5C(v110, v107);
    v59 = swift_allocObject();
    v90 = v59;
    sub_100006260(v107, v59 + 16);
    *(v59 + 56) = v58;
    *(v59 + 64) = v57;
    swift_retain_n();

    v60 = v101;
    CatalogLockupPlaceholder.init(identifier:referenceType:editorialCardIdentifier:)();
    v61 = *(v36 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 24);
    v106 = *(v36 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 32);
    sub_1000066AC((v36 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient), v61);
    sub_100140278(&qword_1008DD8F0);
    v62 = v102;
    v63 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1006D46C0;
    (*(v62 + 16))(v64 + v63, v60, v103);
    v65 = v88;
    dispatch thunk of CatalogClientProtocol.fetchRemoteCatalogLockups(displayStyle:placeholders:)();

    v66 = swift_allocObject();
    v67 = v91;
    *(v66 + 16) = sub_100173EE4;
    *(v66 + 24) = v67;
    v68 = swift_allocObject();
    *(v68 + 16) = sub_100173EF0;
    *(v68 + 24) = v66;
    v69 = v94;
    v70 = v95;
    (*(v94 + 16))(v7, v65, v95);
    v71 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v72 = swift_allocObject();
    (*(v69 + 32))(v72 + v71, v7, v70);
    v73 = (v72 + ((v5 + v71 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v73 = sub_100173ED8;
    v73[1] = v68;

    v74 = v97;
    Promise.init(asyncOperation:)();
    (*(v69 + 8))(v65, v70);
    v75 = swift_allocObject();
    v76 = v90;
    *(v75 + 16) = sub_100173EE0;
    *(v75 + 24) = v76;
    v77 = swift_allocObject();
    *(v77 + 16) = sub_100173F08;
    *(v77 + 24) = v75;
    v79 = v99;
    v78 = v100;
    v80 = v96;
    (*(v99 + 16))(v96, v74, v100);
    v81 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v82 = swift_allocObject();
    (*(v79 + 32))(v82 + v81, v80, v78);
    v83 = (v82 + ((v11 + v81 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v83 = sub_100173EDC;
    v83[1] = v77;

    v84 = v98;
    Promise.init(asyncOperation:)();
    v85 = *(v79 + 8);
    v85(v74, v78);
    v86 = Promise.operation.getter();
    v87 = swift_allocObject();
    *(v87 + 16) = 0;
    *(v87 + 24) = 0;
    v86(sub_100173F20, v87);

    v85(v84, v78);
    (*(v102 + 8))(v101, v103);
  }

  return sub_100005A40(v110);
}

uint64_t sub_10017282C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v108 = a4;
  v109 = a2;
  v110 = a3;
  v5 = sub_100140278(&qword_1008DD8D8);
  v102 = *(v5 - 8);
  v6 = *(v102 + 64);
  v7 = __chkstk_darwin(v5);
  v8 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v92 - v9;
  v11 = sub_100140278(&unk_1008F2010);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v103 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v104 = &v92 - v16;
  __chkstk_darwin(v15);
  v18 = &v92 - v17;
  v19 = type metadata accessor for CatalogLockupPlaceholder();
  v106 = *(v19 - 8);
  v107 = v19;
  __chkstk_darwin(v19);
  v105 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114[3] = type metadata accessor for MindfulnessSessionViewModel();
  v114[4] = &off_10084F7A8;
  v114[0] = a1;
  v21 = a1;
  v22 = MindfulnessSessionViewModel.metadata.getter();
  if (!v22)
  {
    goto LABEL_9;
  }

  v23 = v22;
  v101 = v18;
  v24 = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  if (!*(v23 + 16))
  {

    goto LABEL_8;
  }

  v99 = v12;
  v100 = v11;
  v26 = sub_100066F20(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_10000B1B4(*(v23 + 56) + 32 * v26, v111);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    static os_log_type_t.error.getter();
    v50 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1006D1F70;
    *(v51 + 56) = &type metadata for String;
    v52 = sub_10000A788();
    *(v51 + 64) = v52;
    *(v51 + 32) = 0xD00000000000002ALL;
    *(v51 + 40) = 0x8000000100748BB0;
    v53 = v50;
    v54 = [v21 description];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    *(v51 + 96) = &type metadata for String;
    *(v51 + 104) = v52;
    *(v51 + 72) = v55;
    *(v51 + 80) = v57;
    os_log(_:dso:log:_:_:)();

    (v109)(0);
    return sub_100005A40(v114);
  }

  v92 = v10;
  v93 = v5;
  v97 = v112;
  v98 = v113;
  LODWORD(v96) = static os_log_type_t.default.getter();
  v29 = HKLogActivity;
  v95 = sub_100140278(&unk_1008E4E50);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1006D1F70;
  *(v30 + 56) = &type metadata for String;
  v31 = sub_10000A788();
  *(v30 + 64) = v31;
  *(v30 + 32) = 0xD00000000000002ALL;
  *(v30 + 40) = 0x8000000100748BB0;
  v94 = 0x8000000100748BB0;
  v32 = v29;
  v33 = [v21 description];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  *(v30 + 96) = &type metadata for String;
  *(v30 + 104) = v31;
  v37 = v31;
  *(v30 + 72) = v34;
  *(v30 + 80) = v36;
  v38 = v97;
  os_log(_:dso:log:_:_:)();

  v39 = v108;
  v40 = *(v108 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogItemViewModelCache);
  v41 = v38;
  v42 = String._bridgeToObjectiveC()();
  v43 = [v40 objectForKey:v42];

  if (v43)
  {
    static os_log_type_t.default.getter();
    v44 = HKLogActivity;
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1006D64F0;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = v37;
    *(v45 + 32) = 0xD00000000000002ALL;
    *(v45 + 40) = v94;
    *(v45 + 96) = &type metadata for String;
    *(v45 + 104) = v37;
    v46 = v98;
    *(v45 + 72) = v41;
    *(v45 + 80) = v46;
    *(v45 + 136) = type metadata accessor for CatalogItemViewModel();
    *(v45 + 144) = sub_100173A24(&qword_1008DD8F8, type metadata accessor for CatalogItemViewModel);
    *(v45 + 112) = v43;
    v47 = v44;
    v48 = v43;
    os_log(_:dso:log:_:_:)();

    v49 = v48;
    (v109)(v43);
  }

  else
  {
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v60 = swift_allocObject();
    v60[2] = v59;
    v60[3] = v41;
    v62 = v109;
    v61 = v110;
    v60[4] = v98;
    v60[5] = v62;
    v60[6] = v61;
    v63 = v60;
    sub_100007C5C(v114, v111);
    v64 = swift_allocObject();
    v96 = v64;
    sub_100006260(v111, v64 + 16);
    *(v64 + 56) = v62;
    *(v64 + 64) = v61;
    swift_retain_n();

    v65 = v105;
    CatalogLockupPlaceholder.init(identifier:referenceType:editorialCardIdentifier:)();
    v66 = *(v39 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 24);
    v110 = *(v39 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 32);
    v109 = sub_1000066AC((v39 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient), v66);
    sub_100140278(&qword_1008DD8F0);
    v67 = v106;
    v68 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1006D46C0;
    (*(v67 + 16))(v69 + v68, v65, v107);
    v70 = v92;
    dispatch thunk of CatalogClientProtocol.fetchRemoteCatalogLockups(displayStyle:placeholders:)();

    v71 = swift_allocObject();
    *(v71 + 16) = sub_100173EE4;
    *(v71 + 24) = v63;
    v95 = v63;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_100173EF0;
    *(v72 + 24) = v71;
    v73 = v102;
    v74 = v93;
    (*(v102 + 16))(v8, v70, v93);
    v75 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v76 = swift_allocObject();
    (*(v73 + 32))(v76 + v75, v8, v74);
    v77 = (v76 + ((v6 + v75 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v77 = sub_100173ED8;
    v77[1] = v72;

    v78 = v104;
    Promise.init(asyncOperation:)();
    (*(v73 + 8))(v70, v74);
    v79 = swift_allocObject();
    v80 = v96;
    *(v79 + 16) = sub_100173EE0;
    *(v79 + 24) = v80;
    v81 = swift_allocObject();
    *(v81 + 16) = sub_100173F08;
    *(v81 + 24) = v79;
    v82 = v99;
    v83 = v103;
    v84 = v100;
    (*(v99 + 16))(v103, v78, v100);
    v85 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v86 = swift_allocObject();
    (*(v82 + 32))(v86 + v85, v83, v84);
    v87 = (v86 + ((v13 + v85 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v87 = sub_100173EDC;
    v87[1] = v81;

    v88 = v101;
    Promise.init(asyncOperation:)();
    v89 = *(v82 + 8);
    v89(v78, v84);
    v90 = Promise.operation.getter();
    v91 = swift_allocObject();
    *(v91 + 16) = 0;
    *(v91 + 24) = 0;
    v90(sub_100173F20, v91);

    v89(v88, v84);
    (*(v106 + 8))(v105, v107);
  }

  return sub_100005A40(v114);
}

uint64_t sub_100173398()
{
  v1 = v0[2];
  v2 = *(v1 + 128);
  v0[3] = v2;
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      v5 = *(v1 + 136);
      v6 = v0[1];

      return v6(v5);
    }

    else
    {
      sub_10017374C();
      swift_allocError();
      *v7 = 1;
      swift_willThrow();
      v8 = v0[1];

      return v8();
    }
  }

  else
  {

    v3 = swift_task_alloc();
    v0[4] = v3;
    v4 = sub_100140278(&qword_1008EB640);
    *v3 = v0;
    v3[1] = sub_10017352C;

    return Task.value.getter(v4, v2, &type metadata for () + 8, v4, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_10017352C()
{
  v2 = *v1;

  v3 = *(v2 + 16);
  if (v0)
  {

    v4 = sub_100173ED4;
  }

  else
  {
    v4 = sub_100173664;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100173664()
{

  v1 = *(v0 + 16);
  if (*(v1 + 128) >> 62 == 1)
  {
    v2 = *(v1 + 136);
    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    sub_10017374C();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

unint64_t sub_10017374C()
{
  result = qword_1008DD8B0;
  if (!qword_1008DD8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD8B0);
  }

  return result;
}

uint64_t sub_1001737A0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002BBC0;

  return sub_100170830(a1, v9, v10, v4, v5, v6, v7, v8);
}

uint64_t sub_100173894(void *a1)
{
  sub_100140278(&qword_1008DD8C8);
  v3 = *(v1 + 16);

  return sub_100170DE0(a1, v3);
}

uint64_t sub_100173920(void *a1)
{
  sub_100140278(&qword_1008DD8D0);

  return sub_10016FD04(a1);
}

uint64_t sub_100173A24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100173A6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_10016E16C(a1, v4, v5, v6);
}

uint64_t sub_100173B20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002BACC;

  return sub_10016E968(a1, v4, v5, v6, v7, v8);
}

uint64_t getEnumTagSinglePayload for SeymourWorkoutRecommendationDataProviderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SeymourWorkoutRecommendationDataProviderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100173D48()
{
  result = qword_1008DD908;
  if (!qword_1008DD908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD908);
  }

  return result;
}

uint64_t sub_100173D9C(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 56, 7);
}

uint64_t sub_100173E0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_100140278(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

char *sub_100173F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(type metadata accessor for WorkoutsListContentView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[OBJC_IVAR___CHWorkoutsListTableViewCell_workoutContentView] = v6;
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for WorkoutsListTableViewCell();
  v8 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a1, v7);

  v9 = *&v8[OBJC_IVAR___CHWorkoutsListTableViewCell_workoutContentView];
  v10 = v8;
  [v10 addSubview:v9];
  sub_100174070();

  return v10;
}

void sub_100174070()
{
  v1 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D5300;
  v3 = *&v0[OBJC_IVAR___CHWorkoutsListTableViewCell_workoutContentView];
  v4 = [v3 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v2 + 32) = v6;
  v7 = [v3 leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v2 + 40) = v9;
  v10 = [v3 trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v2 + 48) = v12;
  v13 = [v3 bottomAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v2 + 56) = v15;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:isa];
}

uint64_t sub_1001742D0(void *a1, void *a2, void *a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___CHWorkoutsListTableViewCell_workoutContentView);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = v10;
  v12 = *&v9[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout];
  *&v9[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout] = a1;
  v13 = a1;

  *&v9[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_achievementCount] = a4;
  v14 = *&v9[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager];
  *&v9[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager] = a3;
  v15 = a3;

  v9[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_diveDisplayStyle] = 1;
  v16 = *&v9[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workoutCellImageLabelView];
  v17 = *(v16 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout);
  *(v16 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout) = a1;

  v18 = *(v16 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext);
  *(v16 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext) = a2;
  v19 = a2;

  v20 = *(v16 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager);
  *(v16 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager) = a3;

  *(v16 + OBJC_IVAR___CHWorkoutCellImageLabelView_achievementCount) = a4;
  *(v16 + OBJC_IVAR___CHWorkoutCellImageLabelView_diveDisplayStyle) = 1;
  sub_100697158(sub_100175B8C, v11);
  sub_100698004();
  [v9 configureWithCurrentWorkout];
}

uint64_t sub_100174518(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + OBJC_IVAR___CHWorkoutsListTableViewCell_workoutContentView);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a5;
  v15[4] = a6;
  v16 = *&v13[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout];
  *&v13[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout] = a1;
  v17 = a1;

  sub_10000B210(a5);

  *&v13[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_achievementCount] = a4;
  v18 = *&v13[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager];
  *&v13[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager] = a3;
  v19 = a3;

  v13[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_diveDisplayStyle] = 1;
  v20 = *&v13[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workoutCellImageLabelView];
  v21 = *(v20 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout);
  *(v20 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout) = a1;

  v22 = *(v20 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext);
  *(v20 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext) = a2;
  v23 = a2;

  v24 = *(v20 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager);
  *(v20 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager) = a3;

  *(v20 + OBJC_IVAR___CHWorkoutCellImageLabelView_achievementCount) = a4;
  *(v20 + OBJC_IVAR___CHWorkoutCellImageLabelView_diveDisplayStyle) = 1;
  sub_100697158(sub_100175B38, v15);
  sub_100698004();
  [v13 configureWithCurrentWorkout];
}

uint64_t sub_1001747DC(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100175974;
  *(v5 + 24) = a1;
  v8[4] = sub_10007BD60;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1003579C0;
  v8[3] = &unk_100848890;
  v6 = _Block_copy(v8);

  [v4 performWithoutAnimation:v6];
  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      a2(result);
    }
  }

  return result;
}

void sub_100174944()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong invalidateIntrinsicContentSize];
  }
}

char *sub_100174AB8(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_achievementCount] = 0;
  v4[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_diveDisplayStyle] = 1;
  v9 = OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_insetContentView;
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v9] = v10;
  v11 = OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workoutCellImageLabelView;
  v12 = [objc_allocWithZone(type metadata accessor for WorkoutCellImageLabelView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_dateLabel;
  v14 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v13] = v14;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for WorkoutsListContentView();
  v15 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_insetContentView;
  v17 = *&v15[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_insetContentView];
  v18 = v15;
  v19 = v17;
  v20 = sub_1004313A0();
  [v19 setBackgroundColor:v20];

  v21 = [*&v15[v16] layer];
  [v21 setCornerRadius:sub_1004313CC()];

  [*&v15[v16] addSubview:*&v18[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workoutCellImageLabelView]];
  [*&v15[v16] addSubview:*&v18[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_dateLabel]];
  [v18 addSubview:*&v15[v16]];
  sub_100174D70();

  return v18;
}

void sub_100174D70()
{
  v1 = v0;
  swift_getObjectType();
  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D68B0;
  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_insetContentView];
  v4 = [v3 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:sub_1004313D0()];

  *(v2 + 32) = v6;
  v7 = [v3 leadingAnchor];
  v8 = [v0 leadingAnchor];
  sub_1004313D0();
  v10 = [v7 constraintEqualToAnchor:v8 constant:v9];

  *(v2 + 40) = v10;
  v11 = [v3 trailingAnchor];
  v12 = [v0 trailingAnchor];
  sub_1004313D0();
  v14 = [v11 constraintEqualToAnchor:v12 constant:-v13];

  *(v2 + 48) = v14;
  v15 = [v3 bottomAnchor];
  v16 = [v0 bottomAnchor];
  sub_1004313D0();
  v18 = [v15 constraintEqualToAnchor:v16 constant:-v17];

  *(v2 + 56) = v18;
  v19 = *&v1[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workoutCellImageLabelView];
  v20 = [v19 leadingAnchor];
  v21 = [v3 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:16.0];

  *(v2 + 64) = v22;
  v23 = [v19 topAnchor];
  v24 = [v3 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v2 + 72) = v25;
  v26 = [v19 bottomAnchor];
  v27 = [v3 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v2 + 80) = v28;
  v29 = [v19 trailingAnchor];
  v30 = [v3 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-16.0];

  *(v2 + 88) = v31;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D68C0;
  v33 = *&v1[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_dateLabel];
  v34 = [v33 leadingAnchor];
  v35 = [v3 leadingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:16.0];

  *(inited + 32) = v36;
  v37 = [v33 topAnchor];
  v38 = OBJC_IVAR___CHWorkoutCellImageLabelView_goalLabel;
  v39 = [*&v19[OBJC_IVAR___CHWorkoutCellImageLabelView_goalLabel] lastBaselineAnchor];
  v40 = [v37 constraintGreaterThanOrEqualToAnchor:v39 constant:10.0];

  *(inited + 40) = v40;
  v41 = [v33 lastBaselineAnchor];
  v42 = [*&v19[OBJC_IVAR___CHWorkoutCellImageLabelView_badgeCountLabel] lastBaselineAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(inited + 48) = v43;
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_1006D68D0;
  v45 = [v33 trailingAnchor];
  v46 = [v3 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:-16.0];

  *(v44 + 32) = v47;
  v48 = [v33 lastBaselineAnchor];
  v49 = [*&v19[v38] lastBaselineAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v44 + 40) = v50;
  v51 = [objc_opt_self() sharedApplication];
  v52 = [v51 preferredContentSizeCategory];

  LOBYTE(v51) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v51)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    v53 = inited;
  }

  else
  {

    v53 = v44;
  }

  sub_10019EF10(v53);
  v54 = objc_opt_self();
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v54 activateConstraints:isa];
}

void sub_10017548C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager);
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      v5 = [v3 formattedDateForWorkout:v4 context:@"WorkoutsListDisplayContext"];
      v6 = [v5 string];

      if (!v6)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = String._bridgeToObjectiveC()();
      }

      sub_100140278(&unk_1008E7FB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1006D1F70;
      *(inited + 32) = NSFontAttributeName;
      v8 = objc_opt_self();
      v9 = NSFontAttributeName;
      v10 = [v8 preferredFontForTextStyle:UIFontTextStyleFootnote];
      v11 = sub_1000059F8(0, &qword_1008F73C0);
      *(inited + 40) = v10;
      *(inited + 64) = v11;
      *(inited + 72) = NSForegroundColorAttributeName;
      v12 = objc_opt_self();
      v13 = NSForegroundColorAttributeName;
      v14 = [v12 secondaryLabelColor];
      *(inited + 104) = sub_1000059F8(0, &qword_1008E7FC0);
      *(inited + 80) = v14;
      sub_1004C9200(inited);
      swift_setDeallocating();
      sub_100140278(&unk_1008EE730);
      swift_arrayDestroy();
      v15 = objc_allocWithZone(NSAttributedString);
      type metadata accessor for Key(0);
      sub_10017597C();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v17 = [v15 initWithString:v6 attributes:isa];

      [*(v0 + OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_dateLabel) setAttributedText:v17];
    }
  }
}

void sub_10017577C()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workoutCellImageLabelView);
  [*(v1 + OBJC_IVAR___CHWorkoutCellImageLabelView_workoutImageView) setImage:0];
  [*(v1 + OBJC_IVAR___CHWorkoutCellImageLabelView_workoutIconView) setImage:0];
  *(v1 + OBJC_IVAR___CHWorkoutCellImageLabelView_achievementCount) = 0;
  [*(v1 + OBJC_IVAR___CHWorkoutCellImageLabelView_separatorView) setHidden:1];
  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_insetContentView);
  v3 = sub_1004313A0();
  [v2 setBackgroundColor:v3];
}

id sub_100175880(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10017597C()
{
  result = qword_1008E7FD0;
  if (!qword_1008E7FD0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7FD0);
  }

  return result;
}

void sub_1001759D4()
{
  *(v0 + OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_achievementCount) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_diveDisplayStyle) = 1;
  v1 = OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_insetContentView;
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workoutCellImageLabelView;
  v4 = [objc_allocWithZone(type metadata accessor for WorkoutCellImageLabelView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_dateLabel;
  v6 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v5) = v6;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100175B44()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100175B90@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = type metadata accessor for URLComponents();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v36 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URLQueryItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v33 - v9;
  __chkstk_darwin(v11);
  v13 = v33 - v12;
  __chkstk_darwin(v14);
  v16 = v33 - v15;
  v17 = sub_100140278(&unk_1008EAF30);
  __chkstk_darwin(v17 - 8);
  v19 = v33 - v18;
  URLComponents.init(string:)();
  v41 = v16;
  URLQueryItem.init(name:value:)();
  v40 = v13;
  URLQueryItem.init(name:value:)();
  v39 = v10;
  URLQueryItem.init(name:value:)();
  v38 = v7;
  URLQueryItem.init(name:value:)();
  v20 = *(v2 + 48);
  if (!v20(v19, 1, v1))
  {
    sub_100140278(&unk_1008EAF40);
    v21 = v4;
    v22 = *(v5 + 72);
    v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v24 = swift_allocObject();
    v33[1] = v24;
    v34 = v2;
    *(v24 + 16) = xmmword_1006D6950;
    v25 = v24 + v23;
    v35 = v1;
    v26 = *(v5 + 16);
    v26(v25, v41, v21);
    v26(v25 + v22, v40, v21);
    v26(v25 + 2 * v22, v39, v21);
    v27 = 3 * v22;
    v4 = v21;
    v26(v25 + v27, v38, v21);
    v2 = v34;
    v1 = v35;
    URLComponents.queryItems.setter();
  }

  if (v20(v19, 1, v1))
  {
    v28 = *(v5 + 8);
    v28(v38, v4);
    v28(v39, v4);
    v28(v40, v4);
    v28(v41, v4);
    v29 = type metadata accessor for URL();
    (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  }

  else
  {
    v30 = v36;
    (*(v2 + 16))(v36, v19, v1);
    URLComponents.url.getter();
    (*(v2 + 8))(v30, v1);
    v31 = *(v5 + 8);
    v31(v38, v4);
    v31(v39, v4);
    v31(v40, v4);
    v31(v41, v4);
  }

  return sub_1001760E8(v19);
}

uint64_t sub_1001760E8(uint64_t a1)
{
  v2 = sub_100140278(&unk_1008EAF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100176150(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100176164(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 43))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1001761C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100176234(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100176290(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10017630C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100140278(&qword_1008DDA38);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = sub_100140278(&qword_1008DDA40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v17)
    {
      v13 = v18;

      v17 = v13;
      v14 = swift_allocObject();
      *(v14 + 16) = a1;
      *(v14 + 24) = a2;

      sub_100140278(&qword_1008DDA98);
      sub_100140278(&qword_1008DDA58);
      v16 = a3;
      sub_10014A6B0(&qword_1008DDAA0, &qword_1008DDA98);
      sub_100176DE0();
      sub_100177058(&qword_1008DDAA8, type metadata accessor for ActivitySharingFriendListDateItemGroup);
      ForEach<>.init(_:content:)();
      (*(v10 + 16))(v8, v12, v9);
      swift_storeEnumTagMultiPayload();
      sub_100176D5C();
      _ConditionalContent<>.init(storage:)();
      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_100176D5C();
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    type metadata accessor for ActivitySharingFriendListDataProvider();
    sub_100177058(&qword_1008DC038, type metadata accessor for ActivitySharingFriendListDataProvider);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001766B0(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DDA68);
  v3 = __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = objc_opt_self();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v10 = [v8 stringWithEitherTodayOrLongStyleDateFromDate:isa];

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v14 = sub_100140278(&qword_1008DDAB0);
  sub_100176ADC(v11, v13, &v7[*(v14 + 44)]);

  v15 = static Edge.Set.all.getter();
  v16 = &v7[*(v2 + 36)];
  *v16 = v15;
  *(v16 + 8) = xmmword_1006D69F0;
  *(v16 + 24) = xmmword_1006D4690;
  v16[40] = 0;
  v17 = sub_10001B104(v7, v5, &qword_1008DDA68);
  __chkstk_darwin(v17);
  *(&v19 - 2) = a1;
  sub_100140278(&qword_1008DDA88);
  sub_100176E78();
  sub_100176F30();
  Section<>.init(header:content:)();
  return sub_10000EA04(v7, &qword_1008DDA68);
}

uint64_t sub_1001768F4()
{
  type metadata accessor for ActivitySharingFriendListDateItemGroup();

  sub_100140278(&qword_1008DDAB8);
  type metadata accessor for UUID();
  type metadata accessor for ActivitySharingFriendListItemView();
  sub_10014A6B0(&qword_1008DDAC0, &qword_1008DDAB8);
  sub_100177058(&qword_1008DDA90, type metadata accessor for ActivitySharingFriendListItemView);
  sub_100177058(&qword_1008DDAC8, type metadata accessor for ActivitySharingFriendListItem);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100176A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100176FF4(a1, a2);
  v3 = (a2 + *(type metadata accessor for ActivitySharingFriendListItemView() + 20));
  type metadata accessor for ActivitySharingNavigationCoordinator();
  sub_100177058(&qword_1008DC018, type metadata accessor for ActivitySharingNavigationCoordinator);
  result = EnvironmentObject.init()();
  *v3 = result;
  v3[1] = v5;
  return result;
}

uint64_t sub_100176ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_100140278(&qword_1008DDAD0);
  v6 = v5 - 8;
  v7 = __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v32 = a1;
  v33 = a2;
  sub_10000FCBC();

  v29 = Text.init<A>(_:)();
  v30 = v12;
  v14 = v13;
  v16 = v15;
  v17 = &v11[*(sub_100140278(&qword_1008DDAD8) + 36)];
  v18 = *(sub_100140278(&qword_1008DDAE0) + 28);
  v19 = enum case for Text.Case.uppercase(_:);
  v20 = type metadata accessor for Text.Case();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v17 + v18, v19, v20);
  (*(v21 + 56))(v17 + v18, 0, 1, v20);
  *v17 = swift_getKeyPath();
  *v11 = v29;
  *(v11 + 1) = v14;
  v11[16] = v16 & 1;
  *(v11 + 3) = v30;
  v22 = static Color.gray.getter();
  KeyPath = swift_getKeyPath();
  v24 = &v11[*(v6 + 44)];
  *v24 = KeyPath;
  v24[1] = v22;
  sub_10001B104(v11, v9, &qword_1008DDAD0);
  v25 = v31;
  sub_10001B104(v9, v31, &qword_1008DDAD0);
  v26 = v25 + *(sub_100140278(&qword_1008DDAE8) + 48);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_10000EA04(v11, &qword_1008DDAD0);
  return sub_10000EA04(v9, &qword_1008DDAD0);
}

unint64_t sub_100176D5C()
{
  result = qword_1008DDA48;
  if (!qword_1008DDA48)
  {
    sub_100141EEC(&qword_1008DDA40);
    sub_100176DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDA48);
  }

  return result;
}

unint64_t sub_100176DE0()
{
  result = qword_1008DDA50;
  if (!qword_1008DDA50)
  {
    sub_100141EEC(&qword_1008DDA58);
    sub_100176E78();
    sub_100176F30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDA50);
  }

  return result;
}

unint64_t sub_100176E78()
{
  result = qword_1008DDA60;
  if (!qword_1008DDA60)
  {
    sub_100141EEC(&qword_1008DDA68);
    sub_10014A6B0(&qword_1008DDA70, &qword_1008DDA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDA60);
  }

  return result;
}

unint64_t sub_100176F30()
{
  result = qword_1008DDA80;
  if (!qword_1008DDA80)
  {
    sub_100141EEC(&qword_1008DDA88);
    sub_100177058(&qword_1008DDA90, type metadata accessor for ActivitySharingFriendListItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDA80);
  }

  return result;
}

uint64_t sub_100176FF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingFriendListItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100177058(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001770A0()
{
  result = qword_1008DDAF0;
  if (!qword_1008DDAF0)
  {
    sub_100141EEC(&qword_1008DDAF8);
    sub_100176D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDAF0);
  }

  return result;
}

uint64_t sub_10017712C()
{
  v0 = sub_100140278(&qword_1008DDBA0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_100140278(&qword_1008DDBA8);
  __chkstk_darwin(v4);
  v5 = sub_100140278(&qword_1008DDB98);
  sub_100163368(v5, qword_100924FB0);
  sub_10001AC90(v5, qword_100924FB0);
  sub_100177EC8();
  EnumURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x80000001007490A0;
  v6._countAndFlagsBits = 0xD000000000000016;
  EnumURLRepresentation.StringInterpolation.appendLiteral(_:)(v6);
  (*(v1 + 104))(v3, enum case for EnumURLRepresentation.StringInterpolation.Token.rawValue<A>(_:), v0);
  EnumURLRepresentation.StringInterpolation.appendInterpolation(_:)();
  (*(v1 + 8))(v3, v0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  EnumURLRepresentation.StringInterpolation.appendLiteral(_:)(v7);
  return EnumURLRepresentation.init(stringInterpolation:)();
}

uint64_t sub_100177328()
{
  v0 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v5, qword_100924FC8);
  sub_10001AC90(v5, qword_100924FC8);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100177494()
{
  v0 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v0 - 8);
  v31 = &v26 - v1;
  v2 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  sub_100140278(&qword_1008DDB80);
  v7 = sub_100140278(&qword_1008DDB88);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v32 = 4 * v8;
  v10 = swift_allocObject();
  v33 = v10;
  *(v10 + 16) = xmmword_1006D6BC0;
  v11 = v10 + v9;
  *(v10 + v9) = 0;
  LocalizedStringResource.init(stringLiteral:)();
  v12 = *(v6 + 56);
  v35 = v6 + 56;
  v38 = v12;
  v13 = v5;
  v12(v4, 1, 1, v5);
  v39 = type metadata accessor for DisplayRepresentation.Image();
  v14 = *(v39 - 8);
  v34 = *(v14 + 56);
  v37 = v14 + 56;
  v15 = v31;
  v34(v31, 1, 1, v39);
  DisplayRepresentation.init(title:subtitle:image:)();
  v28 = v7;
  v29 = v8;
  v16 = v11;
  v36 = v11;
  v27 = *(v7 + 48);
  *(v11 + v8) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  v38(v4, 1, 1, v5);
  v17 = v34;
  v34(v15, 1, 1, v39);
  DisplayRepresentation.init(title:subtitle:image:)();
  v27 = *(v7 + 48);
  *(v16 + 2 * v8) = 2;
  LocalizedStringResource.init(stringLiteral:)();
  v30 = v5;
  v18 = v38;
  v38(v4, 1, 1, v5);
  v19 = v39;
  v17(v15, 1, 1, v39);
  DisplayRepresentation.init(title:subtitle:image:)();
  v20 = v36;
  v21 = (v36 + 2 * v8 + v29);
  v29 = *(v28 + 48);
  *v21 = 3;
  LocalizedStringResource.init(stringLiteral:)();
  v18(v4, 1, 1, v13);
  v22 = v19;
  v23 = v34;
  v34(v15, 1, 1, v22);
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v20 + v32) = 4;
  LocalizedStringResource.init(stringLiteral:)();
  v18(v4, 1, 1, v30);
  v23(v15, 1, 1, v39);
  DisplayRepresentation.init(title:subtitle:image:)();
  v24 = sub_1004C9BA8(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100924FE0 = v24;
  return result;
}

unint64_t sub_100177A18()
{
  result = qword_1008DDB00;
  if (!qword_1008DDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDB00);
  }

  return result;
}

Swift::Int sub_100177A6C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100177B48()
{
  String.hash(into:)();
}

Swift::Int sub_100177C10()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100177CE8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001785BC(*a1);
  *a2 = result;
  return result;
}

void sub_100177D18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  v5 = 0xE600000000000000;
  v6 = 0x68746C616568;
  v7 = 0xED0000736E6F6974;
  v8 = 0x6163696669746F6ELL;
  if (v2 != 3)
  {
    v8 = 0x7374696E75;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x736C616F67;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100177DB4()
{
  result = qword_1008DDB08;
  if (!qword_1008DDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDB08);
  }

  return result;
}

unint64_t sub_100177E0C()
{
  result = qword_1008DDB10;
  if (!qword_1008DDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDB10);
  }

  return result;
}

unint64_t sub_100177E64()
{
  result = qword_1008DDB18;
  if (!qword_1008DDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDB18);
  }

  return result;
}

unint64_t sub_100177EC8()
{
  result = qword_1008DDB20;
  if (!qword_1008DDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDB20);
  }

  return result;
}

unint64_t sub_100177F20()
{
  result = qword_1008DDB28;
  if (!qword_1008DDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDB28);
  }

  return result;
}

uint64_t sub_100177F74@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA528 != -1)
  {
    swift_once();
  }

  v2 = sub_100140278(&qword_1008DDB98);
  v3 = sub_10001AC90(v2, qword_100924FB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10017802C()
{
  result = qword_1008DDB30;
  if (!qword_1008DDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDB30);
  }

  return result;
}

unint64_t sub_100178080()
{
  result = qword_1008DDB38;
  if (!qword_1008DDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDB38);
  }

  return result;
}

unint64_t sub_1001780D4()
{
  result = qword_1008DDB40;
  if (!qword_1008DDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDB40);
  }

  return result;
}

unint64_t sub_10017812C()
{
  result = qword_1008DDB48;
  if (!qword_1008DDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDB48);
  }

  return result;
}

uint64_t sub_100178180()
{
  sub_100178568();
  v1 = URLRepresentableEnum.urlRepresentationParameter.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001781EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA530 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10001AC90(v2, qword_100924FC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001782E4(uint64_t a1)
{
  v2 = sub_100177EC8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100178334()
{
  result = qword_1008DDB50;
  if (!qword_1008DDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDB50);
  }

  return result;
}

unint64_t sub_10017838C()
{
  result = qword_1008DDB58;
  if (!qword_1008DDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDB58);
  }

  return result;
}

unint64_t sub_1001783E4()
{
  result = qword_1008DDB60;
  if (!qword_1008DDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDB60);
  }

  return result;
}

uint64_t sub_100178438()
{
  if (qword_1008DA538 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100178494(uint64_t a1)
{
  v2 = sub_10017812C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001784E4()
{
  result = qword_1008DDB68;
  if (!qword_1008DDB68)
  {
    sub_100141EEC(&qword_1008DDB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDB68);
  }

  return result;
}

unint64_t sub_100178568()
{
  result = qword_1008DDB90;
  if (!qword_1008DDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DDB90);
  }

  return result;
}

unint64_t sub_1001785BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100841D08, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100178610(uint64_t a1, int a2)
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

uint64_t sub_100178658(uint64_t result, int a2, int a3)
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

uint64_t sub_1001786D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a3 = static HorizontalAlignment.leading.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v10 = sub_100140278(&qword_1008DDBC0);
  sub_1001788C4(a2, (a3 + *(v10 + 44)));
  v11 = *a2;
  v12 = *(a2 + 16);
  v20 = *(a2 + 32);
  v21 = v11;
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v15 = *(a2 + 16);
  *(v14 + 1) = *a2;
  *(v14 + 2) = v15;
  *(v14 + 3) = *(a2 + 32);
  (*(v7 + 32))(&v14[v13], v9, v6);
  v16 = (a3 + *(sub_100140278(&qword_1008DDBC8) + 36));
  type metadata accessor for _TaskModifier();
  sub_10001B104(&v21, v19, &qword_1008DDBB0);
  v17 = v12;
  sub_10001B104(&v20, v19, &qword_1008DDBB8);
  result = static TaskPriority.userInitiated.getter();
  *v16 = &unk_1006D6FE8;
  v16[1] = v14;
  return result;
}

uint64_t sub_1001788C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v162 = a1;
  v161 = a2;
  v173 = sub_100140278(&qword_1008DDBD0);
  v172 = *(v173 - 1);
  __chkstk_darwin(v173);
  v150 = &v146 - v2;
  v147 = type metadata accessor for WorkoutDetailChartView();
  v3 = __chkstk_darwin(v147);
  v149 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v148 = &v146 - v5;
  v6 = sub_100140278(&qword_1008DD250);
  __chkstk_darwin(v6 - 8);
  v160 = &v146 - v7;
  v171 = type metadata accessor for WorkoutChartViewModel(0);
  v170 = *(v171 - 1);
  __chkstk_darwin(v171);
  v153 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008DDBD8);
  v10 = __chkstk_darwin(v9 - 8);
  v168 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v176 = &v146 - v12;
  v177 = type metadata accessor for Divider();
  v178 = *(v177 - 8);
  v13 = __chkstk_darwin(v177);
  v146 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v169 = &v146 - v16;
  __chkstk_darwin(v15);
  v175 = &v146 - v17;
  v18 = type metadata accessor for AttributedString();
  __chkstk_darwin(v18 - 8);
  v159 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for DynamicTypeSize();
  v20 = *(v158 - 8);
  __chkstk_darwin(v158);
  v157 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_100140278(&qword_1008DDBE0);
  v166 = *(v167 - 8);
  v22 = __chkstk_darwin(v167);
  v165 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v164 = &v146 - v25;
  v26 = __chkstk_darwin(v24);
  v174 = &v146 - v27;
  __chkstk_darwin(v26);
  v29 = &v146 - v28;
  v151 = objc_opt_self();
  v30 = [v151 mainBundle];
  v31 = String._bridgeToObjectiveC()();
  v32 = [v30 localizedStringForKey:v31 value:0 table:0];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v188 = v33;
  v189 = v35;
  v152 = sub_10000FCBC();
  v36 = Text.init<A>(_:)();
  v38 = v37;
  v188 = v36;
  v189 = v37;
  LOBYTE(v35) = v39 & 1;
  LOBYTE(v190) = v39 & 1;
  v191 = v40;
  LODWORD(v156) = enum case for DynamicTypeSize.large(_:);
  v155 = *(v20 + 104);
  v41 = v157;
  v42 = v158;
  v155(v157);
  v163 = v29;
  View.dynamicTypeSize(_:)();
  v43 = v20 + 8;
  v44 = *(v20 + 8);
  v154 = v43;
  v44(v41, v42);
  sub_10004642C(v36, v38, v35);

  v45 = *(v162 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  AttributedString.init(_:)();
  v46 = Text.init(_:)();
  v48 = v47;
  v188 = v46;
  v189 = v47;
  LOBYTE(v35) = v49 & 1;
  LOBYTE(v190) = v49 & 1;
  v191 = v50;
  (v155)(v41, v156, v42);
  View.dynamicTypeSize(_:)();
  v44(v41, v42);
  sub_10004642C(v46, v48, v35);

  Divider.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  v51 = v160;
  static Published.subscript.getter();

  if ((*(v170 + 6))(v51, 1, v171) == 1)
  {
    sub_10000EA04(v51, &qword_1008DD250);
  }

  else
  {
    v52 = v51;
    v53 = v153;
    sub_10017A92C(v52, v153);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v54 = v188;
    if (v188)
    {
      v170 = type metadata accessor for WorkoutChartViewModel;
      v55 = v148;
      sub_10017A990(v53, v148, type metadata accessor for WorkoutChartViewModel);
      *(v55 + *(v147 + 20)) = v54;
      v56 = v169;
      Divider.init()();
      v57 = v149;
      sub_10017A990(v55, v149, type metadata accessor for WorkoutDetailChartView);
      v58 = v178;
      v59 = *(v178 + 16);
      v171 = v45;
      v60 = v146;
      v61 = v177;
      v59(v146, v56, v177);
      v62 = v150;
      sub_10017A990(v57, v150, type metadata accessor for WorkoutDetailChartView);
      v63 = sub_100140278(&qword_1008DDBF8);
      v59((v62 + *(v63 + 48)), v60, v61);
      v64 = *(v58 + 8);
      v64(v56, v61);
      sub_10017A9F8(v55, type metadata accessor for WorkoutDetailChartView);
      sub_10017A9F8(v153, v170);
      v65 = v60;
      v45 = v171;
      v64(v65, v61);
      sub_10017A9F8(v57, type metadata accessor for WorkoutDetailChartView);
      sub_10017AA58(v62, v176);
      v66 = 0;
      goto LABEL_7;
    }

    sub_10017A9F8(v53, type metadata accessor for WorkoutChartViewModel);
  }

  v66 = 1;
LABEL_7:
  (v172)[7](v176, v66, 1, v173);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v67 = v188;
  if (v188)
  {
    v68 = v162;
    if (!*(v188 + 16) || (v69 = COERCE_DOUBLE(sub_100611A70()), (v70 & 1) != 0) || v69 <= 0.0)
    {

      v173 = 0;
      v172 = 0;
      v171 = 0;
      v170 = 0;
      v160 = 0;
    }

    else
    {
      sub_10061FE30(v67, [v45[8] fitnessUIFormattingManager], &v188);
      v71 = v189;
      v72 = v190;
      v73 = v192;
      v170 = v191;
      v193 = v191;
      v173 = v188;

      v172 = v71;
      v74 = v71;
      v171 = v72;
      v75 = v72;
      sub_10001B104(&v193, &v184, &qword_1008DDBF0);
      v160 = v73;
      v76 = v73;
    }
  }

  else
  {
    v173 = 0;
    v172 = 0;
    v171 = 0;
    v170 = 0;
    v160 = 0;
    v68 = v162;
  }

  v184 = *(v68 + 32);
  sub_100140278(&qword_1008DDBB8);
  State.wrappedValue.getter();
  if (v179 == 1)
  {
    v77 = [v151 mainBundle];
    v78 = String._bridgeToObjectiveC()();
    v79 = [v77 localizedStringForKey:v78 value:0 table:0];

    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;

    *&v184 = v80;
    *(&v184 + 1) = v82;
    v83 = Text.init<A>(_:)();
    v85 = v84;
    LOBYTE(v79) = v86;
    static Font.footnote.getter();
    v87 = Text.font(_:)();
    v89 = v88;
    v91 = v90;

    sub_10004642C(v83, v85, v79 & 1);

    LODWORD(v184) = static HierarchicalShapeStyle.secondary.getter();
    v92 = Text.foregroundStyle<A>(_:)();
    v94 = v93;
    LOBYTE(v79) = v95;
    v97 = v96;
    sub_10004642C(v87, v89, v91 & 1);

    v179 = v92;
    v180 = v94;
    v181 = v79 & 1;
    v182 = v97;
    v183 = 0;
LABEL_19:
    _ConditionalContent<>.init(storage:)();
    v162 = *(&v184 + 1);
    v158 = v184;
    v157 = v185;
    v156 = v186;
    LODWORD(v159) = v187;
    sub_10017A7AC(v184, *(&v184 + 1), v185);
    goto LABEL_20;
  }

  if ((*(v68 + 24) & 1) == 0)
  {
    v98 = [v151 mainBundle];
    v99 = String._bridgeToObjectiveC()();
    v100 = [v98 localizedStringForKey:v99 value:0 table:0];

    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    *&v184 = v101;
    *(&v184 + 1) = v103;
    v104 = Text.init<A>(_:)();
    v106 = v105;
    LOBYTE(v100) = v107;
    static Font.footnote.getter();
    v108 = Text.font(_:)();
    v110 = v109;
    v112 = v111;

    sub_10004642C(v104, v106, v100 & 1);

    LODWORD(v184) = static HierarchicalShapeStyle.secondary.getter();
    v113 = Text.foregroundStyle<A>(_:)();
    v115 = v114;
    LOBYTE(v100) = v116;
    v118 = v117;
    sub_10004642C(v108, v110, v112 & 1);

    v179 = v113;
    v180 = v115;
    v181 = v100 & 1;
    v182 = v118;
    v183 = 1;
    goto LABEL_19;
  }

  v158 = 0;
  v162 = 0;
  v157 = 0;
  v156 = 0;
  LODWORD(v159) = 255;
LABEL_20:
  v119 = *(v166 + 16);
  v120 = v164;
  v121 = v167;
  v119(v164, v163, v167);
  v122 = v165;
  v119(v165, v174, v121);
  v155 = *(v178 + 16);
  v123 = v169;
  v124 = v177;
  (v155)(v169, v175, v177);
  v125 = v168;
  sub_10001B104(v176, v168, &qword_1008DDBD8);
  LOBYTE(v184) = 1;
  v126 = v161;
  v119(v161, v120, v121);
  v127 = sub_100140278(&qword_1008DDBE8);
  v119(&v126[v127[12]], v122, v121);
  (v155)(&v126[v127[16]], v123, v124);
  sub_10001B104(v125, &v126[v127[20]], &qword_1008DDBD8);
  v128 = &v126[v127[24]];
  v129 = v173;
  *v128 = v173;
  v130 = v172;
  v131 = v171;
  *(v128 + 1) = v172;
  *(v128 + 2) = v131;
  v132 = v170;
  v133 = v160;
  *(v128 + 3) = v170;
  *(v128 + 4) = v133;
  v134 = &v126[v127[28]];
  v135 = v158;
  v136 = v162;
  *v134 = v158;
  *(v134 + 1) = v136;
  LOBYTE(v121) = v157;
  v137 = v156;
  *(v134 + 2) = v157;
  *(v134 + 3) = v137;
  v138 = v159;
  v134[32] = v159;
  v155 = &v126[v127[32]];
  LODWORD(v161) = v184;
  v139 = v129;
  v173 = v129;
  v140 = v130;
  v172 = v130;
  v171 = v131;
  v170 = v132;
  sub_10017A7E8(v129, v130, v131, v132, v133);
  sub_10017A854(v135, v136, v121, v137, v138);
  sub_10017A86C(v139, v140, v131, v132, v133);
  sub_10017A8D8(v135, v136, v121, v137, v138);
  v141 = v155;
  *v155 = 0;
  *(v141 + 8) = v161;
  sub_10000EA04(v176, &qword_1008DDBD8);
  v142 = *(v178 + 8);
  v178 += 8;
  v142(v175, v177);
  v143 = *(v166 + 8);
  v144 = v167;
  v143(v174, v167);
  v143(v163, v144);
  sub_10017A8D8(v135, v136, v121, v137, v138);
  sub_10017A86C(v173, v172, v171, v170, v133);
  sub_10000EA04(v168, &qword_1008DDBD8);
  v142(v169, v177);
  v143(v165, v144);
  return (v143)(v164, v144);
}

uint64_t sub_100179C48(_OWORD *a1, uint64_t a2)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  *(v2 + 152) = type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  *(v2 + 48) = *a1;
  v5 = *(v2 + 56);
  *(v2 + 160) = v4;
  *(v2 + 168) = v5;

  return _swift_task_switch(sub_100179CD4, 0, 0);
}