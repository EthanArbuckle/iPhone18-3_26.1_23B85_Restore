@interface CRLFindReplaceController
+ (id)escapeFindQuery:(id)query;
+ (id)unescapeFindQuery:(id)query;
+ (void)_recursiveSearchWithSearchTarget:(id)target forString:(id)string options:(unint64_t)options dispatchGroup:(id)group hitBlock:(id)block completionBlock:(id)completionBlock;
- (BOOL)respondsToSearch;
- (BOOL)searchCriteriaIsValid;
- (CRLFindReplaceController)initWithEditingCoordinator:(id)coordinator delegate:(id)delegate modelSearchesRunSynchronously:(BOOL)synchronously;
- (_NSRange)highlightsRange;
- (id)getNextSearchFromCurrentSearchable;
- (id)replaceSearchReference:(id)reference withString:(id)string shouldSetSelectionForCommitPath:(BOOL)path;
- (id)searchReferenceAfterReference:(id)reference inDirection:(unint64_t)direction;
- (unint64_t)nextRootSearchTargetFromIndex:(unint64_t)index inDirection:(unint64_t)direction;
- (unint64_t)replaceAllOccurrencesOfString:(id)string withString:(id)withString;
- (void)asyncPerformSearchWithSearchTarget:(id)target resultsArray:(id)array completionBlock:(id)block;
- (void)asyncSearchReferenceAfterReference:(id)reference inDirection:(unint64_t)direction completionBlock:(id)block;
- (void)clearCurrentSelectionPath;
- (void)continueSearch;
- (void)endSearchSession;
- (void)findNextResultInDirection:(unint64_t)direction shouldPulse:(BOOL)pulse;
- (void)invalidateSearchHighlights;
- (void)invalidateSearchResults;
- (void)locateSearchReference:(id)reference;
- (void)locateSearchReference:(id)reference nearestPoint:(CGPoint)point;
- (void)p_handleVisibleResults:(id)results;
- (void)pauseSearch;
- (void)performSearchWithSearchTarget:(id)target resultsArray:(id)array;
- (void)pulseSearchResult:(id)result autohiding:(BOOL)autohiding;
- (void)replaceWithString:(id)string findAgain:(BOOL)again;
- (void)searchReferencesToHighlightInVisibleRootObjectRange:(_NSRange)range completionBlock:(id)block;
- (void)setSearchHighlightsEnabled:(BOOL)enabled;
- (void)setSearchOptions:(unint64_t)options;
- (void)setSearchString:(id)string;
- (void)setSelectionPathToSearchReference:(id)reference flags:(unint64_t)flags;
- (void)updateHighlights;
- (void)willScrollToReference:(id)reference;
@end

@implementation CRLFindReplaceController

- (CRLFindReplaceController)initWithEditingCoordinator:(id)coordinator delegate:(id)delegate modelSearchesRunSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  coordinatorCopy = coordinator;
  v16.receiver = self;
  v16.super_class = CRLFindReplaceController;
  v9 = [(CRLModelSearchController *)&v16 initWithEditingCoordinator:coordinatorCopy delegate:delegate modelSearchesRunSynchronously:synchronouslyCopy];
  if (v9)
  {
    v10 = [NSMapTable mapTableWithKeyOptions:517 valueOptions:0];
    visibleResults = v9->_visibleResults;
    v9->_visibleResults = v10;

    v9->_searchOptions = 16;
    v12 = +[NSUserDefaults standardUserDefaults];
    if (([v12 BOOLForKey:@"FindReplaceMatchCaseKey"] & 1) == 0)
    {
      v9->_searchOptions |= 1uLL;
    }

    if ([v12 BOOLForKey:@"FindReplaceWholeWordsKey"])
    {
      v9->_searchOptions |= 8uLL;
    }

    changeNotifier = [coordinatorCopy changeNotifier];
    [changeNotifier addObserver:v9 forChangeSourceOfClass:objc_opt_class()];

    changeNotifier2 = [coordinatorCopy changeNotifier];
    [changeNotifier2 addObserver:v9 forChangeSourceOfClass:objc_opt_class()];
  }

  return v9;
}

- (void)setSearchString:(id)string
{
  stringCopy = string;
  if (([stringCopy isEqualToString:self->_searchString] & 1) == 0)
  {
    [(CRLFindReplaceController *)self willChangeValueForKey:@"searchString"];
    objc_storeStrong(&self->_searchString, string);
    [(CRLFindReplaceController *)self didChangeValueForKey:@"searchString"];
    if (![stringCopy length])
    {
      findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
      v6 = [findReplaceDelegate interactiveCanvasControllerForFindController:self];
      [v6 setShowGrayOverlay:0];

      [(CRLFindReplaceController *)self pulseSearchResult:0 autohiding:0];
    }

    [(CRLFindReplaceController *)self invalidateSearchResults];
    v7 = +[NSUUID UUID];
    searchSessionUUID = self->_searchSessionUUID;
    self->_searchSessionUUID = v7;
  }
}

