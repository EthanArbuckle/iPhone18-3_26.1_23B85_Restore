@interface TrophyCaseSectionViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (_TtC10FitnessApp31TrophyCaseSectionViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC10FitnessApp31TrophyCaseSectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)preferredContentSizeDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TrophyCaseSectionViewController

- (void)dealloc
{
  sub_100007C5C(self + OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_achievementDataProvider, v5);
  sub_1000066AC(v5, v5[3]);
  sub_100045DD0(&unk_1008E99D0, type metadata accessor for TrophyCaseSectionViewController);
  v3 = self;
  dispatch thunk of AAUIAwardsDataProviding.remove(observer:)();

  sub_100005A40(v5);
  v4.receiver = v3;
  v4.super_class = type metadata accessor for TrophyCaseSectionViewController();
  [(TrophyCaseSectionViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TrophyCaseSectionViewController();
  v4 = v5.receiver;
  [(TrophyCaseSectionViewController *)&v5 viewWillAppear:v3];
  [*&v4[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_localizationProvider] setPaused:{objc_msgSend(*&v4[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_pauseRingsCoordinator], "isPaused", v5.receiver, v5.super_class)}];
  sub_100342850();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100342638(a3);
}

- (void)preferredContentSizeDidChange:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100342850();
  v9 = [(TrophyCaseSectionViewController *)v8 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 reloadData];

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC10FitnessApp31TrophyCaseSectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp31TrophyCaseSectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_1003434BC(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  v16 = sub_10034379C(v14, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
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
  sub_100343AA0(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = self;
  v14 = sub_10034432C(a4, v11, v12);

  return v14;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v5 = self;
  v6 = [(TrophyCaseSectionViewController *)v5 view];
  if (v6)
  {
    v9 = v6;
    [v6 bounds];
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