@interface BKHTMLContentViewController
- (AEHighlightRenderingController)highlightRenderingController;
- (BKAnnotationDataProvider)annotationDataProvider;
- (BKHTMLContentViewController)init;
- (BKReadAloudEventHandler)readAloudEventHandler;
- (BOOL)_accessibilityQuickSpeakContentIsSpeakable;
- (BOOL)_bkaxPerformSelector:(id)selector;
- (BOOL)_hasDraggableSelectionAtPosition:(CGPoint)position;
- (BOOL)_isCachedAnnotationRectVisible:(id)visible considerEntirePage:(BOOL)page;
- (BOOL)_shouldBeginCustomHighlighterActionForTouchType:(int64_t)type modifierFlags:(int64_t)initialTextInteractionModifiers;
- (BOOL)canCopyContent;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)contentNeedsFilter;
- (BOOL)currentlyHighlighting;
- (BOOL)gestureRecognizer:(id)recognizer canBePreventedByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasTextSelected;
- (BOOL)interactionShouldBegin:(id)begin atPoint:(CGPoint)point;
- (BOOL)isAnnotationVisible:(id)visible;
- (BOOL)isLocationFromThisDocument:(id)document;
- (BOOL)isLocationOnCurrentPage:(id)page;
- (BOOL)isRectVisible:(id)visible;
- (BOOL)navigationHandler:(id)handler handleInternalLoadRequest:(id)request;
- (BOOL)preflightTap:(id)tap;
- (BOOL)shouldHighlightReceiveTouch:(id)touch;
- (BOOL)shouldShowExpandedContentForURL:(id)l;
- (CGPoint)_originPointForPoint:(CGPoint)point;
- (CGPoint)_webkit2LocationForContentViewPoint:(CGPoint)point;
- (CGPoint)overrideBuildMenuLocation;
- (CGRect)_contentRectFromRects:(id)rects visible:(BOOL)visible;
- (CGRect)cachedRectForAnnotation:(id)annotation;
- (CGRect)cachedVisibleRectForAnnotation:(id)annotation;
- (CGRect)rectForLocation:(id)location;
- (CGRect)rectForLocation:(id)location adjustedForContentOffset:(BOOL)offset;
- (CGRect)rectForPresentedMenuForTextInteraction;
- (IMPerformSelectorProxy)performSelectorProxy;
- (UIScrollView)contentScrollView;
- (double)_timeIntervalForHighlightGesture;
- (double)underlinePercent;
- (id)URLForLoadingDocument;
- (id)_activityItemsConfiguration;
- (id)_annotationUuidIntersectingPoint:(CGPoint)point inView:(id)view annotationLayerRect:(CGRect *)rect;
- (id)_errorForURL:(id)l;
- (id)_excerptCitedStringForAnnotation:(id)annotation;
- (id)_highlightRects:(id)rects withHighlightType:(int)type owner:(id)owner forWK2:(BOOL)k2 clearSelection:(BOOL)selection;
- (id)_payloadForKey:(id)key fromSender:(id)sender;
- (id)_preflightTapLocation:(CGPoint)location;
- (id)_rectsFromDictionary:(id)dictionary;
- (id)adjustedItemProvidersWithCitation:(id)citation withExcerptString:(id)string;
- (id)author;
- (id)bookTitle;
- (id)currentLocation;
- (id)handler:(id)handler citationForText:(id)text webView:(id)view;
- (id)highlightRangeFromRects:(id)rects;
- (id)nextResponder;
- (id)objectForMatchingAnnotation:(id)annotation;
- (id)pageNumberStringForAnnotation:(id)annotation;
- (id)pathForSoundtrack;
- (id)predicateForOverlayCache;
- (id)preservedSelectionHighlights;
- (id)selectedAnnotation;
- (id)selectedTextForAccessibility;
- (id)storeURL;
- (int64_t)effectivePageOffset;
- (int64_t)visiblePageCount;
- (void)__webView2_performHighlighterActionWithGestureState:(int64_t)state location:(CGPoint)location isTouch:(BOOL)touch;
- (void)_annotationChanged:(id)changed forceRender:(BOOL)render;
- (void)_bkaxCheckCanPerformEditActions;
- (void)_bkaxPerformEditAction:(id)action;
- (void)_bookmarkSelectionAndAnnotate:(BOOL)annotate showColorEditor:(BOOL)editor completion:(id)completion;
- (void)_combineAnnotation:(id)annotation withAnnotation:(id)withAnnotation;
- (void)_contentForSelectedRangeWithCompletion:(id)completion;
- (void)_contentRectForLocation:(id)location visible:(BOOL)visible completion:(id)completion;
- (void)_extractSelectedTextWithSender:(id)sender completion:(id)completion;
- (void)_fetchMissingCfiLocationRects:(id)rects forAnnotations:(id)annotations;
- (void)_handleStylusGesture:(id)gesture;
- (void)_highlightAnnotation:(id)annotation;
- (void)_highlightAnnotation:(id)annotation rects:(id)rects;
- (void)_highlightAnnotationWK2:(id)k2;
- (void)_highlightLocation:(id)location withHighlightType:(int)type owner:(id)owner;
- (void)_highlightTimerFired:(id)fired;
- (void)_recheckRemoveAccessApproval;
- (void)_refreshAnnotationsAndSearchResult;
- (void)_refreshContentBasedOverlay;
- (void)_refreshContentBasedOverlayAfterDelay;
- (void)_scheduleInteractionReset;
- (void)_setupAnnotationRectCachesFromClientRects:(id)rects;
- (void)_setupSelectionContextMenu;
- (void)_shareAnnotation:(id)annotation annotationRects:(id)rects;
- (void)_showAnnotationWithState:(BOOL)state showColorEditor:(BOOL)editor forAnnotation:(id)annotation;
- (void)_showAnnotations:(BOOL)annotations;
- (void)_showMenuForRect:(CGRect)rect;
- (void)_smilElementIDSelected:(id)selected inHREF:(id)f;
- (void)_updateReadingStateVisibilityPossible:(BOOL)possible knownDOMRange:(id)range;
- (void)_willMoveTextRangeExtentAtPoint:(CGPoint)point;
- (void)addHighlightToCurrentSelection:(id)selection;
- (void)addNote:(id)note;
- (void)adjustGesturesForTextInteractionAssistant:(id)assistant view:(id)view;
- (void)afterEnsuringFirstPaintPerform:(id)perform;
- (void)books_useSelectionForFind:(id)find;
- (void)buildMenuWithBuilder:(id)builder inWebView:(id)view atPoint:(CGPoint)point;
- (void)changeAnnotationStyle:(id)style;
- (void)changeAnnotationStyle:(id)style annotation:(id)annotation;
- (void)cleanDocumentForMediaOverlay;
- (void)clearHighlights;
- (void)clearHighlightsForSearchResults;
- (void)clearMediaOverlayElement:(id)element;
- (void)clearSearchLocation;
- (void)clearSelection;
- (void)clearSelectionHighlights;
- (void)contentReady;
- (void)contentRectForAnnotation:(id)annotation completion:(id)completion;
- (void)contentRectForLocation:(id)location completion:(id)completion;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)controllerWillChangeContent:(id)content;
- (void)copyContent;
- (void)dealloc;
- (void)didChangeLocationClosing:(BOOL)closing;
- (void)drawHighlights;
- (void)dummyAnnotationForSelectionWK2WithCompletion:(id)completion;
- (void)endOfBook:(id)book;
- (void)handleTap:(id)tap;
- (void)handler:(id)handler presentAlertController:(id)controller completion:(id)completion;
- (void)handler:(id)handler webView:(id)view didNotHandleTapAsClickAtPoint:(CGPoint)point;
- (void)highlightAnnotations:(id)annotations;
- (void)highlightMediaOverlayElement:(id)element;
- (void)highlightSearchLocation:(id)location;
- (void)installReadAloudClickHandlersOnMediaOverlayElements:(id)elements;
- (void)interactionDidEnd:(id)end;
- (void)invalidateContentBasedOverlay;
- (void)invalidateContentBasedOverlayCache;
- (void)invokedSMILControlAction:(int)action withSMILTurnStyle:(int)style;
- (void)isLocationVisible:(id)visible annotation:(id)annotation completion:(id)completion;
- (void)load;
- (void)lookupSelection:(id)selection;
- (void)markupDocumentForMediaOverlay;
- (void)menuWillClose:(id)close;
- (void)navigationHandler:(id)handler didFinishLoadOfURL:(id)l;
- (void)navigationHandler:(id)handler handleExternalLoadRequest:(id)request likelyUserInitiated:(BOOL)initiated;
- (void)navigationHandler:(id)handler handleUserRequestForFrameToLoadExternalURL:(id)l completion:(id)completion;
- (void)navigationHandlerFirstSignificantPaintCompleted:(id)completed;
- (void)navigationHandlerWebContentLoadFailed:(id)failed reason:(id)reason;
- (void)navigationHandlerWebContentProcessAttemptingReload:(id)reload;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pageOffsetRangeForLocation:(id)location completion:(id)completion;
- (void)playFirstVisibleAutoplayMediaObject;
- (void)prepareContentBasedOverlayCache;
- (void)prepareForReuse;
- (void)readAloudEventHandler:(id)handler audioElementEnded:(id)ended;
- (void)readAloudEventHandler:(id)handler performedAction:(id)action turnStyle:(id)style;
- (void)rectForLocation:(id)location completion:(id)completion;
- (void)registerScriptMessageHandlersWithUserContentController:(id)controller;
- (void)releaseViews;
- (void)removeDummyHighlight;
- (void)removeHighlightForAnnotation:(id)annotation;
- (void)removeNote:(id)note;
- (void)removeNoteAndHighlight:(id)highlight;
- (void)removeReadAloudClickHandlersOnMediaOverlayElements:(id)elements;
- (void)resume;
- (void)searchUsingSelection:(id)selection;
- (void)searchWeb:(id)web;
- (void)searchWikipedia:(id)wikipedia;
- (void)selectAnnotation:(id)annotation;
- (void)selectBookmarkedLink:(id)link;
- (void)selectLocation:(id)location completion:(id)completion;
- (void)setActivityIndicatorVisible:(BOOL)visible animated:(BOOL)animated afterDelay:(double)delay;
- (void)setEstimatedContentSize:(CGSize)size;
- (void)setHighlightViews:(id)views;
- (void)setIgnorePageTurnGestures:(BOOL)gestures;
- (void)setLoader:(id)loader;
- (void)setNeedsRestyle;
- (void)setOrdinal:(int64_t)ordinal;
- (void)setTheme:(id)theme force:(BOOL)force;
- (void)setupNotifications;
- (void)shareSelection:(id)selection;
- (void)showContextMenuAtLocation:(CGPoint)location;
- (void)showHighlightingMenuForAnnotation:(id)annotation;
- (void)startFetchingAnnotations;
- (void)stopPlayingMedia:(BOOL)media;
- (void)suspend;
- (void)teardownNotifications;
- (void)translateSelection:(id)selection;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)visibleRectForLocation:(id)location completion:(id)completion;
- (void)webViewDidEnterFullscreen:(id)fullscreen;
- (void)webViewDidExitFullscreen:(id)fullscreen;
- (void)webViewFullscreenMayReturnToInline:(id)inline;
- (void)webViewLoader:(id)loader didUpdateCurrentVisibleCFILocation:(id)location;
- (void)writeAnnotationsToWebProcessPlugin:(id)plugin andHighlights:(id)highlights;
- (void)writeControlVisibilityStateToWebProcessPlugin:(BOOL)plugin;
@end

@implementation BKHTMLContentViewController

- (void)setIgnorePageTurnGestures:(BOOL)gestures
{
  gesturesCopy = gestures;
  delegate = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate setIgnorePageTurnGestures:gesturesCopy];
  }
}

- (void)adjustGesturesForTextInteractionAssistant:(id)assistant view:(id)view
{
  assistantCopy = assistant;
  viewCopy = view;
  be_textInputChild = [(WKWebView *)self->_webView2 be_textInputChild];

  if (be_textInputChild == viewCopy)
  {
    loupeGesture = [assistantCopy loupeGesture];
    [loupeGesture setMinimumPressDuration:0.25];
    [loupeGesture setAllowedTouchTypes:&off_1F1720];
    [(BKHTMLContentViewController *)self _timeIntervalForHighlightGesture];
    [loupeGesture setBe_gestureDelay:?];
    if (!self->_indirectImmediateHighlightRecognizer)
    {
      v9 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_handleStylusGesture:"];
      indirectImmediateHighlightRecognizer = self->_indirectImmediateHighlightRecognizer;
      self->_indirectImmediateHighlightRecognizer = v9;

      [(UILongPressGestureRecognizer *)self->_indirectImmediateHighlightRecognizer setMinimumPressDuration:0.0];
      [(UILongPressGestureRecognizer *)self->_indirectImmediateHighlightRecognizer setDelegate:self];
      [(UILongPressGestureRecognizer *)self->_indirectImmediateHighlightRecognizer setAllowedTouchTypes:&off_1F1738];
      [viewCopy addGestureRecognizer:self->_indirectImmediateHighlightRecognizer];
    }

    if (!self->_indirectHighlightRecognizer)
    {
      v11 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"_handleStylusGesture:"];
      indirectHighlightRecognizer = self->_indirectHighlightRecognizer;
      self->_indirectHighlightRecognizer = v11;

      [(UIGestureRecognizer *)self->_indirectHighlightRecognizer setDelegate:self];
      [(UIGestureRecognizer *)self->_indirectHighlightRecognizer setAllowedTouchTypes:&off_1F1750];
      [viewCopy addGestureRecognizer:self->_indirectHighlightRecognizer];
    }
  }
}

- (void)showContextMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  webView2 = [(BKHTMLContentViewController *)self webView2];
  be_contentView = [webView2 be_contentView];

  if (be_contentView)
  {
    view = [(BKHTMLContentViewController *)self view];
    [be_contentView convertPoint:view fromView:{x, y}];
    v9 = v8;
    v11 = v10;

    [(BKHTMLContentViewController *)self setOverrideBuildMenuLocation:v9, v11];
    [(BKHTMLContentViewController *)self setOverrideBuildMenuLocation:CGPointZero.x, CGPointZero.y];
  }
}

- (BOOL)interactionShouldBegin:(id)begin atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  webView2 = [(BKHTMLContentViewController *)self webView2];
  v7 = [webView2 be_hasSelectablePositionAtPoint:{x, y}];

  return v7;
}