- (void)setSearchOptions:(unint64_t)options
{
  if (self->_searchOptions != options)
  {
    self->_searchOptions = options;
    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 setBool:(options & 1) == 0 forKey:@"FindReplaceMatchCaseKey"];
    [v6 setBool:(options >> 3) & 1 forKey:@"FindReplaceWholeWordsKey"];
    [(CRLFindReplaceController *)self invalidateSearchResults];
  }
}

- (id)replaceSearchReference:(id)reference withString:(id)string shouldSetSelectionForCommitPath:(BOOL)path
{
  referenceCopy = reference;
  stringCopy = string;
  v10 = [referenceCopy commandForReplacingWithString:stringCopy options:{-[CRLFindReplaceController searchOptions](self, "searchOptions")}];
  if (v10)
  {
    v11 = [referenceCopy searchReferenceForReplacingWithString:stringCopy options:{-[CRLFindReplaceController searchOptions](self, "searchOptions")}];
    rootIndex = [v11 rootIndex];
    if (rootIndex != [referenceCopy rootIndex])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101370218();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137022C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013702BC();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v13);
      }

      v14 = [NSString stringWithUTF8String:"[CRLFindReplaceController replaceSearchReference:withString:shouldSetSelectionForCommitPath:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLFindReplaceController.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:125 isFatal:0 description:"Expect root indexes to be migrated to the new searchReference."];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 || ([referenceCopy commandSelectionBehaviorForCommand:v10], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v17 = [CRLCommandSelectionBehavior alloc];
      selectionPath = [referenceCopy selectionPath];
      selectionPath2 = [referenceCopy selectionPath];
      v16 = [(CRLCommandSelectionBehavior *)v17 initWithForwardSelectionPath:selectionPath reverseSelectionPath:selectionPath2 selectionFlags:132];
    }

    if (!path)
    {
      [(CRLCommandSelectionBehavior *)v16 setCommitSelectionPath:0];
    }

    editingCoordinator = [(CRLModelSearchController *)self editingCoordinator];
    commandController = [editingCoordinator commandController];

    [commandController openGroup];
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"Replace" value:0 table:@"UndoStrings"];
    [commandController setCurrentGroupActionString:v23];

    [commandController enqueueCommand:v10];
    [commandController closeGroupWithSelectionBehavior:v16];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)replaceAllOccurrencesOfString:(id)string withString:(id)withString
{
  stringCopy = string;
  withStringCopy = withString;
  [(CRLFindReplaceController *)self setIsReplacingAll:1];
  if (stringCopy)
  {
    if (withStringCopy)
    {
      goto LABEL_3;
    }

LABEL_24:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013704A8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013704D0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137056C();
    }

    v27 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v27);
    }

    v28 = [NSString stringWithUTF8String:"[CRLFindReplaceController replaceAllOccurrencesOfString:withString:]"];
    v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLFindReplaceController.m"];
    [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:157 isFatal:0 description:"invalid nil value for '%{public}s'", "replaceString"];

    [stringCopy length];
    goto LABEL_33;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013702E4();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013702F8();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101370394();
  }

  v24 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v24);
  }

  v25 = [NSString stringWithUTF8String:"[CRLFindReplaceController replaceAllOccurrencesOfString:withString:]"];
  v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLFindReplaceController.m"];
  [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:156 isFatal:0 description:"invalid nil value for '%{public}s'", "findString"];

  if (!withStringCopy)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (![stringCopy length])
  {
LABEL_33:
    countOfItemsReplaced = 0;
    goto LABEL_34;
  }

  findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
  v9 = [findReplaceDelegate interactiveCanvasControllerForFindController:self];

  if (!v9)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013703BC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013703E4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101370480();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLFindReplaceController replaceAllOccurrencesOfString:withString:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLFindReplaceController.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:160 isFatal:0 description:"invalid nil value for '%{public}s'", "interactiveCanvasController"];
  }

  [v9 endEditing];
  editingCoordinator = [(CRLModelSearchController *)self editingCoordinator];
  followCoordinator = [editingCoordinator followCoordinator];
  [followCoordinator endFollowSessionForLocalParticipantWithShouldShowRefollowPlacard:1];

  canvasEditor = [v9 canvasEditor];
  v16 = [canvasEditor selectionPathWithInfos:0];

  v17 = [[CRLCommandSelectionBehavior alloc] initWithForwardSelectionPath:v16 reverseSelectionPath:v16 selectionFlags:4096];
  v18 = [CRLFindReplaceAllHelper alloc];
  editingCoordinator2 = [(CRLModelSearchController *)self editingCoordinator];
  v20 = [(CRLFindReplaceAllHelper *)v18 initWithEditingCoordinator:editingCoordinator2 findString:stringCopy replaceString:withStringCopy options:[(CRLFindReplaceController *)self searchOptions]];

  findReplaceDelegate2 = [(CRLModelSearchController *)self findReplaceDelegate];
  v22 = [findReplaceDelegate2 modelEnumeratorForSearchWithFlags:1];
  [(CRLFindReplaceAllHelper *)v20 replaceAllWithSelectionBehavior:v17 modelEnumerator:v22];

  countOfItemsReplaced = [(CRLFindReplaceAllHelper *)v20 countOfItemsReplaced];
