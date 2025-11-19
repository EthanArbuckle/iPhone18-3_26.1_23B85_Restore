@interface FPModifyFavoritesOperation
- (FPModifyFavoritesOperation)initWithItems:(id)a3 favoriteRanks:(id)a4 isUnfavorite:(BOOL)a5;
- (id)fp_prettyDescription;
- (id)replicateForItems:(id)a3;
- (unint64_t)transformItem:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation FPModifyFavoritesOperation

- (id)replicateForItems:(id)a3
{
  v4 = a3;
  v5 = [FPModifyFavoritesOperation alloc];
  v6 = [(FPTransformOperation *)self items];
  v7 = [v6 fp_pickItemsFromArray:self->_ranks correspondingToIndexesOfItemsInArray:v4];
  v8 = [(FPModifyFavoritesOperation *)v5 initWithItems:v4 favoriteRanks:v7 isUnfavorite:self->_isUnfavorite];

  return v8;
}

- (FPModifyFavoritesOperation)initWithItems:(id)a3 favoriteRanks:(id)a4 isUnfavorite:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = FPModifyFavoritesOperation;
  v10 = [(FPTransformOperation *)&v14 initWithItemsOfDifferentProviders:v8 action:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_ranks, a4);
    v11->_isUnfavorite = a5;
    if (!a5)
    {
      v12 = [v8 count];
      if (v12 != [(NSArray *)v11->_ranks count])
      {
        [FPModifyFavoritesOperation initWithItems:favoriteRanks:isUnfavorite:];
      }
    }

    [(FPActionOperation *)v11 setSetupRemoteOperationService:1];
  }

  return v11;
}

- (unint64_t)transformItem:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_isUnfavorite)
  {
    [v6 setFavoriteRank:0];
  }

  else
  {
    v8 = [(NSArray *)self->_ranks objectAtIndexedSubscript:a4];
    [v7 setFavoriteRank:v8];
  }

  [v7 setState:{objc_msgSend(v7, "state") & 0xFFFFFFFFFFFFFFFBLL}];

  return 32;
}

- (id)fp_prettyDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = FPAbbreviatedArrayDescription(self->_ranks);
  v5 = [(FPTransformOperation *)self items];
  v6 = [v5 fp_itemIdentifiers];
  v7 = FPAbbreviatedArrayDescription(v6);
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