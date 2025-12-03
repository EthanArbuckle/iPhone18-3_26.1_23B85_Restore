@interface PDFView
- (BOOL)_shouldHandleAnnotationAtLocation:(CGPoint)location forGestureType:(unint64_t)type;
- (BOOL)acceptSingleTouch:(id)touch;
- (BOOL)akAnnotationEditingEnabled;
- (BOOL)allowsMarkupAnnotationEditing;
- (BOOL)canGoBack;
- (BOOL)canGoForward;
- (BOOL)canGoToNextPage;
- (BOOL)canGoToPreviousPage;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canZoomIn;
- (BOOL)canZoomOut;
- (BOOL)focusOnColumnAtPoint:(CGPoint)point;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isAnnotationEditingEnabled;
- (BOOL)isOverLinkAnnotation:(CGPoint)annotation;
- (BOOL)isRectVisible:(CGRect)visible onPage:(id)page;
- (BOOL)userDidEnterPassword:(id)password forPasswordViewController:(id)controller;
- (CGAffineTransform)_transformFromPageToPageView:(SEL)view;
- (CGAffineTransform)_transformFromPageViewToPage:(SEL)page;
- (CGFloat)maxScaleFactor;
- (CGFloat)minScaleFactor;
- (CGFloat)scaleFactor;
- (CGFloat)scaleFactorForSizeToFit;
- (CGPoint)_scrollOriginForPageTopLeft:(id)left;
- (CGPoint)centerPointOfVisibleRectOfPage:(id)page;
- (CGPoint)convertPoint:(CGPoint)point fromPage:(PDFPage *)page;
- (CGPoint)convertPoint:(CGPoint)point toPage:(PDFPage *)page;
- (CGRect)convertRect:(CGRect)rect fromPage:(PDFPage *)page;
- (CGRect)convertRect:(CGRect)rect toPage:(PDFPage *)page;
- (CGRect)convertRectToRootView:(CGRect)view fromPageLayer:(id)layer;
- (CGRect)convertRootViewRect:(CGRect)rect toPageLayer:(id)layer;
- (CGRect)extendedRootViewBounds;
- (CGRect)extensionViewBoundsInDocument;
- (CGRect)mainScreenBounds;
- (CGRect)normalizedPageBounds:(id)bounds;
- (CGRect)rootViewBounds;
- (CGRect)visibleRectForPageView:(id)view;
- (CGSize)pageViewSizeForPage:(id)page;
- (CGSize)pdfDocumentViewSize;
- (CGSize)rowSizeForPage:(PDFPage *)page;
- (NSArray)visiblePages;
- (PDFAreaOfInterest)areaOfInterestForPoint:(CGPoint)cursorLocation;
- (PDFDestination)currentDestination;
- (PDFPage)currentPage;
- (PDFPage)pageForPoint:(CGPoint)point nearest:(BOOL)nearest;
- (PDFView)initWithCoder:(id)coder;
- (PDFView)initWithFrame:(CGRect)frame;
- (UIColor)backgroundColor;
- (UIEdgeInsets)documentMargins;
- (UIEdgeInsets)pageBreakMargins;
- (double)PDFViewWillChangeScaleFactor:(id)factor toScale:(double)scale;
- (double)_pageViewHeight:(id)height;
- (double)_unboundAutoScaleFactorForPage:(id)page;
- (double)_unboundAutoScaleFactorForPageWithSize:(CGSize)size;
- (double)autoScaleFactor;
- (double)autoScaleFactorForPage:(id)page;
- (double)autoScaleFactorForPageWithSize:(CGSize)size;
- (double)mainScreenScale;
- (id)_dragItemsAtLocationInView:(CGPoint)view;
- (id)_getDocumentAKController;
- (id)akRedoToolbarItem;
- (id)akToolbarView;
- (id)akToolbarViewItemTintColor;
- (id)akToolbarViewTintColor;
- (id)akUndoToolbarItem;
- (id)delegate;
- (id)determineCurrentPage;
- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)findInteraction:(id)interaction sessionForView:(id)view;
- (id)hitTestForSubviewsOfView:(id)view atLocation:(CGPoint)location withEvent:(id)event;
- (id)nextPage;
- (id)pageOverlayViewProvider;
- (id)pageViewForPageAtIndex:(unint64_t)index;
- (id)parentViewController;
- (id)pointerRegionForLocation:(CGPoint)location;
- (id)previousPage;
- (id)viewForPage:(id)page;
- (id)visibleAnnotations;
- (id)visiblePageViews;
- (unint64_t)lastPageIndex;
- (unint64_t)scrollViewMinimumNumberOfTouches;
- (unint64_t)typeForGestureRecognizer:(id)recognizer;
- (void)PDFViewWillClickOnLink:(id)link withURL:(id)l;
- (void)_commonInit;
- (void)_ensureOverlayViewController;
- (void)_findVisiblePages;
- (void)_goToPage:(id)page animated:(BOOL)animated withBackgroundUpdate:(BOOL)update;
- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector;
- (void)_internalSetAutoScaleFactor;
- (void)_internalSetScaleFactor:(double)factor;
- (void)_lookup:(id)_lookup;
- (void)_reflectNewPageOn;
- (void)_releaseDocument;
- (void)_releaseDocumentViewController;
- (void)_releaseScrollView;
- (void)_removePasswordView;
- (void)_resizeDisplayView:(id)view;
- (void)_scrollByPage:(BOOL)page;
- (void)_scrollHorizontalBy:(double)by;
- (void)_scrollVerticalBy:(double)by;
- (void)_setupDocumentViewController;
- (void)_setupPasswordView;
- (void)_setupScrollView;
- (void)_showFormFillingButton:(BOOL)button;
- (void)_syncPageIndexToScrollView;
- (void)_tileRefresh;
- (void)_updateAnnotations;
- (void)_updateBookmarksForPages;
- (void)_updateCurrentPageUsingViewCenter;
- (void)_updatePasswordView;
- (void)addGestureRecognizer:(id)recognizer;
- (void)annotationsChangedOnPage:(PDFPage *)page;
- (void)beginPDFViewRotation;
- (void)callPageVisibilityDelegateMethod:(int)method forPageView:(id)view atPageIndex:(unint64_t)index;
- (void)callPageVisibilityDelegateMethodForOverlayAdaptorOnly:(int)only forPageView:(id)view atPageIndex:(unint64_t)index;
- (void)clearSelection;
- (void)colorWidgetBackgrounds:(BOOL)backgrounds;
- (void)constrainedScrollToPoint:(CGPoint)point;
- (void)copy:(id)sender;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)documentWasUnlocked;
- (void)drawDetectedAnnotationBounds:(BOOL)bounds;
- (void)drawPage:(PDFPage *)page toContext:(CGContextRef)context;
- (void)enableBackgroundImages:(BOOL)images;
- (void)encodeWithCoder:(id)coder;
- (void)endPDFViewRotation;
- (void)forceTileRefresh;
- (void)gestureInit;
- (void)goBack:(id)sender;
- (void)goForward:(id)sender;
- (void)goToDestination:(PDFDestination *)destination;
- (void)goToDestinationNoPush:(id)push;
- (void)goToFirstPage:(id)sender;
- (void)goToLastPage:(id)sender;
- (void)goToNextPage:(id)sender;
- (void)goToPageNoPush:(id)push animated:(BOOL)animated;
- (void)goToPreviousPage:(id)sender;
- (void)goToRect:(CGRect)rect onPage:(PDFPage *)page;
- (void)goToSelection:(PDFSelection *)selection;
- (void)handleAnalysisCompletionOfPage:(id)page resultTypes:(unint64_t)types;
- (void)handleGesture:(unint64_t)gesture state:(int64_t)state location:(CGPoint)location locationOfFirstTouch:(CGPoint)touch isIndirectTouch:(BOOL)indirectTouch;
- (void)highlightDetectedFormFields:(BOOL)fields;
- (void)highlightPDFRedactions:(BOOL)redactions;
- (void)insertFormFieldAtBestLocationNearPoint:(CGPoint)point onPage:(id)page;
- (void)insertFormFieldAtDefaultLocation;
- (void)insertFormFieldWithBounds:(CGRect)bounds onPage:(id)page;
- (void)internalForceAnnotationRefresh;
- (void)internalForceTileRefresh;
- (void)layoutDocumentView;
- (void)layoutSubviews;
- (void)pageViewControllerSaysPageChanged:(id)changed;
- (void)performAction:(PDFAction *)action;
- (void)performOverlayAdaptorPageVisibilityTrueUpAfterSettingDocument;
- (void)positionInternalViews:(id)views;
- (void)printActivePageText;
- (void)pushDestination:(id)destination;
- (void)removeFromSuperview;
- (void)scrollSelectionToVisible:(id)sender;
- (void)scrollViewSaysPageMayHaveChanged:(id)changed;
- (void)selectAll:(id)sender;
- (void)setAkAnnotationEditingEnabled:(BOOL)enabled;
- (void)setAkToolbarViewItemTintColor:(id)color;
- (void)setAkToolbarViewTintColor:(id)color;
- (void)setAutoScales:(BOOL)autoScales;
- (void)setBackgroundColor:(UIColor *)backgroundColor;
- (void)setBackgroundImage:(id)image forPage:(id)page;
- (void)setBounds:(CGRect)bounds;
- (void)setCurrentPageIndex:(unint64_t)index withNotification:(BOOL)notification;
- (void)setCurrentSelection:(PDFSelection *)selection animate:(BOOL)animate;
- (void)setCurrentSelection:(id)selection updateTextInput:(BOOL)input;
- (void)setDelegate:(id)delegate;
- (void)setDisplayBox:(PDFDisplayBox)displayBox;
- (void)setDisplayDirection:(PDFDisplayDirection)displayDirection;
- (void)setDisplayMode:(PDFDisplayMode)displayMode;
- (void)setDisplaysAsBook:(BOOL)displaysAsBook;
- (void)setDisplaysBookmarksForPages:(BOOL)pages;
- (void)setDisplaysPageBreaks:(BOOL)displaysPageBreaks;
- (void)setDisplaysRTL:(BOOL)displaysRTL;
- (void)setDocument:(id)document waitDuration:(double)duration;
- (void)setDocument:(id)document withInitialPageIndex:(unint64_t)index;
- (void)setEnableTileUpdates:(BOOL)updates;
- (void)setFindInteractionEnabled:(BOOL)findInteractionEnabled;
- (void)setForcesTopAlignment:(BOOL)alignment;
- (void)setFormDetectionEnabled:(BOOL)enabled;
- (void)setFrame:(CGRect)frame;
- (void)setGutterWidth:(double)width;
- (void)setHighlightedSelections:(NSArray *)highlightedSelections;
- (void)setInFormFillingMode:(BOOL)mode;
- (void)setMaxScaleFactor:(CGFloat)maxScaleFactor;
- (void)setMinScaleFactor:(CGFloat)minScaleFactor;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)setNewPageVisibilityDelegate:(id)delegate withOldDelegate:(id)oldDelegate;
- (void)setPageBreakMargins:(UIEdgeInsets)pageBreakMargins;
- (void)setPageOverlayViewProvider:(id)pageOverlayViewProvider;
- (void)setScaleFactor:(CGFloat)scaleFactor;
- (void)setScaleFactor:(double)factor anchorPoint:(CGPoint)point;
- (void)setScrollViewScrollEnabled:(BOOL)enabled;
- (void)setShowsScrollIndicators:(BOOL)indicators;
- (void)signaturesController:(id)controller didSelectSignatureWithAnnotation:(id)annotation;
- (void)syncPageIndexToScrollView;
- (void)takePasswordFrom:(id)sender;
- (void)updatePDFViewLayout:(CGRect)layout scrollViewFrame:(CGRect)frame zoomScale:(double)scale;
- (void)usePageViewController:(BOOL)enable withViewOptions:(NSDictionary *)viewOptions;
- (void)visiblePagesChanged:(id)changed;
- (void)zoomIn:(id)sender;
- (void)zoomOut:(id)sender;
@end

@implementation PDFView

- (void)setDocument:(id)document withInitialPageIndex:(unint64_t)index
{
  documentCopy = document;
  self->_private->wantsForceUpdate = 0;
  self->_private->blockingWaitDuration = 0.0;
  v6 = self->_private;
  if (v6->isUsingPageViewController)
  {
    [(PDFDocumentViewController *)v6->documentViewController willForceUpdate];
    pdfDocumentView = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
    [pdfDocumentView willForceUpdate];
  }

  [(PDFView *)self setDocument:documentCopy waitDuration:0.0];
  v8 = [documentCopy pageAtIndex:index];
  [(PDFView *)self goToPage:v8];
}

- (void)setDocument:(id)document waitDuration:(double)duration
{
  documentCopy = document;
  v8 = documentCopy;
  v9 = self->_private;
  if (v9->document == documentCopy)
  {
    goto LABEL_30;
  }

  v27 = documentCopy;
  [(PDFTimer *)v9->pageSyncTimer cancel];
  [(PDFOverlayViewsController *)self->_overlayViewController pdfView:self willSetDocument:v27];
  akDocumentAdaptor = [(PDFDocument *)self->_private->document akDocumentAdaptor];
  [akDocumentAdaptor setPdfView:0];

  objc_storeStrong(&self->_private->document, document);
  [(PDFDocument *)self->_private->document setRenderingProperties:self->_private->renderingProperties];
  [(PDFViewLayout *)self->_private->viewLayout setDocument:v27];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PDFViewChangedDocument" object:self];

  if ([v27 isLinearized] && objc_msgSend(v27, "hasHighLatencyDataProvider"))
  {
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create("LinearizedPagePreload", v12);
    v14 = self->_private;
    pagePreloadQueue = v14->pagePreloadQueue;
    v14->pagePreloadQueue = v13;
  }

  else
  {
    v16 = self->_private;
    v12 = v16->pagePreloadQueue;
    v16->pagePreloadQueue = 0;
  }

  if (!v27)
  {
    [(PDFView *)self _releaseDocument];
    [(PDFView *)self layoutDocumentView];
    documentCopy = [(PDFOverlayViewsController *)self->_overlayViewController pdfView:self didSetDocument:0];
LABEL_29:
    v8 = v27;
    goto LABEL_30;
  }

  if (GetDefaultsWriteAKEnabled())
  {
    undoManager = [(PDFView *)self undoManager];
    isUndoRegistrationEnabled = [undoManager isUndoRegistrationEnabled];
    if (isUndoRegistrationEnabled)
    {
      [undoManager disableUndoRegistration];
    }

    [(PDFView *)self _ensureOverlayViewController];
    [v27 setupAKDocumentAdaptorIfNecessaryWithView:self];
  }

  else
  {
    undoManager = 0;
    isUndoRegistrationEnabled = 0;
  }

  if ([v27 isLocked])
  {
    if (![(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView])
    {
      pdfDocumentView = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];

      if (pdfDocumentView)
      {
        [(PDFScrollView *)self->_private->scrollView setDocument:0];
      }

      [(PDFView *)self _setupPasswordView];
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_documentWasUnlocked name:@"PDFDocumentDidUnlock" object:self->_private->document];
    goto LABEL_24;
  }

  [(PDFView *)self _removePasswordView];
  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:@"PDFDocumentDidUnlock" object:v27];

  [(PDFScrollView *)self->_private->scrollView setDocument:v27];
  pdfDocumentView2 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
  pageBackgroundManager = [pdfDocumentView2 pageBackgroundManager];
  objc_storeWeak(&self->_pageBackgroundManager, pageBackgroundManager);

  WeakRetained = objc_loadWeakRetained(&self->_private->delegate);
  [(PDFView *)self setNewPageVisibilityDelegate:WeakRetained withOldDelegate:0];

  if (duration <= 0.0)
  {
    [(PDFView *)self layoutDocumentView];
  }

  else
  {
    self->_private->wantsForceUpdate = 1;
    self->_private->blockingWaitDuration = duration;
    pdfDocumentView3 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
    [pdfDocumentView3 willForceUpdate];

    v26 = [v27 pageAtIndex:0];
    [(PDFView *)self goToPage:v26];
  }

  [(PDFView *)self setAutoScales:[(PDFView *)self autoScales]];
  if ([(PDFDocument *)self->_private->document pageCount])
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"PDFViewChangedPage" object:self];
LABEL_24:
  }

  if (isUndoRegistrationEnabled)
  {
    [undoManager enableUndoRegistration];
  }

  [v27 setRenderingProperties:self->_private->renderingProperties];

  [(PDFOverlayViewsController *)self->_overlayViewController pdfView:self didSetDocument:v27];
  documentCopy = [v27 isLocked];
  v8 = v27;
  if ((documentCopy & 1) == 0)
  {
    documentCopy = [(PDFView *)self performOverlayAdaptorPageVisibilityTrueUpAfterSettingDocument];
    goto LABEL_29;
  }

LABEL_30:

  MEMORY[0x1EEE66BB8](documentCopy, v8);
}

- (void)_releaseDocument
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"PDFDocumentDidUnlock" object:self->_private->document];

  [(PDFViewLayout *)self->_private->viewLayout setDocument:0];
  [(PDFScrollView *)self->_private->scrollView setDocument:0];
  akDocumentAdaptor = [(PDFDocument *)self->_private->document akDocumentAdaptor];
  [akDocumentAdaptor setPdfView:0];

  v5 = self->_private;
  document = v5->document;
  v5->document = 0;
}

- (void)goToFirstPage:(id)sender
{
  if ([(PDFView *)self canGoToFirstPage])
  {
    currentDestination = [(PDFView *)self currentDestination];
    [(PDFView *)self pushDestination:currentDestination];

    document = [(PDFView *)self document];
    v5 = [document pageAtIndex:0];
    [(PDFView *)self goToPageNoPush:v5];
  }
}

- (void)goToLastPage:(id)sender
{
  if ([(PDFView *)self canGoToLastPage])
  {
    currentDestination = [(PDFView *)self currentDestination];
    [(PDFView *)self pushDestination:currentDestination];

    document = [(PDFView *)self document];
    v7 = [document pageAtIndex:{-[PDFView lastPageIndex](self, "lastPageIndex")}];

    v6 = v7;
    if (v7)
    {
      [(PDFView *)self goToPageNoPush:v7];
      v6 = v7;
    }
  }
}

- (BOOL)canGoToNextPage
{
  document = [(PDFView *)self document];

  if (!document)
  {
    return 0;
  }

  pDFLayout = [(PDFView *)self PDFLayout];
  functionalDisplayMode = [pDFLayout functionalDisplayMode];

  if ((functionalDisplayMode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    lastPageIndex = [(PDFView *)self lastPageIndex];
    currentPageIndex = self->_currentPageIndex + (([(PDFView *)self displaysAsBook]^ lastPageIndex) & 1);
  }

  else
  {
    currentPageIndex = self->_currentPageIndex;
  }

  return currentPageIndex < [(PDFView *)self lastPageIndex];
}

- (void)goToNextPage:(id)sender
{
  nextPage = [(PDFView *)self nextPage];
  if (nextPage)
  {
    v6 = nextPage;
    currentDestination = [(PDFView *)self currentDestination];
    [(PDFView *)self pushDestination:currentDestination];

    [(PDFView *)self goToPageNoPush:v6];
    nextPage = v6;
  }
}

- (BOOL)canGoToPreviousPage
{
  document = [(PDFView *)self document];

  if (!document)
  {
    return 0;
  }

  pDFLayout = [(PDFView *)self PDFLayout];
  functionalDisplayMode = [pDFLayout functionalDisplayMode];

  if ((functionalDisplayMode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    displaysAsBook = [(PDFView *)self displaysAsBook];
    currentPageIndex = self->_currentPageIndex;
    if (!displaysAsBook)
    {
      return currentPageIndex > 1;
    }
  }

  else
  {
    currentPageIndex = self->_currentPageIndex;
  }

  return currentPageIndex != 0;
}

- (void)goToPreviousPage:(id)sender
{
  previousPage = [(PDFView *)self previousPage];
  if (previousPage)
  {
    v6 = previousPage;
    currentDestination = [(PDFView *)self currentDestination];
    [(PDFView *)self pushDestination:currentDestination];

    [(PDFView *)self goToPageNoPush:v6];
    previousPage = v6;
  }
}

- (BOOL)canGoBack
{
  document = [(PDFView *)self document];

  return document && self->_private->historyIndex > 0;
}

- (void)goBack:(id)sender
{
  if ([(PDFView *)self canGoBack])
  {
    v4 = self->_private;
    historyIndex = v4->historyIndex;
    if (historyIndex >= [(NSMutableArray *)v4->destinationHistory count])
    {
      currentDestination = [(PDFView *)self currentDestination];
      [(PDFView *)self pushDestination:currentDestination];

      self->_private->historyIndex = [(NSMutableArray *)self->_private->destinationHistory count]- 1;
    }

    v7 = [(NSMutableArray *)self->_private->destinationHistory objectAtIndex:--self->_private->historyIndex];
    [(PDFView *)self goToDestinationNoPush:v7];

    defaultQueue = [MEMORY[0x1E696AD90] defaultQueue];
    v8 = [MEMORY[0x1E696AD80] notificationWithName:@"PDFViewChangedHistory" object:self];
    [defaultQueue enqueueNotification:v8 postingStyle:1];
  }
}

- (BOOL)canGoForward
{
  document = [(PDFView *)self document];

  if (!document)
  {
    return 0;
  }

  v4 = self->_private;
  v5 = v4->historyIndex + 1;
  return v5 < [(NSMutableArray *)v4->destinationHistory count];
}

- (void)goForward:(id)sender
{
  if ([(PDFView *)self canGoForward])
  {
    v4 = [(NSMutableArray *)self->_private->destinationHistory objectAtIndex:++self->_private->historyIndex];
    [(PDFView *)self goToDestinationNoPush:v4];

    defaultQueue = [MEMORY[0x1E696AD90] defaultQueue];
    v5 = [MEMORY[0x1E696AD80] notificationWithName:@"PDFViewChangedHistory" object:self];
    [defaultQueue enqueueNotification:v5 postingStyle:1];
  }
}

- (PDFPage)currentPage
{
  pageCount = [(PDFDocument *)self->_private->document pageCount];
  if (pageCount)
  {
    pageCount = [(PDFDocument *)self->_private->document pageAtIndex:self->_currentPageIndex];
  }

  return pageCount;
}

- (void)setCurrentPageIndex:(unint64_t)index withNotification:(BOOL)notification
{
  if (self->_currentPageIndex != index)
  {
    notificationCopy = notification;
    self->_currentPageIndex = index;
    WeakRetained = objc_loadWeakRetained(&self->_pageBackgroundManager);
    [WeakRetained updateActivePageIndex:self->_currentPageIndex];

    if (self->_private->pagePreloadQueue)
    {
      document = [(PDFView *)self document];
      [document preloadDataOfPagesInRange:self->_currentPageIndex + 1 onQueue:3 completion:{self->_private->pagePreloadQueue, 0}];
    }

    _getDocumentAKController = [(PDFView *)self _getDocumentAKController];
    [_getDocumentAKController setCurrentPageIndex:self->_currentPageIndex];
    if (notificationCopy)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"PDFViewChangedPage" object:self];
    }
  }
}

- (void)_goToPage:(id)page animated:(BOOL)animated withBackgroundUpdate:(BOOL)update
{
  updateCopy = update;
  animatedCopy = animated;
  pageCopy = page;
  if (pageCopy)
  {
    v22 = pageCopy;
    pDFLayout = [(PDFView *)self PDFLayout];
    functionalDisplayMode = [pDFLayout functionalDisplayMode];

    if (updateCopy && ((functionalDisplayMode & 1) == 0 || self->_private->wantsForceUpdate))
    {
      document = [v22 document];
      v13 = [document indexForPage:v22];

      v14 = self->_private;
      isUsingPageViewController = v14->isUsingPageViewController;
      v14->wantsForceUpdate = 0;
      v16 = self->_private;
      if (isUsingPageViewController)
      {
        [(PDFDocumentViewController *)v16->documentViewController forceUpdateActivePageIndex:v13 withMaxDuration:v16->blockingWaitDuration];
      }

      else
      {
        pdfDocumentView = [(PDFScrollView *)v16->scrollView pdfDocumentView];
        [pdfDocumentView forceUpdateActivePageIndex:v13 withMaxDuration:self->_private->blockingWaitDuration];
      }
    }

    currentPage = [(PDFView *)self currentPage];

    pageCopy = v22;
    if (currentPage == v22)
    {
      if (!self->_private->scrollView)
      {
        goto LABEL_13;
      }

      [(PDFView *)self _reflectNewPageOn];
    }

    else
    {
      currentDestination = [(PDFView *)self currentDestination];
      [(PDFView *)self pushDestination:currentDestination];

      objc_storeStrong(&self->_private->toPage, page);
      [(PDFView *)self goToPageNoPush:v22 animated:animatedCopy];
      v20 = self->_private;
      toPage = v20->toPage;
      v20->toPage = 0;
    }

    pageCopy = v22;
  }

LABEL_13:
}

