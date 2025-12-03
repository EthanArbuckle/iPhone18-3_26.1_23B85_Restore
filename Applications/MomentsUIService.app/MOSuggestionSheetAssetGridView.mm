@interface MOSuggestionSheetAssetGridView
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)layoutSubviews;
@end

@implementation MOSuggestionSheetAssetGridView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MOSuggestionSheetAssetGridView();
  v2 = v4.receiver;
  layoutSubviews = [(MOSuggestionSheetAssetGridView *)&v4 layoutSubviews];
  (*((swift_isaMask & *v2) + 0x1E8))(layoutSubviews);
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = *((swift_isaMask & self->super.super.super.isa) + 0x150);
  selfCopy = self;
  v6 = v4();
  if (v6)
  {
    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = (*((swift_isaMask & selfCopy->super.super.super.isa) + 0x1F8))(v8);

    if (v9 >= v7)
    {
      return v7;
    }

    else
    {
      return v9;
    }
  }

  else
  {

    return 0;
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for MOSuggestionSheetMosaicCell();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = *((swift_isaMask & *v10) + 0x170);
    cellCopy = cell;
    v11();
  }

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = MOSuggestionSheetAssetGridView.collectionView(_:cellForItemAt:)(viewCopy, v9);

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
  MOSuggestionSheetAssetGridView.collectionView(_:willDisplay:forItemAt:)(viewCopy, cellCopy);

  (*(v9 + 8))(v11, v8);
}

@end