LABEL_34:
  [(CRLFindReplaceController *)self invalidateSearchResults];
  [(CRLFindReplaceController *)self setIsReplacingAll:0];

  return countOfItemsReplaced;
}

- (BOOL)searchCriteriaIsValid
{
  searchString = [(CRLFindReplaceController *)self searchString];
  v3 = [searchString length] != 0;

  return v3;
}

- (BOOL)respondsToSearch
{
  currentSearchable = [(CRLModelSearchController *)self currentSearchable];
  v4 = objc_opt_respondsToSelector();

  currentSearchable2 = [(CRLModelSearchController *)self currentSearchable];
  v6 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 && (v6 & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101370594();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013705A8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101370638();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLFindReplaceController respondsToSearch]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLFindReplaceController.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:192 isFatal:0 description:"Every searchable should respond to atleast a string search or an annotation search"];
  }

  return v4 & 1;
}

- (id)getNextSearchFromCurrentSearchable
{
  currentSearchable = [(CRLModelSearchController *)self currentSearchable];
  searchString = [(CRLFindReplaceController *)self searchString];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100426AE8;
  v7[3] = &unk_101861A10;
  v7[4] = self;
  v5 = [currentSearchable searchForString:searchString options:-[CRLFindReplaceController searchOptions](self searchCanvasDelegate:"searchOptions") onHit:{0, v7}];

  return v5;
}

- (void)continueSearch
{
  currentSearchable = [(CRLModelSearchController *)self currentSearchable];
  currentSearch = [(CRLModelSearchController *)self currentSearch];
  [currentSearchable continueSearch:currentSearch];
}

+ (void)_recursiveSearchWithSearchTarget:(id)target forString:(id)string options:(unint64_t)options dispatchGroup:(id)group hitBlock:(id)block completionBlock:(id)completionBlock
{
  targetCopy = target;
  stringCopy = string;
  groupCopy = group;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  [self assertSearchTargetImplementsProperMethods:targetCopy];
  if (objc_opt_respondsToSelector())
  {
    if (groupCopy)
    {
      dispatch_group_enter(groupCopy);
    }

    [targetCopy layoutSearchForString:stringCopy options:options hitBlock:blockCopy completionBlock:completionBlockCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = targetCopy;
    childSearchTargets = [targetCopy childSearchTargets];
    v20 = [childSearchTargets countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v26;
      do
      {
        v23 = 0;
        do
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(childSearchTargets);
          }

          [self _recursiveSearchWithSearchTarget:*(*(&v25 + 1) + 8 * v23) forString:stringCopy options:options dispatchGroup:groupCopy hitBlock:blockCopy completionBlock:completionBlockCopy];
          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [childSearchTargets countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v21);
    }

    targetCopy = v24;
  }
}

- (void)searchReferencesToHighlightInVisibleRootObjectRange:(_NSRange)range completionBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v8 = [NSMapTable mapTableWithKeyOptions:517 valueOptions:0];
  searchString = [(CRLFindReplaceController *)self searchString];
  v10 = [searchString length];

  if (v10)
  {
    v11 = dispatch_group_create();
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = sub_100426FD8;
    v21[4] = sub_100426FE8;
    v22 = self->_searchSessionUUID;
    if (location < location + length)
    {
      do
      {
        findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100426FF0;
        v17[3] = &unk_101861A60;
        v17[4] = self;
        v18 = v11;
        v20 = v21;
        v19 = v8;
        [findReplaceDelegate withRootSearchTargetAtIndex:location executeBlock:v17];

        ++location;
        --length;
      }

      while (length);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10042723C;
    block[3] = &unk_1018475B8;
    v15 = blockCopy;
    v14 = v8;
    v16 = v21;
    dispatch_group_notify(v11, &_dispatch_main_q, block);

    _Block_object_dispose(v21, 8);
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, v8, self->_searchSessionUUID);
  }
}

