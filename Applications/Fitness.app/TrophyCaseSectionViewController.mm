@interface TrophyCaseSectionViewController
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (_TtC10FitnessApp31TrophyCaseSectionViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC10FitnessApp31TrophyCaseSectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)preferredContentSizeDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TrophyCaseSectionViewController

- (void)dealloc
{
  sub_100007C5C(self + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_achievementDataProvider, v5);
  sub_1000066AC(v5, v5[3]);
  sub_100045DD0(&unk_1008E99D0, type metadata accessor for TrophyCaseSectionViewController);
  selfCopy = self;
  dispatch thunk of AAUIAwardsDataProviding.remove(observer:)();

  sub_100005A40(v5);
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for TrophyCaseSectionViewController();
  [(TrophyCaseSectionViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TrophyCaseSectionViewController();
  v4 = v5.receiver;
  [(TrophyCaseSectionViewController *)&v5 viewWillAppear:appearCopy];
  [*&v4[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_localizationProvider] setPaused:{objc_msgSend(*&v4[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_pauseRingsCoordinator], "isPaused", v5.receiver, v5.super_class)}];
  sub_100342850();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100342638(appear);
}

- (void)preferredContentSizeDidChange:(id)change
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100342850();
  collectionView = [(TrophyCaseSectionViewController *)selfCopy collectionView];
  if (collectionView)
  {
    v10 = collectionView;
    [collectionView reloadData];

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC10FitnessApp31TrophyCaseSectionViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp31TrophyCaseSectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_achievements);
  if (v4 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
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
  v12 = sub_1003434BC(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  v16 = sub_10034379C(viewCopy, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
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
  sub_100343AA0(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  selfCopy = self;
  v14 = sub_10034432C(operation, viewControllerCopy, toViewControllerCopy);

  return v14;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_100344534(v11);
  v16 = v15;
  v18 = v17;

  (*(v9 + 8))(v11, v8);
  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  selfCopy = self;
  view = [(TrophyCaseSectionViewController *)selfCopy view];
  if (view)
  {
    v9 = view;
    [view bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v21.origin.x = v11;
    v21.origin.y = v13;
    v21.size.width = v15;
    v21.size.height = v17;
    Width = CGRectGetWidth(v21);
    v19 = sub_10065E0F0(Width);

    v7 = Width;
    v8 = v19;
  }

  else
  {
    __break(1u);
  }

  result.height = v8;
  result.width = v7;
  return result;
}

@end