- (PDFDestination)currentDestination
{
  document = [(PDFView *)self document];

  if (document)
  {
    [(PDFView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(PDFScrollView *)self->_private->scrollView contentInset];
    v16 = PDFEdgeInsetsInsetRect(v5, v7, v9, v11, v12, v13, v14, v15);
    MaxY = PDFRectGetMaxY(v16, v17, v18, v19);
    v21 = PDFPointMake(0.0, MaxY);
    v23 = v22;
    v24 = [(PDFView *)self pageForPoint:1 nearest:?];
    [(PDFView *)self convertPoint:v24 toPage:v21, v23];
    v27 = [[PDFDestination alloc] initWithPage:v24 atPoint:v25, v26];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)goToDestination:(PDFDestination *)destination
{
  v4 = destination;
  if (v4)
  {
    v7 = v4;
    page = [(PDFDestination *)v4 page];

    v4 = v7;
    if (page)
    {
      currentDestination = [(PDFView *)self currentDestination];
      [(PDFView *)self pushDestination:currentDestination];

      [(PDFView *)self goToDestinationNoPush:v7];
      v4 = v7;
    }
  }
}

- (void)goToSelection:(PDFSelection *)selection
{
  isEmpty = selection;
  v5 = isEmpty;
  if (isEmpty)
  {
    v8 = isEmpty;
    isEmpty = [(PDFSelection *)isEmpty isEmpty];
    v5 = v8;
    if ((isEmpty & 1) == 0)
    {
      pages = [(PDFSelection *)v8 pages];
      v7 = [pages objectAtIndex:0];

      [(PDFSelection *)v8 boundsForPage:v7];
      [(PDFView *)self goToRect:v7 onPage:?];

      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](isEmpty, v5);
}

- (void)goToRect:(CGRect)rect onPage:(PDFPage *)page
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v17 = page;
  if (![(PDFView *)self isRectVisible:x onPage:y, width, height])
  {
    v9 = *MEMORY[0x1E695EFF8];
    v10 = *(MEMORY[0x1E695EFF8] + 8);
    rotation = [(PDFPage *)v17 rotation];
    if (rotation > 179)
    {
      if (rotation == 180)
      {
        MaxX = PDFRectGetMaxX(x, y, width);
        goto LABEL_11;
      }

      if (rotation != 270)
      {
LABEL_13:
        v16 = [[PDFDestination alloc] initWithPage:v17 atPoint:v9, v10];
        [(PDFView *)self goToDestination:v16];

        goto LABEL_14;
      }

      v13 = PDFRectGetMaxX(x, y, width);
      MaxY = PDFRectGetMaxY(x, y, width, height);
      MaxX = v13;
    }

    else
    {
      if (rotation)
      {
        if (rotation == 90)
        {
          MaxX = x;
LABEL_11:
          MaxY = y;
          goto LABEL_12;
        }

        goto LABEL_13;
      }

      MaxY = PDFRectGetMaxY(x, y, width, height);
      MaxX = x;
    }

LABEL_12:
    v9 = PDFPointMake(MaxX, MaxY);
    v10 = v15;
    goto LABEL_13;
  }

LABEL_14:
}

- (void)setDisplayMode:(PDFDisplayMode)displayMode
{
  currentPage = [(PDFView *)self currentPage];
  if (displayMode < 4)
  {
    v6 = self->_private;
    if (v6->displayMode == displayMode)
    {
      goto LABEL_8;
    }

    v8 = currentPage;
    v6->displayMode = displayMode;
    [(PDFView *)self layoutDocumentView];
    [(PDFScrollView *)self->_private->scrollView updateLayout];
    if (displayMode)
    {
      [(PDFView *)self goToPageNoPush:v8];
    }

    [(PDFScrollView *)self->_private->scrollView setBounces:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PDFViewDisplayModeChanged" object:self];
  }

  else
  {
    v8 = currentPage;
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"setDisplayMode: %ld out of bounds", displayMode}];
  }

  currentPage = v8;
LABEL_8:
}

- (void)setDisplayDirection:(PDFDisplayDirection)displayDirection
{
  v3 = self->_private;
  if (v3->displayDirection != displayDirection)
  {
    v3->displayDirection = displayDirection;
    [(PDFView *)self layoutDocumentView];
    v5 = self->_private;
    if (v5->isUsingPageViewController)
    {
      if (v5->documentViewController)
      {
        [(PDFView *)self _releaseDocumentViewController];

        [(PDFView *)self _setupDocumentViewController];
      }
    }
  }
}

- (void)setDisplaysPageBreaks:(BOOL)displaysPageBreaks
{
  if ([(PDFView *)self displaysPageBreaks]!= displaysPageBreaks)
  {
    self->_private->displaysPageBreaks = displaysPageBreaks;

    [(PDFView *)self layoutDocumentView];
  }
}

- (void)setPageBreakMargins:(UIEdgeInsets)pageBreakMargins
{
  if (pageBreakMargins.top < 0.0)
  {
    pageBreakMargins.top = 0.0;
  }

  if (pageBreakMargins.left < 0.0)
  {
    pageBreakMargins.left = 0.0;
  }

  if (pageBreakMargins.bottom < 0.0)
  {
    pageBreakMargins.bottom = 0.0;
  }

  v3 = self->_private;
  v3->pageBreakMargins.top = pageBreakMargins.top;
  v3->pageBreakMargins.left = pageBreakMargins.left;
  if (pageBreakMargins.right >= 0.0)
  {
    right = pageBreakMargins.right;
  }

  else
  {
    right = 0.0;
  }

  v3->pageBreakMargins.bottom = pageBreakMargins.bottom;
  v3->pageBreakMargins.right = right;
}

- (UIEdgeInsets)pageBreakMargins
{
  v2 = self->_private;
  top = v2->pageBreakMargins.top;
  left = v2->pageBreakMargins.left;
  bottom = v2->pageBreakMargins.bottom;
  right = v2->pageBreakMargins.right;
  if (![(PDFView *)self displaysPageBreaks])
  {
    top = *MEMORY[0x1E69DDCE0];
    left = *(MEMORY[0x1E69DDCE0] + 8);
    bottom = *(MEMORY[0x1E69DDCE0] + 16);
    right = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v7 = top;
  v8 = left;
  v9 = bottom;
  v10 = right;
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v7;
  return result;
}

- (UIEdgeInsets)documentMargins
{
  v2 = self->_private;
  top = v2->documentMargins.top;
  left = v2->documentMargins.left;
  bottom = v2->documentMargins.bottom;
  right = v2->documentMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setInFormFillingMode:(BOOL)mode
{
  v3 = self->_private;
  if (v3->inFormFillingMode != mode)
  {
    modeCopy = mode;
    v3->inFormFillingMode = mode;
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __32__PDFView_setInFormFillingMode___block_invoke;
    aBlock[3] = &unk_1E81525C8;
    objc_copyWeak(&v13, &location);
    v14 = modeCopy;
    v6 = _Block_copy(aBlock);
    [(PDFView *)self _showFormFillingButton:modeCopy];
    document = [(PDFView *)self document];
    akController = [document akController];

    if (objc_opt_respondsToSelector())
    {
      [akController setFormFillingEnabled:modeCopy];
    }

    controller = self->_private->controller;
    if (modeCopy)
    {
      activeAnnotation = [(PDFViewController *)controller activeAnnotation];
      isFormField = [activeAnnotation isFormField];

      if ((isFormField & 1) == 0)
      {
        [(PDFViewController *)self->_private->controller activateNextAnnotation:0 withCompletion:v6];
LABEL_9:

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
        return;
      }
    }

    else
    {
      [(PDFViewController *)controller setActiveAnnotation:0];
    }

    v6[2](v6);
    goto LABEL_9;
  }
}

void __32__PDFView_setInFormFillingMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained internalForceAnnotationRefresh];
  [WeakRetained highlightDetectedFormFields:*(a1 + 40)];
}

- (BOOL)allowsMarkupAnnotationEditing
{
  if (self->_private->allowsMarkupAnnotationEditing)
  {
    return 1;
  }

  else
  {
    return GetDefaultsWriteAKEnabled();
  }
}

- (void)setDisplayBox:(PDFDisplayBox)displayBox
{
  if ([(PDFView *)self displayBox]!= displayBox)
  {
    [(PDFRenderingProperties *)self->_private->renderingProperties setDisplayBox:displayBox];
    [(PDFView *)self layoutDocumentView];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PDFViewDisplayBoxChanged" object:self];
  }
}

- (void)setDisplaysAsBook:(BOOL)displaysAsBook
{
  v3 = self->_private;
  if (v3->displaysAsBook != displaysAsBook)
  {
    v3->displaysAsBook = displaysAsBook;
    [(PDFView *)self layoutDocumentView];
  }
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
  v3.receiver = self;
  v3.super_class = PDFView;
  [(PDFView *)&v3 setBackgroundColor:backgroundColor];
}

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = PDFView;
  backgroundColor = [(PDFView *)&v4 backgroundColor];

  return backgroundColor;
}

- (void)usePageViewController:(BOOL)enable withViewOptions:(NSDictionary *)viewOptions
{
  v5 = enable;
  v7 = viewOptions;
  v8 = self->_private;
  if (v8->isUsingPageViewController != v5)
  {
    v9 = v7;
    v8->isUsingPageViewController = v5;
    objc_storeStrong(&self->_private->pageViewControllerOptions, viewOptions);
    if (v5)
    {
      [(PDFView *)self _setupDocumentViewController];
      [(PDFView *)self _releaseScrollView];
    }

    else
    {
      [(PDFView *)self _setupScrollView];
      [(PDFView *)self _releaseDocumentViewController];
    }

    v7 = v9;
  }
}

- (void)_setupScrollView
{
  v3 = [PDFScrollView alloc];
  [(PDFView *)self bounds];
  v4 = [(PDFScrollView *)v3 initWithFrame:?];
  v5 = self->_private;
  scrollView = v5->scrollView;
  v5->scrollView = v4;

  [(PDFScrollView *)self->_private->scrollView setPDFView:self];
  [(PDFView *)self setMinScaleFactor:0.1];
  [(PDFView *)self setMaxScaleFactor:20.0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_scrollViewSaysPageMayHaveChanged_ name:@"PDFScrollViewPageMayHaveChangedNotification" object:self->_private->scrollView];

  [(PDFScrollView *)self->_private->scrollView setShowsVerticalScrollIndicator:1];
  [(PDFScrollView *)self->_private->scrollView setShowsHorizontalScrollIndicator:0];
  [(PDFScrollView *)self->_private->scrollView setAutoresizingMask:18];
  [(PDFView *)self gestureInit];
  v8 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:self];
  v9 = self->_private;
  dragInteraction = v9->dragInteraction;
  v9->dragInteraction = v8;

  [(PDFView *)self addInteraction:self->_private->dragInteraction];
  v11 = self->_private;
  v12 = *(MEMORY[0x1E69DDCE0] + 16);
  *&v11->savedSafeAreaInsets.top = *MEMORY[0x1E69DDCE0];
  *&v11->savedSafeAreaInsets.bottom = v12;
  self->_private->horizontalScaleFactorBeforeRotation = 1.0;
  self->_private->documentViewCenterBeforeRotation = *MEMORY[0x1E695EFF8];
  p_extensionViewBoundsInDocument = &self->_private->extensionViewBoundsInDocument;
  v14 = *MEMORY[0x1E695F058];
  v15 = *(MEMORY[0x1E695F058] + 16);
  p_extensionViewBoundsInDocument->origin = *MEMORY[0x1E695F058];
  p_extensionViewBoundsInDocument->size = v15;
  p_extensionViewFrame = &self->_private->extensionViewFrame;
  p_extensionViewFrame->origin = v14;
  p_extensionViewFrame->size = v15;
  self->_private->extensionViewZoomScale = 1.0;
  v17 = [[PDFTimer alloc] initWithThrottleDelay:sel__tileRefresh forSelector:self forTarget:0.1];
  v18 = self->_private;
  tilesSyncTimer = v18->tilesSyncTimer;
  v18->tilesSyncTimer = v17;

  [(PDFTimer *)self->_private->tilesSyncTimer update];
  self->_private->activeMarkupStyle = 0;
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(PDFView *)self setBackgroundColor:secondarySystemBackgroundColor];

  [(PDFScrollView *)self->_private->scrollView setDocument:self->_private->document];
  [(PDFView *)self addSubview:self->_private->scrollView];
  pdfDocumentView = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
  pageBackgroundManager = [pdfDocumentView pageBackgroundManager];
  objc_storeWeak(&self->_pageBackgroundManager, pageBackgroundManager);

  [(PDFView *)self _updatePasswordView];
}

- (void)_releaseScrollView
{
  [(PDFScrollView *)self->_private->scrollView removeFromSuperview];
  [(PDFScrollView *)self->_private->scrollView setDocument:0];
  v3 = self->_private;
  scrollView = v3->scrollView;
  v3->scrollView = 0;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"PDFScrollViewPageMayHaveChangedNotification" object:self->_private->scrollView];

  v6 = MEMORY[0x1E69E58C0];

  [v6 cancelPreviousPerformRequestsWithTarget:self selector:sel_syncPageIndexToScrollView object:0];
}

- (void)_setupDocumentViewController
{
  [(PDFScrollView *)self->_private->scrollView minimumZoomScale];
  v4 = v3;
  [(PDFScrollView *)self->_private->scrollView maximumZoomScale];
  v6 = v5;
  displayDirection = [(PDFView *)self displayDirection];
  documentViewController = self->_private->documentViewController;
  if (!documentViewController)
  {
    if (v6 <= 0.0)
    {
      v6 = 5.0;
    }

    if (v4 <= 0.0)
    {
      v4 = 0.25;
    }

    v9 = [[PDFDocumentViewController alloc] initWithPDFView:self pageIndex:self->_currentPageIndex navigationOrientation:displayDirection == kPDFDisplayDirectionVertical withRenderingProperties:self->_private->renderingProperties andOptions:self->_private->pageViewControllerOptions];
    v10 = self->_private;
    v11 = v10->documentViewController;
    v10->documentViewController = v9;

    view = [(PDFDocumentViewController *)self->_private->documentViewController view];
    [(PDFView *)self addSubview:view];

    [(PDFView *)self bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    view2 = [(PDFDocumentViewController *)self->_private->documentViewController view];
    [view2 setFrame:{v14, v16, v18, v20}];

    WeakRetained = objc_loadWeakRetained(&self->_private->delegate);
    [(PDFView *)self setNewPageVisibilityDelegate:WeakRetained withOldDelegate:0];

    v23 = self->_private;
    autoScale = v23->autoScale;
    [(PDFDocumentViewController *)v23->documentViewController setMinScaleFactor:v4 withMaxScaleFactor:v6];
    [(PDFView *)self setAutoScales:autoScale];
    [(PDFDocumentViewController *)self->_private->documentViewController setDisplaysRTL:self->_private->displaysRTL];
    [(PDFDocumentViewController *)self->_private->documentViewController updateScrollViews];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_pageViewControllerSaysPageChanged_ name:@"PDFDocumentViewControllerChangedPage" object:self];

    documentViewController = self->_private->documentViewController;
  }

  pageBackgroundManager = [(PDFDocumentViewController *)documentViewController pageBackgroundManager];
  objc_storeWeak(&self->_pageBackgroundManager, pageBackgroundManager);

  [(PDFView *)self _updatePasswordView];
}

- (void)_releaseDocumentViewController
{
  v10[1] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"PDFDocumentViewControllerChangedPage" object:self];

  documentViewController = self->_private->documentViewController;
  v5 = objc_alloc_init(PDFPageViewController);
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(PDFDocumentViewController *)documentViewController setViewControllers:v6 direction:0 animated:0 completion:0];

  view = [(PDFDocumentViewController *)self->_private->documentViewController view];
  [view removeFromSuperview];

  [(PDFDocumentViewController *)self->_private->documentViewController removeFromParentViewController];
  v8 = self->_private;
  v9 = v8->documentViewController;
  v8->documentViewController = 0;
}

- (void)setDelegate:(id)delegate
{
  v9 = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_private->delegate);

  v5 = v9;
  if (WeakRetained != v9)
  {
    v6 = objc_loadWeakRetained(&self->_private->delegate);
    [(PDFView *)self setNewPageVisibilityDelegate:v9 withOldDelegate:v6];
    if (v9)
    {
      self->_private->delegateWillScale = objc_opt_respondsToSelector() & 1;
      self->_private->delegateOrdersPageDrawing = objc_opt_respondsToSelector() & 1;
      v7 = v9;
      self->_private->delegateRespondsToAllowFormFilling = objc_opt_respondsToSelector() & 1;
      self->_private->delegateRespondsToAllowFormFillingWithAutoFill = objc_opt_respondsToSelector() & 1;
      v8 = objc_opt_respondsToSelector();

      self->_private->delegateRespondsToAllowFormFillingWithConfidence = v8 & 1;
    }

    else
    {
      self->_private->delegateWillScale = 0;
      self->_private->delegateOrdersPageDrawing = 0;
      self->_private->delegateRespondsToAllowFormFilling = 0;
      self->_private->delegateRespondsToAllowFormFillingWithAutoFill = 0;
      self->_private->delegateRespondsToAllowFormFillingWithConfidence = 0;
    }

    v5 = v9;
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_private->delegate);

  return WeakRetained;
}

- (void)setPageOverlayViewProvider:(id)pageOverlayViewProvider
{
  obj = pageOverlayViewProvider;
  WeakRetained = objc_loadWeakRetained(&self->_pageOverlayViewProvider);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_pageOverlayViewProvider, obj);
    if (obj)
    {
      [(PDFView *)self _ensureOverlayViewController];
      [(PDFOverlayViewsController *)self->_overlayViewController setViewProvider:obj];
    }
  }
}

- (void)setScaleFactor:(CGFloat)scaleFactor
{
  [(PDFView *)self scaleFactor];
  if (vabdd_f64(v5, scaleFactor) > 0.00000011920929)
  {
    [(PDFView *)self setAutoScales:0];
  }

  v6 = self->_private;
  if (v6->isUsingPageViewController)
  {
    documentViewController = v6->documentViewController;

    [(PDFDocumentViewController *)documentViewController setScaleFactor:scaleFactor];
  }

  else if (![(PDFRenderingProperties *)v6->renderingProperties isUsingPDFExtensionView])
  {

    [(PDFView *)self _internalSetScaleFactor:scaleFactor];
  }
}

- (CGFloat)scaleFactor
{
  v2 = self->_private;
  if (v2->isUsingPageViewController)
  {
    documentViewController = v2->documentViewController;

    [(PDFDocumentViewController *)documentViewController scaleFactor];
  }

  else
  {
    isUsingPDFExtensionView = [(PDFRenderingProperties *)v2->renderingProperties isUsingPDFExtensionView];
    v7 = self->_private;
    if (isUsingPDFExtensionView)
    {
      return v7->extensionViewZoomScale;
    }

    else
    {
      scrollView = v7->scrollView;

      [(PDFScrollView *)scrollView zoomScale];
    }
  }

  return result;
}

- (void)zoomIn:(id)sender
{
  document = [(PDFView *)self document];
  isLocked = [document isLocked];

  if ((isLocked & 1) == 0)
  {
    [(PDFView *)self setAutoScales:0];
    [(PDFView *)self scaleFactor];
    v7 = v6 * self->_private->zoomIncrement;

    [(PDFView *)self _internalSetScaleFactor:v7];
  }
}

- (BOOL)canZoomIn
{
  [(PDFView *)self scaleFactor];
  [(PDFView *)self PDFViewWillChangeScaleFactor:self toScale:v3 * self->_private->zoomIncrement];
  v5 = v4;
  [(PDFView *)self scaleFactor];
  return v5 != v6;
}

- (void)zoomOut:(id)sender
{
  document = [(PDFView *)self document];
  isLocked = [document isLocked];

  if ((isLocked & 1) == 0)
  {
    [(PDFView *)self setAutoScales:0];
    [(PDFView *)self scaleFactor];
    v7 = v6 / self->_private->zoomIncrement;

    [(PDFView *)self _internalSetScaleFactor:v7];
  }
}

- (BOOL)canZoomOut
{
  [(PDFView *)self scaleFactor];
  [(PDFView *)self PDFViewWillChangeScaleFactor:self toScale:v3 / self->_private->zoomIncrement];
  v5 = v4;
  [(PDFView *)self scaleFactor];
  return v5 != v6;
}

- (void)setAutoScales:(BOOL)autoScales
{
  v3 = autoScales;
  self->_private->autoScale = autoScales;
  if (autoScales)
  {
    [(PDFView *)self _internalSetAutoScaleFactor];
  }

  v5 = self->_private;
  if (v5->isUsingPageViewController)
  {
    documentViewController = v5->documentViewController;

    [(PDFDocumentViewController *)documentViewController setAutoScales:v3];
  }
}

- (CGFloat)scaleFactorForSizeToFit
{
  v3 = self->_private;
  if (v3->isUsingPageViewController)
  {
    documentViewController = v3->documentViewController;

    [(PDFDocumentViewController *)documentViewController autoScaleFactor];
  }

  else
  {
    currentPage = [(PDFView *)self currentPage];
    [(PDFView *)self _unboundAutoScaleFactorForPage:currentPage];
    v9 = v8;

    return v9;
  }

  return result;
}

- (PDFAreaOfInterest)areaOfInterestForPoint:(CGPoint)cursorLocation
{
  y = cursorLocation.y;
  x = cursorLocation.x;
  document = [(PDFView *)self document];
  v7 = [(PDFView *)self pageForPoint:0 nearest:x, y];
  if (!v7)
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_47;
  }

  [(PDFView *)self convertPoint:v7 toPage:x, y];
  v9 = v8;
  v11 = v10;
  v12 = [v7 annotationAtPoint:?];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [v7 scannedAnnotationAtPoint:{v9, v11}];
    if (!v13)
    {
      v14 = 1;
      v21 = 1;
LABEL_32:
      [(PDFAnnotation *)self->_private->annotationOver setPointerIsOverAnnotation:0];
      v24 = self->_private;
      annotationOver = v24->annotationOver;
      v24->annotationOver = 0;

      goto LABEL_33;
    }
  }

  v15 = [(PDFAnnotation *)v13 valueForAnnotationKey:@"/Subtype"];
  v16 = [(PDFAnnotation *)v13 valueForAnnotationKey:@"/FT"];
  v17 = self->_private->annotationOver;
  if (v17)
  {
    v18 = v17 == v13;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    [(PDFAnnotation *)v17 setPointerIsOverAnnotation:0];
  }

  [(PDFAnnotation *)v13 setPointerIsOverAnnotation:1];
  objc_storeStrong(&self->_private->annotationOver, v13);
  v19 = [(PDFAnnotation *)v13 valueForAnnotationKey:@"/Subtype"];
  v20 = [v19 isEqualToString:@"/Link"];

  if (v20)
  {
    v21 = 13;
  }

  else
  {
    v21 = 5;
  }

  v22 = [(PDFAnnotation *)v13 valueForAnnotationKey:@"/Subtype"];
  v23 = [v22 isEqualToString:@"/Popup"];

  if (v23)
  {
    v21 |= 0x80u;
  }

  else if ([v15 isEqualToString:@"/Widget"] && objc_msgSend(v16, "isEqualToString:", @"/Tx") && !-[PDFAnnotation isReadOnly](v13, "isReadOnly"))
  {
    v21 |= 0x20u;
  }

  else if ([v15 isEqualToString:@"/Widget"] && objc_msgSend(v16, "isEqualToString:", @"/Btn") && !-[PDFAnnotation isReadOnly](v13, "isReadOnly"))
  {
    v21 |= 0x10u;
  }

  else if ([v15 isEqualToString:@"/Text"])
  {
    v21 |= 0x40u;
  }

  else if ([(PDFAnnotation *)v13 isMarkupAnnotationSubtype]&& [(PDFAnnotation *)v13 noteContainsPoint:v9, v11])
  {
    v21 |= 0x10u;
  }

  v14 = v21;
  if ((v21 & 4) == 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  if ([v7 pageLayoutIfAvail])
  {
    controller = [(PDFView *)self controller];
    if (controller && (v27 = controller, -[PDFView controller](self, "controller"), v28 = objc_claimAutoreleasedReturnValue(), [v28 tableCellSelection], v29 = objc_claimAutoreleasedReturnValue(), v29, v28, v27, v29))
    {
      controller2 = [(PDFView *)self controller];
      tableCellSelection = [controller2 tableCellSelection];

      [tableCellSelection table];
      v32 = CGPDFPageLayoutTableCopyCellAtPoint();
      if ([tableCellSelection isPointInHandle:0 whichHandle:{v9, v11}])
      {
        v14 = v21 | 0x400;

        goto LABEL_47;
      }

      if (v32 && (Index = CGPDFPageLayoutTableCellGetIndex(), Index == [tableCellSelection startCellIndex]))
      {
        v35 = 2;
      }

      else
      {
        v35 = 512;
      }

      LODWORD(v14) = v21 | v35;
    }

    else
    {
      PDFPointToCGPoint(v9, v11);
      AreaOfInterestAtPoint = CGPDFPageLayoutGetAreaOfInterestAtPoint();
      if ((AreaOfInterestAtPoint & 4) != 0)
      {
        LODWORD(v14) = v21 | 0x200;
      }

      else
      {
        LODWORD(v14) = (AreaOfInterestAtPoint << 7) & 0x100 | (2 * (AreaOfInterestAtPoint & 1)) | v21;
      }
    }

    v14 = v14;
  }

LABEL_47:

  return v14;
}

