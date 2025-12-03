@interface ActivityDashboardViewController
- (CHQuickStartWorkoutActionHandler)quickStartWorkoutActionHandler;
- (_TtC10FitnessApp31ActivityDashboardViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC10FitnessApp31ActivityDashboardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP10FitnessApp32TrophyCaseViewControllerDelegate_)trophyCaseViewControllerDelegate;
- (_TtP10FitnessApp35HistoryPagingViewControllerDelegate_)historyPagingViewControllerDelegate;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)navigateToTrophyCaseAnimated:(BOOL)animated initialAchievement:(id)achievement shouldShowCelebration:(BOOL)celebration forModalPresentation:(BOOL)presentation;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (id)showActivityOnDate:(id)date shareImmediately:(BOOL)immediately animated:(BOOL)animated forGoalCompleteNotification:(BOOL)notification goalRecommendation:(id)recommendation;
- (id)showActivityOnDate:(id)date shareImmediately:(BOOL)immediately animated:(BOOL)animated forGoalCompleteNotification:(BOOL)notification goalRecommendation:(id)recommendation withPauseRingsEditing:(BOOL)editing;
- (id)showTodayAndShareImmediately:(BOOL)immediately animated:(BOOL)animated forGoalCompleteNotification:(BOOL)notification goalRecommendation:(id)recommendation;
- (id)showTodayAndShareImmediately:(BOOL)immediately animated:(BOOL)animated forGoalCompleteNotification:(BOOL)notification goalRecommendation:(id)recommendation withPauseRingsEditing:(BOOL)editing;
- (void)cloudSyncObserver:(id)observer syncDidStartWithProgress:(id)progress;
- (void)cloudSyncObserver:(id)observer syncFailedWithError:(id)error;
- (void)cloudSyncObserverSyncCompleted:(id)completed;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)didTapAddCard;
- (void)didTapDone;
- (void)editButtonTapped;
- (void)entryLinksButtonTapped;
- (void)navigateToHistoryAnimated:(BOOL)animated;
- (void)navigateToMindfulnessHistoryAnimated:(BOOL)animated;
- (void)navigateToTrophyCaseSection:(id)section withAchievementID:(id)d animated:(BOOL)animated;
- (void)navigateToWorkoutHistoryWithActivityType:(id)type animated:(BOOL)animated;
- (void)presentAppSettingsShowingPane:(int64_t)pane;
- (void)presentWorkoutConfigurationWithData:(id)data;
- (void)scrollToBottom;
- (void)scrollToTop;
- (void)scrollViewDidScroll:(id)scroll;
- (void)showAllTrendsAnimated:(BOOL)animated;
- (void)showLoad;
- (void)showMindfulnessSessionWithUUID:(id)d;
- (void)showSummaryCardWithIdentifier:(int64_t)identifier;
- (void)showTrendWithIdentifier:(int64_t)identifier animated:(BOOL)animated;
- (void)showWorkoutWithId:(id)id activityId:(id)activityId page:(id)page;
- (void)textSizeChanged:(id)changed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ActivityDashboardViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000265E0(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100026A24(appear);
}

- (void)presentAppSettingsShowingPane:(int64_t)pane
{
  selfCopy = self;
  sub_100390F98(pane);
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

  v17 = sub_100391354(v14, immediatelyCopy, animatedCopy, notificationCopy, v16, recommendationCopy == 0, 0);

  return v17;
}

- (id)showTodayAndShareImmediately:(BOOL)immediately animated:(BOOL)animated forGoalCompleteNotification:(BOOL)notification goalRecommendation:(id)recommendation withPauseRingsEditing:(BOOL)editing
{
  editingCopy = editing;
  notificationCopy = notification;
  animatedCopy = animated;
  immediatelyCopy = immediately;
  v13 = objc_allocWithZone(NSDate);
  recommendationCopy = recommendation;
  selfCopy = self;
  v16 = [v13 init];
  if (recommendationCopy)
  {
    [recommendationCopy doubleValue];
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_100391354(v16, immediatelyCopy, animatedCopy, notificationCopy, v18, recommendationCopy == 0, editingCopy);

  return v19;
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

  v18 = sub_100391354(dateCopy, immediatelyCopy, animatedCopy, notificationCopy, v16, recommendation == 0, 0);

  return v18;
}

- (id)showActivityOnDate:(id)date shareImmediately:(BOOL)immediately animated:(BOOL)animated forGoalCompleteNotification:(BOOL)notification goalRecommendation:(id)recommendation withPauseRingsEditing:(BOOL)editing
{
  editingCopy = editing;
  notificationCopy = notification;
  animatedCopy = animated;
  immediatelyCopy = immediately;
  dateCopy = date;
  if (recommendation)
  {
    recommendationCopy = recommendation;
    selfCopy = self;
    [recommendationCopy doubleValue];
    v18 = v17;
  }

  else
  {
    selfCopy2 = self;
    v18 = 0;
  }

  v20 = sub_100391354(dateCopy, immediatelyCopy, animatedCopy, notificationCopy, v18, recommendation == 0, editingCopy);

  return v20;
}

- (id)navigateToTrophyCaseAnimated:(BOOL)animated initialAchievement:(id)achievement shouldShowCelebration:(BOOL)celebration forModalPresentation:(BOOL)presentation
{
  achievementCopy = achievement;
  selfCopy = self;
  sub_10039374C(animated, achievement, celebration, presentation);
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
  sub_10039E12C(v7, v9, v10, d);
}

- (void)navigateToHistoryAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_1003941E4(animated);
}

