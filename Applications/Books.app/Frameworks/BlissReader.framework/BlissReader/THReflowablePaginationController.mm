@interface THReflowablePaginationController
- (BOOL)presentationTypeMatchesPageSize:(CGSize)a3;
- (THReflowablePaginationController)initWithDocumentRoot:(id)a3 sourcePresentationType:(id)a4 targetPresentationType:(id)a5 loadCache:(BOOL)a6 observer:(id)a7;
- (double)paginationProgress;
- (id)loadOperationForContentNode:(id)a3 loadOperationCompletionDelegate:(id)a4 priority:(int64_t)a5;
- (id)p_queuePaginationOperationForContentNode:(id)a3 nodeBody:(id)a4 priority:(int64_t)a5 isForeground:(BOOL)a6;
- (id)paginateContentNode:(id)a3 paginationCompletionDelegate:(id)a4 priority:(int64_t)a5 isForeground:(BOOL)a6 activity:(id)a7;
- (id)paginationResultForContentNode:(id)a3;
- (unint64_t)numberOfContentNodes;
- (unint64_t)paginationCount;
- (void)assignContentNodes;
- (void)contentLoadOperation:(id)a3 loadedContentBodies:(id)a4;
- (void)contentLoadOperationFailed:(id)a3;
- (void)contentPaginationOperation:(id)a3 paginatedNodeBody:(id)a4 forPresentationType:(id)a5;
- (void)dealloc;
- (void)loadPaginationCache;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)p_updatePageNumbers;
- (void)p_updatePaginationInProgress;
- (void)paginate;
- (void)registerObserver:(id)a3;
- (void)savePaginationCache;
- (void)setPaginationInProgress:(BOOL)a3;
- (void)setPresentationType:(id)a3;
- (void)stopPagination;
- (void)teardown;
- (void)unregisterObserver:(id)a3;
- (void)updatePaginationResult:(id)a3;
- (void)updatePaginationResult:(id)a3 presentationType:(id)a4;
@end

@implementation THReflowablePaginationController

- (THReflowablePaginationController)initWithDocumentRoot:(id)a3 sourcePresentationType:(id)a4 targetPresentationType:(id)a5 loadCache:(BOOL)a6 observer:(id)a7
{
  v8 = a6;
  v17.receiver = self;
  v17.super_class = THReflowablePaginationController;
  v12 = [(THReflowablePaginationController *)&v17 init];
  if (v12)
  {
    v12->_documentRoot = a3;
    v12->_sourcePresentationType = a4;
    v12->_presentationType = [a5 copyFixingSize];
    v12->_paginationResults = objc_alloc_init(NSMutableDictionary);
    v12->_paginationCompletions = objc_alloc_init(TSUPointerKeyDictionary);
    v12->_loadCompletions = objc_alloc_init(TSUPointerKeyDictionary);
    v13 = objc_alloc_init(NSOperationQueue);
    v12->_paginationQueue = v13;
    [(NSOperationQueue *)v13 setMaxConcurrentOperationCount:1];
    v14 = objc_alloc_init(NSOperationQueue);
    v12->_loadQueue = v14;
    [(NSOperationQueue *)v14 setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v12->_paginationQueue addObserver:v12 forKeyPath:@"operationCount" options:0 context:0];
    [(NSOperationQueue *)v12->_loadQueue addObserver:v12 forKeyPath:@"operationCount" options:0 context:0];
    v15 = objc_alloc_init(NSMutableArray);
    v12->_observers = v15;
    [(NSMutableArray *)v15 addObject:a7];
    if (v8)
    {
      [(THReflowablePaginationController *)v12 loadPaginationCache];
    }
  }

  return v12;
}

- (void)teardown
{
  objc_sync_enter(self);

  self->_observers = 0;
  self->_documentRoot = 0;

  self->_sourcePresentationType = 0;
  self->_presentationType = 0;

  self->_paginationResults = 0;
  self->_paginationCompletions = 0;

  self->_loadCompletions = 0;
  [(NSOperationQueue *)self->_paginationQueue removeObserver:self forKeyPath:@"operationCount"];
  [(NSOperationQueue *)self->_paginationQueue cancelAllOperations];

  self->_paginationQueue = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSOperationQueue *)self->_loadQueue operations];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 delegate] == self)
        {
          [v7 setDelegate:0];
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [(NSOperationQueue *)self->_loadQueue removeObserver:self forKeyPath:@"operationCount"];
  [(NSOperationQueue *)self->_loadQueue cancelAllOperations];

  self->_loadQueue = 0;
  objc_sync_exit(self);
}

