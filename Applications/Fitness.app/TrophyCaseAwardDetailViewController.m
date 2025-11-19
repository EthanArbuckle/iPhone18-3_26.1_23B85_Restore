@interface TrophyCaseAwardDetailViewController
- (CGRect)badgeFrame;
- (_TtC10FitnessApp35TrophyCaseAwardDetailViewController)initWithAchievement:(id)a3 healthStore:(id)a4 friendListManager:(id)a5 achievementDataProvider:(id)a6 badgeImageFactory:(id)a7 resourceProvider:(id)a8 formattingManager:(id)a9 localizationProvider:(id)a10 pauseRingsCoordinator:(id)a11 fitnessAppContext:(id)a12 workoutFormattingManager:(id)a13 workoutDataProvider:(id)a14 forModalPresentation:(BOOL)a15 shouldShowCelebration:(BOOL)a16 shouldShowEarned:(BOOL)a17 shouldShowAssociatedWorkout:(BOOL)a18;
- (_TtC10FitnessApp35TrophyCaseAwardDetailViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC10FitnessApp35TrophyCaseAwardDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)activityViewControllerLinkPresentationMetadata:(id)a3;
- (id)activityViewControllerPlaceholderItem:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (void)appWillResignActive:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)placeBadgeViewInContainer;
- (void)playerFinished:(id)a3;
- (void)shareTapped:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation TrophyCaseAwardDetailViewController

- (_TtC10FitnessApp35TrophyCaseAwardDetailViewController)initWithAchievement:(id)a3 healthStore:(id)a4 friendListManager:(id)a5 achievementDataProvider:(id)a6 badgeImageFactory:(id)a7 resourceProvider:(id)a8 formattingManager:(id)a9 localizationProvider:(id)a10 pauseRingsCoordinator:(id)a11 fitnessAppContext:(id)a12 workoutFormattingManager:(id)a13 workoutDataProvider:(id)a14 forModalPresentation:(BOOL)a15 shouldShowCelebration:(BOOL)a16 shouldShowEarned:(BOOL)a17 shouldShowAssociatedWorkout:(BOOL)a18
{
  v59 = self;
  v57 = a16;
  LODWORD(v58) = a15;
  v55 = a18;
  v56 = a17;
  v53 = a13;
  v54 = a14;
  v52 = a12;
  v50 = a11;
  ObjectType = swift_getObjectType();
  sub_100007C5C(a6 + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider, v61);
  v24 = v62;
  v51 = v63;
  v25 = sub_1001DF03C(v61, v62);
  v26 = __chkstk_darwin(v25);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28, v26);
  v49 = a3;
  v48 = a4;
  v47 = a5;
  v46 = a7;
  v30 = a8;
  v31 = a9;
  v32 = a10;
  v33 = v50;
  v50 = v33;
  v34 = v52;
  v35 = v53;
  v36 = v54;
  v45 = v24;
  v44 = v33;
  v38 = v48;
  v37 = v49;
  v39 = v47;
  v40 = v28;
  v41 = v46;
  sub_1006524C4(v49, v48, v47, v40, v46, v30, v31, v32, v44, v34, v35, v36, v58, v57, v56, v55, 0, ObjectType, v45, v51);
  v58 = v42;

  sub_100005A40(v61);
  swift_deallocPartialClassInstance();
  return v58;
}

- (void)dealloc
{
  sub_100007C5C(self + OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievementDataProvider, v6);
  sub_1000066AC(v6, v6[3]);
  sub_100045F80(&unk_1008EAEE0, v3, type metadata accessor for TrophyCaseAwardDetailViewController);
  v4 = self;
  dispatch thunk of AAUIAwardsDataProviding.remove(observer:)();

  sub_100005A40(v6);
  v5.receiver = v4;
  v5.super_class = type metadata accessor for TrophyCaseAwardDetailViewController();
  [(TrophyCaseAwardDetailViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TrophyCaseAwardDetailViewController();
  v2 = v3.receiver;
  [(TrophyCaseAwardDetailViewController *)&v3 viewDidLoad];
  sub_10064EC28();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10064F288(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_10064F378();
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TrophyCaseAwardDetailViewController();
  v2 = v6.receiver;
  [(TrophyCaseAwardDetailViewController *)&v6 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayerLayer];
  if (v3)
  {
    v4 = *&v2[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_celebrationVideoContainer];
    v5 = v3;
    [v4 bounds];
    [v5 setFrame:?];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10064F4FC(a3);
}

- (void)appWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100652E28();
}

- (_TtC10FitnessApp35TrophyCaseAwardDetailViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp35TrophyCaseAwardDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_100650F20(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_100653254();

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = self;
  v16 = sub_1006538EC(v14, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (CGRect)badgeFrame
{
  v2 = self;
  v3 = sub_100651CB4();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)placeBadgeViewInContainer
{
  v2 = self;
  sub_100651E10();
}

- (void)shareTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100653A6C();
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v3;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100653D20();

  return v6;
}

- (void)playerFinished:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100653EAC();
}

@end