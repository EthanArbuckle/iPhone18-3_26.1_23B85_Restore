@interface BKHTMLContentViewController
- (AEHighlightRenderingController)highlightRenderingController;
- (BKAnnotationDataProvider)annotationDataProvider;
- (BKHTMLContentViewController)init;
- (BKReadAloudEventHandler)readAloudEventHandler;
- (BOOL)_accessibilityQuickSpeakContentIsSpeakable;
- (BOOL)_bkaxPerformSelector:(id)a3;
- (BOOL)_hasDraggableSelectionAtPosition:(CGPoint)a3;
- (BOOL)_isCachedAnnotationRectVisible:(id)a3 considerEntirePage:(BOOL)a4;
- (BOOL)_shouldBeginCustomHighlighterActionForTouchType:(int64_t)a3 modifierFlags:(int64_t)initialTextInteractionModifiers;
- (BOOL)canCopyContent;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)contentNeedsFilter;
- (BOOL)currentlyHighlighting;
- (BOOL)gestureRecognizer:(id)a3 canBePreventedByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hasTextSelected;
- (BOOL)interactionShouldBegin:(id)a3 atPoint:(CGPoint)a4;
- (BOOL)isAnnotationVisible:(id)a3;
- (BOOL)isLocationFromThisDocument:(id)a3;
- (BOOL)isLocationOnCurrentPage:(id)a3;
- (BOOL)isRectVisible:(id)a3;
- (BOOL)navigationHandler:(id)a3 handleInternalLoadRequest:(id)a4;
- (BOOL)preflightTap:(id)a3;
- (BOOL)shouldHighlightReceiveTouch:(id)a3;
- (BOOL)shouldShowExpandedContentForURL:(id)a3;
- (CGPoint)_originPointForPoint:(CGPoint)a3;
- (CGPoint)_webkit2LocationForContentViewPoint:(CGPoint)a3;
- (CGPoint)overrideBuildMenuLocation;
- (CGRect)_contentRectFromRects:(id)a3 visible:(BOOL)a4;
- (CGRect)cachedRectForAnnotation:(id)a3;
- (CGRect)cachedVisibleRectForAnnotation:(id)a3;
- (CGRect)rectForLocation:(id)a3;
- (CGRect)rectForLocation:(id)a3 adjustedForContentOffset:(BOOL)a4;
- (CGRect)rectForPresentedMenuForTextInteraction;
- (IMPerformSelectorProxy)performSelectorProxy;
- (UIScrollView)contentScrollView;
- (double)_timeIntervalForHighlightGesture;
- (double)underlinePercent;
- (id)URLForLoadingDocument;
- (id)_activityItemsConfiguration;
- (id)_annotationUuidIntersectingPoint:(CGPoint)a3 inView:(id)a4 annotationLayerRect:(CGRect *)a5;
- (id)_errorForURL:(id)a3;
- (id)_excerptCitedStringForAnnotation:(id)a3;
- (id)_highlightRects:(id)a3 withHighlightType:(int)a4 owner:(id)a5 forWK2:(BOOL)a6 clearSelection:(BOOL)a7;
- (id)_payloadForKey:(id)a3 fromSender:(id)a4;
- (id)_preflightTapLocation:(CGPoint)a3;
- (id)_rectsFromDictionary:(id)a3;
- (id)adjustedItemProvidersWithCitation:(id)a3 withExcerptString:(id)a4;
- (id)author;
- (id)bookTitle;
- (id)currentLocation;
- (id)handler:(id)a3 citationForText:(id)a4 webView:(id)a5;
- (id)highlightRangeFromRects:(id)a3;
- (id)nextResponder;
- (id)objectForMatchingAnnotation:(id)a3;
- (id)pageNumberStringForAnnotation:(id)a3;
- (id)pathForSoundtrack;
- (id)predicateForOverlayCache;
- (id)preservedSelectionHighlights;
- (id)selectedAnnotation;
- (id)selectedTextForAccessibility;
- (id)storeURL;
- (int64_t)effectivePageOffset;
- (int64_t)visiblePageCount;
- (void)__webView2_performHighlighterActionWithGestureState:(int64_t)a3 location:(CGPoint)a4 isTouch:(BOOL)a5;
- (void)_annotationChanged:(id)a3 forceRender:(BOOL)a4;
- (void)_bkaxCheckCanPerformEditActions;
- (void)_bkaxPerformEditAction:(id)a3;
- (void)_bookmarkSelectionAndAnnotate:(BOOL)a3 showColorEditor:(BOOL)a4 completion:(id)a5;
- (void)_combineAnnotation:(id)a3 withAnnotation:(id)a4;
- (void)_contentForSelectedRangeWithCompletion:(id)a3;
- (void)_contentRectForLocation:(id)a3 visible:(BOOL)a4 completion:(id)a5;
- (void)_extractSelectedTextWithSender:(id)a3 completion:(id)a4;
- (void)_fetchMissingCfiLocationRects:(id)a3 forAnnotations:(id)a4;
- (void)_handleStylusGesture:(id)a3;
- (void)_highlightAnnotation:(id)a3;
- (void)_highlightAnnotation:(id)a3 rects:(id)a4;
- (void)_highlightAnnotationWK2:(id)a3;
- (void)_highlightLocation:(id)a3 withHighlightType:(int)a4 owner:(id)a5;
- (void)_highlightTimerFired:(id)a3;
- (void)_recheckRemoveAccessApproval;
- (void)_refreshAnnotationsAndSearchResult;
- (void)_refreshContentBasedOverlay;
- (void)_refreshContentBasedOverlayAfterDelay;
- (void)_scheduleInteractionReset;
- (void)_setupAnnotationRectCachesFromClientRects:(id)a3;
- (void)_setupSelectionContextMenu;
- (void)_shareAnnotation:(id)a3 annotationRects:(id)a4;
- (void)_showAnnotationWithState:(BOOL)a3 showColorEditor:(BOOL)a4 forAnnotation:(id)a5;
- (void)_showAnnotations:(BOOL)a3;
- (void)_showMenuForRect:(CGRect)a3;
- (void)_smilElementIDSelected:(id)a3 inHREF:(id)a4;
- (void)_updateReadingStateVisibilityPossible:(BOOL)a3 knownDOMRange:(id)a4;
- (void)_willMoveTextRangeExtentAtPoint:(CGPoint)a3;
- (void)addHighlightToCurrentSelection:(id)a3;
- (void)addNote:(id)a3;
- (void)adjustGesturesForTextInteractionAssistant:(id)a3 view:(id)a4;
- (void)afterEnsuringFirstPaintPerform:(id)a3;
- (void)books_useSelectionForFind:(id)a3;
- (void)buildMenuWithBuilder:(id)a3 inWebView:(id)a4 atPoint:(CGPoint)a5;
- (void)changeAnnotationStyle:(id)a3;
- (void)changeAnnotationStyle:(id)a3 annotation:(id)a4;
- (void)cleanDocumentForMediaOverlay;
- (void)clearHighlights;
- (void)clearHighlightsForSearchResults;
- (void)clearMediaOverlayElement:(id)a3;
- (void)clearSearchLocation;
- (void)clearSelection;
- (void)clearSelectionHighlights;
- (void)contentReady;
- (void)contentRectForAnnotation:(id)a3 completion:(id)a4;
- (void)contentRectForLocation:(id)a3 completion:(id)a4;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controllerDidChangeContent:(id)a3;
- (void)controllerWillChangeContent:(id)a3;
- (void)copyContent;
- (void)dealloc;
- (void)didChangeLocationClosing:(BOOL)a3;
- (void)drawHighlights;
- (void)dummyAnnotationForSelectionWK2WithCompletion:(id)a3;
- (void)endOfBook:(id)a3;
- (void)handleTap:(id)a3;
- (void)handler:(id)a3 presentAlertController:(id)a4 completion:(id)a5;
- (void)handler:(id)a3 webView:(id)a4 didNotHandleTapAsClickAtPoint:(CGPoint)a5;
- (void)highlightAnnotations:(id)a3;
- (void)highlightMediaOverlayElement:(id)a3;
- (void)highlightSearchLocation:(id)a3;
- (void)installReadAloudClickHandlersOnMediaOverlayElements:(id)a3;
- (void)interactionDidEnd:(id)a3;
- (void)invalidateContentBasedOverlay;
- (void)invalidateContentBasedOverlayCache;
- (void)invokedSMILControlAction:(int)a3 withSMILTurnStyle:(int)a4;
- (void)isLocationVisible:(id)a3 annotation:(id)a4 completion:(id)a5;
- (void)load;
- (void)lookupSelection:(id)a3;
- (void)markupDocumentForMediaOverlay;
- (void)menuWillClose:(id)a3;
- (void)navigationHandler:(id)a3 didFinishLoadOfURL:(id)a4;
- (void)navigationHandler:(id)a3 handleExternalLoadRequest:(id)a4 likelyUserInitiated:(BOOL)a5;
- (void)navigationHandler:(id)a3 handleUserRequestForFrameToLoadExternalURL:(id)a4 completion:(id)a5;
- (void)navigationHandlerFirstSignificantPaintCompleted:(id)a3;
- (void)navigationHandlerWebContentLoadFailed:(id)a3 reason:(id)a4;
- (void)navigationHandlerWebContentProcessAttemptingReload:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pageOffsetRangeForLocation:(id)a3 completion:(id)a4;
- (void)playFirstVisibleAutoplayMediaObject;
- (void)prepareContentBasedOverlayCache;
- (void)prepareForReuse;
- (void)readAloudEventHandler:(id)a3 audioElementEnded:(id)a4;
- (void)readAloudEventHandler:(id)a3 performedAction:(id)a4 turnStyle:(id)a5;
- (void)rectForLocation:(id)a3 completion:(id)a4;
- (void)registerScriptMessageHandlersWithUserContentController:(id)a3;
- (void)releaseViews;
- (void)removeDummyHighlight;
- (void)removeHighlightForAnnotation:(id)a3;
- (void)removeNote:(id)a3;
- (void)removeNoteAndHighlight:(id)a3;
- (void)removeReadAloudClickHandlersOnMediaOverlayElements:(id)a3;
- (void)resume;
- (void)searchUsingSelection:(id)a3;
- (void)searchWeb:(id)a3;
- (void)searchWikipedia:(id)a3;
- (void)selectAnnotation:(id)a3;
- (void)selectBookmarkedLink:(id)a3;
- (void)selectLocation:(id)a3 completion:(id)a4;
- (void)setActivityIndicatorVisible:(BOOL)a3 animated:(BOOL)a4 afterDelay:(double)a5;
- (void)setEstimatedContentSize:(CGSize)a3;
- (void)setHighlightViews:(id)a3;
- (void)setIgnorePageTurnGestures:(BOOL)a3;
- (void)setLoader:(id)a3;
- (void)setNeedsRestyle;
- (void)setOrdinal:(int64_t)a3;
- (void)setTheme:(id)a3 force:(BOOL)a4;
- (void)setupNotifications;
- (void)shareSelection:(id)a3;
- (void)showContextMenuAtLocation:(CGPoint)a3;
- (void)showHighlightingMenuForAnnotation:(id)a3;
- (void)startFetchingAnnotations;
- (void)stopPlayingMedia:(BOOL)a3;
- (void)suspend;
- (void)teardownNotifications;
- (void)translateSelection:(id)a3;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)visibleRectForLocation:(id)a3 completion:(id)a4;
- (void)webViewDidEnterFullscreen:(id)a3;
- (void)webViewDidExitFullscreen:(id)a3;
- (void)webViewFullscreenMayReturnToInline:(id)a3;
- (void)webViewLoader:(id)a3 didUpdateCurrentVisibleCFILocation:(id)a4;
- (void)writeAnnotationsToWebProcessPlugin:(id)a3 andHighlights:(id)a4;
- (void)writeControlVisibilityStateToWebProcessPlugin:(BOOL)a3;
@end

@implementation BKHTMLContentViewController

- (void)setIgnorePageTurnGestures:(BOOL)a3
{
  v3 = a3;
  v4 = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 setIgnorePageTurnGestures:v3];
  }
}

- (void)adjustGesturesForTextInteractionAssistant:(id)a3 view:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(WKWebView *)self->_webView2 be_textInputChild];

  if (v7 == v6)
  {
    v8 = [v13 loupeGesture];
    [v8 setMinimumPressDuration:0.25];
    [v8 setAllowedTouchTypes:&off_1F1720];
    [(BKHTMLContentViewController *)self _timeIntervalForHighlightGesture];
    [v8 setBe_gestureDelay:?];
    if (!self->_indirectImmediateHighlightRecognizer)
    {
      v9 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_handleStylusGesture:"];
      indirectImmediateHighlightRecognizer = self->_indirectImmediateHighlightRecognizer;
      self->_indirectImmediateHighlightRecognizer = v9;

      [(UILongPressGestureRecognizer *)self->_indirectImmediateHighlightRecognizer setMinimumPressDuration:0.0];
      [(UILongPressGestureRecognizer *)self->_indirectImmediateHighlightRecognizer setDelegate:self];
      [(UILongPressGestureRecognizer *)self->_indirectImmediateHighlightRecognizer setAllowedTouchTypes:&off_1F1738];
      [v6 addGestureRecognizer:self->_indirectImmediateHighlightRecognizer];
    }

    if (!self->_indirectHighlightRecognizer)
    {
      v11 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"_handleStylusGesture:"];
      indirectHighlightRecognizer = self->_indirectHighlightRecognizer;
      self->_indirectHighlightRecognizer = v11;

      [(UIGestureRecognizer *)self->_indirectHighlightRecognizer setDelegate:self];
      [(UIGestureRecognizer *)self->_indirectHighlightRecognizer setAllowedTouchTypes:&off_1F1750];
      [v6 addGestureRecognizer:self->_indirectHighlightRecognizer];
    }
  }
}

- (void)showContextMenuAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(BKHTMLContentViewController *)self webView2];
  v12 = [v6 be_contentView];

  if (v12)
  {
    v7 = [(BKHTMLContentViewController *)self view];
    [v12 convertPoint:v7 fromView:{x, y}];
    v9 = v8;
    v11 = v10;

    [(BKHTMLContentViewController *)self setOverrideBuildMenuLocation:v9, v11];
    [(BKHTMLContentViewController *)self setOverrideBuildMenuLocation:CGPointZero.x, CGPointZero.y];
  }
}

- (BOOL)interactionShouldBegin:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = [(BKHTMLContentViewController *)self webView2];
  v7 = [v6 be_hasSelectablePositionAtPoint:{x, y}];

  return v7;
}

