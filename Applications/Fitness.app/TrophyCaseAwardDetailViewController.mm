@interface TrophyCaseAwardDetailViewController
- (CGRect)badgeFrame;
- (_TtC10FitnessApp35TrophyCaseAwardDetailViewController)initWithAchievement:(id)achievement healthStore:(id)store friendListManager:(id)manager achievementDataProvider:(id)provider badgeImageFactory:(id)factory resourceProvider:(id)resourceProvider formattingManager:(id)formattingManager localizationProvider:(id)self0 pauseRingsCoordinator:(id)self1 fitnessAppContext:(id)self2 workoutFormattingManager:(id)self3 workoutDataProvider:(id)self4 forModalPresentation:(BOOL)self5 shouldShowCelebration:(BOOL)self6 shouldShowEarned:(BOOL)self7 shouldShowAssociatedWorkout:(BOOL)self8;
- (_TtC10FitnessApp35TrophyCaseAwardDetailViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC10FitnessApp35TrophyCaseAwardDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)activityViewControllerLinkPresentationMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)appWillResignActive:(id)active;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)placeBadgeViewInContainer;
- (void)playerFinished:(id)finished;
- (void)shareTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation TrophyCaseAwardDetailViewController

- (_TtC10FitnessApp35TrophyCaseAwardDetailViewController)initWithAchievement:(id)achievement healthStore:(id)store friendListManager:(id)manager achievementDataProvider:(id)provider badgeImageFactory:(id)factory resourceProvider:(id)resourceProvider formattingManager:(id)formattingManager localizationProvider:(id)self0 pauseRingsCoordinator:(id)self1 fitnessAppContext:(id)self2 workoutFormattingManager:(id)self3 workoutDataProvider:(id)self4 forModalPresentation:(BOOL)self5 shouldShowCelebration:(BOOL)self6 shouldShowEarned:(BOOL)self7 shouldShowAssociatedWorkout:(BOOL)self8
{
  selfCopy = self;
  celebrationCopy = celebration;
  LODWORD(v58) = presentation;
  workoutCopy = workout;
  earnedCopy = earned;
  workoutFormattingManagerCopy = workoutFormattingManager;
  dataProviderCopy = dataProvider;
  contextCopy = context;
  coordinatorCopy = coordinator;
  ObjectType = swift_getObjectType();
  sub_100007C5C(provider + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider, v61);
  v24 = v62;
  v51 = v63;
  v25 = sub_1001DF03C(v61, v62);
  v26 = __chkstk_darwin(v25);
  v28 = &factoryCopy - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28, v26);
  achievementCopy = achievement;
  storeCopy = store;
  managerCopy = manager;
  factoryCopy = factory;
  resourceProviderCopy = resourceProvider;
  formattingManagerCopy = formattingManager;
  localizationProviderCopy = localizationProvider;
  v33 = coordinatorCopy;
  coordinatorCopy = v33;
  v34 = contextCopy;
  v35 = workoutFormattingManagerCopy;
  v36 = dataProviderCopy;
  v45 = v24;
  v44 = v33;
  v38 = storeCopy;
  v37 = achievementCopy;
  v39 = managerCopy;
  v40 = v28;
  v41 = factoryCopy;
  sub_1006524C4(achievementCopy, storeCopy, managerCopy, v40, factoryCopy, resourceProviderCopy, formattingManagerCopy, localizationProviderCopy, v44, v34, v35, v36, v58, celebrationCopy, earnedCopy, workoutCopy, 0, ObjectType, v45, v51);
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
  selfCopy = self;
  dispatch thunk of AAUIAwardsDataProviding.remove(observer:)();

  sub_100005A40(v6);
  v5.receiver = selfCopy;
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

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10064F288(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10064F4FC(appear);
}

- (void)appWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100652E28();
}

- (_TtC10FitnessApp35TrophyCaseAwardDetailViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp35TrophyCaseAwardDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_100650F20(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100653254();

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v16 = sub_1006538EC(viewCopy, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (CGRect)badgeFrame
{
  selfCopy = self;
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
  selfCopy = self;
  sub_100651E10();
}

- (void)shareTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_100653A6C();
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v3;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  v6 = sub_100653D20();

  return v6;
}

- (void)playerFinished:(id)finished
{
  finishedCopy = finished;
  selfCopy = self;
  sub_100653EAC();
}

@end