- (void)interactionDidEnd:(id)end
{
  endCopy = end;
  webView2 = [(BKHTMLContentViewController *)self webView2];
  be_selectionRects = [webView2 be_selectionRects];

  firstObject = [be_selectionRects firstObject];
  lastObject = [be_selectionRects lastObject];
  if ([be_selectionRects count])
  {
    [firstObject CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [lastObject CGRectValue];
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
    [firstObject CGRectValue];
    x = v22;
    y = v24;
    if (!lastObject)
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
    if (!lastObject)
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
    [lastObject CGRectValue];
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
    view = [(BKHTMLContentViewController *)self view];
    view2 = [endCopy view];
    [view convertPoint:view2 fromView:{MaxX, MaxY}];
    [(BKHTMLContentViewController *)self showContextMenuAtLocation:?];
  }

LABEL_7:
}

- (void)buildMenuWithBuilder:(id)builder inWebView:(id)view atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  builderCopy = builder;
  viewCopy = view;
  [(BKHTMLContentViewController *)self overrideBuildMenuLocation];
  if (v12 != CGPointZero.x || v11 != CGPointZero.y)
  {
    [(BKHTMLContentViewController *)self overrideBuildMenuLocation];
    x = v14;
    y = v15;
  }

  [(BKHTMLContentViewController *)self clearSelectedAnnotation];
  be_textInputChild = [viewCopy be_textInputChild];
  view = [(BKHTMLContentViewController *)self view];
  [be_textInputChild convertPoint:view toView:{x, y}];
  v19 = v18;
  v21 = v20;

  v22 = [(BKHTMLContentViewController *)self _preflightTapLocation:v19, v21];
  selectedText = [(BKHTMLContentViewController *)self selectedText];
  [viewCopy be_selectionRects];
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

  selectedAnnotation = [(BKHTMLContentViewController *)self selectedAnnotation];
  _activityItemsConfiguration = [(BKHTMLContentViewController *)self _activityItemsConfiguration];
  [(BKHTMLContentViewController *)self setActivityItemsConfiguration:_activityItemsConfiguration];

  [(__CFString *)selectedText length];
  if (selectedText && [(__CFString *)selectedText length])
  {
    if (selectedAnnotation)
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

  else if (selectedAnnotation)
  {
    goto LABEL_26;
  }

  if ([viewCopy be_hasSelectablePositionAtPoint:{x, y}])
  {
    be_textInputChild2 = [viewCopy be_textInputChild];
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_1C01C;
    v81[3] = &unk_1E2BD0;
    v81[4] = self;
    [be_textInputChild2 selectTextWithGranularity:1 atPoint:v81 completionHandler:{x, y}];
  }

LABEL_26:
  v78 = viewCopy;
  [builderCopy removeMenuForIdentifier:UIMenuLookup];
  [builderCopy removeMenuForIdentifier:UIMenuServices];
  [builderCopy removeMenuForIdentifier:UIMenuShare];
  [builderCopy replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:&stru_1E3068];
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

  v79 = builderCopy;
  v75 = v40;
  [builderCopy insertSiblingMenu:v40 afterMenuForIdentifier:UIMenuStandardEdit];
  v41 = +[NSMutableArray array];
  v90 = @"lookUpTerm";
  v42 = selectedText;
  if (!selectedText)
  {
    annotationSelectedText = [selectedAnnotation annotationSelectedText];
    v38 = annotationSelectedText;
    if (annotationSelectedText)
    {
      v42 = annotationSelectedText;
    }

    else
    {
      v42 = &stru_1E7188;
    }
  }

  v80 = selectedAnnotation;
  v91 = v42;
  v44 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
  if (!selectedText)
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
  if (selectedText)
  {
    v52 = selectedText;
    v53 = selectedText;
  }

  else
  {
    annotationSelectedText2 = [v80 annotationSelectedText];
    v53 = 0;
    v55 = annotationSelectedText2;
    if (annotationSelectedText2)
    {
      v56 = annotationSelectedText2;
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
    annotationSelectedText3 = [v80 annotationSelectedText];
    v50 = annotationSelectedText3;
    v59 = &stru_1E7188;
    if (annotationSelectedText3)
    {
      v59 = annotationSelectedText3;
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

- (id)_payloadForKey:(id)key fromSender:(id)sender
{
  keyCopy = key;
  senderCopy = sender;
  objc_opt_class();
  v7 = BUDynamicCast();

  if (v7 && [keyCopy length])
  {
    objc_opt_class();
    propertyList = [v7 propertyList];
    v9 = BUDynamicCast();

    objc_opt_class();
    v10 = [v9 objectForKeyedSubscript:keyCopy];
    v11 = BUDynamicCast();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)searchWeb:(id)web
{
  v5 = [(BKHTMLContentViewController *)self _payloadForKey:@"searchTerm" fromSender:web];
  if ([v5 length])
  {
    delegate = [(BKContentViewController *)self delegate];
    [delegate contentViewController:self searchWebForString:v5];
  }
}

- (void)searchWikipedia:(id)wikipedia
{
  v5 = [(BKHTMLContentViewController *)self _payloadForKey:@"searchTerm" fromSender:wikipedia];
  if ([v5 length])
  {
    delegate = [(BKContentViewController *)self delegate];
    [delegate contentViewController:self searchEncyclopediaForString:v5];
  }
}

- (void)changeAnnotationStyle:(id)style
{
  styleCopy = style;
  objc_opt_class();
  v6 = BUDynamicCast();

  selectedAnnotation = [(BKHTMLContentViewController *)self selectedAnnotation];
  if (selectedAnnotation)
  {
    [(BKHTMLContentViewController *)self changeAnnotationStyle:v6 annotation:selectedAnnotation];
  }
}

- (void)changeAnnotationStyle:(id)style annotation:(id)annotation
{
  annotationCopy = annotation;
  propertyList = [style propertyList];
  v7 = [propertyList objectForKeyedSubscript:@"style"];

  if (!v7)
  {
    goto LABEL_20;
  }

  integerValue = [v7 integerValue];
  themePage = [(BKHTMLContentViewController *)self themePage];
  annotationPageTheme = [themePage annotationPageTheme];

  v11 = 0;
  if (integerValue > 3)
  {
    if (integerValue == &dword_4)
    {
      v12 = [AEAnnotationTheme pinkTheme:annotationPageTheme];
    }

    else if (integerValue == (&dword_4 + 1))
    {
      v12 = [AEAnnotationTheme purpleTheme:annotationPageTheme];
    }

    else
    {
      if (integerValue != (&dword_4 + 2))
      {
        goto LABEL_16;
      }

      v12 = [AEAnnotationTheme underlineTheme:annotationPageTheme];
    }
  }

  else if (integerValue == (&dword_0 + 1))
  {
    v12 = [AEAnnotationTheme yellowTheme:annotationPageTheme];
  }

  else if (integerValue == (&dword_0 + 2))
  {
    v12 = [AEAnnotationTheme greenTheme:annotationPageTheme];
  }

  else
  {
    if (integerValue != (&dword_0 + 3))
    {
      goto LABEL_16;
    }

    v12 = [AEAnnotationTheme blueTheme:annotationPageTheme];
  }

  v11 = v12;
LABEL_16:
  delegate = [(BKContentViewController *)self delegate];
  v14 = BUProtocolCast();

  if (v11 && v14)
  {
    [v14 editorController:0 setTheme:v11 forAnnotation:annotationCopy];
    [(BKHTMLContentViewController *)self clearSelection];
  }

LABEL_20:
}

- (void)addNote:(id)note
{
  selectedAnnotation = [(BKHTMLContentViewController *)self selectedAnnotation];
  v5 = selectedAnnotation;
  if (selectedAnnotation)
  {
    v6 = selectedAnnotation;
    [(BKHTMLContentViewController *)self selectAnnotation:selectedAnnotation];
    selectedAnnotation = [(BKHTMLContentViewController *)self annotateSelection:v6];
    v5 = v6;
  }

  _objc_release_x1(selectedAnnotation, v5);
}

- (void)removeNote:(id)note
{
  selectedAnnotation = [(BKHTMLContentViewController *)self selectedAnnotation];
  if (selectedAnnotation)
  {
    v4 = selectedAnnotation;
    [selectedAnnotation setAnnotationNote:&stru_1E7188];
    selectedAnnotation = v4;
  }
}

- (void)removeNoteAndHighlight:(id)highlight
{
  selectedAnnotation = [(BKHTMLContentViewController *)self selectedAnnotation];
  if (selectedAnnotation)
  {
    v5 = selectedAnnotation;
    [selectedAnnotation setAnnotationNote:&stru_1E7188];
    [v5 setAnnotationDeleted:1];
    [(BKHTMLContentViewController *)self removeHighlightForAnnotation:v5];
    selectedAnnotation = v5;
  }
}

- (id)_activityItemsConfiguration
{
  selectedAnnotation = [(BKHTMLContentViewController *)self selectedAnnotation];
  selectedText = [(BKHTMLContentViewController *)self selectedText];
  v5 = selectedText;
  v6 = 0;
  if (!selectedAnnotation && selectedText)
  {
    v6 = objc_alloc_init(BKHTMLContentViewControllerDummyAnnotation);
    [v6 setAnnotationStyle:0];
    [v6 setAnnotationRepresentativeText:v5];
    annotationDataProvider = [(BKHTMLContentViewController *)self annotationDataProvider];
    if (annotationDataProvider && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v8 = [annotationDataProvider chapterTitleForOrdinal:-[BKContentViewController ordinal](self pageOffset:{"ordinal"), -[BKContentViewController pageOffset](self, "pageOffset")}];
      [v6 setChapterTitle:v8];
    }
  }

  if (selectedAnnotation | v6)
  {
    if (selectedAnnotation)
    {
      v9 = selectedAnnotation;
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

- (void)addHighlightToCurrentSelection:(id)selection
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1C89C;
  v5[3] = &unk_1E3090;
  selectionCopy = selection;
  selfCopy = self;
  v4 = selectionCopy;
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
  view = [(BKHTMLContentViewController *)self view];
  delegate = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate preloadContentViewController:self highPriority:1];
  }

  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTap:"];
  tapGesture = self->_tapGesture;
  self->_tapGesture = v5;

  [(UITapGestureRecognizer *)self->_tapGesture setDelegate:self];
  [view addGestureRecognizer:self->_tapGesture];
  themePage = [(BKHTMLContentViewController *)self themePage];
  v8 = [BKActivityIndicatorOverlayView alloc];
  contentTextColor = [themePage contentTextColor];
  v10 = [contentTextColor colorWithAlphaComponent:0.7];
  v11 = [themePage backgroundColorForTraitEnvironment:self];
  v12 = [(BKActivityIndicatorOverlayView *)v8 initWithBackgroundColor:v10 foregroundColor:v11];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v12;

  [(WKWebView *)self->_webView2 setBe_textInteractionAssistantDelegate:self];
  if ([(BKHTMLContentViewController *)self supportsNotesAndHighlights])
  {
    [(WKWebView *)self->_webView2 setBe_textInteractionDelegate:self];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BKHTMLContentViewController;
  [(BKHTMLContentViewController *)&v4 viewWillAppear:appear];
  [(BKHTMLContentViewController *)self setupNotifications];
  [(BKHTMLContentViewController *)self _refreshAnnotationsAndSearchResult];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(BKHTMLContentViewController *)self stopActivityIndicator:?];
  v5.receiver = self;
  v5.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v5 viewWillDisappear:disappearCopy];
  [(BKHTMLContentViewController *)self teardownNotifications];
  [(BKHTMLContentViewController *)self clearCurrentHighlighting];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v4 viewDidDisappear:disappear];
  [(BKHTMLContentViewController *)self setHighlightViews:0];
  [(BKHTMLContentViewController *)self _updateReadingStateVisibilityPossible:0];
}

- (void)setActivityIndicatorVisible:(BOOL)visible animated:(BOOL)animated afterDelay:(double)delay
{
  animatedCopy = animated;
  if (visible)
  {
    view = [(BKHTMLContentViewController *)self view];
    window = [view window];

    delegate = [(BKContentViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [delegate contentViewController:self hostViewForActivityIndicator:self->_activityIndicator];

      v11 = v10;
    }

    else
    {
      v11 = window;
    }

    v14 = v11;
    [(BKActivityIndicatorOverlayView *)self->_activityIndicator showIndicatorCenteredInView:v11 animated:animatedCopy animationDelay:delay];
  }

  else
  {
    activityIndicator = self->_activityIndicator;

    [(BKActivityIndicatorOverlayView *)activityIndicator hideIndicatorAnimated:animated animationDelay:?];
  }
}

- (void)setEstimatedContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v8 setEstimatedContentSize:?];
  *v7 = width;
  *&v7[1] = height;
  v6 = [NSValue valueWithBytes:v7 objCType:"{CGSize=dd}"];
  [(WKWebView *)self->_webView2 setBe_estimatedContentSizeValue:v6];
}

- (void)setTheme:(id)theme force:(BOOL)force
{
  forceCopy = force;
  themeCopy = theme;
  theme = [(BKHTMLContentViewController *)self theme];
  v8 = [themeCopy isEqual:theme];

  if (!v8 || forceCopy)
  {
    v13.receiver = self;
    v13.super_class = BKHTMLContentViewController;
    [(BKContentViewController *)&v13 setTheme:themeCopy force:forceCopy];
    if (self->_highlightRenderingController)
    {
      theme2 = [(BKHTMLContentViewController *)self theme];
      -[AEHighlightRenderingController setAnnotationBlendMode:](self->_highlightRenderingController, "setAnnotationBlendMode:", [theme2 annotationBlendMode]);

      theme3 = [(BKHTMLContentViewController *)self theme];
      -[AEHighlightRenderingController setPageTheme:](self->_highlightRenderingController, "setPageTheme:", [theme3 annotationPageTheme]);

      theme4 = [(BKHTMLContentViewController *)self theme];
      if ([theme4 shouldInvertContent])
      {
        configuration = [(BKContentViewController *)self configuration];
        -[AEHighlightRenderingController setDrawSpecialGrayHighlights:](self->_highlightRenderingController, "setDrawSpecialGrayHighlights:", [configuration isScroll] ^ 1);
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
  loader = [(BKHTMLContentViewController *)self loader];
  webView = [loader webView];
  [webView evaluateJavaScript:v5 completionHandler:0];
}

- (void)didChangeLocationClosing:(BOOL)closing
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

- (void)setHighlightViews:(id)views
{
  viewsCopy = views;
  if (![viewsCopy count])
  {
    [(BKHTMLContentViewController *)self clearHighlights];
  }

  v5.receiver = self;
  v5.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v5 setHighlightViews:viewsCopy];
}

- (void)highlightSearchLocation:(id)location
{
  locationCopy = location;
  v5.receiver = self;
  v5.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v5 highlightSearchLocation:locationCopy];
  if ([(BKHTMLContentViewController *)self isLocationFromThisDocument:locationCopy]&& [(BKContentViewController *)self isContentLoaded])
  {
    [(BKHTMLContentViewController *)self _highlightLocation:locationCopy withHighlightType:[(BKContentViewController *)self selectionHighlightType] owner:locationCopy];
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
  highlightRenderingController = [(BKHTMLContentViewController *)self highlightRenderingController];
  highlightLayers = [highlightRenderingController highlightLayers];

  __highlightContainerView = [(BKHTMLContentViewController *)self __highlightContainerView];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = highlightLayers;
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
        layer = [__highlightContainerView layer];
        [layer addSublayer:v11];

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
  fetchedObjects = [(NSFetchedResultsController *)self->_highlightsFRC fetchedObjects];
  v4 = [fetchedObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(fetchedObjects);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        highlightRenderingController = [(BKHTMLContentViewController *)self highlightRenderingController];
        annotationUuid = [v8 annotationUuid];
        [highlightRenderingController removeHighlightForData:annotationUuid];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [fetchedObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (id)preservedSelectionHighlights
{
  highlightViews = [(BKContentViewController *)self highlightViews];
  v4 = [highlightViews count];

  if (v4)
  {
    v5 = +[NSMutableArray array];
    highlightViews2 = [(BKContentViewController *)self highlightViews];
    v7 = [highlightViews2 copy];

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

- (void)highlightAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  annotationRectUnionCache = [(BKHTMLContentViewController *)self annotationRectUnionCache];
  if (annotationRectUnionCache)
  {
    v6 = annotationRectUnionCache;
    highlightRenderingController = [(BKHTMLContentViewController *)self highlightRenderingController];
    isAddingHighlights = [highlightRenderingController isAddingHighlights];

    if ((isAddingHighlights & 1) == 0)
    {
      highlightRenderingController2 = [(BKHTMLContentViewController *)self highlightRenderingController];
      [highlightRenderingController2 setAddingHighlights:1];

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = annotationsCopy;
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

      highlightRenderingController3 = [(BKHTMLContentViewController *)self highlightRenderingController];
      [highlightRenderingController3 setAddingHighlights:0];
    }
  }
}

- (double)underlinePercent
{
  result = self->_underlinePercent;
  if (result == 0.0)
  {
    configuration = [(BKContentViewController *)self configuration];
    style = [configuration style];
    fontFamily = [style fontFamily];

    v7 = [NSDictionary dictionaryWithObject:fontFamily forKey:kCTFontFamilyNameAttribute];
    v8 = CTFontDescriptorCreateWithAttributes(v7);
    if (!v8 || (v9 = v8, v10 = CTFontCreateWithFontDescriptor(v8, 0.0, 0), CFRelease(v9), !v10))
    {
      v10 = CTFontCreateWithName(fontFamily, 0.0, 0);
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

- (BOOL)_isCachedAnnotationRectVisible:(id)visible considerEntirePage:(BOOL)page
{
  visibleCopy = visible;
  if (page)
  {
    loader = [(BKHTMLContentViewController *)self loader];
    [loader contentRectForVisiblePage];
  }

  else
  {
    loader = [(BKHTMLContentViewController *)self webViewProxy];
    [loader contentRectForVisibleContent];
  }

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;

  v20 = visibleCopy;
  v16 = [NSArray arrayWithObjects:&v20 count:1];

  v17 = [(BKHTMLContentViewController *)self arrayOfVisibleRectsFromRects:v16 contentRect:v12, v13, v14, v15];

  v21.origin.x = BKUnionRects(v17);
  IsNull = CGRectIsNull(v21);

  return !IsNull;
}

- (void)_highlightAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([annotationCopy isAnnotationDeleted] & 1) == 0)
  {
    location = [annotationCopy location];
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1E16C;
    v13[3] = &unk_1E2C70;
    objc_copyWeak(&v15, &location);
    v6 = annotationCopy;
    v14 = v6;
    v7 = objc_retainBlock(v13);
    configuration = [(BKContentViewController *)self configuration];
    isScroll = [configuration isScroll];

    if (isScroll)
    {
      (v7[2])(v7, 1);
    }

    else
    {
      annotationLocation = [v6 annotationLocation];
      if (annotationLocation && (-[BKHTMLContentViewController annotationRectUnionCache](self, "annotationRectUnionCache"), v11 = objc_claimAutoreleasedReturnValue(), [v11 objectForKeyedSubscript:annotationLocation], v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
      {
        if (([(BKContentViewController *)self pageOffset]& 0x8000000000000000) == 0 && [(BKContentViewController *)self pageOffset]!= 0x7FFFFFFFFFFFFFFFLL && [(BKHTMLContentViewController *)self isLocationFromThisDocument:location])
        {
          (v7[2])(v7, [(BKHTMLContentViewController *)self _isCachedAnnotationRectVisible:v12 considerEntirePage:0]);
        }
      }

      else
      {
        [(BKHTMLContentViewController *)self isLocationVisible:location annotation:v6 completion:v7];
        v12 = 0;
      }
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)_highlightAnnotation:(id)annotation rects:(id)rects
{
  annotationCopy = annotation;
  rectsCopy = rects;
  highlightRenderingController = [(BKHTMLContentViewController *)self highlightRenderingController];
  annotationUuid = [annotationCopy annotationUuid];
  v10 = [highlightRenderingController highlightWithData:annotationUuid];

  v11 = v10;
  if (!v10)
  {
    v11 = objc_alloc_init(AEHighlight);
    [v11 setAnnotation:annotationCopy];
    v12 = +[NSArray array];
    [v11 setLines:v12];
  }

  lines = [v11 lines];
  [lines enumerateObjectsUsingBlock:&stru_1E30D0];

  loader = [(BKHTMLContentViewController *)self loader];
  isVerticalDocument = [loader isVerticalDocument];

  if (isVerticalDocument)
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

  configuration = [(BKContentViewController *)self configuration];
  isScroll = [configuration isScroll];

  if (isScroll)
  {
    v19 = rectsCopy;
  }

  else
  {
    v19 = [(BKHTMLContentViewController *)self arrayOfVisibleRectsFromRects:rectsCopy];
  }

  v20 = v19;
  lines2 = [v11 lines];
  v22 = [lines2 mutableCopy];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1E4CC;
  v32[3] = &unk_1E3118;
  v23 = v11;
  v33 = v23;
  selfCopy = self;
  v37 = v16;
  v24 = v20;
  v35 = v24;
  v25 = v22;
  v36 = v25;
  [v24 enumerateObjectsUsingBlock:v32];
  [v23 setLines:v25];
  highlightRenderingController2 = [(BKHTMLContentViewController *)self highlightRenderingController];
  v27 = highlightRenderingController2;
  if (v10)
  {
    [highlightRenderingController2 updatedHighlight:v23];
  }

  else
  {
    annotationUuid2 = [annotationCopy annotationUuid];
    [v27 addHighlight:v23 forData:annotationUuid2];
  }

  [(BKHTMLContentViewController *)self drawHighlights];
  delegate = [(BKContentViewController *)self delegate];
  v30 = objc_opt_respondsToSelector();

  if (v30)
  {
    delegate2 = [(BKContentViewController *)self delegate];
    [delegate2 contentViewControllerAnnotationCacheDidChange:self];
  }
}

- (void)_highlightAnnotationWK2:(id)k2
{
  k2Copy = k2;
  objc_initWeak(&location, self);
  location = [k2Copy location];
  selectionRects = [location selectionRects];
  annotationLocation = [k2Copy annotationLocation];
  if (!annotationLocation)
  {
    if (!selectionRects)
    {
      goto LABEL_8;
    }

    v9 = 0;
LABEL_7:
    [(BKHTMLContentViewController *)self _highlightAnnotation:k2Copy rects:selectionRects];
    goto LABEL_14;
  }

  annotationRectsCache = [(BKHTMLContentViewController *)self annotationRectsCache];
  v9 = [annotationRectsCache objectForKeyedSubscript:annotationLocation];

  if (selectionRects)
  {
    goto LABEL_7;
  }

  if (v9)
  {
    [(BKHTMLContentViewController *)self _highlightAnnotation:k2Copy rects:v9];
    goto LABEL_14;
  }

LABEL_8:
  if (location)
  {
    webViewProxy = [(BKHTMLContentViewController *)self webViewProxy];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1E960;
    v13[3] = &unk_1E3140;
    objc_copyWeak(&v17, &location);
    v14 = annotationLocation;
    v15 = k2Copy;
    v16 = location;
    [webViewProxy clientRectsForLocation:v16 completion:v13];

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
  dummyLocation2 = [(BKHTMLContentViewControllerDummyAnnotation *)self->_highlightDummyAnnotation dummyLocation2];
  v3 = dummyLocation2 != 0;

  return v3;
}

- (void)_showAnnotations:(BOOL)annotations
{
  annotationsCopy = annotations;
  if ([(BKHTMLContentViewController *)self supportsNotesAndHighlights])
  {
    annotationRectUnionCache = [(BKHTMLContentViewController *)self annotationRectUnionCache];

    if (annotationRectUnionCache)
    {
      view = [(BKHTMLContentViewController *)self view];
      [view layoutIfNeeded];

      if (annotationsCopy)
      {
        preservedSelectionHighlights = [(BKHTMLContentViewController *)self preservedSelectionHighlights];
      }

      else
      {
        preservedSelectionHighlights = 0;
      }

      [(BKHTMLContentViewController *)self setHighlightViews:0];
      fetchedObjects = [(NSFetchedResultsController *)self->_highlightsFRC fetchedObjects];
      v8 = [NSPredicate predicateWithFormat:@"annotationType == %d", 2];
      v9 = [fetchedObjects filteredArrayUsingPredicate:v8];

      [(BKHTMLContentViewController *)self highlightAnnotations:v9];
      if ([preservedSelectionHighlights count])
      {
        [(NSMutableArray *)self->super._highlightViews addObjectsFromArray:preservedSelectionHighlights];
      }

      [(BKHTMLContentViewController *)self drawHighlights];
    }
  }
}

- (void)removeHighlightForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  annotationUuid = [annotationCopy annotationUuid];
  v6 = [NSPredicate predicateWithFormat:@"owner == %@", annotationUuid, 0];

  highlightViews = [(BKContentViewController *)self highlightViews];
  v8 = [highlightViews filteredArrayUsingPredicate:v6];

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

  highlightRenderingController = [(BKHTMLContentViewController *)self highlightRenderingController];
  annotationUuid2 = [annotationCopy annotationUuid];
  [highlightRenderingController removeHighlightForData:annotationUuid2];
}

- (void)_annotationChanged:(id)changed forceRender:(BOOL)render
{
  changedCopy = changed;
  v6 = changedCopy;
  if (changedCopy)
  {
    ordinal = [changedCopy ordinal];
    if (ordinal == [(BKContentViewController *)self ordinal])
    {
      v8 = _AEAnnotationLocationLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        annotationUuid = [v6 annotationUuid];
        *buf = 138412290;
        v28 = annotationUuid;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "_annotationChanged for %@", buf, 0xCu);
      }

      if ([v6 annotationType] == 2)
      {
        annotationUuid2 = [v6 annotationUuid];
        v11 = [NSPredicate predicateWithFormat:@"owner == %@", annotationUuid2, 0];

        highlightViews = [(BKContentViewController *)self highlightViews];
        v13 = [highlightViews filteredArrayUsingPredicate:v11];

        v14 = _AEAnnotationLocationLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          annotationUuid3 = [v6 annotationUuid];
          *buf = 138412546;
          v28 = annotationUuid3;
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
    searchLocation = [(BKContentViewController *)self searchLocation];
    [(BKHTMLContentViewController *)self _showAnnotations:searchLocation == 0];

    searchLocation2 = [(BKContentViewController *)self searchLocation];

    if (searchLocation2)
    {
      searchLocation3 = [(BKContentViewController *)self searchLocation];
      [(BKHTMLContentViewController *)self highlightSearchLocation:searchLocation3];
    }

    delegate = [(BKContentViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate contentViewControllerAnnotationsDidChange:self];
    }
  }
}

- (void)_highlightLocation:(id)location withHighlightType:(int)type owner:(id)owner
{
  locationCopy = location;
  ownerCopy = owner;
  if (locationCopy)
  {
    objc_initWeak(&location, self);
    webViewProxy = [(BKHTMLContentViewController *)self webViewProxy];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1F304;
    v11[3] = &unk_1E3190;
    objc_copyWeak(&v15, &location);
    v12 = locationCopy;
    selfCopy = self;
    typeCopy = type;
    v14 = ownerCopy;
    [webViewProxy clientRectsForLocation:v12 completion:v11];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    [(BKHTMLContentViewController *)self clearSelection];
  }
}

- (id)_highlightRects:(id)rects withHighlightType:(int)type owner:(id)owner forWK2:(BOOL)k2 clearSelection:(BOOL)selection
{
  selectionCopy = selection;
  k2Copy = k2;
  v9 = *&type;
  rectsCopy = rects;
  ownerCopy = owner;
  v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [rectsCopy count]);
  [(WKWebView *)self->_webView2 be_scale];
  v15 = v14;
  if (selectionCopy)
  {
    [(BKHTMLContentViewController *)self clearSelection];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = rectsCopy;
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
        [(BKTextHighlightView *)v34 setOwner:ownerCopy];
        *&v35 = v38;
        [(BKTextHighlightView *)v34 setCurrentScale:v35];
        theme = [(BKHTMLContentViewController *)self theme];
        -[BKTextHighlightView setLightenBlend:](v34, "setLightenBlend:", [theme shouldInvertContent]);

        [(BKTextHighlightView *)v34 setContentInsets:v32, v15 * 3.0, v31, v15 * 3.0];
        [(BKContentViewController *)self addHighlightView:v34 forWK2:k2Copy];
        [v13 addObject:v34];
      }

      v18 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v18);
  }

  return v13;
}

- (id)highlightRangeFromRects:(id)rects
{
  rectsCopy = rects;
  loader = [(BKHTMLContentViewController *)self loader];
  v6 = +[BEJavascriptUtilities collapsedLineRectsFromArrayOfRectDictionaries:isVerticalDocument:](BEJavascriptUtilities, "collapsedLineRectsFromArrayOfRectDictionaries:isVerticalDocument:", rectsCopy, [loader isVerticalDocument]);

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
  highlightViews = [(BKContentViewController *)self highlightViews];
  v4 = [highlightViews copy];

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
    fetchedObjects = [(NSFetchedResultsController *)self->_highlightsFRC fetchedObjects];
    v4 = [fetchedObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(fetchedObjects);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          annotationUuid = [v8 annotationUuid];
          v10 = [annotationUuid isEqualToString:self->_tempOwnerID];

          if (v10)
          {
            v11 = v8;
            goto LABEL_13;
          }
        }

        v5 = [fetchedObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_contentRectForLocation:(id)location visible:(BOOL)visible completion:(id)completion
{
  visibleCopy = visible;
  locationCopy = location;
  completionCopy = completion;
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
    [(BKHTMLContentViewController *)self _contentRectFromRects:v16 visible:visibleCopy];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = objc_retainBlock(completionCopy);
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
      loader = [(BKHTMLContentViewController *)self loader];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_20234;
      v46[3] = &unk_1E31B8;
      v47 = completionCopy;
      [loader clientRectForEpubLocation:v26 completion:v46];

      v30 = v47;
    }

    else
    {
      objc_opt_class();
      v30 = BUDynamicCast();
      cfiString = [v30 cfiString];
      if (v30 && (-[BKHTMLContentViewController annotationRectUnionCache](self, "annotationRectUnionCache"), v32 = objc_claimAutoreleasedReturnValue(), [v32 objectForKeyedSubscript:cfiString], v33 = objc_claimAutoreleasedReturnValue(), v32, v33))
      {
        if (visibleCopy)
        {
          annotationRectsCache = [(BKHTMLContentViewController *)self annotationRectsCache];
          v35 = [annotationRectsCache objectForKeyedSubscript:cfiString];

          v36 = [(BKHTMLContentViewController *)self arrayOfVisibleRectsFromRects:v35];
          v37 = objc_retainBlock(completionCopy);
          if (v37)
          {
            v38 = BKUnionRects(v36);
            v37[2](v37, v38);
          }
        }

        else
        {
          v35 = objc_retainBlock(completionCopy);
          if (v35)
          {
            [v33 CGRectValue];
            v35[2](v35);
          }
        }
      }

      else
      {
        webViewProxy = [(BKHTMLContentViewController *)self webViewProxy];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_202CC;
        v40[3] = &unk_1E31E0;
        v41 = v30;
        selfCopy = self;
        v43 = cfiString;
        v45 = visibleCopy;
        v44 = completionCopy;
        [webViewProxy clientRectsForLocation:locationCopy completion:v40];
      }
    }
  }
}

- (CGRect)_contentRectFromRects:(id)rects visible:(BOOL)visible
{
  visibleCopy = visible;
  rectsCopy = rects;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v11 = [rectsCopy count];
  if (visibleCopy)
  {
    if (v11)
    {
      v12 = [(BKHTMLContentViewController *)self arrayOfVisibleRectsFromRects:rectsCopy];
      x = BKUnionRects(v12);
      y = v13;
      width = v14;
      height = v15;
    }
  }

  else if (v11)
  {
    x = BKUnionRects(rectsCopy);
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

- (void)contentRectForLocation:(id)location completion:(id)completion
{
  locationCopy = location;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(BKHTMLContentViewController *)self _contentRectForLocation:locationCopy visible:0 completion:completionCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(BKHTMLContentViewController *)self rectForLocation:locationCopy];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = objc_retainBlock(completionCopy);
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

      v25 = objc_retainBlock(completionCopy);
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

- (void)contentRectForAnnotation:(id)annotation completion:(id)completion
{
  completionCopy = completion;
  location = [annotation location];
  [(BKHTMLContentViewController *)self _contentRectForLocation:location visible:0 completion:completionCopy];
}

- (CGRect)rectForLocation:(id)location
{
  [(BKHTMLContentViewController *)self rectForLocation:location adjustedForContentOffset:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)rectForLocation:(id)location adjustedForContentOffset:(BOOL)offset
{
  offsetCopy = offset;
  locationCopy = location;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    anchor = [locationCopy anchor];
    loader = [(BKHTMLContentViewController *)self loader];
    v13 = [loader anchorFrameForAnchor:anchor];

    if (v13)
    {
      [v13 rectValue];
      x = v14;
      y = v15;
      width = v16;
      height = v17;
    }

LABEL_7:
    if (offsetCopy)
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
    if (!offsetCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v18 = locationCopy;
  loader2 = [(BKHTMLContentViewController *)self loader];
  pageOffset = [v18 pageOffset];

  [loader2 rectForPageOffset:pageOffset];
  x = v21;
  y = v22;
  width = v23;
  height = v24;

  configuration = [(BKContentViewController *)self configuration];
  LODWORD(loader2) = [configuration isScroll];

  if (!loader2)
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

- (void)rectForLocation:(id)location completion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2098C;
  v6[3] = &unk_1E3208;
  selfCopy = self;
  completionCopy = completion;
  v5 = completionCopy;
  [(BKHTMLContentViewController *)selfCopy _contentRectForLocation:location visible:0 completion:v6];
}

- (void)visibleRectForLocation:(id)location completion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_20B04;
  v6[3] = &unk_1E3208;
  selfCopy = self;
  completionCopy = completion;
  v5 = completionCopy;
  [(BKHTMLContentViewController *)selfCopy _contentRectForLocation:location visible:1 completion:v6];
}

- (BOOL)isRectVisible:(id)visible
{
  visibleCopy = visible;
  visibleCopy2 = visible;
  v5 = [NSArray arrayWithObjects:&visibleCopy count:1];

  visibleCopy = [(BKHTMLContentViewController *)self arrayOfVisibleRectsFromRects:v5, visibleCopy];

  v9.origin.x = BKUnionRects(visibleCopy);
  LOBYTE(self) = CGRectIsNull(v9);

  return self ^ 1;
}

- (id)_annotationUuidIntersectingPoint:(CGPoint)point inView:(id)view annotationLayerRect:(CGRect *)rect
{
  y = point.y;
  x = point.x;
  layer = [view layer];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  highlightRenderingController = [(BKHTMLContentViewController *)self highlightRenderingController];
  highlightLayers = [highlightRenderingController highlightLayers];

  v12 = [highlightLayers countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v12)
  {
    v13 = *v39;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(highlightLayers);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        [v15 convertPoint:layer fromLayer:{x, y}];
        v17 = v16;
        v19 = v18;
        highlightRenderingController2 = [(BKHTMLContentViewController *)self highlightRenderingController];
        v21 = [highlightRenderingController2 layer:v15 containsHighlightAtPoint:{v17, v19}];

        if (v21)
        {
          highlightRenderingController3 = [(BKHTMLContentViewController *)self highlightRenderingController];
          v12 = [highlightRenderingController3 annotationUuidForHighlightLayer:v15];

          if (rect)
          {
            [v15 bounds];
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;
            view = [(BKHTMLContentViewController *)self view];
            layer2 = [view layer];
            [v15 convertRect:layer2 toLayer:{v24, v26, v28, v30}];
            rect->origin.x = v33;
            rect->origin.y = v34;
            rect->size.width = v35;
            rect->size.height = v36;
          }

          goto LABEL_12;
        }
      }

      v12 = [highlightLayers countByEnumeratingWithState:&v38 objects:v42 count:16];
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

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  retrieveAndClearSelectionRectValue = [tapCopy retrieveAndClearSelectionRectValue];
  v5 = retrieveAndClearSelectionRectValue;
  if (retrieveAndClearSelectionRectValue)
  {
    [retrieveAndClearSelectionRectValue CGRectValue];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(BKHTMLContentViewController *)self becomeFirstResponder];
    selectedAnnotation = [(BKHTMLContentViewController *)self selectedAnnotation];
    v15 = +[BKBookViewController useEnhancedEditMenu];
    if (selectedAnnotation)
    {
      if (v15)
      {
        view = [(BKHTMLContentViewController *)self view];
        [tapCopy locationInView:view];
        [(BKHTMLContentViewController *)self showContextMenuAtLocation:?];
      }

      else
      {
        [(BKHTMLContentViewController *)self showHighlightingMenuForAnnotation:selectedAnnotation];
      }
    }

    else if ((v15 & 1) == 0)
    {
      [(BKHTMLContentViewController *)self _showMenuForRect:v7, v9, v11, v13];
    }
  }
}

- (id)_preflightTapLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  if (+[BKBookViewController useEnhancedEditMenu](BKBookViewController, "useEnhancedEditMenu") || (+[UIMenuController sharedMenuController](UIMenuController, "sharedMenuController"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isMenuVisible], v6, (v7 & 1) != 0))
  {
    height = 0;
    goto LABEL_13;
  }

  view = [(BKHTMLContentViewController *)self view];
  v10 = [view hitTest:0 withEvent:{x, y}];

  objc_opt_class();
  v11 = BUDynamicCast();
  if (v11)
  {
    objc_opt_class();
    owner = [v11 owner];
    v13 = BUDynamicCast();

    if (v13)
    {
      [v11 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      view2 = [(BKHTMLContentViewController *)self view];
      [v11 convertRect:view2 toView:{v15, v17, v19, v21}];
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
      height = [NSValue valueWithCGRect:v31, v32, width, height];
      goto LABEL_12;
    }
  }

  else
  {
    size = CGRectNull.size;
    v38.origin = CGRectNull.origin;
    v38.size = size;
    view3 = [(BKHTMLContentViewController *)self view];
    v13 = [(BKHTMLContentViewController *)self _annotationUuidIntersectingPoint:view3 inView:&v38 annotationLayerRect:x, y];

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

  height = 0;
LABEL_12:

LABEL_13:

  return height;
}

- (BOOL)preflightTap:(id)tap
{
  tapCopy = tap;
  view = [(BKHTMLContentViewController *)self view];
  [tapCopy locationInView:view];
  v6 = [(BKHTMLContentViewController *)self _preflightTapLocation:?];

  if (v6)
  {
    [tapCopy captureSelectionRectValueForTap:v6];
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

    annotationRectUnionCache = [(BKHTMLContentViewController *)self annotationRectUnionCache];
    [annotationRectUnionCache setObject:0 forKeyedSubscript:@"BKHTMLContentViewControllerDummyAnnotationUUID"];

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

- (BOOL)_shouldBeginCustomHighlighterActionForTouchType:(int64_t)type modifierFlags:(int64_t)initialTextInteractionModifiers
{
  if (type == 3)
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

- (CGPoint)_webkit2LocationForContentViewPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  be_textInputChild = [(WKWebView *)self->_webView2 be_textInputChild];
  [be_textInputChild convertPoint:self->_webView2 toView:{x, y}];
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
  be_textInputChild2 = [(WKWebView *)webView2 be_textInputChild];
  [(WKWebView *)webView2 convertPoint:be_textInputChild2 toView:v8, v10];
  v22 = v21;
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.y = v26;
  result.x = v25;
  return result;
}

- (void)_highlightTimerFired:(id)fired
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
  configuration = [(BKContentViewController *)self configuration];
  isScroll = [configuration isScroll];

  result = 0.25;
  if (isScroll)
  {
    return 0.5;
  }

  return result;
}

- (void)__webView2_performHighlighterActionWithGestureState:(int64_t)state location:(CGPoint)location isTouch:(BOOL)touch
{
  if ((state - 4) < 2)
  {
    [(BKHTMLContentViewController *)self removeDummyHighlight:location.x];
    +[UIViewController attemptRotationToDeviceOrientation];

    [(BKHTMLContentViewController *)self _resetInteractionTracking];
    return;
  }

  if (state == 3)
  {
    highlightDummyAnnotation = self->_highlightDummyAnnotation;
    if (highlightDummyAnnotation)
    {
      [(BKHTMLContentViewControllerDummyAnnotation *)highlightDummyAnnotation setRemoved:1, touch, location.x, location.y];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_21D48;
      v53[3] = &unk_1E3230;
      v53[4] = self;
      [(BKHTMLContentViewController *)self _bookmarkSelectionAndAnnotate:0 showColorEditor:0 completion:v53];
    }

    [UIViewController attemptRotationToDeviceOrientation:location.x];
    [(BKHTMLContentViewController *)self _resetInteractionTracking];
    return;
  }

  touchCopy = touch;
  y = location.y;
  x = location.x;
  [(BKHTMLContentViewController *)self _webkit2LocationForContentViewPoint:?];
  v13 = v11;
  v14 = v12;
  v15 = &selRef_hasOriginalFont;
  if (state == 1)
  {
    self->_highlightCancelled = 0;
    self->_highlightStartPoint2.x = v11;
    self->_highlightStartPoint2.y = v12;
    if (touchCopy)
    {
      [(NSTimer *)self->_highlightTimer invalidate];
      [(BKHTMLContentViewController *)self _timeIntervalForHighlightGesture];
      v16 = [NSTimer scheduledTimerWithTimeInterval:self target:"_highlightTimerFired:" selector:0 userInfo:0 repeats:?];
      highlightTimer = self->_highlightTimer;
      self->_highlightTimer = v16;
    }

    be_textInputChild = [(WKWebView *)self->_webView2 be_textInputChild];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_21D50;
    v52[3] = &unk_1E2BD0;
    v52[4] = self;
    [be_textInputChild selectTextWithGranularity:1 atPoint:v52 completionHandler:{v13, v14}];

    v19 = self->_highlightDummyAnnotation;
    self->_highlightDummyAnnotation = 0;
  }

  if (touchCopy && (v14 - self->_highlightStartPoint2.y) * (v14 - self->_highlightStartPoint2.y) + (v13 - self->_highlightStartPoint2.x) * (v13 - self->_highlightStartPoint2.x) < 113.2096)
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

    be_textInputChild2 = [(WKWebView *)self->_webView2 be_textInputChild];
    view = [(BKHTMLContentViewController *)self view];
    [be_textInputChild2 convertPoint:view toView:{x, y}];
    v26 = v25;
    v28 = v27;

    view2 = [(BKHTMLContentViewController *)self view];
    v30 = [view2 hitTest:0 withEvent:{v26, v28}];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_opt_respondsToSelector())
      {
        owner = [v30 owner];
      }

      else
      {
        owner = 0;
      }
    }

    else
    {
      view3 = [(BKHTMLContentViewController *)self view];
      owner = [(BKHTMLContentViewController *)self _annotationUuidIntersectingPoint:view3 inView:0 annotationLayerRect:v26, v28];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v30;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      fetchedObjects = [(NSFetchedResultsController *)self->_highlightsFRC fetchedObjects];
      v34 = [fetchedObjects countByEnumeratingWithState:&v48 objects:v54 count:16];
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
            objc_enumerationMutation(fetchedObjects);
          }

          v38 = *(*(&v48 + 1) + 8 * v37);
          annotationUuid = [v38 annotationUuid];
          v40 = [annotationUuid isEqualToString:owner];

          if (v40)
          {
            break;
          }

          if (v35 == ++v37)
          {
            v35 = [fetchedObjects countByEnumeratingWithState:&v48 objects:v54 count:16];
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
        annotationIsUnderline = [v41 annotationIsUnderline];
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
    annotationIsUnderline = [v41 BOOLForKey:BKDefaultUnderlineState];
LABEL_37:
    [(BKHTMLContentViewControllerDummyAnnotation *)self->_highlightDummyAnnotation setAnnotationIsUnderline:annotationIsUnderline];
  }

  v44 = *(v15 + 880);
  if (self->_highlightDummyAnnotation || [*&self->super.super.IMViewController_opaque[v44] be_hasSelectablePositionAtPoint:{v13, v14}])
  {
    be_textInputChild3 = [*&self->super.super.IMViewController_opaque[v44] be_textInputChild];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_21D80;
    v47[3] = &unk_1E2C20;
    v47[4] = self;
    [be_textInputChild3 updateSelectionWithExtentPoint:1 withBoundary:v47 completionHandler:{v13, v14}];
  }
}

- (void)_handleStylusGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  be_textInputChild = [(WKWebView *)self->_webView2 be_textInputChild];
  [gestureCopy locationInView:be_textInputChild];
  v7 = v6;
  v9 = v8;

  [(BKHTMLContentViewController *)self __webView2_performHighlighterActionWithGestureState:state location:0 isTouch:v7, v9];
}

- (void)_willMoveTextRangeExtentAtPoint:(CGPoint)point
{
  v4 = [(BKContentViewController *)self delegate:point.x];
  if (objc_opt_respondsToSelector())
  {
    [v4 contentViewControllerIgnoreNextSwipe:self];
  }
}

- (BOOL)_hasDraggableSelectionAtPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  be_webSelectionRects = [(WKWebView *)self->_webView2 be_webSelectionRects];
  v6 = [be_webSelectionRects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(be_webSelectionRects);
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

      v6 = [be_webSelectionRects countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (BOOL)shouldHighlightReceiveTouch:(id)touch
{
  touchCopy = touch;
  if ([(UIGestureRecognizer *)self->_indirectHighlightRecognizer state]== UIGestureRecognizerStatePossible && ![(UILongPressGestureRecognizer *)self->_indirectImmediateHighlightRecognizer state])
  {
    webView = [(BKHTMLContentViewController *)self webView];
    [touchCopy locationInView:webView];
    v9 = v8;
    v11 = v10;
    configuration = [(BKContentViewController *)self configuration];
    layout = [configuration layout];

    if ((layout & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [webView bounds];
      v18 = v14;
      v19 = v15;
      v20 = v16;
      v21 = v17;
      if (layout == 2)
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
    webView2 = [(BKHTMLContentViewController *)self webView2];
    be_textInputChild = [webView2 be_textInputChild];

    webView22 = [(BKHTMLContentViewController *)self webView2];
    [webView22 convertPoint:be_textInputChild toView:{v9, v11}];
    v26 = v25;
    v28 = v27;

    v5 = [be_textInputChild hasSelectablePositionAtPoint:{v26, v28}];
    goto LABEL_14;
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (self->_indirectImmediateHighlightRecognizer == recognizerCopy && (-[BKHTMLContentViewController view](self, "view"), v11 = objc_claimAutoreleasedReturnValue(), [touchCopy locationInView:v11], v13 = v12, v15 = v14, v11, -[BKHTMLContentViewController view](self, "view"), v16 = objc_claimAutoreleasedReturnValue(), -[BKHTMLContentViewController _annotationUuidIntersectingPoint:inView:annotationLayerRect:](self, "_annotationUuidIntersectingPoint:inView:annotationLayerRect:", v16, 0, v13, v15), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17))
  {
    v10 = 0;
  }

  else if (self->_indirectHighlightRecognizer == recognizerCopy || self->_indirectImmediateHighlightRecognizer == recognizerCopy)
  {
    v10 = [(BKHTMLContentViewController *)self shouldHighlightReceiveTouch:touchCopy];
  }

  else if (self->_doubleTapGesture == recognizerCopy && -[BKHTMLContentViewController _shouldDoubleTapReceiveTouch:](self, "_shouldDoubleTapReceiveTouch:", touchCopy) || ([touchCopy view], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) != 0))
  {
    v10 = 1;
  }

  else
  {
    view = [touchCopy view];
    [touchCopy locationInView:view];
    v20 = v19;
    v22 = v21;
    view2 = [touchCopy view];
    v24 = [(BKHTMLContentViewController *)self _annotationUuidIntersectingPoint:view2 inView:0 annotationLayerRect:v20, v22];

    v10 = v24 != 0;
  }

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_tapGesture == begin)
  {
    return [(BKHTMLContentViewController *)self preflightTap:?];
  }

  else
  {
    return 1;
  }
}

- (BOOL)gestureRecognizer:(id)recognizer canBePreventedByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  if (![(BKHTMLContentViewController *)self supportsExpandedContent]|| self->_tapGesture == recognizerCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
  }

  else if (self->_doubleTapGesture == recognizerCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = gestureRecognizerCopy;
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
    nextResponder = [(BKHTMLContentViewController *)&v5 nextResponder];
  }

  else
  {
    nextResponder = 0;
  }

  return nextResponder;
}

- (void)menuWillClose:(id)close
{
  [(BKHTMLContentViewController *)self setTempOwnerID:0];

  [(BKHTMLContentViewController *)self resignFirstResponder];
}

- (void)showHighlightingMenuForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  delegate = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate contentViewController:self showHighlightingMenuForAnnotation:annotationCopy];
  }
}

- (void)_showMenuForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!+[BKBookViewController useEnhancedEditMenu])
  {
    v9 = +[UIMenuController sharedMenuController];
    view = [(BKHTMLContentViewController *)self view];
    [v9 showMenuFromView:view rect:{x, y, width, height}];
  }
}

- (void)selectLocation:(id)location completion:(id)completion
{
  locationCopy = location;
  completionCopy = completion;
  objc_opt_class();
  v8 = BUDynamicCast();
  if (v8)
  {
    objc_initWeak(&location, self);
    webView2 = self->_webView2;
    cfiString = [v8 cfiString];
    v11 = [NSString stringWithFormat:@"__ibooks_cfi_utilities.setSelectedRange('%@')", cfiString];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_22890;
    v12[3] = &unk_1E3280;
    objc_copyWeak(&v14, &location);
    v13 = completionCopy;
    [(WKWebView *)webView2 evaluateJavaScript:v11 completionHandler:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (void)selectAnnotation:(id)annotation
{
  selectedAnnotation = [(BKHTMLContentViewController *)self selectedAnnotation];
  location = [selectedAnnotation location];
  [(BKHTMLContentViewController *)self selectLocation:location completion:0];
}

- (AEHighlightRenderingController)highlightRenderingController
{
  highlightRenderingController = self->_highlightRenderingController;
  if (!highlightRenderingController)
  {
    v4 = objc_alloc_init(AEHighlightRenderingController);
    v5 = self->_highlightRenderingController;
    self->_highlightRenderingController = v4;

    theme = [(BKHTMLContentViewController *)self theme];
    -[AEHighlightRenderingController setAnnotationBlendMode:](self->_highlightRenderingController, "setAnnotationBlendMode:", [theme annotationBlendMode]);

    theme2 = [(BKHTMLContentViewController *)self theme];
    -[AEHighlightRenderingController setPageTheme:](self->_highlightRenderingController, "setPageTheme:", [theme2 annotationPageTheme]);

    theme3 = [(BKHTMLContentViewController *)self theme];
    if ([theme3 shouldInvertContent])
    {
      configuration = [(BKContentViewController *)self configuration];
      -[AEHighlightRenderingController setDrawSpecialGrayHighlights:](self->_highlightRenderingController, "setDrawSpecialGrayHighlights:", [configuration isScroll] ^ 1);
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
  isProtected = [(AEBookInfo *)self->super._book isProtected];
  if (isProtected && (+[AEAssetEngine storeMgr](AEAssetEngine, "storeMgr"), v2 = objc_claimAutoreleasedReturnValue(), [v2 clientApplicationController], v3 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v3, "allowCitationForProtectedBooks")))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    sampleContent = [(AEBookInfo *)self->super._book sampleContent];
    v7 = [sampleContent BOOLValue] ^ 1;

    if (!isProtected)
    {
      return v7;
    }
  }

  return v7;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  hasTextSelected = [(BKHTMLContentViewController *)self hasTextSelected];
  be_hasSelection = [(WKWebView *)self->_webView2 be_hasSelection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  selectedText = [(BKHTMLContentViewController *)self selectedText];
  annotationSelectedText = selectedText;
  v13 = isKindOfClass ^ 1;
  if (((isKindOfClass ^ 1) & 1) == 0 && (v10 & 1) == 0 && (hasTextSelected & be_hasSelection & 1) == 0)
  {
    v35 = be_hasSelection;
    v36 = v10;
    v14 = selectedText;
    annotations = [(BKHTMLContentViewController *)self annotations];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_23094;
    v38[3] = &unk_1E32A8;
    v38[4] = self;
    v16 = [NSPredicate predicateWithBlock:v38];
    v17 = [annotations filteredArrayUsingPredicate:v16];
    firstObject = [v17 firstObject];

    if (firstObject)
    {
      annotationSelectedText = [firstObject annotationSelectedText];

      hasTextSelected = 1;
    }

    else
    {
      annotationSelectedText = v14;
    }

    be_hasSelection = v35;
    v10 = v36;
  }

  if ("selectAnnotation:" == action)
  {
    if ((v13 | hasTextSelected))
    {
      goto LABEL_35;
    }

LABEL_23:
    supportsNotesAndHighlights = [(BKHTMLContentViewController *)self supportsNotesAndHighlights];
    goto LABEL_24;
  }

  if ("selectBookmarkedLink:" == action)
  {
    loader = [(BKHTMLContentViewController *)self loader];
    currentSelectionContainsAnchor = [loader currentSelectionContainsAnchor];
LABEL_26:
    v20 = currentSelectionContainsAnchor;
LABEL_27:

    goto LABEL_36;
  }

  if ("annotateSelection:" == action)
  {
    if ([(BKHTMLContentViewController *)self supportsNotesAndHighlights])
    {
      v20 = v10 | be_hasSelection;
      if ((v10 | be_hasSelection | v13))
      {
        goto LABEL_36;
      }

      loader = [(BKHTMLContentViewController *)self selectedAnnotation];
      annotationNote = [loader annotationNote];
      v20 = [annotationNote length] == 0;

      goto LABEL_27;
    }

LABEL_35:
    v20 = 0;
    goto LABEL_36;
  }

  if ("bookmarkSelection:" == action)
  {
    if (((v10 | be_hasSelection) & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_23;
  }

  if ("lookupSelection:" == action)
  {
    if ((v10 | hasTextSelected))
    {
      v20 = [annotationSelectedText tokenCountWithEnumerationOptions:3 maxTokenCount:4 outLimitLength:0] < 4;
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if ("searchUsingSelection:" == action || "books_useSelectionForFind:" == action)
  {
    v20 = v10 | hasTextSelected;
    goto LABEL_36;
  }

  if ("translateSelection:" == action)
  {
    book = [(BKContentViewController *)self book];
    v26 = [BKBookViewController areCitationsAllowedForBook:book];

    v20 = hasTextSelected & v26;
    goto LABEL_36;
  }

  if ("shareSelection:" != action && "_share:" != action && "copyContent:" != action && "copy:" != action)
  {
    if ("endOfBook:" != action)
    {
      v37.receiver = self;
      v37.super_class = BKHTMLContentViewController;
      supportsNotesAndHighlights = [(BKHTMLContentViewController *)&v37 canPerformAction:action withSender:senderCopy];
LABEL_24:
      v20 = supportsNotesAndHighlights;
      goto LABEL_36;
    }

    loader = +[NSUserDefaults standardUserDefaults];
    currentSelectionContainsAnchor = [loader BOOLForKey:@"BKAllowEndOfBookDebugMenu"];
    goto LABEL_26;
  }

  v27 = v10 | hasTextSelected;
  book2 = [(BKContentViewController *)self book];
  v29 = [BKBookViewController areCitationsAllowedForBook:book2];

  delegate = [(BKContentViewController *)self delegate];
  if (delegate)
  {
    delegate2 = [(BKContentViewController *)self delegate];
    v32 = [delegate2 isAnnotationSharingSupportedForContentViewController:self];
  }

  else
  {
    v32 = 1;
  }

  v20 = v27 & v29 & v32;
  if ("shareSelection:" != action && "_share:" != action)
  {
    v34 = "copyContent:" == action || "copy:" == action;
    v20 = v34 & v29;
  }

LABEL_36:

  return v20 & 1;
}

- (void)endOfBook:(id)book
{
  bookCopy = book;
  delegate = [(BKContentViewController *)self delegate];
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

- (void)lookupSelection:(id)selection
{
  selectionCopy = selection;
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
    v32 = selectionCopy;
    v10 = [(BKHTMLContentViewController *)self _payloadForKey:@"lookUpTerm" fromSender:selectionCopy];
    if ([v10 length])
    {
      annotations = [(BKHTMLContentViewController *)self annotations];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_23BC0;
      v33[3] = &unk_1E32A8;
      v34 = v7;
      v12 = [NSPredicate predicateWithBlock:v33];
      v13 = [annotations filteredArrayUsingPredicate:v12];
      firstObject = [v13 firstObject];

      annotationRectUnionCache = [(BKHTMLContentViewController *)self annotationRectUnionCache];
      annotationLocation = [firstObject annotationLocation];
      v17 = [annotationRectUnionCache objectForKeyedSubscript:annotationLocation];
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
      be_contentView = [(WKWebView *)self->_webView2 be_contentView];
      [be_contentView addSubview:v30];

      (v8[2])(v8, v10, v30, 1);
    }

    else
    {
      (v9[2])(v9);
    }

    selectionCopy = v32;
  }

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(location);
}

- (id)_rectsFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = dictionaryCopy;
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

- (void)translateSelection:(id)selection
{
  delegate = [(BKContentViewController *)self delegate];
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

- (void)dummyAnnotationForSelectionWK2WithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_24134;
  v4[3] = &unk_1E33C0;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(BKHTMLContentViewController *)selfCopy _contentForSelectedRangeWithCompletion:v4];
}

- (void)searchUsingSelection:(id)selection
{
  selectionCopy = selection;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_24700;
  v5[3] = &unk_1E33E8;
  objc_copyWeak(&v6, &location);
  [(BKHTMLContentViewController *)self _extractSelectedTextWithSender:selectionCopy completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_extractSelectedTextWithSender:(id)sender completion:(id)completion
{
  senderCopy = sender;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_24904;
  v15 = &unk_1E3438;
  selfCopy = self;
  completionCopy = completion;
  v17 = completionCopy;
  v8 = objc_retainBlock(&v12);
  if ([(BKHTMLContentViewController *)self hasTextSelected:v12])
  {
    (v8[2])(v8);
  }

  else
  {
    v9 = [(BKHTMLContentViewController *)self _payloadForKey:@"searchTerm" fromSender:senderCopy];
    if ([v9 length])
    {
      v10 = objc_retainBlock(completionCopy);
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

- (void)books_useSelectionForFind:(id)find
{
  findCopy = find;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_24B28;
  v5[3] = &unk_1E33E8;
  objc_copyWeak(&v6, &location);
  [(BKHTMLContentViewController *)self _extractSelectedTextWithSender:findCopy completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)shareSelection:(id)selection
{
  selectionCopy = selection;
  selectedAnnotation = [(BKHTMLContentViewController *)self selectedAnnotation];
  v6 = selectedAnnotation;
  if (selectedAnnotation)
  {
    location = [selectedAnnotation location];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_24E6C;
    v8[3] = &unk_1E3488;
    v8[4] = self;
    v9 = v6;
    [(BKHTMLContentViewController *)self visibleRectForLocation:location completion:v8];
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

- (void)_shareAnnotation:(id)annotation annotationRects:(id)rects
{
  annotationCopy = annotation;
  rectsCopy = rects;
  delegate = [(BKContentViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    objc_initWeak(&location, self);
    delegate2 = [(BKContentViewController *)self delegate];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_25060;
    v11[3] = &unk_1E34B0;
    objc_copyWeak(&v12, &location);
    [delegate2 contentViewController:self shareAnnotation:annotationCopy annotationRects:rectsCopy completion:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_bookmarkSelectionAndAnnotate:(BOOL)annotate showColorEditor:(BOOL)editor completion:(id)completion
{
  completionCopy = completion;
  delegate = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate clearSearchResultForContentViewController:self];
  }

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_25210;
  v11[3] = &unk_1E3528;
  objc_copyWeak(&v13, &location);
  v10 = completionCopy;
  v12 = v10;
  annotateCopy = annotate;
  editorCopy = editor;
  [(BKHTMLContentViewController *)self _contentForSelectedRangeWithCompletion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_combineAnnotation:(id)annotation withAnnotation:(id)withAnnotation
{
  annotationCopy = annotation;
  withAnnotationCopy = withAnnotation;
  if (annotationCopy != withAnnotationCopy)
  {
    annotationNote = [annotationCopy annotationNote];
    v8 = [annotationNote length];

    if (v8)
    {
      annotationNote2 = [withAnnotationCopy annotationNote];
      if ([annotationNote2 length])
      {
        annotationNote3 = [annotationCopy annotationNote];
        annotationNote4 = [NSString stringWithFormat:@"%@\n\n%@", annotationNote2, annotationNote3];

        annotationNote2 = annotationNote3;
      }

      else
      {
        annotationNote4 = [annotationCopy annotationNote];
      }

      [withAnnotationCopy setAnnotationNote:annotationNote4];
    }

    book = [(BKContentViewController *)self book];
    [book deleteAnnotation:annotationCopy];
  }
}

- (void)_showAnnotationWithState:(BOOL)state showColorEditor:(BOOL)editor forAnnotation:(id)annotation
{
  editorCopy = editor;
  stateCopy = state;
  annotationCopy = annotation;
  [(BKHTMLContentViewController *)self clearSelection];
  delegate = [(BKContentViewController *)self delegate];
  if (stateCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate contentViewController:self showNoteForAnnotation:annotationCopy];
    }
  }

  else
  {
    if (editorCopy)
    {
      [(BKHTMLContentViewController *)self showHighlightingMenuForAnnotation:annotationCopy];
    }

    managedObjectContext = [annotationCopy managedObjectContext];
    v13 = 0;
    v11 = [managedObjectContext save:&v13];
    v12 = v13;

    if ((v11 & 1) == 0 && v12)
    {
      NSLog(@"Error Saving Annotation MOC: %@", v12);
    }

    if (objc_opt_respondsToSelector())
    {
      [delegate paginationUpdateRequiredForContentViewController:self];
    }
  }
}

- (void)selectBookmarkedLink:(id)link
{
  loader = [(BKHTMLContentViewController *)self loader];
  currentSelectionContainsAnchor = [loader currentSelectionContainsAnchor];

  if (currentSelectionContainsAnchor)
  {
    webView2 = [(BKHTMLContentViewController *)self webView2];
    [webView2 evaluateJavaScript:@"__ibooks_content_support.clickFirstAnchorInSelection()" completionHandler:0];
  }
}

- (void)_contentForSelectedRangeWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_opt_class();
  tempOwnerID = [(BKHTMLContentViewController *)self tempOwnerID];
  v6 = BUDynamicCast();

  objc_initWeak(&location, self);
  v7 = self->_webView2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_26194;
  v11[3] = &unk_1E3578;
  objc_copyWeak(&v15, &location);
  v8 = completionCopy;
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

- (void)pageOffsetRangeForLocation:(id)location completion:(id)completion
{
  completionCopy = completion;
  locationCopy = location;
  loader = [(BKHTMLContentViewController *)self loader];
  [loader pageOffsetRangeForLocation:locationCopy completion:completionCopy];
}

- (BOOL)isLocationFromThisDocument:(id)document
{
  documentCopy = document;
  ordinal = [documentCopy ordinal];
  if (ordinal == [(BKContentViewController *)self ordinal])
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      path = [documentCopy path];
      document = [(BKContentViewController *)self document];
      href = [document href];
      v6 = [path isEqualToString:href];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)isLocationOnCurrentPage:(id)page
{
  pageCopy = page;
  if ([(BKContentViewController *)self pageOffset]< 0 || [(BKContentViewController *)self pageOffset]== 0x7FFFFFFFFFFFFFFFLL || ![(BKHTMLContentViewController *)self isLocationFromThisDocument:pageCopy])
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    objc_opt_class();
    v5 = BUDynamicCast();
    if (v5)
    {
      loader = [(BKHTMLContentViewController *)self loader];
      currentVisbleCFILocation = [loader currentVisbleCFILocation];
      v8 = [currentVisbleCFILocation cfi];
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
      loader2 = [(BKHTMLContentViewController *)self loader];
      currentVisbleCFILocation2 = [loader2 currentVisbleCFILocation];
      v15 = [NSNumber numberWithBool:v10];
      v16 = 138412802;
      v17 = currentVisbleCFILocation2;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "isLocationOnCurrentPage: currentVisibleCFI:%@ forLocation:%@ isVisible:%@", &v16, 0x20u);
    }
  }

  return v10;
}

- (void)isLocationVisible:(id)visible annotation:(id)annotation completion:(id)completion
{
  visibleCopy = visible;
  completionCopy = completion;
  if ([(BKContentViewController *)self pageOffset]< 0 || [(BKContentViewController *)self pageOffset]== 0x7FFFFFFFFFFFFFFFLL || ![(BKHTMLContentViewController *)self isLocationFromThisDocument:visibleCopy])
  {
    v9 = objc_retainBlock(completionCopy);
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
    v12 = visibleCopy;
    v13 = completionCopy;
    [(BKHTMLContentViewController *)self visibleRectForLocation:v12 completion:v11];
  }
}

- (BOOL)isAnnotationVisible:(id)visible
{
  visibleCopy = visible;
  v5 = visibleCopy;
  if (visibleCopy)
  {
    location = [visibleCopy location];
    v7 = [(BKHTMLContentViewController *)self isLocationFromThisDocument:location];

    if (v7)
    {
      annotationLocation = [v5 annotationLocation];
      if (annotationLocation)
      {
        annotationRectUnionCache = [(BKHTMLContentViewController *)self annotationRectUnionCache];
        v10 = [annotationRectUnionCache objectForKeyedSubscript:annotationLocation];

        if (v10)
        {
          configuration = [(BKContentViewController *)self configuration];
          if ([configuration isScroll])
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

- (CGRect)cachedRectForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v5 = annotationCopy;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if (annotationCopy)
  {
    location = [annotationCopy location];
    v11 = [(BKHTMLContentViewController *)self isLocationFromThisDocument:location];

    if (v11)
    {
      annotationLocation = [v5 annotationLocation];
      if (annotationLocation)
      {
        annotationRectUnionCache = [(BKHTMLContentViewController *)self annotationRectUnionCache];
        v14 = [annotationRectUnionCache objectForKeyedSubscript:annotationLocation];

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

- (CGRect)cachedVisibleRectForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v5 = annotationCopy;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if (annotationCopy)
  {
    location = [annotationCopy location];
    v11 = [(BKHTMLContentViewController *)self isLocationFromThisDocument:location];

    if (v11)
    {
      annotationLocation = [v5 annotationLocation];
      annotationRectsCache = [(BKHTMLContentViewController *)self annotationRectsCache];
      v14 = [annotationRectsCache objectForKeyedSubscript:annotationLocation];

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

  pageProgressionDirection = [(BKContentViewController *)self pageProgressionDirection];
  if (pageProgressionDirection == 1)
  {
    if ([(BKContentViewController *)self pageOffset]<= 0)
    {
      return 1;
    }
  }

  else
  {
    if (pageProgressionDirection)
    {
      return 1;
    }

    totalPages = [(BKHTMLContentViewController *)self totalPages];
    if (totalPages < [(BKContentViewController *)self pageOffset]+ 2)
    {
      return 1;
    }
  }

  return 2;
}

- (void)setOrdinal:(int64_t)ordinal
{
  v6.receiver = self;
  v6.super_class = BKHTMLContentViewController;
  if ([(BKContentViewController *)&v6 ordinal]!= ordinal)
  {
    v5.receiver = self;
    v5.super_class = BKHTMLContentViewController;
    [(BKContentViewController *)&v5 setOrdinal:ordinal];
    [(BKContentViewController *)self setTotalPages:-1];
    [(BKContentViewController *)self setContentLoaded:0];
    [(BKContentViewController *)self setContentLoadPending:0];
    [(BKHTMLContentViewController *)self _updateReadingStateVisibilityPossible:0];
  }
}

- (id)currentLocation
{
  contentView = [(BKHTMLContentViewController *)self contentView];
  if (contentView && (v4 = contentView, v5 = [(BKContentViewController *)self isContentLoaded], v4, v5))
  {
    loader = [(BKHTMLContentViewController *)self loader];
    currentFirstVisbleCFILocation = [loader currentFirstVisbleCFILocation];
  }

  else
  {
    currentFirstVisbleCFILocation = 0;
  }

  return currentFirstVisbleCFILocation;
}

- (void)contentReady
{
  v5.receiver = self;
  v5.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v5 contentReady];
  searchLocation = [(BKContentViewController *)self searchLocation];

  if (searchLocation)
  {
    searchLocation2 = [(BKContentViewController *)self searchLocation];
    [(BKHTMLContentViewController *)self highlightSearchLocation:searchLocation2];
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
    loader = [(BKHTMLContentViewController *)self loader];
    webView = [loader webView];
    [webView _suspendAllMediaPlayback];

    loader2 = [(BKHTMLContentViewController *)self loader];
    [loader2 unregisterForVisibleCFIUpdates];
  }
}

- (void)resume
{
  if ([(BKContentViewController *)self isContentLoaded])
  {
    loader = [(BKHTMLContentViewController *)self loader];
    webView = [loader webView];
    [webView _resumeAllMediaPlayback];

    loader2 = [(BKHTMLContentViewController *)self loader];
    [loader2 registerForVisibleCFIUpdates];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v3 prepareForReuse];
  [(BKHTMLContentViewController *)self _updateReadingStateVisibilityPossible:0];
}

- (void)_updateReadingStateVisibilityPossible:(BOOL)possible knownDOMRange:(id)range
{
  possibleCopy = possible;
  v6 = [(BKContentViewController *)self delegate:possible];
  v34 = [v6 assetViewControllerDelegateForContentViewController:self];

  if ([v34 readingStatisticsEnabled])
  {
    if (possibleCopy && -[BKContentViewController isContentLoaded](self, "isContentLoaded") && -[BKHTMLContentViewController isViewLoaded](self, "isViewLoaded") && (-[BKHTMLContentViewController view](self, "view"), v7 = objc_claimAutoreleasedReturnValue(), [v7 window], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      view = [(BKHTMLContentViewController *)self view];
      view2 = [(BKHTMLContentViewController *)self view];
      [view2 bounds];
      [view convertRect:0 toView:?];
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

      cfiString = 0;
      if (width > 0.0 && height > 0.0)
      {
        loader = [(BKHTMLContentViewController *)self loader];
        currentVisbleCFILocation = [loader currentVisbleCFILocation];

        ensureRange = [currentVisbleCFILocation ensureRange];
        cfiString = [ensureRange cfiString];
      }
    }

    else
    {
      cfiString = 0;
    }

    visibleCFIString = [(BKHTMLContentViewController *)self visibleCFIString];
    v27 = [visibleCFIString isEqualToString:cfiString];

    if ((v27 & 1) == 0)
    {
      visibleCFIString2 = [(BKHTMLContentViewController *)self visibleCFIString];
      v29 = [visibleCFIString2 length];

      if (v29)
      {
        visibleCFIString3 = [(BKHTMLContentViewController *)self visibleCFIString];
        v31 = [BCCFISet cfiSetWithCFIString:visibleCFIString3];

        if (v31)
        {
          [v34 assetViewController:0 willHideContentWithCFIs:v31];
        }
      }

      [(BKHTMLContentViewController *)self setVisibleCFIString:cfiString];
      if ([cfiString length])
      {
        visibleCFIString4 = [(BKHTMLContentViewController *)self visibleCFIString];
        v33 = [BCCFISet cfiSetWithCFIString:visibleCFIString4];

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
  selectedText = [(BKHTMLContentViewController *)self selectedText];
  v3 = [selectedText length] != 0;

  return v3;
}

- (id)selectedTextForAccessibility
{
  loader = [(BKHTMLContentViewController *)self loader];
  currentTextSelection = [loader currentTextSelection];

  return currentTextSelection;
}

- (void)stopPlayingMedia:(BOOL)media
{
  v5 = [&off_1F1768 mutableCopy];
  v8 = v5;
  if (!media)
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
  theme = [(BKHTMLContentViewController *)self theme];
  shouldInvertContent = [theme shouldInvertContent];

  return shouldInvertContent ^ 1;
}

- (id)_errorForURL:(id)l
{
  v17 = [objc_opt_class() description];
  v16 = [NSNumber numberWithBool:l != 0];
  v5 = [NSNumber numberWithBool:self->super._book != 0];
  v6 = [NSNumber numberWithInteger:self->super._ordinal];
  databaseKey = [(AEBookInfo *)self->super._book databaseKey];
  if (databaseKey)
  {
    databaseKey2 = [(AEBookInfo *)self->super._book databaseKey];
  }

  else
  {
    databaseKey2 = @"<nil>";
  }

  bookTitle = [(AEBookInfo *)self->super._book bookTitle];
  if (bookTitle)
  {
    bookTitle2 = [(AEBookInfo *)self->super._book bookTitle];
  }

  else
  {
    bookTitle2 = @"<nil>";
  }

  bookBundlePath = [(AEBookInfo *)self->super._book bookBundlePath];
  if (bookBundlePath)
  {
    bookBundlePath2 = [(AEBookInfo *)self->super._book bookBundlePath];
  }

  else
  {
    bookBundlePath2 = @"<nil>";
  }

  v13 = [NSDictionary dictionaryWithObjectsAndKeys:v16, @"url!=nil", v5, @"_book!=nil", v6, @"_ordinal", databaseKey2, @"_book.databaseKey", bookTitle2, @"_book.bookTitle", bookBundlePath2, @"_book.bookBundlePath", 0];
  v14 = [NSError errorWithDomain:v17 code:1 userInfo:v13];

  if (bookBundlePath)
  {
  }

  if (bookTitle)
  {
  }

  if (databaseKey)
  {
  }

  return v14;
}

- (id)URLForLoadingDocument
{
  book = self->super._book;
  document = [(BKContentViewController *)self document];
  v4 = [(AEBookInfo *)book urlForDocument:document];

  return v4;
}

- (void)load
{
  v10.receiver = self;
  v10.super_class = BKHTMLContentViewController;
  [(BKContentViewController *)&v10 load];
  if ([(BKContentViewController *)self isContentLoaded])
  {
    be_navigationHandler = [(WKWebView *)self->_webView2 be_navigationHandler];
    delegate = [(WKWebView *)self->_webView2 URL];
    [(BKHTMLContentViewController *)self navigationHandler:be_navigationHandler didFinishLoadOfURL:delegate];
LABEL_7:

    goto LABEL_8;
  }

  be_navigationHandler = [(BKHTMLContentViewController *)self URLForLoadingDocument];
  if (!be_navigationHandler)
  {
    [(BKContentViewController *)self setContentLoadPending:0];
    delegate = [(BKContentViewController *)self delegate];
    v9 = [(BKHTMLContentViewController *)self _errorForURL:0];
    [delegate contentViewFailedToLoad:self error:v9];

    goto LABEL_7;
  }

  [(BKHTMLContentViewController *)self _recheckRemoveAccessApproval];
  v5 = [(WKWebView *)self->_webView2 URL];
  v6 = [v5 be_isEquivalentToURL:be_navigationHandler ignoringFragment:0];

  if ((v6 & 1) == 0)
  {
    webView2 = self->_webView2;
    delegate = [NSURLRequest requestWithURL:be_navigationHandler];
    v8 = [(WKWebView *)webView2 loadRequest:delegate];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_recheckRemoveAccessApproval
{
  document = [(BKContentViewController *)self document];

  if (document)
  {
    if (self->_webView2)
    {
      book = [(BKContentViewController *)self book];
      cacheItem = [book cacheItem];
      contentBlockingRule = [cacheItem contentBlockingRule];

      objc_initWeak(&location, self->_webView2);
      v7 = +[BEContentBlockingRules sharedInstance];
      v8 = objc_loadWeakRetained(&location);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_27F58;
      v9[3] = &unk_1E3608;
      objc_copyWeak(&v10, &location);
      [v7 applyContentBlockingRule:contentBlockingRule toWebView:v8 completion:v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_229400 == context)
  {
    if ([path isEqualToString:{BEDocumentExternalLoadApprovalCacheDefaultsClearKey, object, change}])
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
    [(BKHTMLContentViewController *)&v7 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v8 = coordinatorCopy;
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
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

- (id)objectForMatchingAnnotation:(id)annotation
{
  annotationCopy = annotation;
  annotationRectUnionCache = [(BKHTMLContentViewController *)self annotationRectUnionCache];
  v6 = [annotationCopy objectForKeyedSubscript:@"annotationLocation"];
  v7 = [annotationRectUnionCache objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = +[NSMutableDictionary dictionary];
    v9 = [annotationCopy objectForKeyedSubscript:@"annotationSelectedText"];
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

    v12 = [annotationCopy objectForKeyedSubscript:@"annotationLocation"];
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

- (void)writeAnnotationsToWebProcessPlugin:(id)plugin andHighlights:(id)highlights
{
  highlightsCopy = highlights;
  pluginCopy = plugin;
  webView2 = [(BKHTMLContentViewController *)self webView2];
  webView22 = [(BKHTMLContentViewController *)self webView2];
  v10 = [webView22 be_updateAXValueForMessage:pluginCopy];

  [webView2 be_updateAXCurrentReadingStateWithMessage:@"BEWebProcessPluginBookmarkStateParameterKey" forValue:v10];
  webView23 = [(BKHTMLContentViewController *)self webView2];
  webView24 = [(BKHTMLContentViewController *)self webView2];
  v12 = [webView24 be_updateAXValueForMessage:highlightsCopy];

  [webView23 be_updateAXCurrentReadingStateWithMessage:@"BEWebProcessPluginAnnotationParameterKey" forValue:v12];
}

- (void)writeControlVisibilityStateToWebProcessPlugin:(BOOL)plugin
{
  pluginCopy = plugin;
  webView2 = [(BKHTMLContentViewController *)self webView2];
  webView22 = [(BKHTMLContentViewController *)self webView2];
  v6 = [NSNumber numberWithBool:pluginCopy];
  v7 = [webView22 be_updateAXValueForMessage:v6];
  [webView2 be_updateAXCurrentReadingStateWithMessage:@"BEWebProcessPluginHasVisibleControlsParameterKey" forValue:v7];
}

- (void)navigationHandler:(id)handler handleUserRequestForFrameToLoadExternalURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  delegate = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate contentViewController:self handleUserRequestForFrameToLoadExternalURL:lCopy completion:completionCopy];
  }

  else
  {
    v9 = objc_retainBlock(completionCopy);

    if (v9)
    {
      v9[2](v9, 0);
    }

    completionCopy = v9;
  }
}

- (void)navigationHandler:(id)handler handleExternalLoadRequest:(id)request likelyUserInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  requestCopy = request;
  delegate = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate contentViewController:self goToURL:requestCopy likelyUserInitiated:initiatedCopy];
  }
}

- (BOOL)navigationHandler:(id)handler handleInternalLoadRequest:(id)request
{
  requestCopy = request;
  book = self->super._book;
  document = [(BKContentViewController *)self document];
  v8 = [(AEBookInfo *)book urlForDocument:document];
  v9 = [requestCopy be_isEquivalentToURL:v8 ignoringFragment:0];

  if (v9)
  {
    [(WKWebView *)self->_webView2 setHidden:1];
  }

  else
  {
    if ([(BKHTMLContentViewController *)self shouldShowExpandedContentForURL:requestCopy])
    {
      delegate2 = [BKExpandedContentResource resourceForURL:requestCopy];
      book = [(BKContentViewController *)self book];
      cacheItem = [book cacheItem];
      [delegate2 setCacheItem:cacheItem];

      if (BEDoesURLPointToUSDZFile())
      {
        absoluteURL = [requestCopy absoluteURL];
        standardizedURL = [absoluteURL standardizedURL];
        v15 = BEURLHandlerAssetInfoPathForBookURL();
        [delegate2 setSourceURL:v15];
      }

      delegate = [(BKContentViewController *)self delegate];
      [delegate contentViewController:self showExpandedContentForResource:delegate2 atLocation:0];
    }

    else
    {
      delegate2 = [(BKContentViewController *)self delegate];
      [delegate2 contentViewController:self goToURL:requestCopy likelyUserInitiated:0];
    }
  }

  return v9;
}

- (void)navigationHandler:(id)handler didFinishLoadOfURL:(id)l
{
  [(BKContentViewController *)self setTotalPages:[(BKWK2WebViewLoader *)self->_loader pageCount:handler]];
  delegate = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate contentViewControllerDidFinishLayout:self];
  }

  [(BKHTMLContentViewController *)self stopActivityIndicator:1];
}

- (void)navigationHandlerFirstSignificantPaintCompleted:(id)completed
{
  self->_firstSignificantPaintCompleted = 1;
  locationEnsuredFirstPaintWorkBlock = [(BKHTMLContentViewController *)self locationEnsuredFirstPaintWorkBlock];
  if (locationEnsuredFirstPaintWorkBlock)
  {
    [(BKHTMLContentViewController *)self setLocationEnsuredFirstPaintWorkBlock:0];
    webView2 = self->_webView2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_28A4C;
    v6[3] = &unk_1E2E08;
    v7 = locationEnsuredFirstPaintWorkBlock;
    [(WKWebView *)webView2 _doAfterNextStablePresentationUpdate:v6];
  }
}

- (void)navigationHandlerWebContentProcessAttemptingReload:(id)reload
{
  v4 = _AEBookPluginsLifeCycleLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Content for %@ Attempting reload", &v6, 0xCu);
  }

  delegate = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate contentViewControllerAttemptingReload:self];
  }
}

- (void)navigationHandlerWebContentLoadFailed:(id)failed reason:(id)reason
{
  reasonCopy = reason;
  [(BKHTMLContentViewController *)self setLoadFailureCount:[(BKHTMLContentViewController *)self loadFailureCount]+ 1];
  v6 = _AEBookPluginsLifeCycleLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [NSNumber numberWithUnsignedInteger:[(BKHTMLContentViewController *)self loadFailureCount]];
    v9 = 138412802;
    selfCopy = self;
    v11 = 2112;
    v12 = reasonCopy;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Content for %@ crashed with reason %@ - %@", &v9, 0x20u);
  }

  delegate = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate contentViewController:self encounteredIssueWithContent:reasonCopy failureCount:{-[BKHTMLContentViewController loadFailureCount](self, "loadFailureCount")}];
  }
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  body = [messageCopy body];
  v7 = BUDynamicCast();

  name = [messageCopy name];

  delegate = [(BKContentViewController *)self delegate];
  if ([name isEqualToString:@"showAside"])
  {
    be_selectionRects = objc_alloc_init(BKExpandedContentResource);
    objc_opt_class();
    v11 = [v7 objectForKeyedSubscript:@"documentURL"];
    v12 = BUDynamicCast();

    if (v12)
    {
      v13 = [NSURL URLWithString:v12];
      [(BKExpandedContentResource *)be_selectionRects setSourceURL:v13];
    }

    objc_opt_class();
    v14 = [v7 objectForKeyedSubscript:@"html"];
    v15 = BUDynamicCast();
    [(BKExpandedContentResource *)be_selectionRects setResource:v15];

    objc_opt_class();
    v16 = [v7 objectForKeyedSubscript:@"title"];
    v17 = BUDynamicCast();
    [(BKExpandedContentResource *)be_selectionRects setTitle:v17];

    objc_opt_class();
    v18 = [v7 objectForKeyedSubscript:@"contentType"];
    v19 = BUDynamicCast();
    [(BKExpandedContentResource *)be_selectionRects setContentType:v19];

    configuration = [(BKContentViewController *)self configuration];
    [configuration fontSize];
    [(BKExpandedContentResource *)be_selectionRects setZoomScale:?];

    book = [(BKContentViewController *)self book];
    cacheItem = [book cacheItem];
    [(BKExpandedContentResource *)be_selectionRects setCacheItem:cacheItem];

    objc_opt_class();
    v23 = [v7 objectForKeyedSubscript:@"rect"];
    v24 = BUDynamicCast();

    if (v24)
    {
      v40 = v24;
      v25 = [NSArray arrayWithObjects:&v40 count:1];
      loader = [(BKHTMLContentViewController *)self loader];
      v27 = +[BEJavascriptUtilities collapsedLineRectsFromArrayOfRectDictionaries:isVerticalDocument:](BEJavascriptUtilities, "collapsedLineRectsFromArrayOfRectDictionaries:isVerticalDocument:", v25, [loader isVerticalDocument]);

      v28 = [(BKHTMLContentViewController *)self _highlightRects:v27 withHighlightType:[(BKContentViewController *)self selectionHighlightType] owner:0 forWK2:1 clearSelection:0];
      if (objc_opt_respondsToSelector())
      {
        firstObject = [(NSMutableArray *)self->super._highlightViews firstObject];
        stylesheetSet = [(BKHTMLContentViewController *)self stylesheetSet];
        [delegate showFootnoteInContentViewController:self resource:be_selectionRects fromView:firstObject stylesheetSet:stylesheetSet];
      }
    }

    goto LABEL_9;
  }

  if ([name isEqualToString:@"toggleBookmark"])
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate toggleBookmarkForContentViewController:self];
    }
  }

  else if ([name isEqualToString:@"toggleControlsVisibility"])
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate toggleControlsForContentViewController:self];
    }
  }

  else
  {
    if ([name isEqualToString:@"showHighlightMenu"])
    {
      webView2 = [(BKHTMLContentViewController *)self webView2];
      be_selectionRects = [webView2 be_selectionRects];

      if ([(BKExpandedContentResource *)be_selectionRects count])
      {
        firstObject2 = [(BKExpandedContentResource *)be_selectionRects firstObject];
        [firstObject2 CGRectValue];
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

    if ([name isEqualToString:@"turnPage"])
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_10;
      }

      objc_opt_class();
      v37 = [v7 objectForKeyedSubscript:@"direction"];
      be_selectionRects = BUDynamicCast();

      [delegate contentViewController:self navigatePageDirection:be_selectionRects];
      goto LABEL_9;
    }

    if ([name isEqualToString:@"checkOperation"])
    {
      [(BKHTMLContentViewController *)self _bkaxCheckCanPerformEditActions];
    }

    else if ([name isEqualToString:@"performOperation"])
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
    book = [(BKContentViewController *)self book];
    mediaActiveClass = [book mediaActiveClass];
    v6 = [BKReadAloudEventHandler readAloudEventHandlerWithMediaClass:mediaActiveClass delegate:self];
    v7 = self->_readAloudEventHandler;
    self->_readAloudEventHandler = v6;

    readAloudEventHandler = self->_readAloudEventHandler;
  }

  return readAloudEventHandler;
}

- (void)_bkaxPerformEditAction:(id)action
{
  actionCopy = action;
  v5 = AEBundle();
  v6 = [v5 localizedStringForKey:@"Select highlight" value:&stru_1E7188 table:0];
  v7 = [actionCopy isEqualToString:v6];

  if (v7)
  {
    v8 = @"selectAnnotation:";
    goto LABEL_21;
  }

  v9 = AEBundle();
  v10 = [v9 localizedStringForKey:@"Open link" value:&stru_1E7188 table:0];
  v11 = [actionCopy isEqualToString:v10];

  if (v11)
  {
    v8 = @"selectBookmarkedLink:";
    goto LABEL_21;
  }

  v12 = AEBundle();
  v13 = [v12 localizedStringForKey:@"Add note" value:&stru_1E7188 table:0];
  v14 = [actionCopy isEqualToString:v13];

  if (v14)
  {
    v8 = @"annotateSelection:";
    goto LABEL_21;
  }

  v15 = AEBundle();
  v16 = [v15 localizedStringForKey:@"Highlight" value:&stru_1E7188 table:0];
  v17 = [actionCopy isEqualToString:v16];

  if (v17)
  {
    v8 = @"bookmarkSelection:";
    goto LABEL_21;
  }

  v18 = AEBundle();
  v19 = [v18 localizedStringForKey:@"Lookup" value:&stru_1E7188 table:0];
  v20 = [actionCopy isEqualToString:v19];

  if (v20)
  {
    v8 = @"lookupSelection:";
    goto LABEL_21;
  }

  v21 = AEBundle();
  v22 = [v21 localizedStringForKey:@"Search" value:&stru_1E7188 table:0];
  v23 = [actionCopy isEqualToString:v22];

  if (v23)
  {
    v8 = @"searchUsingSelection:";
    goto LABEL_21;
  }

  v24 = AEBundle();
  v25 = [v24 localizedStringForKey:@"Translate" value:&stru_1E7188 table:0];
  v26 = [actionCopy isEqualToString:v25];

  if (v26)
  {
    v8 = @"translateSelection:";
    goto LABEL_21;
  }

  v27 = AEBundle();
  v28 = [v27 localizedStringForKey:@"Copy" value:&stru_1E7188 table:0];
  v29 = [actionCopy isEqualToString:v28];

  if (v29)
  {
    v8 = @"copy:";
    goto LABEL_21;
  }

  v30 = AEBundle();
  v31 = [v30 localizedStringForKey:@"Share selection" value:&stru_1E7188 table:0];
  v32 = [actionCopy isEqualToString:v31];

  if (v32)
  {
    v8 = @"shareSelection:";
    goto LABEL_21;
  }

  if ([actionCopy isEqualToString:@"Debug end of book experience"])
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
    sub_136C0C(actionCopy, v33, v34, v35, v36, v37, v38, v39);
  }

LABEL_25:
}

- (BOOL)_bkaxPerformSelector:(id)selector
{
  v4 = NSSelectorFromString(selector);
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

  webView2 = [(BKHTMLContentViewController *)self webView2];
  webView22 = [(BKHTMLContentViewController *)self webView2];
  v23 = [v25 copy];
  v24 = [webView22 be_updateAXValueForMessage:v23];
  [webView2 be_updateAXCurrentReadingStateWithMessage:@"BEWebProcessPluginOperationsParameterKey" forValue:v24];
}

- (void)readAloudEventHandler:(id)handler performedAction:(id)action turnStyle:(id)style
{
  actionCopy = action;
  styleCopy = style;
  if ([actionCopy isEqualToString:@"start"])
  {
    v8 = 0;
    v9 = 1;
  }

  else if ([actionCopy isEqualToString:@"stop"])
  {
    v8 = 0;
    v9 = 2;
  }

  else
  {
    v10 = [actionCopy isEqualToString:@"startstop"];
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

  if (([styleCopy isEqualToString:@"automatic"] & 1) == 0)
  {
    if ([styleCopy isEqualToString:@"manual"])
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

- (void)readAloudEventHandler:(id)handler audioElementEnded:(id)ended
{
  v5 = [(BKContentViewController *)self delegate:handler];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate = [(BKContentViewController *)self delegate];
    [delegate resumeReadAloudForContentViewController:self];
  }
}

- (void)installReadAloudClickHandlersOnMediaOverlayElements:(id)elements
{
  elementsCopy = elements;
  v5 = NSStringFromSelector("elementId");
  v9 = [elementsCopy valueForKey:v5];

  readAloudEventHandler = [(BKHTMLContentViewController *)self readAloudEventHandler];
  document = [(BKContentViewController *)self document];
  href = [document href];
  [readAloudEventHandler installTapHandlersOnElementIDs:v9 withHref:href];
}

- (void)removeReadAloudClickHandlersOnMediaOverlayElements:(id)elements
{
  elementsCopy = elements;
  v5 = NSStringFromSelector("elementId");
  v7 = [elementsCopy valueForKey:v5];

  readAloudEventHandler = [(BKHTMLContentViewController *)self readAloudEventHandler];
  [readAloudEventHandler removeTapHandlersOnElementIDs:v7];
}

- (void)markupDocumentForMediaOverlay
{
  readAloudEventHandler = [(BKHTMLContentViewController *)self readAloudEventHandler];
  [readAloudEventHandler addMarkupForReadAloudToDocument];
}

- (void)cleanDocumentForMediaOverlay
{
  readAloudEventHandler = [(BKHTMLContentViewController *)self readAloudEventHandler];
  [readAloudEventHandler removeMarkupForReadAloudToDocument];
}

- (void)handler:(id)handler presentAlertController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  delegate = [(BKContentViewController *)self delegate];
  [delegate contentViewController:self presentAlertController:controllerCopy completion:completionCopy];
}

- (void)handler:(id)handler webView:(id)view didNotHandleTapAsClickAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  delegate = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    view = [(BKHTMLContentViewController *)self view];
    [view convertPoint:viewCopy fromView:{x, y}];
    v11 = v10;
    v13 = v12;

    [delegate contentView:self unhandledClickAtPoint:{v11, v13}];
  }
}

- (id)handler:(id)handler citationForText:(id)text webView:(id)view
{
  textCopy = text;
  v7 = objc_alloc_init(BKHTMLContentViewControllerDummyAnnotation);
  [(BKHTMLContentViewControllerDummyAnnotation *)v7 setAnnotationRepresentativeText:textCopy];

  v8 = [(BKHTMLContentViewController *)self _excerptCitedStringForAnnotation:v7];

  return v8;
}

- (id)adjustedItemProvidersWithCitation:(id)citation withExcerptString:(id)string
{
  citationCopy = citation;
  stringCopy = string;
  v29 = objc_alloc_init(NSMutableArray);
  v7 = objc_alloc_init(NSItemProvider);
  if ([stringCopy length])
  {
    identifier = [UTTypeUTF8PlainText identifier];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_2A47C;
    v43[3] = &unk_1E3630;
    v44 = stringCopy;
    [v7 registerDataRepresentationForTypeIdentifier:identifier visibility:0 loadHandler:v43];
  }

  v28 = stringCopy;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = citationCopy;
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
        identifier2 = [(UTType *)v12 identifier];
        v16 = [v14 hasItemConformingToTypeIdentifier:identifier2];

        if ((v16 & 1) == 0)
        {
          v33 = v13;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          registeredTypeIdentifiers = [v14 registeredTypeIdentifiers];
          v18 = [registeredTypeIdentifiers countByEnumeratingWithState:&v35 objects:v45 count:16];
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
                  objc_enumerationMutation(registeredTypeIdentifiers);
                }

                v22 = *(*(&v35 + 1) + 8 * i);
                identifier3 = [UTTypeURL identifier];
                LODWORD(v22) = [v22 isEqualToString:identifier3];

                if (v22)
                {
                  identifier4 = [UTTypeURL identifier];
                  v34[0] = _NSConcreteStackBlock;
                  v34[1] = 3221225472;
                  v34[2] = sub_2A4E4;
                  v34[3] = &unk_1E3630;
                  v34[4] = v14;
                  [v7 registerDataRepresentationForTypeIdentifier:identifier4 visibility:0 loadHandler:v34];
                }
              }

              v19 = [registeredTypeIdentifiers countByEnumeratingWithState:&v35 objects:v45 count:16];
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

  registeredTypeIdentifiers2 = [v7 registeredTypeIdentifiers];
  v26 = [registeredTypeIdentifiers2 count];

  if (v26)
  {
    [v29 addObject:v7];
  }

  return v29;
}

- (BOOL)shouldShowExpandedContentForURL:(id)l
{
  if (!l)
  {
    return 0;
  }

  bc_pathWithoutPrecedingSlash = [l bc_pathWithoutPrecedingSlash];
  stringByRemovingURLFragment = [bc_pathWithoutPrecedingSlash stringByRemovingURLFragment];
  book = [(BKContentViewController *)self book];
  v7 = [book documentAtPath:stringByRemovingURLFragment];

  documentOrdinal = [v7 documentOrdinal];
  if ([documentOrdinal integerValue] == -1)
  {
    bOOLValue = 1;
  }

  else
  {
    nonlinearElement = [v7 nonlinearElement];
    bOOLValue = [nonlinearElement BOOLValue];
  }

  return bOOLValue;
}

- (void)_smilElementIDSelected:(id)selected inHREF:(id)f
{
  selectedCopy = selected;
  fCopy = f;
  selfCopy = self;
  document = [(BKContentViewController *)self document];
  mediaOverlayElements = [document mediaOverlayElements];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = mediaOverlayElements;
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
      elementId = [v13 elementId];
      if ([elementId isEqualToString:selectedCopy])
      {
        [v13 documentHref];
        v15 = v11;
        v16 = selectedCopy;
        v18 = v17 = v9;
        lastPathComponent = [v18 lastPathComponent];
        lastPathComponent2 = [fCopy lastPathComponent];
        v21 = [lastPathComponent isEqualToString:lastPathComponent2];

        v9 = v17;
        selectedCopy = v16;
        v11 = v15;
        v10 = v26;

        if (v21)
        {
          v10 = v13;

          if (v10)
          {
            delegate = [(BKContentViewController *)selfCopy delegate];
            v24 = objc_opt_respondsToSelector();

            if (v24)
            {
              delegate2 = [(BKContentViewController *)selfCopy delegate];
              [delegate2 contentView:selfCopy didSelectMediaOverlayElement:v10];
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

  delegate2 = v9;
LABEL_16:

LABEL_17:
}

- (void)invokedSMILControlAction:(int)action withSMILTurnStyle:(int)style
{
  delegate = [(BKContentViewController *)self delegate];
  book = [(BKContentViewController *)self book];
  hasMediaOverlayElements = [book hasMediaOverlayElements];

  if (hasMediaOverlayElements)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_8;
    }

    if (style == 1)
    {
      v9 = 1;
    }

    else
    {
      if (style != 2)
      {
        goto LABEL_8;
      }

      v9 = 0;
    }

    [delegate contentViewController:self setTurnState:v9];
LABEL_8:
    v10 = objc_opt_respondsToSelector();
    v11 = delegate;
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

    switch(action)
    {
      case 1:
        v12 = 1;
        break;
      case 3:
        if (objc_opt_respondsToSelector())
        {
          contentViewControllerReadAloudState = [delegate contentViewControllerReadAloudState];
          v11 = delegate;
          if ((contentViewControllerReadAloudState & 0x80000000) != 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          contentViewControllerReadAloudState = 0;
          v11 = delegate;
        }

        v12 = contentViewControllerReadAloudState == 0;
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

- (void)webViewDidEnterFullscreen:(id)fullscreen
{
  delegate = [(BKContentViewController *)self delegate];
  v5 = BUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v5 contentViewControllerDidEnterFullscreen:self];
  }
}

- (void)webViewDidExitFullscreen:(id)fullscreen
{
  delegate = [(BKContentViewController *)self delegate];
  v5 = BUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v5 contentViewControllerDidExitFullscreen:self];
  }
}

- (void)webViewFullscreenMayReturnToInline:(id)inline
{
  delegate = [(BKContentViewController *)self delegate];
  v5 = BUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v5 contentViewControllerWillExitFullscreen:self];
  }
}

- (UIScrollView)contentScrollView
{
  webView = [(BKHTMLContentViewController *)self webView];
  scrollView = [webView scrollView];

  return scrollView;
}

- (void)setLoader:(id)loader
{
  loaderCopy = loader;
  if (self->_loader != loaderCopy)
  {
    v6 = loaderCopy;
    objc_storeStrong(&self->_loader, loader);
    [(BKWK2WebViewLoader *)self->_loader setDelegate:self];
    loaderCopy = v6;
  }
}

- (void)webViewLoader:(id)loader didUpdateCurrentVisibleCFILocation:(id)location
{
  locationCopy = location;
  [(BKHTMLContentViewController *)self _updateReadingStateVisibilityPossible:1 knownDOMRange:0];
  delegate = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate contentViewController:self didUpdateCurrentVisibleCFILocation:locationCopy];
  }
}

- (void)highlightMediaOverlayElement:(id)element
{
  elementCopy = element;
  if ([(BKContentViewController *)self isContentLoaded])
  {
    readAloudEventHandler = [(BKHTMLContentViewController *)self readAloudEventHandler];
    elementId = [elementCopy elementId];
    [readAloudEventHandler addhighlightForElementID:elementId];
  }
}

- (void)clearMediaOverlayElement:(id)element
{
  elementCopy = element;
  if ([(BKContentViewController *)self isContentLoaded])
  {
    readAloudEventHandler = [(BKHTMLContentViewController *)self readAloudEventHandler];
    elementId = [elementCopy elementId];
    [readAloudEventHandler removeHighlightForElementID:elementId];
  }
}

- (id)pathForSoundtrack
{
  if ([(BKContentViewController *)self isContentLoaded])
  {
    mediaSource = [(BKHTMLContentViewController *)self mediaSource];
    if ([mediaSource length])
    {
      document = [(BKContentViewController *)self document];
      href = [document href];
      pathComponents = [href pathComponents];

      v7 = [pathComponents subarrayWithRange:{0, objc_msgSend(pathComponents, "count") - 1}];
      v8 = [NSString pathWithComponents:v7];

      v9 = [v8 stringByAppendingPathComponent:mediaSource];
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
  performSelectorProxy = [(BKHTMLContentViewController *)self performSelectorProxy];
  [NSObject cancelPreviousPerformRequestsWithTarget:performSelectorProxy selector:"_refreshContentBasedOverlay" object:0];

  performSelectorProxy2 = [(BKHTMLContentViewController *)self performSelectorProxy];
  [performSelectorProxy2 performSelector:"_refreshContentBasedOverlay" withObject:0 afterDelay:0.1];
}

- (id)predicateForOverlayCache
{
  v2 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[BKHTMLContentViewController predicateForOverlayCache]"];
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (void)_setupAnnotationRectCachesFromClientRects:(id)rects
{
  rectsCopy = rects;
  v5 = objc_alloc_init(NSMutableDictionary);
  [(BKHTMLContentViewController *)self setAnnotationRectUnionCache:v5];

  v6 = [rectsCopy mutableCopy];
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
  allKeys = [rectsCopy allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [rectsCopy objectForKeyedSubscript:v13];
        if ([v14 count])
        {
          v23[0] = BKUnionRects(v14);
          v23[1] = v15;
          v23[2] = v16;
          v23[3] = v17;
          v18 = [NSValue valueWithBytes:v23 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          annotationRectUnionCache = [(BKHTMLContentViewController *)self annotationRectUnionCache];
          [annotationRectUnionCache setObject:v18 forKeyedSubscript:v13];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
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
  delegate = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate contentViewControllerAnnotationCacheDidChange:self];
  }
}

- (void)_fetchMissingCfiLocationRects:(id)rects forAnnotations:(id)annotations
{
  rectsCopy = rects;
  annotationsCopy = annotations;
  v20 = rectsCopy;
  allKeys = [rectsCopy allKeys];
  v21 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = annotationsCopy;
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

        location = [*(*(&v25 + 1) + 8 * i) location];
        objc_opt_class();
        v13 = BUDynamicCast();
        v14 = v13;
        if (v13 && ([v13 cfiString], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(allKeys, "containsObject:", v15), v15, (v16 & 1) == 0))
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
    loader = [(BKHTMLContentViewController *)self loader];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_2B59C;
    v22[3] = &unk_1E3658;
    objc_copyWeak(&v24, buf);
    v23 = v20;
    [loader clientRectsForLocations:v21 completion:v22];

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
  fetchedObjects = [(NSFetchedResultsController *)self->_highlightsFRC fetchedObjects];
  predicateForOverlayCache = [(BKHTMLContentViewController *)self predicateForOverlayCache];
  v5 = [fetchedObjects filteredArrayUsingPredicate:predicateForOverlayCache];

  v6 = _AEAnnotationLocationLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 valueForKey:@"annotationUuid"];
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Preparing overlay cache for annotations:%{public}@", &v14, 0xCu);
  }

  v8 = objc_alloc_init(NSDictionary);
  delegate = [(BKContentViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(BKContentViewController *)self delegate];
    v12 = [delegate2 contentViewController:self locationRectsForAnnotations:v5];

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
  theme = [(BKHTMLContentViewController *)self theme];
  if ([theme shouldInvertContent])
  {
    configuration = [(BKContentViewController *)self configuration];
    -[AEHighlightRenderingController setDrawSpecialGrayHighlights:](self->_highlightRenderingController, "setDrawSpecialGrayHighlights:", [configuration isScroll] ^ 1);
  }

  else
  {
    [(AEHighlightRenderingController *)self->_highlightRenderingController setDrawSpecialGrayHighlights:0];
  }

  annotationRectUnionCache = [(BKHTMLContentViewController *)self annotationRectUnionCache];
  if (annotationRectUnionCache)
  {
    v7 = annotationRectUnionCache;
    contentBasedOverlayRefreshScheduled = [(BKHTMLContentViewController *)self contentBasedOverlayRefreshScheduled];

    if ((contentBasedOverlayRefreshScheduled & 1) == 0)
    {
      [(BKHTMLContentViewController *)self _refreshAnnotationsAndSearchResult];
    }
  }
}

- (void)startFetchingAnnotations
{
  if (!self->_highlightsFRC)
  {
    book = [(BKContentViewController *)self book];
    if (!book)
    {
      sub_136C78();
    }

    annotationProvider = [book annotationProvider];
    uiManagedObjectContext = [annotationProvider uiManagedObjectContext];

    if (!uiManagedObjectContext)
    {
      sub_136CB0();
    }

    v6 = objc_alloc_init(NSFetchRequest);
    assetID = [book assetID];
    document = [(BKContentViewController *)self document];
    documentOrdinal = [document documentOrdinal];
    v10 = +[AEAnnotation predicateForAnnotationsWithAssetID:ordinal:](AEAnnotation, "predicateForAnnotationsWithAssetID:ordinal:", assetID, [documentOrdinal intValue]);
    [v6 setPredicate:v10];

    v11 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:uiManagedObjectContext];
    [v6 setEntity:v11];

    v12 = [[NSSortDescriptor alloc] initWithKey:@"annotationCreationDate" ascending:1];
    v13 = [[NSArray alloc] initWithObjects:{v12, 0}];
    [v6 setSortDescriptors:v13];

    v14 = [[IMUbiquitousFetchedResultsController alloc] initWithFetchRequest:v6 managedObjectContext:uiManagedObjectContext sectionNameKeyPath:0 cacheName:0];
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

- (void)controllerWillChangeContent:(id)content
{
  v4 = objc_alloc_init(NSMutableDictionary);
  changedAnnotations = self->_changedAnnotations;
  self->_changedAnnotations = v4;

  _objc_release_x1(v4, changedAnnotations);
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  controllerCopy = controller;
  objectCopy = object;
  pathCopy = path;
  indexPathCopy = indexPath;
  if (self->_highlightsFRC == controllerCopy)
  {
    v16 = objectCopy;
    v17 = v16;
    if (type - 3 < 2)
    {
      changedAnnotations = self->_changedAnnotations;
      annotationUuid = [v16 annotationUuid];
      [(NSMutableDictionary *)changedAnnotations setObject:v17 forKey:annotationUuid];
    }

    else if (type == 2)
    {
      annotationUuid2 = [v16 annotationUuid];

      if (annotationUuid2)
      {
        [(BKHTMLContentViewController *)self removeHighlightForAnnotation:v17];
      }
    }

    else if (type == 1)
    {
      if ([v16 annotationType] == 2)
      {
        v18 = _AEAnnotationLocationLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          annotationUuid3 = [v17 annotationUuid];
          *buf = 138412290;
          v34 = annotationUuid3;
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
          annotationUuid4 = [v17 annotationUuid];
          *buf = 138412290;
          v34 = annotationUuid4;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "controller didInsert point annotation: %@", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        objc_opt_class();
        location = [v17 location];
        v27 = BUDynamicCast();

        if (v27 && [(BKHTMLContentViewController *)self isLocationFromThisDocument:v27])
        {
          loader = [(BKHTMLContentViewController *)self loader];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_2BF9C;
          v29[3] = &unk_1E3680;
          objc_copyWeak(&v32, buf);
          v30 = v17;
          selfCopy = self;
          [loader clientRectsForLocation:v27 completion:v29];

          objc_destroyWeak(&v32);
        }

        objc_destroyWeak(buf);
      }
    }
  }
}

- (void)controllerDidChangeContent:(id)content
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->_changedAnnotations allValues:content];
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

  delegate = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate contentViewControllerAnnotationsDidChange:self];
  }
}

- (id)_excerptCitedStringForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v5 = [AEAssetActivityItemProvider alloc];
  book = [(BKContentViewController *)self book];
  v7 = [BKBookViewController propertySourceFromBook:book];
  v8 = [v5 initWithAnnotation:annotationCopy propertySource:v7];

  [v8 setShareType:0];
  [v8 setCitationsAllowed:{-[BKHTMLContentViewController canCopyContent](self, "canCopyContent")}];
  pasteboardString = [v8 pasteboardString];
  if (pasteboardString)
  {
    v10 = pasteboardString;
  }

  else
  {
    v10 = &stru_1E7188;
  }

  return v10;
}

- (id)bookTitle
{
  book = [(BKContentViewController *)self book];
  bookTitle = [book bookTitle];

  return bookTitle;
}

- (id)author
{
  book = [(BKContentViewController *)self book];
  bookAuthor = [book bookAuthor];

  return bookAuthor;
}

- (id)storeURL
{
  book = [(BKContentViewController *)self book];
  storeId = [book storeId];

  if ([storeId length])
  {
    v4 = +[AEUserPublishing sharedInstance];
    v5 = [v4 storeShortURLForStoreId:storeId dataSource:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)pageNumberStringForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if (objc_opt_respondsToSelector())
  {
    physicalPageNumber = [annotationCopy physicalPageNumber];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      annotationDataProvider = [(BKHTMLContentViewController *)self annotationDataProvider];
      if (annotationDataProvider && (objc_opt_respondsToSelector() & 1) != 0 && (v7 = [annotationDataProvider pageNumberForOrdinal:{-[BKContentViewController ordinal](self, "ordinal")}], v7 != 0x7FFFFFFFFFFFFFFFLL))
      {
        v9 = [NSNumber numberWithInteger:&v7[[(BKContentViewController *)self pageOffset]]];
        physicalPageNumber = [NSString stringWithFormat:@"%@", v9];
      }

      else
      {
        physicalPageNumber = 0;
      }
    }

    else
    {
      physicalPageNumber = 0;
    }
  }

  return physicalPageNumber;
}

- (CGPoint)_originPointForPoint:(CGPoint)point
{
  [(WKWebView *)self->_webView2 _convertPointFromContentsToView:point.x, point.y];
  v5 = v4;
  v7 = v6;
  webView2 = self->_webView2;
  view = [(BKHTMLContentViewController *)self view];
  [(WKWebView *)webView2 convertPoint:view toView:v5, v7];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)registerScriptMessageHandlersWithUserContentController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy be_addScriptMessageHandler:self name:@"showAside"];
  [controllerCopy be_addScriptMessageHandler:self name:@"toggleBookmark"];
  [controllerCopy be_addScriptMessageHandler:self name:@"toggleControlsVisibility"];
  [controllerCopy be_addScriptMessageHandler:self name:@"showHighlightMenu"];
  [controllerCopy be_addScriptMessageHandler:self name:@"turnPage"];
  [controllerCopy be_addScriptMessageHandler:self name:@"checkOperation"];
  [controllerCopy be_addScriptMessageHandler:self name:@"performOperation"];
  readAloudEventHandler = [(BKHTMLContentViewController *)self readAloudEventHandler];
  [controllerCopy be_addScriptMessageHandler:readAloudEventHandler name:@"readAloudHandler"];
}

- (void)afterEnsuringFirstPaintPerform:(id)perform
{
  performCopy = perform;
  v5 = performCopy;
  if (self->_firstSignificantPaintCompleted)
  {
    webView2 = self->_webView2;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_2C910;
    v11[3] = &unk_1E2E08;
    v12 = performCopy;
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
  _accessibilityQuickSpeakContent = [(BKHTMLContentViewController *)self _accessibilityQuickSpeakContent];
  v3 = [_accessibilityQuickSpeakContent length] != 0;

  return v3;
}

@end