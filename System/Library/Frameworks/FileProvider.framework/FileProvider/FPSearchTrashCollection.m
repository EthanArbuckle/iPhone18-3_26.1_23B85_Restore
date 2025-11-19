@interface FPSearchTrashCollection
- (FPSearchTrashCollection)init;
- (id)scopedSearchQuery;
- (void)setSearchQuery:(id)a3;
@end

@implementation FPSearchTrashCollection

- (FPSearchTrashCollection)init
{
  v3 = +[FPItemManager defaultManager];
  v4 = [v3 newSearchCollection];
  searchCollection = self->_searchCollection;
  self->_searchCollection = v4;

  v6 = +[FPItemManager defaultManager];
  v7 = [v6 newTrashCollection];
  trashCollection = self->_trashCollection;
  self->_trashCollection = v7;

  v10.receiver = self;
  v10.super_class = FPSearchTrashCollection;
  return [(FPUnionCollection *)&v10 initWithCollections:MEMORY[0x1E695E0F0]];
}

- (void)setSearchQuery:(id)a3
{
  v4 = a3;
  v5 = [v4 trashedItemsMembership];
  p_searchCollection = &self->_searchCollection;
  v7 = [(FPSearchCollection *)self->_searchCollection searchQuery];
  if (v7)
  {
    v8 = self->_selectedMembership != v5;
  }

  else
  {
    v8 = 1;
  }

  [*p_searchCollection setSearchQuery:v4];
  self->_selectedMembership = v5;
  v13 = objc_opt_new();
  selectedMembership = self->_selectedMembership;
  if (selectedMembership == 2)
  {
LABEL_8:
    p_searchCollection = &self->_trashCollection;
    goto LABEL_9;
  }

  if (selectedMembership != 1)
  {
    if (selectedMembership)
    {
      goto LABEL_10;
    }

    [v13 addObject:*p_searchCollection];
    goto LABEL_8;
  }

LABEL_9:
  [v13 addObject:*p_searchCollection];
LABEL_10:
  if (v8)
  {
    [(FPUnionCollection *)self setCollections:v13];
  }

  v10 = [(FPSearchTrashCollection *)self searchQuery];
  v11 = [v10 predicate];
  searchQueryPredicate = self->_searchQueryPredicate;
  self->_searchQueryPredicate = v11;
}

- (id)scopedSearchQuery
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"FPSearchTrashCollection.m" lineNumber:93 description:@"UNREACHABLE: This should never be requested."];

  return 0;
}

@end