@interface THReflowablePaginationController
- (BOOL)presentationTypeMatchesPageSize:(CGSize)size;
- (THReflowablePaginationController)initWithDocumentRoot:(id)root sourcePresentationType:(id)type targetPresentationType:(id)presentationType loadCache:(BOOL)cache observer:(id)observer;
- (double)paginationProgress;
- (id)loadOperationForContentNode:(id)node loadOperationCompletionDelegate:(id)delegate priority:(int64_t)priority;
- (id)p_queuePaginationOperationForContentNode:(id)node nodeBody:(id)body priority:(int64_t)priority isForeground:(BOOL)foreground;
- (id)paginateContentNode:(id)node paginationCompletionDelegate:(id)delegate priority:(int64_t)priority isForeground:(BOOL)foreground activity:(id)activity;
- (id)paginationResultForContentNode:(id)node;
- (unint64_t)numberOfContentNodes;
- (unint64_t)paginationCount;
- (void)assignContentNodes;
- (void)contentLoadOperation:(id)operation loadedContentBodies:(id)bodies;
- (void)contentLoadOperationFailed:(id)failed;
- (void)contentPaginationOperation:(id)operation paginatedNodeBody:(id)body forPresentationType:(id)type;
- (void)dealloc;
- (void)loadPaginationCache;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)p_updatePageNumbers;
- (void)p_updatePaginationInProgress;
- (void)paginate;
- (void)registerObserver:(id)observer;
- (void)savePaginationCache;
- (void)setPaginationInProgress:(BOOL)progress;
- (void)setPresentationType:(id)type;
- (void)stopPagination;
- (void)teardown;
- (void)unregisterObserver:(id)observer;
- (void)updatePaginationResult:(id)result;
- (void)updatePaginationResult:(id)result presentationType:(id)type;
@end

@implementation THReflowablePaginationController

- (THReflowablePaginationController)initWithDocumentRoot:(id)root sourcePresentationType:(id)type targetPresentationType:(id)presentationType loadCache:(BOOL)cache observer:(id)observer
{
  cacheCopy = cache;
  v17.receiver = self;
  v17.super_class = THReflowablePaginationController;
  v12 = [(THReflowablePaginationController *)&v17 init];
  if (v12)
  {
    v12->_documentRoot = root;
    v12->_sourcePresentationType = type;
    v12->_presentationType = [presentationType copyFixingSize];
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
    [(NSMutableArray *)v15 addObject:observer];
    if (cacheCopy)
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
  operations = [(NSOperationQueue *)self->_loadQueue operations];
  v4 = [(NSArray *)operations countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(operations);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 delegate] == self)
        {
          [v7 setDelegate:0];
        }
      }

      v4 = [(NSArray *)operations countByEnumeratingWithState:&v8 objects:v12 count:16];
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
    navigationUnits = [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THReflowablePaginationController *)self documentRoot] navigationModel] navigationUnits];
    v4 = [(NSArray *)navigationUnits countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(navigationUnits);
          }

          self->_numberOfContentNodes += [objc_msgSend(*(*(&v9 + 1) + 8 * v7) "contentNodes")];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSArray *)navigationUnits countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)setPresentationType:(id)type
{
  objc_sync_enter(self);
  if (![(THPresentationType *)self->_presentationType isEqualIncludingSize:type])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_E7544;
    v5[3] = &unk_45AE58;
    v5[4] = self;
    v5[5] = type;
    _os_activity_initiate(&dword_0, "RPC Set presentation Type", OS_ACTIVITY_FLAG_DEFAULT, v5);
  }

  objc_sync_exit(self);
}

- (BOOL)presentationTypeMatchesPageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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
  navigationUnits = [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THReflowablePaginationController *)self documentRoot] navigationModel] navigationUnits];
  v4 = [(NSArray *)navigationUnits countByEnumeratingWithState:&v16 objects:v21 count:16];
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
          objc_enumerationMutation(navigationUnits);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        contentNodes = [v7 contentNodes];
        v9 = [contentNodes countByEnumeratingWithState:&v12 objects:v20 count:16];
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
                objc_enumerationMutation(contentNodes);
              }

              [*(*(&v12 + 1) + 8 * v11) setReflowablePaginationController:self];
              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [contentNodes countByEnumeratingWithState:&v12 objects:v20 count:16];
          }

          while (v9);
        }

        v6 = v6 + 1;
      }

      while (v6 != v4);
      v4 = [(NSArray *)navigationUnits countByEnumeratingWithState:&v16 objects:v21 count:16];
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

