@interface CRLFindReplaceController
+ (id)escapeFindQuery:(id)a3;
+ (id)unescapeFindQuery:(id)a3;
+ (void)_recursiveSearchWithSearchTarget:(id)a3 forString:(id)a4 options:(unint64_t)a5 dispatchGroup:(id)a6 hitBlock:(id)a7 completionBlock:(id)a8;
- (BOOL)respondsToSearch;
- (BOOL)searchCriteriaIsValid;
- (CRLFindReplaceController)initWithEditingCoordinator:(id)a3 delegate:(id)a4 modelSearchesRunSynchronously:(BOOL)a5;
- (_NSRange)highlightsRange;
- (id)getNextSearchFromCurrentSearchable;
- (id)replaceSearchReference:(id)a3 withString:(id)a4 shouldSetSelectionForCommitPath:(BOOL)a5;
- (id)searchReferenceAfterReference:(id)a3 inDirection:(unint64_t)a4;
- (unint64_t)nextRootSearchTargetFromIndex:(unint64_t)a3 inDirection:(unint64_t)a4;
- (unint64_t)replaceAllOccurrencesOfString:(id)a3 withString:(id)a4;
- (void)asyncPerformSearchWithSearchTarget:(id)a3 resultsArray:(id)a4 completionBlock:(id)a5;
- (void)asyncSearchReferenceAfterReference:(id)a3 inDirection:(unint64_t)a4 completionBlock:(id)a5;
- (void)clearCurrentSelectionPath;
- (void)continueSearch;
- (void)endSearchSession;
- (void)findNextResultInDirection:(unint64_t)a3 shouldPulse:(BOOL)a4;
- (void)invalidateSearchHighlights;
- (void)invalidateSearchResults;
- (void)locateSearchReference:(id)a3;
- (void)locateSearchReference:(id)a3 nearestPoint:(CGPoint)a4;
- (void)p_handleVisibleResults:(id)a3;
- (void)pauseSearch;
- (void)performSearchWithSearchTarget:(id)a3 resultsArray:(id)a4;
- (void)pulseSearchResult:(id)a3 autohiding:(BOOL)a4;
- (void)replaceWithString:(id)a3 findAgain:(BOOL)a4;
- (void)searchReferencesToHighlightInVisibleRootObjectRange:(_NSRange)a3 completionBlock:(id)a4;
- (void)setSearchHighlightsEnabled:(BOOL)a3;
- (void)setSearchOptions:(unint64_t)a3;
- (void)setSearchString:(id)a3;
- (void)setSelectionPathToSearchReference:(id)a3 flags:(unint64_t)a4;
- (void)updateHighlights;
- (void)willScrollToReference:(id)a3;
@end

@implementation CRLFindReplaceController

- (CRLFindReplaceController)initWithEditingCoordinator:(id)a3 delegate:(id)a4 modelSearchesRunSynchronously:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v16.receiver = self;
  v16.super_class = CRLFindReplaceController;
  v9 = [(CRLModelSearchController *)&v16 initWithEditingCoordinator:v8 delegate:a4 modelSearchesRunSynchronously:v5];
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

    v13 = [v8 changeNotifier];
    [v13 addObserver:v9 forChangeSourceOfClass:objc_opt_class()];

    v14 = [v8 changeNotifier];
    [v14 addObserver:v9 forChangeSourceOfClass:objc_opt_class()];
  }

  return v9;
}

- (void)setSearchString:(id)a3
{
  v9 = a3;
  if (([v9 isEqualToString:self->_searchString] & 1) == 0)
  {
    [(CRLFindReplaceController *)self willChangeValueForKey:@"searchString"];
    objc_storeStrong(&self->_searchString, a3);
    [(CRLFindReplaceController *)self didChangeValueForKey:@"searchString"];
    if (![v9 length])
    {
      v5 = [(CRLModelSearchController *)self findReplaceDelegate];
      v6 = [v5 interactiveCanvasControllerForFindController:self];
      [v6 setShowGrayOverlay:0];

      [(CRLFindReplaceController *)self pulseSearchResult:0 autohiding:0];
    }

    [(CRLFindReplaceController *)self invalidateSearchResults];
    v7 = +[NSUUID UUID];
    searchSessionUUID = self->_searchSessionUUID;
    self->_searchSessionUUID = v7;
  }
}

