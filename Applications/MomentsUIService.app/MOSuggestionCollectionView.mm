@interface MOSuggestionCollectionView
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (_TtC16MomentsUIService26MOSuggestionCollectionView)initWithFrame:(CGRect)frame;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)handlePullToRefreshTrigger;
- (void)layoutSubviews;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)shieldViewUnlockButtonPressed:(id)pressed;
@end

@implementation MOSuggestionCollectionView

- (void)shieldViewUnlockButtonPressed:(id)pressed
{
  v3 = *((swift_isaMask & self->super.super.super.isa) + 0x100);
  selfCopy = self;
  if (v3())
  {
    MOSuggestionCollectionViewModel.initiateAuthentication()();
  }
}

- (void)handlePullToRefreshTrigger
{
  selfCopy = self;
  MOSuggestionCollectionView.handlePullToRefreshTrigger()();
}

- (void)layoutSubviews
{
  selfCopy = self;
  MOSuggestionCollectionView.layoutSubviews()();
}

- (_TtC16MomentsUIService26MOSuggestionCollectionView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v5 = *((swift_isaMask & self->super.super.super.isa) + 0x100);
  selfCopy = self;
  v7 = v5();
  if (v7)
  {
    v8 = (*(*v7 + 664))(section);
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
  v12 = MOSuggestionCollectionView.collectionView(_:cellForItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  v3 = *((swift_isaMask & self->super.super.super.isa) + 0x100);
  selfCopy = self;
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

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v16 = MOSuggestionCollectionView.collectionView(_:viewForSupplementaryElementOfKind:at:)(viewCopy, v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v16;
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
  specialized MOSuggestionCollectionView.collectionView(_:didSelectItemAt:)(v9);

  (*(v7 + 8))(v9, v6);
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
  v15 = MOSuggestionCollectionView.collectionView(_:layout:sizeForItemAt:)(viewCopy, layoutCopy, v11);
  v17 = v16;

  (*(v9 + 8))(v11, v8);
  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  specialized MOSuggestionCollectionView.collectionView(_:layout:referenceSizeForHeaderInSection:)(viewCopy, section);
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section
{
  v7 = *((swift_isaMask & self->super.super.super.isa) + 0x100);
  viewCopy = view;
  selfCopy = self;
  v10 = v7();
  if (!v10)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
LABEL_6:

    goto LABEL_7;
  }

  if (((*(*v10 + 720))(section) & 1) == 0)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;

    goto LABEL_6;
  }

  [viewCopy frame];
  width = v11;

  height = 80.0;
LABEL_7:
  v14 = width;
  v15 = height;
  result.height = v15;
  result.width = v14;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  specialized MOSuggestionCollectionView.collectionView(_:layout:insetForSectionAt:)(layoutCopy, index);
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

- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  selfCopy = self;
  specialized MOSuggestionCollectionView.collectionView(_:didEndDisplayingSupplementaryView:forElementOfKind:at:)(supplementaryViewCopy, v13, v15);

  (*(v10 + 8))(v12, v9);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
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
  selfCopy = self;

  v18 = UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(0, 0, 0, closure #1 in MOSuggestionCollectionView.collectionView(_:contextMenuConfigurationForItemAt:point:)partial apply, v16);
  (*(v7 + 8))(v12, v6);

  return v18;
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
  specialized MOSuggestionCollectionView.collectionView(_:didEndDisplaying:forItemAt:)(v11);

  (*(v9 + 8))(v11, v8);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v3 = *((swift_isaMask & self->super.super.super.isa) + 0x258);
  selfCopy = self;
  v3();
}

@end