- (void)performSearchWithSearchTarget:(id)target resultsArray:(id)array
{
  targetCopy = target;
  arrayCopy = array;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_100426FD8;
  v15[4] = sub_100426FE8;
  v16 = self->_searchSessionUUID;
  v8 = objc_opt_class();
  searchString = [(CRLFindReplaceController *)self searchString];
  searchOptions = [(CRLFindReplaceController *)self searchOptions];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1004273DC;
  v12[3] = &unk_101861A38;
  v14 = v15;
  v12[4] = self;
  v11 = arrayCopy;
  v13 = v11;
  [v8 _recursiveSearchWithSearchTarget:targetCopy forString:searchString options:searchOptions dispatchGroup:0 hitBlock:v12 completionBlock:0];

  _Block_object_dispose(v15, 8);
}

- (void)asyncPerformSearchWithSearchTarget:(id)target resultsArray:(id)array completionBlock:(id)block
{
  targetCopy = target;
  arrayCopy = array;
  blockCopy = block;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_100426FD8;
  v30[4] = sub_100426FE8;
  v31 = self->_searchSessionUUID;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_100426FD8;
  v28[4] = sub_100426FE8;
  v29 = [NSMapTable mapTableWithKeyOptions:517 valueOptions:0];
  v11 = dispatch_group_create();
  v12 = objc_opt_class();
  searchString = [(CRLFindReplaceController *)self searchString];
  searchOptions = [(CRLFindReplaceController *)self searchOptions];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1004278DC;
  v24[3] = &unk_101861B08;
  v24[4] = self;
  v26 = v30;
  v27 = v28;
  v15 = arrayCopy;
  v25 = v15;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100427BE0;
  v22[3] = &unk_10183AB38;
  v16 = v11;
  v23 = v16;
  [v12 _recursiveSearchWithSearchTarget:targetCopy forString:searchString options:searchOptions dispatchGroup:v16 hitBlock:v24 completionBlock:v22];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100427BE8;
  v18[3] = &unk_101861B30;
  v20 = v30;
  v21 = v28;
  v18[4] = self;
  v19 = blockCopy;
  v17 = blockCopy;
  dispatch_group_notify(v16, &_dispatch_main_q, v18);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

- (unint64_t)nextRootSearchTargetFromIndex:(unint64_t)index inDirection:(unint64_t)direction
{
  findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
  searchString = [(CRLFindReplaceController *)self searchString];
  v9 = [findReplaceDelegate nextRootSearchTargetIndexFromIndex:index forString:searchString options:-[CRLFindReplaceController searchOptions](self inDirection:{"searchOptions"), direction}];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    findReplaceDelegate2 = [(CRLModelSearchController *)self findReplaceDelegate];
    searchString2 = [(CRLFindReplaceController *)self searchString];
    v9 = [findReplaceDelegate2 nextRootSearchTargetIndexFromIndex:0x7FFFFFFFFFFFFFFFLL forString:searchString2 options:-[CRLFindReplaceController searchOptions](self inDirection:{"searchOptions"), direction}];

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137080C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101370820();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013708B0();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLFindReplaceController nextRootSearchTargetFromIndex:inDirection:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLFindReplaceController.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:344 isFatal:0 description:"Could not find next root search target. Defaulting to 0."];

      return 0;
    }
  }

  return v9;
}

- (void)pulseSearchResult:(id)result autohiding:(BOOL)autohiding
{
  autohidingCopy = autohiding;
  resultCopy = result;
  [resultCopy setPulseHighlight:1];
  [resultCopy setAutohideHighlight:autohidingCopy];
  findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
  v7 = objc_opt_class();
  v13 = sub_100303920(resultCopy, v7, 1, v8, v9, v10, v11, v12, &OBJC_PROTOCOL___CRLSearchReference);
  [findReplaceDelegate setPrimarySearchReference:v13 forFindReplaceController:self];

  shouldSetSelectionPathToFindResult = [(CRLFindReplaceController *)self shouldSetSelectionPathToFindResult];
  v15 = resultCopy;
  if (resultCopy && shouldSetSelectionPathToFindResult)
  {
    [(CRLFindReplaceController *)self setSelectionPathToSearchReference:resultCopy flags:128];
    v15 = resultCopy;
  }
}

- (void)invalidateSearchResults
{
  [(CRLFindReplaceController *)self resetCollaborativeTimer];
  findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
  v4 = [findReplaceDelegate interactiveCanvasControllerForFindController:self];
  [v4 layoutInvalidated];

  v5.receiver = self;
  v5.super_class = CRLFindReplaceController;
  [(CRLModelSearchController *)&v5 invalidateSearchResults];
  [(CRLFindReplaceController *)self invalidateSearchHighlights];
  [(CRLFindReplaceController *)self pulseSearchResult:0 autohiding:0];
}

- (void)pauseSearch
{
  [(CRLFindReplaceController *)self invalidateSearchResults];
  findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
  v3 = [findReplaceDelegate interactiveCanvasControllerForFindController:self];
  [v3 setShowGrayOverlay:0];
}

