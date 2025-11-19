@interface LibraryDownloadingViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (_TtC5Music32LibraryDownloadingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation LibraryDownloadingViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1002D3384();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1002D5CC8(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(LibraryDownloadingViewController *)&v5 viewDidDisappear:v3];
  sub_1002D41E4();
  sub_10016DB90(0);
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UIContentUnavailableConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1002D5E5C();

  (*(v5 + 8))(v7, v4);
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1002D873C(a4);
  v9 = v8;

  return v9;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100009F78(0, &unk_101184750);
  v11 = a3;
  v12 = self;
  v13 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();

  (*(v8 + 8))(v10, v7);

  return v13;
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
  v12 = sub_1002D782C(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_sections);
  v10 = self;
  v11 = IndexPath.section.getter();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v11 >= *(v9 + 16))
  {
LABEL_8:
    __break(1u);
    return v11;
  }

  if (*(v9 + v11 + 32))
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v12 = 1;
  }

  (*(v6 + 8))(v8, v5);
  LOBYTE(v11) = v12 & 1;
  return v11;
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1002D88F8();

  (*(v7 + 8))(v9, v6);
}

- (_TtC5Music32LibraryDownloadingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end