@interface DelegateRelay
- (BOOL)searchBarShouldBeginEditing:(id)editing;
- (_TtC7JournalP33_983DA0FAA101D0BE16C06EFC3D547C6313DelegateRelay)init;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)completerDidFail:(id)fail error:(id)error;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
@end

@implementation DelegateRelay

- (BOOL)searchBarShouldBeginEditing:(id)editing
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    editingCopy = editing;
    selfCopy = self;
    sub_10010D14C(editingCopy);
  }

  return 1;
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    barCopy = bar;
    selfCopy = self;
    sub_10010D250(barCopy);
  }
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    clickedCopy = clicked;
    selfCopy = self;
    sub_10010D478(clickedCopy);
  }
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    clickedCopy = clicked;
    selfCopy = self;

    [clickedCopy resignFirstResponder];
  }
}

- (void)completerDidFail:(id)fail error:(id)error
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    errorCopy = error;
    selfCopy = self;
    sub_10010DEB4();
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 1;
  }

  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = *(*&Strong[OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_results] + 16);

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    viewCopy = view;
    selfCopy = self;
    v14 = sub_10010E060(viewCopy);
  }

  else
  {
    v14 = [objc_allocWithZone(UICollectionViewCell) init];
  }

  (*(v7 + 8))(v9, v6);

  return v14;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    selfCopy = self;
    sub_10010E320(v8);
  }

  (*(v6 + 8))(v8, v5);
}

- (_TtC7JournalP33_983DA0FAA101D0BE16C06EFC3D547C6313DelegateRelay)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for DelegateRelay();
  return [(DelegateRelay *)&v4 init];
}

@end