@interface HomeListRecentsSectionController
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)homeDataProvidingObjectDidUpdate:(id)update;
@end

@implementation HomeListRecentsSectionController

- (void)homeDataProvidingObjectDidUpdate:(id)update
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for HomeListRecentsSectionController();
  [(HomeListSectionController *)&v4 homeDataProvidingObjectDidUpdate:update];
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
  sub_100526360(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end