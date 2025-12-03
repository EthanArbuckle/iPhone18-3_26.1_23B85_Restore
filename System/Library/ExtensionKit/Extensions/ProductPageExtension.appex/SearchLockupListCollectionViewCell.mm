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
  sub_1002C32A8();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchLockupListCollectionViewCell();
  v2 = v3.receiver;
  [(SearchLockupListCollectionViewCell *)&v3 prepareForReuse];
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator])
  {

    sub_10076AE8C();
  }

  else
  {
    __break(1u);
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  viewCopy = view;
  selfCopy = self;
  sub_1002C5944();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_1002C5CC8();

  (*(v9 + 8))(v11, v8);
}

@end