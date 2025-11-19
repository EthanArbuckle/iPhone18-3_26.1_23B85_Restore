@interface BKPaginationController
+ (id)newPaginationControllerForBook:(id)a3 delegate:(id)a4;
- (BKPaginationController)init;
- (BKPaginationController)initWithBook:(id)a3 delegate:(id)a4;
- (BKPaginationControllerDelegate)delegate;
- (BOOL)workIsStillPending;
- (_NSRange)pageRangeForAnnotation:(id)a3;
- (_NSRange)pageRangeForChapter:(id)a3;
- (_NSRange)pageRangeForChapterAtIndex:(unint64_t)a3;
- (_NSRange)pageRangeForChapterAtPageNumber:(int64_t)a3;
- (float)progress;
- (id)_lookupKey;
- (id)chapterArrayWithLookupKey:(id)a3;
- (id)chapterForPageNumber:(int64_t)a3;
- (id)documentPageCountForDocumentOrdinal:(int64_t)a3;
- (id)fetchBookmarkPageCounts;
- (id)hrefForChapterAtPageNumber:(int64_t)a3;
- (id)hrefForPageNumber:(int64_t)a3;
- (id)layoutQueue;
- (id)pageLocationForPageNumber:(int64_t)a3;
- (id)pageTitleForAnnotation:(id)a3;
- (id)pageTitleForChapter:(id)a3;
- (id)pageTitleForPageNumber:(int64_t)a3;
- (id)paginationArrayWithLookupKey:(id)a3;
- (id)paginationInfoForPageNumber:(int64_t)a3;
- (id)paginationRevision;
- (id)physicalPageTitlesForPageNumber:(int64_t)a3;
- (id)physicalPagesArrayWithLookupKey:(id)a3;
- (id)resultsQueue;
- (id)titleForChapterAtPageNumber:(int64_t)a3;
- (int64_t)incrementBatchProgress;
- (int64_t)pageNumberForDocumentOrdinal:(int64_t)a3;
- (int64_t)pageNumberForLocation:(id)a3;
- (int64_t)pageTotal;
- (int64_t)pagesInDocumentOrdinal:(int64_t)a3;
- (unint64_t)chapterIndexForHref:(id)a3;
- (unint64_t)chapterIndexForPageNumber:(int64_t)a3 getFirstChapter:(BOOL)a4;
- (unint64_t)physicalPageIndexForPageNumber:(int64_t)a3;
- (void)_releaseData:(BOOL)a3;
- (void)abortCurrentBatch;
- (void)batchEnded:(BOOL)a3;
- (void)cancelAllOperations;
- (void)dealloc;
- (void)destroyIvars;
- (void)managedObjectContextDidSave:(id)a3;
- (void)pause;
- (void)postPaginationLoadedNotification;
- (void)quit;
- (void)repaginateWithStyle:(id)a3 geometry:(id)a4 force:(BOOL)a5;
- (void)resume;
- (void)setOperationFactory:(id)a3;
- (void)updatePaginationCache:(BOOL)a3;
- (void)updateProgress;
- (void)waitUntilAllOperationsAreFinished;
@end

@implementation BKPaginationController

- (BKPaginationController)init
{
  v5.receiver = self;
  v5.super_class = BKPaginationController;
  v2 = [(BKPaginationController *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"managedObjectContextDidSave:" name:NSManagedObjectContextDidSaveNotification object:0];

    v2->_pageTotal = 0x7FFFFFFFFFFFFFFFLL;
    v2->_paginationBatchSize = 0;
    v2->_paginationBatchProgress = 0;
    v2->_jobGeneration = 0;
  }

  return v2;
}

