@interface TrophyCaseViewController
- (_TtC10FitnessApp24TrophyCaseViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC10FitnessApp24TrophyCaseViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)pregnancyModelDidChangeWithProvider:(id)a3 model:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TrophyCaseViewController

- (void)dealloc
{
  sub_100007C5C(self + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider, v6);
  sub_1000066AC(v6, v6[3]);
  sub_100045D40(&unk_1008E7FA0, v3, type metadata accessor for TrophyCaseViewController);
  v4 = self;
  dispatch thunk of AAUIAwardsDataProviding.remove(observer:)();

  sub_100005A40(v6);
  v5.receiver = v4;
  v5.super_class = type metadata accessor for TrophyCaseViewController();
  [(TrophyCaseViewController *)&v5 dealloc];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10030136C(a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TrophyCaseViewController();
  v4 = v5.receiver;
  [(TrophyCaseViewController *)&v5 viewWillAppear:v3];
  sub_10030146C();
}

- (_TtC10FitnessApp24TrophyCaseViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp24TrophyCaseViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10030500C();

  return v6;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1003050C0(a4);

  return v8;
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
  v12 = sub_100302ECC(v10, v9);

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
  sub_1003052D4();

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
  v16 = sub_100304AD0(v14, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = self;
  v14 = sub_100305600(a4, v11, v12);

  return v14;
}

- (void)pregnancyModelDidChangeWithProvider:(id)a3 model:(id)a4
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_localizationProvider);
  v7 = a3;
  v6 = self;
  [v5 setIsPregnant:{objc_msgSend(v7, "isPregnant")}];
}

@end