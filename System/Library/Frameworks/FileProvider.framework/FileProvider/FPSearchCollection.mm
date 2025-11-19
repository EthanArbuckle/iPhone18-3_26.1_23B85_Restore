@interface FPSearchCollection
- (BOOL)isCollectionValidForItem:(id)a3;
- (FPSearchCollection)init;
- (NSFileProviderSearchQuery)searchQuery;
- (id)_createDescriptorWithSortDescriptors:(id)a3;
- (id)_enumerationSettingsPredicate;
- (id)createDataSourceWithSortDescriptors:(id)a3;
- (id)scopedSearchQuery;
- (void)setSearchQuery:(id)a3;
@end

@implementation FPSearchCollection

- (FPSearchCollection)init
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = FPSearchCollection;
  return [(FPQueryCollection *)&v5 initWithQueryDescriptorClass:v3 predicate:0 paced:0];
}

- (id)createDataSourceWithSortDescriptors:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(FPSearchCollection *)v6 _enumerationSettingsPredicate];
  [(FPItemCollection *)v6 setAdditionalItemFilteringPredicate:v7];

  v8 = [(FPSearchCollection *)v6 _createDescriptorWithSortDescriptors:v5];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:v6 file:@"FPSearchCollection.m" lineNumber:42 description:@"invalid kind of descriptor class"];
    }
  }

  v9 = [FPSearchQueryDataSource alloc];
  v10 = [(FPQueryCollection *)v6 predicate];
  v11 = [(FPSearchQueryDataSource *)v9 initWithQueryDescriptor:v8 predicate:v10];

  objc_sync_exit(v6);

  return v11;
}

- (id)_createDescriptorWithSortDescriptors:(id)a3
{
  v14.receiver = self;
  v14.super_class = FPSearchCollection;
  v4 = [(FPQueryCollection *)&v14 _createDescriptorWithSortDescriptors:a3];
  v5 = [(FPSearchCollection *)self searchQuery];
  v6 = [v4 settings];
  [v6 setSearchQuery:v5];

  v7 = [(FPSearchCollection *)self searchQuery];
  v8 = [v7 shouldPerformSemanticSearch];
  v9 = [v4 settings];
  [v9 setAllowSemanticSearchResults:v8];

  v10 = [v4 settings];
  v11 = [v10 searchQuery];

  v12 = [v11 toSpotlightQueryString];
  [v4 setSearchQueryString:v12];

  [v4 setThirdPartySearchOnServer:{objc_msgSend(v11, "shouldPerformThirdPartyServerSearch")}];
  [v4 setAvoidCoreSpotlightSearch:{objc_msgSend(v11, "avoidCoreSpotlightSearch")}];

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
  v6 = [(FPQueryCollection *)&v11 _enumerationSettingsPredicate];
  v15[1] = v6;
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

- (BOOL)isCollectionValidForItem:(id)a3
{
  v8 = [v4 enumerationOrigin] == 2 || !self->_filterPredicate || (-[FPQueryCollection settings](self, "settings"), v5 = v4 = a3;

  return v8;
}

- (void)setSearchQuery:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = MEMORY[0x1E696AB28];
  v7 = [v4 filenamePredicate];
  v17[0] = v7;
  v8 = [v4 allowedContentTypesPredicate];
  v17[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v10 = [v6 andPredicateWithSubpredicates:v9];
  filterPredicate = v5->_filterPredicate;
  v5->_filterPredicate = v10;

  v12 = [(FPQueryCollection *)v5 settings];
  [v12 setSearchQuery:v4];

  v13 = [v4 allowedContentTypes];
  v14 = [v13 allObjects];
  v15 = [(FPQueryCollection *)v5 settings];
  [v15 setAllowedFileTypes:v14];

  objc_sync_exit(v5);
  v16 = *MEMORY[0x1E69E9840];
}

- (NSFileProviderSearchQuery)searchQuery
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FPQueryCollection *)v2 settings];
  v4 = [v3 searchQuery];

  objc_sync_exit(v2);

  return v4;
}

- (id)scopedSearchQuery
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"FPSearchCollection.m" lineNumber:135 description:@"UNREACHABLE: A search collection should not provide a search query."];

  return 0;
}

void __51__FPSearchCollection__enumerationSettingsPredicate__block_invoke_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[FPSearchCollection _enumerationSettingsPredicate]_block_invoke"];
  [v1 handleFailureInFunction:v0 file:@"FPSearchCollection.m" lineNumber:73 description:@"weakSelf is nil while evaluating isTrashedPredicate"];
}

@end