- (BKPaginationController)initWithBook:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(BKPaginationController *)self init];
  if (v9)
  {
    v10 = [v7 objectID];
    bookObjectID = v9->_bookObjectID;
    v9->_bookObjectID = v10;

    objc_storeStrong(&v9->_bookObject, a3);
    v12 = [v7 databaseKey];
    bookDatabaseKey = v9->_bookDatabaseKey;
    v9->_bookDatabaseKey = v12;

    v14 = [v7 bookLanguage];
    bookLanguage = v9->_bookLanguage;
    v9->_bookLanguage = v14;

    v9->_bookDirection = [v7 bkPageProgressionDirection];
    v16 = [v7 sampleContent];
    v9->_bookSample = [v16 BOOLValue];

    v17 = [v7 managedObjectContext];
    primaryMOC = v9->_primaryMOC;
    v9->_primaryMOC = v17;

    v9->_bookShouldDisableOptimizeSpeed = [v7 shouldDisableOptimizeSpeed];
    v19 = [v7 spineIndexInPackage];
    v9->_spineIndexInPackage = [v19 unsignedIntegerValue];

    objc_storeWeak(&v9->_delegate, v8);
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(BKPaginationController *)self setJobGeneration:[(BKPaginationController *)self jobGeneration]+ 1];
  layoutQueue = self->_layoutQueue;
  self->_layoutQueue = 0;

  resultsQueue = self->_resultsQueue;
  self->_resultsQueue = 0;

  [(BKPaginationController *)self _releaseData:0];
  [(BKPaginationController *)self setOperationFactory:0];
  lookupKey = self->_lookupKey;
  self->_lookupKey = 0;

  primaryMOC = self->_primaryMOC;
  self->_primaryMOC = 0;

  paginationInfo = self->_paginationInfo;
  self->_paginationInfo = 0;

  chapterInfo = self->_chapterInfo;
  self->_chapterInfo = 0;

  physicalPagesInfo = self->_physicalPagesInfo;
  self->_physicalPagesInfo = 0;

  objc_storeWeak(&self->_delegate, 0);
  v11.receiver = self;
  v11.super_class = BKPaginationController;
  [(BKPaginationController *)&v11 dealloc];
}

- (void)destroyIvars
{
  paginationInfo = self->_paginationInfo;
  self->_paginationInfo = 0;

  chapterInfo = self->_chapterInfo;
  self->_chapterInfo = 0;

  physicalPagesInfo = self->_physicalPagesInfo;
  self->_physicalPagesInfo = 0;

  [(BKPaginationController *)self setBookmarkPageCounts:0];
  bookDatabaseKey = self->_bookDatabaseKey;
  self->_bookDatabaseKey = 0;

  lookupKey = self->_lookupKey;
  self->_lookupKey = 0;

  bookObjectID = self->_bookObjectID;
  self->_bookObjectID = 0;

  primaryMOC = self->_primaryMOC;
  self->_primaryMOC = 0;

  bookObject = self->_bookObject;
  self->_bookObject = 0;

  style = self->_style;
  self->_style = 0;

  operationFactory = self->_operationFactory;
  self->_operationFactory = 0;

  navigationHistory = self->_navigationHistory;
  self->_navigationHistory = 0;

  configuration = self->_configuration;
  self->_configuration = 0;
}

- (void)setOperationFactory:(id)a3
{
  v5 = a3;
  operationFactory = self->_operationFactory;
  p_operationFactory = &self->_operationFactory;
  if (operationFactory != v5)
  {
    v8 = v5;
    objc_storeStrong(p_operationFactory, a3);
    v5 = v8;
  }
}

- (void)postPaginationLoadedNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:BKPaginationDataLoadedNotification object:self];

  v4 = _AEPaginationLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Posting PaginationLoaded", v5, 2u);
  }
}

- (void)batchEnded:(BOOL)a3
{
  if (a3)
  {
    objc_initWeak(&location, self);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_7FF88;
    v3[3] = &unk_1E4920;
    objc_copyWeak(&v4, &location);
    dispatch_async(&_dispatch_main_q, v3);
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

+ (id)newPaginationControllerForBook:(id)a3 delegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[BKPaginationController alloc] initWithBook:v6 delegate:v5];

  v8 = [v6 contentType];
  if (v8 == 2)
  {
    v9 = v7;
    v7 = 0;
    goto LABEL_5;
  }

  if (!v8)
  {
    v9 = [[EpubPaginationFactory alloc] initWithPaginationController:v7];
    [(BKPaginationController *)v7 setOperationFactory:v9];
LABEL_5:
  }

  return v7;
}

