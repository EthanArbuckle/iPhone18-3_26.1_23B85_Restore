@interface BKPaginationController
+ (id)newPaginationControllerForBook:(id)book delegate:(id)delegate;
- (BKPaginationController)init;
- (BKPaginationController)initWithBook:(id)book delegate:(id)delegate;
- (BKPaginationControllerDelegate)delegate;
- (BOOL)workIsStillPending;
- (_NSRange)pageRangeForAnnotation:(id)annotation;
- (_NSRange)pageRangeForChapter:(id)chapter;
- (_NSRange)pageRangeForChapterAtIndex:(unint64_t)index;
- (_NSRange)pageRangeForChapterAtPageNumber:(int64_t)number;
- (float)progress;
- (id)_lookupKey;
- (id)chapterArrayWithLookupKey:(id)key;
- (id)chapterForPageNumber:(int64_t)number;
- (id)documentPageCountForDocumentOrdinal:(int64_t)ordinal;
- (id)fetchBookmarkPageCounts;
- (id)hrefForChapterAtPageNumber:(int64_t)number;
- (id)hrefForPageNumber:(int64_t)number;
- (id)layoutQueue;
- (id)pageLocationForPageNumber:(int64_t)number;
- (id)pageTitleForAnnotation:(id)annotation;
- (id)pageTitleForChapter:(id)chapter;
- (id)pageTitleForPageNumber:(int64_t)number;
- (id)paginationArrayWithLookupKey:(id)key;
- (id)paginationInfoForPageNumber:(int64_t)number;
- (id)paginationRevision;
- (id)physicalPageTitlesForPageNumber:(int64_t)number;
- (id)physicalPagesArrayWithLookupKey:(id)key;
- (id)resultsQueue;
- (id)titleForChapterAtPageNumber:(int64_t)number;
- (int64_t)incrementBatchProgress;
- (int64_t)pageNumberForDocumentOrdinal:(int64_t)ordinal;
- (int64_t)pageNumberForLocation:(id)location;
- (int64_t)pageTotal;
- (int64_t)pagesInDocumentOrdinal:(int64_t)ordinal;
- (unint64_t)chapterIndexForHref:(id)href;
- (unint64_t)chapterIndexForPageNumber:(int64_t)number getFirstChapter:(BOOL)chapter;
- (unint64_t)physicalPageIndexForPageNumber:(int64_t)number;
- (void)_releaseData:(BOOL)data;
- (void)abortCurrentBatch;
- (void)batchEnded:(BOOL)ended;
- (void)cancelAllOperations;
- (void)dealloc;
- (void)destroyIvars;
- (void)managedObjectContextDidSave:(id)save;
- (void)pause;
- (void)postPaginationLoadedNotification;
- (void)quit;
- (void)repaginateWithStyle:(id)style geometry:(id)geometry force:(BOOL)force;
- (void)resume;
- (void)setOperationFactory:(id)factory;
- (void)updatePaginationCache:(BOOL)cache;
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