- (void)dealloc
{
  [(THReflowablePaginationController *)self teardown];
  v3.receiver = self;
  v3.super_class = THReflowablePaginationController;
  [(THReflowablePaginationController *)&v3 dealloc];
}

- (unint64_t)numberOfContentNodes
{
  if (!self->_numberOfContentNodes)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THReflowablePaginationController *)self documentRoot] navigationModel] navigationUnits];
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          self->_numberOfContentNodes += [objc_msgSend(*(*(&v9 + 1) + 8 * v7) "contentNodes")];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  return self->_numberOfContentNodes;
}

- (void)stopPagination
{
  objc_sync_enter(self);
  [(NSOperationQueue *)[(THReflowablePaginationController *)self loadQueue] cancelAllOperations];
  [(NSOperationQueue *)[(THReflowablePaginationController *)self paginationQueue] cancelAllOperations];

  objc_sync_exit(self);
}

- (void)setPresentationType:(id)a3
{
  objc_sync_enter(self);
  if (![(THPresentationType *)self->_presentationType isEqualIncludingSize:a3])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_E7544;
    v5[3] = &unk_45AE58;
    v5[4] = self;
    v5[5] = a3;
    _os_activity_initiate(&dword_0, "RPC Set presentation Type", OS_ACTIVITY_FLAG_DEFAULT, v5);
  }

  objc_sync_exit(self);
}

- (BOOL)presentationTypeMatchesPageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  objc_sync_enter(self);
  if ([(THReflowablePaginationController *)self presentationType])
  {
    [(THPresentationType *)self->_presentationType pageSize];
    v8 = v7 == height && v6 == width;
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(self);
  return v8;
}

- (void)assignContentNodes
{
  objc_sync_enter(self);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THReflowablePaginationController *)self documentRoot] navigationModel] navigationUnits];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v8 = [v7 contentNodes];
        v9 = [v8 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v9)
        {
          v10 = *v13;
          do
          {
            v11 = 0;
            do
            {
              if (*v13 != v10)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v12 + 1) + 8 * v11) setReflowablePaginationController:self];
              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [v8 countByEnumeratingWithState:&v12 objects:v20 count:16];
          }

          while (v9);
        }

        v6 = v6 + 1;
      }

      while (v6 != v4);
      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  objc_sync_exit(self);
}

- (void)paginate
{
  objc_sync_enter(self);
  [(THReflowablePaginationController *)self setPaginationInProgress:1];
  v3 = _os_activity_create(&dword_0, "RPC Pagination", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_E7A08;
  v4[3] = &unk_45AE58;
  v4[4] = self;
  v4[5] = v3;
  os_activity_apply(v3, v4);

  objc_sync_exit(self);
}

- (void)setPaginationInProgress:(BOOL)a3
{
  if (self->_paginationInProgress != a3)
  {
    v9 = v3;
    v10 = v4;
    self->_paginationInProgress = a3;
    v6 = !a3;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_E7C68;
    block[3] = &unk_45CEE0;
    block[4] = [(THPresentationType *)[(THReflowablePaginationController *)self presentationType] copyFixingSize];
    block[5] = self;
    v8 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)p_updatePaginationInProgress
{
  v3 = [(THReflowablePaginationController *)self paginationComplete]^ 1;

  [(THReflowablePaginationController *)self setPaginationInProgress:v3];
}

- (void)p_updatePageNumbers
{
  objc_sync_enter(self);
  if ([(THReflowablePaginationController *)self paginationComplete])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v3 = [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THReflowablePaginationController *)self documentRoot] navigationModel] navigationUnits];
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v4)
    {
      obj = v3;
      v15 = *v22;
      v5 = 1;
      do
      {
        v6 = 0;
        v16 = v4;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v21 + 1) + 8 * v6);
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v8 = [v7 contentNodes];
          v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v9)
          {
            v10 = *v18;
            do
            {
              for (i = 0; i != v9; i = i + 1)
              {
                if (*v18 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                v12 = *(*(&v17 + 1) + 8 * i);
                v13 = [(THReflowablePaginationController *)self paginationResultForContentNode:v12];
                [v12 setDisplayStartingPageNumber:v5 presentationType:{-[THReflowablePaginationController presentationType](self, "presentationType")}];
                [v13 setFirstPageIndex:v5 - 1];
                if (v13)
                {
                  [v12 setPageCount:objc_msgSend(v13 forPresentationType:{"pageCount"), objc_msgSend(v13, "presentationType")}];
                  v5 += [v13 pageCount];
                }
              }

              v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v9);
          }

          v6 = v6 + 1;
        }

        while (v6 != v16);
        v4 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v4);
    }
  }

  objc_sync_exit(self);
}