- (void)cancelAllOperations
{
  [(BKPaginationController *)self setJobGeneration:[(BKPaginationController *)self jobGeneration]+ 1];
  [(NSOperationQueue *)self->_layoutQueue cancelAllOperations];
  resultsQueue = self->_resultsQueue;

  [(NSOperationQueue *)resultsQueue cancelAllOperations];
}

- (void)abortCurrentBatch
{
  if (self->_resultsQueue)
  {
    [(BKPaginationController *)self setJobGeneration:[(BKPaginationController *)self jobGeneration]+ 1];
    [(NSOperationQueue *)self->_resultsQueue cancelAllOperations];
    v3 = objc_alloc_init(BKPaginationAbortJob);
    [(BKPaginationController *)self addResultSentinel:v3];
  }
}

- (void)waitUntilAllOperationsAreFinished
{
  v3 = [(NSOperationQueue *)self->_layoutQueue operations];
  if ([v3 count])
  {

LABEL_4:

    [(BKPaginationController *)self performSelector:"waitUntilAllOperationsAreFinished" withObject:0 afterDelay:1.0];
    return;
  }

  v4 = [(NSOperationQueue *)self->_resultsQueue operations];
  v5 = [v4 count];

  if (v5)
  {
    goto LABEL_4;
  }

  [(NSOperationQueue *)self->_layoutQueue waitUntilAllOperationsAreFinished];
  resultsQueue = self->_resultsQueue;

  [(NSOperationQueue *)resultsQueue waitUntilAllOperationsAreFinished];
}

- (void)quit
{
  [(BKPaginationController *)self cancelAllOperations];
  [(BKPaginationFactory *)self->_operationFactory quit];
  [(BKPaginationController *)self abortCurrentBatch];
  [(BKPaginationController *)self destroyIvars];

  [(BKPaginationController *)self performSelectorOnMainThread:"waitUntilAllOperationsAreFinished" withObject:0 waitUntilDone:0];
}

- (id)documentPageCountForDocumentOrdinal:(int64_t)a3
{
  if (a3 < 0)
  {
    v6 = 0;
  }

  else
  {
    v4 = [[NSNumber alloc] initWithInteger:a3];
    v5 = [(NSArray *)self->_paginationInfo bu_indexOfObjectWithValue:v4 forKeyPath:@"documentOrdinal"];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(NSArray *)self->_paginationInfo objectAtIndex:v5];
    }
  }

  return v6;
}

