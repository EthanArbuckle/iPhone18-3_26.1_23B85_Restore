@interface SearchLockupListCollectionViewCell
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SearchLockupListCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000FB9F8();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchLockupListCollectionViewCell();
  v2 = v3.receiver;
  [(SearchLockupListCollectionViewCell *)&v3 prepareForReuse];
  if (*&v2[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsCoordinator])
  {

    dispatch thunk of NestedCollectionViewImpressionsCoordinator.prepareForReuse()();
  }

  else
  {
    __break(1u);
  }
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
  sub_1000FE1A4();

  (*(v7 + 8))(v9, v6);
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
  sub_1000FE528();

  (*(v9 + 8))(v11, v8);
}

@end