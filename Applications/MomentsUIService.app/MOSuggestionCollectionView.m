@interface MOSuggestionCollectionView
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (_TtC16MomentsUIService26MOSuggestionCollectionView)initWithFrame:(CGRect)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didEndDisplayingSupplementaryView:(id)a4 forElementOfKind:(id)a5 atIndexPath:(id)a6;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)handlePullToRefreshTrigger;
- (void)layoutSubviews;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)shieldViewUnlockButtonPressed:(id)a3;
@end

@implementation MOSuggestionCollectionView

- (void)shieldViewUnlockButtonPressed:(id)a3
{
  v3 = *((swift_isaMask & self->super.super.super.isa) + 0x100);
  v4 = self;
  if (v3())
  {
    MOSuggestionCollectionViewModel.initiateAuthentication()();
  }
}

- (void)handlePullToRefreshTrigger
{
  v2 = self;
  MOSuggestionCollectionView.handlePullToRefreshTrigger()();
}

- (void)layoutSubviews
{
  v2 = self;
  MOSuggestionCollectionView.layoutSubviews()();
}

- (_TtC16MomentsUIService26MOSuggestionCollectionView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = *((swift_isaMask & self->super.super.super.isa) + 0x100);
  v6 = self;
  v7 = v5();
  if (v7)
  {
    v8 = (*(*v7 + 664))(a4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
  v12 = MOSuggestionCollectionView.collectionView(_:cellForItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = *((swift_isaMask & self->super.super.super.isa) + 0x100);
  v4 = self;
  v5 = v3();
  if (v5)
  {
    v6 = (*(*v5 + 672))();
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = self;
  v16 = MOSuggestionCollectionView.collectionView(_:viewForSupplementaryElementOfKind:at:)(v14, v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v16;
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
  specialized MOSuggestionCollectionView.collectionView(_:didSelectItemAt:)(v9);

  (*(v7 + 8))(v9, v6);
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
  v15 = MOSuggestionCollectionView.collectionView(_:layout:sizeForItemAt:)(v12, v13, v11);
  v17 = v16;

  (*(v9 + 8))(v11, v8);
  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  specialized MOSuggestionCollectionView.collectionView(_:layout:referenceSizeForHeaderInSection:)(v8, a5);
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  v7 = *((swift_isaMask & self->super.super.super.isa) + 0x100);
  v8 = a3;
  v9 = self;
  v10 = v7();
  if (!v10)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
LABEL_6:

    goto LABEL_7;
  }

  if (((*(*v10 + 720))(a5) & 1) == 0)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;

    goto LABEL_6;
  }

  [v8 frame];
  width = v11;

  height = 80.0;
LABEL_7:
  v14 = width;
  v15 = height;
  result.height = v15;
  result.width = v14;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  specialized MOSuggestionCollectionView.collectionView(_:layout:insetForSectionAt:)(v9, a5);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (void)collectionView:(id)a3 didEndDisplayingSupplementaryView:(id)a4 forElementOfKind:(id)a5 atIndexPath:(id)a6
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a3;
  v17 = a4;
  v18 = self;
  specialized MOSuggestionCollectionView.collectionView(_:didEndDisplayingSupplementaryView:forElementOfKind:at:)(v17, v13, v15);

  (*(v10 + 8))(v12, v9);
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIContextMenuConfiguration);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  (*(v7 + 32))(v16 + v14, v10, v6);
  *(v16 + v15) = self;
  v17 = self;

  v18 = UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(0, 0, 0, closure #1 in MOSuggestionCollectionView.collectionView(_:contextMenuConfigurationForItemAt:point:)partial apply, v16);
  (*(v7 + 8))(v12, v6);

  return v18;
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
  specialized MOSuggestionCollectionView.collectionView(_:didEndDisplaying:forItemAt:)(v11);

  (*(v9 + 8))(v11, v8);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v3 = *((swift_isaMask & self->super.super.super.isa) + 0x258);
  v4 = self;
  v3();
}

@end