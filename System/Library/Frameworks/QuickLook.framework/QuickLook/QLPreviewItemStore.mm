@interface QLPreviewItemStore
- (BOOL)hasLoadedItemsMatching:(id)matching;
- (QLPreviewItemProvider)itemProvider;
- (QLPreviewItemStore)init;
- (QLPreviewItemStore)initWithItemsOfDirectoryAtURL:(id)l;
- (QLPreviewItemStore)initWithPreviewItems:(id)items;
- (QLPreviewItemStoreDelegate)delegate;
- (_NSRange)possibleRange;
- (id)loadedItemsMatching:(id)matching;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (int64_t)indexOfPreviewItem:(id)item;
- (void)clearCache;
- (void)clearItems;
- (void)dealloc;
- (void)previewItemAtIndex:(unint64_t)index withCompletionHandler:(id)handler;
- (void)reloadWithNumberOfPreviewItems:(unint64_t)items;
- (void)resolvedPreviewItemAtIndex:(unint64_t)index withCompletionHandler:(id)handler;
@end

@implementation QLPreviewItemStore

- (QLPreviewItemStore)init
{
  v6.receiver = self;
  v6.super_class = QLPreviewItemStore;
  v2 = [(QLPreviewItemStore *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (QLPreviewItemStore)initWithPreviewItems:(id)items
{
  v23 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v21.receiver = self;
  v21.super_class = QLPreviewItemStore;
  v5 = [(QLPreviewItemStore *)&v21 init];
  v6 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [MEMORY[0x277D43F58] itemWithPreviewItem:{*(*(&v17 + 1) + 8 * v11), v17}];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }

  v13 = [[QLDataSource alloc] initWithPreviewItems:v6];
  internalItemProvider = v5->_internalItemProvider;
  v5->_internalItemProvider = v13;

  [(QLPreviewItemStore *)v5 setItemProvider:v5->_internalItemProvider];
  -[QLPreviewItemStore reloadWithNumberOfPreviewItems:](v5, "reloadWithNumberOfPreviewItems:", [v7 count]);

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (QLPreviewItemStore)initWithItemsOfDirectoryAtURL:(id)l
{
  v33 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v31.receiver = self;
  v31.super_class = QLPreviewItemStore;
  v23 = [(QLPreviewItemStore *)&v31 init];
  v24 = lCopy;
  v5 = [lCopy url];
  startAccessingSecurityScopedResource = [v5 startAccessingSecurityScopedResource];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  array = [MEMORY[0x277CBEA60] array];
  v22 = defaultManager;
  v8 = [defaultManager enumeratorAtURL:v5 includingPropertiesForKeys:array options:22 errorHandler:&__block_literal_global_3];

  v25 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = MEMORY[0x23EE8CB40](v5);
        if (v14)
        {
          MEMORY[0x23EE8CB30](v13, v14);
        }

        v15 = [MEMORY[0x277CC6438] wrapperWithSecurityScopedURL:v13];
        v16 = [objc_alloc(MEMORY[0x277D43F58]) initWithURLSandboxWrapper:v15];
        relativePath = [v13 relativePath];
        [v16 setRelativePath:relativePath];

        if ([QLPreviewController canPreviewItem:v16])
        {
          [v25 addObject:v16];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  if (startAccessingSecurityScopedResource)
  {
    [v5 stopAccessingSecurityScopedResource];
  }

  [v25 sortUsingComparator:&__block_literal_global_41];
  v23->_isArchive = 1;
  v18 = [(QLPreviewItemStore *)v23 initWithPreviewItems:v25];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __52__QLPreviewItemStore_initWithItemsOfDirectoryAtURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x277D43EF8];
  v7 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_23A714000, v7, OS_LOG_TYPE_ERROR, "Error while enumerating directory containing unarchived entries at URL: %@ #PreviewItemStore", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __52__QLPreviewItemStore_initWithItemsOfDirectoryAtURL___block_invoke_38(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 previewItemTitle];
  v6 = [v4 previewItemTitle];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)reloadWithNumberOfPreviewItems:(unint64_t)items
{
  self->_possibleRange.location = 0;
  self->_possibleRange.length = items;
  [(QLPreviewItemStore *)self clearCache];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = QLPreviewItemStore;
  [(QLPreviewItemStore *)&v4 dealloc];
}

- (void)clearItems
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_cache;
  v3 = [(NSPointerArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setItem:{0, v8}];
      }

      while (v4 != v6);
      v4 = [(NSPointerArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)clearCache
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_possibleRange.length && (WeakRetained = objc_loadWeakRetained(&self->_itemProvider), WeakRetained, WeakRetained))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_cache;
    v5 = [(NSPointerArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v14 + 1) + 8 * v8++) invalidate];
        }

        while (v6 != v8);
        v6 = [(NSPointerArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    strongObjectsPointerArray = [MEMORY[0x277CCAC18] strongObjectsPointerArray];
    cache = self->_cache;
    self->_cache = strongObjectsPointerArray;

    [(NSPointerArray *)self->_cache setCount:[(QLPreviewItemStore *)self numberOfItems]];
    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = self->_cache;
    self->_cache = 0;
    v13 = *MEMORY[0x277D85DE8];
  }
}

- (BOOL)hasLoadedItemsMatching:(id)matching
{
  matchingCopy = matching;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_itemProvider);

  if (WeakRetained && [(QLPreviewItemStore *)self numberOfItems])
  {
    v6 = 0;
    while (1)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [(NSPointerArray *)self->_cache pointerAtIndex:v6];
      v9 = v8;
      if (v8)
      {
        item = [v8 item];
        v11 = matchingCopy[2](matchingCopy, item);

        if (v11)
        {
          break;
        }
      }

      objc_autoreleasePoolPop(v7);
      if ([(QLPreviewItemStore *)self numberOfItems]<= ++v6)
      {
        goto LABEL_7;
      }
    }

    objc_autoreleasePoolPop(v7);
    v12 = 1;
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

  return v12;
}