- (void)invalidateSearchHighlights
{
  [(CRLFindReplaceController *)self setHighlightsRange:0x7FFFFFFFFFFFFFFFLL, 0];
  v9 = [NSMapTable mapTableWithKeyOptions:517 valueOptions:0];
  [(CRLFindReplaceController *)self setVisibleResults:?];
  findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
  [findReplaceDelegate setSearchReferencesToHighlight:0 forFindReplaceController:self];

  if ([(CRLFindReplaceController *)self isReplacingText]|| [(CRLFindReplaceController *)self isReplacingAll])
  {
    findReplaceDelegate2 = [(CRLModelSearchController *)self findReplaceDelegate];
    v5 = [findReplaceDelegate2 interactiveCanvasControllerForFindController:self];
    [v5 setShowGrayOverlay:0];

    [(CRLFindReplaceController *)self p_handleVisibleResults:v9];
  }

  findReplaceDelegate3 = [(CRLModelSearchController *)self findReplaceDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    findReplaceDelegate4 = [(CRLModelSearchController *)self findReplaceDelegate];
    [findReplaceDelegate4 didHideSearchHighlights];
  }
}

- (void)setSearchHighlightsEnabled:(BOOL)enabled
{
  if (self->_searchHighlightsEnabled != enabled)
  {
    self->_searchHighlightsEnabled = enabled;
  }
}

- (void)updateHighlights
{
  if ([(CRLFindReplaceController *)self searchHighlightsEnabled])
  {
    findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
    visibleRootIndexRange = [findReplaceDelegate visibleRootIndexRange];
    v6 = v5;

    if (visibleRootIndexRange != [(CRLFindReplaceController *)self highlightsRange]|| v6 != v7)
    {
      [(CRLFindReplaceController *)self setHighlightsRange:visibleRootIndexRange, v6];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100428348;
      v8[3] = &unk_101861B98;
      v8[4] = self;
      [(CRLFindReplaceController *)self searchReferencesToHighlightInVisibleRootObjectRange:visibleRootIndexRange completionBlock:v6, v8];
    }
  }
}

- (void)p_handleVisibleResults:(id)results
{
  resultsCopy = results;
  [(CRLFindReplaceController *)self setVisibleResults:resultsCopy];
  findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
  v5 = [findReplaceDelegate interactiveCanvasControllerForFindController:self];

  v6 = [resultsCopy count];
  [v5 setShowGrayOverlay:v6 != 0];
  if (v6)
  {
    findReplaceDelegate2 = [(CRLModelSearchController *)self findReplaceDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      findReplaceDelegate3 = [(CRLModelSearchController *)self findReplaceDelegate];
      [findReplaceDelegate3 willShowSearchHighlights];
    }
  }

  else
  {
    [(CRLFindReplaceController *)self clearCurrentSelectionPath];
  }

  findReplaceDelegate4 = [(CRLModelSearchController *)self findReplaceDelegate];
  [findReplaceDelegate4 setSearchReferencesToHighlight:resultsCopy forFindReplaceController:self];
}