- (int64_t)pageNumberForDocumentOrdinal:(int64_t)a3
{
  v3 = [(BKPaginationController *)self documentPageCountForDocumentOrdinal:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 pageNumber];
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (int64_t)pagesInDocumentOrdinal:(int64_t)a3
{
  v3 = [(BKPaginationController *)self documentPageCountForDocumentOrdinal:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 pageCount];
    v6 = [v5 intValue];

    v7 = v6;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (int64_t)pageTotal
{
  if (self->_pageTotal == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [(NSArray *)self->_paginationInfo count];
    v4 = [(BKPaginationController *)self book];
    v5 = [v4 linearDocumentCount];

    if (v3 == v5)
    {
      v6 = [(NSArray *)self->_paginationInfo lastObject];
      v7 = [v6 pageNumber];
      v8 = [v7 integerValue];

      v9 = [v6 pageCount];
      v10 = [v9 integerValue];

      self->_pageTotal = v10 + v8 - 1;
    }
  }

  return self->_pageTotal;
}

- (void)repaginateWithStyle:(id)a3 geometry:(id)a4 force:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(BKPaginationController *)self _lookupKey];
  [(BKPaginationController *)self setStyle:v8];
  [(BKPaginationController *)self setConfiguration:v9];

  v11 = [(BKPaginationController *)self configuration];
  v12 = [v11 environment];
  [v12 unfreeze];

  v13 = [(BKPaginationController *)self delegate];
  v14 = [v13 environmentOverrideViewForPaginationController:self];

  if (v14)
  {
    v15 = _AEPaginationLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412290;
      v32 = v14;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Set an override view: %@", &v31, 0xCu);
    }

    v16 = [(BKPaginationController *)self configuration];
    v17 = [v16 environment];
    [v17 setView:v14];
  }

  v18 = [(BKPaginationController *)self configuration];
  v19 = [v18 environment];
  [v19 freeze];

  v20 = _AEPaginationLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(BKPaginationController *)self configuration];
    v31 = 138543618;
    v32 = v21;
    v33 = 2114;
    v34 = v8;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "\nCaptured configuration: %{public}@\nStyle:%{public}@\n", &v31, 0x16u);
  }

  [(BKPaginationController *)self releasePaginationInfo];
  if (v8 || ![(BKPaginationFactory *)self->_operationFactory isStyleRequiredForPagination])
  {
    v22 = [(BKPaginationController *)self _lookupKey];
    v23 = _AEPaginationLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138543362;
      v32 = v22;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Repagination request made for:%{public}@.", &v31, 0xCu);
    }

    if (([v10 isEqualToString:v22] & 1) == 0)
    {
      v24 = _AEPaginationLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v31 = 138543618;
        v32 = v22;
        v33 = 2114;
        v34 = v10;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "CurrentKey:%{public}@ != PreviousKey:%{public}@ Resetting count. #retryPagination", &v31, 0x16u);
      }

      [(BKPaginationController *)self setPaginationRetryCount:0];
    }

    [(BKPaginationController *)self updatePaginationCache:v5];
    [(BKPaginationController *)self setJobGeneration:[(BKPaginationController *)self jobGeneration]+ 1];
    v25 = [(BKPaginationJob *)[BKPaginationBatchJob alloc] init:[(BKPaginationController *)self jobGeneration]];
    [v25 setStyle:v8];
    [v25 setLookupKey:v22];
    v26 = [(BKPaginationController *)self bookDatabaseKey];
    [v25 setBookDatabaseKey:v26];

    v27 = [(BKPaginationController *)self configuration];
    [v27 contentLayoutSize];
    [v25 setPageSize:?];

    v28 = [(BKPaginationController *)self navigationHistory];
    v29 = [v28 allObjects];
    [v25 setHistoryEntities:v29];

    v30 = [(BKPaginationController *)self configuration];
    [v25 setConfiguration:v30];

    [v25 setForce:v5];
    [(BKPaginationController *)self addPrepareJob:v25];
  }

  else
  {
    v22 = _AEPaginationLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "Aborting pagination because no style was provided.", &v31, 2u);
    }
  }
}

- (void)_releaseData:(BOOL)a3
{
  v3 = a3;
  paginationInfo = self->_paginationInfo;
  self->_paginationInfo = 0;

  chapterInfo = self->_chapterInfo;
  self->_chapterInfo = 0;

  physicalPagesInfo = self->_physicalPagesInfo;
  self->_physicalPagesInfo = 0;

  [(BKPaginationController *)self setBookmarkPageCounts:0];
  self->_pageTotal = 0x7FFFFFFFFFFFFFFFLL;
  lookupKey = self->_lookupKey;
  self->_lookupKey = 0;

  self->_paginationBatchSize = 0;
  self->_paginationBatchProgress = 0;
  if (v3)
  {

    [(BKPaginationController *)self abortCurrentBatch];
  }
}

- (void)pause
{
  if (!atomic_fetch_add(&self->_pauseCount, 1uLL))
  {
    [(NSOperationQueue *)self->_layoutQueue setSuspended:1];
  }
}