- (id)loadedItemsMatching:(id)matching
{
  matchingCopy = matching;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_itemProvider);

  if (WeakRetained)
  {
    v6 = objc_opt_new();
    if ([(QLPreviewItemStore *)self numberOfItems])
    {
      v7 = 0;
      do
      {
        v8 = objc_autoreleasePoolPush();
        v9 = [(NSPointerArray *)self->_cache pointerAtIndex:v7];
        v10 = v9;
        if (v9)
        {
          item = [v9 item];
          v12 = matchingCopy[2](matchingCopy, item);

          if (v12)
          {
            item2 = [v10 item];
            [v6 addObject:item2];
          }
        }

        objc_autoreleasePoolPop(v8);
        ++v7;
      }

      while ([(QLPreviewItemStore *)self numberOfItems]> v7);
    }

    v14 = [v6 copy];
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  return v14;
}

- (void)previewItemAtIndex:(unint64_t)index withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_itemProvider);
  if (WeakRetained && (v8 = WeakRetained, v9 = [(QLPreviewItemStore *)self possibleRange], v11 = v10, v8, index >= v9) && index - v9 < v11)
  {
    v12 = handlerCopy;
    QLRunInMainThread();
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __63__QLPreviewItemStore_previewItemAtIndex_withCompletionHandler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) pointerAtIndex:a1[6]];
  if (v2)
  {
    v3 = v2;
    [v2 addCompletionHandler:a1[5]];
  }

  else
  {
    v4 = objc_opt_new();
    [v4 addCompletionHandler:a1[5]];
    [*(a1[4] + 8) replacePointerAtIndex:a1[6] withPointer:v4];
    WeakRetained = objc_loadWeakRetained((a1[4] + 16));
    v6 = a1[6];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__QLPreviewItemStore_previewItemAtIndex_withCompletionHandler___block_invoke_2;
    v7[3] = &unk_278B57630;
    v7[4] = a1[4];
    v3 = v4;
    v8 = v3;
    [WeakRetained previewItemAtIndex:v6 withCompletionHandler:v7];
  }
}

void __63__QLPreviewItemStore_previewItemAtIndex_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = *(a1 + 32);
  v10 = v6;
  v11 = *(a1 + 40);
  v7 = v6;
  v8 = v5;
  QLRunInMainThread();
}

