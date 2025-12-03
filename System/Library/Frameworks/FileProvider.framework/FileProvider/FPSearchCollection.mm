@interface FPSearchCollection
- (BOOL)isCollectionValidForItem:(id)item;
- (FPSearchCollection)init;
- (NSFileProviderSearchQuery)searchQuery;
- (id)_createDescriptorWithSortDescriptors:(id)descriptors;
- (id)_enumerationSettingsPredicate;
- (id)createDataSourceWithSortDescriptors:(id)descriptors;
- (id)scopedSearchQuery;
- (void)setSearchQuery:(id)query;
@end

@implementation FPSearchCollection

- (FPSearchCollection)init
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = FPSearchCollection;
  return [(FPQueryCollection *)&v5 initWithQueryDescriptorClass:v3 predicate:0 paced:0];
}

- (id)createDataSourceWithSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _enumerationSettingsPredicate = [(FPSearchCollection *)selfCopy _enumerationSettingsPredicate];
  [(FPItemCollection *)selfCopy setAdditionalItemFilteringPredicate:_enumerationSettingsPredicate];

  v8 = [(FPSearchCollection *)selfCopy _createDescriptorWithSortDescriptors:descriptorsCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"FPSearchCollection.m" lineNumber:42 description:@"invalid kind of descriptor class"];
    }
  }

  v9 = [FPSearchQueryDataSource alloc];
  predicate = [(FPQueryCollection *)selfCopy predicate];
  v11 = [(FPSearchQueryDataSource *)v9 initWithQueryDescriptor:v8 predicate:predicate];

  objc_sync_exit(selfCopy);

  return v11;
}

- (id)_createDescriptorWithSortDescriptors:(id)descriptors
{
  v14.receiver = self;
  v14.super_class = FPSearchCollection;
  v4 = [(FPQueryCollection *)&v14 _createDescriptorWithSortDescriptors:descriptors];
  searchQuery = [(FPSearchCollection *)self searchQuery];
  settings = [v4 settings];
  [settings setSearchQuery:searchQuery];

  searchQuery2 = [(FPSearchCollection *)self searchQuery];
  shouldPerformSemanticSearch = [searchQuery2 shouldPerformSemanticSearch];
  settings2 = [v4 settings];
  [settings2 setAllowSemanticSearchResults:shouldPerformSemanticSearch];

  settings3 = [v4 settings];
  searchQuery3 = [settings3 searchQuery];

  toSpotlightQueryString = [searchQuery3 toSpotlightQueryString];
  [v4 setSearchQueryString:toSpotlightQueryString];

  [v4 setThirdPartySearchOnServer:{objc_msgSend(searchQuery3, "shouldPerformThirdPartyServerSearch")}];
  [v4 setAvoidCoreSpotlightSearch:{objc_msgSend(searchQuery3, "avoidCoreSpotlightSearch")}];

  return v4;
}

- (id)_enumerationSettingsPredicate
{
  v15[2] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E696AE18];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__FPSearchCollection__enumerationSettingsPredicate__block_invoke;
  v12[3] = &unk_1E793EDE0;
  objc_copyWeak(&v13, &location);
  v4 = [v3 predicateWithBlock:v12];
  v5 = MEMORY[0x1E696AB28];
  v15[0] = v4;
  v11.receiver = self;
  v11.super_class = FPSearchCollection;
  _enumerationSettingsPredicate = [(FPQueryCollection *)&v11 _enumerationSettingsPredicate];
  v15[1] = _enumerationSettingsPredicate;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v8 = [v5 andPredicateWithSubpredicates:v7];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

uint64_t __51__FPSearchCollection__enumerationSettingsPredicate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (!WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 32));

    if (!v5)
    {
      __51__FPSearchCollection__enumerationSettingsPredicate__block_invoke_cold_1();
    }
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 searchQuery];

  if (v7 && [v7 trashedItemsMembership])
  {
    v8 = [v7 trashedItemsMembership] == 1;
    v9 = [v3 isTrashed] ^ v8;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)isCollectionValidForItem:(id)item
{
  v8 = [v4 enumerationOrigin] == 2 || !self->_filterPredicate || (-[FPQueryCollection settings](self, "settings"), v5 = v4 = item;

  return v8;
}

- (void)setSearchQuery:(id)query
{
  v17[2] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = MEMORY[0x1E696AB28];
  filenamePredicate = [queryCopy filenamePredicate];
  v17[0] = filenamePredicate;
  allowedContentTypesPredicate = [queryCopy allowedContentTypesPredicate];
  v17[1] = allowedContentTypesPredicate;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v10 = [v6 andPredicateWithSubpredicates:v9];
  filterPredicate = selfCopy->_filterPredicate;
  selfCopy->_filterPredicate = v10;

  settings = [(FPQueryCollection *)selfCopy settings];
  [settings setSearchQuery:queryCopy];

  allowedContentTypes = [queryCopy allowedContentTypes];
  allObjects = [allowedContentTypes allObjects];
  settings2 = [(FPQueryCollection *)selfCopy settings];
  [settings2 setAllowedFileTypes:allObjects];

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x1E69E9840];
}

- (NSFileProviderSearchQuery)searchQuery
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  settings = [(FPQueryCollection *)selfCopy settings];
  searchQuery = [settings searchQuery];

  objc_sync_exit(selfCopy);

  return searchQuery;
}

- (id)scopedSearchQuery
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"FPSearchCollection.m" lineNumber:135 description:@"UNREACHABLE: A search collection should not provide a search query."];

  return 0;
}

void __51__FPSearchCollection__enumerationSettingsPredicate__block_invoke_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[FPSearchCollection _enumerationSettingsPredicate]_block_invoke"];
  [v1 handleFailureInFunction:v0 file:@"FPSearchCollection.m" lineNumber:73 description:@"weakSelf is nil while evaluating isTrashedPredicate"];
}

@end