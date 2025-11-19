@interface DelegateRelay
- (BOOL)searchBarShouldBeginEditing:(id)a3;
- (_TtC7JournalP33_983DA0FAA101D0BE16C06EFC3D547C6313DelegateRelay)init;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)completerDidFail:(id)a3 error:(id)a4;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
@end

@implementation DelegateRelay

- (BOOL)searchBarShouldBeginEditing:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a3;
    v8 = self;
    sub_10010D14C(v7);
  }

  return 1;
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a3;
    v9 = self;
    sub_10010D250(v8);
  }
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a3;
    v8 = self;
    sub_10010D478(v7);
  }
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a3;
    v8 = self;

    [v7 resignFirstResponder];
  }
}

- (void)completerDidFail:(id)a3 error:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a4;
    v9 = self;
    sub_10010DEB4();
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 1;
  }

  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = *(*&Strong[OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_results] + 16);

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
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
    v12 = a3;
    v13 = self;
    v14 = sub_10010E060(v12);
  }

  else
  {
    v14 = [objc_allocWithZone(UICollectionViewCell) init];
  }

  (*(v7 + 8))(v9, v6);

  return v14;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
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
    v11 = self;
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