@interface FolderComposerFilterDataSource
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
@end

@implementation FolderComposerFilterDataSource

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10030E8DC();

  (*(v7 + 8))(v9, v6);
}

@end