- (void)findNextResultInDirection:(unint64_t)direction shouldPulse:(BOOL)pulse
{
  [(CRLFindReplaceController *)self resetCollaborativeTimer];
  primaryFindResultSearchReference = [(CRLModelSearchController *)self primaryFindResultSearchReference];

  if (!primaryFindResultSearchReference)
  {
    startingPointSearchReference = [(CRLModelSearchController *)self startingPointSearchReference];

    if (startingPointSearchReference)
    {
      startingPointSearchReference2 = [(CRLModelSearchController *)self startingPointSearchReference];
      searchReferenceStart = [startingPointSearchReference2 searchReferenceStart];
      [(CRLModelSearchController *)self setStartingPointSearchReference:searchReferenceStart];

      startingPointSearchReference3 = [(CRLModelSearchController *)self startingPointSearchReference];
      [startingPointSearchReference2 searchReferencePoint];
      [(CRLFindReplaceController *)self locateSearchReference:startingPointSearchReference3 nearestPoint:?];
    }

    else
    {
      findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
      startingPointSearchReference2 = [findReplaceDelegate interactiveCanvasControllerForFindController:self];

      editorController = [startingPointSearchReference2 editorController];
      startingPointSearchReference3 = [editorController textInputEditor];

      if (objc_opt_respondsToSelector())
      {
        editingSearchReference = [startingPointSearchReference3 editingSearchReference];
        [(CRLModelSearchController *)self setStartingPointSearchReference:editingSearchReference];
      }
    }

    startingPointSearchReference4 = [(CRLModelSearchController *)self startingPointSearchReference];

    if (startingPointSearchReference4)
    {
      findReplaceDelegate2 = [(CRLModelSearchController *)self findReplaceDelegate];
      v17 = [findReplaceDelegate2 interactiveCanvasControllerForFindController:self];

      startingPointSearchReference5 = [(CRLModelSearchController *)self startingPointSearchReference];
      [v17 scrollSearchReferenceToVisible:startingPointSearchReference5 scrollOptions:128];
    }
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100426FD8;
  v39 = sub_100426FE8;
  v40 = 0;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  v20 = 0;
  if ([(CRLFindReplaceController *)self searchHighlightsEnabled])
  {
    findReplaceDelegate3 = [(CRLModelSearchController *)self findReplaceDelegate];
    visibleRootIndexRange = [findReplaceDelegate3 visibleRootIndexRange];
    v24 = v23;

    if (visibleRootIndexRange == 0x7FFFFFFFFFFFFFFFLL && v24 == 0)
    {
      [(CRLModelSearchController *)self setStartingPointSearchReference:0];
      [(CRLFindReplaceController *)self invalidateSearchResults];
      goto LABEL_21;
    }

    v19 = visibleRootIndexRange;
    v20 = v24;
  }

  primaryFindResultSearchReference2 = [(CRLModelSearchController *)self primaryFindResultSearchReference];
  if (!primaryFindResultSearchReference2)
  {
    if (![(CRLFindReplaceController *)self returnFirstVisibleResultIfPossible])
    {
      goto LABEL_18;
    }

    findReplaceDelegate4 = [(CRLModelSearchController *)self findReplaceDelegate];
    primaryFindResultSearchReference2 = [findReplaceDelegate4 interactiveCanvasControllerForFindController:self];

    [primaryFindResultSearchReference2 visibleUnscaledRect];
    v28 = [(CRLModelSearchController *)self firstVisibleResultInRect:?];
    v29 = v36[5];
    v36[5] = v28;

    [(CRLFindReplaceController *)self setReturnFirstVisibleResultIfPossible:0];
  }

LABEL_18:
  if (!v36[5])
  {
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = sub_100426FD8;
    v33[4] = sub_100426FE8;
    v34 = self->_searchSessionUUID;
    startingPointSearchReference6 = [(CRLModelSearchController *)self startingPointSearchReference];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1004288D0;
    v31[3] = &unk_101861BC0;
    pulseCopy = pulse;
    v31[4] = self;
    v31[5] = &v35;
    v31[6] = v33;
    v31[7] = v19;
    v31[8] = v20;
    [(CRLFindReplaceController *)self asyncSearchReferenceAfterReference:startingPointSearchReference6 inDirection:direction completionBlock:v31];

    _Block_object_dispose(v33, 8);
  }

LABEL_21:
  _Block_object_dispose(&v35, 8);
}

- (void)willScrollToReference:(id)reference
{
  referenceCopy = reference;
  findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
  if (objc_opt_respondsToSelector())
  {
    [findReplaceDelegate willScrollToReference:referenceCopy];
  }
}

- (void)replaceWithString:(id)string findAgain:(BOOL)again
{
  againCopy = again;
  stringCopy = string;
  [(CRLFindReplaceController *)self resetCollaborativeTimer];
  if (stringCopy)
  {
    [(CRLFindReplaceController *)self setIsReplacingText:1];
    primaryFindResultSearchReference = [(CRLModelSearchController *)self primaryFindResultSearchReference];
    findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
    v9 = [findReplaceDelegate interactiveCanvasControllerForFindController:self];

    if (!v9)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013708D8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013708EC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101370988();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v10);
      }

      v11 = [NSString stringWithUTF8String:"[CRLFindReplaceController replaceWithString:findAgain:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLFindReplaceController.m"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:559 isFatal:0 description:"invalid nil value for '%{public}s'", "interactiveCanvasController"];
    }

    editingCoordinator = [(CRLModelSearchController *)self editingCoordinator];
    followCoordinator = [editingCoordinator followCoordinator];
    [followCoordinator endFollowSessionForLocalParticipantWithShouldShowRefollowPlacard:1];

    v15 = [(CRLFindReplaceController *)self replaceSearchReference:primaryFindResultSearchReference withString:stringCopy shouldSetSelectionForCommitPath:1];
    [(CRLFindReplaceController *)self clearCurrentSelectionPath];
    [(CRLFindReplaceController *)self invalidateSearchResults];
    [v9 layoutIfNeeded];
    searchReferenceEnd = [v15 searchReferenceEnd];
    [(CRLModelSearchController *)self setStartingPointSearchReference:searchReferenceEnd];

    startingPointSearchReference = [(CRLModelSearchController *)self startingPointSearchReference];
    [primaryFindResultSearchReference searchReferencePoint];
    [(CRLFindReplaceController *)self locateSearchReference:startingPointSearchReference nearestPoint:?];

    findReplaceDelegate2 = [(CRLModelSearchController *)self findReplaceDelegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      findReplaceDelegate3 = [(CRLModelSearchController *)self findReplaceDelegate];
      scrollOptionsForFindReplace = [findReplaceDelegate3 scrollOptionsForFindReplace];

      if (againCopy)
      {
        goto LABEL_28;
      }
    }

    else
    {
      scrollOptionsForFindReplace = 8;
      if (againCopy)
      {
        goto LABEL_28;
      }
    }

    if ([(CRLFindReplaceController *)self shouldSetSelectionPathToFindResult])
    {
      startingPointSearchReference2 = [(CRLModelSearchController *)self startingPointSearchReference];
      isSelectable = [startingPointSearchReference2 isSelectable];

      if (isSelectable)
      {
        findReplaceDelegate4 = [(CRLModelSearchController *)self findReplaceDelegate];
        startingPointSearchReference3 = [(CRLModelSearchController *)self startingPointSearchReference];
        selectionPath = [startingPointSearchReference3 selectionPath];
        [findReplaceDelegate4 setSelectionPath:selectionPath withFlags:6];

LABEL_29:
        [(CRLModelSearchController *)self setPrimaryFindResultSearchReference:0];
        [(CRLFindReplaceController *)self invalidateSearchHighlights];
        [(CRLFindReplaceController *)self setIsReplacingText:0];
        if (againCopy)
        {
          [(CRLFindReplaceController *)self findNextResultInDirection:0];
        }

        goto LABEL_32;
      }
    }