- (void)interactionDidEnd:(id)a3
{
  v38 = a3;
  v4 = [(BKHTMLContentViewController *)self webView2];
  v5 = [v4 be_selectionRects];

  v6 = [v5 firstObject];
  v7 = [v5 lastObject];
  if ([v5 count])
  {
    [v6 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v7 CGRectValue];
    v45.origin.x = v16;
    v45.origin.y = v17;
    v45.size.width = v18;
    v45.size.height = v19;
    v40.origin.x = v9;
    v40.origin.y = v11;
    v40.size.width = v13;
    v40.size.height = v15;
    v41 = CGRectUnion(v40, v45);
    width = v41.size.width;
    height = v41.size.height;
    [v6 CGRectValue];
    x = v22;
    y = v24;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  [(BKHTMLContentViewController *)self rectForPresentedMenuForTextInteraction];
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  if (!CGRectEqualToRect(v42, v46))
  {
    [v7 CGRectValue];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    [(BKHTMLContentViewController *)self setRectForPresentedMenuForTextInteraction:x, y, width, height];
    v43.origin.x = v27;
    v43.origin.y = v29;
    v43.size.width = v31;
    v43.size.height = v33;
    MaxX = CGRectGetMaxX(v43);
    v44.origin.x = v27;
    v44.origin.y = v29;
    v44.size.width = v31;
    v44.size.height = v33;
    MaxY = CGRectGetMaxY(v44);
    v36 = [(BKHTMLContentViewController *)self view];
    v37 = [v38 view];
    [v36 convertPoint:v37 fromView:{MaxX, MaxY}];
    [(BKHTMLContentViewController *)self showContextMenuAtLocation:?];
  }

LABEL_7:
}

- (void)buildMenuWithBuilder:(id)a3 inWebView:(id)a4 atPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  [(BKHTMLContentViewController *)self overrideBuildMenuLocation];
  if (v12 != CGPointZero.x || v11 != CGPointZero.y)
  {
    [(BKHTMLContentViewController *)self overrideBuildMenuLocation];
    x = v14;
    y = v15;
  }

  [(BKHTMLContentViewController *)self clearSelectedAnnotation];
  v16 = [v10 be_textInputChild];
  v17 = [(BKHTMLContentViewController *)self view];
  [v16 convertPoint:v17 toView:{x, y}];
  v19 = v18;
  v21 = v20;

  v22 = [(BKHTMLContentViewController *)self _preflightTapLocation:v19, v21];
  v23 = [(BKHTMLContentViewController *)self selectedText];
  [v10 be_selectionRects];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v24 = v85 = 0u;
  v25 = [v24 countByEnumeratingWithState:&v82 objects:v93 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v83;
    while (2)
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v83 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [*(*(&v82 + 1) + 8 * i) CGRectValue];
        v96 = CGRectInset(v95, -10.0, -10.0);
        v94.x = x;
        v94.y = y;
        if (CGRectContainsPoint(v96, v94))
        {
          v29 = 0;
          goto LABEL_16;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v82 objects:v93 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v29 = 1;
LABEL_16:

  v30 = [(BKHTMLContentViewController *)self selectedAnnotation];
  v31 = [(BKHTMLContentViewController *)self _activityItemsConfiguration];
  [(BKHTMLContentViewController *)self setActivityItemsConfiguration:v31];

  [(__CFString *)v23 length];
  if (v23 && [(__CFString *)v23 length])
  {
    if (v30)
    {
      v32 = 0;
    }

    else
    {
      v32 = v29;
    }

    if ((v32 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v30)
  {
    goto LABEL_26;
  }

  if ([v10 be_hasSelectablePositionAtPoint:{x, y}])
  {
    v33 = [v10 be_textInputChild];
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_1C01C;
    v81[3] = &unk_1E2BD0;
    v81[4] = self;
    [v33 selectTextWithGranularity:1 atPoint:v81 completionHandler:{x, y}];
  }

LABEL_26:
  v78 = v10;
  [v9 removeMenuForIdentifier:UIMenuLookup];
  [v9 removeMenuForIdentifier:UIMenuServices];
  [v9 removeMenuForIdentifier:UIMenuShare];
  [v9 replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:&stru_1E3068];
  v34 = [UIImage systemImageNamed:@"doc.on.doc"];
  v35 = AEBundle();
  v36 = [v35 localizedStringForKey:@"Copy" value:&stru_1E7188 table:0];
  v77 = v34;
  v37 = [UIKeyCommand commandWithTitle:v36 image:v34 action:"copy:" input:@"C" modifierFlags:0x80000 propertyList:0];

  v38 = UIMenu;
  v76 = v37;
  v92 = v37;
  v39 = [NSArray arrayWithObjects:&v92 count:1];
  v40 = [UIMenu menuWithTitle:&stru_1E7188 image:0 identifier:@"BKContextMenuEditIdentifier" options:17 children:v39];

  v79 = v9;
  v75 = v40;
  [v9 insertSiblingMenu:v40 afterMenuForIdentifier:UIMenuStandardEdit];
  v41 = +[NSMutableArray array];
  v90 = @"lookUpTerm";
  v42 = v23;
  if (!v23)
  {
    v43 = [v30 annotationSelectedText];
    v38 = v43;
    if (v43)
    {
      v42 = v43;
    }

    else
    {
      v42 = &stru_1E7188;
    }
  }

  v80 = v30;
  v91 = v42;
  v44 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
  if (!v23)
  {
  }

  v45 = [UIImage systemImageNamed:@"magnifyingglass.circle"];
  v46 = AEBundle();
  v47 = [v46 localizedStringForKey:@"Look Up" value:&stru_1E7188 table:0];
  v74 = v44;
  v48 = [UICommand commandWithTitle:v47 image:v45 action:"lookupSelection:" propertyList:v44];

  v73 = v48;
  [v41 addObject:v48];
  v49 = AEBundle();
  v50 = [v49 localizedStringForKey:@"Translate" value:&stru_1E7188 table:0];

  v51 = [UIImage _systemImageNamed:@"translate"];
  if (v23)
  {
    v52 = v23;
    v53 = v23;
  }

  else
  {
    v54 = [v80 annotationSelectedText];
    v53 = 0;
    v55 = v54;
    if (v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = &stru_1E7188;
    }

    v52 = v56;
  }

  v71 = v24;
  v88 = @"translateTerm";
  v89 = v52;
  v57 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
  v58 = [UICommand commandWithTitle:v50 image:v51 action:"translateSelection:" propertyList:v57];

  [v41 addObject:v58];
  v86 = @"searchTerm";
  v59 = v53;
  if (!v53)
  {
    v60 = [v80 annotationSelectedText];
    v50 = v60;
    v59 = &stru_1E7188;
    if (v60)
    {
      v59 = v60;
    }
  }

  v87 = v59;
  v61 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
  v72 = v53;
  if (!v53)
  {
  }

  v62 = [UIImage systemImageNamed:@"doc.text.magnifyingglass"];
  v63 = AEBundle();
  v64 = [v63 localizedStringForKey:@"Search" value:&stru_1E7188 table:0];
  v65 = [UICommand commandWithTitle:v64 image:v62 action:"searchUsingSelection:" propertyList:v61];

  [v41 addObject:v65];
  v66 = [UIImage systemImageNamed:@"square.and.arrow.up"];
  v67 = AEBundle();
  v68 = [v67 localizedStringForKey:@"Share" value:&stru_1E7188 table:0];
  v69 = [UICommand commandWithTitle:v68 image:v66 action:"_share:" propertyList:UICommandTagShare];

  [v41 addObject:v69];
  v70 = [UIMenu menuWithTitle:&stru_1E7188 image:0 identifier:@"BKContextMenuAnnotationIdentifier" options:17 children:v41];
  [v79 insertSiblingMenu:v70 afterMenuForIdentifier:@"BKContextMenuEditIdentifier"];
  [v79 removeMenuForIdentifier:UIMenuStandardEdit];
}

- (id)_payloadForKey:(id)a3 fromSender:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = BUDynamicCast();

  if (v7 && [v5 length])
  {
    objc_opt_class();
    v8 = [v7 propertyList];
    v9 = BUDynamicCast();

    objc_opt_class();
    v10 = [v9 objectForKeyedSubscript:v5];
    v11 = BUDynamicCast();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)searchWeb:(id)a3
{
  v5 = [(BKHTMLContentViewController *)self _payloadForKey:@"searchTerm" fromSender:a3];
  if ([v5 length])
  {
    v4 = [(BKContentViewController *)self delegate];
    [v4 contentViewController:self searchWebForString:v5];
  }
}

- (void)searchWikipedia:(id)a3
{
  v5 = [(BKHTMLContentViewController *)self _payloadForKey:@"searchTerm" fromSender:a3];
  if ([v5 length])
  {
    v4 = [(BKContentViewController *)self delegate];
    [v4 contentViewController:self searchEncyclopediaForString:v5];
  }
}

- (void)changeAnnotationStyle:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = BUDynamicCast();

  v5 = [(BKHTMLContentViewController *)self selectedAnnotation];
  if (v5)
  {
    [(BKHTMLContentViewController *)self changeAnnotationStyle:v6 annotation:v5];
  }
}

- (void)changeAnnotationStyle:(id)a3 annotation:(id)a4
{
  v15 = a4;
  v6 = [a3 propertyList];
  v7 = [v6 objectForKeyedSubscript:@"style"];

  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = [v7 integerValue];
  v9 = [(BKHTMLContentViewController *)self themePage];
  v10 = [v9 annotationPageTheme];

  v11 = 0;
  if (v8 > 3)
  {
    if (v8 == &dword_4)
    {
      v12 = [AEAnnotationTheme pinkTheme:v10];
    }

    else if (v8 == (&dword_4 + 1))
    {
      v12 = [AEAnnotationTheme purpleTheme:v10];
    }

    else
    {
      if (v8 != (&dword_4 + 2))
      {
        goto LABEL_16;
      }

      v12 = [AEAnnotationTheme underlineTheme:v10];
    }
  }

  else if (v8 == (&dword_0 + 1))
  {
    v12 = [AEAnnotationTheme yellowTheme:v10];
  }

  else if (v8 == (&dword_0 + 2))
  {
    v12 = [AEAnnotationTheme greenTheme:v10];
  }

  else
  {
    if (v8 != (&dword_0 + 3))
    {
      goto LABEL_16;
    }

    v12 = [AEAnnotationTheme blueTheme:v10];
  }

  v11 = v12;
LABEL_16:
  v13 = [(BKContentViewController *)self delegate];
  v14 = BUProtocolCast();

  if (v11 && v14)
  {
    [v14 editorController:0 setTheme:v11 forAnnotation:v15];
    [(BKHTMLContentViewController *)self clearSelection];
  }

LABEL_20:
}

- (void)addNote:(id)a3
{
  v4 = [(BKHTMLContentViewController *)self selectedAnnotation];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [(BKHTMLContentViewController *)self selectAnnotation:v4];
    v4 = [(BKHTMLContentViewController *)self annotateSelection:v6];
    v5 = v6;
  }

  _objc_release_x1(v4, v5);
}

- (void)removeNote:(id)a3
{
  v3 = [(BKHTMLContentViewController *)self selectedAnnotation];
  if (v3)
  {
    v4 = v3;
    [v3 setAnnotationNote:&stru_1E7188];
    v3 = v4;
  }
}

- (void)removeNoteAndHighlight:(id)a3
{
  v4 = [(BKHTMLContentViewController *)self selectedAnnotation];
  if (v4)
  {
    v5 = v4;
    [v4 setAnnotationNote:&stru_1E7188];
    [v5 setAnnotationDeleted:1];
    [(BKHTMLContentViewController *)self removeHighlightForAnnotation:v5];
    v4 = v5;
  }
}

- (id)_activityItemsConfiguration
{
  v3 = [(BKHTMLContentViewController *)self selectedAnnotation];
  v4 = [(BKHTMLContentViewController *)self selectedText];
  v5 = v4;
  v6 = 0;
  if (!v3 && v4)
  {
    v6 = objc_alloc_init(BKHTMLContentViewControllerDummyAnnotation);
    [v6 setAnnotationStyle:0];
    [v6 setAnnotationRepresentativeText:v5];
    v7 = [(BKHTMLContentViewController *)self annotationDataProvider];
    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v8 = [v7 chapterTitleForOrdinal:-[BKContentViewController ordinal](self pageOffset:{"ordinal"), -[BKContentViewController pageOffset](self, "pageOffset")}];
      [v6 setChapterTitle:v8];
    }
  }

  if (v3 | v6)
  {
    if (v3)
    {
      v9 = v3;
    }

    else
    {
      v9 = v6;
    }

    v10 = [AEAnnotationCatalystItemProvider itemProviderWithAnnotation:v9 propertyProvider:self];
    v11 = [[NSItemProvider alloc] initWithObject:v10];
    v12 = [UIActivityItemsConfiguration alloc];
    v16 = v11;
    v13 = [NSArray arrayWithObjects:&v16 count:1];
    v14 = [v12 initWithItemProviders:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)addHighlightToCurrentSelection:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1C89C;
  v5[3] = &unk_1E3090;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(BKHTMLContentViewController *)self _bookmarkSelectionAndAnnotate:0 showColorEditor:0 completion:v5];
}

- (BKHTMLContentViewController)init
{
  v6.receiver = self;
  v6.super_class = BKHTMLContentViewController;
  v2 = [(BKContentViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BKWebViewProxy);
    webViewProxy = v2->_webViewProxy;
    v2->_webViewProxy = v3;

    [(BKWebViewProxy *)v2->_webViewProxy setHasWKWebView:1];
  }

  return v2;
}

- (void)releaseViews
{
  fadeView = self->_fadeView;
  self->_fadeView = 0;

  [(UITapGestureRecognizer *)self->_tapGesture setDelegate:0];
  [(UITapGestureRecognizer *)self->_tapGesture removeTarget:0 action:0];
  tapGesture = self->_tapGesture;
  self->_tapGesture = 0;

  [(UITapGestureRecognizer *)self->_doubleTapGesture setDelegate:0];
  [(UITapGestureRecognizer *)self->_doubleTapGesture removeTarget:0 action:0];
  doubleTapGesture = self->_doubleTapGesture;
  self->_doubleTapGesture = 0;

  [(UIGestureRecognizer *)self->_indirectHighlightRecognizer setDelegate:0];
  [(UIGestureRecognizer *)self->_indirectHighlightRecognizer removeTarget:0 action:0];
  indirectHighlightRecognizer = self->_indirectHighlightRecognizer;
  self->_indirectHighlightRecognizer = 0;

  [(UILongPressGestureRecognizer *)self->_indirectImmediateHighlightRecognizer setDelegate:0];
  [(UILongPressGestureRecognizer *)self->_indirectImmediateHighlightRecognizer removeTarget:0 action:0];
  indirectImmediateHighlightRecognizer = self->_indirectImmediateHighlightRecognizer;
  self->_indirectImmediateHighlightRecognizer = 0;

  highlightWordStart = self->_highlightWordStart;
  self->_highlightWordStart = 0;

  highlightWordEnd = self->_highlightWordEnd;
  self->_highlightWordEnd = 0;

  highlightLastPos = self->_highlightLastPos;
  self->_highlightLastPos = 0;

  v11 = CGPointZero;
  self->_highlightStartPoint = CGPointZero;
  self->_highlightStartPoint2 = v11;
  highlightDummyAnnotation = self->_highlightDummyAnnotation;
  self->_highlightDummyAnnotation = 0;

  [(NSFetchedResultsController *)self->_highlightsFRC setDelegate:0];
  highlightsFRC = self->_highlightsFRC;
  self->_highlightsFRC = 0;

  highlightRenderingController = self->_highlightRenderingController;
  self->_highlightRenderingController = 0;

  self->super._contentLoaded = 0;
  [(BKContentViewController *)self setContentLoadPending:0];
  [(BKHTMLContentViewController *)self _updateReadingStateVisibilityPossible:0];
  [(BKActivityIndicatorOverlayView *)self->_activityIndicator hideIndicatorAnimated:0 animationDelay:0.0];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = 0;

  v16.receiver = self;
  v16.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v16 releaseViews];
}

- (void)dealloc
{
  [(BKHTMLContentViewController *)self teardownNotifications];
  [(BKHTMLContentViewController *)self releaseViews];
  [(BKHTMLContentViewController *)self clearCurrentHighlighting];
  annotationRectUnionCache = self->_annotationRectUnionCache;
  self->_annotationRectUnionCache = 0;

  annotationRectsCache = self->_annotationRectsCache;
  self->_annotationRectsCache = 0;

  [(BKHTMLContentViewController *)self setTempOwnerID:0];
  [(IMPerformSelectorProxy *)self->_performSelectorProxy teardown];
  v5.receiver = self;
  v5.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v5 dealloc];
}

- (void)setupNotifications
{
  if (!self->_areNotificationsSetup)
  {
    self->_areNotificationsSetup = 1;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"menuWillClose:" name:UIMenuControllerWillHideMenuNotification object:0];
    [v5 addObserver:self selector:"menuDidClose:" name:UIMenuControllerDidHideMenuNotification object:0];
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 addObserver:self forKeyPath:BEDocumentExternalLoadApprovalCacheDefaultsClearKey options:0 context:off_229400];
  }
}

- (void)teardownNotifications
{
  if (self->_areNotificationsSetup)
  {
    self->_areNotificationsSetup = 0;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:UIMenuControllerWillHideMenuNotification object:0];
    [v5 removeObserver:self name:UIMenuControllerDidHideMenuNotification object:0];
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 removeObserver:self forKeyPath:BEDocumentExternalLoadApprovalCacheDefaultsClearKey context:off_229400];
  }
}

- (IMPerformSelectorProxy)performSelectorProxy
{
  performSelectorProxy = self->_performSelectorProxy;
  if (!performSelectorProxy)
  {
    v4 = [[IMPerformSelectorProxy alloc] initWithTarget:self];
    v5 = self->_performSelectorProxy;
    self->_performSelectorProxy = v4;

    performSelectorProxy = self->_performSelectorProxy;
  }

  return performSelectorProxy;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v14 viewDidLoad];
  v3 = [(BKHTMLContentViewController *)self view];
  v4 = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 preloadContentViewController:self highPriority:1];
  }

  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTap:"];
  tapGesture = self->_tapGesture;
  self->_tapGesture = v5;

  [(UITapGestureRecognizer *)self->_tapGesture setDelegate:self];
  [v3 addGestureRecognizer:self->_tapGesture];
  v7 = [(BKHTMLContentViewController *)self themePage];
  v8 = [BKActivityIndicatorOverlayView alloc];
  v9 = [v7 contentTextColor];
  v10 = [v9 colorWithAlphaComponent:0.7];
  v11 = [v7 backgroundColorForTraitEnvironment:self];
  v12 = [(BKActivityIndicatorOverlayView *)v8 initWithBackgroundColor:v10 foregroundColor:v11];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v12;

  [(WKWebView *)self->_webView2 setBe_textInteractionAssistantDelegate:self];
  if ([(BKHTMLContentViewController *)self supportsNotesAndHighlights])
  {
    [(WKWebView *)self->_webView2 setBe_textInteractionDelegate:self];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKHTMLContentViewController;
  [(BKHTMLContentViewController *)&v4 viewWillAppear:a3];
  [(BKHTMLContentViewController *)self setupNotifications];
  [(BKHTMLContentViewController *)self _refreshAnnotationsAndSearchResult];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(BKHTMLContentViewController *)self stopActivityIndicator:?];
  v5.receiver = self;
  v5.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v5 viewWillDisappear:v3];
  [(BKHTMLContentViewController *)self teardownNotifications];
  [(BKHTMLContentViewController *)self clearCurrentHighlighting];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v4 viewDidDisappear:a3];
  [(BKHTMLContentViewController *)self setHighlightViews:0];
  [(BKHTMLContentViewController *)self _updateReadingStateVisibilityPossible:0];
}

- (void)setActivityIndicatorVisible:(BOOL)a3 animated:(BOOL)a4 afterDelay:(double)a5
{
  v6 = a4;
  if (a3)
  {
    v8 = [(BKHTMLContentViewController *)self view];
    v13 = [v8 window];

    v9 = [(BKContentViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [v9 contentViewController:self hostViewForActivityIndicator:self->_activityIndicator];

      v11 = v10;
    }

    else
    {
      v11 = v13;
    }

    v14 = v11;
    [(BKActivityIndicatorOverlayView *)self->_activityIndicator showIndicatorCenteredInView:v11 animated:v6 animationDelay:a5];
  }

  else
  {
    activityIndicator = self->_activityIndicator;

    [(BKActivityIndicatorOverlayView *)activityIndicator hideIndicatorAnimated:a4 animationDelay:?];
  }
}

- (void)setEstimatedContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v8 setEstimatedContentSize:?];
  *v7 = width;
  *&v7[1] = height;
  v6 = [NSValue valueWithBytes:v7 objCType:"{CGSize=dd}"];
  [(WKWebView *)self->_webView2 setBe_estimatedContentSizeValue:v6];
}

- (void)setTheme:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BKHTMLContentViewController *)self theme];
  v8 = [v6 isEqual:v7];

  if (!v8 || v4)
  {
    v13.receiver = self;
    v13.super_class = BKHTMLContentViewController;
    [(BKContentViewController *)&v13 setTheme:v6 force:v4];
    if (self->_highlightRenderingController)
    {
      v9 = [(BKHTMLContentViewController *)self theme];
      -[AEHighlightRenderingController setAnnotationBlendMode:](self->_highlightRenderingController, "setAnnotationBlendMode:", [v9 annotationBlendMode]);

      v10 = [(BKHTMLContentViewController *)self theme];
      -[AEHighlightRenderingController setPageTheme:](self->_highlightRenderingController, "setPageTheme:", [v10 annotationPageTheme]);

      v11 = [(BKHTMLContentViewController *)self theme];
      if ([v11 shouldInvertContent])
      {
        v12 = [(BKContentViewController *)self configuration];
        -[AEHighlightRenderingController setDrawSpecialGrayHighlights:](self->_highlightRenderingController, "setDrawSpecialGrayHighlights:", [v12 isScroll] ^ 1);
      }

      else
      {
        [(AEHighlightRenderingController *)self->_highlightRenderingController setDrawSpecialGrayHighlights:0];
      }
    }
  }

  [(BKHTMLContentViewController *)self invalidateContentBasedOverlay];
}

- (void)setNeedsRestyle
{
  v3.receiver = self;
  v3.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v3 setNeedsRestyle];
  self->_underlinePercent = 0.0;
  [(BKHTMLContentViewController *)self invalidateContentBasedOverlayCache];
}

- (int64_t)effectivePageOffset
{
  if ([(BKContentViewController *)self pageProgressionDirection]== 1 && [(BKHTMLContentViewController *)self _isDoubleWide]&& [(BKContentViewController *)self pageOffset]>= 1)
  {
    return [(BKContentViewController *)self pageOffset]- 1;
  }

  return [(BKContentViewController *)self pageOffset];
}

- (void)playFirstVisibleAutoplayMediaObject
{
  v5 = [NSString stringWithFormat:@"__ibooks_cfi_utilities.playFirstAutoplayMedia()"];;
  v3 = [(BKHTMLContentViewController *)self loader];
  v4 = [v3 webView];
  [v4 evaluateJavaScript:v5 completionHandler:0];
}

- (void)didChangeLocationClosing:(BOOL)a3
{
  if ([(BKContentViewController *)self isContentLoaded])
  {

    [(BKHTMLContentViewController *)self playFirstVisibleAutoplayMediaObject];
  }

  else
  {
    self->_shouldAutoplay = 1;
  }
}

- (void)setHighlightViews:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    [(BKHTMLContentViewController *)self clearHighlights];
  }

  v5.receiver = self;
  v5.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v5 setHighlightViews:v4];
}

- (void)highlightSearchLocation:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v5 highlightSearchLocation:v4];
  if ([(BKHTMLContentViewController *)self isLocationFromThisDocument:v4]&& [(BKContentViewController *)self isContentLoaded])
  {
    [(BKHTMLContentViewController *)self _highlightLocation:v4 withHighlightType:[(BKContentViewController *)self selectionHighlightType] owner:v4];
  }
}

- (void)clearSearchLocation
{
  v3.receiver = self;
  v3.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v3 clearSearchLocation];
  [(BKHTMLContentViewController *)self clearSelectionHighlights];
}