- (id)p_queuePaginationOperationForContentNode:(id)a3 nodeBody:(id)a4 priority:(int64_t)a5 isForeground:(BOOL)a6
{
  v8 = [[THReflowableContentPaginationOperation alloc] initWithContentNode:a3 paginationResults:[(THReflowablePaginationController *)self paginationResultForContentNode:?] flowModelContentNodeBody:a4 presentationType:[(THReflowablePaginationController *)self presentationType] documentRoot:[(THReflowablePaginationController *)self documentRoot] isForegroundPagination:a6 delegate:self];
  [(THReflowableContentPaginationOperation *)v8 setQueuePriority:a5];
  [(NSOperationQueue *)[(THReflowablePaginationController *)self paginationQueue] addOperation:v8];

  return v8;
}

- (id)paginateContentNode:(id)a3 paginationCompletionDelegate:(id)a4 priority:(int64_t)a5 isForeground:(BOOL)a6 activity:(id)a7
{
  v7 = a6;
  objc_sync_enter(self);
  if (a4 && ![(TSUPointerKeyDictionary *)[(THReflowablePaginationController *)self paginationCompletions] objectForKey:a3])
  {
    [(TSUPointerKeyDictionary *)[(THReflowablePaginationController *)self paginationCompletions] setObject:a4 forUncopiedKey:a3];
  }

  v12 = [a3 nodeBodyForPresentationType:{-[THReflowablePaginationController sourcePresentationType](self, "sourcePresentationType")}];
  if (v12)
  {
    v13 = [(THReflowablePaginationController *)self p_queuePaginationOperationForContentNode:a3 nodeBody:v12 priority:a5 isForeground:v7];
  }

  else
  {
    v14 = -[THModelContentLoadOperation initWithDelegate:contentNode:documentRoot:applePubURL:documentEntryURI:]([THModelContentLoadOperation alloc], "initWithDelegate:contentNode:documentRoot:applePubURL:documentEntryURI:", self, a3, -[THReflowablePaginationController documentRoot](self, "documentRoot"), -[THBookDescription bookBundleUrl](-[THDocumentRoot bookDescription](-[THReflowablePaginationController documentRoot](self, "documentRoot"), "bookDescription"), "bookBundleUrl"), [a3 applePubRelativePath]);
    [(THModelContentLoadOperation *)v14 setQueuePriority:a5];
    [(NSOperationQueue *)[(THReflowablePaginationController *)self loadQueue] addOperation:v14];

    v13 = 0;
  }

  [(THReflowablePaginationController *)self p_updatePaginationInProgress];
  objc_sync_exit(self);
  return v13;
}

- (unint64_t)paginationCount
{
  objc_sync_enter(self);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(THReflowablePaginationController *)self paginationResults];
  v4 = 0;
  v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v4 += [objc_msgSend(*(*(&v9 + 1) + 8 * v7) "presentationType")];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_sync_exit(self);
  return v4;
}

- (double)paginationProgress
{
  if (![(THReflowablePaginationController *)self numberOfContentNodes])
  {
    return 0.0;
  }

  v3 = [(THReflowablePaginationController *)self paginationCount];
  return v3 / [(THReflowablePaginationController *)self numberOfContentNodes];
}

- (void)savePaginationCache
{
  objc_sync_enter(self);
  if ([(NSMutableDictionary *)[(THReflowablePaginationController *)self paginationResults] count])
  {
    v3 = [(THDocumentRoot *)[(THReflowablePaginationController *)self documentRoot] bookDescription];
    v4 = [[THReflowablePaginationCache alloc] initWithAssetID:[(THAsset *)[(THBookDescription *)v3 asset] assetID] bookVersionString:[(THBookDescription *)v3 bookVersionString] modificationDate:[(THDocumentProperties *)[(THDocumentRoot *)[(THReflowablePaginationController *)self documentRoot] properties] modificationDate]];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [(THReflowablePaginationController *)self paginationResults];
    v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v6)
    {
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [(THReflowablePaginationCache *)v4 cacheResult:[(NSMutableDictionary *)[(THReflowablePaginationController *)self paginationResults] objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v8)] forKey:*(*(&v9 + 1) + 8 * v8)];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(THReflowablePaginationCache *)v4 archive];
  }

  objc_sync_exit(self);
}