- (void)setSearchOptions:(unint64_t)a3
{
  if (self->_searchOptions != a3)
  {
    self->_searchOptions = a3;
    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 setBool:(a3 & 1) == 0 forKey:@"FindReplaceMatchCaseKey"];
    [v6 setBool:(a3 >> 3) & 1 forKey:@"FindReplaceWholeWordsKey"];
    [(CRLFindReplaceController *)self invalidateSearchResults];
  }
}

- (id)replaceSearchReference:(id)a3 withString:(id)a4 shouldSetSelectionForCommitPath:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 commandForReplacingWithString:v9 options:{-[CRLFindReplaceController searchOptions](self, "searchOptions")}];
  if (v10)
  {
    v11 = [v8 searchReferenceForReplacingWithString:v9 options:{-[CRLFindReplaceController searchOptions](self, "searchOptions")}];
    v12 = [v11 rootIndex];
    if (v12 != [v8 rootIndex])
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

    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v8 commandSelectionBehaviorForCommand:v10], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v17 = [CRLCommandSelectionBehavior alloc];
      v18 = [v8 selectionPath];
      v19 = [v8 selectionPath];
      v16 = [(CRLCommandSelectionBehavior *)v17 initWithForwardSelectionPath:v18 reverseSelectionPath:v19 selectionFlags:132];
    }

    if (!a5)
    {
      [(CRLCommandSelectionBehavior *)v16 setCommitSelectionPath:0];
    }

    v20 = [(CRLModelSearchController *)self editingCoordinator];
    v21 = [v20 commandController];

    [v21 openGroup];
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"Replace" value:0 table:@"UndoStrings"];
    [v21 setCurrentGroupActionString:v23];

    [v21 enqueueCommand:v10];
    [v21 closeGroupWithSelectionBehavior:v16];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)replaceAllOccurrencesOfString:(id)a3 withString:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CRLFindReplaceController *)self setIsReplacingAll:1];
  if (v6)
  {
    if (v7)
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

    [v6 length];
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

  if (!v7)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (![v6 length])
  {
LABEL_33:
    v23 = 0;
    goto LABEL_34;
  }

  v8 = [(CRLModelSearchController *)self findReplaceDelegate];
  v9 = [v8 interactiveCanvasControllerForFindController:self];

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
  v13 = [(CRLModelSearchController *)self editingCoordinator];
  v14 = [v13 followCoordinator];
  [v14 endFollowSessionForLocalParticipantWithShouldShowRefollowPlacard:1];

  v15 = [v9 canvasEditor];
  v16 = [v15 selectionPathWithInfos:0];

  v17 = [[CRLCommandSelectionBehavior alloc] initWithForwardSelectionPath:v16 reverseSelectionPath:v16 selectionFlags:4096];
  v18 = [CRLFindReplaceAllHelper alloc];
  v19 = [(CRLModelSearchController *)self editingCoordinator];
  v20 = [(CRLFindReplaceAllHelper *)v18 initWithEditingCoordinator:v19 findString:v6 replaceString:v7 options:[(CRLFindReplaceController *)self searchOptions]];

  v21 = [(CRLModelSearchController *)self findReplaceDelegate];
  v22 = [v21 modelEnumeratorForSearchWithFlags:1];
  [(CRLFindReplaceAllHelper *)v20 replaceAllWithSelectionBehavior:v17 modelEnumerator:v22];

  v23 = [(CRLFindReplaceAllHelper *)v20 countOfItemsReplaced];
LABEL_34:
  [(CRLFindReplaceController *)self invalidateSearchResults];
  [(CRLFindReplaceController *)self setIsReplacingAll:0];

  return v23;
}

- (BOOL)searchCriteriaIsValid
{
  v2 = [(CRLFindReplaceController *)self searchString];
  v3 = [v2 length] != 0;

  return v3;
}

