@interface THSearchController
- (BOOL)indexLoaded;
- (THSearchController)initWithDocumentRoot:(id)a3;
- (id)anchorForSelectedSearchResult:(id)a3;
- (id)displayNumberStringFromEncodedPageNumberResult:(id)a3;
- (id)p_allSearchResults;
- (id)p_recentSearchAtIndex:(int64_t)a3;
- (id)recentSearchQueryAtIndex:(int64_t)a3;
- (id)summaryForGlossaryTerm:(id)a3;
- (int64_t)recentSearchCount;
- (int64_t)recentSearchCountAtIndex:(int64_t)a3;
- (unint64_t)absolutePageIndexForPageNumberString:(id)a3;
- (unint64_t)absolutePageIndexFromEncodedPageNumberResult:(id)a3;
- (unint64_t)searchResultCount;
- (void)annotationSearchIndexBuildOperationFailed:(id)a3;
- (void)cancelLoadIndex;
- (void)clearSearchResults;
- (void)dealloc;
- (void)invalidatePaginationResults;
- (void)loadIndex;
- (void)p_indexloadFinished:(id)a3;
- (void)p_kickOffQuery:(id)a3 giveSuggestions:(BOOL)a4 completionBlock:(id)a5;
- (void)p_populatePageNumbersOfModelSearchResults:(id)a3;
- (void)p_processSearchResultsWithCompletionBlock:(id)a3;
- (void)p_processSuggestionsWithCompletionBlock:(id)a3;
- (void)p_setupDisplayPageNumberMap;
- (void)resolveTitleForSearchResult:(id)a3;
- (void)searchForString:(id)a3 completionBlock:(id)a4;
- (void)searchIndexLoadOperationFailed:(id)a3;
- (void)setAnnotationSearchRefText:(id)a3;
- (void)setSearchRefText:(id)a3;
- (void)suggestionsForSearchString:(id)a3 completionBlock:(id)a4;
- (void)unloadIndex;
- (void)updatePaginationResults;
@end

@implementation THSearchController

