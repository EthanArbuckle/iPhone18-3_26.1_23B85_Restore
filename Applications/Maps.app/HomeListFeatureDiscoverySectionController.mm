@interface HomeListFeatureDiscoverySectionController
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
@end

@implementation HomeListFeatureDiscoverySectionController

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_100251494();

  (*(v9 + 8))(v11, v8);
}

@end