- (void)setPaginationInProgress:(BOOL)progress
{
  if (self->_paginationInProgress != progress)
  {
    v9 = v3;
    v10 = v4;
    self->_paginationInProgress = progress;
    v6 = !progress;
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
    navigationUnits = [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THReflowablePaginationController *)self documentRoot] navigationModel] navigationUnits];
    v4 = [(NSArray *)navigationUnits countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v4)
    {
      obj = navigationUnits;
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
          contentNodes = [v7 contentNodes];
          v9 = [contentNodes countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v9)
          {
            v10 = *v18;
            do
            {
              for (i = 0; i != v9; i = i + 1)
              {
                if (*v18 != v10)
                {
                  objc_enumerationMutation(contentNodes);
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

              v9 = [contentNodes countByEnumeratingWithState:&v17 objects:v25 count:16];
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

- (id)p_queuePaginationOperationForContentNode:(id)node nodeBody:(id)body priority:(int64_t)priority isForeground:(BOOL)foreground
{
  v8 = [[THReflowableContentPaginationOperation alloc] initWithContentNode:node paginationResults:[(THReflowablePaginationController *)self paginationResultForContentNode:?] flowModelContentNodeBody:body presentationType:[(THReflowablePaginationController *)self presentationType] documentRoot:[(THReflowablePaginationController *)self documentRoot] isForegroundPagination:foreground delegate:self];
  [(THReflowableContentPaginationOperation *)v8 setQueuePriority:priority];
  [(NSOperationQueue *)[(THReflowablePaginationController *)self paginationQueue] addOperation:v8];

  return v8;
}

- (id)paginateContentNode:(id)node paginationCompletionDelegate:(id)delegate priority:(int64_t)priority isForeground:(BOOL)foreground activity:(id)activity
{
  foregroundCopy = foreground;
  objc_sync_enter(self);
  if (delegate && ![(TSUPointerKeyDictionary *)[(THReflowablePaginationController *)self paginationCompletions] objectForKey:node])
  {
    [(TSUPointerKeyDictionary *)[(THReflowablePaginationController *)self paginationCompletions] setObject:delegate forUncopiedKey:node];
  }

  v12 = [node nodeBodyForPresentationType:{-[THReflowablePaginationController sourcePresentationType](self, "sourcePresentationType")}];
  if (v12)
  {
    v13 = [(THReflowablePaginationController *)self p_queuePaginationOperationForContentNode:node nodeBody:v12 priority:priority isForeground:foregroundCopy];
  }

  else
  {
    v14 = -[THModelContentLoadOperation initWithDelegate:contentNode:documentRoot:applePubURL:documentEntryURI:]([THModelContentLoadOperation alloc], "initWithDelegate:contentNode:documentRoot:applePubURL:documentEntryURI:", self, node, -[THReflowablePaginationController documentRoot](self, "documentRoot"), -[THBookDescription bookBundleUrl](-[THDocumentRoot bookDescription](-[THReflowablePaginationController documentRoot](self, "documentRoot"), "bookDescription"), "bookBundleUrl"), [node applePubRelativePath]);
    [(THModelContentLoadOperation *)v14 setQueuePriority:priority];
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
  paginationResults = [(THReflowablePaginationController *)self paginationResults];
  v4 = 0;
  v5 = [(NSMutableDictionary *)paginationResults countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(paginationResults);
        }

        v4 += [objc_msgSend(*(*(&v9 + 1) + 8 * v7) "presentationType")];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)paginationResults countByEnumeratingWithState:&v9 objects:v13 count:16];
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

  paginationCount = [(THReflowablePaginationController *)self paginationCount];
  return paginationCount / [(THReflowablePaginationController *)self numberOfContentNodes];
}

- (void)savePaginationCache
{
  objc_sync_enter(self);
  if ([(NSMutableDictionary *)[(THReflowablePaginationController *)self paginationResults] count])
  {
    bookDescription = [(THDocumentRoot *)[(THReflowablePaginationController *)self documentRoot] bookDescription];
    v4 = [[THReflowablePaginationCache alloc] initWithAssetID:[(THAsset *)[(THBookDescription *)bookDescription asset] assetID] bookVersionString:[(THBookDescription *)bookDescription bookVersionString] modificationDate:[(THDocumentProperties *)[(THDocumentRoot *)[(THReflowablePaginationController *)self documentRoot] properties] modificationDate]];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    paginationResults = [(THReflowablePaginationController *)self paginationResults];
    v6 = [(NSMutableDictionary *)paginationResults countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(paginationResults);
          }

          [(THReflowablePaginationCache *)v4 cacheResult:[(NSMutableDictionary *)[(THReflowablePaginationController *)self paginationResults] objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v8)] forKey:*(*(&v9 + 1) + 8 * v8)];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableDictionary *)paginationResults countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(THReflowablePaginationCache *)v4 archive];
  }

  objc_sync_exit(self);
}

- (void)loadPaginationCache
{
  bookDescription = [(THDocumentRoot *)[(THReflowablePaginationController *)self documentRoot] bookDescription];
  v4 = [THReflowablePaginationCache loadFromArchiveWithAssetID:[(THAsset *)[(THBookDescription *)bookDescription asset] assetID] bookVersionString:[(THBookDescription *)bookDescription bookVersionString] modificationDate:[(THDocumentProperties *)[(THDocumentRoot *)[(THReflowablePaginationController *)self documentRoot] properties] modificationDate]];
  objc_sync_enter(self);
  keyEnumerator = [v4 keyEnumerator];
  while (1)
  {
    nextObject = [keyEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    v7 = [v4 cachedResultsForKey:nextObject];
    if (-[THDocumentNavigationModel contentNodeForGUID:](-[THDocumentRoot navigationModel](-[THReflowablePaginationController documentRoot](self, "documentRoot"), "navigationModel"), "contentNodeForGUID:", [v7 nodeGUID]))
    {
      -[THReflowablePaginationController updatePaginationResult:presentationType:](self, "updatePaginationResult:presentationType:", v7, [nextObject presentationType]);
    }
  }

  objc_sync_exit(self);
}

- (id)paginationResultForContentNode:(id)node
{
  objc_sync_enter(self);
  v5 = [[THPaginationResultsKey alloc] initWithContentNode:node presentationType:[(THReflowablePaginationController *)self presentationType]];
  v6 = [(NSMutableDictionary *)[(THReflowablePaginationController *)self paginationResults] objectForKey:v5];

  objc_sync_exit(self);
  return v6;
}

- (void)updatePaginationResult:(id)result
{
  presentationType = [(THReflowablePaginationController *)self presentationType];

  [(THReflowablePaginationController *)self updatePaginationResult:result presentationType:presentationType];
}

- (void)updatePaginationResult:(id)result presentationType:(id)type
{
  objc_sync_enter(self);
  v7 = -[THPaginationResultsKey initWithContentNodeGUID:presentationType:]([THPaginationResultsKey alloc], "initWithContentNodeGUID:presentationType:", [result nodeGUID], type);
  if ([(NSMutableDictionary *)[(THReflowablePaginationController *)self paginationResults] objectForKey:v7])
  {
    [(NSMutableDictionary *)[(THReflowablePaginationController *)self paginationResults] removeObjectForKey:v7];
  }

  if (result)
  {
    [(NSMutableDictionary *)[(THReflowablePaginationController *)self paginationResults] setObject:result forKey:v7];
  }

  objc_sync_exit(self);
}

- (id)loadOperationForContentNode:(id)node loadOperationCompletionDelegate:(id)delegate priority:(int64_t)priority
{
  objc_sync_enter(self);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  operations = [(NSOperationQueue *)[(THReflowablePaginationController *)self loadQueue] operations];
  v10 = [(NSArray *)operations countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(operations);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 contentNode] == node)
        {
          [v13 setQueuePriority:priority];
          v15 = v13;
          v14 = v15;
          if (delegate && v15 && ![(TSUPointerKeyDictionary *)[(THReflowablePaginationController *)self loadCompletions] objectForKey:node])
          {
            [(TSUPointerKeyDictionary *)[(THReflowablePaginationController *)self loadCompletions] setObject:delegate forUncopiedKey:node];
          }

          goto LABEL_14;
        }
      }

      v10 = [(NSArray *)operations countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:@"operationCount"] && (-[THReflowablePaginationController paginationQueue](self, "paginationQueue") == object || -[THReflowablePaginationController loadQueue](self, "loadQueue") == object))
  {

    [(THReflowablePaginationController *)self paginationQueue];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = THReflowablePaginationController;
    [(THReflowablePaginationController *)&v11 observeValueForKeyPath:path ofObject:object change:change context:context];
  }
}

