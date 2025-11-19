@interface MOSuggestionCarouselView
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (_TtC16MomentsUIService24MOSuggestionCarouselView)initWithFrame:(CGRect)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation MOSuggestionCarouselView

- (_TtC16MomentsUIService24MOSuggestionCarouselView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = *((swift_isaMask & self->super.super.super.isa) + 0xB0);
  v5 = self;
  v6 = v4();
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

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
  v12 = MOSuggestionCarouselView.collectionView(_:cellForItemAt:)(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  MOSuggestionCarouselView.collectionView(_:willDisplay:forItemAt:)(v12, v13);

  (*(v9 + 8))(v11, v8);
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  v13 = a4;
  v14 = v13;
  if (v12)
  {
    v15 = v13;
    v16 = a3;
    v17 = self;
    [v12 minimumInteritemSpacing];
    v19 = v18;
    [v12 sectionInset];
    v21 = v19 + v20;
  }

  else
  {
    v22 = a3;
    v23 = self;
    v21 = 0.0;
  }

  [a3 frame];
  v25 = v24;

  (*(v9 + 8))(v11, v8);
  v26 = v25 - v21 + -40.0;
  v27 = v26;
  result.height = v27;
  result.width = v26;
  return result;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  v8 = a3;
  v9 = self;
  MOSuggestionCarouselView.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(v8, &a5->x, x);
}

@end