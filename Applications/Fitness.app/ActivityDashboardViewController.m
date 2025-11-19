@interface ActivityDashboardViewController
- (CHQuickStartWorkoutActionHandler)quickStartWorkoutActionHandler;
- (_TtC10FitnessApp31ActivityDashboardViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC10FitnessApp31ActivityDashboardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP10FitnessApp32TrophyCaseViewControllerDelegate_)trophyCaseViewControllerDelegate;
- (_TtP10FitnessApp35HistoryPagingViewControllerDelegate_)historyPagingViewControllerDelegate;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 targetIndexPathForMoveFromItemAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)navigateToTrophyCaseAnimated:(BOOL)a3 initialAchievement:(id)a4 shouldShowCelebration:(BOOL)a5 forModalPresentation:(BOOL)a6;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (id)showActivityOnDate:(id)a3 shareImmediately:(BOOL)a4 animated:(BOOL)a5 forGoalCompleteNotification:(BOOL)a6 goalRecommendation:(id)a7;
- (id)showActivityOnDate:(id)a3 shareImmediately:(BOOL)a4 animated:(BOOL)a5 forGoalCompleteNotification:(BOOL)a6 goalRecommendation:(id)a7 withPauseRingsEditing:(BOOL)a8;
- (id)showTodayAndShareImmediately:(BOOL)a3 animated:(BOOL)a4 forGoalCompleteNotification:(BOOL)a5 goalRecommendation:(id)a6;
- (id)showTodayAndShareImmediately:(BOOL)a3 animated:(BOOL)a4 forGoalCompleteNotification:(BOOL)a5 goalRecommendation:(id)a6 withPauseRingsEditing:(BOOL)a7;
- (void)cloudSyncObserver:(id)a3 syncDidStartWithProgress:(id)a4;
- (void)cloudSyncObserver:(id)a3 syncFailedWithError:(id)a4;
- (void)cloudSyncObserverSyncCompleted:(id)a3;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)didTapAddCard;
- (void)didTapDone;
- (void)editButtonTapped;
- (void)entryLinksButtonTapped;
- (void)navigateToHistoryAnimated:(BOOL)a3;
- (void)navigateToMindfulnessHistoryAnimated:(BOOL)a3;
- (void)navigateToTrophyCaseSection:(id)a3 withAchievementID:(id)a4 animated:(BOOL)a5;
- (void)navigateToWorkoutHistoryWithActivityType:(id)a3 animated:(BOOL)a4;
- (void)presentAppSettingsShowingPane:(int64_t)a3;
- (void)presentWorkoutConfigurationWithData:(id)a3;
- (void)scrollToBottom;
- (void)scrollToTop;
- (void)scrollViewDidScroll:(id)a3;
- (void)showAllTrendsAnimated:(BOOL)a3;
- (void)showLoad;
- (void)showMindfulnessSessionWithUUID:(id)a3;
- (void)showSummaryCardWithIdentifier:(int64_t)a3;
- (void)showTrendWithIdentifier:(int64_t)a3 animated:(BOOL)a4;
- (void)showWorkoutWithId:(id)a3 activityId:(id)a4 page:(id)a5;
- (void)textSizeChanged:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ActivityDashboardViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000265E0(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100026A24(a3);
}

- (void)presentAppSettingsShowingPane:(int64_t)a3
{
  v4 = self;
  sub_100390F98(a3);
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

  v17 = sub_100391354(v14, v9, v8, v7, v16, v12 == 0, 0);

  return v17;
}

- (id)showTodayAndShareImmediately:(BOOL)a3 animated:(BOOL)a4 forGoalCompleteNotification:(BOOL)a5 goalRecommendation:(id)a6 withPauseRingsEditing:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v13 = objc_allocWithZone(NSDate);
  v14 = a6;
  v15 = self;
  v16 = [v13 init];
  if (v14)
  {
    [v14 doubleValue];
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_100391354(v16, v11, v10, v9, v18, v14 == 0, v7);

  return v19;
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

  v18 = sub_100391354(v12, v10, v9, v8, v16, a7 == 0, 0);

  return v18;
}

- (id)showActivityOnDate:(id)a3 shareImmediately:(BOOL)a4 animated:(BOOL)a5 forGoalCompleteNotification:(BOOL)a6 goalRecommendation:(id)a7 withPauseRingsEditing:(BOOL)a8
{
  v8 = a8;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v14 = a3;
  if (a7)
  {
    v15 = a7;
    v16 = self;
    [v15 doubleValue];
    v18 = v17;
  }

  else
  {
    v19 = self;
    v18 = 0;
  }

  v20 = sub_100391354(v14, v12, v11, v10, v18, a7 == 0, v8);

  return v20;
}

