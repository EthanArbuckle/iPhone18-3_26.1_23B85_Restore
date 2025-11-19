@interface ICMoveDataSource
- (ICMoveDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4 indexer:(id)a5;
- (ICMoveDataSource)initWithCollectionView:(id)a3 sourceObjectIds:(id)a4;
@end

@implementation ICMoveDataSource

- (ICMoveDataSource)initWithCollectionView:(id)a3 sourceObjectIds:(id)a4
{
  sub_1000054A4(0, &qword_1006BFEC0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1003A1A68(a3, v5);
}

- (ICMoveDataSource)initWithCollectionView:(id)a3 cellProvider:(id)a4 indexer:(id)a5
{
  _Block_copy(a4);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end