- (void)resume
{
  if (atomic_fetch_add(&self->_pauseCount, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    [(NSOperationQueue *)self->_layoutQueue setSuspended:0];
  }
}

- (id)paginationInfoForPageNumber:(int64_t)a3
{
  if (a3 >= 1 && (v5 = [(NSArray *)self->_paginationInfo count]) != 0)
  {
    v6 = 0;
    while (1)
    {
      v7 = [(NSArray *)self->_paginationInfo objectAtIndex:v6];
      v8 = [v7 pageNumber];
      v9 = [v8 integerValue];

      v10 = [v7 pageCount];
      v11 = [v10 integerValue];

      if (v9 <= a3 && v9 + v11 > a3)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v7 = 0;
  }

  return v7;
}

- (id)pageLocationForPageNumber:(int64_t)a3
{
  if ((a3 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    v9 = 0;
  }

  else
  {
    v4 = [(BKPaginationController *)self paginationInfoForPageNumber:?];
    if (v4)
    {
      v5 = [BKPageLocation alloc];
      v6 = [v4 documentOrdinal];
      v7 = [v6 integerValue];
      v8 = [v4 pageNumber];
      v9 = -[BKPageLocation initWithOrdinal:andOffset:](v5, "initWithOrdinal:andOffset:", v7, a3 - [v8 integerValue]);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (int64_t)pageNumberForLocation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = -[BKPaginationController pagesInDocumentOrdinal:](self, "pagesInDocumentOrdinal:", [v5 ordinal]);
    if (v6 <= [v5 pageOffset] || (v7 = -[BKPaginationController pageNumberForDocumentOrdinal:](self, "pageNumberForDocumentOrdinal:", objc_msgSend(v5, "ordinal")), (v7 - 1) > 0x7FFFFFFFFFFFFFFDLL))
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = [v5 pageOffset] + v7;
    }
  }

  else
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
    v8 = -[BKPaginationController pageNumberForDocumentOrdinal:](self, "pageNumberForDocumentOrdinal:", [v4 ordinal]);
  }

  return v8;
}

- (unint64_t)chapterIndexForPageNumber:(int64_t)a3 getFirstChapter:(BOOL)a4
{
  if ((a3 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if (v7 >= [(NSArray *)self->_chapterInfo count])
    {
      break;
    }

    v9 = [(NSArray *)self->_chapterInfo objectAtIndex:v7];
    v10 = [v9 pageNumber];
    v11 = [v10 intValue];

    v12 = v11 == a3 && a4;
    if (v11 > a3)
    {
      break;
    }

    v8 = v7++;
  }

  while (!v12);
  return v8;
}

- (unint64_t)physicalPageIndexForPageNumber:(int64_t)a3
{
  if ((a3 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = 0;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v7 = v6;
    if (v5 >= [(NSArray *)self->_physicalPagesInfo count])
    {
      break;
    }

    v8 = [(NSArray *)self->_physicalPagesInfo objectAtIndex:v5];
    v9 = [v8 pageNumber];
    v10 = [v9 integerValue];

    v6 = v5++;
  }

  while (v10 <= a3);
  return v7;
}

- (unint64_t)chapterIndexForHref:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_chapterInfo;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = 0;
      v9 = *v16;
      while (2)
      {
        v10 = 0;
        v11 = v8;
        v8 += v7;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v15 + 1) + 8 * v10) href];
          v13 = [v12 isEqualToString:v5];

          if (v13)
          {

            goto LABEL_14;
          }

          ++v11;
          v10 = v10 + 1;
        }

        while (v7 != v10);
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:

  return v11;
}

- (id)physicalPageTitlesForPageNumber:(int64_t)a3
{
  physicalPagesInfo = self->_physicalPagesInfo;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_81884;
  v14[3] = &unk_1E4A28;
  v14[4] = a3;
  v6 = [(NSArray *)physicalPagesInfo indexesOfObjectsWithOptions:3 passingTest:v14];
  if ([v6 count])
  {
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = [(BKPaginationController *)self physicalPageIndexForPageNumber:a3];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v9 = [NSIndexSet indexSetWithIndex:v8];

    v6 = v9;
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  v10 = [v6 lastIndex];
  if (v10 < [(NSArray *)self->_physicalPagesInfo count])
  {
    v11 = [(NSArray *)self->_physicalPagesInfo objectsAtIndexes:v6];
    v12 = [v11 valueForKey:@"name"];

    goto LABEL_11;
  }

LABEL_10:
  v12 = 0;
LABEL_11:

  return v12;
}

- (id)chapterForPageNumber:(int64_t)a3
{
  v4 = [(BKPaginationController *)self chapterIndexForPageNumber:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_chapterInfo objectAtIndex:v4];
  }

  return v5;
}

- (id)titleForChapterAtPageNumber:(int64_t)a3
{
  v3 = [(BKPaginationController *)self chapterForPageNumber:a3];
  v4 = [v3 name];

  return v4;
}

- (id)hrefForChapterAtPageNumber:(int64_t)a3
{
  v3 = [(BKPaginationController *)self chapterForPageNumber:a3];
  v4 = [v3 href];

  return v4;
}

- (id)hrefForPageNumber:(int64_t)a3
{
  v3 = [(BKPaginationController *)self paginationInfoForPageNumber:a3];
  v4 = [v3 href];

  return v4;
}