- (BOOL)respondsToSearch
{
  v3 = [(CRLModelSearchController *)self currentSearchable];
  v4 = objc_opt_respondsToSelector();

  v5 = [(CRLModelSearchController *)self currentSearchable];
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
  v3 = [(CRLModelSearchController *)self currentSearchable];
  v4 = [(CRLFindReplaceController *)self searchString];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100426AE8;
  v7[3] = &unk_101861A10;
  v7[4] = self;
  v5 = [v3 searchForString:v4 options:-[CRLFindReplaceController searchOptions](self searchCanvasDelegate:"searchOptions") onHit:{0, v7}];

  return v5;
}

- (void)continueSearch
{
  v4 = [(CRLModelSearchController *)self currentSearchable];
  v3 = [(CRLModelSearchController *)self currentSearch];
  [v4 continueSearch:v3];
}

+ (void)_recursiveSearchWithSearchTarget:(id)a3 forString:(id)a4 options:(unint64_t)a5 dispatchGroup:(id)a6 hitBlock:(id)a7 completionBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  [a1 assertSearchTargetImplementsProperMethods:v14];
  if (objc_opt_respondsToSelector())
  {
    if (v16)
    {
      dispatch_group_enter(v16);
    }

    [v14 layoutSearchForString:v15 options:a5 hitBlock:v17 completionBlock:v18];
  }

  if (objc_opt_respondsToSelector())
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = v14;
    v19 = [v14 childSearchTargets];
    v20 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v19);
          }

          [a1 _recursiveSearchWithSearchTarget:*(*(&v25 + 1) + 8 * v23) forString:v15 options:a5 dispatchGroup:v16 hitBlock:v17 completionBlock:v18];
          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v21);
    }

    v14 = v24;
  }
}

- (void)searchReferencesToHighlightInVisibleRootObjectRange:(_NSRange)a3 completionBlock:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [NSMapTable mapTableWithKeyOptions:517 valueOptions:0];
  v9 = [(CRLFindReplaceController *)self searchString];
  v10 = [v9 length];

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
        v12 = [(CRLModelSearchController *)self findReplaceDelegate];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100426FF0;
        v17[3] = &unk_101861A60;
        v17[4] = self;
        v18 = v11;
        v20 = v21;
        v19 = v8;
        [v12 withRootSearchTargetAtIndex:location executeBlock:v17];

        ++location;
        --length;
      }

      while (length);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10042723C;
    block[3] = &unk_1018475B8;
    v15 = v7;
    v14 = v8;
    v16 = v21;
    dispatch_group_notify(v11, &_dispatch_main_q, block);

    _Block_object_dispose(v21, 8);
  }

  else
  {
    (*(v7 + 2))(v7, v8, self->_searchSessionUUID);
  }
}

- (void)performSearchWithSearchTarget:(id)a3 resultsArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_100426FD8;
  v15[4] = sub_100426FE8;
  v16 = self->_searchSessionUUID;
  v8 = objc_opt_class();
  v9 = [(CRLFindReplaceController *)self searchString];
  v10 = [(CRLFindReplaceController *)self searchOptions];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1004273DC;
  v12[3] = &unk_101861A38;
  v14 = v15;
  v12[4] = self;
  v11 = v7;
  v13 = v11;
  [v8 _recursiveSearchWithSearchTarget:v6 forString:v9 options:v10 dispatchGroup:0 hitBlock:v12 completionBlock:0];

  _Block_object_dispose(v15, 8);
}

- (void)asyncPerformSearchWithSearchTarget:(id)a3 resultsArray:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v13 = [(CRLFindReplaceController *)self searchString];
  v14 = [(CRLFindReplaceController *)self searchOptions];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1004278DC;
  v24[3] = &unk_101861B08;
  v24[4] = self;
  v26 = v30;
  v27 = v28;
  v15 = v9;
  v25 = v15;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100427BE0;
  v22[3] = &unk_10183AB38;
  v16 = v11;
  v23 = v16;
  [v12 _recursiveSearchWithSearchTarget:v8 forString:v13 options:v14 dispatchGroup:v16 hitBlock:v24 completionBlock:v22];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100427BE8;
  v18[3] = &unk_101861B30;
  v20 = v30;
  v21 = v28;
  v18[4] = self;
  v19 = v10;
  v17 = v10;
  dispatch_group_notify(v16, &_dispatch_main_q, v18);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

