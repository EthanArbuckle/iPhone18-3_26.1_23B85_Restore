@interface ActivitySharingFriendDetailAwardsListViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (_TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController)initWithCoder:(id)a3;
- (_TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ActivitySharingFriendDetailAwardsListViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100317F10();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ActivitySharingFriendDetailAwardsListViewController();
  v4 = v6.receiver;
  [(ActivitySharingFriendDetailAwardsListViewController *)&v6 viewDidAppear:v3];
  v5 = *&v4[OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController_achievementTransitionAnimator];
  *&v4[OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController_achievementTransitionAnimator] = 0;
}

- (_TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController_cellHeightsCache;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(NSCache) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController_dataProviderObserver) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController_achievementTransitionAnimator) = 0;
  v5 = self + OBJC_IVAR____TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController____lazy_storage___itemWidth;
  *v5 = 0;
  v5[8] = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = self;
  static Published.subscript.getter();

  *&v14[9] = *&v12[9];
  v13[3] = v11;
  *v14 = *v12;
  v13[1] = v9;
  v13[2] = v10;
  v13[0] = v8;

  sub_100319D40(v13);
  if (*&v12[8] >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((*&v12[8] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6;
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
  v12 = sub_1003188C8(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  sub_100319DC4(v11);
  v16 = v15;
  v18 = v17;

  (*(v9 + 8))(v11, v8);
  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
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
  sub_100318D24(v10);

  (*(v7 + 8))(v9, v6);
}

- (_TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp51ActivitySharingFriendDetailAwardsListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end