@interface FolderComposerFilterDataSource
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
@end

@implementation FolderComposerFilterDataSource

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_10030E8DC();

  (*(v7 + 8))(v9, v6);
}

@end