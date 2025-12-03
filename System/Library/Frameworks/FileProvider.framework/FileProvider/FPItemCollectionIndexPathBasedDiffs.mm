@interface FPItemCollectionIndexPathBasedDiffs
- (BOOL)containsChanges;
@end

@implementation FPItemCollectionIndexPathBasedDiffs

- (BOOL)containsChanges
{
  movedSourceIndexPaths = [(FPItemCollectionIndexPathBasedDiffs *)self movedSourceIndexPaths];
  v4 = [movedSourceIndexPaths count];
  movedDestinationIndexPaths = [(FPItemCollectionIndexPathBasedDiffs *)self movedDestinationIndexPaths];
  v6 = [movedDestinationIndexPaths count] + v4;
  deletedIndexes = [(FPItemCollectionIndexPathBasedDiffs *)self deletedIndexes];
  v8 = [deletedIndexes count];
  insertedIndexes = [(FPItemCollectionIndexPathBasedDiffs *)self insertedIndexes];
  v10 = v6 + v8 + [insertedIndexes count];
  updatedIndexes = [(FPItemCollectionIndexPathBasedDiffs *)self updatedIndexes];
  LOBYTE(v10) = v10 + [updatedIndexes count] != 0;

  return v10;
}

@end