- (_NSRange)pageRangeForChapterAtIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_chapterInfo count]<= a3)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = [(NSArray *)self->_chapterInfo objectAtIndex:a3];
    if (a3 + 1 >= [(NSArray *)self->_chapterInfo count])
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      if ([(BKPaginationController *)self pageTotal]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [v5 pageNumber];
        v8 = [v11 integerValue];

        v10 = [(BKPaginationController *)self pageTotal]- v8 + 1;
      }
    }

    else
    {
      v6 = [(NSArray *)self->_chapterInfo objectAtIndex:?];
      v7 = [v5 pageNumber];
      v8 = [v7 integerValue];

      v9 = [v6 pageNumber];
      v10 = [v9 integerValue] - v8;
    }
  }

  v12 = v8;
  v13 = v10;
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)pageRangeForChapter:(id)a3
{
  v4 = [a3 href];
  v5 = [(BKPaginationController *)self chapterIndexForHref:v4];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {

    v6 = [(BKPaginationController *)self pageRangeForChapterAtIndex:v5];
  }

  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)pageRangeForChapterAtPageNumber:(int64_t)a3
{
  v4 = [(BKPaginationController *)self chapterIndexForPageNumber:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {

    v5 = [(BKPaginationController *)self pageRangeForChapterAtIndex:v4];
  }

  result.length = v6;
  result.location = v5;
  return result;
}

- (_NSRange)pageRangeForAnnotation:(id)a3
{
  v4 = [a3 annotationUuid];
  v5 = [NSPredicate predicateWithFormat:@"annotationUuid == %@", v4];

  v6 = [(BKPaginationController *)self fetchBookmarkPageCounts];
  v7 = [v6 filteredArrayUsingPredicate:v5];
  if ([v7 count])
  {
    v8 = [v7 objectAtIndex:0];
    v9 = [v8 pageNumber];
    v10 = [v9 unsignedIntegerValue];
    v11 = 1;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = v10;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (id)pageTitleForPageNumber:(int64_t)a3
{
  if ([(NSArray *)self->_physicalPagesInfo count])
  {
    physicalPagesInfo = self->_physicalPagesInfo;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_81EE4;
    v10[3] = &unk_1E4A28;
    v10[4] = a3;
    v6 = [(NSArray *)physicalPagesInfo indexOfObjectWithOptions:3 passingTest:v10];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v8 = [(NSArray *)self->_physicalPagesInfo objectAtIndex:v6];
      v7 = [v8 name];
    }
  }

  else
  {
    v7 = [NSString stringWithFormat:@"%ld", a3];
  }

  return v7;
}

- (id)pageTitleForAnnotation:(id)a3
{
  v4 = [(BKPaginationController *)self pageRangeForAnnotation:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(BKPaginationController *)self pageTitleForPageNumber:v4];
  }

  return v5;
}

- (id)pageTitleForChapter:(id)a3
{
  v4 = [a3 href];
  v5 = [(BKPaginationController *)self chapterIndexForHref:v4];

  chapterInfo = self->_chapterInfo;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(NSArray *)chapterInfo count];
    v8 = [(BKPaginationController *)self book];
    v9 = [v8 chapters];
    v10 = [v9 allObjects];
    v11 = [v10 count];

    [(BKPaginationController *)self progress];
    v12 = 0;
    if (v13 >= 1.0 && v7 != v11)
    {
      v14 = _AEPaginationLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [NSNumber numberWithUnsignedInteger:v7];
        v16 = [NSNumber numberWithUnsignedInteger:v11];
        v20 = 138543618;
        v21 = v15;
        v22 = 2114;
        v23 = v16;
      }

      v12 = 0;
    }
  }

  else
  {
    v17 = [(NSArray *)chapterInfo objectAtIndex:v5];
    v18 = [v17 pageNumber];
    v12 = -[BKPaginationController pageTitleForPageNumber:](self, "pageTitleForPageNumber:", [v18 integerValue]);
  }

  return v12;
}

- (id)_lookupKey
{
  operationFactory = self->_operationFactory;
  v4 = [(BKPaginationController *)self style];
  v5 = [(BKPaginationController *)self configuration];
  v6 = [(BKPaginationFactory *)operationFactory lookupKeyForStyle:v4 geometry:v5];

  return v6;
}