- (void)clearHighlightsForSearchResults
{
  [(BKContentViewController *)self setSearchLocation:0];

  [(BKHTMLContentViewController *)self setHighlightViews:0];
}

- (void)drawHighlights
{
  v3 = [(BKHTMLContentViewController *)self highlightRenderingController];
  v4 = [v3 highlightLayers];

  v5 = [(BKHTMLContentViewController *)self __highlightContainerView];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [v5 layer];
        [v12 addSublayer:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)clearHighlights
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSFetchedResultsController *)self->_highlightsFRC fetchedObjects];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(BKHTMLContentViewController *)self highlightRenderingController];
        v10 = [v8 annotationUuid];
        [v9 removeHighlightForData:v10];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (id)preservedSelectionHighlights
{
  v3 = [(BKContentViewController *)self highlightViews];
  v4 = [v3 count];

  if (v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [(BKContentViewController *)self highlightViews];
    v7 = [v6 copy];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          [(NSMutableArray *)self->super._highlightViews removeObject:v13, v15];
          [v5 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)highlightAnnotations:(id)a3
{
  v4 = a3;
  v5 = [(BKHTMLContentViewController *)self annotationRectUnionCache];
  if (v5)
  {
    v6 = v5;
    v7 = [(BKHTMLContentViewController *)self highlightRenderingController];
    v8 = [v7 isAddingHighlights];

    if ((v8 & 1) == 0)
    {
      v9 = [(BKHTMLContentViewController *)self highlightRenderingController];
      [v9 setAddingHighlights:1];

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = v4;
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          v14 = 0;
          do
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [(BKHTMLContentViewController *)self _highlightAnnotation:*(*(&v16 + 1) + 8 * v14), v16];
            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }

      v15 = [(BKHTMLContentViewController *)self highlightRenderingController];
      [v15 setAddingHighlights:0];
    }
  }
}

- (double)underlinePercent
{
  result = self->_underlinePercent;
  if (result == 0.0)
  {
    v4 = [(BKContentViewController *)self configuration];
    v5 = [v4 style];
    v6 = [v5 fontFamily];

    v7 = [NSDictionary dictionaryWithObject:v6 forKey:kCTFontFamilyNameAttribute];
    v8 = CTFontDescriptorCreateWithAttributes(v7);
    if (!v8 || (v9 = v8, v10 = CTFontCreateWithFontDescriptor(v8, 0.0, 0), CFRelease(v9), !v10))
    {
      v10 = CTFontCreateWithName(v6, 0.0, 0);
    }

    Ascent = CTFontGetAscent(v10);
    v12 = Ascent + CTFontGetDescent(v10);
    self->_underlinePercent = CTFontGetAscent(v10) / v12;
    if (v10)
    {
      CFRelease(v10);
    }

    return self->_underlinePercent;
  }

  return result;
}

- (BOOL)_isCachedAnnotationRectVisible:(id)a3 considerEntirePage:(BOOL)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [(BKHTMLContentViewController *)self loader];
    [v7 contentRectForVisiblePage];
  }

  else
  {
    v7 = [(BKHTMLContentViewController *)self webViewProxy];
    [v7 contentRectForVisibleContent];
  }

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;

  v20 = v6;
  v16 = [NSArray arrayWithObjects:&v20 count:1];

  v17 = [(BKHTMLContentViewController *)self arrayOfVisibleRectsFromRects:v16 contentRect:v12, v13, v14, v15];

  v21.origin.x = BKUnionRects(v17);
  IsNull = CGRectIsNull(v21);

  return !IsNull;
}

- (void)_highlightAnnotation:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v4 isAnnotationDeleted] & 1) == 0)
  {
    v5 = [v4 location];
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1E16C;
    v13[3] = &unk_1E2C70;
    objc_copyWeak(&v15, &location);
    v6 = v4;
    v14 = v6;
    v7 = objc_retainBlock(v13);
    v8 = [(BKContentViewController *)self configuration];
    v9 = [v8 isScroll];

    if (v9)
    {
      (v7[2])(v7, 1);
    }

    else
    {
      v10 = [v6 annotationLocation];
      if (v10 && (-[BKHTMLContentViewController annotationRectUnionCache](self, "annotationRectUnionCache"), v11 = objc_claimAutoreleasedReturnValue(), [v11 objectForKeyedSubscript:v10], v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
      {
        if (([(BKContentViewController *)self pageOffset]& 0x8000000000000000) == 0 && [(BKContentViewController *)self pageOffset]!= 0x7FFFFFFFFFFFFFFFLL && [(BKHTMLContentViewController *)self isLocationFromThisDocument:v5])
        {
          (v7[2])(v7, [(BKHTMLContentViewController *)self _isCachedAnnotationRectVisible:v12 considerEntirePage:0]);
        }
      }

      else
      {
        [(BKHTMLContentViewController *)self isLocationVisible:v5 annotation:v6 completion:v7];
        v12 = 0;
      }
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)_highlightAnnotation:(id)a3 rects:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKHTMLContentViewController *)self highlightRenderingController];
  v9 = [v6 annotationUuid];
  v10 = [v8 highlightWithData:v9];

  v11 = v10;
  if (!v10)
  {
    v11 = objc_alloc_init(AEHighlight);
    [v11 setAnnotation:v6];
    v12 = +[NSArray array];
    [v11 setLines:v12];
  }

  v13 = [v11 lines];
  [v13 enumerateObjectsUsingBlock:&stru_1E30D0];

  v14 = [(BKHTMLContentViewController *)self loader];
  v15 = [v14 isVerticalDocument];

  if (v15)
  {
    if ([(BKContentViewController *)self pageProgressionDirection]== 1)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [(BKContentViewController *)self configuration];
  v18 = [v17 isScroll];

  if (v18)
  {
    v19 = v7;
  }

  else
  {
    v19 = [(BKHTMLContentViewController *)self arrayOfVisibleRectsFromRects:v7];
  }

  v20 = v19;
  v21 = [v11 lines];
  v22 = [v21 mutableCopy];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1E4CC;
  v32[3] = &unk_1E3118;
  v23 = v11;
  v33 = v23;
  v34 = self;
  v37 = v16;
  v24 = v20;
  v35 = v24;
  v25 = v22;
  v36 = v25;
  [v24 enumerateObjectsUsingBlock:v32];
  [v23 setLines:v25];
  v26 = [(BKHTMLContentViewController *)self highlightRenderingController];
  v27 = v26;
  if (v10)
  {
    [v26 updatedHighlight:v23];
  }

  else
  {
    v28 = [v6 annotationUuid];
    [v27 addHighlight:v23 forData:v28];
  }

  [(BKHTMLContentViewController *)self drawHighlights];
  v29 = [(BKContentViewController *)self delegate];
  v30 = objc_opt_respondsToSelector();

  if (v30)
  {
    v31 = [(BKContentViewController *)self delegate];
    [v31 contentViewControllerAnnotationCacheDidChange:self];
  }
}

- (void)_highlightAnnotationWK2:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 location];
  v6 = [v5 selectionRects];
  v7 = [v4 annotationLocation];
  if (!v7)
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    v9 = 0;
LABEL_7:
    [(BKHTMLContentViewController *)self _highlightAnnotation:v4 rects:v6];
    goto LABEL_14;
  }

  v8 = [(BKHTMLContentViewController *)self annotationRectsCache];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v6)
  {
    goto LABEL_7;
  }

  if (v9)
  {
    [(BKHTMLContentViewController *)self _highlightAnnotation:v4 rects:v9];
    goto LABEL_14;
  }

LABEL_8:
  if (v5)
  {
    v10 = [(BKHTMLContentViewController *)self webViewProxy];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1E960;
    v13[3] = &unk_1E3140;
    objc_copyWeak(&v17, &location);
    v14 = v7;
    v15 = v4;
    v16 = v5;
    [v10 clientRectsForLocation:v16 completion:v13];

    objc_destroyWeak(&v17);
  }

  else
  {
    v11 = _AEAnnotationLocationLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "_highlightAnnotationWK2 nil location.", v12, 2u);
    }
  }

  v9 = 0;
LABEL_14:

  objc_destroyWeak(&location);
}

- (BOOL)currentlyHighlighting
{
  v2 = [(BKHTMLContentViewControllerDummyAnnotation *)self->_highlightDummyAnnotation dummyLocation2];
  v3 = v2 != 0;

  return v3;
}

- (void)_showAnnotations:(BOOL)a3
{
  v3 = a3;
  if ([(BKHTMLContentViewController *)self supportsNotesAndHighlights])
  {
    v5 = [(BKHTMLContentViewController *)self annotationRectUnionCache];

    if (v5)
    {
      v6 = [(BKHTMLContentViewController *)self view];
      [v6 layoutIfNeeded];

      if (v3)
      {
        v10 = [(BKHTMLContentViewController *)self preservedSelectionHighlights];
      }

      else
      {
        v10 = 0;
      }

      [(BKHTMLContentViewController *)self setHighlightViews:0];
      v7 = [(NSFetchedResultsController *)self->_highlightsFRC fetchedObjects];
      v8 = [NSPredicate predicateWithFormat:@"annotationType == %d", 2];
      v9 = [v7 filteredArrayUsingPredicate:v8];

      [(BKHTMLContentViewController *)self highlightAnnotations:v9];
      if ([v10 count])
      {
        [(NSMutableArray *)self->super._highlightViews addObjectsFromArray:v10];
      }

      [(BKHTMLContentViewController *)self drawHighlights];
    }
  }
}

- (void)removeHighlightForAnnotation:(id)a3
{
  v4 = a3;
  v5 = [v4 annotationUuid];
  v6 = [NSPredicate predicateWithFormat:@"owner == %@", v5, 0];

  v7 = [(BKContentViewController *)self highlightViews];
  v8 = [v7 filteredArrayUsingPredicate:v6];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(BKContentViewController *)self removeHighlightView:*(*(&v16 + 1) + 8 * v13)];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = [(BKHTMLContentViewController *)self highlightRenderingController];
  v15 = [v4 annotationUuid];
  [v14 removeHighlightForData:v15];
}

- (void)_annotationChanged:(id)a3 forceRender:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 ordinal];
    if (v7 == [(BKContentViewController *)self ordinal])
    {
      v8 = _AEAnnotationLocationLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v6 annotationUuid];
        *buf = 138412290;
        v28 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "_annotationChanged for %@", buf, 0xCu);
      }

      if ([v6 annotationType] == 2)
      {
        v10 = [v6 annotationUuid];
        v11 = [NSPredicate predicateWithFormat:@"owner == %@", v10, 0];

        v12 = [(BKContentViewController *)self highlightViews];
        v13 = [v12 filteredArrayUsingPredicate:v11];

        v14 = _AEAnnotationLocationLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v6 annotationUuid];
          *buf = 138412546;
          v28 = v15;
          v29 = 2112;
          v30 = v13;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "_annotationChanged for %@ found views: %@", buf, 0x16u);
        }

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v16 = v13;
        v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v23;
          do
          {
            v20 = 0;
            do
            {
              if (*v23 != v19)
              {
                objc_enumerationMutation(v16);
              }

              [(BKContentViewController *)self removeHighlightView:*(*(&v22 + 1) + 8 * v20)];
              v20 = v20 + 1;
            }

            while (v18 != v20);
            v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v18);
        }

        v21 = [NSArray arrayWithObject:v6];
        [(BKHTMLContentViewController *)self highlightAnnotations:v21];
      }
    }
  }
}

- (void)_refreshAnnotationsAndSearchResult
{
  if ([(BKContentViewController *)self isContentLoaded])
  {
    v3 = [(BKContentViewController *)self searchLocation];
    [(BKHTMLContentViewController *)self _showAnnotations:v3 == 0];

    v4 = [(BKContentViewController *)self searchLocation];

    if (v4)
    {
      v5 = [(BKContentViewController *)self searchLocation];
      [(BKHTMLContentViewController *)self highlightSearchLocation:v5];
    }

    v6 = [(BKContentViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 contentViewControllerAnnotationsDidChange:self];
    }
  }
}

- (void)_highlightLocation:(id)a3 withHighlightType:(int)a4 owner:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    objc_initWeak(&location, self);
    v10 = [(BKHTMLContentViewController *)self webViewProxy];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1F304;
    v11[3] = &unk_1E3190;
    objc_copyWeak(&v15, &location);
    v12 = v8;
    v13 = self;
    v16 = a4;
    v14 = v9;
    [v10 clientRectsForLocation:v12 completion:v11];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    [(BKHTMLContentViewController *)self clearSelection];
  }
}

- (id)_highlightRects:(id)a3 withHighlightType:(int)a4 owner:(id)a5 forWK2:(BOOL)a6 clearSelection:(BOOL)a7
{
  v7 = a7;
  v39 = a6;
  v9 = *&a4;
  v11 = a3;
  v12 = a5;
  v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
  [(WKWebView *)self->_webView2 be_scale];
  v15 = v14;
  if (v7)
  {
    [(BKHTMLContentViewController *)self clearSelection];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
    v20 = v15;
    v38 = v20;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v40 + 1) + 8 * i) CGRectValue];
        v23 = v22;
        v25 = v24;
        [(BKHTMLContentViewController *)self _originPointForPoint:?];
        x = v46.origin.x;
        v27 = v15 * v23;
        v28 = v15 * v25;
        v30 = v15 + v29;
        v46.origin.y = v15 + v29;
        v46.size.width = v27;
        v46.size.height = v15 * v25;
        v31 = v15 * 3.0;
        v32 = v15 + v15;
        if (CGRectGetHeight(v46) <= v15 * 19.0)
        {
          v33 = [v16 count];
          if (v33 <= 1)
          {
            v31 = v15 * 3.0;
          }

          else
          {
            v31 = v15 + v15;
          }

          if (v33 <= 1)
          {
            v32 = v15 + v15;
          }

          else
          {
            v32 = v15;
          }
        }

        v34 = [[BKTextHighlightView alloc] initWithFrame:x - v15 * 3.0, v30 - v32, v15 * 3.0 + v15 * 3.0 + v27, v28 + v31 + v32];
        [(BKTextHighlightView *)v34 setHighlightType:v9];
        [(BKTextHighlightView *)v34 setOwner:v12];
        *&v35 = v38;
        [(BKTextHighlightView *)v34 setCurrentScale:v35];
        v36 = [(BKHTMLContentViewController *)self theme];
        -[BKTextHighlightView setLightenBlend:](v34, "setLightenBlend:", [v36 shouldInvertContent]);

        [(BKTextHighlightView *)v34 setContentInsets:v32, v15 * 3.0, v31, v15 * 3.0];
        [(BKContentViewController *)self addHighlightView:v34 forWK2:v39];
        [v13 addObject:v34];
      }

      v18 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v18);
  }

  return v13;
}

- (id)highlightRangeFromRects:(id)a3
{
  v4 = a3;
  v5 = [(BKHTMLContentViewController *)self loader];
  v6 = +[BEJavascriptUtilities collapsedLineRectsFromArrayOfRectDictionaries:isVerticalDocument:](BEJavascriptUtilities, "collapsedLineRectsFromArrayOfRectDictionaries:isVerticalDocument:", v4, [v5 isVerticalDocument]);

  v7 = [(BKHTMLContentViewController *)self _highlightRects:v6 withHighlightType:[(BKContentViewController *)self selectionHighlightType] owner:0 forWK2:1 clearSelection:1];

  return v7;
}

- (void)clearSelectionHighlights
{
  v13.receiver = self;
  v13.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v13 clearSelectionHighlights];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(BKContentViewController *)self highlightViews];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(BKContentViewController *)self removeHighlightView:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)selectedAnnotation
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [(NSFetchedResultsController *)self->_highlightsFRC fetchedObjects];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [v8 annotationUuid];
          v10 = [v9 isEqualToString:self->_tempOwnerID];

          if (v10)
          {
            v11 = v8;
            goto LABEL_13;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_contentRectForLocation:(id)a3 visible:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  objc_opt_class();
  v10 = BUDynamicCast();
  if (v10)
  {
    [(BKHTMLContentViewController *)self rectForLocation:v10 adjustedForContentOffset:0];
    v48[0] = v11;
    v48[1] = v12;
    v48[2] = v13;
    v48[3] = v14;
    v15 = [NSValue valueWithBytes:v48 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v49 = v15;
    v16 = [NSArray arrayWithObjects:&v49 count:1];
    [(BKHTMLContentViewController *)self _contentRectFromRects:v16 visible:v6];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = objc_retainBlock(v9);
    v26 = v25;
    if (v25)
    {
      (*(v25 + 2))(v25, v18, v20, v22, v24);
    }
  }

  else
  {
    objc_opt_class();
    v27 = BUDynamicCast();
    v26 = v27;
    if (v27 && ([v27 jsonObject], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
    {
      v29 = [(BKHTMLContentViewController *)self loader];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_20234;
      v46[3] = &unk_1E31B8;
      v47 = v9;
      [v29 clientRectForEpubLocation:v26 completion:v46];

      v30 = v47;
    }

    else
    {
      objc_opt_class();
      v30 = BUDynamicCast();
      v31 = [v30 cfiString];
      if (v30 && (-[BKHTMLContentViewController annotationRectUnionCache](self, "annotationRectUnionCache"), v32 = objc_claimAutoreleasedReturnValue(), [v32 objectForKeyedSubscript:v31], v33 = objc_claimAutoreleasedReturnValue(), v32, v33))
      {
        if (v6)
        {
          v34 = [(BKHTMLContentViewController *)self annotationRectsCache];
          v35 = [v34 objectForKeyedSubscript:v31];

          v36 = [(BKHTMLContentViewController *)self arrayOfVisibleRectsFromRects:v35];
          v37 = objc_retainBlock(v9);
          if (v37)
          {
            v38 = BKUnionRects(v36);
            v37[2](v37, v38);
          }
        }

        else
        {
          v35 = objc_retainBlock(v9);
          if (v35)
          {
            [v33 CGRectValue];
            v35[2](v35);
          }
        }
      }

      else
      {
        v39 = [(BKHTMLContentViewController *)self webViewProxy];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_202CC;
        v40[3] = &unk_1E31E0;
        v41 = v30;
        v42 = self;
        v43 = v31;
        v45 = v6;
        v44 = v9;
        [v39 clientRectsForLocation:v8 completion:v40];
      }
    }
  }
}

- (CGRect)_contentRectFromRects:(id)a3 visible:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v11 = [v6 count];
  if (v4)
  {
    if (v11)
    {
      v12 = [(BKHTMLContentViewController *)self arrayOfVisibleRectsFromRects:v6];
      x = BKUnionRects(v12);
      y = v13;
      width = v14;
      height = v15;
    }
  }

  else if (v11)
  {
    x = BKUnionRects(v6);
    y = v16;
    width = v17;
    height = v18;
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)contentRectForLocation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(BKHTMLContentViewController *)self _contentRectForLocation:v6 visible:0 completion:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(BKHTMLContentViewController *)self rectForLocation:v6];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = objc_retainBlock(v7);
      v21 = v16;
      if (v16)
      {
        v17.n128_u64[0] = v9;
        v18.n128_u64[0] = v11;
        v19.n128_u64[0] = v13;
        v20.n128_u64[0] = v15;
        (*(v16 + 2))(v17, v18, v19, v20);
      }
    }

    else
    {
      v22 = _AECaptureLocationLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v30 = 138412290;
        v31 = v24;
      }

      v25 = objc_retainBlock(v7);
      v21 = v25;
      if (v25)
      {
        v26.n128_u64[0] = *&CGRectZero.origin.x;
        v27.n128_u64[0] = *&CGRectZero.origin.y;
        v28.n128_u64[0] = *&CGRectZero.size.width;
        v29.n128_u64[0] = *&CGRectZero.size.height;
        (*(v25 + 2))(v26, v27, v28, v29);
      }
    }
  }
}

