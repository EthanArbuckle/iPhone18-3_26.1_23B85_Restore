@interface SearchHintsCollectionViewDelegate
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (_TtC8AppStore33SearchHintsCollectionViewDelegate)init;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation SearchHintsCollectionViewDelegate

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_10096E668;
  selfCopy = self;
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

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_1004F040C(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (*(&self->super.isa + OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_impressionsCalculator))
  {
    scrollCopy = scroll;
    selfCopy = self;

    [scrollCopy bounds];
    ImpressionsCalculator.viewBounds.setter();
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_1004F07B8();

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  IndexPath.item.getter();
  dispatch thunk of SearchHintsPresenter.didSelectHint(at:)();
  (*(v6 + 8))(v8, v5);
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  v15 = sub_1004F0B50(viewCopy);
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