- (int64_t)incrementBatchProgress
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_paginationBatchProgress + 1;
  v2->_paginationBatchProgress = v3;
  objc_sync_exit(v2);

  [(BKPaginationController *)v2 performSelectorOnMainThread:"updateProgress" withObject:0 waitUntilDone:0];
  return v3;
}

- (float)progress
{
  v2 = self;
  objc_sync_enter(v2);
  paginationBatchSize = v2->_paginationBatchSize;
  paginationBatchProgress = v2->_paginationBatchProgress;
  objc_sync_exit(v2);

  if (paginationBatchSize < 1)
  {
    return 0.0;
  }

  result = fmaxf(paginationBatchProgress / paginationBatchSize, 0.0);
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (BOOL)workIsStillPending
{
  v3 = [(BKPaginationController *)self prepareQueue];
  if ([v3 operationCount])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(BKPaginationController *)self layoutQueue];
    if ([v5 operationCount])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(BKPaginationController *)self resultsQueue];
      v4 = [v6 operationCount] != 0;
    }
  }

  return v4;
}

- (void)updateProgress
{
  [(BKPaginationController *)self willChangeValueForKey:@"progress"];

  [(BKPaginationController *)self didChangeValueForKey:@"progress"];
}

- (void)updatePaginationCache:(BOOL)a3
{
  v5 = [(BKPaginationController *)self book];
  if (v5 && (v6 = v5, -[BKPaginationController book](self, "book"), v7 = objc_claimAutoreleasedReturnValue(), [v7 managedObjectContext], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v8))
  {
    v9 = [(BKPaginationController *)self _lookupKey];
    v10 = [(BKPaginationController *)self paginationArrayWithLookupKey:v9];
    if (![v10 count])
    {
      v11 = _AEPaginationLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138543362;
        v26 = v9;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Did not find existing pagination results for LookupKey:%{public}@", &v25, 0xCu);
      }
    }

    if (!-[NSArray isEqualToArray:](self->_paginationInfo, "isEqualToArray:", v10) && [v10 count])
    {
      objc_storeStrong(&self->_lookupKey, v9);
      paginationInfo = self->_paginationInfo;
      self->_paginationInfo = 0;

      chapterInfo = self->_chapterInfo;
      self->_chapterInfo = 0;

      physicalPagesInfo = self->_physicalPagesInfo;
      self->_physicalPagesInfo = 0;

      self->_pageTotal = 0x7FFFFFFFFFFFFFFFLL;
      v15 = [(BKPaginationController *)self book];
      v16 = [v15 linearDocumentCount];

      if (v16 >= 1)
      {
        self->_paginationBatchSize = v16;
        if (a3)
        {
          v17 = 0;
        }

        else
        {
          v17 = [v10 count];
        }

        self->_paginationBatchProgress = v17;
        [(BKPaginationController *)self updateProgress];
      }

      v20 = [(BKPaginationController *)self chapterArrayWithLookupKey:v9];
      v21 = self->_chapterInfo;
      self->_chapterInfo = v20;
      v22 = v20;

      objc_storeStrong(&self->_paginationInfo, v10);
      v23 = [(BKPaginationController *)self physicalPagesArrayWithLookupKey:v9];
      v24 = self->_physicalPagesInfo;
      self->_physicalPagesInfo = v23;

      [(BKPaginationController *)self postPaginationLoadedNotification];
    }
  }

  else
  {
    v18 = [(BKPaginationController *)self bookObjectID];

    if (!v18)
    {
      return;
    }

    v9 = _AEPaginationLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = [(BKPaginationController *)self bookObjectID];
      v25 = 138412290;
      v26 = v19;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "We have no book. Was it deleted? %@", &v25, 0xCu);
    }
  }
}

