@interface FPSearchQueryEnumerator
- (FPSearchQueryEnumerator)initWithSearchQuery:(id)a3 mountPoint:(id)a4;
- (id)_createSearchQuery;
- (void)_gatherItemsWithCompletionBlock:(id)a3;
- (void)enumerateItemsForObserver:(id)a3 startingAtPage:(id)a4;
- (void)invalidate;
@end

@implementation FPSearchQueryEnumerator

- (FPSearchQueryEnumerator)initWithSearchQuery:(id)a3 mountPoint:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = FPSearchQueryEnumerator;
  v9 = [(FPSearchQueryEnumerator *)&v14 init];
  if (v9)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(FPSearchQueryEnumerator *)v9 initWithSearchQuery:v8 mountPoint:v10];
    }

    objc_storeStrong(&v9->_fileProviderSearchQuery, a3);
    v11 = [v8 copy];
    mountPoint = v9->_mountPoint;
    v9->_mountPoint = v11;
  }

  return v9;
}

- (void)enumerateItemsForObserver:(id)a3 startingAtPage:(id)a4
{
  v5 = a3;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [FPSearchQueryEnumerator enumerateItemsForObserver:v6 startingAtPage:?];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__FPSearchQueryEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke;
  v8[3] = &unk_1E793EE90;
  v9 = v5;
  v7 = v5;
  [(FPSearchQueryEnumerator *)self _gatherItemsWithCompletionBlock:v8];
}

void __68__FPSearchQueryEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __68__FPSearchQueryEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke_cold_1(v6, v8);
    }

    v9 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696AA08];
    v14[0] = v6;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [v9 errorWithDomain:@"NSFileProviderErrorDomain" code:-1004 userInfo:v10];

    [*(a1 + 32) finishEnumeratingWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __68__FPSearchQueryEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke_cold_2(v5, v8);
    }

    [*(a1 + 32) didEnumerateItems:v5];
    [*(a1 + 32) finishEnumeratingUpToPage:0];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  searchQuery = self->_searchQuery;
  if (searchQuery)
  {
    [(CSSearchQuery *)searchQuery cancel];
    v4 = self->_searchQuery;
    self->_searchQuery = 0;
  }
}

- (void)_gatherItemsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(FPSearchQueryEnumerator *)self _createSearchQuery];
  v6 = objc_opt_new();
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__FPSearchQueryEnumerator__gatherItemsWithCompletionBlock___block_invoke;
  v16[3] = &unk_1E793EEB8;
  v7 = v6;
  v17 = v7;
  [(CSSearchQuery *)v5 setFoundItemsHandler:v16];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__FPSearchQueryEnumerator__gatherItemsWithCompletionBlock___block_invoke_2;
  v12[3] = &unk_1E793EEE0;
  objc_copyWeak(&v15, &location);
  v8 = v4;
  v14 = v8;
  v9 = v7;
  v13 = v9;
  [(CSSearchQuery *)v5 setCompletionHandler:v12];
  [(CSSearchQuery *)v5 start];
  searchQuery = self->_searchQuery;
  self->_searchQuery = v5;
  v11 = v5;

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __59__FPSearchQueryEnumerator__gatherItemsWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v7)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    v5 = [v4 _fpItemsFromSearchableItems:*(a1 + 32)];

    (*(*(a1 + 40) + 16))();
    if (WeakRetained)
    {
      v6 = WeakRetained[3];
      WeakRetained[3] = 0;
    }
  }
}

- (id)_createSearchQuery
{
  v43[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];

  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v5 = getCSSearchQueryContextClass_softClass_1;
  v40 = getCSSearchQueryContextClass_softClass_1;
  if (!getCSSearchQueryContextClass_softClass_1)
  {
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __getCSSearchQueryContextClass_block_invoke_1;
    v35 = &unk_1E793A2E8;
    v36 = &v37;
    __getCSSearchQueryContextClass_block_invoke_1(&v32);
    v5 = v38[3];
  }

  v6 = v5;
  _Block_object_dispose(&v37, 8);
  v7 = objc_opt_new();
  v8 = FPDefaultFetchedAttributes();
  [v7 setFetchAttributes:v8];

  v9 = objc_opt_new();
  if (self->_mountPoint)
  {
    v43[0] = self->_mountPoint;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
    [v7 setMountPoints:v10];
  }

  v42 = v4;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v12 = FPFileProviderOriginatedItemsQueryStringFragment(v11);

  [v9 addObject:v12];
  v13 = [(NSFileProviderSearchQuery *)self->_fileProviderSearchQuery filename];
  LOBYTE(v11) = v13 == 0;

  if ((v11 & 1) == 0)
  {
    v14 = [(NSFileProviderSearchQuery *)self->_fileProviderSearchQuery filename];
    v15 = [(NSFileProviderSearchQuery *)self->_fileProviderSearchQuery keyboardLanguage];
    v16 = FPSpotlightQueryStringForFilename(v14, v15);

    [v9 addObject:v16];
  }

  v17 = [(NSFileProviderSearchQuery *)self->_fileProviderSearchQuery allowedContentTypes];
  v18 = [v17 allObjects];
  v19 = FPContentTypeQueryStringForFileTypes(v18, MEMORY[0x1E695E0F0]);

  [v9 addObject:v19];
  v20 = [(NSFileProviderSearchQuery *)self->_fileProviderSearchQuery csQueryScopes];
  [v7 setScopes:v20];

  if ([(NSFileProviderSearchQuery *)self->_fileProviderSearchQuery trashedItemsMembership])
  {
    v21 = FPIsTrashedQueryStringFragment([(NSFileProviderSearchQuery *)self->_fileProviderSearchQuery trashedItemsMembership]== 2);
    [v9 addObject:v21];
  }

  v22 = [(NSFileProviderSearchQuery *)self->_fileProviderSearchQuery scopeFragment];
  v23 = v22 == 0;

  if (!v23)
  {
    v24 = [(NSFileProviderSearchQuery *)self->_fileProviderSearchQuery scopeFragment];
    [v9 addObject:v24];
  }

  v25 = [v9 componentsJoinedByString:@" && "];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v26 = getCSSearchQueryClass_softClass_1;
  v40 = getCSSearchQueryClass_softClass_1;
  if (!getCSSearchQueryClass_softClass_1)
  {
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __getCSSearchQueryClass_block_invoke_1;
    v35 = &unk_1E793A2E8;
    v36 = &v37;
    __getCSSearchQueryClass_block_invoke_1(&v32);
    v26 = v38[3];
  }

  v27 = v26;
  _Block_object_dispose(&v37, 8);
  v28 = [[v26 alloc] initWithQueryString:v25 context:v7];
  v41 = *MEMORY[0x1E696A388];
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  [v28 setProtectionClasses:v29];

  v30 = *MEMORY[0x1E69E9840];

  return v28;
}

FPItem *__55__FPSearchQueryEnumerator__fpItemsFromSearchableItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FPItem alloc] initWithSearchableItem:v2];
  if (!v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__FPSearchQueryEnumerator__fpItemsFromSearchableItems___block_invoke_cold_1();
    }
  }

  return v3;
}

- (void)initWithSearchQuery:(NSObject *)a3 mountPoint:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_2();
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] New %@ for mount point: %@", v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __68__FPSearchQueryEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Error occurred while enumerating items: %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __68__FPSearchQueryEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Successfully enumerated %ld items", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __55__FPSearchQueryEnumerator__fpItemsFromSearchableItems___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1AAAE1000, v0, OS_LOG_TYPE_ERROR, "[ERROR] Unable to transform searchable item to FileProvider item: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end