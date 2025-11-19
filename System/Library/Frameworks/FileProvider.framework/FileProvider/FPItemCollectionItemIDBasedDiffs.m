@interface FPItemCollectionItemIDBasedDiffs
- (BOOL)containsChanges;
@end

@implementation FPItemCollectionItemIDBasedDiffs

- (BOOL)containsChanges
{
  v3 = [(FPItemCollectionItemIDBasedDiffs *)self deletedItemIDs];
  v4 = [v3 count];
  v5 = [(FPItemCollectionItemIDBasedDiffs *)self updatedItems];
  v6 = [v5 count] + v4;
  v7 = [(FPItemCollectionItemIDBasedDiffs *)self replacedItemsByFormerID];
  LOBYTE(v6) = v6 + [v7 count] != 0;

  return v6;
}

@end