- (unint64_t)nextRootSearchTargetFromIndex:(unint64_t)a3 inDirection:(unint64_t)a4
{
  v7 = [(CRLModelSearchController *)self findReplaceDelegate];
  v8 = [(CRLFindReplaceController *)self searchString];
  v9 = [v7 nextRootSearchTargetIndexFromIndex:a3 forString:v8 options:-[CRLFindReplaceController searchOptions](self inDirection:{"searchOptions"), a4}];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(CRLModelSearchController *)self findReplaceDelegate];
    v11 = [(CRLFindReplaceController *)self searchString];
    v9 = [v10 nextRootSearchTargetIndexFromIndex:0x7FFFFFFFFFFFFFFFLL forString:v11 options:-[CRLFindReplaceController searchOptions](self inDirection:{"searchOptions"), a4}];

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

- (void)pulseSearchResult:(id)a3 autohiding:(BOOL)a4
{
  v4 = a4;
  v16 = a3;
  [v16 setPulseHighlight:1];
  [v16 setAutohideHighlight:v4];
  v6 = [(CRLModelSearchController *)self findReplaceDelegate];
  v7 = objc_opt_class();
  v13 = sub_100303920(v16, v7, 1, v8, v9, v10, v11, v12, &OBJC_PROTOCOL___CRLSearchReference);
  [v6 setPrimarySearchReference:v13 forFindReplaceController:self];

  v14 = [(CRLFindReplaceController *)self shouldSetSelectionPathToFindResult];
  v15 = v16;
  if (v16 && v14)
  {
    [(CRLFindReplaceController *)self setSelectionPathToSearchReference:v16 flags:128];
    v15 = v16;
  }
}

- (void)invalidateSearchResults
{
  [(CRLFindReplaceController *)self resetCollaborativeTimer];
  v3 = [(CRLModelSearchController *)self findReplaceDelegate];
  v4 = [v3 interactiveCanvasControllerForFindController:self];
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
  v4 = [(CRLModelSearchController *)self findReplaceDelegate];
  v3 = [v4 interactiveCanvasControllerForFindController:self];
  [v3 setShowGrayOverlay:0];
}

- (void)invalidateSearchHighlights
{
  [(CRLFindReplaceController *)self setHighlightsRange:0x7FFFFFFFFFFFFFFFLL, 0];
  v9 = [NSMapTable mapTableWithKeyOptions:517 valueOptions:0];
  [(CRLFindReplaceController *)self setVisibleResults:?];
  v3 = [(CRLModelSearchController *)self findReplaceDelegate];
  [v3 setSearchReferencesToHighlight:0 forFindReplaceController:self];

  if ([(CRLFindReplaceController *)self isReplacingText]|| [(CRLFindReplaceController *)self isReplacingAll])
  {
    v4 = [(CRLModelSearchController *)self findReplaceDelegate];
    v5 = [v4 interactiveCanvasControllerForFindController:self];
    [v5 setShowGrayOverlay:0];

    [(CRLFindReplaceController *)self p_handleVisibleResults:v9];
  }

  v6 = [(CRLModelSearchController *)self findReplaceDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CRLModelSearchController *)self findReplaceDelegate];
    [v8 didHideSearchHighlights];
  }
}

- (void)setSearchHighlightsEnabled:(BOOL)a3
{
  if (self->_searchHighlightsEnabled != a3)
  {
    self->_searchHighlightsEnabled = a3;
  }
}

- (void)updateHighlights
{
  if ([(CRLFindReplaceController *)self searchHighlightsEnabled])
  {
    v3 = [(CRLModelSearchController *)self findReplaceDelegate];
    v4 = [v3 visibleRootIndexRange];
    v6 = v5;

    if (v4 != [(CRLFindReplaceController *)self highlightsRange]|| v6 != v7)
    {
      [(CRLFindReplaceController *)self setHighlightsRange:v4, v6];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100428348;
      v8[3] = &unk_101861B98;
      v8[4] = self;
      [(CRLFindReplaceController *)self searchReferencesToHighlightInVisibleRootObjectRange:v4 completionBlock:v6, v8];
    }
  }
}