- (id)navigateToTrophyCaseAnimated:(BOOL)a3 initialAchievement:(id)a4 shouldShowCelebration:(BOOL)a5 forModalPresentation:(BOOL)a6
{
  v11 = a4;
  v12 = self;
  sub_10039374C(a3, a4, a5, a6);
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
  sub_10039E12C(v7, v9, v10, a4);
}

- (void)navigateToHistoryAnimated:(BOOL)a3
{
  v4 = self;
  sub_1003941E4(a3);
}

- (void)navigateToWorkoutHistoryWithActivityType:(id)a3 animated:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  sub_100395E58(a3, a4);
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
  sub_100396C7C(v14, v10, v16, a5);

  sub_10000EA04(v10, &unk_1008DB8A0);
  (*(v12 + 8))(v14, v11);
}

- (void)navigateToMindfulnessHistoryAnimated:(BOOL)a3
{
  v4 = self;
  sub_100397B04(a3);
}

- (void)showMindfulnessSessionWithUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10039885C(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)showAllTrendsAnimated:(BOOL)a3
{
  v4 = self;
  sub_10039BE54(a3);
}

- (void)showTrendWithIdentifier:(int64_t)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_10039C700(a3, a4);
}

- (void)showLoad
{
  v2 = self;
  sub_10039CD30();
}

- (void)showSummaryCardWithIdentifier:(int64_t)a3
{
  v4 = sub_100184598(a3);
  if (v4 != 20)
  {
    v5 = v4;
    v6 = self;
    sub_10039CE78(v5);
  }
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
  v10[3] = &unk_100854EA0;
  v9 = _Block_copy(v10);
  [v7 presentWorkoutConfigurationData:isa completion:v9];
  sub_10000AF88(v4, v6);
  _Block_release(v9);
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = self;
  v14 = sub_10039E7B4(a4, v11, v12);

  return v14;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
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
  v2 = self;
  sub_1004694F8();
}

- (void)textSizeChanged:(id)a3
{
  v5 = sub_100140278(&qword_1008E5718);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (a3)
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
  v11 = self;
  sub_10046B334(v10);

  sub_10000EA04(v7, &qword_1008E5718);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v11.receiver = self;
  v11.super_class = type metadata accessor for ActivityDashboardViewController();
  swift_unknownObjectRetain();
  v7 = v11.receiver;
  [(ActivityDashboardViewController *)&v11 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = [v7 collectionView];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 collectionViewLayout];

    [v10 invalidateLayout];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (void)editButtonTapped
{
  v2 = self;
  sub_10046AEB0();
}

- (void)entryLinksButtonTapped
{
  v2 = self;
  sub_10046B7E0();
}

- (void)didTapDone
{
  v2 = self;
  sub_10046BCC0();
}

- (void)didTapAddCard
{
  v2 = self;
  sub_10046C170();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10046CD2C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ActivityDashboardViewController();
  v4 = v5.receiver;
  [(ActivityDashboardViewController *)&v5 viewDidDisappear:v3];
  sub_100026E98(&qword_1008EE860, type metadata accessor for ActivityDashboardViewController);
  sub_100026E98(&qword_1008EE868, type metadata accessor for ActivityDashboardViewController);
  MetricResignActiveObserving<>.removeResignActiveObserver()();
}

- (void)scrollToTop
{
  v2 = self;
  sub_10046FD1C();
}

- (void)scrollToBottom
{
  v2 = self;
  sub_10046FF90();
}

- (_TtC10FitnessApp31ActivityDashboardViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp31ActivityDashboardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collectionView:(id)a3 targetIndexPathForMoveFromItemAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
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
  v16 = self;
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

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
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
    v14 = a3;
    v15 = a4;
    v16 = self;
    sub_1004D8AC4(v13, v11, v14);

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for ActivityDashboardCardCell();
  if (swift_dynamicCastClass())
  {
    v11 = a4;
    v12 = self;
    sub_1004D9200(v10);

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    (*(v8 + 8))(v10, v7);
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v5 = a3;
  v4 = self;
  [v5 bounds];
  sub_1004D8F08();
  ImpressionsCalculator.viewBounds.setter();
}

- (void)cloudSyncObserver:(id)a3 syncDidStartWithProgress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1004783C0();
}

- (void)cloudSyncObserver:(id)a3 syncFailedWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1004784CC(a4);
}

- (void)cloudSyncObserverSyncCompleted:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004788AC();
}

@end