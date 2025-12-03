@interface FPSearchTrashCollection
- (FPSearchTrashCollection)init;
- (id)scopedSearchQuery;
- (void)setSearchQuery:(id)query;
@end

@implementation FPSearchTrashCollection

- (FPSearchTrashCollection)init
{
  v3 = +[FPItemManager defaultManager];
  newSearchCollection = [v3 newSearchCollection];
  searchCollection = self->_searchCollection;
  self->_searchCollection = newSearchCollection;

  v6 = +[FPItemManager defaultManager];
  newTrashCollection = [v6 newTrashCollection];
  trashCollection = self->_trashCollection;
  self->_trashCollection = newTrashCollection;

  v10.receiver = self;
  v10.super_class = FPSearchTrashCollection;
  return [(FPUnionCollection *)&v10 initWithCollections:MEMORY[0x1E695E0F0]];
}

- (void)setSearchQuery:(id)query
{
  queryCopy = query;
  trashedItemsMembership = [queryCopy trashedItemsMembership];
  p_searchCollection = &self->_searchCollection;
  searchQuery = [(FPSearchCollection *)self->_searchCollection searchQuery];
  if (searchQuery)
  {
    v8 = self->_selectedMembership != trashedItemsMembership;
  }

  else
  {
    v8 = 1;
  }

  [*p_searchCollection setSearchQuery:queryCopy];
  self->_selectedMembership = trashedItemsMembership;
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

  searchQuery2 = [(FPSearchTrashCollection *)self searchQuery];
  predicate = [searchQuery2 predicate];
  searchQueryPredicate = self->_searchQueryPredicate;
  self->_searchQueryPredicate = predicate;
}

- (id)scopedSearchQuery
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"FPSearchTrashCollection.m" lineNumber:93 description:@"UNREACHABLE: This should never be requested."];

  return 0;
}

@end