- (THSearchController)initWithDocumentRoot:(id)a3
{
  v7.receiver = self;
  v7.super_class = THSearchController;
  v4 = [(THSearchController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mDocumentRoot = a3;
    v4->mRecentSearches = objc_alloc_init(NSMutableArray);
  }

  return v5;
}

- (void)p_setupDisplayPageNumberMap
{
  if (![(THSearchController *)self displayPageNumberMap])
  {
    [(THSearchController *)self setDisplayPageNumberMap:objc_alloc_init(THDisplayPageNumberMap)];
    if ([(THSearchController *)self paginationResultsValid])
    {

      [(THSearchController *)self updatePaginationResults];
    }
  }
}

- (void)updatePaginationResults
{
  [(THDisplayPageNumberMap *)[(THSearchController *)self displayPageNumberMap] buildDisplayPageMapsWithDocumentRoot:self->mDocumentRoot];
  [(THSearchController *)self setPaginationResultsValid:1];
  if ([(THSearchController *)self displayPageNumberMap])
  {
    [(THSearchController *)self p_populatePageNumbersOfModelSearchResults:[(THSearchController *)self p_allSearchResults]];
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = THSearchControllerDidUpdatePaginationResultsNotification;

    [(NSNotificationCenter *)v3 postNotificationName:v4 object:self];
  }
}

- (void)invalidatePaginationResults
{
  [(THDisplayPageNumberMap *)[(THSearchController *)self displayPageNumberMap] clearDisplayPageMapsWithDocumentRoot:self->mDocumentRoot];
  [(THSearchController *)self setPaginationResultsValid:0];
  if ([(THSearchController *)self displayPageNumberMap])
  {
    [(THSearchController *)self p_populatePageNumbersOfModelSearchResults:[(THSearchController *)self p_allSearchResults]];
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = THSearchControllerDidUpdatePaginationResultsNotification;

    [(NSNotificationCenter *)v3 postNotificationName:v4 object:self];
  }
}

- (void)dealloc
{
  [(THSearchController *)self clearSearchResults];

  self->mRecentSearches = 0;
  self->mDisplayPageNumberMap = 0;

  self->mAnnotationReferenceTextMap = 0;
  v3.receiver = self;
  v3.super_class = THSearchController;
  [(THSearchController *)&v3 dealloc];
}

- (void)suggestionsForSearchString:(id)a3 completionBlock:(id)a4
{
  objc_sync_enter(self);
  [(THSearchController *)self p_kickOffQuery:a3 giveSuggestions:1 completionBlock:a4];

  objc_sync_exit(self);
}

- (void)searchForString:(id)a3 completionBlock:(id)a4
{
  objc_sync_enter(self);
  [(THSearchController *)self p_kickOffQuery:a3 giveSuggestions:0 completionBlock:a4];

  objc_sync_exit(self);
}

- (void)p_kickOffQuery:(id)a3 giveSuggestions:(BOOL)a4 completionBlock:(id)a5
{
  objc_sync_enter(self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_CE6E4;
  v9[3] = &unk_45D188;
  v9[4] = self;
  v9[5] = a3;
  v9[6] = a5;
  v10 = a4;
  _os_activity_initiate(&dword_0, "Search for string", OS_ACTIVITY_FLAG_DEFAULT, v9);
  objc_sync_exit(self);
}

- (void)setSearchRefText:(id)a3
{
  objc_sync_enter(self);
  self->mReferenceTextMap = a3;

  objc_sync_exit(self);
}

- (void)setAnnotationSearchRefText:(id)a3
{
  objc_sync_enter(self);

  self->mAnnotationReferenceTextMap = 0;
  self->mAnnotationReferenceTextMap = a3;

  objc_sync_exit(self);
}

- (void)p_processSuggestionsWithCompletionBlock:(id)a3
{
  objc_sync_enter(self);
  if (self->mCurrentQuery && self->mOccurrenceMap && (![(THSearchController *)self searchNotes]|| self->mAnnotationOccurrenceMap) && self->mReferenceTextMap)
  {
    v5 = [(THSearchIndex *)[(THDocumentRoot *)self->mDocumentRoot searchIndex] resultsForQuery:self->mCurrentQuery occurrenceMap:self->mOccurrenceMap searchContextMap:self->mReferenceTextMap suggestions:1];
    if ([(THSearchController *)self searchNotes])
    {
      v6 = [(THSearchIndex *)[(THDocumentRoot *)self->mDocumentRoot annotationSearchIndex] resultsForQuery:self->mCurrentQuery occurrenceMap:self->mAnnotationOccurrenceMap searchContextMap:self->mAnnotationReferenceTextMap suggestions:1];
      v7 = +[NSMutableDictionary dictionary];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v8 = [v5 setByAddingObjectsFromSet:v6];
      v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v9)
      {
        v10 = *v30;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v30 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v29 + 1) + 8 * i);
            v13 = [v7 objectForKey:{objc_msgSend(v12, "term")}];
            if (v13)
            {
              [v13 setOccurenceCount:{objc_msgSend(v13, "occurenceCount") + objc_msgSend(v12, "occurenceCount")}];
            }

            else
            {
              [v7 setObject:v12 forKey:{objc_msgSend(v12, "term")}];
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v9);
      }

      v14 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [v7 allValues]);
    }

    else
    {
      v14 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [v5 allObjects]);
    }

    v15 = v14;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_CF0B8;
    v28[3] = &unk_45BBC0;
    v28[4] = self;
    [(NSMutableArray *)v14 sortUsingComparator:v28];
    v16 = [(THDisplayPageNumberMap *)[(THSearchController *)self displayPageNumberMap] preferredAbsolutePageIndexesForDisplayPageNumber:self->mCurrentQuery];
    v17 = [v16 count];
    v18 = v17 != 0;
    v19 = [NSMutableArray arrayWithCapacity:v18];
    v20 = [NSMutableArray arrayWithCapacity:v18];
    if (v17)
    {
      v21 = [objc_msgSend(v16 objectAtIndex:{0), "intValue"}];
      v22 = [(THDisplayPageNumberMap *)[(THSearchController *)self displayPageNumberMap] displayPageNumberForAbsolutePageIndex:v21];
      [(NSMutableArray *)v19 addObject:[NSString stringWithFormat:@"%@%@, %lu", kTHSearchControllerPageNumberToken, v22, v21]];
      [(NSMutableArray *)v20 addObject:[NSNumber numberWithUnsignedInteger:1]];
      v23 = 19;
    }

    else
    {
      v23 = 20;
    }

    if ([(NSMutableArray *)v15 count]> v23)
    {
      [(NSMutableArray *)v15 removeObjectsInRange:v23, [(NSMutableArray *)v15 count]- v23];
    }

    v24 = [NSArray arrayWithArray:[(NSMutableArray *)v15 tsu_map:&stru_45D1C8]];
    v25 = [NSArray arrayWithArray:[(NSMutableArray *)v15 tsu_map:&stru_45D208]];
    v26 = [(NSMutableArray *)v19 arrayByAddingObjectsFromArray:v24];
    v27 = [(NSMutableArray *)v20 arrayByAddingObjectsFromArray:v25];
    self->mSuggestionResults = [v26 copy];
    self->mSuggestionOccurenceCounts = [v27 copy];
    (*(a3 + 2))(a3);

    self->mOccurrenceMap = 0;
    self->mAnnotationOccurrenceMap = 0;

    self->mReferenceTextMap = 0;
  }

  objc_sync_exit(self);
}