- (void)performAction:(PDFAction *)action
{
  v4 = action;
  v5 = v4;
  if (v4)
  {
    type = [(PDFAction *)v4 type];
    delegate = [(PDFView *)self delegate];
    if ([type isEqualToString:@"GoTo"])
    {
      destination = [(PDFAction *)v5 destination];
      [(PDFView *)self goToDestination:destination];
      goto LABEL_4;
    }

    if ([type isEqualToString:@"GoToR"])
    {
      if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [delegate PDFViewOpenPDF:self forRemoteGoToAction:v5];
        goto LABEL_47;
      }
    }

    else
    {
      if (![type isEqualToString:@"Named"])
      {
        if ([type isEqualToString:@"ResetForm"])
        {
          document = [(PDFView *)self document];
          if (document)
          {
            v11 = document;
            [document resetFormFields:v5];
          }

          goto LABEL_47;
        }

        if (([type isEqualToString:@"URI"] & 1) == 0 && !objc_msgSend(type, "isEqualToString:", @"Launch"))
        {
LABEL_47:

          goto LABEL_48;
        }

        destination = v5;
        v12 = [(PDFAction *)destination URL];
        v13 = v12;
        if (v12 && (PDFURLLooksSuspicious(v12) & 1) == 0)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __25__PDFView_performAction___block_invoke;
          aBlock[3] = &unk_1E8151480;
          v13 = v13;
          v32 = v13;
          v33 = delegate;
          selfCopy = self;
          v14 = _Block_copy(aBlock);
          if ([(PDFAction *)destination isSuspiciousURL])
          {
            v15 = MEMORY[0x1E696AEC0];
            v16 = PDFKitLocalizedString(@"Opening the clicked link may send encrypted document content to the server \\U201C%@\\U201D.");
            host = [v13 host];
            v28 = [v15 stringWithFormat:v16, host];

            v18 = MEMORY[0x1E696AEC0];
            v19 = PDFKitLocalizedString(@"Link: %@");
            v27 = [v18 stringWithFormat:v19, v13];

            v26 = PDFKitLocalizedString(@"Cancel");
            v25 = PDFKitLocalizedString(@"Open Anyway");
            v20 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v28 message:v27 preferredStyle:1];
            v21 = [MEMORY[0x1E69DC648] actionWithTitle:v26 style:1 handler:0];
            [v20 addAction:v21];
            v22 = MEMORY[0x1E69DC648];
            v29[0] = MEMORY[0x1E69E9820];
            v29[1] = 3221225472;
            v29[2] = __25__PDFView_performAction___block_invoke_2;
            v29[3] = &unk_1E8152078;
            v30 = v14;
            v23 = [v22 actionWithTitle:v25 style:2 handler:v29];
            [v20 addAction:v23];
            parentViewController = [(PDFView *)self parentViewController];
            [parentViewController presentViewController:v20 animated:1 completion:0];
          }

          else
          {
            v14[2](v14);
          }
        }

LABEL_4:
        goto LABEL_47;
      }

      name = [(PDFAction *)v5 name];
      if (name <= 5)
      {
        if (name <= 2)
        {
          if (name == 1)
          {
            [(PDFView *)self goToNextPage:self];
          }

          else if (name == 2)
          {
            [(PDFView *)self goToPreviousPage:self];
          }
        }

        else if (name == 3)
        {
          [(PDFView *)self goToFirstPage:self];
        }

        else if (name == 4)
        {
          [(PDFView *)self goToLastPage:self];
        }

        else
        {
          [(PDFView *)self goBack:self];
        }

        goto LABEL_47;
      }

      if (name <= 7)
      {
        if (name == 6)
        {
          [(PDFView *)self goForward:self];
          goto LABEL_47;
        }

        if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [delegate PDFViewPerformGoToPage:self];
          goto LABEL_47;
        }
      }

      else
      {
        switch(name)
        {
          case 8:
            if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [delegate PDFViewPerformFind:self];
              goto LABEL_47;
            }

            break;
          case 10:
            if ([(PDFView *)self canZoomIn])
            {
              [(PDFView *)self zoomIn:self];
              goto LABEL_47;
            }

            break;
          case 11:
            if ([(PDFView *)self canZoomOut])
            {
              [(PDFView *)self zoomOut:self];
              goto LABEL_47;
            }

            break;
          default:
            goto LABEL_47;
        }
      }
    }

    [(PDFView *)self performBeep];
    goto LABEL_47;
  }

LABEL_48:
}

uint64_t __25__PDFView_performAction___block_invoke(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), result = objc_opt_isKindOfClass(), (result))
  {
    if (a1[5] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v3 = a1[5];
      v4 = a1[6];
      v5 = a1[4];
    }

    else
    {
      v3 = a1[6];
      v5 = a1[4];
      v4 = v3;
    }

    return [v3 PDFViewWillClickOnLink:v4 withURL:v5];
  }

  return result;
}

- (void)setCurrentSelection:(id)selection updateTextInput:(BOOL)input
{
  inputCopy = input;
  v54[2] = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  v8 = selectionCopy;
  if (selectionCopy && ![selectionCopy isEmpty])
  {
    goto LABEL_9;
  }

  v9 = self->_private;
  currentSelection = v9->currentSelection;
  if (currentSelection)
  {
    v9->currentSelection = 0;

    if (inputCopy)
    {
      v11 = self->_private;
      if (v11->isUsingPageViewController)
      {
        [(PDFDocumentViewController *)v11->documentViewController setSelection:0];
        v11 = self->_private;
      }

      pdfDocumentView = [(PDFScrollView *)v11->scrollView pdfDocumentView];
      [pdfDocumentView setSelection:0];
    }
  }

  if (v8)
  {
LABEL_9:
    if (([v8 isEmpty] & 1) == 0)
    {
      objc_storeStrong(&self->_private->currentSelection, selection);
      if (self->_private->isUsingPageViewController)
      {
        currentPage = [(PDFView *)self currentPage];
        v14 = [v8 pdfKitIndexOfFirstCharacterOnPage:currentPage];
        v15 = [v8 pdfKitIndexOfLastCharacterOnPage:currentPage];
        if (v14 != 0x7FFFFFFFFFFFFFFFLL && v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = [currentPage selectionForRange:{v14, v15 - v14 + 1}];
          v17 = self->_private;
          v18 = v17->currentSelection;
          v17->currentSelection = v16;

          v19 = self->_private->currentSelection;
          color = [v8 color];
          [(PDFSelection *)v19 setColor:color];

          if (inputCopy)
          {
            [(PDFDocumentViewController *)self->_private->documentViewController setSelection:self->_private->currentSelection];
          }
        }
      }

      if (inputCopy)
      {
        pdfDocumentView2 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
        [pdfDocumentView2 setSelection:self->_private->currentSelection];
      }
    }
  }

  v22 = self->_private->currentSelection;
  if (v22)
  {
    pages = [(PDFSelection *)v22 pages];
    v24 = [pages count];

    if (v24)
    {
      firstPage = [(PDFSelection *)self->_private->currentSelection firstPage];
      [(PDFSelection *)self->_private->currentSelection firstSpanBoundsForPage:firstPage];
      [(PDFView *)self convertPoint:firstPage fromPage:PDFPointMake(v28, v26 + v27)];
      v30 = v29;
      v32 = v31;
      lastPage = [(PDFSelection *)self->_private->currentSelection lastPage];

      v50 = lastPage;
      [(PDFSelection *)self->_private->currentSelection lastSpanBoundsForPage:lastPage];
      [(PDFView *)self convertPoint:lastPage fromPage:PDFPointMake(v34 + v35, v36)];
      v38 = v37;
      v40 = v39;
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v53[0] = @"topLeftSelectionPoint";
      v42 = [MEMORY[0x1E696AD98] numberWithDouble:v30];
      v52[0] = v42;
      v43 = [MEMORY[0x1E696AD98] numberWithDouble:v32];
      v52[1] = v43;
      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
      v53[1] = @"bottomRightSelectionPoint";
      v54[0] = v44;
      v45 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
      v51[0] = v45;
      v46 = [MEMORY[0x1E696AD98] numberWithDouble:v40];
      v51[1] = v46;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
      v54[1] = v47;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];
      [defaultCenter postNotificationName:@"PDFTextSelectionDidChangeTextSelectionPoints" object:self userInfo:v48];
    }
  }

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"PDFViewSelectionChanged" object:self];
}

- (void)setCurrentSelection:(PDFSelection *)selection animate:(BOOL)animate
{
  v4 = animate;
  v10 = [(PDFSelection *)selection copy];
  [v10 setIsTextSelection];
  isEmpty = [(PDFView *)self setCurrentSelection:v10];
  v7 = v10;
  if (v10)
  {
    if (v4)
    {
      isEmpty = [v10 isEmpty];
      v7 = v10;
      if ((isEmpty & 1) == 0)
      {
        pages = [v10 pages];
        firstObject = [pages firstObject];

        [v10 boundsForPage:firstObject];
        [(PDFCoachMarkManager *)self->_private->coachMarkManager createCoachMarkForPage:firstObject atFrame:?];

        v7 = v10;
      }
    }
  }

  MEMORY[0x1EEE66BB8](isEmpty, v7);
}

- (void)clearSelection
{
  v3 = self->_private;
  currentSelection = v3->currentSelection;
  v3->currentSelection = 0;

  pdfDocumentView = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
  [pdfDocumentView setSelection:self->_private->currentSelection];

  v6 = self->_private;
  if (v6->isUsingPageViewController)
  {
    [(PDFDocumentViewController *)v6->documentViewController setSelection:v6->currentSelection];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PDFViewSelectionChanged" object:self];
}

- (void)selectAll:(id)sender
{
  if (self->_private->isUsingPageViewController)
  {
    currentPage = [(PDFView *)self currentPage];
    [currentPage selectionForAll];
  }

  else
  {
    currentPage = [(PDFView *)self document];
    [currentPage selectionForEntireDocument];
  }
  v5 = ;

  [(PDFView *)self setCurrentSelection:v5];
}

- (void)_lookup:(id)_lookup
{
  _lookupCopy = _lookup;
  currentSelection = self->_private->currentSelection;
  if (currentSelection)
  {
    v30 = _lookupCopy;
    currentSelection = [(PDFSelection *)currentSelection isEmpty];
    _lookupCopy = v30;
    if ((currentSelection & 1) == 0)
    {
      parentViewController = [(PDFView *)self parentViewController];
      if (parentViewController)
      {
        string = [(PDFSelection *)self->_private->currentSelection string];
        v8 = [objc_alloc(DDParsecCollectionViewControllerClass()) initWithString:string range:{0, objc_msgSend(string, "length")}];
        v9 = self->_private->currentSelection;
        firstPage = [(PDFSelection *)v9 firstPage];
        [(PDFSelection *)v9 boundsForPage:firstPage];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        firstPage2 = [(PDFSelection *)self->_private->currentSelection firstPage];
        [(PDFView *)self convertRect:firstPage2 fromPage:v12, v14, v16, v18];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        popoverPresentationController = [v8 popoverPresentationController];
        [popoverPresentationController setSourceView:self];

        popoverPresentationController2 = [v8 popoverPresentationController];
        [popoverPresentationController2 setSourceRect:{v21, v23, v25, v27}];

        [parentViewController presentViewController:v8 animated:1 completion:0];
      }

      else
      {
        NSLog(&cfstr_SFailedToFindO.isa, "[PDFView _lookup:]");
      }

      _lookupCopy = v30;
    }
  }

  MEMORY[0x1EEE66BB8](currentSelection, _lookupCopy);
}

- (void)scrollSelectionToVisible:(id)sender
{
  currentSelection = [(PDFView *)self currentSelection];
  v5 = currentSelection;
  if (currentSelection)
  {
    v8 = currentSelection;
    currentSelection = [currentSelection isEmpty];
    v5 = v8;
    if ((currentSelection & 1) == 0)
    {
      pages = [v8 pages];
      v7 = [pages objectAtIndex:0];

      [v8 boundsForPage:v7];
      v11 = PDFRectInset(v10, -4.0, -4.0);
      [(PDFView *)self goToRect:v7 onPage:v11.origin.x, v11.origin.y, v11.size.width, v11.size.height];

      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](currentSelection, v5);
}

- (void)setHighlightedSelections:(NSArray *)highlightedSelections
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = highlightedSelections;
  if (self->_private->highlights != v5)
  {
    visiblePageViews = [(PDFView *)self visiblePageViews];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v7 = [visiblePageViews countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v40;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v40 != v9)
          {
            objc_enumerationMutation(visiblePageViews);
          }

          [*(*(&v39 + 1) + 8 * i) setSearchSelections:0];
        }

        v8 = [visiblePageViews countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&self->_private->highlights, highlightedSelections);
    highlights = self->_private->highlights;
    if (highlights)
    {
      v25 = visiblePageViews;
      v26 = v5;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = highlights;
      v29 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v29)
      {
        v28 = *v36;
        do
        {
          v12 = 0;
          do
          {
            if (*v36 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v30 = v12;
            v13 = *(*(&v35 + 1) + 8 * v12);
            pages = [v13 pages];
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v15 = [pages countByEnumeratingWithState:&v31 objects:v43 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v32;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v32 != v17)
                  {
                    objc_enumerationMutation(pages);
                  }

                  v19 = [(PDFDocument *)self->_private->document indexForPage:*(*(&v31 + 1) + 8 * j)];
                  pdfDocumentView = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
                  v21 = [pdfDocumentView pageViewForPageAtIndex:v19];

                  v22 = self->_private;
                  if (v22->isUsingPageViewController)
                  {
                    v23 = [(PDFDocumentViewController *)v22->documentViewController findPageViewControllerForPageIndex:v19];
                    pageView = [v23 pageView];

                    v21 = pageView;
                  }

                  if (v21)
                  {
                    [v21 addSearchSelection:v13];
                  }
                }

                v16 = [pages countByEnumeratingWithState:&v31 objects:v43 count:16];
              }

              while (v16);
            }

            v12 = v30 + 1;
          }

          while (v30 + 1 != v29);
          v29 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v44 count:16];
        }

        while (v29);
      }

      visiblePageViews = v25;
      v5 = v26;
    }
  }
}

- (void)takePasswordFrom:(id)sender
{
  v9 = sender;
  document = [(PDFView *)self document];
  v5 = objc_opt_respondsToSelector();
  if (document)
  {
    if (v5)
    {
      if (![document allowsPrinting] || (-[PDFView document](self, "document"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "allowsCopying"), v6, (v7 & 1) == 0))
      {
        stringValue = [v9 stringValue];
        [document unlockWithPassword:stringValue];
      }
    }
  }
}

- (void)drawPage:(PDFPage *)page toContext:(CGContextRef)context
{
  v6 = page;
  [(PDFPage *)v6 drawWithBox:[(PDFView *)self displayBox] toContext:context];
}

- (void)copy:(id)sender
{
  v35 = *MEMORY[0x1E69E9840];
  currentSelection = [(PDFView *)self currentSelection];
  if (currentSelection)
  {
    document = [(PDFView *)self document];
    allowsCopying = [document allowsCopying];

    if ((allowsCopying & 1) == 0)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"PDFViewCopyPermission" object:self];
LABEL_25:

      goto LABEL_26;
    }

    string = [currentSelection string];
    defaultCenter = [string precomposedStringWithCanonicalMapping];

    if (defaultCenter)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      pages = [currentSelection pages];
      v10 = [pages countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v27;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(pages);
            }

            if ([*(*(&v26 + 1) + 8 * v13) isTextFromOCR])
            {
              v14 = 1;
              goto LABEL_15;
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [pages countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v14 = 0;
LABEL_15:

      generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
      isUsingPDFExtensionView = [(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      if ((v14 & 1) == 0)
      {
        rtfData = [currentSelection rtfData];
        if (rtfData)
        {
          identifier = [*MEMORY[0x1E6982F90] identifier];
          [dictionary setObject:rtfData forKeyedSubscript:identifier];
        }

        htmlData = [currentSelection htmlData];
        if (htmlData)
        {
          identifier2 = [*MEMORY[0x1E6982E18] identifier];
          [dictionary setObject:htmlData forKeyedSubscript:identifier2];
        }
      }

      identifier3 = [*MEMORY[0x1E6983060] identifier];
      [dictionary setObject:defaultCenter forKeyedSubscript:identifier3];

      if (isUsingPDFExtensionView)
      {
        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        v31 = dictionary;
        v32 = @"items";
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
        v33 = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        [defaultCenter2 postNotificationName:@"PDFTextSelectionDidCopy" object:self userInfo:v25];
      }

      else
      {
        v30 = dictionary;
        defaultCenter2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        [generalPasteboard setItems:defaultCenter2];
      }

      goto LABEL_25;
    }
  }

LABEL_26:
}

- (PDFPage)pageForPoint:(CGPoint)point nearest:(BOOL)nearest
{
  v4 = nearest;
  y = point.y;
  x = point.x;
  v8 = self->_private;
  if (v8->isUsingPageViewController)
  {
    view = [(PDFDocumentViewController *)v8->documentViewController view];
    [(PDFView *)self convertPoint:view toView:x, y];
    v11 = v10;
    v13 = v12;

    v14 = [(PDFDocumentViewController *)self->_private->documentViewController pageForPoint:v4 nearest:v11, v13];
    goto LABEL_7;
  }

  document = [(PDFView *)self document];
  v16 = document;
  if (document && ([document isLocked] & 1) == 0)
  {
    documentView = [(PDFView *)self documentView];
    [(PDFView *)self convertPoint:documentView toView:x, y];
    v20 = v19;
    v22 = v21;

    documentView2 = [(PDFView *)self documentView];
    [documentView2 bounds];
    v25 = v24 - v22;

    pDFLayout = [(PDFView *)self PDFLayout];
    currentPage = [(PDFView *)self currentPage];
    v14 = [pDFLayout pageNearestPoint:currentPage currentPage:{v20, v25}];

    if (v4)
    {
      goto LABEL_6;
    }

    [(PDFView *)self convertPoint:v14 toPage:x, y];
    v29 = v28;
    v31 = v30;
    v32 = PDFRectToCGRect([v14 boundsForBox:{-[PDFView displayBox](self, "displayBox")}]);
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v41.x = PDFPointToCGPoint(v29, v31);
    v41.y = v39;
    v42.origin.x = v32;
    v42.origin.y = v34;
    v42.size.width = v36;
    v42.size.height = v38;
    if (CGRectContainsPoint(v42, v41))
    {
      goto LABEL_6;
    }
  }

  v14 = 0;
LABEL_6:

LABEL_7:

  return v14;
}

- (CGPoint)convertPoint:(CGPoint)point toPage:(PDFPage *)page
{
  y = point.y;
  x = point.x;
  v7 = page;
  v8 = v7;
  v9 = self->_private;
  if (v9->isUsingPageViewController)
  {
    view = [(PDFDocumentViewController *)v9->documentViewController view];
    [(PDFView *)self convertPoint:view toView:x, y];
    v12 = v11;
    v14 = v13;

    [(PDFDocumentViewController *)self->_private->documentViewController convertPoint:v8 toPage:v12, v14];
    x = v15;
    y = v16;
  }

  else if (v7)
  {
    documentView = [(PDFView *)self documentView];
    [(PDFView *)self convertPoint:documentView toView:x, y];
    v19 = v18;
    v21 = v20;

    documentView2 = [(PDFView *)self documentView];
    [documentView2 bounds];
    v24 = v23 - v21;

    pDFLayout = [(PDFView *)self PDFLayout];
    [pDFLayout convertPoint:v8 toPage:{v19, v24}];
    x = v26;
    y = v27;
  }

  v28 = x;
  v29 = y;
  result.y = v29;
  result.x = v28;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toPage:(PDFPage *)page
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = page;
  [(PDFView *)self convertPoint:v9 toPage:x, y];
  v11 = v10;
  v13 = v12;
  MaxX = PDFRectGetMaxX(x, y, width);
  MaxY = PDFRectGetMaxY(x, y, width, height);
  [(PDFView *)self convertPoint:v9 toPage:PDFPointMake(MaxX, MaxY)];
  v17 = v16;

  v18 = PDFRectFromPDFPoints(v11, v13, v17);
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromPage:(PDFPage *)page
{
  y = point.y;
  x = point.x;
  v7 = page;
  v8 = v7;
  v9 = self->_private;
  if (v9->isUsingPageViewController)
  {
    [(PDFDocumentViewController *)v9->documentViewController convertPoint:v7 fromPage:x, y];
    v11 = v10;
    v13 = v12;
    view = [(PDFDocumentViewController *)self->_private->documentViewController view];
    [view convertPoint:self toView:{v11, v13}];
LABEL_5:
    x = v15;
    y = v16;

    goto LABEL_6;
  }

  if (v7)
  {
    pDFLayout = [(PDFView *)self PDFLayout];
    [pDFLayout convertPoint:v8 fromPage:{x, y}];
    v19 = v18;
    v21 = v20;

    documentView = [(PDFView *)self documentView];
    [documentView bounds];
    v24 = v23 - v21;

    view = [(PDFView *)self documentView];
    [(PDFView *)self convertPoint:view fromView:v19, v24];
    goto LABEL_5;
  }

LABEL_6:

  v25 = x;
  v26 = y;
  result.y = v26;
  result.x = v25;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromPage:(PDFPage *)page
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = page;
  MinX = PDFRectGetMinX(x, y, width);
  MinY = PDFRectGetMinY(x, y, width, height);
  [(PDFView *)self convertPoint:v9 fromPage:PDFPointMake(MinX, MinY)];
  v13 = v12;
  v15 = v14;
  MaxX = PDFRectGetMaxX(x, y, width);
  MaxY = PDFRectGetMaxY(x, y, width, height);
  [(PDFView *)self convertPoint:v9 fromPage:PDFPointMake(MaxX, MaxY)];
  v19 = v18;

  v20 = PDFRectFromPDFPoints(v13, v15, v19);
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)layoutDocumentView
{
  if (!self->_private->scaling)
  {
    currentPageIndex = self->_currentPageIndex;
    document = [(PDFView *)self document];
    pageCount = [document pageCount];

    if (currentPageIndex >= pageCount)
    {
      document2 = [(PDFView *)self document];
      if ([document2 pageCount])
      {
        document3 = [(PDFView *)self document];
        v8 = [document3 pageCount] - 1;
      }

      else
      {
        v8 = 0;
      }

      [(PDFView *)self setCurrentPageIndex:v8 withNotification:0];
    }
  }

  pDFLayout = [(PDFView *)self PDFLayout];
  [pDFLayout invalidateInternalDocumentGeometry];

  [(PDFView *)self _findVisiblePages];
  pdfDocumentView = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
  [pdfDocumentView layoutDocumentView];

  [(PDFView *)self _resizeDisplayView:self];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PDFViewDidLayoutDocumentView" object:self];
}

- (void)annotationsChangedOnPage:(PDFPage *)page
{
  v4 = MEMORY[0x1E696AD88];
  v5 = page;
  defaultCenter = [v4 defaultCenter];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v5, @"page", 0}];

  [defaultCenter postNotificationName:@"PDFViewAnnotationsDidChange" object:self userInfo:v6];
}

- (CGSize)rowSizeForPage:(PDFPage *)page
{
  v4 = page;
  pDFLayout = [(PDFView *)self PDFLayout];
  [pDFLayout contentSizeWithCurrentPage:v4];
  v7 = v6;
  v9 = v8;

  v10 = round(v7);
  [(PDFView *)self gutterWidth];
  if (v11 > 0.0)
  {
    [(PDFView *)self gutterWidth];
    v10 = v10 + v12;
    pDFLayout2 = [(PDFView *)self PDFLayout];
    functionalDisplayMode = [pDFLayout2 functionalDisplayMode];

    if (functionalDisplayMode >= 2)
    {
      [(PDFView *)self gutterWidth];
      v10 = v10 + v15;
    }
  }

  pDFLayout3 = [(PDFView *)self PDFLayout];
  functionalDisplayMode2 = [pDFLayout3 functionalDisplayMode];

  if (functionalDisplayMode2)
  {
    [(PDFView *)self _pageViewHeight:v4];
    v18 = v19;
  }

  else
  {
    v18 = round(v9);
  }

  [(PDFView *)self scaleFactor];
  v21 = v18 * v20;
  [(PDFView *)self scaleFactor];
  v23 = v10 * v22;

  v24 = v23;
  v25 = v21;
  result.height = v25;
  result.width = v24;
  return result;
}

- (NSArray)visiblePages
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = self->_private;
  if (v4->isUsingPageViewController)
  {
    pageViews = [(PDFDocumentViewController *)v4->documentViewController pageViews];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [pageViews countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(pageViews);
          }

          page = [*(*(&v16 + 1) + 8 * i) page];
          [v3 addObject:page];
        }

        v7 = [pageViews countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v4 = self->_private;
  }

  if ([(PDFDocument *)v4->document pageCount]>= 1)
  {
    v11 = 0;
    do
    {
      pdfDocumentView = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
      v13 = [pdfDocumentView pageViewForPageAtIndex:v11];

      if (v13 && [v13 isVisible])
      {
        v14 = [(PDFDocument *)self->_private->document pageAtIndex:v11];
        if (v14)
        {
          [v3 addObject:v14];
        }
      }

      ++v11;
    }

    while (v11 < [(PDFDocument *)self->_private->document pageCount]);
  }

  return v3;
}

- (id)visiblePageViews
{
  v2 = self->_private;
  if (v2->isUsingPageViewController)
  {
    pageViews = [(PDFDocumentViewController *)v2->documentViewController pageViews];
  }

  else
  {
    pdfDocumentView = [(PDFScrollView *)v2->scrollView pdfDocumentView];
    pageViews = [pdfDocumentView pageViews];
  }

  return pageViews;
}

- (id)visibleAnnotations
{
  v28 = *MEMORY[0x1E69E9840];
  visiblePages = [(PDFView *)self visiblePages];
  array = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = visiblePages;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v17 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        annotations = [v8 annotations];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [annotations countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v19;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v19 != v12)
              {
                objc_enumerationMutation(annotations);
              }

              v14 = *(*(&v18 + 1) + 8 * j);
              [v14 bounds];
              if ([(PDFView *)self isRectVisible:v8 onPage:?])
              {
                [array addObject:v14];
              }
            }

            v11 = [annotations countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)enableBackgroundImages:(BOOL)images
{
  [(PDFRenderingProperties *)self->_private->renderingProperties setEnableBackgroundImages:?];
  if (!images)
  {
    documentView = [(PDFView *)self documentView];
    pageBackgroundManager = [documentView pageBackgroundManager];
    [pageBackgroundManager cancel];
  }
}

- (void)setBackgroundImage:(id)image forPage:(id)page
{
  pageCopy = page;
  imageCopy = image;
  documentView = [(PDFView *)self documentView];
  document = [pageCopy document];
  v9 = [document indexForPage:pageCopy];

  pageBackgroundManager = [documentView pageBackgroundManager];
  [pageBackgroundManager forceSetBackgroundImage:imageCopy forPageIndex:v9];
}

- (double)PDFViewWillChangeScaleFactor:(id)factor toScale:(double)scale
{
  [(PDFView *)self minScaleFactor];
  if (v6 <= scale)
  {
    [(PDFView *)self maxScaleFactor];
    if (v8 >= scale)
    {
      return scale;
    }

    else
    {

      [(PDFView *)self maxScaleFactor];
    }
  }

  else
  {

    [(PDFView *)self minScaleFactor];
  }

  return result;
}

- (void)PDFViewWillClickOnLink:(id)link withURL:(id)l
{
  lCopy = l;
  if (link)
  {
    v16 = lCopy;
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    if ([mEMORY[0x1E69DC668] canOpenURL:v16])
    {
      mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
      [mEMORY[0x1E69DC668]2 openURL:v16 options:MEMORY[0x1E695E0F8] completionHandler:0];
    }

    else
    {
      mEMORY[0x1E69DC668]2 = PDFKitLocalizedString(@"ERROR: Cannot open URL");
      v9 = MEMORY[0x1E696AEC0];
      v10 = PDFKitLocalizedString(@"Link: %@");
      v11 = [v9 stringWithFormat:v10, v16];

      v12 = PDFKitLocalizedString(@"OK");
      v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:mEMORY[0x1E69DC668]2 message:v11 preferredStyle:1];
      v14 = [MEMORY[0x1E69DC648] actionWithTitle:v12 style:0 handler:0];
      [v13 addAction:v14];
      parentViewController = [(PDFView *)self parentViewController];
      [parentViewController presentViewController:v13 animated:1 completion:0];
    }

    lCopy = v16;
  }
}