uint64_t __63__QLPreviewItemStore_previewItemAtIndex_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [*(a1 + 40) setCanBeEdited:{objc_msgSend(v4, "itemStore:canEditItem:", *(a1 + 32), *(a1 + 40))}];
  }

  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) delegate];
    [*(a1 + 40) setEditingMode:{objc_msgSend(v7, "itemStore:editingModeForPreviewItem:", *(a1 + 32), *(a1 + 40))}];
  }

  if (![*(a1 + 40) editingMode])
  {
    v8 = [*(a1 + 32) delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [*(a1 + 32) delegate];
      [*(a1 + 40) setEditedFileBehavior:{objc_msgSend(v10, "itemStore:editedFileBehaviorForItem:", *(a1 + 32), *(a1 + 40))}];
    }
  }

  v11 = [*(a1 + 32) delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [*(a1 + 32) delegate];
    [*(a1 + 40) setShouldPreventMachineReadableCodeDetection:{objc_msgSend(v13, "itemStore:canMachineReadableCodeBeDetectedInPreviewItem:", *(a1 + 32), *(a1 + 40)) ^ 1}];
  }

  v14 = [*(a1 + 32) delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [*(a1 + 32) delegate];
    [*(a1 + 40) setCanHandleEditedCopy:{objc_msgSend(v16, "itemStore:canHandleEditedCopyOfPreviewItem:", *(a1 + 32), *(a1 + 40))}];
  }

  v17 = [*(a1 + 32) delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [*(a1 + 32) delegate];
    [*(a1 + 40) setCanBeShared:{objc_msgSend(v19, "itemStore:canShareItem:", *(a1 + 32), *(a1 + 40))}];
  }

  v20 = [*(a1 + 40) fetcher];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v22 = *(a1 + 48);
    v23 = [*(a1 + 40) fetcher];
    [v23 setUrlProvider:v22];
  }

  v24 = *(a1 + 40);
  v25 = *(a1 + 56);

  return [v25 setItem:v24];
}

- (void)resolvedPreviewItemAtIndex:(unint64_t)index withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__QLPreviewItemStore_resolvedPreviewItemAtIndex_withCompletionHandler___block_invoke;
  v8[3] = &unk_278B57C58;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(QLPreviewItemStore *)self previewItemAtIndex:index withCompletionHandler:v8];
}

void __71__QLPreviewItemStore_resolvedPreviewItemAtIndex_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fetcher];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v7 = [v3 fetcher];
    v8 = objc_opt_new();
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__QLPreviewItemStore_resolvedPreviewItemAtIndex_withCompletionHandler___block_invoke_2;
    v9[3] = &unk_278B57C30;
    v10 = v3;
    v11 = *(a1 + 32);
    [v7 fetchContentWithAllowedOutputClasses:v6 inQueue:v8 updateBlock:0 completionBlock:v9];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __71__QLPreviewItemStore_resolvedPreviewItemAtIndex_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_alloc(MEMORY[0x277CDAB18]);
    v4 = [v3 initWithURL:v6 sandboxType:*MEMORY[0x277D861B8]];
    [*(a1 + 32) setGeneratedURLHandler:v4];
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

- (int64_t)indexOfPreviewItem:(id)item
{
  itemCopy = item;
  if ([(QLPreviewItemStore *)self numberOfItems])
  {
    v5 = 0;
    while (1)
    {
      v6 = [-[NSPointerArray pointerAtIndex:](self->_cache pointerAtIndex:{v5), "item"}];
      v7 = [itemCopy isEqual:v6];

      if (v7)
      {
        break;
      }

      if ([(QLPreviewItemStore *)self numberOfItems]<= ++v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  controllerCopy = controller;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v7 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__QLPreviewItemStore_previewController_previewItemAtIndex___block_invoke;
  v12[3] = &unk_278B57C80;
  v14 = &v15;
  v8 = v7;
  v13 = v8;
  [(QLPreviewItemStore *)self previewItemAtIndex:index withCompletionHandler:v12];
  v9 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v8, v9);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __59__QLPreviewItemStore_previewController_previewItemAtIndex___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (QLPreviewItemProvider)itemProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_itemProvider);

  return WeakRetained;
}

- (_NSRange)possibleRange
{
  objc_copyStruct(v4, &self->_possibleRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (QLPreviewItemStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end