- (void)p_processSearchResultsWithCompletionBlock:(id)a3
{
  objc_sync_enter(self);
  if (self->mCurrentQuery && self->mOccurrenceMap && (![(THSearchController *)self searchNotes]|| self->mAnnotationOccurrenceMap) && self->mReferenceTextMap && (![(THSearchController *)self searchNotes]|| self->mAnnotationReferenceTextMap))
  {
    v5 = [(THSearchIndex *)[(THDocumentRoot *)self->mDocumentRoot searchIndex] resultsForQuery:self->mCurrentQuery occurrenceMap:self->mOccurrenceMap searchContextMap:self->mReferenceTextMap suggestions:0];
    -[THSearchController p_populatePageNumbersOfModelSearchResults:](self, "p_populatePageNumbersOfModelSearchResults:", [v5 objectsPassingTest:&stru_45D248]);
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v45 = a3;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v8 = [v5 countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v8)
    {
      v9 = *v68;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v68 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v67 + 1) + 8 * i);
          if ([v11 isTextResult])
          {
            v12 = v6;
          }

          else
          {
            v12 = v7;
          }

          [(NSMutableArray *)v12 addObject:v11];
        }

        v8 = [v5 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v8);
    }

    if ([(THSearchController *)self searchNotes])
    {
      v13 = [objc_msgSend(-[THSearchIndex resultsForQuery:occurrenceMap:searchContextMap:suggestions:](-[THDocumentRoot annotationSearchIndex](self->mDocumentRoot "annotationSearchIndex")];
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v63 objects:v75 count:16];
      if (v14)
      {
        v15 = *v64;
        do
        {
          for (j = 0; j != v14; j = j + 1)
          {
            if (*v64 != v15)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v63 + 1) + 8 * j) setDisplayPageNumber:{-[THDisplayPageNumberMap displayPageNumberForAbsolutePageIndex:](-[THSearchController displayPageNumberMap](self, "displayPageNumberMap"), "displayPageNumberForAbsolutePageIndex:", objc_msgSend(*(*(&v63 + 1) + 8 * j), "pageNumber"))}];
          }

          v14 = [v13 countByEnumeratingWithState:&v63 objects:v75 count:16];
        }

        while (v14);
      }
    }

    else
    {
      v13 = 0;
    }

    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_CF9D4;
    v62[3] = &unk_45BBC0;
    v62[4] = self;
    v17 = NSArray_ptr;
    if ([(NSMutableArray *)v6 count])
    {
      [(NSMutableArray *)v6 sortUsingComparator:v62];
      v18 = objc_alloc_init(NSMutableArray);
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v19 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v58 objects:v74 count:16];
      if (v19)
      {
        v20 = 0;
        v21 = *v59;
        do
        {
          for (k = 0; k != v19; k = k + 1)
          {
            if (*v59 != v21)
            {
              objc_enumerationMutation(v6);
            }

            v23 = *(*(&v58 + 1) + 8 * k);
            if ([v23 rank] == 1 && v20)
            {
              v20 = 1;
            }

            else
            {
              [v18 addObject:v23];
              v20 = [v23 rank] == 1;
            }
          }

          v19 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v58 objects:v74 count:16];
        }

        while (v19);
      }

      v17 = NSArray_ptr;
      v24 = [NSArray alloc];
      v25 = [v18 count];
      if (v25 >= 3)
      {
        v26 = 3;
      }

      else
      {
        v26 = v25;
      }

      self->mTopTextResults = [v24 initWithArray:{objc_msgSend(v18, "subarrayWithRange:", 0, v26)}];

      [(NSMutableArray *)v6 sortUsingComparator:&stru_45D268];
      self->mTextResults = [[NSArray alloc] initWithArray:v6];
    }

    if ([(NSMutableArray *)v7 count])
    {
      [(NSMutableArray *)v7 sortUsingComparator:v62];
      v27 = objc_alloc(*v17);
      v28 = [(NSMutableArray *)v7 count];
      if (v28 >= 2)
      {
        v29 = 2;
      }

      else
      {
        v29 = v28;
      }

      self->mTopMediaResults = [v27 initWithArray:{-[NSMutableArray subarrayWithRange:](v7, "subarrayWithRange:", 0, v29)}];
      [(NSMutableArray *)v7 sortUsingComparator:&stru_45D268];
      self->mMediaResults = [objc_alloc(*v17) initWithArray:v7];
    }

    if ([v13 count])
    {
      [v13 sortUsingComparator:v62];
      v30 = objc_alloc(*v17);
      v31 = [v13 count];
      if (v31 >= 2)
      {
        v32 = 2;
      }

      else
      {
        v32 = v31;
      }

      self->mTopNotesResults = [v30 initWithArray:{objc_msgSend(v13, "subarrayWithRange:", 0, v32)}];
      [v13 sortUsingComparator:&stru_45D268];
      self->mNotesResults = [objc_alloc(*v17) initWithArray:v13];
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    mTopTextResults = self->mTopTextResults;
    v34 = [(NSArray *)mTopTextResults countByEnumeratingWithState:&v54 objects:v73 count:16];
    if (v34)
    {
      v35 = *v55;
      do
      {
        for (m = 0; m != v34; m = m + 1)
        {
          if (*v55 != v35)
          {
            objc_enumerationMutation(mTopTextResults);
          }

          [(THSearchController *)self resolveTitleForSearchResult:*(*(&v54 + 1) + 8 * m)];
        }

        v34 = [(NSArray *)mTopTextResults countByEnumeratingWithState:&v54 objects:v73 count:16];
      }

      while (v34);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    mTopMediaResults = self->mTopMediaResults;
    v38 = [(NSArray *)mTopMediaResults countByEnumeratingWithState:&v50 objects:v72 count:16];
    if (v38)
    {
      v39 = *v51;
      do
      {
        for (n = 0; n != v38; n = n + 1)
        {
          if (*v51 != v39)
          {
            objc_enumerationMutation(mTopMediaResults);
          }

          [(THSearchController *)self resolveTitleForSearchResult:*(*(&v50 + 1) + 8 * n)];
        }

        v38 = [(NSArray *)mTopMediaResults countByEnumeratingWithState:&v50 objects:v72 count:16];
      }

      while (v38);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    mTopNotesResults = self->mTopNotesResults;
    v42 = [(NSArray *)mTopNotesResults countByEnumeratingWithState:&v46 objects:v71 count:16];
    if (v42)
    {
      v43 = *v47;
      do
      {
        for (ii = 0; ii != v42; ii = ii + 1)
        {
          if (*v47 != v43)
          {
            objc_enumerationMutation(mTopNotesResults);
          }

          [(THSearchController *)self resolveTitleForSearchResult:*(*(&v46 + 1) + 8 * ii)];
        }

        v42 = [(NSArray *)mTopNotesResults countByEnumeratingWithState:&v46 objects:v71 count:16];
      }

      while (v42);
    }

    v45[2]();

    self->mOccurrenceMap = 0;
    self->mAnnotationOccurrenceMap = 0;

    self->mReferenceTextMap = 0;
  }

  objc_sync_exit(self);
}

- (id)displayNumberStringFromEncodedPageNumberResult:(id)a3
{
  v3 = [objc_msgSend(a3 substringFromIndex:{objc_msgSend(kTHSearchControllerPageNumberToken, "length")), "componentsSeparatedByString:", @", "}];

  return [v3 objectAtIndex:0];
}

- (unint64_t)absolutePageIndexFromEncodedPageNumberResult:(id)a3
{
  v3 = [objc_msgSend(a3 substringFromIndex:{objc_msgSend(kTHSearchControllerPageNumberToken, "length")), "componentsSeparatedByString:", @", "}];
  if ([v3 count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndex:1];
  }

  LODWORD(result) = [v4 intValue];
  if ((result & 0x80000000) != 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return result;
  }
}

- (unint64_t)absolutePageIndexForPageNumberString:(id)a3
{
  v4 = [(THSearchController *)self displayPageNumberMap];

  return [(THDisplayPageNumberMap *)v4 absolutePageIndexForDisplayPageNumber:a3];
}

- (void)clearSearchResults
{
  objc_sync_enter(self);
  [(NSOperationQueue *)self->mReferenceIndexLoadQueue cancelAllOperations];

  self->mCurrentQuery = 0;
  self->mSuggestionResults = 0;

  self->mSuggestionOccurenceCounts = 0;
  self->mTextResults = 0;

  self->mTopTextResults = 0;
  self->mMediaResults = 0;

  self->mTopMediaResults = 0;
  self->mNotesResults = 0;

  self->mTopNotesResults = 0;
  self->mOccurrenceMap = 0;

  self->mAnnotationOccurrenceMap = 0;
  self->mIndexLoadQueue = 0;

  self->mReferenceIndexLoadQueue = 0;
  self->mReferenceIndexLoadOperation = 0;

  self->mReferenceTextMap = 0;

  objc_sync_exit(self);
}

- (unint64_t)searchResultCount
{
  v3 = [(NSArray *)[(THSearchController *)self textSearchResults] count];
  v4 = [(NSArray *)[(THSearchController *)self mediaSearchResults] count]+ v3;
  return [(NSArray *)[(THSearchController *)self notesSearchResults] count]+ v4;
}

- (id)anchorForSelectedSearchResult:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = [a3 annotation];
  mDocumentRoot = self->mDocumentRoot;
  if (v5)
  {
    v7 = v5;
    v8 = -[THDocumentNavigationModel contentNodeForGUID:](-[THDocumentRoot navigationModel](mDocumentRoot, "navigationModel"), "contentNodeForGUID:", [v5 annotationContentNodeID]);
    v10 = [a3 contextRangeForResult];

    return [THAnnotationAnchor annotationAnchorWithContentNode:v8 annotation:v7 noteRange:v10, v9];
  }

  else
  {
    v11 = [a3 occurrenceIndex];
    v12 = [a3 term];
    v13 = [a3 cfi];

    return [(THDocumentRoot *)mDocumentRoot anchorForNthInstance:v11 ofSearchString:v12 afterCFIString:v13 coarsenIfNeeded:1];
  }
}