- (id)viewForPage:(id)page
{
  v4 = [(PDFDocument *)self->_private->document indexForPage:page];
  if (v4 >= [(PDFDocument *)self->_private->document pageCount])
  {
    v6 = 0;
  }

  else
  {
    pdfDocumentView = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
    v6 = [pdfDocumentView pageViewForPageAtIndex:v4];
  }

  return v6;
}

- (void)colorWidgetBackgrounds:(BOOL)backgrounds
{
  backgroundsCopy = backgrounds;
  pageCount = [(PDFDocument *)self->_private->document pageCount];
  if (pageCount >= 1)
  {
    v6 = pageCount;
    for (i = 0; i != v6; ++i)
    {
      pdfDocumentView = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
      v9 = [pdfDocumentView pageViewForPageAtIndex:i];
      v10 = [(PDFDocument *)self->_private->document pageAtIndex:i];
      [v9 colorWidgetBackgrounds:backgroundsCopy];
      [v10 setColorWidgetBackgrounds:backgroundsCopy];
    }
  }
}

- (void)drawDetectedAnnotationBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  v14 = *MEMORY[0x1E69E9840];
  visiblePageViews = [(PDFView *)self visiblePageViews];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [visiblePageViews countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(visiblePageViews);
        }

        [*(*(&v9 + 1) + 8 * v8++) enableHighlightDetectedFormFields:boundsCopy];
      }

      while (v6 != v8);
      v6 = [visiblePageViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (PDFView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = PDFView;
  v5 = [(PDFView *)&v37 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(PDFView *)v5 _commonInit];
    if (![coderCopy allowsKeyedCoding])
    {
      v36 = 0;
      [coderCopy decodeValueOfObjCType:"i" at:&v36];
      v35 = 0;
      [coderCopy decodeValueOfObjCType:"i" at:&v35];
      [(PDFView *)v6 setDisplayMode:v35];
      v34 = 1;
      [coderCopy decodeValueOfObjCType:"B" at:&v34];
      [(PDFView *)v6 setDisplaysPageBreaks:v34];
      v33 = 1.0;
      [coderCopy decodeValueOfObjCType:"f" at:&v33];
      [(PDFView *)v6 setScaleFactor:v33];
      v32 = 0;
      [coderCopy decodeValueOfObjCType:"B" at:&v32];
      [(PDFView *)v6 setAutoScales:v32];
      v31 = 0;
      [coderCopy decodeValueOfObjCType:"i" at:&v31];
      [(PDFView *)v6 setDisplayDirection:v31];
      v30 = 0;
      [coderCopy decodeValueOfObjCType:"B" at:&v30];
      [(PDFView *)v6 setDisplaysRTL:v30];
      v29 = 1.0;
      [coderCopy decodeValueOfObjCType:"f" at:&v29];
      [(PDFView *)v6 setMinScaleFactor:v29];
      v28 = 1.0;
      [coderCopy decodeValueOfObjCType:"f" at:&v28];
      [(PDFView *)v6 setMinScaleFactor:v28];
      v27 = 1.0;
      [coderCopy decodeValueOfObjCType:"f" at:&v27];
      v20 = v27;
      [coderCopy decodeValueOfObjCType:"f" at:&v27];
      v21 = v27;
      [coderCopy decodeValueOfObjCType:"f" at:&v27];
      v22 = v27;
      [coderCopy decodeValueOfObjCType:"f" at:&v27];
      [(PDFView *)v6 setPageBreakMargins:v22, v20, v27, v21];
      v26 = 0;
      [coderCopy decodeValueOfObjCType:"B" at:&v26];
      [(PDFView *)v6 setDisplaysAsBook:v26];
      v25 = 0;
      [coderCopy decodeValueOfObjCType:"B" at:&v25];
      [(PDFView *)v6 setEnableDataDetectors:v25];
      v24 = 2;
      [coderCopy decodeValueOfObjCType:"i" at:&v24];
      v19 = v24;
      goto LABEL_41;
    }

    [coderCopy containsValueForKey:@"Version"];
    if ([coderCopy containsValueForKey:@"DisplayMode"])
    {
      -[PDFView setDisplayMode:](v6, "setDisplayMode:", [coderCopy decodeIntForKey:@"DisplayMode"]);
    }

    if ([coderCopy containsValueForKey:@"PageBreaks"])
    {
      -[PDFView setDisplaysPageBreaks:](v6, "setDisplaysPageBreaks:", [coderCopy decodeBoolForKey:@"PageBreaks"]);
    }

    if ([coderCopy containsValueForKey:@"ScaleFactor"])
    {
      [coderCopy decodeFloatForKey:@"ScaleFactor"];
      [(PDFView *)v6 setScaleFactor:v7];
    }

    if ([coderCopy containsValueForKey:@"AutoScale"])
    {
      -[PDFView setAutoScales:](v6, "setAutoScales:", [coderCopy decodeBoolForKey:@"AutoScale"]);
    }

    if ([coderCopy containsValueForKey:@"DisplayDirection"])
    {
      -[PDFView setDisplayDirection:](v6, "setDisplayDirection:", [coderCopy decodeBoolForKey:@"DisplayDirection"]);
    }

    if ([coderCopy containsValueForKey:@"DisplaysRTL"])
    {
      -[PDFView setDisplaysRTL:](v6, "setDisplaysRTL:", [coderCopy decodeBoolForKey:@"DisplaysRTL"]);
    }

    if ([coderCopy containsValueForKey:@"MinScaleFactor"])
    {
      [coderCopy decodeFloatForKey:@"MinScaleFactor"];
      [(PDFView *)v6 setMinScaleFactor:v8];
    }

    if ([coderCopy containsValueForKey:@"MaxScaleFactor"])
    {
      [coderCopy decodeFloatForKey:@"MaxScaleFactor"];
      [(PDFView *)v6 setMaxScaleFactor:v9];
    }

    if ([(PDFView *)v6 displaysPageBreaks])
    {
      v10 = 4.0;
      v11 = 4.0;
      if ([coderCopy containsValueForKey:@"PageBreakMargins.left"])
      {
        [coderCopy decodeFloatForKey:@"PageBreakMargins.left"];
        v11 = v12;
      }

      if ([coderCopy containsValueForKey:@"PageBreakMargins.left"])
      {
        [coderCopy decodeFloatForKey:@"PageBreakMargins.right"];
        v10 = v13;
      }

      v14 = 4.75;
      v15 = 4.75;
      if ([coderCopy containsValueForKey:@"PageBreakMargins.top"])
      {
        [coderCopy decodeFloatForKey:@"PageBreakMargins.top"];
        v15 = v16;
      }

      if ([coderCopy containsValueForKey:@"PageBreakMargins.bottom"])
      {
        [coderCopy decodeFloatForKey:@"PageBreakMargins.bottom"];
        v14 = v17;
      }

      [(PDFView *)v6 setPageBreakMargins:v15, v11, v14, v10];
    }

    if ([coderCopy containsValueForKey:@"DisplaysAsBook"])
    {
      -[PDFView setDisplaysAsBook:](v6, "setDisplaysAsBook:", [coderCopy decodeBoolForKey:@"DisplaysAsBook"]);
    }

    if ([coderCopy containsValueForKey:@"BackgroundColor"])
    {
      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BackgroundColor"];
      if (v18)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(PDFView *)v6 setBackgroundColor:v18];
        }
      }
    }

    if ([coderCopy containsValueForKey:@"EnableDataDetectors"])
    {
      -[PDFView setEnableDataDetectors:](v6, "setEnableDataDetectors:", [coderCopy decodeBoolForKey:@"EnableDataDetectors"]);
    }

    if ([coderCopy containsValueForKey:@"InterpolationQuality"])
    {
      v19 = [coderCopy decodeIntegerForKey:@"InterpolationQuality"];
LABEL_41:
      [(PDFView *)v6 setInterpolationQuality:v19];
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = PDFView;
  [(PDFView *)&v3 encodeWithCoder:coder];
}

- (PDFView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PDFView;
  v3 = [(PDFView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PDFView *)v3 _commonInit];
  }

  return v4;
}

- (void)setFrame:(CGRect)frame
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PDFView;
  [(PDFView *)&v14 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = self->_private;
  if (v4)
  {
    if (v4->autoScale)
    {
      [(PDFView *)self _internalSetAutoScaleFactor];
    }

    [(PDFView *)self _updateBookmarksForPages];
    visiblePageViews = [(PDFView *)self visiblePageViews];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [visiblePageViews countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(visiblePageViews);
          }

          [*(*(&v10 + 1) + 8 * v9++) setNeedsTilesUpdate];
        }

        while (v7 != v9);
        v7 = [visiblePageViews countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)setBounds:(CGRect)bounds
{
  if (self->_private)
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v20.receiver = self;
    v20.super_class = PDFView;
    [(PDFView *)&v20 setBounds:x, y, width, height];
    v8 = self->_private;
    if (v8->autoScale)
    {
      [(PDFView *)self _internalSetAutoScaleFactor];
      v8 = self->_private;
    }

    viewIfLoaded = [(PDFPasswordViewController *)v8->passwordViewController viewIfLoaded];
    v10 = viewIfLoaded;
    if (viewIfLoaded)
    {
      [viewIfLoaded setFrame:{x, y, width, height}];
    }

    [(PDFView *)self _updateBookmarksForPages];
    v11 = self->_private;
    [(PDFView *)self safeAreaInsets];
    v11->savedSafeAreaInsets.top = v12;
    v11->savedSafeAreaInsets.left = v13;
    v11->savedSafeAreaInsets.bottom = v14;
    v11->savedSafeAreaInsets.right = v15;
    [MEMORY[0x1E6979518] commit];
    objc_initWeak(&location, self);
    v16 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __21__PDFView_setBounds___block_invoke;
    block[3] = &unk_1E81510E8;
    objc_copyWeak(&v18, &location);
    block[4] = self;
    dispatch_after(v16, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);

    [(PDFView *)self layoutDocumentView];
  }
}

void __21__PDFView_setBounds___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) visiblePageViews];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) setNeedsTilesUpdate];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PDFView;
  [(PDFView *)&v7 layoutSubviews];
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 100000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__PDFView_layoutSubviews__block_invoke;
  block[3] = &unk_1E81510E8;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __25__PDFView_layoutSubviews__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = [v3 visiblePageViews];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

          [*(*(&v9 + 1) + 8 * v8++) setNeedsTilesUpdate];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)removeFromSuperview
{
  [(PDFView *)self clearSelection];
  v3.receiver = self;
  v3.super_class = PDFView;
  [(PDFView *)&v3 removeFromSuperview];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = PDFView;
  [(PDFView *)&v4 didMoveToWindow];
  traitCollection = [(PDFView *)self traitCollection];
  [(PDFRenderingProperties *)self->_private->renderingProperties setTraitCollection:traitCollection];
}

- (void)_commonInit
{
  v48[1] = *MEMORY[0x1E69E9840];
  self->_annotationEditingAllowed = 1;
  self->_formDetectionEnabled = 0;
  v3 = objc_alloc_init(PDFViewPrivate);
  v4 = self->_private;
  self->_private = v3;

  v5 = self->_private;
  document = v5->document;
  v5->document = 0;

  v7 = self->_private;
  currentSelection = v7->currentSelection;
  v7->currentSelection = 0;

  self->_private->autoScale = 0;
  self->_private->zoomIncrement = 1.1892;
  objc_storeWeak(&self->_private->delegate, 0);
  self->_private->delegateWillScale = 0;
  self->_private->delegateOrdersPageDrawing = 0;
  self->_private->gutterWide = 0.0;
  self->_private->displaysPageBreaks = 1;
  self->_private->pageBreakMargins = *kPDFViewDefaultPageBreakMargins;
  v9 = self->_private;
  v10 = *MEMORY[0x1E69DDCE0];
  *&v9->documentMargins.bottom = *(MEMORY[0x1E69DDCE0] + 16);
  *&v9->documentMargins.top = v10;
  self->_private->displayMode = 1;
  self->_private->displayDirection = 0;
  v11 = objc_alloc_init(PDFViewLayout);
  v12 = self->_private;
  viewLayout = v12->viewLayout;
  v12->viewLayout = v11;

  [(PDFViewLayout *)self->_private->viewLayout setDelegate:self];
  self->_private->displaysAsBook = 0;
  self->_private->displaysRTL = 0;
  v14 = objc_alloc_init(PDFRenderingProperties);
  v15 = self->_private;
  renderingProperties = v15->renderingProperties;
  v15->renderingProperties = v14;

  [(PDFRenderingProperties *)self->_private->renderingProperties setPDFView:self];
  traitCollection = [(PDFView *)self traitCollection];
  [(PDFRenderingProperties *)self->_private->renderingProperties setTraitCollection:traitCollection];

  objc_initWeak(&location, self);
  v18 = objc_opt_self();
  v48[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  v42 = MEMORY[0x1E69E9820];
  v43 = 3221225472;
  v44 = __22__PDFView__commonInit__block_invoke;
  v45 = &unk_1E81525F0;
  objc_copyWeak(&v46, &location);
  v20 = [(PDFView *)self registerForTraitChanges:v19 withHandler:&v42];

  [(PDFRenderingProperties *)self->_private->renderingProperties setAllowsDarkMode:0, v42, v43, v44, v45];
  self->_private->lastVerticalScrollDirection = 2;
  self->_private->lastHorizontalScrollDirection = 1;
  self->_private->displaysBookmarksForPages = 0;
  self->_private->firstVisiblePage = 0;
  self->_private->lastVisiblePage = 0;
  self->_private->inhibitAutoScroll = 0;
  v21 = self->_private;
  fromPage = v21->fromPage;
  v21->fromPage = 0;

  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  v24 = self->_private;
  destinationHistory = v24->destinationHistory;
  v24->destinationHistory = v23;

  self->_private->historyIndex = 0;
  v26 = self->_private;
  highlights = v26->highlights;
  v26->highlights = 0;

  v28 = [[PDFCoachMarkManager alloc] initWithPDFRenderingProperties:self->_private->renderingProperties];
  v29 = self->_private;
  coachMarkManager = v29->coachMarkManager;
  v29->coachMarkManager = v28;

  v31 = self->_private;
  passwordViewController = v31->passwordViewController;
  v31->passwordViewController = 0;

  v33 = self->_private;
  annotationOver = v33->annotationOver;
  v33->annotationOver = 0;

  self->_private->showsScrollIndicators = 1;
  self->_private->dataDetectorsEnabled = 1;
  self->_private->blockingWaitDuration = 0.0;
  self->_private->inFormFillingMode = 0;
  self->_private->formFillingUpdatesAnnotationOnEveryTextChange = 0;
  self->_private->allowsMarkupAnnotationEditing = 0;
  self->_private->allowsUndo = 1;
  self->_private->textSelectionEnabled = 0;
  self->_private->documentAnalysisEnabled = 1;
  v35 = [[PDFViewController alloc] initWithView:self];
  v36 = self->_private;
  controller = v36->controller;
  v36->controller = v35;

  [(PDFView *)self colorWidgetBackgrounds:GetDefaultsWriteColorWidgetBackgrounds()];
  [(PDFView *)self _setupScrollView];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_pdfViewDidChangeScale_ name:@"PDFViewScaleChanged" object:self];
  [defaultCenter addObserver:self selector:sel_pdfViewDidChangePage_ name:@"PDFViewChangedPage" object:self];
  [defaultCenter addObserver:self selector:sel_visiblePagesChanged_ name:@"PDFViewVisiblePagesChanged" object:self];
  v39 = [[PDFViewDebugFlags alloc] initWithView:self];
  v40 = self->_private;
  debugFlags = v40->debugFlags;
  v40->debugFlags = v39;

  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
}

void __22__PDFView__commonInit__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 traitCollection];

  [*(WeakRetained[51] + 184) setTraitCollection:v4];
}

- (void)dealloc
{
  overlayViewController = self->_overlayViewController;
  if (overlayViewController)
  {
    [(PDFOverlayViewsController *)overlayViewController teardown];
    v4 = self->_overlayViewController;
    self->_overlayViewController = 0;
  }

  [(PDFView *)self _releaseDocument];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v6 = self->_private;
  debugFlags = v6->debugFlags;
  v6->debugFlags = 0;

  v8.receiver = self;
  v8.super_class = PDFView;
  [(PDFView *)&v8 dealloc];
}

- (CGAffineTransform)_transformFromPageToPageView:(SEL)view
{
  v6 = a4;
  v7 = PDFRectToCGRect([v6 boundsForBox:0]);
  v9 = v8;
  v39 = v10;
  v12 = v11;
  rect = v11;
  v13 = PDFRectToCGRect([v6 boundsForBox:{-[PDFView displayBox](self, "displayBox")}]);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  rotation = [v6 rotation];

  v44.origin.x = v7;
  v44.origin.y = v9;
  v44.size.width = v39;
  v44.size.height = v12;
  MinX = CGRectGetMinX(v44);
  v45.origin.x = v13;
  v45.origin.y = v15;
  v45.size.width = v17;
  v45.size.height = v19;
  v22 = MinX - CGRectGetMinX(v45);
  v46.origin.x = v7;
  v46.origin.y = v9;
  v46.size.width = v39;
  v46.size.height = rect;
  MinY = CGRectGetMinY(v46);
  v47.origin.x = v13;
  v47.origin.y = v15;
  v47.size.width = v17;
  v47.size.height = v19;
  v24 = CGRectGetMinY(v47);
  v25 = MEMORY[0x1E695EFD0];
  recta = *(MEMORY[0x1E695EFD0] + 16);
  v40 = *MEMORY[0x1E695EFD0];
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = recta;
  v36 = *(v25 + 32);
  *&retstr->tx = v36;
  CGAffineTransformMakeTranslation(&t2, v22, MinY - v24);
  *&t1.a = v40;
  *&t1.c = recta;
  *&t1.tx = v36;
  CGAffineTransformConcat(retstr, &t1, &t2);
  Width = 0.0;
  if (rotation > 179)
  {
    if (rotation == 180)
    {
      v28 = PDFDegToRad(180.0);
      v51.origin.x = v13;
      v51.origin.y = v15;
      v51.size.width = v17;
      v51.size.height = v19;
      Width = CGRectGetWidth(v51);
      Height = 0.0;
    }

    else
    {
      Height = 0.0;
      if (rotation != 270)
      {
        goto LABEL_12;
      }

      v28 = PDFDegToRad(-90.0);
      v48.origin.x = v13;
      v48.origin.y = v15;
      v48.size.width = v17;
      v48.size.height = v19;
      Width = CGRectGetHeight(v48);
      v49.origin.x = v13;
      v49.origin.y = v15;
      v49.size.width = v17;
      v49.size.height = v19;
      Height = CGRectGetWidth(v49);
    }

    goto LABEL_10;
  }

  if (!rotation)
  {
    v50.origin.x = v13;
    v50.origin.y = v15;
    v50.size.width = v17;
    v50.size.height = v19;
    Height = CGRectGetHeight(v50);
    goto LABEL_12;
  }

  Height = 0.0;
  if (rotation == 90)
  {
    v28 = PDFDegToRad(90.0);
LABEL_10:
    if (v28 != 0.0)
    {
      CGAffineTransformMakeRotation(&t1, -v28);
      v29 = *&retstr->c;
      *&v41.a = *&retstr->a;
      *&v41.c = v29;
      *&v41.tx = *&retstr->tx;
      CGAffineTransformConcat(&t2, &v41, &t1);
      v30 = *&t2.c;
      *&retstr->a = *&t2.a;
      *&retstr->c = v30;
      *&retstr->tx = *&t2.tx;
    }
  }

LABEL_12:
  CGAffineTransformMakeScale(&t1, 1.0, -1.0);
  v31 = *&retstr->c;
  *&v41.a = *&retstr->a;
  *&v41.c = v31;
  *&v41.tx = *&retstr->tx;
  result = CGAffineTransformConcat(&t2, &v41, &t1);
  v33 = *&t2.c;
  *&retstr->a = *&t2.a;
  *&retstr->c = v33;
  *&retstr->tx = *&t2.tx;
  if (Width != 0.0 || Height != 0.0)
  {
    CGAffineTransformMakeTranslation(&t1, Width, Height);
    v34 = *&retstr->c;
    *&v41.a = *&retstr->a;
    *&v41.c = v34;
    *&v41.tx = *&retstr->tx;
    result = CGAffineTransformConcat(&t2, &v41, &t1);
    v35 = *&t2.c;
    *&retstr->a = *&t2.a;
    *&retstr->c = v35;
    *&retstr->tx = *&t2.tx;
  }

  return result;
}

- (CGAffineTransform)_transformFromPageViewToPage:(SEL)page
{
  memset(&v6[1], 0, sizeof(CGAffineTransform));
  [(PDFView *)self _transformFromPageToPageView:a4];
  v6[0] = v6[1];
  return CGAffineTransformInvert(retstr, v6);
}

- (void)_setupPasswordView
{
  passwordViewController = self->_private->passwordViewController;
  if (!passwordViewController)
  {
    v4 = [[PDFPasswordViewController alloc] initWithDelegate:self];
    v5 = self->_private;
    v6 = v5->passwordViewController;
    v5->passwordViewController = v4;

    passwordViewController = self->_private->passwordViewController;
  }

  view = [(PDFPasswordViewController *)passwordViewController view];
  view2 = [(PDFPasswordViewController *)self->_private->passwordViewController view];
  superview = [view2 superview];

  if (!superview)
  {
    [(PDFView *)self addSubview:view];
    [view setAutoresizesSubviews:1];
    [view setAutoresizingMask:18];
    [(PDFView *)self bounds];
    [view setFrame:?];
  }

  [view setHidden:0];
}

- (void)_removePasswordView
{
  viewIfLoaded = [(PDFPasswordViewController *)self->_private->passwordViewController viewIfLoaded];
  if (viewIfLoaded)
  {
    v3 = viewIfLoaded;
    [viewIfLoaded setHidden:1];
    [v3 removeFromSuperview];
    viewIfLoaded = v3;
  }
}

- (void)_updatePasswordView
{
  viewIfLoaded = [(PDFPasswordViewController *)self->_private->passwordViewController viewIfLoaded];
  v4 = viewIfLoaded;
  if (viewIfLoaded)
  {
    v5 = viewIfLoaded;
    viewIfLoaded = [viewIfLoaded isHidden];
    v4 = v5;
    if ((viewIfLoaded & 1) == 0)
    {
      viewIfLoaded = [(PDFView *)self bringSubviewToFront:v5];
      v4 = v5;
    }
  }

  MEMORY[0x1EEE66BB8](viewIfLoaded, v4);
}

- (BOOL)userDidEnterPassword:(id)password forPasswordViewController:(id)controller
{
  passwordCopy = password;
  document = [(PDFView *)self document];
  isLocked = [document isLocked];

  if (isLocked && (-[PDFView document](self, "document"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 unlockWithPassword:passwordCopy], v8, (v9 & 1) == 0))
  {
    window = [(PDFView *)self window];
    rootViewController = [window rootViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      viewControllers = [rootViewController viewControllers];
      v14 = [viewControllers objectAtIndex:0];

      rootViewController = v14;
    }

    presentedViewController = [rootViewController presentedViewController];

    if (presentedViewController)
    {
      presentedViewController2 = [rootViewController presentedViewController];

      rootViewController = presentedViewController2;
    }

    [(PDFPasswordViewController *)self->_private->passwordViewController presentInvalidPasswordAlertWithParentViewController:rootViewController];

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_ensureOverlayViewController
{
  if (!self->_overlayViewController)
  {
    v3 = [PDFOverlayViewsController instanceForPlatformWithPDFView:self];
    overlayViewController = self->_overlayViewController;
    self->_overlayViewController = v3;

    MEMORY[0x1EEE66BB8](v3, overlayViewController);
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  textSelectionMenu = [(PDFViewController *)self->_private->controller textSelectionMenu];
  v8 = NSStringFromSelector(action);
  v9 = [v8 isEqualToString:@"delete:"];

  if (textSelectionMenu == 1 && [(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView]|| [(PDFView *)self akAnnotationEditingEnabled])
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PDFView;
    v11 = [(PDFView *)&v17 canPerformAction:action withSender:senderCopy];
    v12 = NSStringFromSelector(action);
    v13 = [v12 isEqualToString:@"_lookup:"];

    if (v13)
    {
      currentSelection = [(PDFView *)self currentSelection];
      if (currentSelection)
      {
        currentSelection2 = [(PDFView *)self currentSelection];
        v10 = [currentSelection2 isEmpty] ^ 1;
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }

    else
    {
      LOBYTE(v10) = (v9 ^ 1) & v11;
    }
  }

  return v10;
}

- (void)gestureInit
{
  v3 = self->_private;
  if (!v3->longPressGestureRecognizer)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self->_private->controller action:sel_handleGesture_];
    v5 = self->_private;
    longPressGestureRecognizer = v5->longPressGestureRecognizer;
    v5->longPressGestureRecognizer = v4;

    [(UILongPressGestureRecognizer *)self->_private->longPressGestureRecognizer setDelegate:self];
    [(PDFView *)self addGestureRecognizer:self->_private->longPressGestureRecognizer];
    v3 = self->_private;
  }

  if (!v3->tapGestureRecognizer)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self->_private->controller action:sel_handleGesture_];
    v8 = self->_private;
    tapGestureRecognizer = v8->tapGestureRecognizer;
    v8->tapGestureRecognizer = v7;

    [(UITapGestureRecognizer *)self->_private->tapGestureRecognizer setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)self->_private->tapGestureRecognizer setDelegate:self];
    [(UITapGestureRecognizer *)self->_private->tapGestureRecognizer setAllowedTouchTypes:&unk_1F4183F88];
    [(PDFView *)self addGestureRecognizer:self->_private->tapGestureRecognizer];
    v3 = self->_private;
  }

  if (!v3->doubleTapGestureRecognizer)
  {
    v10 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self->_private->controller action:sel_handleGesture_];
    v11 = self->_private;
    doubleTapGestureRecognizer = v11->doubleTapGestureRecognizer;
    v11->doubleTapGestureRecognizer = v10;

    [(UITapGestureRecognizer *)self->_private->doubleTapGestureRecognizer setNumberOfTapsRequired:2];
    [(UITapGestureRecognizer *)self->_private->doubleTapGestureRecognizer setDelegate:self];
    [(PDFView *)self addGestureRecognizer:self->_private->doubleTapGestureRecognizer];
    v3 = self->_private;
  }

  [(UITapGestureRecognizer *)v3->tapGestureRecognizer requireGestureRecognizerToFail:v3->longPressGestureRecognizer];
  [(UITapGestureRecognizer *)self->_private->tapGestureRecognizer requireGestureRecognizerToFail:self->_private->doubleTapGestureRecognizer];
  panGestureRecognizer = [(PDFScrollView *)self->_private->scrollView panGestureRecognizer];
  [panGestureRecognizer requireGestureRecognizerToFail:self->_private->longPressGestureRecognizer];
}

