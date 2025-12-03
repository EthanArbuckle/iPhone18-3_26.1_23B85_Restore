@interface ICMoveDataSource
- (ICMoveDataSource)initWithCollectionView:(id)view cellProvider:(id)provider indexer:(id)indexer;
- (ICMoveDataSource)initWithCollectionView:(id)view sourceObjectIds:(id)ids;
@end

@implementation ICMoveDataSource

- (ICMoveDataSource)initWithCollectionView:(id)view sourceObjectIds:(id)ids
{
  sub_1000054A4(0, &qword_1006BFEC0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1003A1A68(view, v5);
}

- (ICMoveDataSource)initWithCollectionView:(id)view cellProvider:(id)provider indexer:(id)indexer
{
  _Block_copy(provider);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end