- (void)loadPaginationCache
{
  v3 = [(THDocumentRoot *)[(THReflowablePaginationController *)self documentRoot] bookDescription];
  v4 = [THReflowablePaginationCache loadFromArchiveWithAssetID:[(THAsset *)[(THBookDescription *)v3 asset] assetID] bookVersionString:[(THBookDescription *)v3 bookVersionString] modificationDate:[(THDocumentProperties *)[(THDocumentRoot *)[(THReflowablePaginationController *)self documentRoot] properties] modificationDate]];
  objc_sync_enter(self);
  v5 = [v4 keyEnumerator];
  while (1)
  {
    v6 = [v5 nextObject];
    if (!v6)
    {
      break;
    }

    v7 = [v4 cachedResultsForKey:v6];
    if (-[THDocumentNavigationModel contentNodeForGUID:](-[THDocumentRoot navigationModel](-[THReflowablePaginationController documentRoot](self, "documentRoot"), "navigationModel"), "contentNodeForGUID:", [v7 nodeGUID]))
    {
      -[THReflowablePaginationController updatePaginationResult:presentationType:](self, "updatePaginationResult:presentationType:", v7, [v6 presentationType]);
    }
  }

  objc_sync_exit(self);
}

- (id)paginationResultForContentNode:(id)a3
{
  objc_sync_enter(self);
  v5 = [[THPaginationResultsKey alloc] initWithContentNode:a3 presentationType:[(THReflowablePaginationController *)self presentationType]];
  v6 = [(NSMutableDictionary *)[(THReflowablePaginationController *)self paginationResults] objectForKey:v5];

  objc_sync_exit(self);
  return v6;
}

- (void)updatePaginationResult:(id)a3
{
  v5 = [(THReflowablePaginationController *)self presentationType];

  [(THReflowablePaginationController *)self updatePaginationResult:a3 presentationType:v5];
}

- (void)updatePaginationResult:(id)a3 presentationType:(id)a4
{
  objc_sync_enter(self);
  v7 = -[THPaginationResultsKey initWithContentNodeGUID:presentationType:]([THPaginationResultsKey alloc], "initWithContentNodeGUID:presentationType:", [a3 nodeGUID], a4);
  if ([(NSMutableDictionary *)[(THReflowablePaginationController *)self paginationResults] objectForKey:v7])
  {
    [(NSMutableDictionary *)[(THReflowablePaginationController *)self paginationResults] removeObjectForKey:v7];
  }

  if (a3)
  {
    [(NSMutableDictionary *)[(THReflowablePaginationController *)self paginationResults] setObject:a3 forKey:v7];
  }

  objc_sync_exit(self);
}

- (id)loadOperationForContentNode:(id)a3 loadOperationCompletionDelegate:(id)a4 priority:(int64_t)a5
{
  objc_sync_enter(self);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(NSOperationQueue *)[(THReflowablePaginationController *)self loadQueue] operations];
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 contentNode] == a3)
        {
          [v13 setQueuePriority:a5];
          v15 = v13;
          v14 = v15;
          if (a4 && v15 && ![(TSUPointerKeyDictionary *)[(THReflowablePaginationController *)self loadCompletions] objectForKey:a3])
          {
            [(TSUPointerKeyDictionary *)[(THReflowablePaginationController *)self loadCompletions] setObject:a4 forUncopiedKey:a3];
          }

          goto LABEL_14;
        }
      }

      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:
  objc_sync_exit(self);
  return v14;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:@"operationCount"] && (-[THReflowablePaginationController paginationQueue](self, "paginationQueue") == a4 || -[THReflowablePaginationController loadQueue](self, "loadQueue") == a4))
  {

    [(THReflowablePaginationController *)self paginationQueue];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = THReflowablePaginationController;
    [(THReflowablePaginationController *)&v11 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:a6];
  }
}

- (void)registerObserver:(id)a3
{
  objc_sync_enter(self);
  if (([(NSMutableArray *)[(THReflowablePaginationController *)self observers] tsu_containsObjectIdenticalTo:a3]& 1) == 0)
  {
    [(NSMutableArray *)[(THReflowablePaginationController *)self observers] addObject:a3];
  }

  objc_sync_exit(self);
}

