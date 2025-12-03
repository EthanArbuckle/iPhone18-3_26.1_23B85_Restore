@interface ATXInstalledSuggestedPagesTracker
- (ATXInstalledSuggestedPagesTracker)init;
- (ATXInstalledSuggestedPagesTracker)initWithPath:(id)path;
- (id)_allInstalledPages;
- (id)allInstalledPages;
- (id)identifierOfSuggestedPageForModeUUID:(id)d;
- (int64_t)suggestedPageTypeWithIdentifier:(id)identifier;
- (void)_serializePages:(id)pages;
- (void)removePagesWithIdentifiersNotInSet:(id)set;
- (void)storePageIdentifier:(id)identifier modeUUID:(id)d forPageType:(int64_t)type;
- (void)trackSuggestedHomePageWithAction:(int64_t)action pageType:(int64_t)type identifier:(id)identifier;
@end

@implementation ATXInstalledSuggestedPagesTracker

- (id)_allInstalledPages
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_autoreleasePoolPush();
  cache = self->_cache;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v9 = [(ATXGenericFileBasedCache *)cache readSecureCodedObjectWithMaxValidAge:v8 allowableClasses:0 error:3.40282347e38];

  objc_autoreleasePoolPop(v3);

  return v9;
}

- (ATXInstalledSuggestedPagesTracker)init
{
  v3 = [MEMORY[0x1E698B010] appPredictionDirectoryFile:@"InstalledSuggestedPages"];
  v4 = [(ATXInstalledSuggestedPagesTracker *)self initWithPath:v3];

  return v4;
}

- (ATXInstalledSuggestedPagesTracker)initWithPath:(id)path
{
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = ATXInstalledSuggestedPagesTracker;
  v5 = [(ATXInstalledSuggestedPagesTracker *)&v17 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("ATXInstalledSuggestedPagesTracker.queue", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = objc_alloc(MEMORY[0x1E698AFF0]);
    v10 = __atxlog_handle_modes();
    v11 = [v9 initWithCacheFilePath:pathCopy loggingHandle:v10 debugName:@"installed suggested pages"];
    cache = v5->_cache;
    v5->_cache = v11;

    v13 = objc_opt_new();
    suggestedHomePageStream = v5->_suggestedHomePageStream;
    v5->_suggestedHomePageStream = v13;

    v15 = v5;
  }

  return v5;
}

- (id)allInstalledPages
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__ATXInstalledSuggestedPagesTracker_allInstalledPages__block_invoke;
  v5[3] = &unk_1E80C29A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __54__ATXInstalledSuggestedPagesTracker_allInstalledPages__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _allInstalledPages];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (int64_t)suggestedPageTypeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__ATXInstalledSuggestedPagesTracker_suggestedPageTypeWithIdentifier___block_invoke;
  block[3] = &unk_1E80C3A00;
  block[4] = self;
  v10 = identifierCopy;
  v11 = &v12;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __69__ATXInstalledSuggestedPagesTracker_suggestedPageTypeWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _allInstalledPages];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__ATXInstalledSuggestedPagesTracker_suggestedPageTypeWithIdentifier___block_invoke_2;
  v5[3] = &unk_1E80C39D8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v5];
}

void __69__ATXInstalledSuggestedPagesTracker_suggestedPageTypeWithIdentifier___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v5 = [v7 identifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 pageType];
    *a3 = 1;
  }
}

- (id)identifierOfSuggestedPageForModeUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__ATXInstalledSuggestedPagesTracker_identifierOfSuggestedPageForModeUUID___block_invoke;
  block[3] = &unk_1E80C3A00;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __74__ATXInstalledSuggestedPagesTracker_identifierOfSuggestedPageForModeUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _allInstalledPages];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__ATXInstalledSuggestedPagesTracker_identifierOfSuggestedPageForModeUUID___block_invoke_2;
  v5[3] = &unk_1E80C39D8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v5];
}

