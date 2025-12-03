@interface MOSuggestionSheetFilterCollectionView
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (_TtC16MomentsUIService37MOSuggestionSheetFilterCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
@end

@implementation MOSuggestionSheetFilterCollectionView

- (_TtC16MomentsUIService37MOSuggestionSheetFilterCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = *((swift_isaMask & self->super.super.super.super.super.isa) + 0x68);
  selfCopy = self;
  v6 = v4();
  v7 = (*(*v6 + 112))(v6);

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
  v12 = MOSuggestionSheetFilterCollectionView.collectionView(_:cellForItemAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  specialized MOSuggestionSheetFilterCollectionView.collectionView(_:layout:sizeForItemAt:)();
  v10 = v9;
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
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
  MOSuggestionSheetFilterCollectionView.collectionView(_:didSelectItemAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end