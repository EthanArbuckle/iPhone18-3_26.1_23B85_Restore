@interface FPItemCollectionIndexPathBasedDiffs
- (BOOL)containsChanges;
@end

@implementation FPItemCollectionIndexPathBasedDiffs

- (BOOL)containsChanges
{
  v3 = [(FPItemCollectionIndexPathBasedDiffs *)self movedSourceIndexPaths];
  v4 = [v3 count];
  v5 = [(FPItemCollectionIndexPathBasedDiffs *)self movedDestinationIndexPaths];
  v6 = [v5 count] + v4;
  v7 = [(FPItemCollectionIndexPathBasedDiffs *)self deletedIndexes];
  v8 = [v7 count];
  v9 = [(FPItemCollectionIndexPathBasedDiffs *)self insertedIndexes];
  v10 = v6 + v8 + [v9 count];
  v11 = [(FPItemCollectionIndexPathBasedDiffs *)self updatedIndexes];
  LOBYTE(v10) = v10 + [v11 count] != 0;

  return v10;
}

@end