- (void)resolveTitleForSearchResult:(id)a3
{
  if (![a3 title])
  {
    v5 = [objc_msgSend(-[THDocumentRoot modelStorageAnchorForCfi:shallow:error:](self->mDocumentRoot modelStorageAnchorForCfi:objc_msgSend(a3 shallow:"cfi") error:{1, 0), "contentNode"), "title"}];

    [a3 setTitle:v5];
  }
}

- (BOOL)indexLoaded
{
  v2 = [(THDocumentRoot *)self->mDocumentRoot searchIndex];

  return [(THSearchIndex *)v2 loaded];
}

- (void)p_indexloadFinished:(id)a3
{
  objc_sync_enter(self);
  v4 = self->mCountOfLoadingIndices - 1;
  self->mCountOfLoadingIndices = v4;
  if (v4 || ([(THSearchIndex *)[(THDocumentRoot *)self->mDocumentRoot searchIndex] finishLoading], [(THSearchIndex *)[(THDocumentRoot *)self->mDocumentRoot annotationSearchIndex] finishLoading], self->mIndexLoadOperation = 0, self->mAnnotationIndexBuildOperation = 0, self->mIndexLoadFailed))
  {

    objc_sync_exit(self);
  }

  else
  {
    [(THAnnotationSearchIndex *)[(THDocumentRoot *)self->mDocumentRoot annotationSearchIndex] setAnnotationStorageController:[(THDocumentRoot *)self->mDocumentRoot annotationController]];
    [(THSearchController *)self performSelectorOnMainThread:"p_setupDisplayPageNumberMap" withObject:0 waitUntilDone:0];
    mIndexLoadFailed = self->mIndexLoadFailed;
    objc_sync_exit(self);
    if (!mIndexLoadFailed)
    {
      v6 = +[NSNotificationCenter defaultCenter];
      v7 = THSearchControllerDidLoadIndexNotification;

      [(NSNotificationCenter *)v6 postNotificationName:v7 object:self];
    }
  }
}

