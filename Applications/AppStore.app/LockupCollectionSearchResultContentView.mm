@interface LockupCollectionSearchResultContentView
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)layoutSubviews;
@end

@implementation LockupCollectionSearchResultContentView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001C9570();
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
  sub_1001CD850();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = (self + OBJC_IVAR____TtC8AppStore39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v11 = *v10;
  if (*v10)
  {
    selfCopy = self;
    v13 = sub_10000827C(v11);
    v11(v13);
    sub_10001F63C(v11);
  }

  (*(v7 + 8))(v9, v6);
}

@end