- (void)registerObserver:(id)observer
{
  objc_sync_enter(self);
  if (([(NSMutableArray *)[(THReflowablePaginationController *)self observers] tsu_containsObjectIdenticalTo:observer]& 1) == 0)
  {
    [(NSMutableArray *)[(THReflowablePaginationController *)self observers] addObject:observer];
  }

  objc_sync_exit(self);
}

- (void)unregisterObserver:(id)observer
{
  objc_sync_enter(self);
  if ([(NSMutableArray *)[(THReflowablePaginationController *)self observers] tsu_containsObjectIdenticalTo:observer])
  {
    [(NSMutableArray *)[(THReflowablePaginationController *)self observers] removeObjectIdenticalTo:observer];
  }

  objc_sync_exit(self);
}

- (void)contentPaginationOperation:(id)operation paginatedNodeBody:(id)body forPresentationType:(id)type
{
  objc_sync_enter(self);
  paginationResults = [operation paginationResults];
  if (!-[THReflowablePaginationController paginationResultForContentNode:](self, "paginationResultForContentNode:", [operation contentNode]))
  {
    v9 = -[THPaginationResultsKey initWithContentNode:presentationType:]([THPaginationResultsKey alloc], "initWithContentNode:presentationType:", [operation contentNode], -[THReflowablePaginationController presentationType](self, "presentationType"));
    if ([operation paginationResults])
    {
      -[NSMutableDictionary setObject:forKey:](-[THReflowablePaginationController paginationResults](self, "paginationResults"), "setObject:forKey:", [operation paginationResults], v9);
    }
  }

  [objc_msgSend(operation "contentNode")];
  v10 = -[TSUPointerKeyDictionary objectForKey:](-[THReflowablePaginationController paginationCompletions](self, "paginationCompletions"), "objectForKey:", [operation contentNode]);
  if (v10)
  {
    [v10 paginationController:self paginatedBody:objc_msgSend(operation forPresentationType:{"paginatedModelContentNodeBody"), type}];
    -[TSUPointerKeyDictionary removeObjectForKey:](-[THReflowablePaginationController paginationCompletions](self, "paginationCompletions"), "removeObjectForKey:", [operation contentNode]);
  }

  contentNode = [operation contentNode];
  [(THReflowablePaginationController *)self paginationProgress];
  v13 = v12;
  paginationComplete = [(THReflowablePaginationController *)self paginationComplete];
  v15 = paginationComplete;
  if (paginationComplete)
  {
    [(THReflowablePaginationController *)self p_updatePageNumbers];
    [(THReflowablePaginationController *)self p_updatePaginationInProgress];
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_E8E5C;
  v16[3] = &unk_45D3E0;
  v16[4] = self;
  v16[5] = contentNode;
  v16[6] = v13;
  v17 = v15;
  dispatch_async(&_dispatch_main_q, v16);
  objc_sync_exit(self);
}

- (void)contentLoadOperation:(id)operation loadedContentBodies:(id)bodies
{
  objc_sync_enter(self);
  v7 = -[TSUPointerKeyDictionary objectForKey:](-[THReflowablePaginationController loadCompletions](self, "loadCompletions"), "objectForKey:", [operation contentNode]);
  if (v7)
  {
    [v7 contentLoadOperation:operation loadedContentBodies:bodies];
    -[TSUPointerKeyDictionary removeObjectForKey:](-[THReflowablePaginationController loadCompletions](self, "loadCompletions"), "removeObjectForKey:", [operation contentNode]);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [bodies countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      operationCopy = operation;
      v9 = 0;
      v10 = 0;
      v11 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(bodies);
          }

          objc_opt_class();
          v13 = TSUDynamicCast();
          if (v13)
          {
            v14 = [bodies objectForKey:v13];
            if (v9 & 1 | (([v13 isFlow] & 1) == 0))
            {
              isPaginated = [v13 isPaginated];
              v9 |= isPaginated;
              if (isPaginated)
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

        v8 = [bodies countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
      if (!(v9 & 1 | (v10 == 0)))
      {
        -[THReflowablePaginationController p_queuePaginationOperationForContentNode:nodeBody:priority:isForeground:](self, "p_queuePaginationOperationForContentNode:nodeBody:priority:isForeground:", [operationCopy contentNode], v10, 0, 0);
      }
    }
  }

  objc_sync_exit(self);
}

- (void)contentLoadOperationFailed:(id)failed
{
  objc_sync_enter(self);
  v5 = -[TSUPointerKeyDictionary objectForKey:](-[THReflowablePaginationController loadCompletions](self, "loadCompletions"), "objectForKey:", [failed contentNode]);
  if (v5)
  {
    [v5 contentLoadOperationFailed:failed];
    -[TSUPointerKeyDictionary removeObjectForKey:](-[THReflowablePaginationController loadCompletions](self, "loadCompletions"), "removeObjectForKey:", [failed contentNode]);
  }

  objc_sync_exit(self);
}

@end