@interface TrophyCaseViewController
- (_TtC10FitnessApp24TrophyCaseViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC10FitnessApp24TrophyCaseViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)pregnancyModelDidChangeWithProvider:(id)provider model:(id)model;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TrophyCaseViewController

- (void)dealloc
{
  sub_100007C5C(self + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider, v6);
  sub_1000066AC(v6, v6[3]);
  sub_100045D40(&unk_1008E7FA0, v3, type metadata accessor for TrophyCaseViewController);
  selfCopy = self;
  dispatch thunk of AAUIAwardsDataProviding.remove(observer:)();

  sub_100005A40(v6);
  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for TrophyCaseViewController();
  [(TrophyCaseViewController *)&v5 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10030136C(appear);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TrophyCaseViewController();
  v4 = v5.receiver;
  [(TrophyCaseViewController *)&v5 viewWillAppear:appearCopy];
  sub_10030146C();
}

- (_TtC10FitnessApp24TrophyCaseViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp24TrophyCaseViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_10030500C();

  return v6;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1003050C0(section);

  return v8;
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
  v12 = sub_100302ECC(viewCopy, v9);

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
  sub_1003052D4();

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
  v16 = sub_100304AD0(viewCopy, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  selfCopy = self;
  v14 = sub_100305600(operation, viewControllerCopy, toViewControllerCopy);

  return v14;
}

- (void)pregnancyModelDidChangeWithProvider:(id)provider model:(id)model
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_localizationProvider);
  providerCopy = provider;
  selfCopy = self;
  [v5 setIsPregnant:{objc_msgSend(providerCopy, "isPregnant")}];
}

@end