- (void)p_handleVisibleResults:(id)a3
{
  v11 = a3;
  [(CRLFindReplaceController *)self setVisibleResults:v11];
  v4 = [(CRLModelSearchController *)self findReplaceDelegate];
  v5 = [v4 interactiveCanvasControllerForFindController:self];

  v6 = [v11 count];
  [v5 setShowGrayOverlay:v6 != 0];
  if (v6)
  {
    v7 = [(CRLModelSearchController *)self findReplaceDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(CRLModelSearchController *)self findReplaceDelegate];
      [v9 willShowSearchHighlights];
    }
  }

  else
  {
    [(CRLFindReplaceController *)self clearCurrentSelectionPath];
  }

  v10 = [(CRLModelSearchController *)self findReplaceDelegate];
  [v10 setSearchReferencesToHighlight:v11 forFindReplaceController:self];
}

- (void)findNextResultInDirection:(unint64_t)a3 shouldPulse:(BOOL)a4
{
  [(CRLFindReplaceController *)self resetCollaborativeTimer];
  v7 = [(CRLModelSearchController *)self primaryFindResultSearchReference];

  if (!v7)
  {
    v8 = [(CRLModelSearchController *)self startingPointSearchReference];

    if (v8)
    {
      v9 = [(CRLModelSearchController *)self startingPointSearchReference];
      v10 = [v9 searchReferenceStart];
      [(CRLModelSearchController *)self setStartingPointSearchReference:v10];

      v11 = [(CRLModelSearchController *)self startingPointSearchReference];
      [v9 searchReferencePoint];
      [(CRLFindReplaceController *)self locateSearchReference:v11 nearestPoint:?];
    }

    else
    {
      v12 = [(CRLModelSearchController *)self findReplaceDelegate];
      v9 = [v12 interactiveCanvasControllerForFindController:self];

      v13 = [v9 editorController];
      v11 = [v13 textInputEditor];

      if (objc_opt_respondsToSelector())
      {
        v14 = [v11 editingSearchReference];
        [(CRLModelSearchController *)self setStartingPointSearchReference:v14];
      }
    }

    v15 = [(CRLModelSearchController *)self startingPointSearchReference];

    if (v15)
    {
      v16 = [(CRLModelSearchController *)self findReplaceDelegate];
      v17 = [v16 interactiveCanvasControllerForFindController:self];

      v18 = [(CRLModelSearchController *)self startingPointSearchReference];
      [v17 scrollSearchReferenceToVisible:v18 scrollOptions:128];
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
    v21 = [(CRLModelSearchController *)self findReplaceDelegate];
    v22 = [v21 visibleRootIndexRange];
    v24 = v23;

    if (v22 == 0x7FFFFFFFFFFFFFFFLL && v24 == 0)
    {
      [(CRLModelSearchController *)self setStartingPointSearchReference:0];
      [(CRLFindReplaceController *)self invalidateSearchResults];
      goto LABEL_21;
    }

    v19 = v22;
    v20 = v24;
  }

  v26 = [(CRLModelSearchController *)self primaryFindResultSearchReference];
  if (!v26)
  {
    if (![(CRLFindReplaceController *)self returnFirstVisibleResultIfPossible])
    {
      goto LABEL_18;
    }

    v27 = [(CRLModelSearchController *)self findReplaceDelegate];
    v26 = [v27 interactiveCanvasControllerForFindController:self];

    [v26 visibleUnscaledRect];
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
    v30 = [(CRLModelSearchController *)self startingPointSearchReference];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1004288D0;
    v31[3] = &unk_101861BC0;
    v32 = a4;
    v31[4] = self;
    v31[5] = &v35;
    v31[6] = v33;
    v31[7] = v19;
    v31[8] = v20;
    [(CRLFindReplaceController *)self asyncSearchReferenceAfterReference:v30 inDirection:a3 completionBlock:v31];

    _Block_object_dispose(v33, 8);
  }

LABEL_21:
  _Block_object_dispose(&v35, 8);
}

- (void)willScrollToReference:(id)a3
{
  v5 = a3;
  v4 = [(CRLModelSearchController *)self findReplaceDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 willScrollToReference:v5];
  }
}

