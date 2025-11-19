@interface ProductMediaCollectionViewCell
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)layoutSubviews;
@end

@implementation ProductMediaCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_10057AB70();
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_10057E81C();

  return v7;
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
  v12 = sub_10057B904(v10);

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
  sub_10057E8B8(v12);
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
  sub_10057BE94(v10);

  (*(v7 + 8))(v9, v6);
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_10057FBB4(v8, &selRef_setMinimumLineSpacing_);
  v11 = v10;

  return v11;
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_10057FBB4(v8, &selRef_setMinimumInteritemSpacing_);
  v11 = v10;

  return v11;
}

@end