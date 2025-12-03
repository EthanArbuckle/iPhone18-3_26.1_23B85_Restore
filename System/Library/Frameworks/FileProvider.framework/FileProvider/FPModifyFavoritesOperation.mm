@interface FPModifyFavoritesOperation
- (FPModifyFavoritesOperation)initWithItems:(id)items favoriteRanks:(id)ranks isUnfavorite:(BOOL)unfavorite;
- (id)fp_prettyDescription;
- (id)replicateForItems:(id)items;
- (unint64_t)transformItem:(id)item atIndex:(unint64_t)index;
@end

@implementation FPModifyFavoritesOperation

- (id)replicateForItems:(id)items
{
  itemsCopy = items;
  v5 = [FPModifyFavoritesOperation alloc];
  items = [(FPTransformOperation *)self items];
  v7 = [items fp_pickItemsFromArray:self->_ranks correspondingToIndexesOfItemsInArray:itemsCopy];
  v8 = [(FPModifyFavoritesOperation *)v5 initWithItems:itemsCopy favoriteRanks:v7 isUnfavorite:self->_isUnfavorite];

  return v8;
}

- (FPModifyFavoritesOperation)initWithItems:(id)items favoriteRanks:(id)ranks isUnfavorite:(BOOL)unfavorite
{
  itemsCopy = items;
  ranksCopy = ranks;
  v14.receiver = self;
  v14.super_class = FPModifyFavoritesOperation;
  v10 = [(FPTransformOperation *)&v14 initWithItemsOfDifferentProviders:itemsCopy action:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_ranks, ranks);
    v11->_isUnfavorite = unfavorite;
    if (!unfavorite)
    {
      v12 = [itemsCopy count];
      if (v12 != [(NSArray *)v11->_ranks count])
      {
        [FPModifyFavoritesOperation initWithItems:favoriteRanks:isUnfavorite:];
      }
    }

    [(FPActionOperation *)v11 setSetupRemoteOperationService:1];
  }

  return v11;
}

- (unint64_t)transformItem:(id)item atIndex:(unint64_t)index
{
  itemCopy = item;
  v7 = itemCopy;
  if (self->_isUnfavorite)
  {
    [itemCopy setFavoriteRank:0];
  }

  else
  {
    v8 = [(NSArray *)self->_ranks objectAtIndexedSubscript:index];
    [v7 setFavoriteRank:v8];
  }

  [v7 setState:{objc_msgSend(v7, "state") & 0xFFFFFFFFFFFFFFFBLL}];

  return 32;
}

- (id)fp_prettyDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = FPAbbreviatedArrayDescription(self->_ranks);
  items = [(FPTransformOperation *)self items];
  fp_itemIdentifiers = [items fp_itemIdentifiers];
  v7 = FPAbbreviatedArrayDescription(fp_itemIdentifiers);
  v8 = [v3 stringWithFormat:@"set favorite rank %@ on %@", v4, v7];

  return v8;
}

- (void)initWithItems:favoriteRanks:isUnfavorite:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v0 object:v1 file:@"FPActionOperation.m" lineNumber:1382 description:{@"%@ needs to be initialized with either the same number of ranks and items or to unfavorite", objc_opt_class()}];
}

@end