- (void)addGestureRecognizer:(id)recognizer
{
  v9.receiver = self;
  v9.super_class = PDFView;
  [(PDFView *)&v9 addGestureRecognizer:recognizer];
  documentView = [(PDFView *)self documentView];
  v5 = self->_private;
  if (v5->isUsingPageViewController)
  {
    currentPage = [(PDFDocumentViewController *)v5->documentViewController currentPage];
    v7 = [(PDFDocumentViewController *)self->_private->documentViewController findPageViewControllerForPageIndex:[(PDFDocument *)self->_private->document indexForPage:currentPage]];
    textInputView = [v7 textInputView];

    documentView = textInputView;
  }

  [documentView updateGestureRecognizerDependencies];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  v8 = touchCopy;
  v9 = self->_private->doubleTapGestureRecognizer != recognizerCopy || ([touchCopy _isPointerTouch] & 1) == 0;

  return v9;
}

- (BOOL)acceptSingleTouch:(id)touch
{
  [touch locationInView:self];
  v5 = v4;
  v7 = v6;
  v8 = [(PDFView *)self pageForPoint:0 nearest:?];
  if (v8)
  {
    [(PDFView *)self convertPoint:v8 toPage:v5, v7];
    v10 = v9;
    v12 = v11;
    v13 = [v8 annotationAtPoint:?];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = [v8 scannedAnnotationAtPoint:{v10, v12}];
      if (!v14)
      {
LABEL_7:
        activeAnnotation = [(PDFViewController *)self->_private->controller activeAnnotation];

        if (!activeAnnotation)
        {
          currentSelection = [(PDFView *)self currentSelection];
          v18 = currentSelection;
          v15 = currentSelection && ![currentSelection isEmpty];

          goto LABEL_14;
        }

LABEL_8:
        v15 = 1;
LABEL_14:

        goto LABEL_15;
      }
    }

    if ([v14 handledByPDFKit])
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  [beginCopy locationInView:self];
  v6 = v5;
  v8 = v7;
  v9 = [(PDFView *)self typeForGestureRecognizer:beginCopy];
  v10 = self->_private;
  if (v10->tapGestureRecognizer == beginCopy)
  {
    v12 = [(PDFView *)self pageForPoint:0 nearest:v6, v8];
    currentSelection = self->_private->currentSelection;
    if (!currentSelection || (v14 = [(PDFSelection *)currentSelection isEmpty], v12) || v14)
    {
      if ([(PDFView *)self _shouldHandleAnnotationAtLocation:v9 forGestureType:v6, v8])
      {

        v10 = self->_private;
        goto LABEL_2;
      }

      activeAnnotation = [(PDFViewController *)self->_private->controller activeAnnotation];
      isMarkupAnnotationSubtype = [activeAnnotation isMarkupAnnotationSubtype];
      v17 = [activeAnnotation valueForAnnotationKey:@"/Subtype"];
      v18 = [v17 isEqualToString:@"/Text"];

      if ((isMarkupAnnotationSubtype & 1) != 0 || v18)
      {
        [(PDFViewController *)self->_private->controller removeControlForAnnotation:activeAnnotation];
      }

      LOBYTE(v11) = 0;
    }

    else
    {
      LOBYTE(v11) = 1;
    }

    goto LABEL_21;
  }

LABEL_2:
  if (v10->doubleTapGestureRecognizer == beginCopy)
  {
    if (!PDFKitIsFormFillingEnabled() || ![(PDFView *)self isInFormFillingMode])
    {
      v11 = ![(PDFView *)self isInMarkupMode];
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  if (v10->longPressGestureRecognizer != beginCopy || [(PDFView *)self _shouldHandleAnnotationAtLocation:v9 forGestureType:v6, v8])
  {
LABEL_12:
    LOBYTE(v11) = 1;
    goto LABEL_21;
  }

  LOBYTE(v11) = 0;
LABEL_21:

  return v11;
}

- (void)handleGesture:(unint64_t)gesture state:(int64_t)state location:(CGPoint)location locationOfFirstTouch:(CGPoint)touch isIndirectTouch:(BOOL)indirectTouch
{
  indirectTouchCopy = indirectTouch;
  y = touch.y;
  x = touch.x;
  v10 = location.y;
  v11 = location.x;
  if (gesture != 1 || !indirectTouch)
  {
    [(PDFViewController *)self->_private->controller handleGesture:gesture state:state location:location.x, location.y];
  }

  if ([(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView])
  {
    documentView = [(PDFView *)self documentView];
    [documentView handleGesture:gesture state:state location:indirectTouchCopy locationOfFirstTouch:v11 isIndirectTouch:{v10, x, y}];
  }
}

- (unint64_t)typeForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [recognizerCopy numberOfTapsRequired] == 2;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = 2;
    }

    else
    {
      v4 = 4;
    }
  }

  return v4;
}

- (unint64_t)scrollViewMinimumNumberOfTouches
{
  if (![(PDFView *)self isInMarkupMode])
  {
    return 1;
  }

  if ([MEMORY[0x1E69DCD58] prefersPencilOnlyDrawing])
  {
    return 1;
  }

  return 2;
}

- (id)pointerRegionForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v6 = [PDFPointerRegion alloc];
  v7 = [(PDFPointerRegion *)v6 initWithRect:@"PDFPointerRegionPage" identifier:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = [(PDFView *)self areaOfInterestForPoint:x, y];
  if ((v8 & 0xA) != 0)
  {
    v9 = v8;
    v10 = [(PDFView *)self pageForPoint:1 nearest:x, y];
    [(PDFView *)self convertPoint:v10 toPage:x, y];
    if ((v9 & 8) != 0)
    {
      v11 = [v10 annotationAtPoint:?];
      [(PDFPointerRegion *)v7 setIdentifier:@"PDFPointerRegionLink"];
      [v11 bounds];
      [(PDFView *)self convertRect:v10 fromPage:?];
      [(PDFPointerRegion *)v7 setRect:?];
    }

    else
    {
      if ((v9 & 2) == 0)
      {
LABEL_9:
        [(PDFPointerRegion *)v7 rect];
        v26 = PDFRectInset(v25, -1.2, -1.2);
        [(PDFPointerRegion *)v7 setRect:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];
LABEL_10:

        goto LABEL_11;
      }

      v11 = [v10 selectionForLineAtPoint:?];
      string = [v11 string];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v14 = [string stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

      if (!v14 || ![v14 length])
      {

        goto LABEL_10;
      }

      [v11 boundsForPage:v10];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [(PDFPointerRegion *)v7 setIdentifier:@"PDFPointerRegionText"];
      [(PDFView *)self convertRect:v10 fromPage:v16, v18, v20, v22];
      [(PDFPointerRegion *)v7 setRect:?];
    }

    goto LABEL_9;
  }

LABEL_11:

  return v7;
}

- (id)hitTestForSubviewsOfView:(id)view atLocation:(CGPoint)location withEvent:(id)event
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  eventCopy = event;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6;
  v25 = __Block_byref_object_dispose__6;
  v26 = 0;
  subviews = [viewCopy subviews];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__PDFView_hitTestForSubviewsOfView_atLocation_withEvent___block_invoke;
  v15[3] = &unk_1E8152618;
  v19 = x;
  v20 = y;
  v11 = viewCopy;
  v16 = v11;
  v12 = eventCopy;
  v17 = v12;
  v18 = &v21;
  [subviews enumerateObjectsUsingBlock:v15];

  v13 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v13;
}

void __57__PDFView_hitTestForSubviewsOfView_atLocation_withEvent___block_invoke(double *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 4);
  v7 = a1[7];
  v8 = a1[8];
  v9 = a2;
  [v9 convertPoint:v6 fromView:{v7, v8}];
  obj = [v9 hitTest:*(a1 + 5) withEvent:?];

  v10 = obj;
  if (obj)
  {
    objc_storeStrong((*(*(a1 + 6) + 8) + 40), obj);
    v10 = obj;
    *a4 = 1;
  }
}

- (BOOL)_shouldHandleAnnotationAtLocation:(CGPoint)location forGestureType:(unint64_t)type
{
  y = location.y;
  x = location.x;
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = [(PDFView *)self pageForPoint:0 nearest:?];
  if (v8)
  {
    [(PDFView *)self convertPoint:v8 toPage:x, y];
    v10 = v9;
    v12 = v11;
    v13 = [v8 annotationAtPoint:?];
    activeAnnotation = [(PDFViewController *)self->_private->controller activeAnnotation];
    if (!v13)
    {
      v15 = [v8 scannedAnnotationAtPoint:{v10, v12}];
      if (!v15)
      {
        if (type)
        {
          v26 = 1;
        }

        else
        {
          v26 = activeAnnotation == 0;
        }

        v22 = !v26;
        goto LABEL_27;
      }

      v13 = v15;
    }

    v16 = [v13 valueForAnnotationKey:@"/Subtype"];
    v17 = [v16 isEqualToString:@"/Link"];
    v18 = [v16 isEqualToString:@"/Text"];
    isMarkupAnnotationSubtype = [v13 isMarkupAnnotationSubtype];
    v20 = [v16 isEqualToString:@"/Widget"];
    if (type)
    {
      if (type == 2)
      {
        if (isMarkupAnnotationSubtype)
        {
          v21 = [v13 noteContainsPoint:{v10, v12}];
        }

        else
        {
          v21 = 0;
        }

        v22 = v18 | v21;
        goto LABEL_26;
      }
    }

    else if ((v17 | v18 | isMarkupAnnotationSubtype) & 1) != 0 || v20 && (([v13 valueForAnnotationKey:@"/FT"], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", @"/Btn"), (objc_msgSend(v23, "isEqualToString:", @"/Tx") & 1) == 0) ? (v25 = objc_msgSend(v23, "isEqualToString:", @"/Ch")) : (v25 = 1), v27 = v24 | v25 & (v13 != activeAnnotation), v23, (v27))
    {
      v22 = 1;
LABEL_26:

LABEL_27:
      goto LABEL_28;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v31 = @"PDFAnnotationHit";
    v32[0] = v13;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    [defaultCenter postNotificationName:@"PDFViewAnnotationHit" object:self userInfo:v29];

    v22 = 0;
    goto LABEL_26;
  }

  v22 = 0;
LABEL_28:

  return v22 & 1;
}

- (id)_dragItemsAtLocationInView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  if (![(PDFDocument *)self->_private->document allowsCopying])
  {
    v19 = v6;
    goto LABEL_16;
  }

  v7 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v8 = [(PDFView *)self pageForPoint:0 nearest:x, y];
  [(PDFView *)self convertPoint:v8 toPage:x, y];
  v11 = v9;
  v12 = v10;
  if (v8 && ([v8 annotationAtPoint:{v9, v10}], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    v15 = [v13 URL];

    currentSelection = [(PDFView *)self currentSelection];
    if (v15)
    {
      v17 = [v14 URL];
      [v7 registerObject:v17 visibility:0];

      [v14 bounds];
      v27 = PDFRectInset(v26, -3.0, -3.0);
      attributedString = [v8 selectionForRect:{v27.origin.x, v27.origin.y, v27.size.width, v27.size.height}];
      [(PDFView *)self setCurrentSelection:attributedString];
      goto LABEL_12;
    }
  }

  else
  {
    currentSelection = [(PDFView *)self currentSelection];
    v14 = 0;
  }

  if (currentSelection && ([currentSelection isEmpty] & 1) == 0 && objc_msgSend(currentSelection, "containsPoint:onPage:", v8, v11, v12))
  {
    string = [currentSelection string];
    [v7 registerObject:string visibility:0];

    attributedString = [currentSelection attributedString];
    [v7 registerObject:attributedString visibility:0];
LABEL_12:
    v21 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v7];

    if (v21)
    {
      v24[0] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];

      v6 = v22;
    }

    goto LABEL_15;
  }

  v21 = 0;
LABEL_15:
  v19 = v6;

LABEL_16:

  return v19;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  sessionCopy = session;
  if ([(PDFView *)self isInMarkupMode])
  {
    v6 = 0;
  }

  else
  {
    [sessionCopy locationInView:self];
    v6 = [(PDFView *)self _dragItemsAtLocationInView:?];
    if ([v6 count])
    {
      [(UILongPressGestureRecognizer *)self->_private->longPressGestureRecognizer setEnabled:0];
      [(UILongPressGestureRecognizer *)self->_private->longPressGestureRecognizer setEnabled:1];
    }
  }

  return v6;
}

- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(UITapGestureRecognizer *)self->_private->tapGestureRecognizer state:interaction]== 5)
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v8 = [(PDFView *)self _dragItemsAtLocationInView:x, y];
  }

  return v8;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = [(PDFView *)self currentSelection:interaction];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  pages = [v6 pages];
  v8 = [pages countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v52;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v52 != v10)
      {
        objc_enumerationMutation(pages);
      }

      v12 = *(*(&v51 + 1) + 8 * v11);
      v13 = [(PDFView *)self pageViewForPageAtIndex:[(PDFDocument *)self->_private->document indexForPage:v12]];
      if ([v13 isVisible])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [pages countByEnumeratingWithState:&v51 objects:v55 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v12;

    if (v15)
    {
      [v6 boundsForPage:v15];
      v59 = CGRectInset(v58, -4.0, -4.0);
      x = v59.origin.x;
      y = v59.origin.y;
      width = v59.size.width;
      height = v59.size.height;
      [(PDFView *)self convertRect:v15 fromPage:?];
      v21 = v20;
      v38 = v22;
      v39 = v20;
      v24 = v23;
      v26 = v25;
      v27 = PDFScreenGetBackingScaleFactor() * (v23 / width);
      v28 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v24, v26}];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __57__PDFView_dragInteraction_previewForLiftingItem_session___block_invoke;
      v40[3] = &unk_1E8152640;
      v42 = v21;
      v43 = v38;
      v44 = v24;
      v45 = v26;
      v46 = x;
      v41 = v15;
      v47 = y;
      v48 = width;
      v49 = height;
      v50 = v27;
      pages = v15;
      v29 = [v28 imageWithActions:v40];
      v30 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v29];
      layer = [v30 layer];
      [layer setCornerRadius:16.0];

      layer2 = [v30 layer];
      [layer2 setMasksToBounds:1];

      [v30 setFrame:{v39, v38, v24, v26}];
      [(PDFView *)self clearSelection];
      v33 = objc_alloc(MEMORY[0x1E69DC9A0]);
      v34 = [v33 initWithTextLineRects:MEMORY[0x1E695E0F0]];
      v35 = objc_alloc(MEMORY[0x1E69DC9A8]);
      UIRectGetCenter();
      v36 = [v35 initWithContainer:self center:?];
      v14 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v30 parameters:v34 target:v36];

      goto LABEL_12;
    }

    v14 = 0;
  }

  else
  {
LABEL_9:
    v14 = 0;
LABEL_12:
  }

  return v14;
}

uint64_t __57__PDFView_dragInteraction_previewForLiftingItem_session___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSetRGBFillColor(v3, 1.0, 1.0, 1.0, 1.0);
  v11.size.width = *(a1 + 56);
  v11.size.height = *(a1 + 64);
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  CGContextFillRect(v3, v11);
  [*(a1 + 32) boundsForBox:0];
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeTranslation(&v10, v4 - *(a1 + 72), v5 - *(a1 + 80));
  CGAffineTransformMakeScale(&t2, *(a1 + 104), *(a1 + 104));
  v7 = v10;
  CGAffineTransformConcat(&v9, &v7, &t2);
  v10 = v9;
  CGContextSetCTM();
  return [*(a1 + 32) drawWithBox:0 toContext:v3];
}

- (void)setFindInteractionEnabled:(BOOL)findInteractionEnabled
{
  v3 = findInteractionEnabled;
  findInteraction = self->_private->findInteraction;
  if (v3)
  {
    if (!findInteraction)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DCA08]) initWithSessionDelegate:self];
      v7 = self->_private;
      v8 = v7->findInteraction;
      v7->findInteraction = v6;

      findInteraction = self->_private->findInteraction;
    }

    [(PDFView *)self addInteraction:findInteraction];
  }

  else if (findInteraction)
  {

    [(PDFView *)self removeInteraction:?];
  }
}

- (id)findInteraction:(id)interaction sessionForView:(id)view
{
  v5 = objc_alloc(MEMORY[0x1E69DD140]);
  documentView = [(PDFView *)self documentView];
  v7 = [v5 initWithSearchableObject:documentView];

  return v7;
}

- (CGRect)normalizedPageBounds:(id)bounds
{
  boundsCopy = bounds;
  [boundsCopy boundsForBox:{-[PDFView displayBox](self, "displayBox")}];
  v6 = v5;
  v8 = v7;
  v9 = PDFPointMake(0.0, 0.0);
  v11 = v10;
  if (![boundsCopy pageRef])
  {
    v12.n128_u64[0] = 0;
    v13.n128_u64[0] = 0;
    v9 = PDFRectMake(v12, v13, 306.0, 396.0);
    v11 = v14;
    v6 = v15;
    v8 = v16;
  }

  rotation = [boundsCopy rotation];
  if (rotation == 270 || rotation == 90)
  {
    v18 = v6;
  }

  else
  {
    v18 = v8;
    v8 = v6;
  }

  v19 = v9;
  v20 = v11;
  v21 = v8;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (double)_pageViewHeight:(id)height
{
  heightCopy = height;
  [(PDFView *)self normalizedPageBounds:heightCopy];
  v6 = v5;
  pDFLayout = [(PDFView *)self PDFLayout];
  functionalDisplayMode = [pDFLayout functionalDisplayMode];

  if (functionalDisplayMode == 3)
  {
    pDFLayout2 = [(PDFView *)self PDFLayout];
    v10 = [pDFLayout2 facingPageForPage:heightCopy];

    if (v10)
    {
      [(PDFView *)self normalizedPageBounds:v10];
      if (v11 > v6)
      {
        v6 = v11;
      }
    }
  }

  [(PDFView *)self pageBreakMargins];
  v14 = v6 + v12 + v13;

  return v14;
}

- (double)autoScaleFactorForPage:(id)page
{
  [(PDFView *)self _unboundAutoScaleFactorForPage:page];

  [(PDFView *)self PDFViewWillChangeScaleFactor:self toScale:?];
  return result;
}

- (double)autoScaleFactorForPageWithSize:(CGSize)size
{
  [(PDFView *)self _unboundAutoScaleFactorForPageWithSize:size.width, size.height];

  [(PDFView *)self PDFViewWillChangeScaleFactor:self toScale:?];
  return result;
}

- (double)_unboundAutoScaleFactorForPage:(id)page
{
  if (!page)
  {
    return 1.0;
  }

  pageCopy = page;
  pDFLayout = [(PDFView *)self PDFLayout];
  [pDFLayout contentSizeWithCurrentPage:pageCopy];
  v7 = v6;
  v9 = v8;

  [(PDFView *)self _unboundAutoScaleFactorForPageWithSize:v7, v9];
  return result;
}

- (double)_unboundAutoScaleFactorForPageWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PDFScrollView *)self->_private->scrollView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(PDFScrollView *)self->_private->scrollView safeAreaInsets];
  v21 = PDFEdgeInsetsInsetRect(v7, v9, v11, v13, v14, v15, v16, v17);
  result = 1.0;
  if (width != 0.0)
  {
    v23 = v18;
    v24 = v19;
    v25 = v20;
    [(PDFView *)self gutterWidth];
    if (v26 > 0.0)
    {
      [(PDFView *)self gutterWidth];
      v24 = v24 - v27;
      pDFLayout = [(PDFView *)self PDFLayout];
      functionalDisplayMode = [pDFLayout functionalDisplayMode];

      if (functionalDisplayMode >= 2)
      {
        [(PDFView *)self gutterWidth];
        v24 = v24 - v30;
      }
    }

    pDFLayout2 = [(PDFView *)self PDFLayout];
    functionalDisplayMode2 = [pDFLayout2 functionalDisplayMode];

    if (functionalDisplayMode2)
    {
      if ([(PDFView *)self displayDirection]== kPDFDisplayDirectionVertical || functionalDisplayMode2 == 3)
      {
        return v24 / width;
      }

      else
      {
        return v25 / height;
      }
    }

    else
    {
      v33.n128_u64[0] = 0;
      v34.n128_u64[0] = 0;
      v35 = PDFRectMake(v33, v34, width, height);

      return PDFScaleRectToRect(v35, v36, v37, v38, v21, v23, v24, v25);
    }
  }

  return result;
}

- (void)beginPDFViewRotation
{
  if (self->_private->document)
  {
    documentView = [(PDFView *)self documentView];
    [documentView bounds];
    [(PDFView *)self convertRect:documentView fromView:?];
    v4 = v3;
    [(PDFView *)self bounds];
    self->_private->horizontalScaleFactorBeforeRotation = v4 / (v5 - (self->_private->savedSafeAreaInsets.left + self->_private->savedSafeAreaInsets.right));
    [(PDFView *)self convertRect:documentView toView:?];
    v7 = v6;
    v8 = self->_private;
    v8->documentViewCenterBeforeRotation.x = PDFRectGetCenterPoint(v9, v6, v10);
    v8->documentViewCenterBeforeRotation.y = v11;
    [(PDFScrollView *)self->_private->scrollView contentOffset];
    v13 = v12;
    [(PDFScrollView *)self->_private->scrollView contentInset];
    if (fabs(v13 + v14) < 1.0)
    {
      self->_private->documentViewCenterBeforeRotation.y = v7;
    }
  }
}

