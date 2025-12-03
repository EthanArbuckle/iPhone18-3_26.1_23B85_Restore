@interface NSOrderedCollectionDifference(AppleMediaServices)
- (id)ams_insertedObjects;
- (id)ams_removedObjects;
@end

@implementation NSOrderedCollectionDifference(AppleMediaServices)

- (id)ams_insertedObjects
{
  insertions = [self insertions];
  v2 = [insertions ams_mapWithTransform:&__block_literal_global_161];

  return v2;
}

- (id)ams_removedObjects
{
  removals = [self removals];
  v2 = [removals ams_mapWithTransform:&__block_literal_global_2_0];

  return v2;
}

@end