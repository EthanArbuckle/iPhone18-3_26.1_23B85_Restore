@interface MOSuggestionSheetAssetGridView
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)layoutSubviews;
@end

@implementation MOSuggestionSheetAssetGridView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MOSuggestionSheetAssetGridView();
  v2 = v4.receiver;
  v3 = [(MOSuggestionSheetAssetGridView *)&v4 layoutSubviews];
  (*((swift_isaMask & *v2) + 0x1E8))(v3);
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = *((swift_isaMask & self->super.super.super.isa) + 0x150);
  v5 = self;
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

    v9 = (*((swift_isaMask & v5->super.super.super.isa) + 0x1F8))(v8);

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

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
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
    v12 = a4;
    v11();
  }

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = MOSuggestionSheetAssetGridView.collectionView(_:cellForItemAt:)(v10, v9);

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
  MOSuggestionSheetAssetGridView.collectionView(_:willDisplay:forItemAt:)(v12, v13);

  (*(v9 + 8))(v11, v8);
}

@end