- (void)managedObjectContextDidSave:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:NSDeletedObjectsKey];

  if ([v6 count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v29 + 1) + 8 * i) objectID];
          v13 = [(BKPaginationController *)self bookObjectID];
          v14 = [v12 isEqual:v13];

          if (v14)
          {
            v15 = 1;
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_12:
  }

  else
  {
    v15 = 0;
  }

  v16 = [v4 userInfo];
  v17 = [v16 objectForKey:NSInsertedObjectsKey];

  v18 = [v17 count];
  if ((v15 & 1) == 0 && v18)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v20)
    {
      v21 = *v26;
      while (2)
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v19);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            LOBYTE(v20) = 1;
            goto LABEL_26;
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_82914;
    v23[3] = &unk_1E3ED8;
    v24 = v20;
    v23[4] = self;
    dispatch_async(&_dispatch_main_q, v23);
  }
}

- (id)chapterArrayWithLookupKey:(id)a3
{
  v4 = a3;
  v5 = [(BKPaginationController *)self book];
  v6 = [v5 managedObjectContext];

  v7 = [NSPredicate predicateWithFormat:@"lookupKey ==[n] %@", v4];

  v8 = [v6 entity:@"BKChapterPageCount" withPredicate:v7 sortBy:@"pageNumber" ascending:1 fetchLimit:0];

  return v8;
}

- (id)paginationArrayWithLookupKey:(id)a3
{
  v4 = a3;
  v5 = [(BKPaginationController *)self book];
  v6 = [v5 managedObjectContext];

  v7 = [NSPredicate predicateWithFormat:@"lookupKey ==[n] %@", v4];

  v8 = [v6 entity:@"BKDocumentPageCount" withPredicate:v7 sortBy:@"documentOrdinal" ascending:1 fetchLimit:0];

  return v8;
}

- (id)physicalPagesArrayWithLookupKey:(id)a3
{
  v4 = a3;
  v5 = [(BKPaginationController *)self book];
  v6 = [v5 managedObjectContext];

  v7 = [NSPredicate predicateWithFormat:@"lookupKey ==[n] %@", v4];

  v8 = [[NSSortDescriptor alloc] initWithKey:@"pageNumber" ascending:1];
  v9 = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:1];
  v10 = [[NSArray alloc] initWithObjects:{v8, v9, 0}];
  v11 = [v6 entity:@"BKPhysicalPageCount" withPredicate:v7 sortDescriptors:v10 fetchLimit:0 prefetchRelationships:0];

  return v11;
}

- (id)fetchBookmarkPageCounts
{
  v3 = [(BKPaginationController *)self bookmarkPageCounts];

  if (!v3)
  {
    v4 = [(BKPaginationController *)self _lookupKey];
    v5 = [(BKPaginationController *)self book];
    v6 = [v5 managedObjectContext];

    v7 = [NSPredicate predicateWithFormat:@"lookupKey ==[n] %@", v4];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v6 entity:v9 withPredicate:v7 sortBy:@"pageNumber" ascending:1 fetchLimit:0];
    [(BKPaginationController *)self setBookmarkPageCounts:v10];
  }

  return [(BKPaginationController *)self bookmarkPageCounts];
}

- (id)resultsQueue
{
  resultsQueue = self->_resultsQueue;
  if (!resultsQueue)
  {
    v4 = objc_alloc_init(NSOperationQueue);
    v5 = self->_resultsQueue;
    self->_resultsQueue = v4;

    [(NSOperationQueue *)self->_resultsQueue setMaxConcurrentOperationCount:1];
    resultsQueue = self->_resultsQueue;
  }

  return resultsQueue;
}

- (id)layoutQueue
{
  layoutQueue = self->_layoutQueue;
  if (!layoutQueue)
  {
    v4 = objc_alloc_init(NSOperationQueue);
    v5 = self->_layoutQueue;
    self->_layoutQueue = v4;

    [(NSOperationQueue *)self->_layoutQueue setMaxConcurrentOperationCount:1];
    layoutQueue = self->_layoutQueue;
  }

  return layoutQueue;
}

- (id)paginationRevision
{
  v2 = qword_22D050;
  if (!qword_22D050)
  {
    v3 = [NSString alloc];
    v4 = +[AEAssetEngine appInfoMgr];
    v5 = [v4 osBuildVersion];
    v6 = [v3 initWithFormat:@"%@-%d", v5, 14];
    v7 = qword_22D050;
    qword_22D050 = v6;

    v2 = qword_22D050;
  }

  return v2;
}

- (BKPaginationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end