LABEL_28:
    [v9 scrollSearchReferenceToVisible:v15 scrollOptions:scrollOptionsForFindReplace];
    goto LABEL_29;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013709B0();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013709C4();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101370A60();
  }

  v22 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v22);
  }

  primaryFindResultSearchReference = [NSString stringWithUTF8String:"[CRLFindReplaceController replaceWithString:findAgain:]"];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLFindReplaceController.m"];
  [CRLAssertionHandler handleFailureInFunction:primaryFindResultSearchReference file:v9 lineNumber:552 isFatal:0 description:"invalid nil value for '%{public}s'", "replaceString"];
LABEL_32:
}

- (void)endSearchSession
{
  [(CRLFindReplaceController *)self invalidateSearchResults];
  [(CRLFindReplaceController *)self invalidateSearchHighlights];
  primaryFindResultSearchReference = [(CRLModelSearchController *)self primaryFindResultSearchReference];

  if (primaryFindResultSearchReference)
  {
    primaryFindResultSearchReference2 = [(CRLModelSearchController *)self primaryFindResultSearchReference];
    [(CRLFindReplaceController *)self setSelectionPathToSearchReference:primaryFindResultSearchReference2 flags:0];
  }

  findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
  v6 = [findReplaceDelegate interactiveCanvasControllerForFindController:self];

  [v6 setShowGrayOverlay:0];
  [(CRLFindReplaceController *)self setSearchHighlightsEnabled:0];
  [(CRLFindReplaceController *)self pulseSearchResult:0 autohiding:0];
}

- (void)locateSearchReference:(id)reference
{
  referenceCopy = reference;
  findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
  v6 = [findReplaceDelegate interactiveCanvasControllerForFindController:self];

  selectionPath = [referenceCopy selectionPath];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1004292B4;
  v9[3] = &unk_101846288;
  v10 = referenceCopy;
  v8 = referenceCopy;
  [v6 withLayoutForSelectionPath:selectionPath performBlock:v9];
}

- (void)locateSearchReference:(id)reference nearestPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  referenceCopy = reference;
  v8 = objc_opt_class();
  v9 = sub_100014370(v8, referenceCopy);
  v10 = v9;
  if (v9)
  {
    storage = [v9 storage];

    if (storage)
    {
      findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
      v13 = [findReplaceDelegate interactiveCanvasControllerForFindController:self];

      storage2 = [v10 storage];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10042945C;
      v15[3] = &unk_101846288;
      v16 = referenceCopy;
      [v13 withLayoutNearestPoint:storage2 forStorage:v15 performBlock:{x, y}];
    }
  }

  else
  {
    [(CRLFindReplaceController *)self locateSearchReference:referenceCopy];
  }
}

- (id)searchReferenceAfterReference:(id)reference inDirection:(unint64_t)direction
{
  referenceCopy = reference;
  v7 = referenceCopy;
  if (referenceCopy)
  {
    [referenceCopy searchReferencePoint];
    if (v9 == CGPointZero.x && v8 == CGPointZero.y)
    {
      [(CRLFindReplaceController *)self locateSearchReference:v7];
    }

    findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
    v12 = [findReplaceDelegate interactiveCanvasControllerForFindController:self];

    [v12 scrollSearchReferenceToVisible:v7 scrollOptions:128];
  }

  v15.receiver = self;
  v15.super_class = CRLFindReplaceController;
  v13 = [(CRLModelSearchController *)&v15 searchReferenceAfterReference:v7 inDirection:direction];

  return v13;
}