- (void)contentRectForAnnotation:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 location];
  [(BKHTMLContentViewController *)self _contentRectForLocation:v7 visible:0 completion:v6];
}

- (CGRect)rectForLocation:(id)a3
{
  [(BKHTMLContentViewController *)self rectForLocation:a3 adjustedForContentOffset:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)rectForLocation:(id)a3 adjustedForContentOffset:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v6 anchor];
    v12 = [(BKHTMLContentViewController *)self loader];
    v13 = [v12 anchorFrameForAnchor:v11];

    if (v13)
    {
      [v13 rectValue];
      x = v14;
      y = v15;
      width = v16;
      height = v17;
    }

LABEL_7:
    if (v4)
    {
LABEL_8:
      [(BKHTMLContentViewController *)self _originPointForPoint:x, y];
      x = v26;
      y = v27;
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v18 = v6;
  v19 = [(BKHTMLContentViewController *)self loader];
  v20 = [v18 pageOffset];

  [v19 rectForPageOffset:v20];
  x = v21;
  y = v22;
  width = v23;
  height = v24;

  v25 = [(BKContentViewController *)self configuration];
  LODWORD(v19) = [v25 isScroll];

  if (!v19)
  {
    goto LABEL_7;
  }

LABEL_9:

  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (void)rectForLocation:(id)a3 completion:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2098C;
  v6[3] = &unk_1E3208;
  v7 = self;
  v8 = a4;
  v5 = v8;
  [(BKHTMLContentViewController *)v7 _contentRectForLocation:a3 visible:0 completion:v6];
}

- (void)visibleRectForLocation:(id)a3 completion:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_20B04;
  v6[3] = &unk_1E3208;
  v7 = self;
  v8 = a4;
  v5 = v8;
  [(BKHTMLContentViewController *)v7 _contentRectForLocation:a3 visible:1 completion:v6];
}

- (BOOL)isRectVisible:(id)a3
{
  v8 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v8 count:1];

  v6 = [(BKHTMLContentViewController *)self arrayOfVisibleRectsFromRects:v5, v8];

  v9.origin.x = BKUnionRects(v6);
  LOBYTE(self) = CGRectIsNull(v9);

  return self ^ 1;
}

- (id)_annotationUuidIntersectingPoint:(CGPoint)a3 inView:(id)a4 annotationLayerRect:(CGRect *)a5
{
  y = a3.y;
  x = a3.x;
  v9 = [a4 layer];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = [(BKHTMLContentViewController *)self highlightRenderingController];
  v11 = [v10 highlightLayers];

  v12 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v12)
  {
    v13 = *v39;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        [v15 convertPoint:v9 fromLayer:{x, y}];
        v17 = v16;
        v19 = v18;
        v20 = [(BKHTMLContentViewController *)self highlightRenderingController];
        v21 = [v20 layer:v15 containsHighlightAtPoint:{v17, v19}];

        if (v21)
        {
          v22 = [(BKHTMLContentViewController *)self highlightRenderingController];
          v12 = [v22 annotationUuidForHighlightLayer:v15];

          if (a5)
          {
            [v15 bounds];
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v31 = [(BKHTMLContentViewController *)self view];
            v32 = [v31 layer];
            [v15 convertRect:v32 toLayer:{v24, v26, v28, v30}];
            a5->origin.x = v33;
            a5->origin.y = v34;
            a5->size.width = v35;
            a5->size.height = v36;
          }

          goto LABEL_12;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v12;
}

- (void)handleTap:(id)a3
{
  v17 = a3;
  v4 = [v17 retrieveAndClearSelectionRectValue];
  v5 = v4;
  if (v4)
  {
    [v4 CGRectValue];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(BKHTMLContentViewController *)self becomeFirstResponder];
    v14 = [(BKHTMLContentViewController *)self selectedAnnotation];
    v15 = +[BKBookViewController useEnhancedEditMenu];
    if (v14)
    {
      if (v15)
      {
        v16 = [(BKHTMLContentViewController *)self view];
        [v17 locationInView:v16];
        [(BKHTMLContentViewController *)self showContextMenuAtLocation:?];
      }

      else
      {
        [(BKHTMLContentViewController *)self showHighlightingMenuForAnnotation:v14];
      }
    }

    else if ((v15 & 1) == 0)
    {
      [(BKHTMLContentViewController *)self _showMenuForRect:v7, v9, v11, v13];
    }
  }
}

- (id)_preflightTapLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (+[BKBookViewController useEnhancedEditMenu](BKBookViewController, "useEnhancedEditMenu") || (+[UIMenuController sharedMenuController](UIMenuController, "sharedMenuController"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isMenuVisible], v6, (v7 & 1) != 0))
  {
    v8 = 0;
    goto LABEL_13;
  }

  v9 = [(BKHTMLContentViewController *)self view];
  v10 = [v9 hitTest:0 withEvent:{x, y}];

  objc_opt_class();
  v11 = BUDynamicCast();
  if (v11)
  {
    objc_opt_class();
    v12 = [v11 owner];
    v13 = BUDynamicCast();

    if (v13)
    {
      [v11 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [(BKHTMLContentViewController *)self view];
      [v11 convertRect:v22 toView:{v15, v17, v19, v21}];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      [(BKHTMLContentViewController *)self setTempOwnerID:v13];
      v31 = v24;
      v32 = v26;
      width = v28;
      height = v30;
LABEL_11:
      v8 = [NSValue valueWithCGRect:v31, v32, width, height];
      goto LABEL_12;
    }
  }

  else
  {
    size = CGRectNull.size;
    v38.origin = CGRectNull.origin;
    v38.size = size;
    v36 = [(BKHTMLContentViewController *)self view];
    v13 = [(BKHTMLContentViewController *)self _annotationUuidIntersectingPoint:v36 inView:&v38 annotationLayerRect:x, y];

    if (v13)
    {
      [(BKHTMLContentViewController *)self setTempOwnerID:v13];
      v40.origin.x = CGRectNull.origin.x;
      v40.origin.y = CGRectNull.origin.y;
      v40.size.width = CGRectNull.size.width;
      v40.size.height = CGRectNull.size.height;
      if (!CGRectEqualToRect(v38, v40))
      {
        v32 = v38.origin.y;
        v31 = v38.origin.x;
        height = v38.size.height;
        width = v38.size.width;
        goto LABEL_11;
      }
    }
  }

  v8 = 0;
LABEL_12:

LABEL_13:

  return v8;
}

- (BOOL)preflightTap:(id)a3
{
  v4 = a3;
  v5 = [(BKHTMLContentViewController *)self view];
  [v4 locationInView:v5];
  v6 = [(BKHTMLContentViewController *)self _preflightTapLocation:?];

  if (v6)
  {
    [v4 captureSelectionRectValueForTap:v6];
  }

  return v6 != 0;
}

- (void)removeDummyHighlight
{
  if (self->_highlightDummyAnnotation)
  {
    v3 = _AEAnnotationLocationLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      highlightDummyAnnotation = self->_highlightDummyAnnotation;
      v11 = 138412290;
      v12 = highlightDummyAnnotation;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Removing _highlightDummyAnnotation:%@", &v11, 0xCu);
    }

    [(BKHTMLContentViewControllerDummyAnnotation *)self->_highlightDummyAnnotation setRemoved:1];
    [(BKHTMLContentViewController *)self removeHighlightForAnnotation:self->_highlightDummyAnnotation];
    highlightWordStart = self->_highlightWordStart;
    self->_highlightWordStart = 0;

    highlightWordEnd = self->_highlightWordEnd;
    self->_highlightWordEnd = 0;

    highlightLastPos = self->_highlightLastPos;
    self->_highlightLastPos = 0;

    self->_highlightStartPoint2 = CGPointZero;
    v8 = self->_highlightDummyAnnotation;
    self->_highlightDummyAnnotation = 0;

    v9 = [(BKHTMLContentViewController *)self annotationRectUnionCache];
    [v9 setObject:0 forKeyedSubscript:@"BKHTMLContentViewControllerDummyAnnotationUUID"];

    self->_highlightCancelled = 0;
    [(NSTimer *)self->_highlightTimer invalidate];
    highlightTimer = self->_highlightTimer;
    self->_highlightTimer = 0;
  }
}

- (void)_scheduleInteractionReset
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_resetInteractionTracking" object:0];

  [(BKHTMLContentViewController *)self performSelector:"_resetInteractionTracking" withObject:0 afterDelay:0.25];
}

- (BOOL)_shouldBeginCustomHighlighterActionForTouchType:(int64_t)a3 modifierFlags:(int64_t)initialTextInteractionModifiers
{
  if (a3 == 3)
  {
    if (self->_haveDeterminedInitialModifiers)
    {
      initialTextInteractionModifiers = self->_initialTextInteractionModifiers;
    }

    else
    {
      self->_haveDeterminedInitialModifiers = 1;
      self->_initialTextInteractionModifiers = initialTextInteractionModifiers;
    }

    v4 = (initialTextInteractionModifiers >> 20) & 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  [(BKHTMLContentViewController *)self _scheduleInteractionReset];
  return v4;
}

- (CGPoint)_webkit2LocationForContentViewPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(WKWebView *)self->_webView2 be_textInputChild];
  [v6 convertPoint:self->_webView2 toView:{x, y}];
  v8 = v7;
  v10 = v9;

  [(WKWebView *)self->_webView2 bounds];
  v11 = v28.origin.x;
  v12 = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  MinX = CGRectGetMinX(v28);
  if (v8 < MinX)
  {
    v8 = MinX;
  }

  v29.origin.x = v11;
  v29.origin.y = v12;
  v29.size.width = width;
  v29.size.height = height;
  MaxX = CGRectGetMaxX(v29);
  if (v8 >= MaxX)
  {
    v8 = MaxX;
  }

  v30.origin.x = v11;
  v30.origin.y = v12;
  v30.size.width = width;
  v30.size.height = height;
  MinY = CGRectGetMinY(v30);
  if (v10 < MinY)
  {
    v10 = MinY;
  }

  v31.origin.x = v11;
  v31.origin.y = v12;
  v31.size.width = width;
  v31.size.height = height;
  MaxY = CGRectGetMaxY(v31);
  if (v10 >= MaxY)
  {
    v10 = MaxY;
  }

  webView2 = self->_webView2;
  v20 = [(WKWebView *)webView2 be_textInputChild];
  [(WKWebView *)webView2 convertPoint:v20 toView:v8, v10];
  v22 = v21;
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.y = v26;
  result.x = v25;
  return result;
}

- (void)_highlightTimerFired:(id)a3
{
  [(NSTimer *)self->_highlightTimer invalidate];
  highlightTimer = self->_highlightTimer;
  self->_highlightTimer = 0;

  if (!self->_highlightCancelled)
  {
    self->_highlightCancelled = 1;
    webView2 = self->_webView2;

    [(WKWebView *)webView2 be_selectForWebView:0];
  }
}

- (double)_timeIntervalForHighlightGesture
{
  v2 = [(BKContentViewController *)self configuration];
  v3 = [v2 isScroll];

  result = 0.25;
  if (v3)
  {
    return 0.5;
  }

  return result;
}

- (void)__webView2_performHighlighterActionWithGestureState:(int64_t)a3 location:(CGPoint)a4 isTouch:(BOOL)a5
{
  if ((a3 - 4) < 2)
  {
    [(BKHTMLContentViewController *)self removeDummyHighlight:a4.x];
    +[UIViewController attemptRotationToDeviceOrientation];

    [(BKHTMLContentViewController *)self _resetInteractionTracking];
    return;
  }

  if (a3 == 3)
  {
    highlightDummyAnnotation = self->_highlightDummyAnnotation;
    if (highlightDummyAnnotation)
    {
      [(BKHTMLContentViewControllerDummyAnnotation *)highlightDummyAnnotation setRemoved:1, a5, a4.x, a4.y];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_21D48;
      v53[3] = &unk_1E3230;
      v53[4] = self;
      [(BKHTMLContentViewController *)self _bookmarkSelectionAndAnnotate:0 showColorEditor:0 completion:v53];
    }

    [UIViewController attemptRotationToDeviceOrientation:a4.x];
    [(BKHTMLContentViewController *)self _resetInteractionTracking];
    return;
  }

  v8 = a5;
  y = a4.y;
  x = a4.x;
  [(BKHTMLContentViewController *)self _webkit2LocationForContentViewPoint:?];
  v13 = v11;
  v14 = v12;
  v15 = &selRef_hasOriginalFont;
  if (a3 == 1)
  {
    self->_highlightCancelled = 0;
    self->_highlightStartPoint2.x = v11;
    self->_highlightStartPoint2.y = v12;
    if (v8)
    {
      [(NSTimer *)self->_highlightTimer invalidate];
      [(BKHTMLContentViewController *)self _timeIntervalForHighlightGesture];
      v16 = [NSTimer scheduledTimerWithTimeInterval:self target:"_highlightTimerFired:" selector:0 userInfo:0 repeats:?];
      highlightTimer = self->_highlightTimer;
      self->_highlightTimer = v16;
    }

    v18 = [(WKWebView *)self->_webView2 be_textInputChild];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_21D50;
    v52[3] = &unk_1E2BD0;
    v52[4] = self;
    [v18 selectTextWithGranularity:1 atPoint:v52 completionHandler:{v13, v14}];

    v19 = self->_highlightDummyAnnotation;
    self->_highlightDummyAnnotation = 0;
  }

  if (v8 && (v14 - self->_highlightStartPoint2.y) * (v14 - self->_highlightStartPoint2.y) + (v13 - self->_highlightStartPoint2.x) * (v13 - self->_highlightStartPoint2.x) < 113.2096)
  {
    if (self->_highlightDummyAnnotation)
    {
      self->_highlightCancelled = 1;
      [(BKHTMLContentViewController *)self removeDummyHighlight];
    }

    return;
  }

  [(NSTimer *)self->_highlightTimer invalidate];
  v20 = self->_highlightTimer;
  self->_highlightTimer = 0;

  if (!self->_highlightCancelled && !self->_highlightDummyAnnotation)
  {
    v21 = objc_alloc_init(BKHTMLContentViewControllerDummyAnnotation);
    v22 = self->_highlightDummyAnnotation;
    self->_highlightDummyAnnotation = v21;

    v23 = [(WKWebView *)self->_webView2 be_textInputChild];
    v24 = [(BKHTMLContentViewController *)self view];
    [v23 convertPoint:v24 toView:{x, y}];
    v26 = v25;
    v28 = v27;

    v29 = [(BKHTMLContentViewController *)self view];
    v30 = [v29 hitTest:0 withEvent:{v26, v28}];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_opt_respondsToSelector())
      {
        v31 = [v30 owner];
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v32 = [(BKHTMLContentViewController *)self view];
      v31 = [(BKHTMLContentViewController *)self _annotationUuidIntersectingPoint:v32 inView:0 annotationLayerRect:v26, v28];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v30;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v33 = [(NSFetchedResultsController *)self->_highlightsFRC fetchedObjects];
      v34 = [v33 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v49;
LABEL_27:
        v37 = 0;
        while (1)
        {
          if (*v49 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v48 + 1) + 8 * v37);
          v39 = [v38 annotationUuid];
          v40 = [v39 isEqualToString:v31];

          if (v40)
          {
            break;
          }

          if (v35 == ++v37)
          {
            v35 = [v33 countByEnumeratingWithState:&v48 objects:v54 count:16];
            if (v35)
            {
              goto LABEL_27;
            }

            goto LABEL_33;
          }
        }

        v41 = v38;

        v15 = &selRef_hasOriginalFont;
        v30 = v46;
        if (!v41)
        {
          goto LABEL_36;
        }

        -[BKHTMLContentViewControllerDummyAnnotation setAnnotationStyle:](self->_highlightDummyAnnotation, "setAnnotationStyle:", [v41 annotationStyle]);
        v42 = [v41 annotationIsUnderline];
        goto LABEL_37;
      }

LABEL_33:

      v15 = &selRef_hasOriginalFont;
      v30 = v46;
    }

LABEL_36:
    v43 = +[NSUserDefaults standardUserDefaults];
    -[BKHTMLContentViewControllerDummyAnnotation setAnnotationStyle:](self->_highlightDummyAnnotation, "setAnnotationStyle:", [v43 integerForKey:BKDefaultHighlightColor[0]]);

    v41 = +[NSUserDefaults standardUserDefaults];
    v42 = [v41 BOOLForKey:BKDefaultUnderlineState];
LABEL_37:
    [(BKHTMLContentViewControllerDummyAnnotation *)self->_highlightDummyAnnotation setAnnotationIsUnderline:v42];
  }

  v44 = *(v15 + 880);
  if (self->_highlightDummyAnnotation || [*&self->super.super.IMViewController_opaque[v44] be_hasSelectablePositionAtPoint:{v13, v14}])
  {
    v45 = [*&self->super.super.IMViewController_opaque[v44] be_textInputChild];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_21D80;
    v47[3] = &unk_1E2C20;
    v47[4] = self;
    [v45 updateSelectionWithExtentPoint:1 withBoundary:v47 completionHandler:{v13, v14}];
  }
}

- (void)_handleStylusGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  v10 = [(WKWebView *)self->_webView2 be_textInputChild];
  [v4 locationInView:v10];
  v7 = v6;
  v9 = v8;

  [(BKHTMLContentViewController *)self __webView2_performHighlighterActionWithGestureState:v5 location:0 isTouch:v7, v9];
}

- (void)_willMoveTextRangeExtentAtPoint:(CGPoint)a3
{
  v4 = [(BKContentViewController *)self delegate:a3.x];
  if (objc_opt_respondsToSelector())
  {
    [v4 contentViewControllerIgnoreNextSwipe:self];
  }
}

- (BOOL)_hasDraggableSelectionAtPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(WKWebView *)self->_webView2 be_webSelectionRects];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * i) rect];
        v15.x = x;
        v15.y = y;
        if (CGRectContainsPoint(v16, v15))
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)shouldHighlightReceiveTouch:(id)a3
{
  v4 = a3;
  if ([(UIGestureRecognizer *)self->_indirectHighlightRecognizer state]== UIGestureRecognizerStatePossible && ![(UILongPressGestureRecognizer *)self->_indirectImmediateHighlightRecognizer state])
  {
    v7 = [(BKHTMLContentViewController *)self webView];
    [v4 locationInView:v7];
    v9 = v8;
    v11 = v10;
    v12 = [(BKContentViewController *)self configuration];
    v13 = [v12 layout];

    if ((v13 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [v7 bounds];
      v18 = v14;
      v19 = v15;
      v20 = v16;
      v21 = v17;
      if (v13 == 2)
      {
        if (v9 >= CGRectGetMinX(*&v14) + -20.0)
        {
          v29.origin.x = v18;
          v29.origin.y = v19;
          v29.size.width = v20;
          v29.size.height = v21;
          if (v9 <= CGRectGetMaxX(v29) + 20.0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (v11 >= CGRectGetMinY(*&v14) + -20.0)
      {
        v30.origin.x = v18;
        v30.origin.y = v19;
        v30.size.width = v20;
        v30.size.height = v21;
        if (v11 <= CGRectGetMaxY(v30) + 20.0)
        {
          goto LABEL_13;
        }
      }

      v5 = 0;
LABEL_14:

      goto LABEL_4;
    }

LABEL_13:
    v22 = [(BKHTMLContentViewController *)self webView2];
    v23 = [v22 be_textInputChild];

    v24 = [(BKHTMLContentViewController *)self webView2];
    [v24 convertPoint:v23 toView:{v9, v11}];
    v26 = v25;
    v28 = v27;

    v5 = [v23 hasSelectablePositionAtPoint:{v26, v28}];
    goto LABEL_14;
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_indirectImmediateHighlightRecognizer == v6 && (-[BKHTMLContentViewController view](self, "view"), v11 = objc_claimAutoreleasedReturnValue(), [v7 locationInView:v11], v13 = v12, v15 = v14, v11, -[BKHTMLContentViewController view](self, "view"), v16 = objc_claimAutoreleasedReturnValue(), -[BKHTMLContentViewController _annotationUuidIntersectingPoint:inView:annotationLayerRect:](self, "_annotationUuidIntersectingPoint:inView:annotationLayerRect:", v16, 0, v13, v15), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17))
  {
    v10 = 0;
  }

  else if (self->_indirectHighlightRecognizer == v6 || self->_indirectImmediateHighlightRecognizer == v6)
  {
    v10 = [(BKHTMLContentViewController *)self shouldHighlightReceiveTouch:v7];
  }

  else if (self->_doubleTapGesture == v6 && -[BKHTMLContentViewController _shouldDoubleTapReceiveTouch:](self, "_shouldDoubleTapReceiveTouch:", v7) || ([v7 view], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) != 0))
  {
    v10 = 1;
  }

  else
  {
    v18 = [v7 view];
    [v7 locationInView:v18];
    v20 = v19;
    v22 = v21;
    v23 = [v7 view];
    v24 = [(BKHTMLContentViewController *)self _annotationUuidIntersectingPoint:v23 inView:0 annotationLayerRect:v20, v22];

    v10 = v24 != 0;
  }

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_tapGesture == a3)
  {
    return [(BKHTMLContentViewController *)self preflightTap:?];
  }

  else
  {
    return 1;
  }
}

- (BOOL)gestureRecognizer:(id)a3 canBePreventedByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(BKHTMLContentViewController *)self supportsExpandedContent]|| self->_tapGesture == v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
  }

  else if (self->_doubleTapGesture == v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v7;
    v8 = [v9 numberOfTapsRequired] != &dword_0 + 2 || objc_msgSend(v9, "numberOfTouchesRequired") != &dword_0 + 1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)nextResponder
{
  if ([(BKHTMLContentViewController *)self isViewLoaded])
  {
    v5.receiver = self;
    v5.super_class = BKHTMLContentViewController;
    v3 = [(BKHTMLContentViewController *)&v5 nextResponder];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)menuWillClose:(id)a3
{
  [(BKHTMLContentViewController *)self setTempOwnerID:0];

  [(BKHTMLContentViewController *)self resignFirstResponder];
}

- (void)showHighlightingMenuForAnnotation:(id)a3
{
  v5 = a3;
  v4 = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 contentViewController:self showHighlightingMenuForAnnotation:v5];
  }
}

- (void)_showMenuForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!+[BKBookViewController useEnhancedEditMenu])
  {
    v9 = +[UIMenuController sharedMenuController];
    v8 = [(BKHTMLContentViewController *)self view];
    [v9 showMenuFromView:v8 rect:{x, y, width, height}];
  }
}

- (void)selectLocation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = BUDynamicCast();
  if (v8)
  {
    objc_initWeak(&location, self);
    webView2 = self->_webView2;
    v10 = [v8 cfiString];
    v11 = [NSString stringWithFormat:@"__ibooks_cfi_utilities.setSelectedRange('%@')", v10];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_22890;
    v12[3] = &unk_1E3280;
    objc_copyWeak(&v14, &location);
    v13 = v7;
    [(WKWebView *)webView2 evaluateJavaScript:v11 completionHandler:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (void)selectAnnotation:(id)a3
{
  v5 = [(BKHTMLContentViewController *)self selectedAnnotation];
  v4 = [v5 location];
  [(BKHTMLContentViewController *)self selectLocation:v4 completion:0];
}

- (AEHighlightRenderingController)highlightRenderingController
{
  highlightRenderingController = self->_highlightRenderingController;
  if (!highlightRenderingController)
  {
    v4 = objc_alloc_init(AEHighlightRenderingController);
    v5 = self->_highlightRenderingController;
    self->_highlightRenderingController = v4;

    v6 = [(BKHTMLContentViewController *)self theme];
    -[AEHighlightRenderingController setAnnotationBlendMode:](self->_highlightRenderingController, "setAnnotationBlendMode:", [v6 annotationBlendMode]);

    v7 = [(BKHTMLContentViewController *)self theme];
    -[AEHighlightRenderingController setPageTheme:](self->_highlightRenderingController, "setPageTheme:", [v7 annotationPageTheme]);

    v8 = [(BKHTMLContentViewController *)self theme];
    if ([v8 shouldInvertContent])
    {
      v9 = [(BKContentViewController *)self configuration];
      -[AEHighlightRenderingController setDrawSpecialGrayHighlights:](self->_highlightRenderingController, "setDrawSpecialGrayHighlights:", [v9 isScroll] ^ 1);
    }

    else
    {
      [(AEHighlightRenderingController *)self->_highlightRenderingController setDrawSpecialGrayHighlights:0];
    }

    [(AEHighlightRenderingController *)self->_highlightRenderingController setCanUseFilters:1];
    highlightRenderingController = self->_highlightRenderingController;
  }

  return highlightRenderingController;
}

- (BOOL)canCopyContent
{
  v5 = [(AEBookInfo *)self->super._book isProtected];
  if (v5 && (+[AEAssetEngine storeMgr](AEAssetEngine, "storeMgr"), v2 = objc_claimAutoreleasedReturnValue(), [v2 clientApplicationController], v3 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v3, "allowCitationForProtectedBooks")))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v6 = [(AEBookInfo *)self->super._book sampleContent];
    v7 = [v6 BOOLValue] ^ 1;

    if (!v5)
    {
      return v7;
    }
  }

  return v7;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(BKHTMLContentViewController *)self hasTextSelected];
  v8 = [(WKWebView *)self->_webView2 be_hasSelection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  v11 = [(BKHTMLContentViewController *)self selectedText];
  v12 = v11;
  v13 = isKindOfClass ^ 1;
  if (((isKindOfClass ^ 1) & 1) == 0 && (v10 & 1) == 0 && (v7 & v8 & 1) == 0)
  {
    v35 = v8;
    v36 = v10;
    v14 = v11;
    v15 = [(BKHTMLContentViewController *)self annotations];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_23094;
    v38[3] = &unk_1E32A8;
    v38[4] = self;
    v16 = [NSPredicate predicateWithBlock:v38];
    v17 = [v15 filteredArrayUsingPredicate:v16];
    v18 = [v17 firstObject];

    if (v18)
    {
      v12 = [v18 annotationSelectedText];

      v7 = 1;
    }

    else
    {
      v12 = v14;
    }

    v8 = v35;
    v10 = v36;
  }

  if ("selectAnnotation:" == a3)
  {
    if ((v13 | v7))
    {
      goto LABEL_35;
    }

LABEL_23:
    v19 = [(BKHTMLContentViewController *)self supportsNotesAndHighlights];
    goto LABEL_24;
  }

  if ("selectBookmarkedLink:" == a3)
  {
    v21 = [(BKHTMLContentViewController *)self loader];
    v22 = [v21 currentSelectionContainsAnchor];
LABEL_26:
    v20 = v22;
LABEL_27:

    goto LABEL_36;
  }

  if ("annotateSelection:" == a3)
  {
    if ([(BKHTMLContentViewController *)self supportsNotesAndHighlights])
    {
      v20 = v10 | v8;
      if ((v10 | v8 | v13))
      {
        goto LABEL_36;
      }

      v21 = [(BKHTMLContentViewController *)self selectedAnnotation];
      v23 = [v21 annotationNote];
      v20 = [v23 length] == 0;

      goto LABEL_27;
    }

LABEL_35:
    v20 = 0;
    goto LABEL_36;
  }

  if ("bookmarkSelection:" == a3)
  {
    if (((v10 | v8) & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_23;
  }

  if ("lookupSelection:" == a3)
  {
    if ((v10 | v7))
    {
      v20 = [v12 tokenCountWithEnumerationOptions:3 maxTokenCount:4 outLimitLength:0] < 4;
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if ("searchUsingSelection:" == a3 || "books_useSelectionForFind:" == a3)
  {
    v20 = v10 | v7;
    goto LABEL_36;
  }

  if ("translateSelection:" == a3)
  {
    v25 = [(BKContentViewController *)self book];
    v26 = [BKBookViewController areCitationsAllowedForBook:v25];

    v20 = v7 & v26;
    goto LABEL_36;
  }

  if ("shareSelection:" != a3 && "_share:" != a3 && "copyContent:" != a3 && "copy:" != a3)
  {
    if ("endOfBook:" != a3)
    {
      v37.receiver = self;
      v37.super_class = BKHTMLContentViewController;
      v19 = [(BKHTMLContentViewController *)&v37 canPerformAction:a3 withSender:v6];
LABEL_24:
      v20 = v19;
      goto LABEL_36;
    }

    v21 = +[NSUserDefaults standardUserDefaults];
    v22 = [v21 BOOLForKey:@"BKAllowEndOfBookDebugMenu"];
    goto LABEL_26;
  }

  v27 = v10 | v7;
  v28 = [(BKContentViewController *)self book];
  v29 = [BKBookViewController areCitationsAllowedForBook:v28];

  v30 = [(BKContentViewController *)self delegate];
  if (v30)
  {
    v31 = [(BKContentViewController *)self delegate];
    v32 = [v31 isAnnotationSharingSupportedForContentViewController:self];
  }

  else
  {
    v32 = 1;
  }

  v20 = v27 & v29 & v32;
  if ("shareSelection:" != a3 && "_share:" != a3)
  {
    v34 = "copyContent:" == a3 || "copy:" == a3;
    v20 = v34 & v29;
  }

LABEL_36:

  return v20 & 1;
}

- (void)endOfBook:(id)a3
{
  v4 = a3;
  v5 = [(BKContentViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_231DC;
    v7[3] = &unk_1E32D0;
    objc_copyWeak(&v8, &location);
    [(BKHTMLContentViewController *)self _contentForSelectedRangeWithCompletion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)lookupSelection:(id)a3
{
  v4 = a3;
  objc_initWeak(location, self);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_2375C;
  v39[3] = &unk_1E3320;
  objc_copyWeak(&v40, location);
  v5 = objc_retainBlock(v39);
  v6 = self->_tempOwnerID;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_238F4;
  v35[3] = &unk_1E3370;
  v35[4] = self;
  objc_copyWeak(&v38, location);
  v7 = v6;
  v36 = v7;
  v8 = v5;
  v37 = v8;
  v9 = objc_retainBlock(v35);
  if ([(BKHTMLContentViewController *)self hasTextSelected])
  {
    (v9[2])(v9);
  }

  else
  {
    v32 = v4;
    v10 = [(BKHTMLContentViewController *)self _payloadForKey:@"lookUpTerm" fromSender:v4];
    if ([v10 length])
    {
      v11 = [(BKHTMLContentViewController *)self annotations];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_23BC0;
      v33[3] = &unk_1E32A8;
      v34 = v7;
      v12 = [NSPredicate predicateWithBlock:v33];
      v13 = [v11 filteredArrayUsingPredicate:v12];
      v14 = [v13 firstObject];

      v15 = [(BKHTMLContentViewController *)self annotationRectUnionCache];
      v16 = [v14 annotationLocation];
      v17 = [v15 objectForKeyedSubscript:v16];
      [v17 CGRectValue];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v42.origin.x = v19;
      v42.origin.y = v21;
      v42.size.width = v23;
      v42.size.height = v25;
      if (CGRectIsEmpty(v42))
      {
        [(BKHTMLContentViewController *)self rectForPresentedMenuForTextInteraction];
        v19 = v26;
        v21 = v27;
        v23 = v28;
        v25 = v29;
      }

      v30 = [[UIView alloc] initWithFrame:{v19, v21, v23, v25}];
      v31 = [(WKWebView *)self->_webView2 be_contentView];
      [v31 addSubview:v30];

      (v8[2])(v8, v10, v30, 1);
    }

    else
    {
      (v9[2])(v9);
    }

    v4 = v32;
  }

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(location);
}

- (id)_rectsFromDictionary:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"top"];
        [v10 doubleValue];
        v12 = v11;

        v13 = [v9 objectForKeyedSubscript:@"left"];
        [v13 doubleValue];
        v15 = v14;

        v16 = [v9 objectForKeyedSubscript:@"width"];
        [v16 doubleValue];
        v18 = v17;

        v19 = [v9 objectForKeyedSubscript:@"height"];
        [v19 doubleValue];
        v21 = v20;

        v22 = [NSValue valueWithCGRect:v15, v12, v18, v21];
        [v4 addObject:v22];
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)translateSelection:(id)a3
{
  v4 = [(BKContentViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_23EE4;
    v6[3] = &unk_1E3398;
    v6[4] = self;
    [(BKHTMLContentViewController *)self _contentForSelectedRangeWithCompletion:v6];
  }
}

- (void)dummyAnnotationForSelectionWK2WithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_24134;
  v4[3] = &unk_1E33C0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(BKHTMLContentViewController *)v5 _contentForSelectedRangeWithCompletion:v4];
}

- (void)searchUsingSelection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_24700;
  v5[3] = &unk_1E33E8;
  objc_copyWeak(&v6, &location);
  [(BKHTMLContentViewController *)self _extractSelectedTextWithSender:v4 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_extractSelectedTextWithSender:(id)a3 completion:(id)a4
{
  v6 = a3;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_24904;
  v15 = &unk_1E3438;
  v16 = self;
  v7 = a4;
  v17 = v7;
  v8 = objc_retainBlock(&v12);
  if ([(BKHTMLContentViewController *)self hasTextSelected:v12])
  {
    (v8[2])(v8);
  }

  else
  {
    v9 = [(BKHTMLContentViewController *)self _payloadForKey:@"searchTerm" fromSender:v6];
    if ([v9 length])
    {
      v10 = objc_retainBlock(v7);
      v11 = v10;
      if (v10)
      {
        (*(v10 + 2))(v10, v9);
      }
    }

    else
    {
      (v8[2])(v8);
    }
  }
}

- (void)books_useSelectionForFind:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_24B28;
  v5[3] = &unk_1E33E8;
  objc_copyWeak(&v6, &location);
  [(BKHTMLContentViewController *)self _extractSelectedTextWithSender:v4 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)shareSelection:(id)a3
{
  v4 = a3;
  v5 = [(BKHTMLContentViewController *)self selectedAnnotation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 location];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_24E6C;
    v8[3] = &unk_1E3488;
    v8[4] = self;
    v9 = v6;
    [(BKHTMLContentViewController *)self visibleRectForLocation:v7 completion:v8];
  }

  else
  {
    objc_initWeak(&location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_24DF4;
    v10[3] = &unk_1E3460;
    objc_copyWeak(&v11, &location);
    [(BKHTMLContentViewController *)self dummyAnnotationForSelectionWK2WithCompletion:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)_shareAnnotation:(id)a3 annotationRects:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKContentViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    objc_initWeak(&location, self);
    v10 = [(BKContentViewController *)self delegate];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_25060;
    v11[3] = &unk_1E34B0;
    objc_copyWeak(&v12, &location);
    [v10 contentViewController:self shareAnnotation:v6 annotationRects:v7 completion:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_bookmarkSelectionAndAnnotate:(BOOL)a3 showColorEditor:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 clearSearchResultForContentViewController:self];
  }

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_25210;
  v11[3] = &unk_1E3528;
  objc_copyWeak(&v13, &location);
  v10 = v8;
  v12 = v10;
  v14 = a3;
  v15 = a4;
  [(BKHTMLContentViewController *)self _contentForSelectedRangeWithCompletion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_combineAnnotation:(id)a3 withAnnotation:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (v13 != v6)
  {
    v7 = [v13 annotationNote];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [v6 annotationNote];
      if ([v9 length])
      {
        v10 = [v13 annotationNote];
        v11 = [NSString stringWithFormat:@"%@\n\n%@", v9, v10];

        v9 = v10;
      }

      else
      {
        v11 = [v13 annotationNote];
      }

      [v6 setAnnotationNote:v11];
    }

    v12 = [(BKContentViewController *)self book];
    [v12 deleteAnnotation:v13];
  }
}

- (void)_showAnnotationWithState:(BOOL)a3 showColorEditor:(BOOL)a4 forAnnotation:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  [(BKHTMLContentViewController *)self clearSelection];
  v9 = [(BKContentViewController *)self delegate];
  if (v6)
  {
    if (objc_opt_respondsToSelector())
    {
      [v9 contentViewController:self showNoteForAnnotation:v8];
    }
  }

  else
  {
    if (v5)
    {
      [(BKHTMLContentViewController *)self showHighlightingMenuForAnnotation:v8];
    }

    v10 = [v8 managedObjectContext];
    v13 = 0;
    v11 = [v10 save:&v13];
    v12 = v13;

    if ((v11 & 1) == 0 && v12)
    {
      NSLog(@"Error Saving Annotation MOC: %@", v12);
    }

    if (objc_opt_respondsToSelector())
    {
      [v9 paginationUpdateRequiredForContentViewController:self];
    }
  }
}

- (void)selectBookmarkedLink:(id)a3
{
  v4 = [(BKHTMLContentViewController *)self loader];
  v5 = [v4 currentSelectionContainsAnchor];

  if (v5)
  {
    v6 = [(BKHTMLContentViewController *)self webView2];
    [v6 evaluateJavaScript:@"__ibooks_content_support.clickFirstAnchorInSelection()" completionHandler:0];
  }
}

- (void)_contentForSelectedRangeWithCompletion:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(BKHTMLContentViewController *)self tempOwnerID];
  v6 = BUDynamicCast();

  objc_initWeak(&location, self);
  v7 = self->_webView2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_26194;
  v11[3] = &unk_1E3578;
  objc_copyWeak(&v15, &location);
  v8 = v4;
  v14 = v8;
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [(WKWebView *)v10 evaluateJavaScript:@"__ibooks_cfi_utilities.getSelectedRange()" completionHandler:v11];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)copyContent
{
  if ([(BKHTMLContentViewController *)self canCopyContent])
  {
    objc_initWeak(&location, self);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_26704;
    v3[3] = &unk_1E35E0;
    objc_copyWeak(&v5, &location);
    v4 = &stru_1E35B8;
    [(BKHTMLContentViewController *)self dummyAnnotationForSelectionWK2WithCompletion:v3];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)pageOffsetRangeForLocation:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKHTMLContentViewController *)self loader];
  [v8 pageOffsetRangeForLocation:v7 completion:v6];
}