- (void)loadIndex
{
  objc_sync_enter(self);
  if (self->mIndexLoadOperation || [(THSearchIndex *)[(THDocumentRoot *)self->mDocumentRoot searchIndex] loaded])
  {
    v3 = 0;
  }

  else
  {
    v7 = [[THSearchIndexLoadOperation alloc] initWithDelegate:self documentRoot:self->mDocumentRoot];
    self->mIndexLoadOperation = &v7->super;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_D0300;
    v9[3] = &unk_45AE00;
    v9[4] = self;
    [(THSearchIndexLoadOperation *)v7 setCompletionBlock:v9];
    ++self->mCountOfLoadingIndices;
    v3 = 1;
  }

  if (self->mAnnotationIndexBuildOperation || ![(THSearchController *)self searchNotes])
  {
    if (!v3)
    {
      goto LABEL_13;
    }

    v5 = 0;
  }

  else
  {
    v4 = [[THAnnotationSearchIndexBuildOperation alloc] initWithDelegate:self documentRoot:self->mDocumentRoot];
    self->mAnnotationIndexBuildOperation = &v4->super;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_D030C;
    v8[3] = &unk_45AE00;
    v8[4] = self;
    [(THAnnotationSearchIndexBuildOperation *)v4 setCompletionBlock:v8];
    ++self->mCountOfLoadingIndices;
    v5 = 1;
  }

  self->mIndexLoadFailed = 0;
  v6 = objc_alloc_init(NSOperationQueue);
  self->mIndexLoadQueue = v6;
  [(NSOperationQueue *)v6 setName:@"Search Index Load"];
  if (v3)
  {
    [(NSOperationQueue *)self->mIndexLoadQueue addOperation:self->mIndexLoadOperation];
  }

  if (v5)
  {
    [(NSOperationQueue *)self->mIndexLoadQueue addOperation:self->mAnnotationIndexBuildOperation];
  }

LABEL_13:
  objc_sync_exit(self);
}

