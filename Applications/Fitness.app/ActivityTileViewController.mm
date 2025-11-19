@interface ActivityTileViewController
- (CHAwardsDataProvider)awardsDataProviderWrapper;
- (_TtC10FitnessApp26ActivityTileViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC10FitnessApp26ActivityTileViewController)initWithStyle:(int64_t)a3;
- (_TtP10FitnessApp34ActivityTileViewControllerDelegate_)delegate;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)navigateToTrophyCaseAnimated:(BOOL)a3 initialAchievement:(id)a4 shouldShowCelebration:(BOOL)a5 forModalPresentation:(BOOL)a6;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (id)showActivityOnDate:(id)a3 shareImmediately:(BOOL)a4 animated:(BOOL)a5 forGoalCompleteNotification:(BOOL)a6 goalRecommendation:(id)a7;
- (id)showTodayAndShareImmediately:(BOOL)a3 animated:(BOOL)a4 forGoalCompleteNotification:(BOOL)a5 goalRecommendation:(id)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)navigateToHistoryAnimated:(BOOL)a3;
- (void)navigateToMindfulnessHistoryAnimated:(BOOL)a3;
- (void)navigateToTrophyCaseSection:(id)a3 withAchievementID:(id)a4 animated:(BOOL)a5;
- (void)navigateToWorkoutHistoryWithActivityType:(id)a3 animated:(BOOL)a4;
- (void)presentAppSettingsShowingPane:(int64_t)a3;
- (void)presentWorkoutConfigurationWithData:(id)a3;
- (void)ringCelebrationDidBegin;
- (void)scrollToTop;
- (void)scrollViewDidScroll:(id)a3;
- (void)showAllTrendsAnimated:(BOOL)a3;
- (void)showMindfulnessSessionWithUUID:(id)a3;
- (void)showTrendWithIdentifier:(int64_t)a3 animated:(BOOL)a4;
- (void)showWorkoutWithId:(id)a3 activityId:(id)a4 page:(id)a5;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)trophyCaseDidBeginCelebration:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ActivityTileViewController

- (_TtP10FitnessApp34ActivityTileViewControllerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CHAwardsDataProvider)awardsDataProviderWrapper
{
  sub_100007C5C(self + OBJC_IVAR____TtC10FitnessApp26ActivityTileViewController_awardsDataProvider, v7);
  v2 = type metadata accessor for CHAwardsDataProvider();
  v3 = objc_allocWithZone(v2);
  sub_100007C5C(v7, v3 + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = [(ActivityTileViewController *)&v6 init];
  sub_100005A40(v7);

  return v4;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1002701B0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100272D14(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100272FC8(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1002731D0(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ActivityTileViewController();
  v4 = v7.receiver;
  [(ActivityTileViewController *)&v7 viewDidDisappear:v3];
  sub_100281448(&qword_1008E4EF0, v5, type metadata accessor for ActivityTileViewController);
  sub_100281448(&qword_1008E4EF8, v6, type metadata accessor for ActivityTileViewController);
  MetricResignActiveObserving<>.removeResignActiveObserver()();
}

- (void)scrollToTop
{
  v2 = self;
  sub_1002734D0();
}

- (_TtC10FitnessApp26ActivityTileViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp26ActivityTileViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_100281AAC(a4);

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_100273E6C(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10027645C(v6, a4);

  return v8;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  if ([v5 numberOfRowsInSection:a4] <= 0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = UITableViewAutomaticDimension;
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_100281F58();

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = IndexPath.section.getter();
  v16 = sub_100145D40(v15);
  if (v16 != 6 && (v17 = v16, swift_getObjectType(), (v18 = swift_conformsToProtocol2()) != 0) && v13)
  {
    v19 = v18;
    v20 = v13;
    sub_1004F8AB4(v20, v19, v17, v11, v12);

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = IndexPath.section.getter();
  if (sub_100145D40(v15) != 6 && (swift_getObjectType(), swift_conformsToProtocol2()) && v13)
  {
    v16 = v13;
    sub_1004F956C(v11);

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v5 = a3;
  v4 = self;
  [v5 bounds];
  sub_1004F941C();
  ImpressionsCalculator.viewBounds.setter();
}

- (void)presentAppSettingsShowingPane:(int64_t)a3
{
  v4 = self;
  sub_100278730(a3);
}

- (void)presentWorkoutConfigurationWithData:(id)a3
{
  v3 = a3;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = [objc_opt_self() sharedInstance];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[4] = sub_100278A60;
  v10[5] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1004DCFFC;
  v10[3] = &unk_10084F040;
  v9 = _Block_copy(v10);
  [v7 presentWorkoutConfigurationData:isa completion:v9];
  sub_10000AF88(v4, v6);
  _Block_release(v9);
}

- (id)showTodayAndShareImmediately:(BOOL)a3 animated:(BOOL)a4 forGoalCompleteNotification:(BOOL)a5 goalRecommendation:(id)a6
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v11 = objc_allocWithZone(NSDate);
  v12 = a6;
  v13 = self;
  v14 = [v11 init];
  if (v12)
  {
    [v12 doubleValue];
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_100278DCC(v14, v9, v8, v7, v16, v12 == 0);

  return v17;
}

- (id)showActivityOnDate:(id)a3 shareImmediately:(BOOL)a4 animated:(BOOL)a5 forGoalCompleteNotification:(BOOL)a6 goalRecommendation:(id)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = a3;
  if (a7)
  {
    v13 = a7;
    v14 = self;
    [v13 doubleValue];
    v16 = v15;
  }

  else
  {
    v17 = self;
    v16 = 0;
  }

  v18 = sub_100278DCC(v12, v10, v9, v8, v16, a7 == 0);

  return v18;
}

- (void)navigateToWorkoutHistoryWithActivityType:(id)a3 animated:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  sub_10027AF00(a3, a4);
}

- (void)showWorkoutWithId:(id)a3 activityId:(id)a4 page:(id)a5
{
  v8 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v12 + 56))(v10, v15, 1, v11);
  if (a5)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = self;
  sub_10027BC18(v14, v10, v16, a5);

  sub_10000EA04(v10, &unk_1008DB8A0);
  (*(v12 + 8))(v14, v11);
}

- (void)showMindfulnessSessionWithUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10027CAAC(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)navigateToHistoryAnimated:(BOOL)a3
{
  v4 = self;
  sub_10027D52C(a3);
}

- (void)navigateToMindfulnessHistoryAnimated:(BOOL)a3
{
  v4 = self;
  sub_10027E160(a3);
}

- (void)showAllTrendsAnimated:(BOOL)a3
{
  v4 = self;
  sub_10027EDA0(a3);
}

- (void)showTrendWithIdentifier:(int64_t)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_10027F37C(a3, a4);
}

- (id)navigateToTrophyCaseAnimated:(BOOL)a3 initialAchievement:(id)a4 shouldShowCelebration:(BOOL)a5 forModalPresentation:(BOOL)a6
{
  v11 = a4;
  v12 = self;
  sub_10027F9E8(a3, a4, a5, a6);
  v14 = v13;

  return v14;
}

- (void)navigateToTrophyCaseSection:(id)a3 withAchievementID:(id)a4 animated:(BOOL)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (a4)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = self;
  sub_100282094(v7, v9, v10, a4);
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = self;
  v14 = sub_100282720(a4, v11, v12);

  return v14;
}

- (void)ringCelebrationDidBegin
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong celebrationDidBegin];

    swift_unknownObjectRelease();
  }
}

- (void)trophyCaseDidBeginCelebration:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong celebrationDidBegin];

    swift_unknownObjectRelease();
  }
}

@end