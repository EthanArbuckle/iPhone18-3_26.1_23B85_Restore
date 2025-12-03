@interface MOSuggestionCarouselView
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (_TtC16MomentsUIService24MOSuggestionCarouselView)initWithFrame:(CGRect)frame;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation MOSuggestionCarouselView

- (_TtC16MomentsUIService24MOSuggestionCarouselView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = *((swift_isaMask & self->super.super.super.isa) + 0xB0);
  selfCopy = self;
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = MOSuggestionCarouselView.collectionView(_:cellForItemAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  MOSuggestionCarouselView.collectionView(_:willDisplay:forItemAt:)(viewCopy, cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  layoutCopy = layout;
  v14 = layoutCopy;
  if (v12)
  {
    v15 = layoutCopy;
    viewCopy = view;
    selfCopy = self;
    [v12 minimumInteritemSpacing];
    v19 = v18;
    [v12 sectionInset];
    v21 = v19 + v20;
  }

  else
  {
    viewCopy2 = view;
    selfCopy2 = self;
    v21 = 0.0;
  }

  [view frame];
  v25 = v24;

  (*(v9 + 8))(v11, v8);
  v26 = v25 - v21 + -40.0;
  v27 = v26;
  result.height = v27;
  result.width = v26;
  return result;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  draggingCopy = dragging;
  selfCopy = self;
  MOSuggestionCarouselView.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(draggingCopy, &offset->x, x);
}

@end