- (void)replaceWithString:(id)a3 findAgain:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(CRLFindReplaceController *)self resetCollaborativeTimer];
  if (v6)
  {
    [(CRLFindReplaceController *)self setIsReplacingText:1];
    v7 = [(CRLModelSearchController *)self primaryFindResultSearchReference];
    v8 = [(CRLModelSearchController *)self findReplaceDelegate];
    v9 = [v8 interactiveCanvasControllerForFindController:self];

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

    v13 = [(CRLModelSearchController *)self editingCoordinator];
    v14 = [v13 followCoordinator];
    [v14 endFollowSessionForLocalParticipantWithShouldShowRefollowPlacard:1];

    v15 = [(CRLFindReplaceController *)self replaceSearchReference:v7 withString:v6 shouldSetSelectionForCommitPath:1];
    [(CRLFindReplaceController *)self clearCurrentSelectionPath];
    [(CRLFindReplaceController *)self invalidateSearchResults];
    [v9 layoutIfNeeded];
    v16 = [v15 searchReferenceEnd];
    [(CRLModelSearchController *)self setStartingPointSearchReference:v16];

    v17 = [(CRLModelSearchController *)self startingPointSearchReference];
    [v7 searchReferencePoint];
    [(CRLFindReplaceController *)self locateSearchReference:v17 nearestPoint:?];

    v18 = [(CRLModelSearchController *)self findReplaceDelegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = [(CRLModelSearchController *)self findReplaceDelegate];
      v21 = [v20 scrollOptionsForFindReplace];

      if (v4)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v21 = 8;
      if (v4)
      {
        goto LABEL_28;
      }
    }

    if ([(CRLFindReplaceController *)self shouldSetSelectionPathToFindResult])
    {
      v23 = [(CRLModelSearchController *)self startingPointSearchReference];
      v24 = [v23 isSelectable];

      if (v24)
      {
        v25 = [(CRLModelSearchController *)self findReplaceDelegate];
        v26 = [(CRLModelSearchController *)self startingPointSearchReference];
        v27 = [v26 selectionPath];
        [v25 setSelectionPath:v27 withFlags:6];

LABEL_29:
        [(CRLModelSearchController *)self setPrimaryFindResultSearchReference:0];
        [(CRLFindReplaceController *)self invalidateSearchHighlights];
        [(CRLFindReplaceController *)self setIsReplacingText:0];
        if (v4)
        {
          [(CRLFindReplaceController *)self findNextResultInDirection:0];
        }

        goto LABEL_32;
      }
    }

LABEL_28:
    [v9 scrollSearchReferenceToVisible:v15 scrollOptions:v21];
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

  v7 = [NSString stringWithUTF8String:"[CRLFindReplaceController replaceWithString:findAgain:]"];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLFindReplaceController.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v9 lineNumber:552 isFatal:0 description:"invalid nil value for '%{public}s'", "replaceString"];
LABEL_32:
}

- (void)endSearchSession
{
  [(CRLFindReplaceController *)self invalidateSearchResults];
  [(CRLFindReplaceController *)self invalidateSearchHighlights];
  v3 = [(CRLModelSearchController *)self primaryFindResultSearchReference];

  if (v3)
  {
    v4 = [(CRLModelSearchController *)self primaryFindResultSearchReference];
    [(CRLFindReplaceController *)self setSelectionPathToSearchReference:v4 flags:0];
  }

  v5 = [(CRLModelSearchController *)self findReplaceDelegate];
  v6 = [v5 interactiveCanvasControllerForFindController:self];

  [v6 setShowGrayOverlay:0];
  [(CRLFindReplaceController *)self setSearchHighlightsEnabled:0];
  [(CRLFindReplaceController *)self pulseSearchResult:0 autohiding:0];
}

- (void)locateSearchReference:(id)a3
{
  v4 = a3;
  v5 = [(CRLModelSearchController *)self findReplaceDelegate];
  v6 = [v5 interactiveCanvasControllerForFindController:self];

  v7 = [v4 selectionPath];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1004292B4;
  v9[3] = &unk_101846288;
  v10 = v4;
  v8 = v4;
  [v6 withLayoutForSelectionPath:v7 performBlock:v9];
}