- (void)endPDFViewRotation
{
  if (self->_private->document)
  {
    documentView = [(PDFView *)self documentView];
    [(PDFView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = self->_private->horizontalScaleFactorBeforeRotation * (v7 - (self->_private->savedSafeAreaInsets.left + self->_private->savedSafeAreaInsets.right));
    [documentView bounds];
    v13 = v11 / v12;
    [(PDFView *)self autoScaleFactor];
    v15 = v14;
    [(PDFView *)self maxScaleFactor];
    [(PDFView *)self setMinScaleFactor:fmin(v15, v16)];
    [(PDFView *)self setScaleFactor:v13];
    [(PDFView *)self convertRect:documentView toView:v4, v6, v8, v10];
    [documentView convertPoint:self->_private->scrollView toView:{PDFPointMake(self->_private->documentViewCenterBeforeRotation.x - v17 * 0.5, self->_private->documentViewCenterBeforeRotation.y - v18 * 0.5)}];
    v20 = v19;
    v22 = v21;
    v23 = self->_private->scrollView;
    [(PDFScrollView *)v23 bounds];
    v25 = v24;
    v27 = v26;
    [(PDFScrollView *)v23 contentSize];
    v29 = v28;
    v31 = v30;
    [(PDFScrollView *)v23 contentInset];
    v33 = v32;
    v35 = v34;
    if (v29 - v25 >= 0.0)
    {
      v36 = v29 - v25;
    }

    else
    {
      v36 = 0.0;
    }

    v37 = CGFloatClamp(v20, 0.0, v36);
    if (v31 - v27 + v35 >= 0.0)
    {
      v38 = v31 - v27 + v35;
    }

    else
    {
      v38 = 0.0;
    }

    [(PDFScrollView *)v23 setContentOffset:v37, CGFloatClamp(v22, -v33, v38)];
  }
}

- (unint64_t)lastPageIndex
{
  result = self->_private->document;
  if (result)
  {
    return [result pageCount] - 1;
  }

  return result;
}

- (void)_internalSetAutoScaleFactor
{
  autoScale = self->_private->autoScale;
  [(PDFView *)self autoScaleFactor];
  v5 = v4;
  [(PDFScrollView *)self->_private->scrollView contentOffset];
  v7 = v6;
  [(PDFView *)self minScaleFactor];
  if (v8 > v5)
  {
    [(PDFView *)self setMinScaleFactor:v5];
  }

  [(PDFView *)self maxScaleFactor];
  if (v9 < v5)
  {
    [(PDFView *)self setMaxScaleFactor:v5];
  }

  [(PDFView *)self _internalSetScaleFactor:v5];
  if (v7 <= 0.0)
  {
    [(PDFScrollView *)self->_private->scrollView contentOffset];
    v11 = v10;
    [(PDFScrollView *)self->_private->scrollView contentInset];
    [(PDFScrollView *)self->_private->scrollView setContentOffset:PDFPointMake(v11, -v12)];
  }

  self->_private->autoScale = autoScale;
}

- (void)_internalSetScaleFactor:(double)factor
{
  [(PDFView *)self PDFViewWillChangeScaleFactor:self toScale:factor];
  v5 = v4;
  [(PDFView *)self minScaleFactor];
  if (v5 < v6)
  {
    [(PDFView *)self minScaleFactor];
LABEL_5:
    v5 = v7;
    goto LABEL_6;
  }

  [(PDFView *)self maxScaleFactor];
  if (v5 > v8)
  {
    [(PDFView *)self maxScaleFactor];
    goto LABEL_5;
  }

LABEL_6:
  if (v5 != 0.0)
  {
    [(PDFView *)self scaleFactor];
    if (vabdd_f64(v5, v9) >= 0.00000011920929)
    {
      [(PDFScrollView *)self->_private->scrollView setZoomScale:v5];
      self->_private->scaling = 1;
      [(PDFView *)self layoutDocumentView];
      self->_private->scaling = 0;
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"PDFViewScaleChanged" object:self];
    }
  }
}

- (CGFloat)maxScaleFactor
{
  v2 = self->_private;
  if (v2->isUsingPageViewController)
  {
    [(PDFDocumentViewController *)v2->documentViewController maxScaleFactor];
  }

  else
  {
    [(PDFScrollView *)v2->scrollView maximumZoomScale];
  }

  return result;
}

- (CGFloat)minScaleFactor
{
  v2 = self->_private;
  if (v2->isUsingPageViewController)
  {
    [(PDFDocumentViewController *)v2->documentViewController minScaleFactor];
  }

  else
  {
    [(PDFScrollView *)v2->scrollView minimumZoomScale];
  }

  return result;
}

- (void)setMaxScaleFactor:(CGFloat)maxScaleFactor
{
  [(PDFView *)self setAutoScales:0];
  [(PDFView *)self scaleFactor];
  if (v5 > maxScaleFactor)
  {
    [(PDFView *)self setScaleFactor:maxScaleFactor];
  }

  v6 = self->_private;
  if (v6->isUsingPageViewController)
  {
    documentViewController = v6->documentViewController;
    [(PDFView *)self minScaleFactor];

    [PDFDocumentViewController setMinScaleFactor:"setMinScaleFactor:withMaxScaleFactor:" withMaxScaleFactor:?];
  }

  else
  {
    scrollView = v6->scrollView;

    [(PDFScrollView *)scrollView setMaximumZoomScale:maxScaleFactor];
  }
}

- (void)setMinScaleFactor:(CGFloat)minScaleFactor
{
  [(PDFView *)self setAutoScales:0];
  [(PDFView *)self scaleFactor];
  if (v5 < minScaleFactor)
  {
    [(PDFView *)self setScaleFactor:minScaleFactor];
  }

  v6 = self->_private;
  if (v6->isUsingPageViewController)
  {
    documentViewController = v6->documentViewController;
    [(PDFView *)self maxScaleFactor];

    [(PDFDocumentViewController *)documentViewController setMinScaleFactor:minScaleFactor withMaxScaleFactor:v8];
  }

  else
  {
    scrollView = v6->scrollView;

    [(PDFScrollView *)scrollView setMinimumZoomScale:minScaleFactor];
  }
}

- (void)_reflectNewPageOn
{
  v50[2] = *MEMORY[0x1E69E9840];
  pDFLayout = [(PDFView *)self PDFLayout];
  functionalDisplayMode = [pDFLayout functionalDisplayMode];

  if (functionalDisplayMode)
  {
    viewLayout = self->_private->viewLayout;
    currentPage = [(PDFView *)self currentPage];
    [(PDFViewLayout *)viewLayout boundsForPage:currentPage];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    documentView = [(PDFView *)self documentView];
    [documentView bounds];
    v17 = v16 - v10 - v14;

    if ([(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView])
    {
      document = self->_private->document;
      currentPage2 = [(PDFView *)self currentPage];
      v20 = [(PDFDocument *)document indexForPage:currentPage2];

      [(PDFView *)self setCurrentPageIndex:v20 withNotification:0];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v49[0] = @"pageIndex";
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
      v49[1] = @"pageFrame";
      v50[0] = v22;
      v23 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v8, v17, v12, v14}];
      v50[1] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
      [defaultCenter postNotificationName:@"PDFExtensionViewGoToPage" object:self userInfo:v24];

      return;
    }

    if ([(PDFView *)self autoScales])
    {
      [(PDFView *)self _internalSetAutoScaleFactor];
    }

    pdfDocumentView = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
    [pdfDocumentView convertRect:self->_private->scrollView toView:{v8, v17, v12, v14}];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    [(PDFScrollView *)self->_private->scrollView bounds];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    displayDirection = self->_private->displayDirection;
    [(PDFView *)self frame];
    v44 = v29 + fmax(v43 - v33, 0.0) * -0.5;
    v46 = v27 + fmax(v45 - v31, 0.0) * -0.5;
    if (displayDirection == 1)
    {
      v47 = v37;
    }

    else
    {
      v47 = v44;
    }

    if (displayDirection == 1)
    {
      v48 = v46;
    }

    else
    {
      v48 = v35;
    }

    [(PDFScrollView *)self->_private->scrollView scrollRectToVisible:0 animated:v48, v47, v39, v41];
  }

  else
  {
    [(PDFView *)self _resizeDisplayView:self];
  }

  [(PDFView *)self _findVisiblePages];
}

- (id)determineCurrentPage
{
  pDFLayout = [(PDFView *)self PDFLayout];
  functionalDisplayMode = [pDFLayout functionalDisplayMode];

  if (functionalDisplayMode)
  {
    [(PDFView *)self bounds];
    v7 = v6;
    [(PDFView *)self bounds];
    [(PDFView *)self pageForPoint:1 nearest:PDFPointMake(0.0, (v7 + v8) * 0.5)];
  }

  else
  {
    [(PDFView *)self currentPage];
  }
  v5 = ;

  return v5;
}

- (void)scrollViewSaysPageMayHaveChanged:(id)changed
{
  object = [changed object];
  scrollView = self->_private->scrollView;

  if (object == scrollView)
  {

    [(PDFView *)self syncPageIndexToScrollView];
  }
}

- (void)pageViewControllerSaysPageChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"pageIndex"];
  integerValue = [v5 integerValue];

  [(PDFView *)self setCurrentPageIndex:integerValue withNotification:1];
}

- (void)_syncPageIndexToScrollView
{
  [(PDFView *)self _updateCurrentPageUsingViewCenter];

  [(PDFView *)self _findVisiblePages];
}

- (void)syncPageIndexToScrollView
{
  v5[2] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__syncPageIndexToScrollView object:0];
  v3 = *MEMORY[0x1E69DE760];
  v5[0] = *MEMORY[0x1E695DA28];
  v5[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  [(PDFView *)self performSelector:sel__syncPageIndexToScrollView withObject:0 afterDelay:v4 inModes:0.05];
}

- (void)_updateCurrentPageUsingViewCenter
{
  v3 = PDFRectToCGRect([(PDFView *)self bounds]);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if ([(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView])
  {
    [(PDFView *)self extensionViewBoundsInDocument];
    v3 = v10;
    v5 = v11;
    v7 = v12;
    v9 = v13;
  }

  v22.origin.x = v3;
  v22.origin.y = v5;
  v22.size.width = v7;
  v22.size.height = v9;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = v3;
  v23.origin.y = v5;
  v23.size.width = v7;
  v23.size.height = v9;
  MidY = CGRectGetMidY(v23);
  toPage = self->_private->toPage;
  if (toPage)
  {
    v17 = toPage;
  }

  else
  {
    v17 = [(PDFView *)self pageForPoint:1 nearest:PDFPointFromCGPoint(MidX * 0.99, MidY)];
    if (!v17)
    {
      goto LABEL_9;
    }
  }

  v20 = v17;
  document = [(PDFView *)self document];
  v19 = [document indexForPage:v20];

  if (self->_currentPageIndex != v19)
  {
    [(PDFView *)self setCurrentPageIndex:v19 withNotification:1];
  }

  v17 = v20;
LABEL_9:
}

- (CGSize)pageViewSizeForPage:(id)page
{
  pageCopy = page;
  if (pageCopy)
  {
    pDFLayout = [(PDFView *)self PDFLayout];
    [pDFLayout contentSizeWithCurrentPage:pageCopy];
    v7 = v6;
    v9 = v8;

    [(PDFView *)self gutterWidth];
    if (v10 > 0.0)
    {
      [(PDFView *)self gutterWidth];
      v7 = v7 + v11;
      pDFLayout2 = [(PDFView *)self PDFLayout];
      functionalDisplayMode = [pDFLayout2 functionalDisplayMode];

      if (functionalDisplayMode >= 2)
      {
        [(PDFView *)self gutterWidth];
        v7 = v7 + v14;
      }
    }
  }

  else
  {
    v7 = PDFSizeMake(0, 0.0, 0.0);
    v9 = v15;
  }

  v16 = v7;
  v17 = v9;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)_resizeDisplayView:(id)view
{
  pdfDocumentView = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
  [pdfDocumentView frame];
  v6 = v5;
  v8 = v7;

  [(PDFScrollView *)self->_private->scrollView setContentSize:v6, v8];
  [(PDFView *)self scaleFactor];
  v10 = v9;
  documentView = [(PDFView *)self documentView];
  [documentView updateVisibility];
  [(PDFView *)self scaleFactor];
  if (v11 != v10)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PDFViewScaleChanged" object:self];
  }
}

- (void)positionInternalViews:(id)views
{
  documentView = [(PDFView *)self documentView];
  [documentView frame];
  v6 = v5;
  v8 = v7;

  [(PDFView *)self bounds];
  v10 = v9;
  v12 = v11;
  [(PDFView *)self scaleFactor];
  v14 = v13;
  [(PDFView *)self scaleFactor];
  v16 = self->_private;
  if (v16->showsScrollIndicators)
  {
    v17 = v8 * v15;
    if ([(PDFView *)self autoScales])
    {
      if ([(PDFScrollView *)self->_private->scrollView showsHorizontalScrollIndicator])
      {
        [(PDFScrollView *)self->_private->scrollView setShowsHorizontalScrollIndicator:0];
      }

      showsVerticalScrollIndicator = [(PDFScrollView *)self->_private->scrollView showsVerticalScrollIndicator];
      if (v17 > v12)
      {
LABEL_6:
        if (showsVerticalScrollIndicator)
        {
          return;
        }

        scrollView = self->_private->scrollView;
        v20 = 1;
LABEL_42:

        [(PDFScrollView *)scrollView setShowsVerticalScrollIndicator:v20];
        return;
      }

LABEL_40:
      if (!showsVerticalScrollIndicator)
      {
        return;
      }

      scrollView = self->_private->scrollView;
      v20 = 0;
      goto LABEL_42;
    }

    v22 = v6 * v14;
    v23 = self->_private->scrollView;
    if (v6 * v14 <= v10 && v17 <= v12)
    {
      if ([(PDFScrollView *)v23 showsVerticalScrollIndicator])
      {
        [(PDFScrollView *)self->_private->scrollView setShowsVerticalScrollIndicator:0];
      }

      showsHorizontalScrollIndicator = [(PDFScrollView *)self->_private->scrollView showsHorizontalScrollIndicator];
      goto LABEL_27;
    }

    if (v22 <= v10)
    {
      if (([(PDFScrollView *)v23 showsVerticalScrollIndicator]& 1) == 0)
      {
        [(PDFScrollView *)self->_private->scrollView setShowsVerticalScrollIndicator:1];
      }

      showsHorizontalScrollIndicator = [(PDFScrollView *)self->_private->scrollView showsHorizontalScrollIndicator];
      if (v6 <= v10)
      {
LABEL_27:
        if (!showsHorizontalScrollIndicator)
        {
          return;
        }

        goto LABEL_28;
      }

      if (showsHorizontalScrollIndicator)
      {
        return;
      }
    }

    else
    {
      if (v17 <= v12)
      {
        if (([(PDFScrollView *)v23 showsHorizontalScrollIndicator]& 1) == 0)
        {
          [(PDFScrollView *)self->_private->scrollView setShowsHorizontalScrollIndicator:1];
        }

        showsVerticalScrollIndicator = [(PDFScrollView *)self->_private->scrollView showsVerticalScrollIndicator];
        if (v8 > v12)
        {
          goto LABEL_6;
        }

        goto LABEL_40;
      }

      if (([(PDFScrollView *)v23 showsVerticalScrollIndicator]& 1) == 0)
      {
        [(PDFScrollView *)self->_private->scrollView setShowsVerticalScrollIndicator:1];
      }

      if (([(PDFScrollView *)self->_private->scrollView showsHorizontalScrollIndicator]& 1) != 0)
      {
        return;
      }
    }

    v26 = self->_private->scrollView;
    v27 = 1;
    goto LABEL_29;
  }

  if (!v16->isUsingPageViewController)
  {
    [(PDFScrollView *)v16->scrollView setShowsVerticalScrollIndicator:0];
LABEL_28:
    v26 = self->_private->scrollView;
    v27 = 0;
LABEL_29:

    [(PDFScrollView *)v26 setShowsHorizontalScrollIndicator:v27];
    return;
  }

  documentViewController = v16->documentViewController;

  [(PDFDocumentViewController *)documentViewController updateScrollViews];
}

- (CGRect)visibleRectForPageView:(id)view
{
  viewCopy = view;
  [(PDFView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(PDFView *)self safeAreaInsets];
  MaxInsets = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  WeakRetained = objc_loadWeakRetained(&self->_private->delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained pdfViewContentInset];
    MaxInsets = PDFEdgeInsetsGetMaxInsets(MaxInsets, v16, v18, v20, v22);
    v16 = v23;
    v18 = v24;
    v20 = v25;
  }

  v26 = PDFEdgeInsetsInsetRect(v6, v8, v10, v12, MaxInsets, v16, v18, v20);
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [(PDFView *)self convertRect:viewCopy toView:v26, v28, v30, v32];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = v34;
  v42 = v36;
  v43 = v38;
  v44 = v40;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (BOOL)focusOnColumnAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v88[1] = *MEMORY[0x1E69E9840];
  [(PDFView *)self autoScaleFactor];
  v7 = v6;
  [(PDFView *)self scaleFactor];
  v9 = vabdd_f64(v8, v7);
  renderingProperties = [(PDFView *)self renderingProperties];
  isUsingPDFExtensionView = [renderingProperties isUsingPDFExtensionView];

  if (v9 <= 0.00000011920929 || (isUsingPDFExtensionView & 1) != 0)
  {
    v13 = [(PDFView *)self pageForPoint:0 nearest:x, y];
    v12 = v13 != 0;
    if (!v13)
    {
LABEL_14:

      return v12;
    }

    v86 = y;
    [(PDFView *)self convertPoint:v13 toPage:x, y];
    [v13 columnFrameAtPoint:?];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [(PDFView *)self convertRect:v13 fromPage:?];
    rect = v22;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v89.origin.x = v15;
    v89.origin.y = v17;
    v89.size.width = v19;
    v89.size.height = v21;
    if (PDFRectEqualToRect(v89, *MEMORY[0x1E695F058]))
    {
      if (isUsingPDFExtensionView)
      {
        v29 = self->_private;
        v30 = v29->extensionViewBoundsInDocument.origin.x;
        v31 = v29->extensionViewBoundsInDocument.origin.y;
        width = v29->extensionViewBoundsInDocument.size.width;
        height = v29->extensionViewBoundsInDocument.size.height;
      }

      else
      {
        [(PDFView *)self bounds];
      }

      PDFRectScale(v30, v31, width, height, 0.5);
      v59.n128_f64[0] = x - v58 * 0.5;
      v61.n128_f64[0] = v86 - v60 * 0.5;
      v37 = PDFRectMake(v59, v61, v58, v60);
      v36 = v62;
      v35 = v63;
      v34 = v64;
      if (isUsingPDFExtensionView)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v34 = v28;
      v35 = v26;
      v36 = v24;
      v37 = rect;
      if (isUsingPDFExtensionView)
      {
LABEL_12:
        [(PDFView *)self documentMargins];
        v66 = v65;
        v68 = v67;
        v70 = v69;
        v72 = v71;
        [(PDFView *)self pageBreakMargins];
        v74 = v37 - (v68 + v73);
        v76 = v36 - (v66 + v75);
        v78 = v35 + v68 + v72 + v73 + v77;
        v80 = v34 + v66 + v70 + v75 + v79;
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v87 = @"rect";
        v81 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v74, v76, v78, v80}];
        v88[0] = v81;
        v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1];
        [defaultCenter postNotificationName:@"PDFExtensionViewZoomToRect" object:self userInfo:v82];

        goto LABEL_13;
      }
    }

    defaultCenter = [(PDFView *)self pageViewForPageAtIndex:[(PDFDocument *)self->_private->document indexForPage:v13]];
    [(PDFView *)self convertRect:defaultCenter toView:v37, v36, v35, v34];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = v36;
    recta = v34;
    v47 = v46;
    [(PDFView *)self safeAreaInsets];
    v48 = v35;
    v51 = v49 + v50;
    [(PDFView *)self bounds];
    v52 = (CGRectGetWidth(v90) - v51) * 0.85;
    v91.origin.x = v40;
    v91.origin.y = v42;
    v91.size.width = v44;
    v91.size.height = v47;
    v53 = v52 / CGRectGetWidth(v91);
    [(PDFView *)self minScaleFactor];
    v55 = v54;
    [(PDFView *)self maxScaleFactor];
    v57 = CGFloatClamp(v53, v55, v56);
    v92.origin.x = v37;
    v92.origin.y = v45;
    v92.size.width = v48;
    v92.size.height = recta;
    [(PDFView *)self setScaleFactor:v57 anchorPoint:CGRectGetMidX(v92), v86];
LABEL_13:

    goto LABEL_14;
  }

  [(PDFView *)self setScaleFactor:v7 anchorPoint:x, y];
  return 1;
}

- (void)insertFormFieldWithBounds:(CGRect)bounds onPage:(id)page
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9 = MEMORY[0x1E69DB878];
  pageCopy = page;
  v11 = +[PDFAnnotation detectedFormFieldDefaultFontName];
  +[PDFAnnotation detectedFormFieldDefaultFontSize];
  v13 = [v9 fontWithName:v11 size:?];

  height = [PDFAnnotation createDetectedTextFieldWithBounds:v13 font:0 textContentType:pageCopy page:x, y, width, height];
  [(PDFViewController *)self->_private->controller addDetectedAnnotation:height toPage:pageCopy];

  [(PDFViewController *)self->_private->controller activateAnnotation:height];
}

- (void)insertFormFieldAtDefaultLocation
{
  currentPage = [(PDFView *)self currentPage];
  [(PDFView *)self centerPointOfVisibleRectOfPage:currentPage];
  [(PDFView *)self insertFormFieldWithBounds:currentPage onPage:PDFRectMakeFromCenter(v3, v4, 120.0)];
}

- (void)insertFormFieldAtBestLocationNearPoint:(CGPoint)point onPage:(id)page
{
  y = point.y;
  x = point.x;
  pageCopy = page;
  [(PDFView *)self convertPoint:pageCopy toPage:x, y];
  [(PDFView *)self insertFormFieldWithBounds:pageCopy onPage:PDFRectMakeFromCenter(v7, v8, 120.0)];
}

- (void)constrainedScrollToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  documentView = [(PDFView *)self documentView];
  [documentView bounds];
  v8 = v7 - y;

  [(PDFScrollView *)self->_private->scrollView bounds];
  v10 = v9;
  v12 = v11;
  pdfDocumentView = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
  [pdfDocumentView convertPoint:self->_private->scrollView toView:{PDFPointToCGPoint(x, v8)}];
  v15 = v14;
  v17 = v16;

  scrollView = self->_private->scrollView;

  [(PDFScrollView *)scrollView scrollRectToVisible:0 animated:v15, v17, v10, v12];
}

- (void)_scrollVerticalBy:(double)by
{
  [(PDFView *)self scaleFactor];
  v6 = by / v5;
  determineCurrentPage = [(PDFView *)self determineCurrentPage];
  [(PDFScrollView *)self->_private->scrollView contentOffset];
  v8 = v7;
  v10 = v9;
  [(PDFView *)self constrainedScrollToPoint:PDFPointMake(v7, round(v6 + v9))];
  pDFLayout = [(PDFView *)self PDFLayout];
  functionalDisplayMode = [pDFLayout functionalDisplayMode];

  if (functionalDisplayMode)
  {
    determineCurrentPage2 = [(PDFView *)self determineCurrentPage];
    if (determineCurrentPage2 != determineCurrentPage)
    {
      self->_private->inhibitAutoScroll = 1;
      [(PDFView *)self goToPage:determineCurrentPage2];
      self->_private->inhibitAutoScroll = 0;
    }

    goto LABEL_9;
  }

  pDFKitDocumentVisibleRectIncludingContentInsets = [(UIScrollView *)self->_private->scrollView PDFKitDocumentVisibleRectIncludingContentInsets];
  v14 = determineCurrentPage;
  if (v15 != v10)
  {
    goto LABEL_10;
  }

  if (v6 < 0.0)
  {
    pDFKitDocumentVisibleRectIncludingContentInsets = [(PDFView *)self canGoToNextPage];
    v14 = determineCurrentPage;
    if (pDFKitDocumentVisibleRectIncludingContentInsets)
    {
      [(PDFView *)self constrainedScrollToPoint:PDFPointMake(v8, 0.0)];
      pDFKitDocumentVisibleRectIncludingContentInsets = [(PDFView *)self goToNextPage:self];
LABEL_9:
      v14 = determineCurrentPage;
      goto LABEL_10;
    }
  }

  if (v6 > 0.0)
  {
    pDFKitDocumentVisibleRectIncludingContentInsets = [(PDFView *)self canGoToPreviousPage];
    v14 = determineCurrentPage;
    if (pDFKitDocumentVisibleRectIncludingContentInsets)
    {
      [(UIScrollView *)self->_private->scrollView PDFKitDocumentVisibleRectIncludingContentInsets];
      [(PDFView *)self constrainedScrollToPoint:PDFPointMake(v8, v17)];
      pDFKitDocumentVisibleRectIncludingContentInsets = [(PDFView *)self goToPreviousPage:self];
      goto LABEL_9;
    }
  }

LABEL_10:

  MEMORY[0x1EEE66BB8](pDFKitDocumentVisibleRectIncludingContentInsets, v14);
}

- (void)_scrollHorizontalBy:(double)by
{
  [(PDFView *)self scaleFactor];
  v6 = by / v5;
  [(UIScrollView *)self->_private->scrollView PDFKitDocumentVisibleRectIncludingContentInsets];
  v9 = PDFPointMake(round(v6 + v7), v8);

  [(PDFView *)self constrainedScrollToPoint:v9];
}

- (void)_scrollByPage:(BOOL)page
{
  pageCopy = page;
  [(PDFView *)self frame];
  v6 = v5;
  currentPage = [(PDFView *)self currentPage];
  [(PDFView *)self _pageViewHeight:?];
  v8 = v7;
  if (vabdd_f64(v7, v6) <= 32.0)
  {
    currentPage2 = [(PDFView *)self currentPage];
    [(PDFView *)self _scrollOriginForPageTopLeft:currentPage2];
    v12 = v11;

    [(UIScrollView *)self->_private->scrollView PDFKitDocumentVisibleRectIncludingContentInsets];
    if (vabdd_f64(v12, v13) < 32.0)
    {
      if (pageCopy)
      {
        [(PDFView *)self goToNextPage:self];
      }

      else
      {
        [(PDFView *)self goToPreviousPage:self];
      }

      goto LABEL_13;
    }

    v9 = -v8;
    if (pageCopy)
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 50.0 - v6;
    if (pageCopy)
    {
      v9 = v6 + -50.0;
    }
  }

  if (v9 != 0.0)
  {
    [(PDFView *)self _scrollVerticalBy:?];
  }

LABEL_13:
}

- (CGPoint)_scrollOriginForPageTopLeft:(id)left
{
  leftCopy = left;
  v5 = PDFPointMake(0.0, 0.0);
  v7 = v6;
  if (leftCopy)
  {
    [leftCopy boundsForBox:{-[PDFView displayBox](self, "displayBox")}];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(PDFView *)self pageBreakMargins];
    v17 = v16;
    v19 = v18;
    rotation = [leftCopy rotation];
    if (rotation > 179)
    {
      if (rotation == 180)
      {
        v5 = v17 + PDFPointMake(v13, 0.0);
        goto LABEL_12;
      }

      if (rotation != 270)
      {
LABEL_13:
        [(PDFView *)self convertPoint:leftCopy fromPage:v9 + v5, v11 + v7];
        v24 = v23;
        v26 = v25;
        documentView = [(PDFView *)self documentView];
        [documentView convertPoint:self fromView:{v24, v26}];
        v5 = v28;
        v7 = v29;

        goto LABEL_14;
      }

      v5 = v17 + PDFPointMake(v13, v15);
    }

    else
    {
      if (rotation)
      {
        if (rotation == 90)
        {
          v5 = PDFPointMake(0.0, 0.0) - v17;
LABEL_12:
          v7 = v21 - v19;
          goto LABEL_13;
        }

        goto LABEL_13;
      }

      v5 = PDFPointMake(0.0, v15) - v17;
    }

    v7 = v19 + v22;
    goto LABEL_13;
  }

LABEL_14:

  v30 = v5;
  v31 = v7;
  result.y = v31;
  result.x = v30;
  return result;
}

- (void)_findVisiblePages
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = self->_private;
  if (v3->isUsingPageViewController)
  {
    currentPage = [(PDFDocumentViewController *)v3->documentViewController currentPage];
    v4 = [(PDFDocument *)self->_private->document indexForPage:?];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    self->_private->lastVisiblePage = v5;
    self->_private->firstVisiblePage = v5;
  }

  else
  {
    [(PDFView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    documentView = [(PDFView *)self documentView];
    [(PDFView *)self convertRect:documentView toView:v7, v9, v11, v13];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    pDFLayout = [(PDFView *)self PDFLayout];
    currentPage2 = [(PDFView *)self currentPage];
    v25 = [pDFLayout visiblePagesInBounds:currentPage2 currentPage:{v16, v18, v20, v22}];

    if (v25 && [v25 count])
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v26 = v25;
      v27 = [v26 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v51;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v51 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [*(*(&v50 + 1) + 8 * i) setView:self];
          }

          v28 = [v26 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v28);
      }

      document = [(PDFView *)self document];
      v32 = [v26 objectAtIndex:0];
      v33 = [document indexForPage:v32];

      document2 = [(PDFView *)self document];
      lastObject = [v26 lastObject];
      v36 = [document2 indexForPage:lastObject];
      v37 = v36 + 1;

      v38 = self->_private;
      firstVisiblePage = v38->firstVisiblePage;
      lastVisiblePage = v38->lastVisiblePage;
      if (v33 + 1 != firstVisiblePage || v37 != lastVisiblePage)
      {
        v38->firstVisiblePage = v33 + 1;
        self->_private->lastVisiblePage = v37;
        v41 = MEMORY[0x1E695DF20];
        if (firstVisiblePage && lastVisiblePage)
        {
          v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:firstVisiblePage - 1];
          v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:lastVisiblePage - 1];
          v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v33];
          v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v36];
          v46 = [v41 dictionaryWithObjectsAndKeys:{v42, @"PDFViewWasFirstVisiblePage", v43, @"PDFViewWasLastVisiblePage", v44, @"PDFViewFirstVisiblePage", v45, @"PDFViewLastVisiblePage", 0}];
        }

        else
        {
          v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v33];
          v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v36];
          v46 = [v41 dictionaryWithObjectsAndKeys:{v42, @"PDFViewFirstVisiblePage", v43, @"PDFViewLastVisiblePage", 0}];
        }

        defaultQueue = [MEMORY[0x1E696AD90] defaultQueue];
        v48 = [MEMORY[0x1E696AD80] notificationWithName:@"PDFViewVisiblePagesChanged" object:self userInfo:v46];
        [defaultQueue enqueueNotification:v48 postingStyle:2];
      }
    }
  }
}

