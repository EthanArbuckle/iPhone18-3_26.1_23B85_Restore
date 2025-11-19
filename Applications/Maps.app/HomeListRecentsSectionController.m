@interface HomeListRecentsSectionController
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)homeDataProvidingObjectDidUpdate:(id)a3;
@end

@implementation HomeListRecentsSectionController

- (void)homeDataProvidingObjectDidUpdate:(id)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for HomeListRecentsSectionController();
  [(HomeListSectionController *)&v4 homeDataProvidingObjectDidUpdate:a3];
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
  sub_100526360(v10);

  (*(v7 + 8))(v9, v6);
}

@end