- (BOOL)isLocationFromThisDocument:(id)a3
{
  v4 = a3;
  v5 = [v4 ordinal];
  if (v5 == [(BKContentViewController *)self ordinal])
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v4 path];
      v8 = [(BKContentViewController *)self document];
      v9 = [v8 href];
      v6 = [v7 isEqualToString:v9];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)isLocationOnCurrentPage:(id)a3
{
  v4 = a3;
  if ([(BKContentViewController *)self pageOffset]< 0 || [(BKContentViewController *)self pageOffset]== 0x7FFFFFFFFFFFFFFFLL || ![(BKHTMLContentViewController *)self isLocationFromThisDocument:v4])
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    objc_opt_class();
    v5 = BUDynamicCast();
    if (v5)
    {
      v6 = [(BKHTMLContentViewController *)self loader];
      v7 = [v6 currentVisbleCFILocation];
      v8 = [v7 cfi];
      v9 = [v5 cfi];
      v10 = [v8 rangeIntersectsCFI:v9];
    }

    else
    {
      v10 = 0;
    }

    v12 = _AEAnnotationLocationLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(BKHTMLContentViewController *)self loader];
      v14 = [v13 currentVisbleCFILocation];
      v15 = [NSNumber numberWithBool:v10];
      v16 = 138412802;
      v17 = v14;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "isLocationOnCurrentPage: currentVisibleCFI:%@ forLocation:%@ isVisible:%@", &v16, 0x20u);
    }
  }

  return v10;
}

- (void)isLocationVisible:(id)a3 annotation:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([(BKContentViewController *)self pageOffset]< 0 || [(BKContentViewController *)self pageOffset]== 0x7FFFFFFFFFFFFFFFLL || ![(BKHTMLContentViewController *)self isLocationFromThisDocument:v7])
  {
    v9 = objc_retainBlock(v8);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_26BBC;
    v11[3] = &unk_1E3208;
    v12 = v7;
    v13 = v8;
    [(BKHTMLContentViewController *)self visibleRectForLocation:v12 completion:v11];
  }
}

- (BOOL)isAnnotationVisible:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 location];
    v7 = [(BKHTMLContentViewController *)self isLocationFromThisDocument:v6];

    if (v7)
    {
      v8 = [v5 annotationLocation];
      if (v8)
      {
        v9 = [(BKHTMLContentViewController *)self annotationRectUnionCache];
        v10 = [v9 objectForKeyedSubscript:v8];

        if (v10)
        {
          v11 = [(BKContentViewController *)self configuration];
          if ([v11 isScroll])
          {
            v12 = [v5 annotationType] == 1;
          }

          else
          {
            v12 = 0;
          }

          v14 = [(BKHTMLContentViewController *)self _isCachedAnnotationRectVisible:v10 considerEntirePage:v12];

          if (v14)
          {
            LOBYTE(v13) = 1;
LABEL_14:

            goto LABEL_15;
          }

          [(BKHTMLContentViewController *)self cachedVisibleRectForAnnotation:v5];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24.origin.x = CGRectZero.origin.x;
          v24.origin.y = CGRectZero.origin.y;
          v24.size.width = CGRectZero.size.width;
          v24.size.height = CGRectZero.size.height;
          v26.origin.x = v16;
          v26.origin.y = v18;
          v26.size.width = v20;
          v26.size.height = v22;
          if (!CGRectEqualToRect(v24, v26))
          {
            v25.origin.x = v16;
            v25.origin.y = v18;
            v25.size.width = v20;
            v25.size.height = v22;
            v13 = !CGRectIsNull(v25);
            goto LABEL_14;
          }
        }
      }

      else
      {
        v10 = 0;
      }

      LOBYTE(v13) = 0;
      goto LABEL_14;
    }
  }

  LOBYTE(v13) = 0;
LABEL_15:

  return v13;
}

- (CGRect)cachedRectForAnnotation:(id)a3
{
  v4 = a3;
  v5 = v4;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if (v4)
  {
    v10 = [v4 location];
    v11 = [(BKHTMLContentViewController *)self isLocationFromThisDocument:v10];

    if (v11)
    {
      v12 = [v5 annotationLocation];
      if (v12)
      {
        v13 = [(BKHTMLContentViewController *)self annotationRectUnionCache];
        v14 = [v13 objectForKeyedSubscript:v12];

        if (v14)
        {
          [v14 rectValue];
          x = v15;
          y = v16;
          width = v17;
          height = v18;
        }
      }
    }
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)cachedVisibleRectForAnnotation:(id)a3
{
  v4 = a3;
  v5 = v4;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if (v4)
  {
    v10 = [v4 location];
    v11 = [(BKHTMLContentViewController *)self isLocationFromThisDocument:v10];

    if (v11)
    {
      v12 = [v5 annotationLocation];
      v13 = [(BKHTMLContentViewController *)self annotationRectsCache];
      v14 = [v13 objectForKeyedSubscript:v12];

      if ([v14 count])
      {
        v15 = [(BKHTMLContentViewController *)self arrayOfVisibleRectsFromRects:v14];
        x = BKUnionRects(v15);
        y = v16;
        width = v17;
        height = v18;
      }
    }
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (int64_t)visiblePageCount
{
  if (![(BKHTMLContentViewController *)self _isDoubleWide])
  {
    return 1;
  }

  v3 = [(BKContentViewController *)self pageProgressionDirection];
  if (v3 == 1)
  {
    if ([(BKContentViewController *)self pageOffset]<= 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3)
    {
      return 1;
    }

    v4 = [(BKHTMLContentViewController *)self totalPages];
    if (v4 < [(BKContentViewController *)self pageOffset]+ 2)
    {
      return 1;
    }
  }

  return 2;
}

- (void)setOrdinal:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = BKHTMLContentViewController;
  if ([(BKContentViewController *)&v6 ordinal]!= a3)
  {
    v5.receiver = self;
    v5.super_class = BKHTMLContentViewController;
    [(BKContentViewController *)&v5 setOrdinal:a3];
    [(BKContentViewController *)self setTotalPages:-1];
    [(BKContentViewController *)self setContentLoaded:0];
    [(BKContentViewController *)self setContentLoadPending:0];
    [(BKHTMLContentViewController *)self _updateReadingStateVisibilityPossible:0];
  }
}

- (id)currentLocation
{
  v3 = [(BKHTMLContentViewController *)self contentView];
  if (v3 && (v4 = v3, v5 = [(BKContentViewController *)self isContentLoaded], v4, v5))
  {
    v6 = [(BKHTMLContentViewController *)self loader];
    v7 = [v6 currentFirstVisbleCFILocation];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)contentReady
{
  v5.receiver = self;
  v5.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v5 contentReady];
  v3 = [(BKContentViewController *)self searchLocation];

  if (v3)
  {
    v4 = [(BKContentViewController *)self searchLocation];
    [(BKHTMLContentViewController *)self highlightSearchLocation:v4];
  }

  [(BKHTMLContentViewController *)self _updateReadingState];
  if (self->_shouldAutoplay)
  {
    [(BKHTMLContentViewController *)self playFirstVisibleAutoplayMediaObject];
    self->_shouldAutoplay = 0;
  }

  [(WKWebView *)self->_webView2 setHidden:0];
}

- (void)suspend
{
  if ([(BKContentViewController *)self isContentLoaded])
  {
    v3 = [(BKHTMLContentViewController *)self loader];
    v4 = [v3 webView];
    [v4 _suspendAllMediaPlayback];

    v5 = [(BKHTMLContentViewController *)self loader];
    [v5 unregisterForVisibleCFIUpdates];
  }
}

- (void)resume
{
  if ([(BKContentViewController *)self isContentLoaded])
  {
    v3 = [(BKHTMLContentViewController *)self loader];
    v4 = [v3 webView];
    [v4 _resumeAllMediaPlayback];

    v5 = [(BKHTMLContentViewController *)self loader];
    [v5 registerForVisibleCFIUpdates];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v3 prepareForReuse];
  [(BKHTMLContentViewController *)self _updateReadingStateVisibilityPossible:0];
}

- (void)_updateReadingStateVisibilityPossible:(BOOL)a3 knownDOMRange:(id)a4
{
  v4 = a3;
  v6 = [(BKContentViewController *)self delegate:a3];
  v34 = [v6 assetViewControllerDelegateForContentViewController:self];

  if ([v34 readingStatisticsEnabled])
  {
    if (v4 && -[BKContentViewController isContentLoaded](self, "isContentLoaded") && -[BKHTMLContentViewController isViewLoaded](self, "isViewLoaded") && (-[BKHTMLContentViewController view](self, "view"), v7 = objc_claimAutoreleasedReturnValue(), [v7 window], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      v9 = [(BKHTMLContentViewController *)self view];
      v10 = [(BKHTMLContentViewController *)self view];
      [v10 bounds];
      [v9 convertRect:0 toView:?];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v19 = +[UIScreen mainScreen];
      [v19 bounds];
      v38.origin.x = v12;
      v38.origin.y = v14;
      v38.size.width = v16;
      v38.size.height = v18;
      v37 = CGRectIntersection(v36, v38);
      width = v37.size.width;
      height = v37.size.height;

      v22 = 0;
      if (width > 0.0 && height > 0.0)
      {
        v23 = [(BKHTMLContentViewController *)self loader];
        v24 = [v23 currentVisbleCFILocation];

        v25 = [v24 ensureRange];
        v22 = [v25 cfiString];
      }
    }

    else
    {
      v22 = 0;
    }

    v26 = [(BKHTMLContentViewController *)self visibleCFIString];
    v27 = [v26 isEqualToString:v22];

    if ((v27 & 1) == 0)
    {
      v28 = [(BKHTMLContentViewController *)self visibleCFIString];
      v29 = [v28 length];

      if (v29)
      {
        v30 = [(BKHTMLContentViewController *)self visibleCFIString];
        v31 = [BCCFISet cfiSetWithCFIString:v30];

        if (v31)
        {
          [v34 assetViewController:0 willHideContentWithCFIs:v31];
        }
      }

      [(BKHTMLContentViewController *)self setVisibleCFIString:v22];
      if ([v22 length])
      {
        v32 = [(BKHTMLContentViewController *)self visibleCFIString];
        v33 = [BCCFISet cfiSetWithCFIString:v32];

        if (v33)
        {
          [v34 assetViewController:0 didShowContentWithCFIs:v33];
        }
      }
    }
  }
}

- (void)clearSelection
{
  v3.receiver = self;
  v3.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v3 clearSelection];
  [(WKWebView *)self->_webView2 be_clearSelection];
}

- (BOOL)hasTextSelected
{
  v2 = [(BKHTMLContentViewController *)self selectedText];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)selectedTextForAccessibility
{
  v2 = [(BKHTMLContentViewController *)self loader];
  v3 = [v2 currentTextSelection];

  return v3;
}

- (void)stopPlayingMedia:(BOOL)a3
{
  v5 = [&off_1F1768 mutableCopy];
  v8 = v5;
  if (!a3)
  {
    [v5 addObject:@"audio"];
    v5 = v8;
  }

  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [NSString stringWithFormat:@"__ibooks_content_support._pauseMediaTypes(%@)", v6];
  [(WKWebView *)self->_webView2 evaluateJavaScript:v7 completionHandler:0];
}

- (void)_setupSelectionContextMenu
{
  v3 = AEBundle();
  v2 = [v3 localizedStringForKey:@"Last page in this chapter" value:&stru_1E7188 table:0];
}

- (BOOL)contentNeedsFilter
{
  v2 = [(BKHTMLContentViewController *)self theme];
  v3 = [v2 shouldInvertContent];

  return v3 ^ 1;
}

- (id)_errorForURL:(id)a3
{
  v17 = [objc_opt_class() description];
  v16 = [NSNumber numberWithBool:a3 != 0];
  v5 = [NSNumber numberWithBool:self->super._book != 0];
  v6 = [NSNumber numberWithInteger:self->super._ordinal];
  v7 = [(AEBookInfo *)self->super._book databaseKey];
  if (v7)
  {
    v8 = [(AEBookInfo *)self->super._book databaseKey];
  }

  else
  {
    v8 = @"<nil>";
  }

  v9 = [(AEBookInfo *)self->super._book bookTitle];
  if (v9)
  {
    v10 = [(AEBookInfo *)self->super._book bookTitle];
  }

  else
  {
    v10 = @"<nil>";
  }

  v11 = [(AEBookInfo *)self->super._book bookBundlePath];
  if (v11)
  {
    v12 = [(AEBookInfo *)self->super._book bookBundlePath];
  }

  else
  {
    v12 = @"<nil>";
  }

  v13 = [NSDictionary dictionaryWithObjectsAndKeys:v16, @"url!=nil", v5, @"_book!=nil", v6, @"_ordinal", v8, @"_book.databaseKey", v10, @"_book.bookTitle", v12, @"_book.bookBundlePath", 0];
  v14 = [NSError errorWithDomain:v17 code:1 userInfo:v13];

  if (v11)
  {
  }

  if (v9)
  {
  }

  if (v7)
  {
  }

  return v14;
}

- (id)URLForLoadingDocument
{
  book = self->super._book;
  v3 = [(BKContentViewController *)self document];
  v4 = [(AEBookInfo *)book urlForDocument:v3];

  return v4;
}

- (void)load
{
  v10.receiver = self;
  v10.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v10 load];
  if ([(BKContentViewController *)self isContentLoaded])
  {
    v3 = [(WKWebView *)self->_webView2 be_navigationHandler];
    v4 = [(WKWebView *)self->_webView2 URL];
    [(BKHTMLContentViewController *)self navigationHandler:v3 didFinishLoadOfURL:v4];
LABEL_7:

    goto LABEL_8;
  }

  v3 = [(BKHTMLContentViewController *)self URLForLoadingDocument];
  if (!v3)
  {
    [(BKContentViewController *)self setContentLoadPending:0];
    v4 = [(BKContentViewController *)self delegate];
    v9 = [(BKHTMLContentViewController *)self _errorForURL:0];
    [v4 contentViewFailedToLoad:self error:v9];

    goto LABEL_7;
  }

  [(BKHTMLContentViewController *)self _recheckRemoveAccessApproval];
  v5 = [(WKWebView *)self->_webView2 URL];
  v6 = [v5 be_isEquivalentToURL:v3 ignoringFragment:0];

  if ((v6 & 1) == 0)
  {
    webView2 = self->_webView2;
    v4 = [NSURLRequest requestWithURL:v3];
    v8 = [(WKWebView *)webView2 loadRequest:v4];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_recheckRemoveAccessApproval
{
  v3 = [(BKContentViewController *)self document];

  if (v3)
  {
    if (self->_webView2)
    {
      v4 = [(BKContentViewController *)self book];
      v5 = [v4 cacheItem];
      v6 = [v5 contentBlockingRule];

      objc_initWeak(&location, self->_webView2);
      v7 = +[BEContentBlockingRules sharedInstance];
      v8 = objc_loadWeakRetained(&location);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_27F58;
      v9[3] = &unk_1E3608;
      objc_copyWeak(&v10, &location);
      [v7 applyContentBlockingRule:v6 toWebView:v8 completion:v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_229400 == a6)
  {
    if ([a3 isEqualToString:{BEDocumentExternalLoadApprovalCacheDefaultsClearKey, a4, a5}])
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_28078;
      block[3] = &unk_1E2BD0;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BKHTMLContentViewController;
    [(BKHTMLContentViewController *)&v7 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 targetTransform];
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  self->_isRotating = !CGAffineTransformIsIdentity(&v11);
  v10.receiver = self;
  v10.super_class = BKHTMLContentViewController;
  [(BKHTMLContentViewController *)&v10 viewWillTransitionToSize:v8 withTransitionCoordinator:width, height];
  [(BKContentViewController *)self setTotalPages:-1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2818C;
  v9[3] = &unk_1E2A60;
  v9[4] = self;
  [v8 animateAlongsideTransition:0 completion:v9];
}

- (id)objectForMatchingAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(BKHTMLContentViewController *)self annotationRectUnionCache];
  v6 = [v4 objectForKeyedSubscript:@"annotationLocation"];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = +[NSMutableDictionary dictionary];
    v9 = [v4 objectForKeyedSubscript:@"annotationSelectedText"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1E7188;
    }

    [v8 setObject:v11 forKeyedSubscript:@"text"];

    v12 = [v4 objectForKeyedSubscript:@"annotationLocation"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_1E7188;
    }

    [v8 setObject:v14 forKeyedSubscript:@"uuid"];

    [v7 rectValue];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [NSNumber numberWithDouble:?];
    v35[0] = v23;
    v24 = [NSNumber numberWithDouble:v18];
    v35[1] = v24;
    v25 = [NSArray arrayWithObjects:v35 count:2];

    v37.origin.x = v16;
    v37.origin.y = v18;
    v37.size.width = v20;
    v37.size.height = v22;
    MaxX = CGRectGetMaxX(v37);
    v38.origin.x = v16;
    v38.origin.y = v18;
    v38.size.width = v20;
    v38.size.height = v22;
    MaxY = CGRectGetMaxY(v38);
    v28 = [NSNumber numberWithDouble:MaxX];
    v34[0] = v28;
    v29 = [NSNumber numberWithDouble:MaxY];
    v34[1] = v29;
    v30 = [NSArray arrayWithObjects:v34 count:2];

    if (v25)
    {
      v31 = v25;
    }

    else
    {
      v31 = &__NSArray0__struct;
    }

    [v8 setObject:v31 forKeyedSubscript:@"startPoint"];
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = &__NSArray0__struct;
    }

    [v8 setObject:v32 forKeyedSubscript:@"endPoint"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeAnnotationsToWebProcessPlugin:(id)a3 andHighlights:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKHTMLContentViewController *)self webView2];
  v9 = [(BKHTMLContentViewController *)self webView2];
  v10 = [v9 be_updateAXValueForMessage:v7];

  [v8 be_updateAXCurrentReadingStateWithMessage:@"BEWebProcessPluginBookmarkStateParameterKey" forValue:v10];
  v13 = [(BKHTMLContentViewController *)self webView2];
  v11 = [(BKHTMLContentViewController *)self webView2];
  v12 = [v11 be_updateAXValueForMessage:v6];

  [v13 be_updateAXCurrentReadingStateWithMessage:@"BEWebProcessPluginAnnotationParameterKey" forValue:v12];
}

- (void)writeControlVisibilityStateToWebProcessPlugin:(BOOL)a3
{
  v3 = a3;
  v8 = [(BKHTMLContentViewController *)self webView2];
  v5 = [(BKHTMLContentViewController *)self webView2];
  v6 = [NSNumber numberWithBool:v3];
  v7 = [v5 be_updateAXValueForMessage:v6];
  [v8 be_updateAXCurrentReadingStateWithMessage:@"BEWebProcessPluginHasVisibleControlsParameterKey" forValue:v7];
}

- (void)navigationHandler:(id)a3 handleUserRequestForFrameToLoadExternalURL:(id)a4 completion:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 contentViewController:self handleUserRequestForFrameToLoadExternalURL:v10 completion:v7];
  }

  else
  {
    v9 = objc_retainBlock(v7);

    if (v9)
    {
      v9[2](v9, 0);
    }

    v7 = v9;
  }
}

- (void)navigationHandler:(id)a3 handleExternalLoadRequest:(id)a4 likelyUserInitiated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v7 = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 contentViewController:self goToURL:v8 likelyUserInitiated:v5];
  }
}

- (BOOL)navigationHandler:(id)a3 handleInternalLoadRequest:(id)a4
{
  v5 = a4;
  book = self->super._book;
  v7 = [(BKContentViewController *)self document];
  v8 = [(AEBookInfo *)book urlForDocument:v7];
  v9 = [v5 be_isEquivalentToURL:v8 ignoringFragment:0];

  if (v9)
  {
    [(WKWebView *)self->_webView2 setHidden:1];
  }

  else
  {
    if ([(BKHTMLContentViewController *)self shouldShowExpandedContentForURL:v5])
    {
      v10 = [BKExpandedContentResource resourceForURL:v5];
      v11 = [(BKContentViewController *)self book];
      v12 = [v11 cacheItem];
      [v10 setCacheItem:v12];

      if (BEDoesURLPointToUSDZFile())
      {
        v13 = [v5 absoluteURL];
        v14 = [v13 standardizedURL];
        v15 = BEURLHandlerAssetInfoPathForBookURL();
        [v10 setSourceURL:v15];
      }

      v16 = [(BKContentViewController *)self delegate];
      [v16 contentViewController:self showExpandedContentForResource:v10 atLocation:0];
    }

    else
    {
      v10 = [(BKContentViewController *)self delegate];
      [v10 contentViewController:self goToURL:v5 likelyUserInitiated:0];
    }
  }

  return v9;
}