- (void)unregisterObserver:(id)a3
{
  objc_sync_enter(self);
  if ([(NSMutableArray *)[(THReflowablePaginationController *)self observers] tsu_containsObjectIdenticalTo:a3])
  {
    [(NSMutableArray *)[(THReflowablePaginationController *)self observers] removeObjectIdenticalTo:a3];
  }

  objc_sync_exit(self);
}

- (void)contentPaginationOperation:(id)a3 paginatedNodeBody:(id)a4 forPresentationType:(id)a5
{
  objc_sync_enter(self);
  v8 = [a3 paginationResults];
  if (!-[THReflowablePaginationController paginationResultForContentNode:](self, "paginationResultForContentNode:", [a3 contentNode]))
  {
    v9 = -[THPaginationResultsKey initWithContentNode:presentationType:]([THPaginationResultsKey alloc], "initWithContentNode:presentationType:", [a3 contentNode], -[THReflowablePaginationController presentationType](self, "presentationType"));
    if ([a3 paginationResults])
    {
      -[NSMutableDictionary setObject:forKey:](-[THReflowablePaginationController paginationResults](self, "paginationResults"), "setObject:forKey:", [a3 paginationResults], v9);
    }
  }

  [objc_msgSend(a3 "contentNode")];
  v10 = -[TSUPointerKeyDictionary objectForKey:](-[THReflowablePaginationController paginationCompletions](self, "paginationCompletions"), "objectForKey:", [a3 contentNode]);
  if (v10)
  {
    [v10 paginationController:self paginatedBody:objc_msgSend(a3 forPresentationType:{"paginatedModelContentNodeBody"), a5}];
    -[TSUPointerKeyDictionary removeObjectForKey:](-[THReflowablePaginationController paginationCompletions](self, "paginationCompletions"), "removeObjectForKey:", [a3 contentNode]);
  }

  v11 = [a3 contentNode];
  [(THReflowablePaginationController *)self paginationProgress];
  v13 = v12;
  v14 = [(THReflowablePaginationController *)self paginationComplete];
  v15 = v14;
  if (v14)
  {
    [(THReflowablePaginationController *)self p_updatePageNumbers];
    [(THReflowablePaginationController *)self p_updatePaginationInProgress];
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_E8E5C;
  v16[3] = &unk_45D3E0;
  v16[4] = self;
  v16[5] = v11;
  v16[6] = v13;
  v17 = v15;
  dispatch_async(&_dispatch_main_q, v16);
  objc_sync_exit(self);
}

- (void)contentLoadOperation:(id)a3 loadedContentBodies:(id)a4
{
  objc_sync_enter(self);
  v7 = -[TSUPointerKeyDictionary objectForKey:](-[THReflowablePaginationController loadCompletions](self, "loadCompletions"), "objectForKey:", [a3 contentNode]);
  if (v7)
  {
    [v7 contentLoadOperation:a3 loadedContentBodies:a4];
    -[TSUPointerKeyDictionary removeObjectForKey:](-[THReflowablePaginationController loadCompletions](self, "loadCompletions"), "removeObjectForKey:", [a3 contentNode]);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [a4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v16 = a3;
      v9 = 0;
      v10 = 0;
      v11 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(a4);
          }

          objc_opt_class();
          v13 = TSUDynamicCast();
          if (v13)
          {
            v14 = [a4 objectForKey:v13];
            if (v9 & 1 | (([v13 isFlow] & 1) == 0))
            {
              v15 = [v13 isPaginated];
              v9 |= v15;
              if (v15)
              {
                v10 = 0;
              }
            }

            else
            {
              v9 = 0;
              v10 = v14;
            }
          }
        }

        v8 = [a4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
      if (!(v9 & 1 | (v10 == 0)))
      {
        -[THReflowablePaginationController p_queuePaginationOperationForContentNode:nodeBody:priority:isForeground:](self, "p_queuePaginationOperationForContentNode:nodeBody:priority:isForeground:", [v16 contentNode], v10, 0, 0);
      }
    }
  }

  objc_sync_exit(self);
}

- (void)contentLoadOperationFailed:(id)a3
{
  objc_sync_enter(self);
  v5 = -[TSUPointerKeyDictionary objectForKey:](-[THReflowablePaginationController loadCompletions](self, "loadCompletions"), "objectForKey:", [a3 contentNode]);
  if (v5)
  {
    [v5 contentLoadOperationFailed:a3];
    -[TSUPointerKeyDictionary removeObjectForKey:](-[THReflowablePaginationController loadCompletions](self, "loadCompletions"), "removeObjectForKey:", [a3 contentNode]);
  }

  objc_sync_exit(self);
}

@end