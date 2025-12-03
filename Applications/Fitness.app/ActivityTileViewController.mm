@interface ActivityTileViewController
- (CHAwardsDataProvider)awardsDataProviderWrapper;
- (_TtC10FitnessApp26ActivityTileViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC10FitnessApp26ActivityTileViewController)initWithStyle:(int64_t)style;
- (_TtP10FitnessApp34ActivityTileViewControllerDelegate_)delegate;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)navigateToTrophyCaseAnimated:(BOOL)animated initialAchievement:(id)achievement shouldShowCelebration:(BOOL)celebration forModalPresentation:(BOOL)presentation;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (id)showActivityOnDate:(id)date shareImmediately:(BOOL)immediately animated:(BOOL)animated forGoalCompleteNotification:(BOOL)notification goalRecommendation:(id)recommendation;
- (id)showTodayAndShareImmediately:(BOOL)immediately animated:(BOOL)animated forGoalCompleteNotification:(BOOL)notification goalRecommendation:(id)recommendation;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)navigateToHistoryAnimated:(BOOL)animated;
- (void)navigateToMindfulnessHistoryAnimated:(BOOL)animated;
- (void)navigateToTrophyCaseSection:(id)section withAchievementID:(id)d animated:(BOOL)animated;
- (void)navigateToWorkoutHistoryWithActivityType:(id)type animated:(BOOL)animated;
- (void)presentAppSettingsShowingPane:(int64_t)pane;
- (void)presentWorkoutConfigurationWithData:(id)data;
- (void)ringCelebrationDidBegin;
- (void)scrollToTop;
- (void)scrollViewDidScroll:(id)scroll;
- (void)showAllTrendsAnimated:(BOOL)animated;
- (void)showMindfulnessSessionWithUUID:(id)d;
- (void)showTrendWithIdentifier:(int64_t)identifier animated:(BOOL)animated;
- (void)showWorkoutWithId:(id)id activityId:(id)activityId page:(id)page;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)trophyCaseDidBeginCelebration:(id)celebration;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  selfCopy = self;
  sub_1002701B0();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100272D14(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100272FC8(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1002731D0(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ActivityTileViewController();
  v4 = v7.receiver;
  [(ActivityTileViewController *)&v7 viewDidDisappear:disappearCopy];
  sub_100281448(&qword_1008E4EF0, v5, type metadata accessor for ActivityTileViewController);
  sub_100281448(&qword_1008E4EF8, v6, type metadata accessor for ActivityTileViewController);
  MetricResignActiveObserving<>.removeResignActiveObserver()();
}

- (void)scrollToTop
{
  selfCopy = self;
  sub_1002734D0();
}

- (_TtC10FitnessApp26ActivityTileViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp26ActivityTileViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_100281AAC(section);

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_100273E6C(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_10027645C(viewCopy, section);

  return v8;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([viewCopy numberOfRowsInSection:section] <= 0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = UITableViewAutomaticDimension;
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100281F58();

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  v15 = IndexPath.section.getter();
  v16 = sub_100145D40(v15);
  if (v16 != 6 && (v17 = v16, swift_getObjectType(), (v18 = swift_conformsToProtocol2()) != 0) && cellCopy)
  {
    v19 = v18;
    v20 = cellCopy;
    sub_1004F8AB4(v20, v19, v17, v11, viewCopy);

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  v15 = IndexPath.section.getter();
  if (sub_100145D40(v15) != 6 && (swift_getObjectType(), swift_conformsToProtocol2()) && cellCopy)
  {
    v16 = cellCopy;
    sub_1004F956C(v11);

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  [scrollCopy bounds];
  sub_1004F941C();
  ImpressionsCalculator.viewBounds.setter();
}

- (void)presentAppSettingsShowingPane:(int64_t)pane
{
  selfCopy = self;
  sub_100278730(pane);
}

- (void)presentWorkoutConfigurationWithData:(id)data
{
  dataCopy = data;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sharedInstance = [objc_opt_self() sharedInstance];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[4] = sub_100278A60;
  v10[5] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1004DCFFC;
  v10[3] = &unk_10084F040;
  v9 = _Block_copy(v10);
  [sharedInstance presentWorkoutConfigurationData:isa completion:v9];
  sub_10000AF88(v4, v6);
  _Block_release(v9);
}

- (id)showTodayAndShareImmediately:(BOOL)immediately animated:(BOOL)animated forGoalCompleteNotification:(BOOL)notification goalRecommendation:(id)recommendation
{
  notificationCopy = notification;
  animatedCopy = animated;
  immediatelyCopy = immediately;
  v11 = objc_allocWithZone(NSDate);
  recommendationCopy = recommendation;
  selfCopy = self;
  v14 = [v11 init];
  if (recommendationCopy)
  {
    [recommendationCopy doubleValue];
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_100278DCC(v14, immediatelyCopy, animatedCopy, notificationCopy, v16, recommendationCopy == 0);

  return v17;
}

- (id)showActivityOnDate:(id)date shareImmediately:(BOOL)immediately animated:(BOOL)animated forGoalCompleteNotification:(BOOL)notification goalRecommendation:(id)recommendation
{
  notificationCopy = notification;
  animatedCopy = animated;
  immediatelyCopy = immediately;
  dateCopy = date;
  if (recommendation)
  {
    recommendationCopy = recommendation;
    selfCopy = self;
    [recommendationCopy doubleValue];
    v16 = v15;
  }

  else
  {
    selfCopy2 = self;
    v16 = 0;
  }

  v18 = sub_100278DCC(dateCopy, immediatelyCopy, animatedCopy, notificationCopy, v16, recommendation == 0);

  return v18;
}

- (void)navigateToWorkoutHistoryWithActivityType:(id)type animated:(BOOL)animated
{
  typeCopy = type;
  selfCopy = self;
  sub_10027AF00(type, animated);
}

- (void)showWorkoutWithId:(id)id activityId:(id)activityId page:(id)page
{
  v8 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (activityId)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v12 + 56))(v10, v15, 1, v11);
  if (page)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    page = v17;
  }

  else
  {
    v16 = 0;
  }

  selfCopy = self;
  sub_10027BC18(v14, v10, v16, page);

  sub_10000EA04(v10, &unk_1008DB8A0);
  (*(v12 + 8))(v14, v11);
}

- (void)showMindfulnessSessionWithUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10027CAAC(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)navigateToHistoryAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_10027D52C(animated);
}

- (void)navigateToMindfulnessHistoryAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_10027E160(animated);
}

- (void)showAllTrendsAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_10027EDA0(animated);
}

- (void)showTrendWithIdentifier:(int64_t)identifier animated:(BOOL)animated
{
  selfCopy = self;
  sub_10027F37C(identifier, animated);
}

- (id)navigateToTrophyCaseAnimated:(BOOL)animated initialAchievement:(id)achievement shouldShowCelebration:(BOOL)celebration forModalPresentation:(BOOL)presentation
{
  achievementCopy = achievement;
  selfCopy = self;
  sub_10027F9E8(animated, achievement, celebration, presentation);
  v14 = v13;

  return v14;
}

- (void)navigateToTrophyCaseSection:(id)section withAchievementID:(id)d animated:(BOOL)animated
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (d)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    d = v11;
  }

  else
  {
    v10 = 0;
  }

  selfCopy = self;
  sub_100282094(v7, v9, v10, d);
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  selfCopy = self;
  v14 = sub_100282720(operation, viewControllerCopy, toViewControllerCopy);

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

- (void)trophyCaseDidBeginCelebration:(id)celebration
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong celebrationDidBegin];

    swift_unknownObjectRelease();
  }
}

@end