- (void)navigationHandler:(id)a3 didFinishLoadOfURL:(id)a4
{
  [(BKContentViewController *)self setTotalPages:[(BKWK2WebViewLoader *)self->_loader pageCount:a3]];
  v5 = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 contentViewControllerDidFinishLayout:self];
  }

  [(BKHTMLContentViewController *)self stopActivityIndicator:1];
}

- (void)navigationHandlerFirstSignificantPaintCompleted:(id)a3
{
  self->_firstSignificantPaintCompleted = 1;
  v4 = [(BKHTMLContentViewController *)self locationEnsuredFirstPaintWorkBlock];
  if (v4)
  {
    [(BKHTMLContentViewController *)self setLocationEnsuredFirstPaintWorkBlock:0];
    webView2 = self->_webView2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_28A4C;
    v6[3] = &unk_1E2E08;
    v7 = v4;
    [(WKWebView *)webView2 _doAfterNextStablePresentationUpdate:v6];
  }
}

- (void)navigationHandlerWebContentProcessAttemptingReload:(id)a3
{
  v4 = _AEBookPluginsLifeCycleLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Content for %@ Attempting reload", &v6, 0xCu);
  }

  v5 = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 contentViewControllerAttemptingReload:self];
  }
}

- (void)navigationHandlerWebContentLoadFailed:(id)a3 reason:(id)a4
{
  v5 = a4;
  [(BKHTMLContentViewController *)self setLoadFailureCount:[(BKHTMLContentViewController *)self loadFailureCount]+ 1];
  v6 = _AEBookPluginsLifeCycleLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [NSNumber numberWithUnsignedInteger:[(BKHTMLContentViewController *)self loadFailureCount]];
    v9 = 138412802;
    v10 = self;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Content for %@ crashed with reason %@ - %@", &v9, 0x20u);
  }

  v8 = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 contentViewController:self encounteredIssueWithContent:v5 failureCount:{-[BKHTMLContentViewController loadFailureCount](self, "loadFailureCount")}];
  }
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = [v5 body];
  v7 = BUDynamicCast();

  v8 = [v5 name];

  v9 = [(BKContentViewController *)self delegate];
  if ([v8 isEqualToString:@"showAside"])
  {
    v10 = objc_alloc_init(BKExpandedContentResource);
    objc_opt_class();
    v11 = [v7 objectForKeyedSubscript:@"documentURL"];
    v12 = BUDynamicCast();

    if (v12)
    {
      v13 = [NSURL URLWithString:v12];
      [(BKExpandedContentResource *)v10 setSourceURL:v13];
    }

    objc_opt_class();
    v14 = [v7 objectForKeyedSubscript:@"html"];
    v15 = BUDynamicCast();
    [(BKExpandedContentResource *)v10 setResource:v15];

    objc_opt_class();
    v16 = [v7 objectForKeyedSubscript:@"title"];
    v17 = BUDynamicCast();
    [(BKExpandedContentResource *)v10 setTitle:v17];

    objc_opt_class();
    v18 = [v7 objectForKeyedSubscript:@"contentType"];
    v19 = BUDynamicCast();
    [(BKExpandedContentResource *)v10 setContentType:v19];

    v20 = [(BKContentViewController *)self configuration];
    [v20 fontSize];
    [(BKExpandedContentResource *)v10 setZoomScale:?];

    v21 = [(BKContentViewController *)self book];
    v22 = [v21 cacheItem];
    [(BKExpandedContentResource *)v10 setCacheItem:v22];

    objc_opt_class();
    v23 = [v7 objectForKeyedSubscript:@"rect"];
    v24 = BUDynamicCast();

    if (v24)
    {
      v40 = v24;
      v25 = [NSArray arrayWithObjects:&v40 count:1];
      v26 = [(BKHTMLContentViewController *)self loader];
      v27 = +[BEJavascriptUtilities collapsedLineRectsFromArrayOfRectDictionaries:isVerticalDocument:](BEJavascriptUtilities, "collapsedLineRectsFromArrayOfRectDictionaries:isVerticalDocument:", v25, [v26 isVerticalDocument]);

      v28 = [(BKHTMLContentViewController *)self _highlightRects:v27 withHighlightType:[(BKContentViewController *)self selectionHighlightType] owner:0 forWK2:1 clearSelection:0];
      if (objc_opt_respondsToSelector())
      {
        v29 = [(NSMutableArray *)self->super._highlightViews firstObject];
        v30 = [(BKHTMLContentViewController *)self stylesheetSet];
        [v9 showFootnoteInContentViewController:self resource:v10 fromView:v29 stylesheetSet:v30];
      }
    }

    goto LABEL_9;
  }

  if ([v8 isEqualToString:@"toggleBookmark"])
  {
    if (objc_opt_respondsToSelector())
    {
      [v9 toggleBookmarkForContentViewController:self];
    }
  }

  else if ([v8 isEqualToString:@"toggleControlsVisibility"])
  {
    if (objc_opt_respondsToSelector())
    {
      [v9 toggleControlsForContentViewController:self];
    }
  }

  else
  {
    if ([v8 isEqualToString:@"showHighlightMenu"])
    {
      v31 = [(BKHTMLContentViewController *)self webView2];
      v10 = [v31 be_selectionRects];

      if ([(BKExpandedContentResource *)v10 count])
      {
        v32 = [(BKExpandedContentResource *)v10 firstObject];
        [v32 CGRectValue];
        x = v33;
        y = v35;
      }

      else
      {
        x = CGPointZero.x;
        y = CGPointZero.y;
      }

      [(BKHTMLContentViewController *)self showContextMenuAtLocation:x, y];
LABEL_9:

      goto LABEL_10;
    }

    if ([v8 isEqualToString:@"turnPage"])
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_10;
      }

      objc_opt_class();
      v37 = [v7 objectForKeyedSubscript:@"direction"];
      v10 = BUDynamicCast();

      [v9 contentViewController:self navigatePageDirection:v10];
      goto LABEL_9;
    }

    if ([v8 isEqualToString:@"checkOperation"])
    {
      [(BKHTMLContentViewController *)self _bkaxCheckCanPerformEditActions];
    }

    else if ([v8 isEqualToString:@"performOperation"])
    {
      objc_opt_class();
      v38 = [v7 objectForKeyedSubscript:@"selector"];
      v39 = BUDynamicCast();
      [(BKHTMLContentViewController *)self _bkaxPerformEditAction:v39];
    }
  }

LABEL_10:
}

- (BKReadAloudEventHandler)readAloudEventHandler
{
  readAloudEventHandler = self->_readAloudEventHandler;
  if (!readAloudEventHandler)
  {
    v4 = [(BKContentViewController *)self book];
    v5 = [v4 mediaActiveClass];
    v6 = [BKReadAloudEventHandler readAloudEventHandlerWithMediaClass:v5 delegate:self];
    v7 = self->_readAloudEventHandler;
    self->_readAloudEventHandler = v6;

    readAloudEventHandler = self->_readAloudEventHandler;
  }

  return readAloudEventHandler;
}

- (void)_bkaxPerformEditAction:(id)a3
{
  v4 = a3;
  v5 = AEBundle();
  v6 = [v5 localizedStringForKey:@"Select highlight" value:&stru_1E7188 table:0];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = @"selectAnnotation:";
    goto LABEL_21;
  }

  v9 = AEBundle();
  v10 = [v9 localizedStringForKey:@"Open link" value:&stru_1E7188 table:0];
  v11 = [v4 isEqualToString:v10];

  if (v11)
  {
    v8 = @"selectBookmarkedLink:";
    goto LABEL_21;
  }

  v12 = AEBundle();
  v13 = [v12 localizedStringForKey:@"Add note" value:&stru_1E7188 table:0];
  v14 = [v4 isEqualToString:v13];

  if (v14)
  {
    v8 = @"annotateSelection:";
    goto LABEL_21;
  }

  v15 = AEBundle();
  v16 = [v15 localizedStringForKey:@"Highlight" value:&stru_1E7188 table:0];
  v17 = [v4 isEqualToString:v16];

  if (v17)
  {
    v8 = @"bookmarkSelection:";
    goto LABEL_21;
  }

  v18 = AEBundle();
  v19 = [v18 localizedStringForKey:@"Lookup" value:&stru_1E7188 table:0];
  v20 = [v4 isEqualToString:v19];

  if (v20)
  {
    v8 = @"lookupSelection:";
    goto LABEL_21;
  }

  v21 = AEBundle();
  v22 = [v21 localizedStringForKey:@"Search" value:&stru_1E7188 table:0];
  v23 = [v4 isEqualToString:v22];

  if (v23)
  {
    v8 = @"searchUsingSelection:";
    goto LABEL_21;
  }

  v24 = AEBundle();
  v25 = [v24 localizedStringForKey:@"Translate" value:&stru_1E7188 table:0];
  v26 = [v4 isEqualToString:v25];

  if (v26)
  {
    v8 = @"translateSelection:";
    goto LABEL_21;
  }

  v27 = AEBundle();
  v28 = [v27 localizedStringForKey:@"Copy" value:&stru_1E7188 table:0];
  v29 = [v4 isEqualToString:v28];

  if (v29)
  {
    v8 = @"copy:";
    goto LABEL_21;
  }

  v30 = AEBundle();
  v31 = [v30 localizedStringForKey:@"Share selection" value:&stru_1E7188 table:0];
  v32 = [v4 isEqualToString:v31];

  if (v32)
  {
    v8 = @"shareSelection:";
    goto LABEL_21;
  }

  if ([v4 isEqualToString:@"Debug end of book experience"])
  {
    v8 = @"endOfBook:";
LABEL_21:
    if ([(BKHTMLContentViewController *)self _bkaxPerformSelector:v8])
    {
      goto LABEL_25;
    }
  }

  v33 = BCIMLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    sub_136C0C(v4, v33, v34, v35, v36, v37, v38, v39);
  }

LABEL_25:
}

- (BOOL)_bkaxPerformSelector:(id)a3
{
  v4 = NSSelectorFromString(a3);
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    [(BKHTMLContentViewController *)self performSelector:v4 withObject:0];
  }

  return v5 & 1;
}

- (void)_bkaxCheckCanPerformEditActions
{
  v25 = +[NSMutableArray array];
  if ([(BKHTMLContentViewController *)self canPerformAction:NSSelectorFromString(@"selectAnnotation:") withSender:0])
  {
    v3 = AEBundle();
    v4 = [v3 localizedStringForKey:@"Select highlight" value:&stru_1E7188 table:0];
    [v25 addObject:v4];
  }

  if ([(BKHTMLContentViewController *)self canPerformAction:NSSelectorFromString(@"selectBookmarkedLink:") withSender:0])
  {
    v5 = AEBundle();
    v6 = [v5 localizedStringForKey:@"Open link" value:&stru_1E7188 table:0];
    [v25 addObject:v6];
  }

  if ([(BKHTMLContentViewController *)self canPerformAction:NSSelectorFromString(@"annotateSelection:") withSender:0])
  {
    v7 = AEBundle();
    v8 = [v7 localizedStringForKey:@"Add note" value:&stru_1E7188 table:0];
    [v25 addObject:v8];
  }

  if ([(BKHTMLContentViewController *)self canPerformAction:NSSelectorFromString(@"bookmarkSelection:") withSender:0])
  {
    v9 = AEBundle();
    v10 = [v9 localizedStringForKey:@"Highlight" value:&stru_1E7188 table:0];
    [v25 addObject:v10];
  }

  if ([(BKHTMLContentViewController *)self canPerformAction:NSSelectorFromString(@"lookupSelection:") withSender:0])
  {
    v11 = AEBundle();
    v12 = [v11 localizedStringForKey:@"Lookup" value:&stru_1E7188 table:0];
    [v25 addObject:v12];
  }

  if ([(BKHTMLContentViewController *)self canPerformAction:NSSelectorFromString(@"searchUsingSelection:") withSender:0])
  {
    v13 = AEBundle();
    v14 = [v13 localizedStringForKey:@"Search" value:&stru_1E7188 table:0];
    [v25 addObject:v14];
  }

  if ([(BKHTMLContentViewController *)self canPerformAction:NSSelectorFromString(@"translateSelection:") withSender:0])
  {
    v15 = AEBundle();
    v16 = [v15 localizedStringForKey:@"Translate" value:&stru_1E7188 table:0];
    [v25 addObject:v16];
  }

  if ([(BKHTMLContentViewController *)self canPerformAction:NSSelectorFromString(@"copy:") withSender:0]|| [(BKHTMLContentViewController *)self canPerformAction:NSSelectorFromString(@"copyContent:") withSender:0])
  {
    v17 = AEBundle();
    v18 = [v17 localizedStringForKey:@"Copy" value:&stru_1E7188 table:0];
    [v25 addObject:v18];
  }

  if ([(BKHTMLContentViewController *)self canPerformAction:NSSelectorFromString(@"shareSelection:") withSender:0])
  {
    v19 = AEBundle();
    v20 = [v19 localizedStringForKey:@"Share selection" value:&stru_1E7188 table:0];
    [v25 addObject:v20];
  }

  if ([(BKHTMLContentViewController *)self canPerformAction:NSSelectorFromString(@"endOfBook:") withSender:0])
  {
    [v25 addObject:@"Debug end of book experience"];
  }

  v21 = [(BKHTMLContentViewController *)self webView2];
  v22 = [(BKHTMLContentViewController *)self webView2];
  v23 = [v25 copy];
  v24 = [v22 be_updateAXValueForMessage:v23];
  [v21 be_updateAXCurrentReadingStateWithMessage:@"BEWebProcessPluginOperationsParameterKey" forValue:v24];
}

- (void)readAloudEventHandler:(id)a3 performedAction:(id)a4 turnStyle:(id)a5
{
  v12 = a4;
  v7 = a5;
  if ([v12 isEqualToString:@"start"])
  {
    v8 = 0;
    v9 = 1;
  }

  else if ([v12 isEqualToString:@"stop"])
  {
    v8 = 0;
    v9 = 2;
  }

  else
  {
    v10 = [v12 isEqualToString:@"startstop"];
    v8 = v10 ^ 1;
    if (v10)
    {
      v9 = 3;
    }

    else
    {
      v9 = 0;
    }
  }

  if (([v7 isEqualToString:@"automatic"] & 1) == 0)
  {
    if ([v7 isEqualToString:@"manual"])
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    if (v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v11 = 1;
  if ((v8 & 1) == 0)
  {
LABEL_15:
    [(BKHTMLContentViewController *)self invokedSMILControlAction:v9 withSMILTurnStyle:v11];
  }

LABEL_16:
}

- (void)readAloudEventHandler:(id)a3 audioElementEnded:(id)a4
{
  v5 = [(BKContentViewController *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(BKContentViewController *)self delegate];
    [v7 resumeReadAloudForContentViewController:self];
  }
}

- (void)installReadAloudClickHandlersOnMediaOverlayElements:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector("elementId");
  v9 = [v4 valueForKey:v5];

  v6 = [(BKHTMLContentViewController *)self readAloudEventHandler];
  v7 = [(BKContentViewController *)self document];
  v8 = [v7 href];
  [v6 installTapHandlersOnElementIDs:v9 withHref:v8];
}

- (void)removeReadAloudClickHandlersOnMediaOverlayElements:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector("elementId");
  v7 = [v4 valueForKey:v5];

  v6 = [(BKHTMLContentViewController *)self readAloudEventHandler];
  [v6 removeTapHandlersOnElementIDs:v7];
}

- (void)markupDocumentForMediaOverlay
{
  v2 = [(BKHTMLContentViewController *)self readAloudEventHandler];
  [v2 addMarkupForReadAloudToDocument];
}

- (void)cleanDocumentForMediaOverlay
{
  v2 = [(BKHTMLContentViewController *)self readAloudEventHandler];
  [v2 removeMarkupForReadAloudToDocument];
}

- (void)handler:(id)a3 presentAlertController:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(BKContentViewController *)self delegate];
  [v9 contentViewController:self presentAlertController:v8 completion:v7];
}

- (void)handler:(id)a3 webView:(id)a4 didNotHandleTapAsClickAtPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v14 = a4;
  v8 = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(BKHTMLContentViewController *)self view];
    [v9 convertPoint:v14 fromView:{x, y}];
    v11 = v10;
    v13 = v12;

    [v8 contentView:self unhandledClickAtPoint:{v11, v13}];
  }
}

- (id)handler:(id)a3 citationForText:(id)a4 webView:(id)a5
{
  v6 = a4;
  v7 = objc_alloc_init(BKHTMLContentViewControllerDummyAnnotation);
  [(BKHTMLContentViewControllerDummyAnnotation *)v7 setAnnotationRepresentativeText:v6];

  v8 = [(BKHTMLContentViewController *)self _excerptCitedStringForAnnotation:v7];

  return v8;
}

- (id)adjustedItemProvidersWithCitation:(id)a3 withExcerptString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v29 = objc_alloc_init(NSMutableArray);
  v7 = objc_alloc_init(NSItemProvider);
  if ([v6 length])
  {
    v8 = [UTTypeUTF8PlainText identifier];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_2A47C;
    v43[3] = &unk_1E3630;
    v44 = v6;
    [v7 registerDataRepresentationForTypeIdentifier:v8 visibility:0 loadHandler:v43];
  }

  v28 = v6;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    v12 = UTTypeImage;
    v30 = *v40;
    do
    {
      v13 = 0;
      v31 = v10;
      do
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * v13);
        v15 = [(UTType *)v12 identifier];
        v16 = [v14 hasItemConformingToTypeIdentifier:v15];

        if ((v16 & 1) == 0)
        {
          v33 = v13;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v17 = [v14 registeredTypeIdentifiers];
          v18 = [v17 countByEnumeratingWithState:&v35 objects:v45 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v36;
            do
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v36 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v35 + 1) + 8 * i);
                v23 = [UTTypeURL identifier];
                LODWORD(v22) = [v22 isEqualToString:v23];

                if (v22)
                {
                  v24 = [UTTypeURL identifier];
                  v34[0] = _NSConcreteStackBlock;
                  v34[1] = 3221225472;
                  v34[2] = sub_2A4E4;
                  v34[3] = &unk_1E3630;
                  v34[4] = v14;
                  [v7 registerDataRepresentationForTypeIdentifier:v24 visibility:0 loadHandler:v34];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v35 objects:v45 count:16];
            }

            while (v19);
          }

          v12 = UTTypeImage;
          v11 = v30;
          v10 = v31;
          v13 = v33;
        }

        v13 = v13 + 1;
      }

      while (v13 != v10);
      v10 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v10);
  }

  v25 = [v7 registeredTypeIdentifiers];
  v26 = [v25 count];

  if (v26)
  {
    [v29 addObject:v7];
  }

  return v29;
}