void __74__ATXInstalledSuggestedPagesTracker_identifierOfSuggestedPageForModeUUID___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 modeUUID];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    v7 = [v10 identifier];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a3 = 1;
  }
}

- (void)_serializePages:(id)pages
{
  pagesCopy = pages;
  dispatch_assert_queue_V2(self->_queue);
  v4 = objc_autoreleasePoolPush();
  [(ATXGenericFileBasedCache *)self->_cache storeSecureCodedObject:pagesCopy error:0];
  objc_autoreleasePoolPop(v4);
}

- (void)trackSuggestedHomePageWithAction:(int64_t)action pageType:(int64_t)type identifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__ATXInstalledSuggestedPagesTracker_trackSuggestedHomePageWithAction_pageType_identifier___block_invoke;
  v11[3] = &unk_1E80C16D8;
  typeCopy = type;
  actionCopy = action;
  v12 = identifierCopy;
  selfCopy = self;
  v10 = identifierCopy;
  dispatch_async(queue, v11);
}

void __90__ATXInstalledSuggestedPagesTracker_trackSuggestedHomePageWithAction_pageType_identifier___block_invoke(void *a1)
{
  v2 = [[ATXBiomeSuggestedHomePageEvent alloc] initWithPageType:a1[6] identifier:a1[4] action:a1[7]];
  [*(a1[5] + 24) sendEvent:v2];
}

- (void)storePageIdentifier:(id)identifier modeUUID:(id)d forPageType:(int64_t)type
{
  identifierCopy = identifier;
  dCopy = d;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__ATXInstalledSuggestedPagesTracker_storePageIdentifier_modeUUID_forPageType___block_invoke;
  v13[3] = &unk_1E80C2DC0;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = dCopy;
  typeCopy = type;
  v11 = dCopy;
  v12 = identifierCopy;
  dispatch_async(queue, v13);
}

void __78__ATXInstalledSuggestedPagesTracker_storePageIdentifier_modeUUID_forPageType___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _allInstalledPages];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  v6 = objc_opt_new();
  [v6 setIdentifier:*(a1 + 40)];
  [v6 setPageType:*(a1 + 56)];
  [v6 setModeUUID:*(a1 + 48)];
  [v5 removeObject:v6];
  [v5 addObject:v6];
  [*(a1 + 32) trackSuggestedHomePageWithAction:0 pageType:*(a1 + 56) identifier:*(a1 + 40)];
  v7 = __atxlog_handle_modes();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXInstalledSuggestedPagesTracker: Adding installed suggested page: %@", &v8, 0xCu);
  }

  [*(a1 + 32) _serializePages:v5];
}

- (void)removePagesWithIdentifiersNotInSet:(id)set
{
  setCopy = set;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__ATXInstalledSuggestedPagesTracker_removePagesWithIdentifiersNotInSet___block_invoke;
  v7[3] = &unk_1E80C0958;
  v7[4] = self;
  v8 = setCopy;
  v6 = setCopy;
  dispatch_async(queue, v7);
}

void __72__ATXInstalledSuggestedPagesTracker_removePagesWithIdentifiersNotInSet___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _allInstalledPages];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __72__ATXInstalledSuggestedPagesTracker_removePagesWithIdentifiersNotInSet___block_invoke_2;
  v21[3] = &unk_1E80C3A28;
  v22 = *(a1 + 40);
  v6 = [v5 objectsPassingTest:v21];
  if ([v6 count])
  {
    v7 = __atxlog_handle_modes();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXInstalledSuggestedPagesTracker: Removing installed suggested pages: %@", buf, 0xCu);
    }

    [v5 minusSet:v6];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = *(a1 + 32);
          v15 = [v13 pageType];
          v16 = [v13 identifier];
          [v14 trackSuggestedHomePageWithAction:1 pageType:v15 identifier:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v10);
    }

    [*(a1 + 32) _serializePages:v5];
  }
}

uint64_t __72__ATXInstalledSuggestedPagesTracker_removePagesWithIdentifiersNotInSet___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

@end