- (void)asyncSearchReferenceAfterReference:(id)reference inDirection:(unint64_t)direction completionBlock:(id)block
{
  referenceCopy = reference;
  blockCopy = block;
  if (referenceCopy)
  {
    [referenceCopy searchReferencePoint];
    if (v11 == CGPointZero.x && v10 == CGPointZero.y)
    {
      [(CRLFindReplaceController *)self locateSearchReference:referenceCopy];
    }

    findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
    v14 = [findReplaceDelegate interactiveCanvasControllerForFindController:self];

    [v14 scrollSearchReferenceToVisible:referenceCopy scrollOptions:128];
  }

  v15.receiver = self;
  v15.super_class = CRLFindReplaceController;
  [(CRLModelSearchController *)&v15 asyncSearchReferenceAfterReference:referenceCopy inDirection:direction completionBlock:blockCopy];
}

- (void)setSelectionPathToSearchReference:(id)reference flags:(unint64_t)flags
{
  referenceCopy = reference;
  v7 = referenceCopy;
  if (referenceCopy)
  {
    v15 = referenceCopy;
    isSelectable = [referenceCopy isSelectable];
    v7 = v15;
    if (isSelectable)
    {
      [(CRLFindReplaceController *)self clearCurrentSelectionPath];
      findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
      v10 = objc_opt_respondsToSelector();

      findReplaceDelegate2 = [(CRLModelSearchController *)self findReplaceDelegate];
      v12 = findReplaceDelegate2;
      if (v10)
      {
        selectionPath = [v15 selectionPath];
        [v12 setSelectionPath:selectionPath withFlags:flags];
      }

      else
      {
        v14 = [findReplaceDelegate2 interactiveCanvasControllerForFindController:self];

        selectionPath = [v15 selectionPath];
        [v14 setSelectionPath:selectionPath withSelectionFlags:flags];
        v12 = v14;
      }

      v7 = v15;
    }
  }
}

- (void)clearCurrentSelectionPath
{
  findReplaceDelegate = [(CRLModelSearchController *)self findReplaceDelegate];
  v6 = [findReplaceDelegate interactiveCanvasControllerForFindController:self];

  selectionModelTranslator = [v6 selectionModelTranslator];
  v5 = [selectionModelTranslator selectionPathForInfos:0];

  [v6 setSelectionPath:v5 withSelectionFlags:128];
}

+ (id)unescapeFindQuery:(id)query
{
  queryCopy = query;
  if (!qword_101A34F50)
  {
    qword_101A34F50 = &off_1018E1E78;

    v4 = [[NSString alloc] initWithFormat:@"%C%C%C%C%C%C", 9, 10, 5, 12, 8232, 92];
    v5 = qword_101A34F58;
    qword_101A34F58 = v4;
  }

  if ([queryCopy length])
  {
    v6 = [NSMutableString stringWithString:queryCopy];
    v7 = [qword_101A34F50 count];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [qword_101A34F50 objectAtIndexedSubscript:i];
        v11 = [qword_101A34F58 substringWithRange:{i, 1}];
        crl_range = [(__CFString *)v6 crl_range];
        [(__CFString *)v6 replaceOccurrencesOfString:v10 withString:v11 options:0 range:crl_range, v13];
      }
    }
  }

  else
  {
    v6 = &stru_1018BCA28;
  }

  return v6;
}

+ (id)escapeFindQuery:(id)query
{
  queryCopy = query;
  if ([queryCopy length])
  {
    v4 = [NSMutableString stringWithString:queryCopy];
    v5 = [(__CFString *)v4 length];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i < v6; i += v10)
      {
        v8 = [(__CFString *)v4 characterAtIndex:i];
        if (v8 > 11)
        {
          switch(v8)
          {
            case 12:
              v9 = @"\\c";
              goto LABEL_18;
            case 92:
              v9 = @"\\\\"";
              goto LABEL_18;
            case 8232:
              v9 = @"\\i";
              goto LABEL_18;
          }
        }

        else
        {
          switch(v8)
          {
            case 5:
              v9 = @"\\p";
              goto LABEL_18;
            case 9:
              v9 = @"\\t";
              goto LABEL_18;
            case 10:
              v9 = @"\\n";
LABEL_18:
              [(__CFString *)v4 replaceCharactersInRange:i withString:1, v9];
              v10 = [(__CFString *)v9 length];
              v6 = v6 + v10 - 1;
              continue;
          }
        }

        v10 = 1;
      }
    }
  }

  else
  {
    v4 = &stru_1018BCA28;
  }

  return v4;
}

- (_NSRange)highlightsRange
{
  p_highlightsRange = &self->_highlightsRange;
  location = self->_highlightsRange.location;
  length = p_highlightsRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end