- (BKPaginationController)initWithBook:(id)book delegate:(id)delegate
{
  bookCopy = book;
  delegateCopy = delegate;
  v9 = [(BKPaginationController *)self init];
  if (v9)
  {
    objectID = [bookCopy objectID];
    bookObjectID = v9->_bookObjectID;
    v9->_bookObjectID = objectID;

    objc_storeStrong(&v9->_bookObject, book);
    databaseKey = [bookCopy databaseKey];
    bookDatabaseKey = v9->_bookDatabaseKey;
    v9->_bookDatabaseKey = databaseKey;

    bookLanguage = [bookCopy bookLanguage];
    bookLanguage = v9->_bookLanguage;
    v9->_bookLanguage = bookLanguage;

    v9->_bookDirection = [bookCopy bkPageProgressionDirection];
    sampleContent = [bookCopy sampleContent];
    v9->_bookSample = [sampleContent BOOLValue];

    managedObjectContext = [bookCopy managedObjectContext];
    primaryMOC = v9->_primaryMOC;
    v9->_primaryMOC = managedObjectContext;

    v9->_bookShouldDisableOptimizeSpeed = [bookCopy shouldDisableOptimizeSpeed];
    spineIndexInPackage = [bookCopy spineIndexInPackage];
    v9->_spineIndexInPackage = [spineIndexInPackage unsignedIntegerValue];

    objc_storeWeak(&v9->_delegate, delegateCopy);
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

- (void)setOperationFactory:(id)factory
{
  factoryCopy = factory;
  operationFactory = self->_operationFactory;
  p_operationFactory = &self->_operationFactory;
  if (operationFactory != factoryCopy)
  {
    v8 = factoryCopy;
    objc_storeStrong(p_operationFactory, factory);
    factoryCopy = v8;
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

- (void)batchEnded:(BOOL)ended
{
  if (ended)
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

+ (id)newPaginationControllerForBook:(id)book delegate:(id)delegate
{
  delegateCopy = delegate;
  bookCopy = book;
  v7 = [[BKPaginationController alloc] initWithBook:bookCopy delegate:delegateCopy];

  contentType = [bookCopy contentType];
  if (contentType == 2)
  {
    v9 = v7;
    v7 = 0;
    goto LABEL_5;
  }

  if (!contentType)
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
  operations = [(NSOperationQueue *)self->_layoutQueue operations];
  if ([operations count])
  {

LABEL_4:

    [(BKPaginationController *)self performSelector:"waitUntilAllOperationsAreFinished" withObject:0 afterDelay:1.0];
    return;
  }

  operations2 = [(NSOperationQueue *)self->_resultsQueue operations];
  v5 = [operations2 count];

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

- (id)documentPageCountForDocumentOrdinal:(int64_t)ordinal
{
  if (ordinal < 0)
  {
    v6 = 0;
  }

  else
  {
    v4 = [[NSNumber alloc] initWithInteger:ordinal];
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

- (int64_t)pageNumberForDocumentOrdinal:(int64_t)ordinal
{
  v3 = [(BKPaginationController *)self documentPageCountForDocumentOrdinal:ordinal];
  v4 = v3;
  if (v3)
  {
    pageNumber = [v3 pageNumber];
    integerValue = [pageNumber integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (int64_t)pagesInDocumentOrdinal:(int64_t)ordinal
{
  v3 = [(BKPaginationController *)self documentPageCountForDocumentOrdinal:ordinal];
  v4 = v3;
  if (v3)
  {
    pageCount = [v3 pageCount];
    intValue = [pageCount intValue];

    v7 = intValue;
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
    book = [(BKPaginationController *)self book];
    linearDocumentCount = [book linearDocumentCount];

    if (v3 == linearDocumentCount)
    {
      lastObject = [(NSArray *)self->_paginationInfo lastObject];
      pageNumber = [lastObject pageNumber];
      integerValue = [pageNumber integerValue];

      pageCount = [lastObject pageCount];
      integerValue2 = [pageCount integerValue];

      self->_pageTotal = integerValue2 + integerValue - 1;
    }
  }

  return self->_pageTotal;
}

- (void)repaginateWithStyle:(id)style geometry:(id)geometry force:(BOOL)force
{
  forceCopy = force;
  styleCopy = style;
  geometryCopy = geometry;
  _lookupKey = [(BKPaginationController *)self _lookupKey];
  [(BKPaginationController *)self setStyle:styleCopy];
  [(BKPaginationController *)self setConfiguration:geometryCopy];

  configuration = [(BKPaginationController *)self configuration];
  environment = [configuration environment];
  [environment unfreeze];

  delegate = [(BKPaginationController *)self delegate];
  v14 = [delegate environmentOverrideViewForPaginationController:self];

  if (v14)
  {
    v15 = _AEPaginationLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412290;
      v32 = v14;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Set an override view: %@", &v31, 0xCu);
    }

    configuration2 = [(BKPaginationController *)self configuration];
    environment2 = [configuration2 environment];
    [environment2 setView:v14];
  }

  configuration3 = [(BKPaginationController *)self configuration];
  environment3 = [configuration3 environment];
  [environment3 freeze];

  v20 = _AEPaginationLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    configuration4 = [(BKPaginationController *)self configuration];
    v31 = 138543618;
    v32 = configuration4;
    v33 = 2114;
    v34 = styleCopy;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "\nCaptured configuration: %{public}@\nStyle:%{public}@\n", &v31, 0x16u);
  }

  [(BKPaginationController *)self releasePaginationInfo];
  if (styleCopy || ![(BKPaginationFactory *)self->_operationFactory isStyleRequiredForPagination])
  {
    _lookupKey2 = [(BKPaginationController *)self _lookupKey];
    v23 = _AEPaginationLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138543362;
      v32 = _lookupKey2;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Repagination request made for:%{public}@.", &v31, 0xCu);
    }

    if (([_lookupKey isEqualToString:_lookupKey2] & 1) == 0)
    {
      v24 = _AEPaginationLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v31 = 138543618;
        v32 = _lookupKey2;
        v33 = 2114;
        v34 = _lookupKey;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "CurrentKey:%{public}@ != PreviousKey:%{public}@ Resetting count. #retryPagination", &v31, 0x16u);
      }

      [(BKPaginationController *)self setPaginationRetryCount:0];
    }

    [(BKPaginationController *)self updatePaginationCache:forceCopy];
    [(BKPaginationController *)self setJobGeneration:[(BKPaginationController *)self jobGeneration]+ 1];
    v25 = [(BKPaginationJob *)[BKPaginationBatchJob alloc] init:[(BKPaginationController *)self jobGeneration]];
    [v25 setStyle:styleCopy];
    [v25 setLookupKey:_lookupKey2];
    bookDatabaseKey = [(BKPaginationController *)self bookDatabaseKey];
    [v25 setBookDatabaseKey:bookDatabaseKey];

    configuration5 = [(BKPaginationController *)self configuration];
    [configuration5 contentLayoutSize];
    [v25 setPageSize:?];

    navigationHistory = [(BKPaginationController *)self navigationHistory];
    allObjects = [navigationHistory allObjects];
    [v25 setHistoryEntities:allObjects];

    configuration6 = [(BKPaginationController *)self configuration];
    [v25 setConfiguration:configuration6];

    [v25 setForce:forceCopy];
    [(BKPaginationController *)self addPrepareJob:v25];
  }

  else
  {
    _lookupKey2 = _AEPaginationLog();
    if (os_log_type_enabled(_lookupKey2, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_0, _lookupKey2, OS_LOG_TYPE_ERROR, "Aborting pagination because no style was provided.", &v31, 2u);
    }
  }
}

- (void)_releaseData:(BOOL)data
{
  dataCopy = data;
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
  if (dataCopy)
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

- (id)paginationInfoForPageNumber:(int64_t)number
{
  if (number >= 1 && (v5 = [(NSArray *)self->_paginationInfo count]) != 0)
  {
    v6 = 0;
    while (1)
    {
      v7 = [(NSArray *)self->_paginationInfo objectAtIndex:v6];
      pageNumber = [v7 pageNumber];
      integerValue = [pageNumber integerValue];

      pageCount = [v7 pageCount];
      integerValue2 = [pageCount integerValue];

      if (integerValue <= number && integerValue + integerValue2 > number)
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

- (id)pageLocationForPageNumber:(int64_t)number
{
  if ((number - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    v9 = 0;
  }

  else
  {
    v4 = [(BKPaginationController *)self paginationInfoForPageNumber:?];
    if (v4)
    {
      v5 = [BKPageLocation alloc];
      documentOrdinal = [v4 documentOrdinal];
      integerValue = [documentOrdinal integerValue];
      pageNumber = [v4 pageNumber];
      v9 = -[BKPageLocation initWithOrdinal:andOffset:](v5, "initWithOrdinal:andOffset:", integerValue, number - [pageNumber integerValue]);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (int64_t)pageNumberForLocation:(id)location
{
  locationCopy = location;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = locationCopy;
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
    v8 = -[BKPaginationController pageNumberForDocumentOrdinal:](self, "pageNumberForDocumentOrdinal:", [locationCopy ordinal]);
  }

  return v8;
}

- (unint64_t)chapterIndexForPageNumber:(int64_t)number getFirstChapter:(BOOL)chapter
{
  if ((number - 1) > 0x7FFFFFFFFFFFFFFDLL)
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
    pageNumber = [v9 pageNumber];
    intValue = [pageNumber intValue];

    v12 = intValue == number && chapter;
    if (intValue > number)
    {
      break;
    }

    v8 = v7++;
  }

  while (!v12);
  return v8;
}

- (unint64_t)physicalPageIndexForPageNumber:(int64_t)number
{
  if ((number - 1) > 0x7FFFFFFFFFFFFFFDLL)
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
    pageNumber = [v8 pageNumber];
    integerValue = [pageNumber integerValue];

    v6 = v5++;
  }

  while (integerValue <= number);
  return v7;
}

- (unint64_t)chapterIndexForHref:(id)href
{
  hrefCopy = href;
  v5 = hrefCopy;
  if (hrefCopy && [hrefCopy length])
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

          href = [*(*(&v15 + 1) + 8 * v10) href];
          v13 = [href isEqualToString:v5];

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

- (id)physicalPageTitlesForPageNumber:(int64_t)number
{
  physicalPagesInfo = self->_physicalPagesInfo;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_81884;
  v14[3] = &unk_1E4A28;
  v14[4] = number;
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
    v7 = [(BKPaginationController *)self physicalPageIndexForPageNumber:number];
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

  lastIndex = [v6 lastIndex];
  if (lastIndex < [(NSArray *)self->_physicalPagesInfo count])
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

- (id)chapterForPageNumber:(int64_t)number
{
  v4 = [(BKPaginationController *)self chapterIndexForPageNumber:number];
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

- (id)titleForChapterAtPageNumber:(int64_t)number
{
  v3 = [(BKPaginationController *)self chapterForPageNumber:number];
  name = [v3 name];

  return name;
}

- (id)hrefForChapterAtPageNumber:(int64_t)number
{
  v3 = [(BKPaginationController *)self chapterForPageNumber:number];
  href = [v3 href];

  return href;
}

- (id)hrefForPageNumber:(int64_t)number
{
  v3 = [(BKPaginationController *)self paginationInfoForPageNumber:number];
  href = [v3 href];

  return href;
}

- (_NSRange)pageRangeForChapterAtIndex:(unint64_t)index
{
  if ([(NSArray *)self->_chapterInfo count]<= index)
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = [(NSArray *)self->_chapterInfo objectAtIndex:index];
    if (index + 1 >= [(NSArray *)self->_chapterInfo count])
    {
      integerValue = 0x7FFFFFFFFFFFFFFFLL;
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      if ([(BKPaginationController *)self pageTotal]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        pageNumber = [v5 pageNumber];
        integerValue = [pageNumber integerValue];

        v10 = [(BKPaginationController *)self pageTotal]- integerValue + 1;
      }
    }

    else
    {
      v6 = [(NSArray *)self->_chapterInfo objectAtIndex:?];
      pageNumber2 = [v5 pageNumber];
      integerValue = [pageNumber2 integerValue];

      pageNumber3 = [v6 pageNumber];
      v10 = [pageNumber3 integerValue] - integerValue;
    }
  }

  v12 = integerValue;
  v13 = v10;
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)pageRangeForChapter:(id)chapter
{
  href = [chapter href];
  v5 = [(BKPaginationController *)self chapterIndexForHref:href];

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

- (_NSRange)pageRangeForChapterAtPageNumber:(int64_t)number
{
  v4 = [(BKPaginationController *)self chapterIndexForPageNumber:number];
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

- (_NSRange)pageRangeForAnnotation:(id)annotation
{
  annotationUuid = [annotation annotationUuid];
  v5 = [NSPredicate predicateWithFormat:@"annotationUuid == %@", annotationUuid];

  fetchBookmarkPageCounts = [(BKPaginationController *)self fetchBookmarkPageCounts];
  v7 = [fetchBookmarkPageCounts filteredArrayUsingPredicate:v5];
  if ([v7 count])
  {
    v8 = [v7 objectAtIndex:0];
    pageNumber = [v8 pageNumber];
    unsignedIntegerValue = [pageNumber unsignedIntegerValue];
    v11 = 1;
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = unsignedIntegerValue;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (id)pageTitleForPageNumber:(int64_t)number
{
  if ([(NSArray *)self->_physicalPagesInfo count])
  {
    physicalPagesInfo = self->_physicalPagesInfo;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_81EE4;
    v10[3] = &unk_1E4A28;
    v10[4] = number;
    v6 = [(NSArray *)physicalPagesInfo indexOfObjectWithOptions:3 passingTest:v10];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      name = 0;
    }

    else
    {
      v8 = [(NSArray *)self->_physicalPagesInfo objectAtIndex:v6];
      name = [v8 name];
    }
  }

  else
  {
    name = [NSString stringWithFormat:@"%ld", number];
  }

  return name;
}

- (id)pageTitleForAnnotation:(id)annotation
{
  v4 = [(BKPaginationController *)self pageRangeForAnnotation:annotation];
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

- (id)pageTitleForChapter:(id)chapter
{
  href = [chapter href];
  v5 = [(BKPaginationController *)self chapterIndexForHref:href];

  chapterInfo = self->_chapterInfo;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(NSArray *)chapterInfo count];
    book = [(BKPaginationController *)self book];
    chapters = [book chapters];
    allObjects = [chapters allObjects];
    v11 = [allObjects count];

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
    pageNumber = [v17 pageNumber];
    v12 = -[BKPaginationController pageTitleForPageNumber:](self, "pageTitleForPageNumber:", [pageNumber integerValue]);
  }

  return v12;
}

- (id)_lookupKey
{
  operationFactory = self->_operationFactory;
  style = [(BKPaginationController *)self style];
  configuration = [(BKPaginationController *)self configuration];
  v6 = [(BKPaginationFactory *)operationFactory lookupKeyForStyle:style geometry:configuration];

  return v6;
}

- (int64_t)incrementBatchProgress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_paginationBatchProgress + 1;
  selfCopy->_paginationBatchProgress = v3;
  objc_sync_exit(selfCopy);

  [(BKPaginationController *)selfCopy performSelectorOnMainThread:"updateProgress" withObject:0 waitUntilDone:0];
  return v3;
}

- (float)progress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  paginationBatchSize = selfCopy->_paginationBatchSize;
  paginationBatchProgress = selfCopy->_paginationBatchProgress;
  objc_sync_exit(selfCopy);

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
  prepareQueue = [(BKPaginationController *)self prepareQueue];
  if ([prepareQueue operationCount])
  {
    v4 = 1;
  }

  else
  {
    layoutQueue = [(BKPaginationController *)self layoutQueue];
    if ([layoutQueue operationCount])
    {
      v4 = 1;
    }

    else
    {
      resultsQueue = [(BKPaginationController *)self resultsQueue];
      v4 = [resultsQueue operationCount] != 0;
    }
  }

  return v4;
}

- (void)updateProgress
{
  [(BKPaginationController *)self willChangeValueForKey:@"progress"];

  [(BKPaginationController *)self didChangeValueForKey:@"progress"];
}

- (void)updatePaginationCache:(BOOL)cache
{
  book = [(BKPaginationController *)self book];
  if (book && (v6 = book, -[BKPaginationController book](self, "book"), v7 = objc_claimAutoreleasedReturnValue(), [v7 managedObjectContext], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v8))
  {
    _lookupKey = [(BKPaginationController *)self _lookupKey];
    v10 = [(BKPaginationController *)self paginationArrayWithLookupKey:_lookupKey];
    if (![v10 count])
    {
      v11 = _AEPaginationLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138543362;
        v26 = _lookupKey;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Did not find existing pagination results for LookupKey:%{public}@", &v25, 0xCu);
      }
    }

    if (!-[NSArray isEqualToArray:](self->_paginationInfo, "isEqualToArray:", v10) && [v10 count])
    {
      objc_storeStrong(&self->_lookupKey, _lookupKey);
      paginationInfo = self->_paginationInfo;
      self->_paginationInfo = 0;

      chapterInfo = self->_chapterInfo;
      self->_chapterInfo = 0;

      physicalPagesInfo = self->_physicalPagesInfo;
      self->_physicalPagesInfo = 0;

      self->_pageTotal = 0x7FFFFFFFFFFFFFFFLL;
      book2 = [(BKPaginationController *)self book];
      linearDocumentCount = [book2 linearDocumentCount];

      if (linearDocumentCount >= 1)
      {
        self->_paginationBatchSize = linearDocumentCount;
        if (cache)
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

      v20 = [(BKPaginationController *)self chapterArrayWithLookupKey:_lookupKey];
      v21 = self->_chapterInfo;
      self->_chapterInfo = v20;
      v22 = v20;

      objc_storeStrong(&self->_paginationInfo, v10);
      v23 = [(BKPaginationController *)self physicalPagesArrayWithLookupKey:_lookupKey];
      v24 = self->_physicalPagesInfo;
      self->_physicalPagesInfo = v23;

      [(BKPaginationController *)self postPaginationLoadedNotification];
    }
  }

  else
  {
    bookObjectID = [(BKPaginationController *)self bookObjectID];

    if (!bookObjectID)
    {
      return;
    }

    _lookupKey = _AEPaginationLog();
    if (os_log_type_enabled(_lookupKey, OS_LOG_TYPE_ERROR))
    {
      bookObjectID2 = [(BKPaginationController *)self bookObjectID];
      v25 = 138412290;
      v26 = bookObjectID2;
      _os_log_impl(&dword_0, _lookupKey, OS_LOG_TYPE_ERROR, "We have no book. Was it deleted? %@", &v25, 0xCu);
    }
  }
}

- (void)managedObjectContextDidSave:(id)save
{
  saveCopy = save;
  userInfo = [saveCopy userInfo];
  v6 = [userInfo objectForKey:NSDeletedObjectsKey];

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

          objectID = [*(*(&v29 + 1) + 8 * i) objectID];
          bookObjectID = [(BKPaginationController *)self bookObjectID];
          v14 = [objectID isEqual:bookObjectID];

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

  userInfo2 = [saveCopy userInfo];
  v17 = [userInfo2 objectForKey:NSInsertedObjectsKey];

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

- (id)chapterArrayWithLookupKey:(id)key
{
  keyCopy = key;
  book = [(BKPaginationController *)self book];
  managedObjectContext = [book managedObjectContext];

  keyCopy = [NSPredicate predicateWithFormat:@"lookupKey ==[n] %@", keyCopy];

  v8 = [managedObjectContext entity:@"BKChapterPageCount" withPredicate:keyCopy sortBy:@"pageNumber" ascending:1 fetchLimit:0];

  return v8;
}

- (id)paginationArrayWithLookupKey:(id)key
{
  keyCopy = key;
  book = [(BKPaginationController *)self book];
  managedObjectContext = [book managedObjectContext];

  keyCopy = [NSPredicate predicateWithFormat:@"lookupKey ==[n] %@", keyCopy];

  v8 = [managedObjectContext entity:@"BKDocumentPageCount" withPredicate:keyCopy sortBy:@"documentOrdinal" ascending:1 fetchLimit:0];

  return v8;
}

- (id)physicalPagesArrayWithLookupKey:(id)key
{
  keyCopy = key;
  book = [(BKPaginationController *)self book];
  managedObjectContext = [book managedObjectContext];

  keyCopy = [NSPredicate predicateWithFormat:@"lookupKey ==[n] %@", keyCopy];

  v8 = [[NSSortDescriptor alloc] initWithKey:@"pageNumber" ascending:1];
  v9 = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:1];
  v10 = [[NSArray alloc] initWithObjects:{v8, v9, 0}];
  v11 = [managedObjectContext entity:@"BKPhysicalPageCount" withPredicate:keyCopy sortDescriptors:v10 fetchLimit:0 prefetchRelationships:0];

  return v11;
}

- (id)fetchBookmarkPageCounts
{
  bookmarkPageCounts = [(BKPaginationController *)self bookmarkPageCounts];

  if (!bookmarkPageCounts)
  {
    _lookupKey = [(BKPaginationController *)self _lookupKey];
    book = [(BKPaginationController *)self book];
    managedObjectContext = [book managedObjectContext];

    v7 = [NSPredicate predicateWithFormat:@"lookupKey ==[n] %@", _lookupKey];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [managedObjectContext entity:v9 withPredicate:v7 sortBy:@"pageNumber" ascending:1 fetchLimit:0];
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
    osBuildVersion = [v4 osBuildVersion];
    v6 = [v3 initWithFormat:@"%@-%d", osBuildVersion, 14];
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