- (void)documentWasUnlocked
{
  [(PDFView *)self _removePasswordView];
  [(PDFScrollView *)self->_private->scrollView setDocument:0];
  [(PDFScrollView *)self->_private->scrollView setDocument:self->_private->document];
  [(PDFViewLayout *)self->_private->viewLayout setDocument:self->_private->document];
  WeakRetained = objc_loadWeakRetained(&self->_private->delegate);
  [(PDFView *)self setNewPageVisibilityDelegate:WeakRetained withOldDelegate:0];

  [(PDFView *)self layoutDocumentView];
  v4 = self->_private;
  if (v4->autoScale)
  {
    [(PDFView *)self _internalSetAutoScaleFactor];
    v4 = self->_private;
  }

  if ([(PDFDocument *)v4->document pageCount]&& self->_currentPageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(PDFDocument *)self->_private->document pageAtIndex:?];
    self->_private->wantsForceUpdate = 1;
    v6 = self->_private;
    blockingWaitDuration = v6->blockingWaitDuration;
    v6->blockingWaitDuration = 0.25;
    [(PDFView *)self _goToPage:v5 animated:0 withBackgroundUpdate:1];
    self->_private->blockingWaitDuration = blockingWaitDuration;
  }

  [(PDFView *)self _reflectNewPageOn];
  if ([(PDFDocument *)self->_private->document pageCount])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PDFViewChangedPage" object:self];
  }
}

- (void)_updateAnnotations
{
  v16 = *MEMORY[0x1E69E9840];
  if (ShouldRenderAnnotationsInPDFKit())
  {
    visiblePages = [(PDFView *)self visiblePages];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [visiblePages countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      v7 = MEMORY[0x1E69E96A0];
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(visiblePages);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __29__PDFView__updateAnnotations__block_invoke;
          v10[3] = &unk_1E8152668;
          v10[4] = self;
          v10[5] = v9;
          [v9 fetchAnnotationsWithCompletion:v10 deliveredOnQueue:v7];
          ++v8;
        }

        while (v5 != v8);
        v5 = [visiblePages countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }
}

void __29__PDFView__updateAnnotations__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = *(a1 + 32);
        [v8 bounds];
        v10 = 1.0;
        if ([v9 isRectVisible:*(a1 + 40) onPage:?])
        {
          [*(a1 + 32) scaleFactor];
          v10 = v11;
        }

        [v8 setScaleFactor:v10 * PDFScreenGetBackingScaleFactor()];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)visiblePagesChanged:(id)changed
{
  v47 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  if ([(PDFView *)self isDocumentAnalysisEnabled])
  {
    [(PDFView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    documentView = [(PDFView *)self documentView];
    [(PDFView *)self convertRect:documentView toView:v6, v8, v10, v12];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    documentView2 = [(PDFView *)self documentView];
    [documentView2 bounds];
    v24 = v23;

    pDFLayout = [(PDFView *)self PDFLayout];
    currentPage = [(PDFView *)self currentPage];
    v27 = [pDFLayout visiblePagesInBounds:currentPage currentPage:{v15, v24 - v17 - v21, v19, v21}];

    v28 = GetDefaultsWriteUsePageAnalyzerV2();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v27;
    v29 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v29)
    {
      v30 = *v43;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v42 + 1) + 8 * i);
          if (v28)
          {
            objc_initWeak(location, self);
            document = [(PDFView *)self document];
            formFillingQueue = [document formFillingQueue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __31__PDFView_visiblePagesChanged___block_invoke;
            block[3] = &unk_1E8152690;
            block[4] = v32;
            block[5] = self;
            objc_copyWeak(&v41, location);
            dispatch_async(formFillingQueue, block);

            objc_destroyWeak(&v41);
            objc_destroyWeak(location);
          }

          else
          {
            location[0] = 0;
            location[1] = location;
            location[2] = 0x2020000000;
            location[3] = 0;
            objc_initWeak(&from, self);
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = __31__PDFView_visiblePagesChanged___block_invoke_3;
            v36[3] = &unk_1E81526E0;
            v36[6] = location;
            v36[4] = self;
            objc_copyWeak(&v37, &from);
            v36[5] = v32;
            [PDFPageEvaluator isPageCandidateForOCR:v32 completion:v36];
            objc_destroyWeak(&v37);
            objc_destroyWeak(&from);
            _Block_object_dispose(location, 8);
          }
        }

        v29 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v29);
    }
  }
}

void __31__PDFView_visiblePagesChanged___block_invoke(uint64_t a1)
{
  v2 = +[PDFPageAnalyzerV2 analyzePage:withBox:requestTypes:](PDFPageAnalyzerV2, "analyzePage:withBox:requestTypes:", *(a1 + 32), [*(a1 + 40) displayBox], 3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__PDFView_visiblePagesChanged___block_invoke_2;
  block[3] = &unk_1E8151650;
  objc_copyWeak(v4, (a1 + 48));
  block[4] = *(a1 + 32);
  v4[1] = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v4);
}

void __31__PDFView_visiblePagesChanged___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleAnalysisCompletionOfPage:*(a1 + 32) resultTypes:*(a1 + 48)];
}

void __31__PDFView_visiblePagesChanged___block_invoke_3(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    *(*(*(a1 + 48) + 8) + 24) |= 1uLL;
  }

  if ([*(a1 + 32) isFormDetectionEnabled])
  {
    *(*(*(a1 + 48) + 8) + 24) |= 2uLL;
  }

  v6 = +[PDFPageAnalyzer sharedInstance];
  v7 = *(*(*(a1 + 48) + 8) + 24);
  v8 = MEMORY[0x1E69E96A0];
  v9 = MEMORY[0x1E69E96A0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __31__PDFView_visiblePagesChanged___block_invoke_4;
  v10[3] = &unk_1E81526B8;
  objc_copyWeak(&v11, (a1 + 56));
  v10[4] = *(a1 + 40);
  [v6 analyzePage:v5 analysisTypes:v7 completionQueue:v8 completionBlock:v10];

  objc_destroyWeak(&v11);
}

void __31__PDFView_visiblePagesChanged___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 && !a3)
  {
    if (a4)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained handleAnalysisCompletionOfPage:*(a1 + 32) resultTypes:v5];
  }
}

- (CGPoint)centerPointOfVisibleRectOfPage:(id)page
{
  pageCopy = page;
  document = [(PDFView *)self document];
  v6 = [document indexForPage:pageCopy];

  v7 = [(PDFView *)self pageViewForPageAtIndex:v6];
  [(PDFView *)self visibleRectForPageView:v7];
  [v7 convertRect:self toView:?];
  [(PDFView *)self convertRect:pageCopy toPage:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  CenterPoint = PDFRectGetCenterPoint(v9, v11, v13);
  v16 = v15;

  v17 = CenterPoint;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)_showFormFillingButton:(BOOL)button
{
  v56[2] = *MEMORY[0x1E69E9840];
  formFieldButton = self->_formFieldButton;
  if (button)
  {
    if (!formFieldButton)
    {
      filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
      [filledButtonConfiguration setButtonSize:3];
      [filledButtonConfiguration setCornerStyle:4];
      v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];
      [filledButtonConfiguration setImage:v6];

      v7 = [MEMORY[0x1E69DCAD8] configurationWithScale:2];
      [filledButtonConfiguration setPreferredSymbolConfigurationForImage:v7];

      v8 = [MEMORY[0x1E69DC738] buttonWithConfiguration:filledButtonConfiguration primaryAction:0];
      v9 = self->_formFieldButton;
      self->_formFieldButton = v8;

      [(UIButton *)self->_formFieldButton setTranslatesAutoresizingMaskIntoConstraints:0];
      v10 = MEMORY[0x1E69DC628];
      v11 = PDFKitLocalizedString(@"Add Text Form Box");
      v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"character.textbox"];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __34__PDFView__showFormFillingButton___block_invoke;
      v54[3] = &unk_1E8151B90;
      v54[4] = self;
      v13 = [v10 actionWithTitle:v11 image:v12 identifier:0 handler:v54];

      v14 = MEMORY[0x1E69DC628];
      v15 = PDFKitLocalizedString(@"Add Signature");
      v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"signature"];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __34__PDFView__showFormFillingButton___block_invoke_2;
      v53[3] = &unk_1E8151B90;
      v53[4] = self;
      v17 = [v14 actionWithTitle:v15 image:v16 identifier:0 handler:v53];

      v18 = MEMORY[0x1E69DCC60];
      v19 = PDFKitLocalizedString(@"Add Form Item to PDF");
      v56[0] = v13;
      v56[1] = v17;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
      v21 = [v18 menuWithTitle:v19 children:v20];

      [(UIButton *)self->_formFieldButton setMenu:v21];
      [(UIButton *)self->_formFieldButton setShowsMenuAsPrimaryAction:1];

      formFieldButton = self->_formFieldButton;
    }

    documentView = [(PDFView *)self documentView];
    [(PDFView *)self insertSubview:formFieldButton aboveSubview:documentView];

    bottomAnchor = [(UIButton *)self->_formFieldButton bottomAnchor];
    bottomAnchor2 = [(PDFView *)self bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-15.0];

    v26 = MEMORY[0x1E696ACD8];
    v55[0] = v25;
    trailingAnchor = [(UIButton *)self->_formFieldButton trailingAnchor];
    trailingAnchor2 = [(PDFView *)self trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-15.0];
    v55[1] = v29;
    widthAnchor = [(UIButton *)self->_formFieldButton widthAnchor];
    heightAnchor = [(UIButton *)self->_formFieldButton heightAnchor];
    v32 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v55[2] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:3];
    [v26 activateConstraints:v33];

    [(PDFView *)self setNeedsLayout];
    [(PDFView *)self layoutIfNeeded];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v35 = *MEMORY[0x1E69DE080];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __34__PDFView__showFormFillingButton___block_invoke_3;
    v51[3] = &unk_1E8152708;
    v51[4] = self;
    v37 = v25;
    v52 = v37;
    v38 = [defaultCenter addObserverForName:v35 object:0 queue:mainQueue usingBlock:v51];
    formFieldButtonShowKeyboardNotification = self->_formFieldButtonShowKeyboardNotification;
    self->_formFieldButtonShowKeyboardNotification = v38;

    v40 = *MEMORY[0x1E69DE078];
    mainQueue2 = [MEMORY[0x1E696ADC8] mainQueue];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __34__PDFView__showFormFillingButton___block_invoke_5;
    v48[3] = &unk_1E8152708;
    v49 = v37;
    selfCopy = self;
    v42 = v37;
    v43 = [defaultCenter addObserverForName:v40 object:0 queue:mainQueue2 usingBlock:v48];
    formFieldButtonHideKeyboardNotification = self->_formFieldButtonHideKeyboardNotification;
    self->_formFieldButtonHideKeyboardNotification = v43;
  }

  else
  {
    if (formFieldButton)
    {
      [(UIButton *)self->_formFieldButton removeFromSuperview];
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self->_formFieldButtonShowKeyboardNotification];
    v45 = self->_formFieldButtonShowKeyboardNotification;
    self->_formFieldButtonShowKeyboardNotification = 0;

    [defaultCenter2 removeObserver:self->_formFieldButtonHideKeyboardNotification];
    v46 = self->_formFieldButtonHideKeyboardNotification;
    self->_formFieldButtonHideKeyboardNotification = 0;
  }
}

void __34__PDFView__showFormFillingButton___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) document];
  v7 = [v2 akController];

  v3 = [v7 signaturesController];
  v4 = objc_alloc_init(AKSignaturesPresentationContextClass());
  v5 = [*(a1 + 32) window];
  v6 = [v5 rootViewController];
  [v4 setPresentingViewController:v6];

  [v4 setSourceView:*(*(a1 + 32) + 456)];
  [v3 setPresentationContext:v4];
  [v3 setDelegate:*(a1 + 32)];
  [v3 presentSignaturesViewController];
}

void __34__PDFView__showFormFillingButton___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = *(a1 + 32);
  [v14 bounds];
  [v14 convertRect:0 toView:?];
  MaxY = CGRectGetMaxY(v31);
  v32.origin.x = v7;
  v32.origin.y = v9;
  v32.size.width = v11;
  v32.size.height = v13;
  v16 = MaxY - CGRectGetMinY(v32);
  v17 = [v3 userInfo];
  v18 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69DDF38]];
  v19 = [v18 integerValue];

  v20 = [v3 userInfo];

  v21 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69DDF40]];
  [v21 doubleValue];
  v23 = v22;

  v24 = MEMORY[0x1E69DD250];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __34__PDFView__showFormFillingButton___block_invoke_4;
  v27[3] = &unk_1E8152188;
  v25 = *(a1 + 40);
  v30 = v16;
  v26 = *(a1 + 32);
  v28 = v25;
  v29 = v26;
  [v24 animateWithDuration:v19 | 6 delay:v27 options:0 animations:v23 completion:0.0];
}

uint64_t __34__PDFView__showFormFillingButton___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setConstant:-15.0 - *(a1 + 48)];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

void __34__PDFView__showFormFillingButton___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDF38]];
  v6 = [v5 integerValue];

  v7 = [v3 userInfo];

  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DDF40]];
  [v8 doubleValue];
  v10 = v9;

  v11 = MEMORY[0x1E69DD250];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __34__PDFView__showFormFillingButton___block_invoke_6;
  v14[3] = &unk_1E8150FF8;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v15 = v12;
  v16 = v13;
  [v11 animateWithDuration:v6 | 6 delay:v14 options:0 animations:v10 completion:0.0];
}

uint64_t __34__PDFView__showFormFillingButton___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setConstant:-15.0];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

- (void)signaturesController:(id)controller didSelectSignatureWithAnnotation:(id)annotation
{
  annotationCopy = annotation;
  currentPage = [(PDFView *)self currentPage];
  document = [(PDFView *)self document];
  v7 = [document indexForPage:currentPage];

  [(PDFView *)self centerPointOfVisibleRectOfPage:currentPage];
  v9 = v8;
  v11 = v10;
  [annotationCopy rectangle];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  v16 = CGRectGetWidth(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  [annotationCopy setRectangle:{v9 - v16 * (216.0 / v16) * 0.5, v11 - CGRectGetHeight(v25) * (216.0 / v16) * 0.5}];
  document2 = [(PDFView *)self document];
  akController = [document2 akController];

  [annotationCopy setOriginalExifOrientation:{objc_msgSend(akController, "currentExifOrientationForPageAtIndex:", v7)}];
  [akController currentModelBaseScaleFactorForPageAtIndex:v7];
  [annotationCopy setOriginalModelBaseScaleFactor:?];
  akPageAdaptor = [currentPage akPageAdaptor];
  akPageModelController = [akPageAdaptor akPageModelController];
  v21 = [akPageModelController mutableArrayValueForKey:@"annotations"];
  [v21 addObject:annotationCopy];
}

- (void)handleAnalysisCompletionOfPage:(id)page resultTypes:(unint64_t)types
{
  typesCopy = types;
  pageCopy = page;
  document = [pageCopy document];
  v7 = -[PDFView pageViewForPageAtIndex:](self, "pageViewForPageAtIndex:", [document indexForPage:pageCopy]);
  if (([pageCopy containsFormFields] & 1) == 0 && !objc_msgSend(pageCopy, "containsDetectedFormFields"))
  {
    goto LABEL_15;
  }

  delegate = [(PDFView *)self delegate];
  v9 = delegate;
  v10 = self->_private;
  if (!v10->delegateRespondsToAllowFormFillingWithConfidence)
  {
    if (v10->delegateRespondsToAllowFormFillingWithAutoFill)
    {
      [delegate PDFView:self allowsFormFillingMode:1 withAutofill:objc_msgSend(pageCopy forPage:{"containsFormFieldsWithContentType"), pageCopy}];
    }

    else if (v10->delegateRespondsToAllowFormFilling)
    {
      [delegate PDFView:self allowsFormFillingMode:1 forPage:pageCopy];
    }

    goto LABEL_12;
  }

  if ([pageCopy containsFormFields])
  {
    detectedFormFieldsRecognitionConfidence = 3;
LABEL_9:
    [v9 PDFView:self allowsFormFillingMode:1 withRecognitionConfidence:detectedFormFieldsRecognitionConfidence forPage:pageCopy];
    goto LABEL_12;
  }

  detectedFormFieldsRecognitionConfidence = [pageCopy detectedFormFieldsRecognitionConfidence];
  if (detectedFormFieldsRecognitionConfidence)
  {
    goto LABEL_9;
  }

LABEL_12:
  if ([(PDFView *)self isInFormFillingMode])
  {
    [(PDFViewController *)self->_private->controller populateAnnotationsFromDetectedAnnotationsOnPage:pageCopy];
    [(PDFView *)self highlightDetectedFormFields:1];
  }

LABEL_15:
  if ((typesCopy & 1) != 0 && GetDefaultsWriteDrawInvisibleText())
  {
    [v7 forceTileUpdate];
  }

  if ((typesCopy & 2) != 0 && GetDefaultsWriteHighlightDetectedAnnotations())
  {
    [v7 enableHighlightDetectedFormFields:1];
  }

  if ((typesCopy & 4) != 0)
  {
    [v7 resetAccessibilityTree];
  }
}

- (id)nextPage
{
  if ([(PDFView *)self canGoToNextPage])
  {
    pDFLayout = [(PDFView *)self PDFLayout];
    functionalDisplayMode = [pDFLayout functionalDisplayMode];

    if ((functionalDisplayMode & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      lastPageIndex = self->_currentPageIndex + 2;
      if (lastPageIndex > [(PDFView *)self lastPageIndex])
      {
        lastPageIndex = [(PDFView *)self lastPageIndex];
      }

      document = [(PDFView *)self document];
      v7 = document;
      v8 = lastPageIndex;
    }

    else
    {
      document = [(PDFView *)self document];
      v7 = document;
      v8 = self->_currentPageIndex + 1;
    }

    v9 = [document pageAtIndex:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)previousPage
{
  if ([(PDFView *)self canGoToPreviousPage])
  {
    pDFLayout = [(PDFView *)self PDFLayout];
    functionalDisplayMode = [pDFLayout functionalDisplayMode];

    if ((functionalDisplayMode & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      currentPageIndex = self->_currentPageIndex;
      document = [(PDFView *)self document];
      v7 = document;
      v8 = self->_currentPageIndex;
      if (currentPageIndex < 2)
      {
        v9 = v8 - 1;
      }

      else
      {
        v9 = v8 - 2;
      }
    }

    else
    {
      document = [(PDFView *)self document];
      v7 = document;
      v9 = self->_currentPageIndex - 1;
    }

    v10 = [document pageAtIndex:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)pushDestination:(id)destination
{
  destinationCopy = destination;
  if (destinationCopy)
  {
    v9 = destinationCopy;
    v5 = self->_private;
    historyIndex = v5->historyIndex;
    if (historyIndex < [(NSMutableArray *)v5->destinationHistory count])
    {
      [(NSMutableArray *)self->_private->destinationHistory removeObjectsInRange:self->_private->historyIndex, [(NSMutableArray *)self->_private->destinationHistory count]- self->_private->historyIndex];
    }

    ++self->_private->historyIndex;
    [(NSMutableArray *)self->_private->destinationHistory addObject:v9];
    defaultQueue = [MEMORY[0x1E696AD90] defaultQueue];
    v8 = [MEMORY[0x1E696AD80] notificationWithName:@"PDFViewChangedHistory" object:self];
    [defaultQueue enqueueNotification:v8 postingStyle:1];

    destinationCopy = v9;
  }
}

- (void)goToDestinationNoPush:(id)push
{
  v42[2] = *MEMORY[0x1E69E9840];
  pushCopy = push;
  v5 = pushCopy;
  if (!pushCopy)
  {
    page = 0;
    goto LABEL_23;
  }

  page = [pushCopy page];
  if (page)
  {
    [v5 point];
    v8 = v7;
    v10 = v9;
    currentPage = [(PDFView *)self currentPage];
    if (page == currentPage && v8 == 3.40282347e38)
    {

      if (v10 == 3.40282347e38)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    if (v8 == 3.40282347e38 || v10 == 3.40282347e38)
    {
      [(PDFView *)self goToPageNoPush:page];
    }

    else
    {
      pDFLayout = [(PDFView *)self PDFLayout];
      functionalDisplayMode = [pDFLayout functionalDisplayMode];

      if ((functionalDisplayMode & 1) == 0)
      {
        [(PDFView *)self goToPageNoPush:page];
      }

      if (![(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView])
      {
        [(PDFScrollView *)self->_private->scrollView contentOffset];
      }

      [page boundsForBox:0];
      v18 = PDFPointClampInPDFRect(v8, v10, v15, v16, v17);
      v20 = v19;
      [page rotation];
      [(PDFView *)self convertPoint:page fromPage:v18, v20];
      v22 = v21;
      v24 = v23;
      documentView = [(PDFView *)self documentView];
      [documentView convertPoint:self fromView:{v22, v24}];
      v27 = v26;
      v29 = v28;

      if ([(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView])
      {
        v30 = [(PDFDocument *)self->_private->document indexForPage:page];
        [(PDFView *)self setCurrentPageIndex:v30 withNotification:0];
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v41[0] = @"pageIndex";
        v32 = [MEMORY[0x1E696AD98] numberWithInteger:v30];
        v41[1] = @"point";
        v42[0] = v32;
        v33 = [MEMORY[0x1E696B098] PDFKitValueWithPDFPoint:{v27, v29}];
        v42[1] = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
        [defaultCenter postNotificationName:@"PDFExtensionViewGoToDestination" object:self userInfo:v34];
      }

      else
      {
        documentView2 = [(PDFView *)self documentView];
        [documentView2 bounds];
        v37 = v36 - v29;

        [(PDFView *)self constrainedScrollToPoint:PDFPointMake(v27, v37)];
        document = [(PDFView *)self document];
        v39 = [document indexForPage:page];
        currentPageIndex = self->_currentPageIndex;

        if (v39 != currentPageIndex)
        {
          self->_private->inhibitAutoScroll = 1;
          [(PDFView *)self goToPageNoPush:page];
          self->_private->inhibitAutoScroll = 0;
        }
      }
    }
  }

LABEL_23:
}

- (void)goToPageNoPush:(id)push animated:(BOOL)animated
{
  animatedCopy = animated;
  pushCopy = push;
  if (pushCopy)
  {
    currentPage = [(PDFView *)self currentPage];
    v7 = self->_private;
    fromPage = v7->fromPage;
    v7->fromPage = currentPage;

    currentPageIndex = self->_currentPageIndex;
    document = [(PDFView *)self document];
    -[PDFView setCurrentPageIndex:withNotification:](self, "setCurrentPageIndex:withNotification:", [document indexForPage:pushCopy], 0);

    v11 = self->_currentPageIndex;
    if (!self->_private->inhibitAutoScroll)
    {
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_18;
      }

      [(PDFView *)self _reflectNewPageOn];
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__syncPageIndexToScrollView object:0];
      v11 = self->_currentPageIndex;
    }

    if (v11 != currentPageIndex && v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(PDFView *)self layoutDocumentView];
      v13 = self->_private;
      if (v13->isUsingPageViewController)
      {
        v14 = self->_currentPageIndex;
        v15 = currentPageIndex > v14 && !v13->displaysRTL || currentPageIndex < v14 && v13->displaysRTL;
        [(PDFDocumentViewController *)v13->documentViewController goToPage:pushCopy direction:v15 animated:animatedCopy];
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"PDFViewChangedPage" object:self];
    }
  }

LABEL_18:
}

- (BOOL)isRectVisible:(CGRect)visible onPage:(id)page
{
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  pageCopy = page;
  visiblePages = [(PDFView *)self visiblePages];
  if ([visiblePages containsObject:pageCopy])
  {
    [(PDFView *)self convertRect:pageCopy fromPage:x, y, width, height];
    v11 = PDFRectToCGRect([(PDFView *)self bounds]);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(PDFView *)self safeAreaInsets];
    MaxInsets = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    WeakRetained = objc_loadWeakRetained(&self->_private->delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained pdfViewContentInset];
      MaxInsets = PDFEdgeInsetsGetMaxInsets(MaxInsets, v21, v23, v25, v27);
      v21 = v28;
      v23 = v29;
      v25 = v30;
    }

    v31 = PDFEdgeInsetsInsetRect(v11, v13, v15, v17, MaxInsets, v21, v23, v25);
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v45.origin.x = PDFRectToCGRect(v38);
    v45.origin.y = v39;
    v45.size.width = v40;
    v45.size.height = v41;
    v44.origin.x = v31;
    v44.origin.y = v33;
    v44.size.width = v35;
    v44.size.height = v37;
    v42 = CGRectContainsRect(v44, v45);
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (double)autoScaleFactor
{
  v3 = self->_private;
  if (v3->isUsingPageViewController)
  {
    documentViewController = v3->documentViewController;

    [(PDFDocumentViewController *)documentViewController autoScaleFactor];
  }

  else
  {
    currentPage = [(PDFView *)self currentPage];
    [(PDFView *)self _unboundAutoScaleFactorForPage:currentPage];
    v9 = v8;

    return v9;
  }

  return result;
}

- (void)setScaleFactor:(double)factor anchorPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(PDFView *)self setAutoScales:0];
  [(PDFView *)self bounds];
  v9 = v8;
  documentView = [(PDFView *)self documentView];
  [(PDFView *)self convertPoint:documentView toView:x, y];
  v11 = v9 / factor;
  factorCopy = factor;
  v14 = PDFRectMakeFromCenter(v12, v13, v9 / factor);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = self->_private->scrollView;
  v22 = self->_private;
  if (!v22->isUsingPageViewController)
  {
    goto LABEL_10;
  }

  currentPage = [(PDFDocumentViewController *)v22->documentViewController currentPage];
  v24 = [(PDFDocumentViewController *)self->_private->documentViewController findPageViewControllerForPageIndex:[(PDFDocument *)self->_private->document indexForPage:currentPage]];
  v25 = v24;
  if (v24)
  {
    scrollView = [v24 scrollView];

    pageView = [v25 pageView];

    if (scrollView)
    {
      v28 = pageView == 0;
    }

    else
    {
      v28 = 1;
    }

    if (!v28)
    {
      [(PDFView *)self convertPoint:pageView toView:x, y];
      v14 = PDFRectMakeFromCenter(v29, v30, v11);
      v16 = v31;
      v18 = v32;
      v20 = v33;

      v21 = scrollView;
      documentView = pageView;
LABEL_10:
      [documentView bounds];
      v55.origin.x = v34;
      v55.origin.y = v35;
      v55.size.width = v36;
      v55.size.height = v37;
      v53.origin.x = v14;
      v53.origin.y = v16;
      v53.size.width = v18;
      v53.size.height = v20;
      v54 = CGRectIntersection(v53, v55);
      v38 = v54.origin.x;
      v39 = v54.origin.y;
      width = v54.size.width;
      height = v54.size.height;
      v42 = MEMORY[0x1E69DD250];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __38__PDFView_setScaleFactor_anchorPoint___block_invoke;
      v45[3] = &unk_1E8152730;
      v21 = v21;
      v46 = v21;
      v48 = v44;
      documentView = documentView;
      v47 = documentView;
      v49 = v38;
      v50 = v39;
      v51 = width;
      v52 = height;
      [v42 animateWithDuration:v45 animations:0.25];

      goto LABEL_11;
    }

    v21 = scrollView;
    documentView = pageView;
  }

LABEL_11:
}

uint64_t __38__PDFView_setScaleFactor_anchorPoint___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setZoomScale:0 animated:*(a1 + 48)];
  [*(a1 + 40) convertRect:*(a1 + 32) toView:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v3 = v2;
  v5 = v4;
  [*(a1 + 32) bounds];
  v7 = v6;
  v9 = v8;
  [*(a1 + 32) contentSize];
  v11 = v10;
  v13 = v12;
  [*(a1 + 32) contentInset];
  v15 = v14;
  v17 = v16;
  if (v11 - v7 >= 0.0)
  {
    v18 = v11 - v7;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = CGFloatClamp(v3, 0.0, v18);
  if (v13 - v9 + v17 >= 0.0)
  {
    v20 = v13 - v9 + v17;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = CGFloatClamp(v5, -v15, v20);
  if (v21 <= 0.0)
  {
    v22 = -v15;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(a1 + 32);

  return [v23 setContentOffset:0 animated:{v19, v22}];
}

- (void)setDisplaysRTL:(BOOL)displaysRTL
{
  self->_private->displaysRTL = displaysRTL;
  v3 = self->_private;
  if (v3->isUsingPageViewController)
  {
    [(PDFDocumentViewController *)v3->documentViewController setDisplaysRTL:?];
  }
}

- (void)setDisplaysBookmarksForPages:(BOOL)pages
{
  v3 = self->_private;
  if (v3->displaysBookmarksForPages != pages)
  {
    v3->displaysBookmarksForPages = pages;
    [(PDFView *)self _updateBookmarksForPages];
  }
}

- (void)_updateBookmarksForPages
{
  bookmarkedPages = [(PDFDocument *)self->_private->document bookmarkedPages];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__PDFView__updateBookmarksForPages__block_invoke;
  v4[3] = &unk_1E8152758;
  v4[4] = self;
  [bookmarkedPages enumerateIndexesUsingBlock:v4];
}

void __35__PDFView__updateBookmarksForPages__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) pageViewForPageAtIndex:a2];
  if (v3)
  {
    v4 = v3;
    if (*(*(*(a1 + 32) + 408) + 208) == 1)
    {
      [v3 addBookmark];
    }

    else
    {
      [v3 removeBookmark];
    }

    v3 = v4;
  }
}

- (id)pageViewForPageAtIndex:(unint64_t)index
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = self->_private;
  if (v4->isUsingPageViewController)
  {
    [(PDFDocumentViewController *)v4->documentViewController pageViews];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    pdfDocumentView = v19 = 0u;
    v6 = [pdfDocumentView countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(pdfDocumentView);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          page = [v10 page];
          document = [page document];
          v13 = [document indexForPage:page];

          if (v13 == index)
          {
            v14 = v10;

            goto LABEL_13;
          }
        }

        v7 = [pdfDocumentView countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_13:
  }

  else
  {
    pdfDocumentView = [(PDFScrollView *)v4->scrollView pdfDocumentView];
    v14 = [pdfDocumentView pageViewForPageAtIndex:index];
  }

  return v14;
}

- (id)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_private->delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained PDFViewParentViewController];
  }

  else
  {
    [(UIView *)self _PDFViewParentViewController];
  }
  v4 = ;

  return v4;
}

- (void)setEnableTileUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v15 = *MEMORY[0x1E69E9840];
  [(PDFRenderingProperties *)self->_private->renderingProperties setEnableTileUpdates:?];
  if (updatesCopy)
  {
    visiblePageViews = [(PDFView *)self visiblePageViews];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [visiblePageViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(visiblePageViews);
          }

          [*(*(&v10 + 1) + 8 * v9++) setNeedsTilesUpdate];
        }

        while (v7 != v9);
        v7 = [visiblePageViews countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)forceTileRefresh
{
  if (self->_private)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v5 = [bundleIdentifier isEqualToString:@"com.apple.Preview"];

    if ((v5 & 1) == 0)
    {

      [(PDFView *)self internalForceTileRefresh];
    }
  }
}