- (void)cancelLoadIndex
{
  objc_sync_enter(self);
  [(NSOperation *)self->mIndexLoadOperation cancel];
  [(NSOperationQueue *)self->mIndexLoadQueue cancelAllOperations];

  objc_sync_exit(self);
}

- (void)unloadIndex
{
  objc_sync_enter(self);
  [(NSOperation *)self->mIndexLoadOperation cancel];
  [(NSOperationQueue *)self->mIndexLoadQueue cancelAllOperations];
  [(THSearchIndex *)[(THDocumentRoot *)self->mDocumentRoot searchIndex] unload];
  [(THSearchIndex *)[(THDocumentRoot *)self->mDocumentRoot annotationSearchIndex] unload];
  self->mUnloadRequested = 0;
  if (TSUPadIsFirstGen())
  {
    self->mUnloadRequested = 1;
  }

  objc_sync_exit(self);
}

- (void)searchIndexLoadOperationFailed:(id)a3
{
  objc_sync_enter(self);
  self->mIndexLoadFailed = 1;

  objc_sync_exit(self);
}

- (void)annotationSearchIndexBuildOperationFailed:(id)a3
{
  objc_sync_enter(self);
  self->mIndexLoadFailed = 1;

  objc_sync_exit(self);
}

- (id)summaryForGlossaryTerm:(id)a3
{
  result = [(THModelGlossary *)[(THDocumentRoot *)self->mDocumentRoot glossary] entryForTerm:a3];
  if (result)
  {

    return [result summaryText];
  }

  return result;
}

