@interface SearchHintsCollectionViewDelegate
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (_TtC8AppStore33SearchHintsCollectionViewDelegate)init;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation SearchHintsCollectionViewDelegate

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_10096E668;
  v11 = self;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for StaticDimension();
  sub_1000056A8(v12, qword_1009D22D0);
  swift_unknownObjectRetain();
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v14 = v13;

  swift_unknownObjectRelease();
  (*(v7 + 8))(v9, v6);
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = v14;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v18;
  return result;
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
  sub_1004F040C(v13);

  (*(v9 + 8))(v11, v8);
}

- (void)scrollViewDidScroll:(id)a3
{
  if (*(&self->super.isa + OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_impressionsCalculator))
  {
    v4 = a3;
    v5 = self;

    [v4 bounds];
    ImpressionsCalculator.viewBounds.setter();
  }
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
  sub_1004F07B8();

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  IndexPath.item.getter();
  dispatch thunk of SearchHintsPresenter.didSelectHint(at:)();
  (*(v6 + 8))(v8, v5);
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = sub_1004F0B50(v12);
  v17 = v16;

  (*(v9 + 8))(v11, v8);
  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (_TtC8AppStore33SearchHintsCollectionViewDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end