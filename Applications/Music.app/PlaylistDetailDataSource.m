@interface PlaylistDetailDataSource
- (_TtC5Music24PlaylistDetailDataSource)init;
- (id)_collectionView:(id)a3 indexPathOfReferenceItemToPreserveContentOffsetWithProposedReference:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)dealloc;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)updateSearchResultsForSearchController:(id)a3;
@end

@implementation PlaylistDetailDataSource

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_asyncSetupTask))
  {
    v3 = self;

    sub_10010FC20(&qword_1011824A0);
    Task.cancel()();
  }

  else
  {
    v4 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for PlaylistDetailDataSource(0);
  [(PlaylistDetailDataSource *)&v5 dealloc];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10086843C(a4);

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
  v12 = sub_10080FBAC(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  sub_100810ECC(v10);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  type metadata accessor for IndexPath();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = self;
  v10 = sub_10086B65C(v7);

  return v10;
}

- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = self;
  v5 = sub_100853B54();
  [v5 resignFirstResponder];
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_10086BE48(v9, a5);

  swift_unknownObjectRelease();
}

- (id)_collectionView:(id)a3 indexPathOfReferenceItemToPreserveContentOffsetWithProposedReference:(id)a4
{
  v7 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  if (a4)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v15 = self;
  sub_100813D14(v12);

  sub_1000095E8(v9, &unk_10118BCE0);
  type metadata accessor for IndexPath();
  v16 = *(v13 - 8);
  v17 = (*(v16 + 48))(v12, 1, v13);
  v18 = 0;
  if (v17 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v16 + 8))(v12, v13);
    v18 = isa;
  }

  return v18;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_10086C6A8(v13, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_10086C82C(v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  type metadata accessor for IndexPath();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_1008147A0(v7, v6);
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100814CE0(v4);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100814DE8(v4);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v12 = a3;
  [v12 contentOffset];
  v7 = v6;
  [v12 adjustedContentInset];
  if (v7 != -v8)
  {
    y = a5->y;
    [v12 safeAreaInsets];
    if (y < -v10)
    {
      [v12 safeAreaInsets];
      a5->y = -v11;
    }
  }
}

- (_TtC5Music24PlaylistDetailDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end