- (void)internalForceTileRefresh
{
  v12 = *MEMORY[0x1E69E9840];
  visiblePageViews = [(PDFView *)self visiblePageViews];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [visiblePageViews countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(visiblePageViews);
        }

        [*(*(&v7 + 1) + 8 * v6++) forceTileUpdate];
      }

      while (v4 != v6);
      v4 = [visiblePageViews countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)internalForceAnnotationRefresh
{
  v14 = *MEMORY[0x1E69E9840];
  visiblePages = [(PDFView *)self visiblePages];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = visiblePages;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        annotations = [*(*(&v9 + 1) + 8 * i) annotations];
        [annotations makeObjectsPerformSelector:sel_updateAnnotationEffect];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)highlightPDFRedactions:(BOOL)redactions
{
  redactionsCopy = redactions;
  v25 = *MEMORY[0x1E69E9840];
  visiblePages = [(PDFView *)self visiblePages];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = visiblePages;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        annotations = [*(*(&v19 + 1) + 8 * v9) annotations];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v11 = [annotations countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          do
          {
            v14 = 0;
            do
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(annotations);
              }

              [*(*(&v15 + 1) + 8 * v14++) highlightRedaction:redactionsCopy];
            }

            while (v12 != v14);
            v12 = [annotations countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v12);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)highlightDetectedFormFields:(BOOL)fields
{
  fieldsCopy = fields;
  v28 = *MEMORY[0x1E69E9840];
  visiblePages = [(PDFView *)self visiblePages];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = visiblePages;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v17 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        annotations = [*(*(&v22 + 1) + 8 * i) annotations];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = [annotations countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(annotations);
              }

              v13 = *(*(&v18 + 1) + 8 * j);
              v14 = [v13 valueForAnnotationKey:@"/AAPL:SFF"];

              if (v14)
              {
                akAnnotation = [v13 akAnnotation];
                [akAnnotation setHighlighted:fieldsCopy];
              }
            }

            v10 = [annotations countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v10);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)printActivePageText
{
  currentPage = [(PDFView *)self currentPage];
  if (currentPage)
  {
    v7 = currentPage;
    document = [(PDFView *)self document];
    v5 = [document indexForPage:v7];

    string = [v7 string];
    NSLog(&cfstr_PageLuText.isa, v5, string);

    currentPage = v7;
  }
}

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = PDFView;
  [(PDFView *)&v3 setNeedsDisplay];
  [(PDFView *)self forceTileRefresh];
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  v4.receiver = self;
  v4.super_class = PDFView;
  [(PDFView *)&v4 setNeedsDisplayInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [(PDFView *)self forceTileRefresh];
}

- (void)_tileRefresh
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_private)
  {
    visiblePageViews = [(PDFView *)self visiblePageViews];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [visiblePageViews countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(visiblePageViews);
          }

          [*(*(&v8 + 1) + 8 * v7++) setNeedsTilesUpdate];
        }

        while (v5 != v7);
        v5 = [visiblePageViews countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(PDFTimer *)self->_private->tilesSyncTimer update];
  }
}

- (BOOL)isOverLinkAnnotation:(CGPoint)annotation
{
  y = annotation.y;
  x = annotation.x;
  v6 = [(PDFView *)self pageForPoint:0 nearest:?];
  if (!v6)
  {
    goto LABEL_6;
  }

  [(PDFView *)self convertPoint:v6 toPage:x, y];
  v8 = v7;
  v10 = v9;
  v11 = [v6 annotationAtPoint:?];
  if (!v11)
  {
    v11 = [v6 scannedAnnotationAtPoint:{v8, v10}];
  }

  v12 = [v11 valueForAnnotationKey:@"/Subtype"];
  v13 = [v12 isEqualToString:@"/Link"];

  if (v13)
  {
    v14 = 1;
  }

  else
  {
LABEL_6:
    v14 = 0;
  }

  return v14;
}

- (void)setGutterWidth:(double)width
{
  [(PDFView *)self gutterWidth];
  if (v5 != width)
  {
    [(PDFView *)self gutterWidth];
    if (v6 >= 0.0)
    {
      v9 = MEMORY[0x1E696AD98];
      [(PDFView *)self gutterWidth];
      *&v10 = v10;
      v11 = [v9 numberWithFloat:v10];
      self->_private->gutterWide = width;
      [(PDFView *)self layoutDocumentView];
    }

    else
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695DA20];

      [v7 raise:v8 format:@"setGutterWidth: width cannot be negative"];
    }
  }
}

- (void)setForcesTopAlignment:(BOOL)alignment
{
  [(PDFScrollView *)self->_private->scrollView setForcesTopAlignment:alignment];

  [(PDFView *)self layoutDocumentView];
}

- (id)_getDocumentAKController
{
  document = self->_private->document;
  if (document)
  {
    akDocumentAdaptor = [(PDFDocument *)document akDocumentAdaptor];
    v4 = akDocumentAdaptor;
    if (akDocumentAdaptor)
    {
      akMainController = [akDocumentAdaptor akMainController];
    }

    else
    {
      akMainController = 0;
    }
  }

  else
  {
    akMainController = 0;
  }

  return akMainController;
}

- (id)akToolbarView
{
  if ([(PDFDocument *)self->_private->document isLocked])
  {
    akToolbarView = 0;
  }

  else
  {
    _getDocumentAKController = [(PDFView *)self _getDocumentAKController];
    if (_getDocumentAKController)
    {
      akDocumentAdaptor = [(PDFDocument *)self->_private->document akDocumentAdaptor];
      akToolbarView = [akDocumentAdaptor akToolbarView];
    }

    else
    {
      akToolbarView = 0;
    }
  }

  return akToolbarView;
}

- (void)setAkToolbarViewTintColor:(id)color
{
  colorCopy = color;
  akToolbarView = [(PDFView *)self akToolbarView];
  if (akToolbarView)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [akToolbarView setBarTintColor:colorCopy];
    }
  }
}

- (id)akToolbarViewTintColor
{
  akToolbarView = [(PDFView *)self akToolbarView];
  if (akToolbarView && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    barTintColor = [akToolbarView barTintColor];
  }

  else
  {
    barTintColor = 0;
  }

  return barTintColor;
}

- (void)setAkToolbarViewItemTintColor:(id)color
{
  colorCopy = color;
  akToolbarView = [(PDFView *)self akToolbarView];
  if (akToolbarView)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [akToolbarView setTintColor:colorCopy];
    }
  }
}

- (id)akToolbarViewItemTintColor
{
  akToolbarView = [(PDFView *)self akToolbarView];
  if (akToolbarView && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    tintColor = [akToolbarView tintColor];
  }

  else
  {
    tintColor = 0;
  }

  return tintColor;
}

- (id)akUndoToolbarItem
{
  _getDocumentAKController = [(PDFView *)self _getDocumentAKController];
  v3 = _getDocumentAKController;
  if (_getDocumentAKController)
  {
    v4 = [_getDocumentAKController toolbarButtonItemOfType:10];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)akRedoToolbarItem
{
  _getDocumentAKController = [(PDFView *)self _getDocumentAKController];
  v3 = _getDocumentAKController;
  if (_getDocumentAKController)
  {
    v4 = [_getDocumentAKController toolbarButtonItemOfType:11];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)akAnnotationEditingEnabled
{
  _getDocumentAKController = [(PDFView *)self _getDocumentAKController];
  v3 = _getDocumentAKController;
  if (_getDocumentAKController)
  {
    annotationEditingEnabled = [_getDocumentAKController annotationEditingEnabled];
  }

  else
  {
    annotationEditingEnabled = 0;
  }

  return annotationEditingEnabled;
}

- (void)setAkAnnotationEditingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _getDocumentAKController = [(PDFView *)self _getDocumentAKController];
  if (_getDocumentAKController)
  {
    v10 = _getDocumentAKController;
    v6 = [_getDocumentAKController annotationEditingEnabled] == enabledCopy;
    _getDocumentAKController = v10;
    if (!v6)
    {
      [v10 setAnnotationEditingEnabled:enabledCopy];
      if (enabledCopy)
      {
        v7 = objc_opt_new();
        [v7 setTag:763000];
        [v10 performActionForSender:v7];
      }

      else
      {
        modelController = [v10 modelController];
        [modelController deselectAllAnnotations];

        [v10 resetToDefaultToolMode];
      }

      v9 = self->_private;
      _getDocumentAKController = v10;
      if (v9->isUsingPageViewController)
      {
        [(PDFDocumentViewController *)v9->documentViewController setScrollViewScrollEnabled:enabledCopy ^ 1];
        _getDocumentAKController = v10;
      }
    }
  }
}

- (BOOL)isAnnotationEditingEnabled
{
  if (self->_annotationEditingAllowed || [(PDFView *)self akAnnotationEditingEnabled])
  {
    return 1;
  }

  return [(PDFView *)self allowsMarkupAnnotationEditing];
}

- (void)setFormDetectionEnabled:(BOOL)enabled
{
  if (self->_formDetectionEnabled != enabled)
  {
    self->_formDetectionEnabled = enabled;
    if (enabled)
    {
      [(PDFView *)self visiblePagesChanged:0];
    }
  }
}

- (void)setNewPageVisibilityDelegate:(id)delegate withOldDelegate:(id)oldDelegate
{
  v42 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  oldDelegateCopy = oldDelegate;
  if (delegateCopy != oldDelegateCopy)
  {
    v8 = self->_private;
    if (v8->isUsingPageViewController)
    {
      pageViews = [(PDFDocumentViewController *)v8->documentViewController pageViews];
    }

    else
    {
      pdfDocumentView = [(PDFScrollView *)v8->scrollView pdfDocumentView];
      pageViews = [pdfDocumentView pageViews];
    }

    objc_storeWeak(&self->_private->delegate, oldDelegateCopy);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v11 = pageViews;
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
    v31 = v11;
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          if ([v16 visibilityDelegateIndex] != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (oldDelegateCopy)
            {
              visibilityDelegateIndex = [v16 visibilityDelegateIndex];
              [(PDFView *)self callPageVisibilityDelegateMethod:2 forPageView:v16 atPageIndex:visibilityDelegateIndex];
              v18 = visibilityDelegateIndex;
              v11 = v31;
              [(PDFView *)self callPageVisibilityDelegateMethod:3 forPageView:v16 atPageIndex:v18];
            }

            else
            {
              [v16 setVisibilityDelegateIndex:0x7FFFFFFFFFFFFFFFLL];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v13);
    }

    objc_storeWeak(&self->_private->delegate, delegateCopy);
    if (delegateCopy)
    {
      v29 = oldDelegateCopy;
      v30 = delegateCopy;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v19 = v11;
      v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v33;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v33 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v32 + 1) + 8 * j);
            page = [v24 page];
            document = [page document];
            page2 = [v24 page];
            v28 = [document indexForPage:page2];

            [(PDFView *)self callPageVisibilityDelegateMethod:0 forPageView:v24 atPageIndex:v28];
            [(PDFView *)self callPageVisibilityDelegateMethod:1 forPageView:v24 atPageIndex:v28];
          }

          v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v21);
      }

      oldDelegateCopy = v29;
      delegateCopy = v30;
      v11 = v31;
    }
  }
}

- (void)callPageVisibilityDelegateMethod:(int)method forPageView:(id)view atPageIndex:(unint64_t)index
{
  v30 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    WeakRetained = objc_loadWeakRetained(&self->_private->delegate);
    v10 = self->_overlayViewController;
    if (method > 1)
    {
      if (method == 2)
      {
        if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
        {
          page = [viewCopy page];
          [WeakRetained pdfView:self willRemoveView:viewCopy forPage:page atIndex:index];
        }

        page2 = [viewCopy page];
        [(PDFOverlayViewsController *)v10 pdfView:self willRemoveView:viewCopy forPage:page2 atIndex:index];

        [(PDFCoachMarkManager *)self->_private->coachMarkManager pageLayerWillRemove:viewCopy];
        goto LABEL_34;
      }

      if (method == 3)
      {
        if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
        {
          page3 = [viewCopy page];
          [WeakRetained pdfView:self didRemoveView:viewCopy forPage:page3 atIndex:index];
        }

        [viewCopy setVisibilityDelegateIndex:0x7FFFFFFFFFFFFFFFLL];
        page4 = [viewCopy page];
        visiblePageViews = [(PDFView *)self visiblePageViews];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v16 = [visiblePageViews countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v26;
          do
          {
            v19 = 0;
            do
            {
              if (*v26 != v18)
              {
                objc_enumerationMutation(visiblePageViews);
              }

              v20 = *(*(&v25 + 1) + 8 * v19);
              if (v20 != viewCopy)
              {
                page5 = [*(*(&v25 + 1) + 8 * v19) page];

                if (page5 == page4)
                {
                  [v20 setVisibilityDelegateIndex:0x7FFFFFFFFFFFFFFFLL];
                }
              }

              ++v19;
            }

            while (v17 != v19);
            v17 = [visiblePageViews countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v17);
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (!method)
      {
        if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
        {
          page6 = [viewCopy page];
          [WeakRetained pdfView:self willAddView:viewCopy forPage:page6 atIndex:index];
        }

        [viewCopy setVisibilityDelegateIndex:index];
        goto LABEL_34;
      }

      if (method == 1)
      {
        if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
        {
          page7 = [viewCopy page];
          [WeakRetained pdfView:self didAddView:viewCopy forPage:page7 atIndex:index];
        }

        page8 = [viewCopy page];
        [(PDFOverlayViewsController *)v10 pdfView:self didAddView:viewCopy forPage:page8 atIndex:index];

        [(PDFCoachMarkManager *)self->_private->coachMarkManager pageLayerDidAppear:viewCopy];
        goto LABEL_34;
      }
    }

    NSLog(&cfstr_IncorrectCallI.isa);
LABEL_34:
  }
}

- (void)performOverlayAdaptorPageVisibilityTrueUpAfterSettingDocument
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = self->_private;
  if (v3->isUsingPageViewController)
  {
    pageViews = [(PDFDocumentViewController *)v3->documentViewController pageViews];
  }

  else
  {
    pdfDocumentView = [(PDFScrollView *)v3->scrollView pdfDocumentView];
    pageViews = [pdfDocumentView pageViews];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = pageViews;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        visibilityDelegateIndex = [v11 visibilityDelegateIndex];
        if (visibilityDelegateIndex != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = visibilityDelegateIndex;
          [(PDFView *)self callPageVisibilityDelegateMethodForOverlayAdaptorOnly:0 forPageView:v11 atPageIndex:visibilityDelegateIndex];
          [(PDFView *)self callPageVisibilityDelegateMethodForOverlayAdaptorOnly:1 forPageView:v11 atPageIndex:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)callPageVisibilityDelegateMethodForOverlayAdaptorOnly:(int)only forPageView:(id)view atPageIndex:(unint64_t)index
{
  viewCopy = view;
  v8 = self->_overlayViewController;
  if (only > 1)
  {
    if (only == 2)
    {
      page = [viewCopy page];
      [(PDFOverlayViewsController *)v8 pdfView:self willRemoveView:viewCopy forPage:page atIndex:index];
      goto LABEL_9;
    }

    if (only == 3)
    {
      goto LABEL_10;
    }

LABEL_7:
    NSLog(&cfstr_IncorrectCallI.isa);
    goto LABEL_10;
  }

  if (!only)
  {
    goto LABEL_10;
  }

  if (only != 1)
  {
    goto LABEL_7;
  }

  page = [viewCopy page];
  [(PDFOverlayViewsController *)v8 pdfView:self didAddView:viewCopy forPage:page atIndex:index];
LABEL_9:

LABEL_10:
}

- (void)setShowsScrollIndicators:(BOOL)indicators
{
  v3 = self->_private;
  if (v3->showsScrollIndicators != indicators)
  {
    v3->showsScrollIndicators = indicators;
    [(PDFView *)self positionInternalViews:0];
  }
}

- (void)setScrollViewScrollEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(PDFScrollView *)self->_private->scrollView setScrollEnabled:?];
  scrollView = self->_private->scrollView;

  [(PDFScrollView *)scrollView setUserInteractionEnabled:enabledCopy];
}

- (CGRect)extensionViewBoundsInDocument
{
  v2 = self->_private;
  x = v2->extensionViewBoundsInDocument.origin.x;
  y = v2->extensionViewBoundsInDocument.origin.y;
  width = v2->extensionViewBoundsInDocument.size.width;
  height = v2->extensionViewBoundsInDocument.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)pdfDocumentViewSize
{
  pdfDocumentView = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
  [pdfDocumentView documentViewSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)updatePDFViewLayout:(CGRect)layout scrollViewFrame:(CGRect)frame zoomScale:(double)scale
{
  self->_private->extensionViewBoundsInDocument = layout;
  self->_private->extensionViewFrame = frame;
  self->_private->extensionViewZoomScale = scale;
  pdfDocumentView = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
  [pdfDocumentView updateVisibility];
}

- (CGRect)rootViewBounds
{
  if ([(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView])
  {
    v3 = self->_private;
    x = v3->extensionViewFrame.origin.x;
    y = v3->extensionViewFrame.origin.y;
    width = v3->extensionViewFrame.size.width;
    height = v3->extensionViewFrame.size.height;
  }

  else
  {
    [(PDFView *)self bounds];
    [(PDFView *)self convertRect:0 toView:?];
    x = v8;
    y = v9;
    width = v10;
    height = v11;
  }

  [(PDFView *)self mainScreenScale];

  v13 = PDFRectScale(x, y, width, height, v12);
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)convertRectToRootView:(CGRect)view fromPageLayer:(id)layer
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  layerCopy = layer;
  layer = [(PDFView *)self layer];
  [layerCopy convertRect:layer toLayer:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  if ([(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView])
  {
    v19 = self->_private;
    extensionViewZoomScale = v19->extensionViewZoomScale;
    v12 = v19->extensionViewFrame.origin.x + v12 * extensionViewZoomScale - v19->extensionViewBoundsInDocument.origin.x * extensionViewZoomScale;
    v16 = v16 * extensionViewZoomScale;
    v18 = v18 * extensionViewZoomScale;
    v21 = v19->extensionViewFrame.size.height - v18 - (v19->extensionViewFrame.origin.y + v14 * extensionViewZoomScale - v19->extensionViewBoundsInDocument.origin.y * extensionViewZoomScale);
  }

  else
  {
    layer2 = [(PDFView *)self layer];
    [layer2 bounds];
    v21 = v23 - v18 - v14;
  }

  layer3 = [(PDFView *)self layer];
  [layer3 convertRect:0 toLayer:{v12, v21, v16, v18}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [(PDFView *)self mainScreenScale];
  v34 = v28 * v33;
  v35 = v30 * v33;
  v36 = v32 * v33;
  v37 = v26 * v33;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v37;
  return result;
}

- (CGRect)convertRootViewRect:(CGRect)rect toPageLayer:(id)layer
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layerCopy = layer;
  [(PDFView *)self mainScreenScale];
  v11 = x / v10;
  v12 = y / v10;
  v13 = width / v10;
  v14 = height / v10;
  layer = [(PDFView *)self layer];
  [layer convertRect:0 fromLayer:{v11, v12, v13, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  layer2 = [(PDFView *)self layer];
  [layer2 bounds];
  v26 = v25 - v23 - v19;

  layer3 = [(PDFView *)self layer];
  [layerCopy convertRect:layer3 fromLayer:{v17, v26, v21, v23}];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  if ([(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView])
  {
    extensionViewZoomScale = self->_private->extensionViewZoomScale;
    v33 = v33 / extensionViewZoomScale;
    v35 = v35 / extensionViewZoomScale;
  }

  v37 = v29;
  v38 = v31;
  v39 = v33;
  v40 = v35;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (CGRect)extendedRootViewBounds
{
  [(PDFView *)self rootViewBounds];

  return PDFRectInset(*&v2, v4 * -0.1, v5 * -0.1);
}

- (CGRect)mainScreenBounds
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)mainScreenScale
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  return v4;
}

- (id)pageOverlayViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_pageOverlayViewProvider);

  return WeakRetained;
}

- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  sub_1C1D6C4BC();
  sub_1C1D6C4AC();
  sub_1C1D6C49C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  collectorCopy = collector;
  selfCopy = self;
  PDFView._intelligenceCollectContent(in:collector:)(collectorCopy, x, y, width, height);
}

@end