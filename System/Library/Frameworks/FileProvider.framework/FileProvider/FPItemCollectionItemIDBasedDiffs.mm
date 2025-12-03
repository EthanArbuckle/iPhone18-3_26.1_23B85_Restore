@interface FPItemCollectionItemIDBasedDiffs
- (BOOL)containsChanges;
@end

@implementation FPItemCollectionItemIDBasedDiffs

- (BOOL)containsChanges
{
  deletedItemIDs = [(FPItemCollectionItemIDBasedDiffs *)self deletedItemIDs];
  v4 = [deletedItemIDs count];
  updatedItems = [(FPItemCollectionItemIDBasedDiffs *)self updatedItems];
  v6 = [updatedItems count] + v4;
  replacedItemsByFormerID = [(FPItemCollectionItemIDBasedDiffs *)self replacedItemsByFormerID];
  LOBYTE(v6) = v6 + [replacedItemsByFormerID count] != 0;

  return v6;
}

@end