- (int64_t)recentSearchCount
{
  v2 = [(THSearchController *)self recentSearches];

  return [(NSArray *)v2 count];
}

- (id)p_recentSearchAtIndex:(int64_t)a3
{
  v4 = [(THSearchController *)self recentSearches];
  if ([(NSArray *)v4 count]<= a3)
  {
    return 0;
  }

  objc_opt_class();
  [(NSArray *)v4 objectAtIndex:a3];

  return TSUDynamicCast();
}

- (id)recentSearchQueryAtIndex:(int64_t)a3
{
  v3 = [(THSearchController *)self p_recentSearchAtIndex:a3];
  objc_opt_class();
  [v3 objectForKey:@"query"];

  return TSUDynamicCast();
}

- (int64_t)recentSearchCountAtIndex:(int64_t)a3
{
  v3 = [(THSearchController *)self p_recentSearchAtIndex:a3];
  objc_opt_class();
  [v3 objectForKey:@"result count"];
  v4 = TSUDynamicCast();

  return [v4 integerValue];
}

- (id)p_allSearchResults
{
  v3 = +[NSMutableArray array];
  if ([(NSArray *)[(THSearchController *)self textSearchResults] count])
  {
    [v3 addObjectsFromArray:{-[THSearchController textSearchResults](self, "textSearchResults")}];
  }

  if ([(NSArray *)[(THSearchController *)self mediaSearchResults] count])
  {
    [v3 addObjectsFromArray:{-[THSearchController mediaSearchResults](self, "mediaSearchResults")}];
  }

  if ([(NSArray *)[(THSearchController *)self notesSearchResults] count])
  {
    [v3 addObjectsFromArray:{-[THSearchController notesSearchResults](self, "notesSearchResults")}];
  }

  return v3;
}

- (void)p_populatePageNumbersOfModelSearchResults:(id)a3
{
  v3 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    v8 = @"-";
    v9 = &stru_471858;
    v22 = self;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v11 = [THBundle() localizedStringForKey:v8 value:v9 table:0];
        objc_opt_class();
        v12 = TSUDynamicCast();
        if ([(THSearchController *)self paginationResultsValid])
        {
          if ([objc_msgSend(v12 "cfi")])
          {
            v13 = -[THDocumentRoot absolutePageIndexForCFI:](self->mDocumentRoot, "absolutePageIndexForCFI:", [v12 cfi]);
            if (v13 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v14 = v13;
              v15 = [(THDisplayPageNumberMap *)[(THSearchController *)self displayPageNumberMap] displayPageNumberForAbsolutePageIndex:v13];
              v16 = v6;
              v17 = v7;
              v18 = v9;
              v19 = v8;
              v20 = v3;
              v21 = v15;
              if ([v15 length])
              {
                v11 = v21;
              }

              v3 = v20;
              v8 = v19;
              v9 = v18;
              v7 = v17;
              v6 = v16;
              self = v22;
              [v12 setPageNumber:v14];
            }
          }
        }

        [v12 setDisplayPageNumber:v11];
      }

      v6 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }
}

@end