- (void)navigateToWorkoutHistoryWithActivityType:(id)type animated:(BOOL)animated
{
  typeCopy = type;
  selfCopy = self;
  sub_100395E58(type, animated);
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
  sub_100396C7C(v14, v10, v16, page);

  sub_10000EA04(v10, &unk_1008DB8A0);
  (*(v12 + 8))(v14, v11);
}

- (void)navigateToMindfulnessHistoryAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_100397B04(animated);
}

- (void)showMindfulnessSessionWithUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10039885C(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)showAllTrendsAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_10039BE54(animated);
}

- (void)showTrendWithIdentifier:(int64_t)identifier animated:(BOOL)animated
{
  selfCopy = self;
  sub_10039C700(identifier, animated);
}

- (void)showLoad
{
  selfCopy = self;
  sub_10039CD30();
}

- (void)showSummaryCardWithIdentifier:(int64_t)identifier
{
  v4 = sub_100184598(identifier);
  if (v4 != 20)
  {
    v5 = v4;
    selfCopy = self;
    sub_10039CE78(v5);
  }
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
  v10[3] = &unk_100854EA0;
  v9 = _Block_copy(v10);
  [sharedInstance presentWorkoutConfigurationData:isa completion:v9];
  sub_10000AF88(v4, v6);
  _Block_release(v9);
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  selfCopy = self;
  v14 = sub_10039E7B4(operation, viewControllerCopy, toViewControllerCopy);

  return v14;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_1003A3C30(v10);

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (_TtP10FitnessApp32TrophyCaseViewControllerDelegate_)trophyCaseViewControllerDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtP10FitnessApp35HistoryPagingViewControllerDelegate_)historyPagingViewControllerDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CHQuickStartWorkoutActionHandler)quickStartWorkoutActionHandler
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1004694F8();
}

- (void)textSizeChanged:(id)changed
{
  v5 = sub_100140278(&qword_1008E5718);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (changed)
  {
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Notification();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for Notification();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = *(*(self + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator) + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_editMode);
  selfCopy = self;
  sub_10046B334(v10);

  sub_10000EA04(v7, &qword_1008E5718);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v11.receiver = self;
  v11.super_class = type metadata accessor for ActivityDashboardViewController();
  swift_unknownObjectRetain();
  v7 = v11.receiver;
  [(ActivityDashboardViewController *)&v11 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  collectionView = [v7 collectionView];
  if (collectionView)
  {
    v9 = collectionView;
    collectionViewLayout = [collectionView collectionViewLayout];

    [collectionViewLayout invalidateLayout];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (void)editButtonTapped
{
  selfCopy = self;
  sub_10046AEB0();
}

- (void)entryLinksButtonTapped
{
  selfCopy = self;
  sub_10046B7E0();
}

- (void)didTapDone
{
  selfCopy = self;
  sub_10046BCC0();
}

- (void)didTapAddCard
{
  selfCopy = self;
  sub_10046C170();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10046CD2C(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ActivityDashboardViewController();
  v4 = v5.receiver;
  [(ActivityDashboardViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_100026E98(&qword_1008EE860, type metadata accessor for ActivityDashboardViewController);
  sub_100026E98(&qword_1008EE868, type metadata accessor for ActivityDashboardViewController);
  MetricResignActiveObserving<>.removeResignActiveObserver()();
}

- (void)scrollToTop
{
  selfCopy = self;
  sub_10046FD1C();
}

- (void)scrollToBottom
{
  selfCopy = self;
  sub_10046FF90();
}

- (_TtC10FitnessApp31ActivityDashboardViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp31ActivityDashboardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  if (IndexPath.section.getter() == 1)
  {
    v17 = IndexPath.item.getter();

    if (v17)
    {
      v18 = v12;
      v12 = v9;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v18 = v9;
LABEL_6:
  v19 = *(v7 + 8);
  v19(v18, v6);
  (*(v7 + 32))(v15, v12, v6);
  v20.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19(v15, v6);

  return v20.super.isa;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for ActivityDashboardCardCell();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    viewCopy = view;
    cellCopy = cell;
    selfCopy = self;
    sub_1004D8AC4(v13, v11, viewCopy);

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for ActivityDashboardCardCell();
  if (swift_dynamicCastClass())
  {
    cellCopy = cell;
    selfCopy = self;
    sub_1004D9200(v10);

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    (*(v8 + 8))(v10, v7);
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  [scrollCopy bounds];
  sub_1004D8F08();
  ImpressionsCalculator.viewBounds.setter();
}

- (void)cloudSyncObserver:(id)observer syncDidStartWithProgress:(id)progress
{
  observerCopy = observer;
  progressCopy = progress;
  selfCopy = self;
  sub_1004783C0();
}

- (void)cloudSyncObserver:(id)observer syncFailedWithError:(id)error
{
  observerCopy = observer;
  selfCopy = self;
  errorCopy = error;
  sub_1004784CC(error);
}

- (void)cloudSyncObserverSyncCompleted:(id)completed
{
  completedCopy = completed;
  selfCopy = self;
  sub_1004788AC();
}

@end