- (BOOL)shouldShowExpandedContentForURL:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 bc_pathWithoutPrecedingSlash];
  v5 = [v4 stringByRemovingURLFragment];
  v6 = [(BKContentViewController *)self book];
  v7 = [v6 documentAtPath:v5];

  v8 = [v7 documentOrdinal];
  if ([v8 integerValue] == -1)
  {
    v10 = 1;
  }

  else
  {
    v9 = [v7 nonlinearElement];
    v10 = [v9 BOOLValue];
  }

  return v10;
}

- (void)_smilElementIDSelected:(id)a3 inHREF:(id)a4
{
  v6 = a3;
  v27 = a4;
  v25 = self;
  v7 = [(BKContentViewController *)self document];
  v8 = [v7 mediaOverlayElements];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = *v29;
LABEL_3:
    v12 = 0;
    v26 = v10;
    while (1)
    {
      if (*v29 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v28 + 1) + 8 * v12);
      v14 = [v13 elementId];
      if ([v14 isEqualToString:v6])
      {
        [v13 documentHref];
        v15 = v11;
        v16 = v6;
        v18 = v17 = v9;
        v19 = [v18 lastPathComponent];
        v20 = [v27 lastPathComponent];
        v21 = [v19 isEqualToString:v20];

        v9 = v17;
        v6 = v16;
        v11 = v15;
        v10 = v26;

        if (v21)
        {
          v10 = v13;

          if (v10)
          {
            v23 = [(BKContentViewController *)v25 delegate];
            v24 = objc_opt_respondsToSelector();

            if (v24)
            {
              v22 = [(BKContentViewController *)v25 delegate];
              [v22 contentView:v25 didSelectMediaOverlayElement:v10];
              goto LABEL_16;
            }
          }

          goto LABEL_17;
        }
      }

      else
      {
      }

      if (v10 == ++v12)
      {
        v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v22 = v9;
LABEL_16:

LABEL_17:
}

- (void)invokedSMILControlAction:(int)a3 withSMILTurnStyle:(int)a4
{
  v14 = [(BKContentViewController *)self delegate];
  v7 = [(BKContentViewController *)self book];
  v8 = [v7 hasMediaOverlayElements];

  if (v8)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_8;
    }

    if (a4 == 1)
    {
      v9 = 1;
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_8;
      }

      v9 = 0;
    }

    [v14 contentViewController:self setTurnState:v9];
LABEL_8:
    v10 = objc_opt_respondsToSelector();
    v11 = v14;
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

    switch(a3)
    {
      case 1:
        v12 = 1;
        break;
      case 3:
        if (objc_opt_respondsToSelector())
        {
          v13 = [v14 contentViewControllerReadAloudState];
          v11 = v14;
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v13 = 0;
          v11 = v14;
        }

        v12 = v13 == 0;
        break;
      case 2:
        v12 = 0;
        break;
      default:
        goto LABEL_20;
    }

    [v11 contentViewController:self setReadAloudState:v12];
  }

LABEL_20:

  _objc_release_x2();
}

- (void)webViewDidEnterFullscreen:(id)a3
{
  v4 = [(BKContentViewController *)self delegate];
  v5 = BUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v5 contentViewControllerDidEnterFullscreen:self];
  }
}

- (void)webViewDidExitFullscreen:(id)a3
{
  v4 = [(BKContentViewController *)self delegate];
  v5 = BUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v5 contentViewControllerDidExitFullscreen:self];
  }
}

- (void)webViewFullscreenMayReturnToInline:(id)a3
{
  v4 = [(BKContentViewController *)self delegate];
  v5 = BUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v5 contentViewControllerWillExitFullscreen:self];
  }
}

- (UIScrollView)contentScrollView
{
  v2 = [(BKHTMLContentViewController *)self webView];
  v3 = [v2 scrollView];

  return v3;
}

- (void)setLoader:(id)a3
{
  v5 = a3;
  if (self->_loader != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_loader, a3);
    [(BKWK2WebViewLoader *)self->_loader setDelegate:self];
    v5 = v6;
  }
}

- (void)webViewLoader:(id)a3 didUpdateCurrentVisibleCFILocation:(id)a4
{
  v6 = a4;
  [(BKHTMLContentViewController *)self _updateReadingStateVisibilityPossible:1 knownDOMRange:0];
  v5 = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 contentViewController:self didUpdateCurrentVisibleCFILocation:v6];
  }
}

- (void)highlightMediaOverlayElement:(id)a3
{
  v6 = a3;
  if ([(BKContentViewController *)self isContentLoaded])
  {
    v4 = [(BKHTMLContentViewController *)self readAloudEventHandler];
    v5 = [v6 elementId];
    [v4 addhighlightForElementID:v5];
  }
}

- (void)clearMediaOverlayElement:(id)a3
{
  v6 = a3;
  if ([(BKContentViewController *)self isContentLoaded])
  {
    v4 = [(BKHTMLContentViewController *)self readAloudEventHandler];
    v5 = [v6 elementId];
    [v4 removeHighlightForElementID:v5];
  }
}

- (id)pathForSoundtrack
{
  if ([(BKContentViewController *)self isContentLoaded])
  {
    v3 = [(BKHTMLContentViewController *)self mediaSource];
    if ([v3 length])
    {
      v4 = [(BKContentViewController *)self document];
      v5 = [v4 href];
      v6 = [v5 pathComponents];

      v7 = [v6 subarrayWithRange:{0, objc_msgSend(v6, "count") - 1}];
      v8 = [NSString pathWithComponents:v7];

      v9 = [v8 stringByAppendingPathComponent:v3];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_refreshContentBasedOverlay
{
  [(BKHTMLContentViewController *)self setContentBasedOverlayRefreshScheduled:0];

  [(BKHTMLContentViewController *)self _refreshAnnotationsAndSearchResult];
}

- (void)_refreshContentBasedOverlayAfterDelay
{
  v3 = [(BKHTMLContentViewController *)self performSelectorProxy];
  [NSObject cancelPreviousPerformRequestsWithTarget:v3 selector:"_refreshContentBasedOverlay" object:0];

  v4 = [(BKHTMLContentViewController *)self performSelectorProxy];
  [v4 performSelector:"_refreshContentBasedOverlay" withObject:0 afterDelay:0.1];
}

- (id)predicateForOverlayCache
{
  v2 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[BKHTMLContentViewController predicateForOverlayCache]"];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (void)_setupAnnotationRectCachesFromClientRects:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  [(BKHTMLContentViewController *)self setAnnotationRectUnionCache:v5];

  v6 = [v4 mutableCopy];
  if (v6)
  {
    [(BKHTMLContentViewController *)self setAnnotationRectsCache:v6];
  }

  else
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    [(BKHTMLContentViewController *)self setAnnotationRectsCache:v7];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v4 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v4 objectForKeyedSubscript:v13];
        if ([v14 count])
        {
          v23[0] = BKUnionRects(v14);
          v23[1] = v15;
          v23[2] = v16;
          v23[3] = v17;
          v18 = [NSValue valueWithBytes:v23 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          v19 = [(BKHTMLContentViewController *)self annotationRectUnionCache];
          [v19 setObject:v18 forKeyedSubscript:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  webView2 = self->_webView2;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_2B29C;
  v22[3] = &unk_1E2BD0;
  v22[4] = self;
  [(WKWebView *)webView2 _doAfterNextPresentationUpdate:v22];
  v21 = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v21 contentViewControllerAnnotationCacheDidChange:self];
  }
}

- (void)_fetchMissingCfiLocationRects:(id)a3 forAnnotations:(id)a4
{
  v5 = a3;
  v6 = a4;
  v20 = v5;
  v7 = [v5 allKeys];
  v21 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v9)
  {
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v25 + 1) + 8 * i) location];
        objc_opt_class();
        v13 = BUDynamicCast();
        v14 = v13;
        if (v13 && ([v13 cfiString], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v7, "containsObject:", v15), v15, (v16 & 1) == 0))
        {
          [v21 addObject:v14];
        }

        else
        {
          v17 = _AEAnnotationLocationLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v30 = v14;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "#annotationcache skipping calculation of rect for cfiLocation:%{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v9);
  }

  if ([v21 count])
  {
    objc_initWeak(buf, self);
    v18 = [(BKHTMLContentViewController *)self loader];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_2B59C;
    v22[3] = &unk_1E3658;
    objc_copyWeak(&v24, buf);
    v23 = v20;
    [v18 clientRectsForLocations:v21 completion:v22];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else
  {
    [(BKHTMLContentViewController *)self _setupAnnotationRectCachesFromClientRects:v20];
  }
}

- (void)prepareContentBasedOverlayCache
{
  [(BKHTMLContentViewController *)self startFetchingAnnotations];
  [(BKHTMLContentViewController *)self setContentBasedOverlayRefreshScheduled:1];
  v3 = [(NSFetchedResultsController *)self->_highlightsFRC fetchedObjects];
  v4 = [(BKHTMLContentViewController *)self predicateForOverlayCache];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  v6 = _AEAnnotationLocationLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 valueForKey:@"annotationUuid"];
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Preparing overlay cache for annotations:%{public}@", &v14, 0xCu);
  }

  v8 = objc_alloc_init(NSDictionary);
  v9 = [(BKContentViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(BKContentViewController *)self delegate];
    v12 = [v11 contentViewController:self locationRectsForAnnotations:v5];

    v8 = v12;
  }

  v13 = [v8 count];
  if (v13 == [v5 count])
  {
    [(BKHTMLContentViewController *)self _setupAnnotationRectCachesFromClientRects:v8];
  }

  else
  {
    [(BKHTMLContentViewController *)self _fetchMissingCfiLocationRects:v8 forAnnotations:v5];
  }
}

- (void)invalidateContentBasedOverlayCache
{
  v3 = _AEAnnotationLocationLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Invalidating overlay cache.", v4, 2u);
  }

  [(BKHTMLContentViewController *)self setAnnotationRectUnionCache:0];
  [(BKHTMLContentViewController *)self setAnnotationRectsCache:0];
}

- (void)invalidateContentBasedOverlay
{
  v3 = _AEAnnotationLocationLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Invalidating Overlay Views. Refreshing.", v9, 2u);
  }

  [(BKHTMLContentViewController *)self setHighlightViews:0];
  v4 = [(BKHTMLContentViewController *)self theme];
  if ([v4 shouldInvertContent])
  {
    v5 = [(BKContentViewController *)self configuration];
    -[AEHighlightRenderingController setDrawSpecialGrayHighlights:](self->_highlightRenderingController, "setDrawSpecialGrayHighlights:", [v5 isScroll] ^ 1);
  }

  else
  {
    [(AEHighlightRenderingController *)self->_highlightRenderingController setDrawSpecialGrayHighlights:0];
  }

  v6 = [(BKHTMLContentViewController *)self annotationRectUnionCache];
  if (v6)
  {
    v7 = v6;
    v8 = [(BKHTMLContentViewController *)self contentBasedOverlayRefreshScheduled];

    if ((v8 & 1) == 0)
    {
      [(BKHTMLContentViewController *)self _refreshAnnotationsAndSearchResult];
    }
  }
}

- (void)startFetchingAnnotations
{
  if (!self->_highlightsFRC)
  {
    v3 = [(BKContentViewController *)self book];
    if (!v3)
    {
      sub_136C78();
    }

    v4 = [v3 annotationProvider];
    v5 = [v4 uiManagedObjectContext];

    if (!v5)
    {
      sub_136CB0();
    }

    v6 = objc_alloc_init(NSFetchRequest);
    v7 = [v3 assetID];
    v8 = [(BKContentViewController *)self document];
    v9 = [v8 documentOrdinal];
    v10 = +[AEAnnotation predicateForAnnotationsWithAssetID:ordinal:](AEAnnotation, "predicateForAnnotationsWithAssetID:ordinal:", v7, [v9 intValue]);
    [v6 setPredicate:v10];

    v11 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:v5];
    [v6 setEntity:v11];

    v12 = [[NSSortDescriptor alloc] initWithKey:@"annotationCreationDate" ascending:1];
    v13 = [[NSArray alloc] initWithObjects:{v12, 0}];
    [v6 setSortDescriptors:v13];

    v14 = [[IMUbiquitousFetchedResultsController alloc] initWithFetchRequest:v6 managedObjectContext:v5 sectionNameKeyPath:0 cacheName:0];
    highlightsFRC = self->_highlightsFRC;
    self->_highlightsFRC = v14;

    [(NSFetchedResultsController *)self->_highlightsFRC setDelegate:self];
    v16 = self->_highlightsFRC;
    v25 = 0;
    LOBYTE(v13) = [(NSFetchedResultsController *)v16 performFetch:&v25];
    v17 = v25;
    if ((v13 & 1) == 0)
    {
      v18 = BCIMLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_136CE8(v17, v18, v19, v20, v21, v22, v23, v24);
      }
    }
  }
}

- (void)controllerWillChangeContent:(id)a3
{
  v4 = objc_alloc_init(NSMutableDictionary);
  changedAnnotations = self->_changedAnnotations;
  self->_changedAnnotations = v4;

  _objc_release_x1(v4, changedAnnotations);
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (self->_highlightsFRC == v12)
  {
    v16 = v13;
    v17 = v16;
    if (a6 - 3 < 2)
    {
      changedAnnotations = self->_changedAnnotations;
      v22 = [v16 annotationUuid];
      [(NSMutableDictionary *)changedAnnotations setObject:v17 forKey:v22];
    }

    else if (a6 == 2)
    {
      v23 = [v16 annotationUuid];

      if (v23)
      {
        [(BKHTMLContentViewController *)self removeHighlightForAnnotation:v17];
      }
    }

    else if (a6 == 1)
    {
      if ([v16 annotationType] == 2)
      {
        v18 = _AEAnnotationLocationLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v17 annotationUuid];
          *buf = 138412290;
          v34 = v19;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "controller didInsert range annotation: %@.  Highlighting...", buf, 0xCu);
        }

        [(BKHTMLContentViewController *)self removeDummyHighlight];
        v20 = [NSArray arrayWithObject:v17];
        [(BKHTMLContentViewController *)self highlightAnnotations:v20];
      }

      else if ([v17 annotationType] == 1)
      {
        v24 = _AEAnnotationLocationLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v17 annotationUuid];
          *buf = 138412290;
          v34 = v25;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "controller didInsert point annotation: %@", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        objc_opt_class();
        v26 = [v17 location];
        v27 = BUDynamicCast();

        if (v27 && [(BKHTMLContentViewController *)self isLocationFromThisDocument:v27])
        {
          v28 = [(BKHTMLContentViewController *)self loader];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_2BF9C;
          v29[3] = &unk_1E3680;
          objc_copyWeak(&v32, buf);
          v30 = v17;
          v31 = self;
          [v28 clientRectsForLocation:v27 completion:v29];

          objc_destroyWeak(&v32);
        }

        objc_destroyWeak(buf);
      }
    }
  }
}

- (void)controllerDidChangeContent:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->_changedAnnotations allValues:a3];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(BKHTMLContentViewController *)self _annotationChanged:*(*(&v11 + 1) + 8 * v8) forceRender:1];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  changedAnnotations = self->_changedAnnotations;
  self->_changedAnnotations = 0;

  v10 = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 contentViewControllerAnnotationsDidChange:self];
  }
}

- (id)_excerptCitedStringForAnnotation:(id)a3
{
  v4 = a3;
  v5 = [AEAssetActivityItemProvider alloc];
  v6 = [(BKContentViewController *)self book];
  v7 = [BKBookViewController propertySourceFromBook:v6];
  v8 = [v5 initWithAnnotation:v4 propertySource:v7];

  [v8 setShareType:0];
  [v8 setCitationsAllowed:{-[BKHTMLContentViewController canCopyContent](self, "canCopyContent")}];
  v9 = [v8 pasteboardString];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_1E7188;
  }

  return v10;
}

- (id)bookTitle
{
  v2 = [(BKContentViewController *)self book];
  v3 = [v2 bookTitle];

  return v3;
}

- (id)author
{
  v2 = [(BKContentViewController *)self book];
  v3 = [v2 bookAuthor];

  return v3;
}

- (id)storeURL
{
  v2 = [(BKContentViewController *)self book];
  v3 = [v2 storeId];

  if ([v3 length])
  {
    v4 = +[AEUserPublishing sharedInstance];
    v5 = [v4 storeShortURLForStoreId:v3 dataSource:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)pageNumberStringForAnnotation:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 physicalPageNumber];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(BKHTMLContentViewController *)self annotationDataProvider];
      if (v6 && (objc_opt_respondsToSelector() & 1) != 0 && (v7 = [v6 pageNumberForOrdinal:{-[BKContentViewController ordinal](self, "ordinal")}], v7 != 0x7FFFFFFFFFFFFFFFLL))
      {
        v9 = [NSNumber numberWithInteger:&v7[[(BKContentViewController *)self pageOffset]]];
        v5 = [NSString stringWithFormat:@"%@", v9];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (CGPoint)_originPointForPoint:(CGPoint)a3
{
  [(WKWebView *)self->_webView2 _convertPointFromContentsToView:a3.x, a3.y];
  v5 = v4;
  v7 = v6;
  webView2 = self->_webView2;
  v9 = [(BKHTMLContentViewController *)self view];
  [(WKWebView *)webView2 convertPoint:v9 toView:v5, v7];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)registerScriptMessageHandlersWithUserContentController:(id)a3
{
  v4 = a3;
  [v4 be_addScriptMessageHandler:self name:@"showAside"];
  [v4 be_addScriptMessageHandler:self name:@"toggleBookmark"];
  [v4 be_addScriptMessageHandler:self name:@"toggleControlsVisibility"];
  [v4 be_addScriptMessageHandler:self name:@"showHighlightMenu"];
  [v4 be_addScriptMessageHandler:self name:@"turnPage"];
  [v4 be_addScriptMessageHandler:self name:@"checkOperation"];
  [v4 be_addScriptMessageHandler:self name:@"performOperation"];
  v5 = [(BKHTMLContentViewController *)self readAloudEventHandler];
  [v4 be_addScriptMessageHandler:v5 name:@"readAloudHandler"];
}

- (void)afterEnsuringFirstPaintPerform:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_firstSignificantPaintCompleted)
  {
    webView2 = self->_webView2;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_2C910;
    v11[3] = &unk_1E2E08;
    v12 = v4;
    [(WKWebView *)webView2 _doAfterNextStablePresentationUpdate:v11];
  }

  else
  {
    if (self->_locationEnsuredFirstPaintWorkBlock)
    {
      v7 = _AESwipeLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Firing after first paint block early (cancelled) because another is being scheduled", v10, 2u);
      }

      v8 = objc_retainBlock(self->_locationEnsuredFirstPaintWorkBlock);
      v9 = v8;
      if (v8)
      {
        (*(v8 + 2))(v8, 1);
      }
    }

    [(BKHTMLContentViewController *)self setLocationEnsuredFirstPaintWorkBlock:v5];
  }
}

- (BKAnnotationDataProvider)annotationDataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationDataProvider);

  return WeakRetained;
}

- (CGPoint)overrideBuildMenuLocation
{
  x = self->_overrideBuildMenuLocation.x;
  y = self->_overrideBuildMenuLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)rectForPresentedMenuForTextInteraction
{
  x = self->_rectForPresentedMenuForTextInteraction.origin.x;
  y = self->_rectForPresentedMenuForTextInteraction.origin.y;
  width = self->_rectForPresentedMenuForTextInteraction.size.width;
  height = self->_rectForPresentedMenuForTextInteraction.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)_accessibilityQuickSpeakContentIsSpeakable
{
  v2 = [(BKHTMLContentViewController *)self _accessibilityQuickSpeakContent];
  v3 = [v2 length] != 0;

  return v3;
}

@end