- (void)locateSearchReference:(id)a3 nearestPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = sub_100014370(v8, v7);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 storage];

    if (v11)
    {
      v12 = [(CRLModelSearchController *)self findReplaceDelegate];
      v13 = [v12 interactiveCanvasControllerForFindController:self];

      v14 = [v10 storage];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10042945C;
      v15[3] = &unk_101846288;
      v16 = v7;
      [v13 withLayoutNearestPoint:v14 forStorage:v15 performBlock:{x, y}];
    }
  }

  else
  {
    [(CRLFindReplaceController *)self locateSearchReference:v7];
  }
}

- (id)searchReferenceAfterReference:(id)a3 inDirection:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [v6 searchReferencePoint];
    if (v9 == CGPointZero.x && v8 == CGPointZero.y)
    {
      [(CRLFindReplaceController *)self locateSearchReference:v7];
    }

    v11 = [(CRLModelSearchController *)self findReplaceDelegate];
    v12 = [v11 interactiveCanvasControllerForFindController:self];

    [v12 scrollSearchReferenceToVisible:v7 scrollOptions:128];
  }

  v15.receiver = self;
  v15.super_class = CRLFindReplaceController;
  v13 = [(CRLModelSearchController *)&v15 searchReferenceAfterReference:v7 inDirection:a4];

  return v13;
}

- (void)asyncSearchReferenceAfterReference:(id)a3 inDirection:(unint64_t)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    [v8 searchReferencePoint];
    if (v11 == CGPointZero.x && v10 == CGPointZero.y)
    {
      [(CRLFindReplaceController *)self locateSearchReference:v8];
    }

    v13 = [(CRLModelSearchController *)self findReplaceDelegate];
    v14 = [v13 interactiveCanvasControllerForFindController:self];

    [v14 scrollSearchReferenceToVisible:v8 scrollOptions:128];
  }

  v15.receiver = self;
  v15.super_class = CRLFindReplaceController;
  [(CRLModelSearchController *)&v15 asyncSearchReferenceAfterReference:v8 inDirection:a4 completionBlock:v9];
}

- (void)setSelectionPathToSearchReference:(id)a3 flags:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v15 = v6;
    v8 = [v6 isSelectable];
    v7 = v15;
    if (v8)
    {
      [(CRLFindReplaceController *)self clearCurrentSelectionPath];
      v9 = [(CRLModelSearchController *)self findReplaceDelegate];
      v10 = objc_opt_respondsToSelector();

      v11 = [(CRLModelSearchController *)self findReplaceDelegate];
      v12 = v11;
      if (v10)
      {
        v13 = [v15 selectionPath];
        [v12 setSelectionPath:v13 withFlags:a4];
      }

      else
      {
        v14 = [v11 interactiveCanvasControllerForFindController:self];

        v13 = [v15 selectionPath];
        [v14 setSelectionPath:v13 withSelectionFlags:a4];
        v12 = v14;
      }

      v7 = v15;
    }
  }
}

- (void)clearCurrentSelectionPath
{
  v3 = [(CRLModelSearchController *)self findReplaceDelegate];
  v6 = [v3 interactiveCanvasControllerForFindController:self];

  v4 = [v6 selectionModelTranslator];
  v5 = [v4 selectionPathForInfos:0];

  [v6 setSelectionPath:v5 withSelectionFlags:128];
}

+ (id)unescapeFindQuery:(id)a3
{
  v3 = a3;
  if (!qword_101A34F50)
  {
    qword_101A34F50 = &off_1018E1E78;

    v4 = [[NSString alloc] initWithFormat:@"%C%C%C%C%C%C", 9, 10, 5, 12, 8232, 92];
    v5 = qword_101A34F58;
    qword_101A34F58 = v4;
  }

  if ([v3 length])
  {
    v6 = [NSMutableString stringWithString:v3];
    v7 = [qword_101A34F50 count];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [qword_101A34F50 objectAtIndexedSubscript:i];
        v11 = [qword_101A34F58 substringWithRange:{i, 1}];
        v12 = [(__CFString *)v6 crl_range];
        [(__CFString *)v6 replaceOccurrencesOfString:v10 withString:v11 options:0 range:v12, v13];
      }
    }
  }

  else
  {
    v6 = &stru_1018BCA28;
  }

  return v6;
}

+ (id)escapeFindQuery:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [NSMutableString stringWithString:v3];
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