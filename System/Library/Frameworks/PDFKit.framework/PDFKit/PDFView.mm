@interface PDFView
- (BOOL)_shouldHandleAnnotationAtLocation:(CGPoint)a3 forGestureType:(unint64_t)a4;
- (BOOL)acceptSingleTouch:(id)a3;
- (BOOL)akAnnotationEditingEnabled;
- (BOOL)allowsMarkupAnnotationEditing;
- (BOOL)canGoBack;
- (BOOL)canGoForward;
- (BOOL)canGoToNextPage;
- (BOOL)canGoToPreviousPage;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canZoomIn;
- (BOOL)canZoomOut;
- (BOOL)focusOnColumnAtPoint:(CGPoint)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isAnnotationEditingEnabled;
- (BOOL)isOverLinkAnnotation:(CGPoint)a3;
- (BOOL)isRectVisible:(CGRect)a3 onPage:(id)a4;
- (BOOL)userDidEnterPassword:(id)a3 forPasswordViewController:(id)a4;
- (CGAffineTransform)_transformFromPageToPageView:(SEL)a3;
- (CGAffineTransform)_transformFromPageViewToPage:(SEL)a3;
- (CGFloat)maxScaleFactor;
- (CGFloat)minScaleFactor;
- (CGFloat)scaleFactor;
- (CGFloat)scaleFactorForSizeToFit;
- (CGPoint)_scrollOriginForPageTopLeft:(id)a3;
- (CGPoint)centerPointOfVisibleRectOfPage:(id)a3;
- (CGPoint)convertPoint:(CGPoint)point fromPage:(PDFPage *)page;
- (CGPoint)convertPoint:(CGPoint)point toPage:(PDFPage *)page;
- (CGRect)convertRect:(CGRect)rect fromPage:(PDFPage *)page;
- (CGRect)convertRect:(CGRect)rect toPage:(PDFPage *)page;
- (CGRect)convertRectToRootView:(CGRect)a3 fromPageLayer:(id)a4;
- (CGRect)convertRootViewRect:(CGRect)a3 toPageLayer:(id)a4;
- (CGRect)extendedRootViewBounds;
- (CGRect)extensionViewBoundsInDocument;
- (CGRect)mainScreenBounds;
- (CGRect)normalizedPageBounds:(id)a3;
- (CGRect)rootViewBounds;
- (CGRect)visibleRectForPageView:(id)a3;
- (CGSize)pageViewSizeForPage:(id)a3;
- (CGSize)pdfDocumentViewSize;
- (CGSize)rowSizeForPage:(PDFPage *)page;
- (NSArray)visiblePages;
- (PDFAreaOfInterest)areaOfInterestForPoint:(CGPoint)cursorLocation;
- (PDFDestination)currentDestination;
- (PDFPage)currentPage;
- (PDFPage)pageForPoint:(CGPoint)point nearest:(BOOL)nearest;
- (PDFView)initWithCoder:(id)a3;
- (PDFView)initWithFrame:(CGRect)a3;
- (UIColor)backgroundColor;
- (UIEdgeInsets)documentMargins;
- (UIEdgeInsets)pageBreakMargins;
- (double)PDFViewWillChangeScaleFactor:(id)a3 toScale:(double)a4;
- (double)_pageViewHeight:(id)a3;
- (double)_unboundAutoScaleFactorForPage:(id)a3;
- (double)_unboundAutoScaleFactorForPageWithSize:(CGSize)a3;
- (double)autoScaleFactor;
- (double)autoScaleFactorForPage:(id)a3;
- (double)autoScaleFactorForPageWithSize:(CGSize)a3;
- (double)mainScreenScale;
- (id)_dragItemsAtLocationInView:(CGPoint)a3;
- (id)_getDocumentAKController;
- (id)akRedoToolbarItem;
- (id)akToolbarView;
- (id)akToolbarViewItemTintColor;
- (id)akToolbarViewTintColor;
- (id)akUndoToolbarItem;
- (id)delegate;
- (id)determineCurrentPage;
- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)findInteraction:(id)a3 sessionForView:(id)a4;
- (id)hitTestForSubviewsOfView:(id)a3 atLocation:(CGPoint)a4 withEvent:(id)a5;
- (id)nextPage;
- (id)pageOverlayViewProvider;
- (id)pageViewForPageAtIndex:(unint64_t)a3;
- (id)parentViewController;
- (id)pointerRegionForLocation:(CGPoint)a3;
- (id)previousPage;
- (id)viewForPage:(id)a3;
- (id)visibleAnnotations;
- (id)visiblePageViews;
- (unint64_t)lastPageIndex;
- (unint64_t)scrollViewMinimumNumberOfTouches;
- (unint64_t)typeForGestureRecognizer:(id)a3;
- (void)PDFViewWillClickOnLink:(id)a3 withURL:(id)a4;
- (void)_commonInit;
- (void)_ensureOverlayViewController;
- (void)_findVisiblePages;
- (void)_goToPage:(id)a3 animated:(BOOL)a4 withBackgroundUpdate:(BOOL)a5;
- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4;
- (void)_internalSetAutoScaleFactor;
- (void)_internalSetScaleFactor:(double)a3;
- (void)_lookup:(id)a3;
- (void)_reflectNewPageOn;
- (void)_releaseDocument;
- (void)_releaseDocumentViewController;
- (void)_releaseScrollView;
- (void)_removePasswordView;
- (void)_resizeDisplayView:(id)a3;
- (void)_scrollByPage:(BOOL)a3;
- (void)_scrollHorizontalBy:(double)a3;
- (void)_scrollVerticalBy:(double)a3;
- (void)_setupDocumentViewController;
- (void)_setupPasswordView;
- (void)_setupScrollView;
- (void)_showFormFillingButton:(BOOL)a3;
- (void)_syncPageIndexToScrollView;
- (void)_tileRefresh;
- (void)_updateAnnotations;
- (void)_updateBookmarksForPages;
- (void)_updateCurrentPageUsingViewCenter;
- (void)_updatePasswordView;
- (void)addGestureRecognizer:(id)a3;
- (void)annotationsChangedOnPage:(PDFPage *)page;
- (void)beginPDFViewRotation;
- (void)callPageVisibilityDelegateMethod:(int)a3 forPageView:(id)a4 atPageIndex:(unint64_t)a5;
- (void)callPageVisibilityDelegateMethodForOverlayAdaptorOnly:(int)a3 forPageView:(id)a4 atPageIndex:(unint64_t)a5;
- (void)clearSelection;
- (void)colorWidgetBackgrounds:(BOOL)a3;
- (void)constrainedScrollToPoint:(CGPoint)a3;
- (void)copy:(id)sender;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)documentWasUnlocked;
- (void)drawDetectedAnnotationBounds:(BOOL)a3;
- (void)drawPage:(PDFPage *)page toContext:(CGContextRef)context;
- (void)enableBackgroundImages:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)endPDFViewRotation;
- (void)forceTileRefresh;
- (void)gestureInit;
- (void)goBack:(id)sender;
- (void)goForward:(id)sender;
- (void)goToDestination:(PDFDestination *)destination;
- (void)goToDestinationNoPush:(id)a3;
- (void)goToFirstPage:(id)sender;
- (void)goToLastPage:(id)sender;
- (void)goToNextPage:(id)sender;
- (void)goToPageNoPush:(id)a3 animated:(BOOL)a4;
- (void)goToPreviousPage:(id)sender;
- (void)goToRect:(CGRect)rect onPage:(PDFPage *)page;
- (void)goToSelection:(PDFSelection *)selection;
- (void)handleAnalysisCompletionOfPage:(id)a3 resultTypes:(unint64_t)a4;
- (void)handleGesture:(unint64_t)a3 state:(int64_t)a4 location:(CGPoint)a5 locationOfFirstTouch:(CGPoint)a6 isIndirectTouch:(BOOL)a7;
- (void)highlightDetectedFormFields:(BOOL)a3;
- (void)highlightPDFRedactions:(BOOL)a3;
- (void)insertFormFieldAtBestLocationNearPoint:(CGPoint)a3 onPage:(id)a4;
- (void)insertFormFieldAtDefaultLocation;
- (void)insertFormFieldWithBounds:(CGRect)a3 onPage:(id)a4;
- (void)internalForceAnnotationRefresh;
- (void)internalForceTileRefresh;
- (void)layoutDocumentView;
- (void)layoutSubviews;
- (void)pageViewControllerSaysPageChanged:(id)a3;
- (void)performAction:(PDFAction *)action;
- (void)performOverlayAdaptorPageVisibilityTrueUpAfterSettingDocument;
- (void)positionInternalViews:(id)a3;
- (void)printActivePageText;
- (void)pushDestination:(id)a3;
- (void)removeFromSuperview;
- (void)scrollSelectionToVisible:(id)sender;
- (void)scrollViewSaysPageMayHaveChanged:(id)a3;
- (void)selectAll:(id)sender;
- (void)setAkAnnotationEditingEnabled:(BOOL)a3;
- (void)setAkToolbarViewItemTintColor:(id)a3;
- (void)setAkToolbarViewTintColor:(id)a3;
- (void)setAutoScales:(BOOL)autoScales;
- (void)setBackgroundColor:(UIColor *)backgroundColor;
- (void)setBackgroundImage:(id)a3 forPage:(id)a4;
- (void)setBounds:(CGRect)a3;
- (void)setCurrentPageIndex:(unint64_t)a3 withNotification:(BOOL)a4;
- (void)setCurrentSelection:(PDFSelection *)selection animate:(BOOL)animate;
- (void)setCurrentSelection:(id)a3 updateTextInput:(BOOL)a4;
- (void)setDelegate:(id)delegate;
- (void)setDisplayBox:(PDFDisplayBox)displayBox;
- (void)setDisplayDirection:(PDFDisplayDirection)displayDirection;
- (void)setDisplayMode:(PDFDisplayMode)displayMode;
- (void)setDisplaysAsBook:(BOOL)displaysAsBook;
- (void)setDisplaysBookmarksForPages:(BOOL)a3;
- (void)setDisplaysPageBreaks:(BOOL)displaysPageBreaks;
- (void)setDisplaysRTL:(BOOL)displaysRTL;
- (void)setDocument:(id)a3 waitDuration:(double)a4;
- (void)setDocument:(id)a3 withInitialPageIndex:(unint64_t)a4;
- (void)setEnableTileUpdates:(BOOL)a3;
- (void)setFindInteractionEnabled:(BOOL)findInteractionEnabled;
- (void)setForcesTopAlignment:(BOOL)a3;
- (void)setFormDetectionEnabled:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setGutterWidth:(double)a3;
- (void)setHighlightedSelections:(NSArray *)highlightedSelections;
- (void)setInFormFillingMode:(BOOL)a3;
- (void)setMaxScaleFactor:(CGFloat)maxScaleFactor;
- (void)setMinScaleFactor:(CGFloat)minScaleFactor;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)setNewPageVisibilityDelegate:(id)a3 withOldDelegate:(id)a4;
- (void)setPageBreakMargins:(UIEdgeInsets)pageBreakMargins;
- (void)setPageOverlayViewProvider:(id)pageOverlayViewProvider;
- (void)setScaleFactor:(CGFloat)scaleFactor;
- (void)setScaleFactor:(double)a3 anchorPoint:(CGPoint)a4;
- (void)setScrollViewScrollEnabled:(BOOL)a3;
- (void)setShowsScrollIndicators:(BOOL)a3;
- (void)signaturesController:(id)a3 didSelectSignatureWithAnnotation:(id)a4;
- (void)syncPageIndexToScrollView;
- (void)takePasswordFrom:(id)sender;
- (void)updatePDFViewLayout:(CGRect)a3 scrollViewFrame:(CGRect)a4 zoomScale:(double)a5;
- (void)usePageViewController:(BOOL)enable withViewOptions:(NSDictionary *)viewOptions;
- (void)visiblePagesChanged:(id)a3;
- (void)zoomIn:(id)sender;
- (void)zoomOut:(id)sender;
@end

@implementation PDFView

- (void)setDocument:(id)a3 withInitialPageIndex:(unint64_t)a4
{
  v9 = a3;
  self->_private->wantsForceUpdate = 0;
  self->_private->blockingWaitDuration = 0.0;
  v6 = self->_private;
  if (v6->isUsingPageViewController)
  {
    [(PDFDocumentViewController *)v6->documentViewController willForceUpdate];
    v7 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
    [v7 willForceUpdate];
  }

  [(PDFView *)self setDocument:v9 waitDuration:0.0];
  v8 = [v9 pageAtIndex:a4];
  [(PDFView *)self goToPage:v8];
}

- (void)setDocument:(id)a3 waitDuration:(double)a4
{
  v7 = a3;
  v8 = v7;
  v9 = self->_private;
  if (v9->document == v7)
  {
    goto LABEL_30;
  }

  v27 = v7;
  [(PDFTimer *)v9->pageSyncTimer cancel];
  [(PDFOverlayViewsController *)self->_overlayViewController pdfView:self willSetDocument:v27];
  v10 = [(PDFDocument *)self->_private->document akDocumentAdaptor];
  [v10 setPdfView:0];

  objc_storeStrong(&self->_private->document, a3);
  [(PDFDocument *)self->_private->document setRenderingProperties:self->_private->renderingProperties];
  [(PDFViewLayout *)self->_private->viewLayout setDocument:v27];
  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 postNotificationName:@"PDFViewChangedDocument" object:self];

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
    v7 = [(PDFOverlayViewsController *)self->_overlayViewController pdfView:self didSetDocument:0];
LABEL_29:
    v8 = v27;
    goto LABEL_30;
  }

  if (GetDefaultsWriteAKEnabled())
  {
    v17 = [(PDFView *)self undoManager];
    v18 = [v17 isUndoRegistrationEnabled];
    if (v18)
    {
      [v17 disableUndoRegistration];
    }

    [(PDFView *)self _ensureOverlayViewController];
    [v27 setupAKDocumentAdaptorIfNecessaryWithView:self];
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  if ([v27 isLocked])
  {
    if (![(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView])
    {
      v19 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];

      if (v19)
      {
        [(PDFScrollView *)self->_private->scrollView setDocument:0];
      }

      [(PDFView *)self _setupPasswordView];
    }

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:self selector:sel_documentWasUnlocked name:@"PDFDocumentDidUnlock" object:self->_private->document];
    goto LABEL_24;
  }

  [(PDFView *)self _removePasswordView];
  v21 = [MEMORY[0x1E696AD88] defaultCenter];
  [v21 removeObserver:self name:@"PDFDocumentDidUnlock" object:v27];

  [(PDFScrollView *)self->_private->scrollView setDocument:v27];
  v22 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
  v23 = [v22 pageBackgroundManager];
  objc_storeWeak(&self->_pageBackgroundManager, v23);

  WeakRetained = objc_loadWeakRetained(&self->_private->delegate);
  [(PDFView *)self setNewPageVisibilityDelegate:WeakRetained withOldDelegate:0];

  if (a4 <= 0.0)
  {
    [(PDFView *)self layoutDocumentView];
  }

  else
  {
    self->_private->wantsForceUpdate = 1;
    self->_private->blockingWaitDuration = a4;
    v25 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
    [v25 willForceUpdate];

    v26 = [v27 pageAtIndex:0];
    [(PDFView *)self goToPage:v26];
  }

  [(PDFView *)self setAutoScales:[(PDFView *)self autoScales]];
  if ([(PDFDocument *)self->_private->document pageCount])
  {
    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 postNotificationName:@"PDFViewChangedPage" object:self];
LABEL_24:
  }

  if (v18)
  {
    [v17 enableUndoRegistration];
  }

  [v27 setRenderingProperties:self->_private->renderingProperties];

  [(PDFOverlayViewsController *)self->_overlayViewController pdfView:self didSetDocument:v27];
  v7 = [v27 isLocked];
  v8 = v27;
  if ((v7 & 1) == 0)
  {
    v7 = [(PDFView *)self performOverlayAdaptorPageVisibilityTrueUpAfterSettingDocument];
    goto LABEL_29;
  }

LABEL_30:

  MEMORY[0x1EEE66BB8](v7, v8);
}

- (void)_releaseDocument
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"PDFDocumentDidUnlock" object:self->_private->document];

  [(PDFViewLayout *)self->_private->viewLayout setDocument:0];
  [(PDFScrollView *)self->_private->scrollView setDocument:0];
  v4 = [(PDFDocument *)self->_private->document akDocumentAdaptor];
  [v4 setPdfView:0];

  v5 = self->_private;
  document = v5->document;
  v5->document = 0;
}

- (void)goToFirstPage:(id)sender
{
  if ([(PDFView *)self canGoToFirstPage])
  {
    v4 = [(PDFView *)self currentDestination];
    [(PDFView *)self pushDestination:v4];

    v6 = [(PDFView *)self document];
    v5 = [v6 pageAtIndex:0];
    [(PDFView *)self goToPageNoPush:v5];
  }
}

- (void)goToLastPage:(id)sender
{
  if ([(PDFView *)self canGoToLastPage])
  {
    v4 = [(PDFView *)self currentDestination];
    [(PDFView *)self pushDestination:v4];

    v5 = [(PDFView *)self document];
    v7 = [v5 pageAtIndex:{-[PDFView lastPageIndex](self, "lastPageIndex")}];

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
  v3 = [(PDFView *)self document];

  if (!v3)
  {
    return 0;
  }

  v4 = [(PDFView *)self PDFLayout];
  v5 = [v4 functionalDisplayMode];

  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v6 = [(PDFView *)self lastPageIndex];
    currentPageIndex = self->_currentPageIndex + (([(PDFView *)self displaysAsBook]^ v6) & 1);
  }

  else
  {
    currentPageIndex = self->_currentPageIndex;
  }

  return currentPageIndex < [(PDFView *)self lastPageIndex];
}

- (void)goToNextPage:(id)sender
{
  v4 = [(PDFView *)self nextPage];
  if (v4)
  {
    v6 = v4;
    v5 = [(PDFView *)self currentDestination];
    [(PDFView *)self pushDestination:v5];

    [(PDFView *)self goToPageNoPush:v6];
    v4 = v6;
  }
}

- (BOOL)canGoToPreviousPage
{
  v3 = [(PDFView *)self document];

  if (!v3)
  {
    return 0;
  }

  v4 = [(PDFView *)self PDFLayout];
  v5 = [v4 functionalDisplayMode];

  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v6 = [(PDFView *)self displaysAsBook];
    currentPageIndex = self->_currentPageIndex;
    if (!v6)
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
  v4 = [(PDFView *)self previousPage];
  if (v4)
  {
    v6 = v4;
    v5 = [(PDFView *)self currentDestination];
    [(PDFView *)self pushDestination:v5];

    [(PDFView *)self goToPageNoPush:v6];
    v4 = v6;
  }
}

- (BOOL)canGoBack
{
  v3 = [(PDFView *)self document];

  return v3 && self->_private->historyIndex > 0;
}

- (void)goBack:(id)sender
{
  if ([(PDFView *)self canGoBack])
  {
    v4 = self->_private;
    historyIndex = v4->historyIndex;
    if (historyIndex >= [(NSMutableArray *)v4->destinationHistory count])
    {
      v6 = [(PDFView *)self currentDestination];
      [(PDFView *)self pushDestination:v6];

      self->_private->historyIndex = [(NSMutableArray *)self->_private->destinationHistory count]- 1;
    }

    v7 = [(NSMutableArray *)self->_private->destinationHistory objectAtIndex:--self->_private->historyIndex];
    [(PDFView *)self goToDestinationNoPush:v7];

    v9 = [MEMORY[0x1E696AD90] defaultQueue];
    v8 = [MEMORY[0x1E696AD80] notificationWithName:@"PDFViewChangedHistory" object:self];
    [v9 enqueueNotification:v8 postingStyle:1];
  }
}

- (BOOL)canGoForward
{
  v3 = [(PDFView *)self document];

  if (!v3)
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

    v6 = [MEMORY[0x1E696AD90] defaultQueue];
    v5 = [MEMORY[0x1E696AD80] notificationWithName:@"PDFViewChangedHistory" object:self];
    [v6 enqueueNotification:v5 postingStyle:1];
  }
}

- (PDFPage)currentPage
{
  v3 = [(PDFDocument *)self->_private->document pageCount];
  if (v3)
  {
    v3 = [(PDFDocument *)self->_private->document pageAtIndex:self->_currentPageIndex];
  }

  return v3;
}

- (void)setCurrentPageIndex:(unint64_t)a3 withNotification:(BOOL)a4
{
  if (self->_currentPageIndex != a3)
  {
    v4 = a4;
    self->_currentPageIndex = a3;
    WeakRetained = objc_loadWeakRetained(&self->_pageBackgroundManager);
    [WeakRetained updateActivePageIndex:self->_currentPageIndex];

    if (self->_private->pagePreloadQueue)
    {
      v7 = [(PDFView *)self document];
      [v7 preloadDataOfPagesInRange:self->_currentPageIndex + 1 onQueue:3 completion:{self->_private->pagePreloadQueue, 0}];
    }

    v9 = [(PDFView *)self _getDocumentAKController];
    [v9 setCurrentPageIndex:self->_currentPageIndex];
    if (v4)
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 postNotificationName:@"PDFViewChangedPage" object:self];
    }
  }
}

- (void)_goToPage:(id)a3 animated:(BOOL)a4 withBackgroundUpdate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  if (v9)
  {
    v22 = v9;
    v10 = [(PDFView *)self PDFLayout];
    v11 = [v10 functionalDisplayMode];

    if (v5 && ((v11 & 1) == 0 || self->_private->wantsForceUpdate))
    {
      v12 = [v22 document];
      v13 = [v12 indexForPage:v22];

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
        v17 = [(PDFScrollView *)v16->scrollView pdfDocumentView];
        [v17 forceUpdateActivePageIndex:v13 withMaxDuration:self->_private->blockingWaitDuration];
      }
    }

    v18 = [(PDFView *)self currentPage];

    v9 = v22;
    if (v18 == v22)
    {
      if (!self->_private->scrollView)
      {
        goto LABEL_13;
      }

      [(PDFView *)self _reflectNewPageOn];
    }

    else
    {
      v19 = [(PDFView *)self currentDestination];
      [(PDFView *)self pushDestination:v19];

      objc_storeStrong(&self->_private->toPage, a3);
      [(PDFView *)self goToPageNoPush:v22 animated:v6];
      v20 = self->_private;
      toPage = v20->toPage;
      v20->toPage = 0;
    }

    v9 = v22;
  }

LABEL_13:
}

- (PDFDestination)currentDestination
{
  v3 = [(PDFView *)self document];

  if (v3)
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
    v5 = [(PDFDestination *)v4 page];

    v4 = v7;
    if (v5)
    {
      v6 = [(PDFView *)self currentDestination];
      [(PDFView *)self pushDestination:v6];

      [(PDFView *)self goToDestinationNoPush:v7];
      v4 = v7;
    }
  }
}

- (void)goToSelection:(PDFSelection *)selection
{
  v4 = selection;
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    v4 = [(PDFSelection *)v4 isEmpty];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [(PDFSelection *)v8 pages];
      v7 = [v6 objectAtIndex:0];

      [(PDFSelection *)v8 boundsForPage:v7];
      [(PDFView *)self goToRect:v7 onPage:?];

      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
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
    v11 = [(PDFPage *)v17 rotation];
    if (v11 > 179)
    {
      if (v11 == 180)
      {
        MaxX = PDFRectGetMaxX(x, y, width);
        goto LABEL_11;
      }

      if (v11 != 270)
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
      if (v11)
      {
        if (v11 == 90)
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
  v5 = [(PDFView *)self currentPage];
  if (displayMode < 4)
  {
    v6 = self->_private;
    if (v6->displayMode == displayMode)
    {
      goto LABEL_8;
    }

    v8 = v5;
    v6->displayMode = displayMode;
    [(PDFView *)self layoutDocumentView];
    [(PDFScrollView *)self->_private->scrollView updateLayout];
    if (displayMode)
    {
      [(PDFView *)self goToPageNoPush:v8];
    }

    [(PDFScrollView *)self->_private->scrollView setBounces:1];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"PDFViewDisplayModeChanged" object:self];
  }

  else
  {
    v8 = v5;
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"setDisplayMode: %ld out of bounds", displayMode}];
  }

  v5 = v8;
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

- (void)setInFormFillingMode:(BOOL)a3
{
  v3 = self->_private;
  if (v3->inFormFillingMode != a3)
  {
    v4 = a3;
    v3->inFormFillingMode = a3;
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __32__PDFView_setInFormFillingMode___block_invoke;
    aBlock[3] = &unk_1E81525C8;
    objc_copyWeak(&v13, &location);
    v14 = v4;
    v6 = _Block_copy(aBlock);
    [(PDFView *)self _showFormFillingButton:v4];
    v7 = [(PDFView *)self document];
    v8 = [v7 akController];

    if (objc_opt_respondsToSelector())
    {
      [v8 setFormFillingEnabled:v4];
    }

    controller = self->_private->controller;
    if (v4)
    {
      v10 = [(PDFViewController *)controller activeAnnotation];
      v11 = [v10 isFormField];

      if ((v11 & 1) == 0)
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
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"PDFViewDisplayBoxChanged" object:self];
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
  v2 = [(PDFView *)&v4 backgroundColor];

  return v2;
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
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel_scrollViewSaysPageMayHaveChanged_ name:@"PDFScrollViewPageMayHaveChangedNotification" object:self->_private->scrollView];

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
  v20 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(PDFView *)self setBackgroundColor:v20];

  [(PDFScrollView *)self->_private->scrollView setDocument:self->_private->document];
  [(PDFView *)self addSubview:self->_private->scrollView];
  v21 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
  v22 = [v21 pageBackgroundManager];
  objc_storeWeak(&self->_pageBackgroundManager, v22);

  [(PDFView *)self _updatePasswordView];
}

- (void)_releaseScrollView
{
  [(PDFScrollView *)self->_private->scrollView removeFromSuperview];
  [(PDFScrollView *)self->_private->scrollView setDocument:0];
  v3 = self->_private;
  scrollView = v3->scrollView;
  v3->scrollView = 0;

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:@"PDFScrollViewPageMayHaveChangedNotification" object:self->_private->scrollView];

  v6 = MEMORY[0x1E69E58C0];

  [v6 cancelPreviousPerformRequestsWithTarget:self selector:sel_syncPageIndexToScrollView object:0];
}

- (void)_setupDocumentViewController
{
  [(PDFScrollView *)self->_private->scrollView minimumZoomScale];
  v4 = v3;
  [(PDFScrollView *)self->_private->scrollView maximumZoomScale];
  v6 = v5;
  v7 = [(PDFView *)self displayDirection];
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

    v9 = [[PDFDocumentViewController alloc] initWithPDFView:self pageIndex:self->_currentPageIndex navigationOrientation:v7 == kPDFDisplayDirectionVertical withRenderingProperties:self->_private->renderingProperties andOptions:self->_private->pageViewControllerOptions];
    v10 = self->_private;
    v11 = v10->documentViewController;
    v10->documentViewController = v9;

    v12 = [(PDFDocumentViewController *)self->_private->documentViewController view];
    [(PDFView *)self addSubview:v12];

    [(PDFView *)self bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(PDFDocumentViewController *)self->_private->documentViewController view];
    [v21 setFrame:{v14, v16, v18, v20}];

    WeakRetained = objc_loadWeakRetained(&self->_private->delegate);
    [(PDFView *)self setNewPageVisibilityDelegate:WeakRetained withOldDelegate:0];

    v23 = self->_private;
    autoScale = v23->autoScale;
    [(PDFDocumentViewController *)v23->documentViewController setMinScaleFactor:v4 withMaxScaleFactor:v6];
    [(PDFView *)self setAutoScales:autoScale];
    [(PDFDocumentViewController *)self->_private->documentViewController setDisplaysRTL:self->_private->displaysRTL];
    [(PDFDocumentViewController *)self->_private->documentViewController updateScrollViews];
    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    [v25 addObserver:self selector:sel_pageViewControllerSaysPageChanged_ name:@"PDFDocumentViewControllerChangedPage" object:self];

    documentViewController = self->_private->documentViewController;
  }

  v26 = [(PDFDocumentViewController *)documentViewController pageBackgroundManager];
  objc_storeWeak(&self->_pageBackgroundManager, v26);

  [(PDFView *)self _updatePasswordView];
}

- (void)_releaseDocumentViewController
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"PDFDocumentViewControllerChangedPage" object:self];

  documentViewController = self->_private->documentViewController;
  v5 = objc_alloc_init(PDFPageViewController);
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(PDFDocumentViewController *)documentViewController setViewControllers:v6 direction:0 animated:0 completion:0];

  v7 = [(PDFDocumentViewController *)self->_private->documentViewController view];
  [v7 removeFromSuperview];

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
    v6 = [(PDFRenderingProperties *)v2->renderingProperties isUsingPDFExtensionView];
    v7 = self->_private;
    if (v6)
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
  v4 = [(PDFView *)self document];
  v5 = [v4 isLocked];

  if ((v5 & 1) == 0)
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
  v4 = [(PDFView *)self document];
  v5 = [v4 isLocked];

  if ((v5 & 1) == 0)
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
    v7 = [(PDFView *)self currentPage];
    [(PDFView *)self _unboundAutoScaleFactorForPage:v7];
    v9 = v8;

    return v9;
  }

  return result;
}

- (PDFAreaOfInterest)areaOfInterestForPoint:(CGPoint)cursorLocation
{
  y = cursorLocation.y;
  x = cursorLocation.x;
  v6 = [(PDFView *)self document];
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
    v26 = [(PDFView *)self controller];
    if (v26 && (v27 = v26, -[PDFView controller](self, "controller"), v28 = objc_claimAutoreleasedReturnValue(), [v28 tableCellSelection], v29 = objc_claimAutoreleasedReturnValue(), v29, v28, v27, v29))
    {
      v30 = [(PDFView *)self controller];
      v31 = [v30 tableCellSelection];

      [v31 table];
      v32 = CGPDFPageLayoutTableCopyCellAtPoint();
      if ([v31 isPointInHandle:0 whichHandle:{v9, v11}])
      {
        v14 = v21 | 0x400;

        goto LABEL_47;
      }

      if (v32 && (Index = CGPDFPageLayoutTableCellGetIndex(), Index == [v31 startCellIndex]))
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
    v6 = [(PDFAction *)v4 type];
    v7 = [(PDFView *)self delegate];
    if ([v6 isEqualToString:@"GoTo"])
    {
      v8 = [(PDFAction *)v5 destination];
      [(PDFView *)self goToDestination:v8];
      goto LABEL_4;
    }

    if ([v6 isEqualToString:@"GoToR"])
    {
      if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v7 PDFViewOpenPDF:self forRemoteGoToAction:v5];
        goto LABEL_47;
      }
    }

    else
    {
      if (![v6 isEqualToString:@"Named"])
      {
        if ([v6 isEqualToString:@"ResetForm"])
        {
          v10 = [(PDFView *)self document];
          if (v10)
          {
            v11 = v10;
            [v10 resetFormFields:v5];
          }

          goto LABEL_47;
        }

        if (([v6 isEqualToString:@"URI"] & 1) == 0 && !objc_msgSend(v6, "isEqualToString:", @"Launch"))
        {
LABEL_47:

          goto LABEL_48;
        }

        v8 = v5;
        v12 = [(PDFAction *)v8 URL];
        v13 = v12;
        if (v12 && (PDFURLLooksSuspicious(v12) & 1) == 0)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __25__PDFView_performAction___block_invoke;
          aBlock[3] = &unk_1E8151480;
          v13 = v13;
          v32 = v13;
          v33 = v7;
          v34 = self;
          v14 = _Block_copy(aBlock);
          if ([(PDFAction *)v8 isSuspiciousURL])
          {
            v15 = MEMORY[0x1E696AEC0];
            v16 = PDFKitLocalizedString(@"Opening the clicked link may send encrypted document content to the server \\U201C%@\\U201D.");
            v17 = [v13 host];
            v28 = [v15 stringWithFormat:v16, v17];

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
            v24 = [(PDFView *)self parentViewController];
            [v24 presentViewController:v20 animated:1 completion:0];
          }

          else
          {
            v14[2](v14);
          }
        }

LABEL_4:
        goto LABEL_47;
      }

      v9 = [(PDFAction *)v5 name];
      if (v9 <= 5)
      {
        if (v9 <= 2)
        {
          if (v9 == 1)
          {
            [(PDFView *)self goToNextPage:self];
          }

          else if (v9 == 2)
          {
            [(PDFView *)self goToPreviousPage:self];
          }
        }

        else if (v9 == 3)
        {
          [(PDFView *)self goToFirstPage:self];
        }

        else if (v9 == 4)
        {
          [(PDFView *)self goToLastPage:self];
        }

        else
        {
          [(PDFView *)self goBack:self];
        }

        goto LABEL_47;
      }

      if (v9 <= 7)
      {
        if (v9 == 6)
        {
          [(PDFView *)self goForward:self];
          goto LABEL_47;
        }

        if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v7 PDFViewPerformGoToPage:self];
          goto LABEL_47;
        }
      }

      else
      {
        switch(v9)
        {
          case 8:
            if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [v7 PDFViewPerformFind:self];
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

- (void)setCurrentSelection:(id)a3 updateTextInput:(BOOL)a4
{
  v4 = a4;
  v54[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (v7 && ![v7 isEmpty])
  {
    goto LABEL_9;
  }

  v9 = self->_private;
  currentSelection = v9->currentSelection;
  if (currentSelection)
  {
    v9->currentSelection = 0;

    if (v4)
    {
      v11 = self->_private;
      if (v11->isUsingPageViewController)
      {
        [(PDFDocumentViewController *)v11->documentViewController setSelection:0];
        v11 = self->_private;
      }

      v12 = [(PDFScrollView *)v11->scrollView pdfDocumentView];
      [v12 setSelection:0];
    }
  }

  if (v8)
  {
LABEL_9:
    if (([v8 isEmpty] & 1) == 0)
    {
      objc_storeStrong(&self->_private->currentSelection, a3);
      if (self->_private->isUsingPageViewController)
      {
        v13 = [(PDFView *)self currentPage];
        v14 = [v8 pdfKitIndexOfFirstCharacterOnPage:v13];
        v15 = [v8 pdfKitIndexOfLastCharacterOnPage:v13];
        if (v14 != 0x7FFFFFFFFFFFFFFFLL && v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = [v13 selectionForRange:{v14, v15 - v14 + 1}];
          v17 = self->_private;
          v18 = v17->currentSelection;
          v17->currentSelection = v16;

          v19 = self->_private->currentSelection;
          v20 = [v8 color];
          [(PDFSelection *)v19 setColor:v20];

          if (v4)
          {
            [(PDFDocumentViewController *)self->_private->documentViewController setSelection:self->_private->currentSelection];
          }
        }
      }

      if (v4)
      {
        v21 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
        [v21 setSelection:self->_private->currentSelection];
      }
    }
  }

  v22 = self->_private->currentSelection;
  if (v22)
  {
    v23 = [(PDFSelection *)v22 pages];
    v24 = [v23 count];

    if (v24)
    {
      v25 = [(PDFSelection *)self->_private->currentSelection firstPage];
      [(PDFSelection *)self->_private->currentSelection firstSpanBoundsForPage:v25];
      [(PDFView *)self convertPoint:v25 fromPage:PDFPointMake(v28, v26 + v27)];
      v30 = v29;
      v32 = v31;
      v33 = [(PDFSelection *)self->_private->currentSelection lastPage];

      v50 = v33;
      [(PDFSelection *)self->_private->currentSelection lastSpanBoundsForPage:v33];
      [(PDFView *)self convertPoint:v33 fromPage:PDFPointMake(v34 + v35, v36)];
      v38 = v37;
      v40 = v39;
      v41 = [MEMORY[0x1E696AD88] defaultCenter];
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
      [v41 postNotificationName:@"PDFTextSelectionDidChangeTextSelectionPoints" object:self userInfo:v48];
    }
  }

  v49 = [MEMORY[0x1E696AD88] defaultCenter];
  [v49 postNotificationName:@"PDFViewSelectionChanged" object:self];
}

- (void)setCurrentSelection:(PDFSelection *)selection animate:(BOOL)animate
{
  v4 = animate;
  v10 = [(PDFSelection *)selection copy];
  [v10 setIsTextSelection];
  v6 = [(PDFView *)self setCurrentSelection:v10];
  v7 = v10;
  if (v10)
  {
    if (v4)
    {
      v6 = [v10 isEmpty];
      v7 = v10;
      if ((v6 & 1) == 0)
      {
        v8 = [v10 pages];
        v9 = [v8 firstObject];

        [v10 boundsForPage:v9];
        [(PDFCoachMarkManager *)self->_private->coachMarkManager createCoachMarkForPage:v9 atFrame:?];

        v7 = v10;
      }
    }
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)clearSelection
{
  v3 = self->_private;
  currentSelection = v3->currentSelection;
  v3->currentSelection = 0;

  v5 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
  [v5 setSelection:self->_private->currentSelection];

  v6 = self->_private;
  if (v6->isUsingPageViewController)
  {
    [(PDFDocumentViewController *)v6->documentViewController setSelection:v6->currentSelection];
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"PDFViewSelectionChanged" object:self];
}

- (void)selectAll:(id)sender
{
  if (self->_private->isUsingPageViewController)
  {
    v4 = [(PDFView *)self currentPage];
    [v4 selectionForAll];
  }

  else
  {
    v4 = [(PDFView *)self document];
    [v4 selectionForEntireDocument];
  }
  v5 = ;

  [(PDFView *)self setCurrentSelection:v5];
}

- (void)_lookup:(id)a3
{
  v4 = a3;
  currentSelection = self->_private->currentSelection;
  if (currentSelection)
  {
    v30 = v4;
    currentSelection = [(PDFSelection *)currentSelection isEmpty];
    v4 = v30;
    if ((currentSelection & 1) == 0)
    {
      v6 = [(PDFView *)self parentViewController];
      if (v6)
      {
        v7 = [(PDFSelection *)self->_private->currentSelection string];
        v8 = [objc_alloc(DDParsecCollectionViewControllerClass()) initWithString:v7 range:{0, objc_msgSend(v7, "length")}];
        v9 = self->_private->currentSelection;
        v10 = [(PDFSelection *)v9 firstPage];
        [(PDFSelection *)v9 boundsForPage:v10];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v19 = [(PDFSelection *)self->_private->currentSelection firstPage];
        [(PDFView *)self convertRect:v19 fromPage:v12, v14, v16, v18];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v28 = [v8 popoverPresentationController];
        [v28 setSourceView:self];

        v29 = [v8 popoverPresentationController];
        [v29 setSourceRect:{v21, v23, v25, v27}];

        [v6 presentViewController:v8 animated:1 completion:0];
      }

      else
      {
        NSLog(&cfstr_SFailedToFindO.isa, "[PDFView _lookup:]");
      }

      v4 = v30;
    }
  }

  MEMORY[0x1EEE66BB8](currentSelection, v4);
}

- (void)scrollSelectionToVisible:(id)sender
{
  v4 = [(PDFView *)self currentSelection];
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    v4 = [v4 isEmpty];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 pages];
      v7 = [v6 objectAtIndex:0];

      [v8 boundsForPage:v7];
      v11 = PDFRectInset(v10, -4.0, -4.0);
      [(PDFView *)self goToRect:v7 onPage:v11.origin.x, v11.origin.y, v11.size.width, v11.size.height];

      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setHighlightedSelections:(NSArray *)highlightedSelections
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = highlightedSelections;
  if (self->_private->highlights != v5)
  {
    v6 = [(PDFView *)self visiblePageViews];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v39 objects:v45 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v39 + 1) + 8 * i) setSearchSelections:0];
        }

        v8 = [v6 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&self->_private->highlights, highlightedSelections);
    highlights = self->_private->highlights;
    if (highlights)
    {
      v25 = v6;
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
            v14 = [v13 pages];
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v15 = [v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
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
                    objc_enumerationMutation(v14);
                  }

                  v19 = [(PDFDocument *)self->_private->document indexForPage:*(*(&v31 + 1) + 8 * j)];
                  v20 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
                  v21 = [v20 pageViewForPageAtIndex:v19];

                  v22 = self->_private;
                  if (v22->isUsingPageViewController)
                  {
                    v23 = [(PDFDocumentViewController *)v22->documentViewController findPageViewControllerForPageIndex:v19];
                    v24 = [v23 pageView];

                    v21 = v24;
                  }

                  if (v21)
                  {
                    [v21 addSearchSelection:v13];
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
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

      v6 = v25;
      v5 = v26;
    }
  }
}

- (void)takePasswordFrom:(id)sender
{
  v9 = sender;
  v4 = [(PDFView *)self document];
  v5 = objc_opt_respondsToSelector();
  if (v4)
  {
    if (v5)
    {
      if (![v4 allowsPrinting] || (-[PDFView document](self, "document"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "allowsCopying"), v6, (v7 & 1) == 0))
      {
        v8 = [v9 stringValue];
        [v4 unlockWithPassword:v8];
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
  v4 = [(PDFView *)self currentSelection];
  if (v4)
  {
    v5 = [(PDFView *)self document];
    v6 = [v5 allowsCopying];

    if ((v6 & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 postNotificationName:@"PDFViewCopyPermission" object:self];
LABEL_25:

      goto LABEL_26;
    }

    v7 = [v4 string];
    v8 = [v7 precomposedStringWithCanonicalMapping];

    if (v8)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = [v4 pages];
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
              objc_enumerationMutation(v9);
            }

            if ([*(*(&v26 + 1) + 8 * v13) isTextFromOCR])
            {
              v14 = 1;
              goto LABEL_15;
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v14 = 0;
LABEL_15:

      v15 = [MEMORY[0x1E69DCD50] generalPasteboard];
      v16 = [(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView];
      v17 = [MEMORY[0x1E695DF90] dictionary];
      if ((v14 & 1) == 0)
      {
        v18 = [v4 rtfData];
        if (v18)
        {
          v19 = [*MEMORY[0x1E6982F90] identifier];
          [v17 setObject:v18 forKeyedSubscript:v19];
        }

        v20 = [v4 htmlData];
        if (v20)
        {
          v21 = [*MEMORY[0x1E6982E18] identifier];
          [v17 setObject:v20 forKeyedSubscript:v21];
        }
      }

      v22 = [*MEMORY[0x1E6983060] identifier];
      [v17 setObject:v8 forKeyedSubscript:v22];

      if (v16)
      {
        v23 = [MEMORY[0x1E696AD88] defaultCenter];
        v31 = v17;
        v32 = @"items";
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
        v33 = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        [v23 postNotificationName:@"PDFTextSelectionDidCopy" object:self userInfo:v25];
      }

      else
      {
        v30 = v17;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        [v15 setItems:v23];
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
    v9 = [(PDFDocumentViewController *)v8->documentViewController view];
    [(PDFView *)self convertPoint:v9 toView:x, y];
    v11 = v10;
    v13 = v12;

    v14 = [(PDFDocumentViewController *)self->_private->documentViewController pageForPoint:v4 nearest:v11, v13];
    goto LABEL_7;
  }

  v15 = [(PDFView *)self document];
  v16 = v15;
  if (v15 && ([v15 isLocked] & 1) == 0)
  {
    v18 = [(PDFView *)self documentView];
    [(PDFView *)self convertPoint:v18 toView:x, y];
    v20 = v19;
    v22 = v21;

    v23 = [(PDFView *)self documentView];
    [v23 bounds];
    v25 = v24 - v22;

    v26 = [(PDFView *)self PDFLayout];
    v27 = [(PDFView *)self currentPage];
    v14 = [v26 pageNearestPoint:v27 currentPage:{v20, v25}];

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
    v10 = [(PDFDocumentViewController *)v9->documentViewController view];
    [(PDFView *)self convertPoint:v10 toView:x, y];
    v12 = v11;
    v14 = v13;

    [(PDFDocumentViewController *)self->_private->documentViewController convertPoint:v8 toPage:v12, v14];
    x = v15;
    y = v16;
  }

  else if (v7)
  {
    v17 = [(PDFView *)self documentView];
    [(PDFView *)self convertPoint:v17 toView:x, y];
    v19 = v18;
    v21 = v20;

    v22 = [(PDFView *)self documentView];
    [v22 bounds];
    v24 = v23 - v21;

    v25 = [(PDFView *)self PDFLayout];
    [v25 convertPoint:v8 toPage:{v19, v24}];
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
    v14 = [(PDFDocumentViewController *)self->_private->documentViewController view];
    [v14 convertPoint:self toView:{v11, v13}];
LABEL_5:
    x = v15;
    y = v16;

    goto LABEL_6;
  }

  if (v7)
  {
    v17 = [(PDFView *)self PDFLayout];
    [v17 convertPoint:v8 fromPage:{x, y}];
    v19 = v18;
    v21 = v20;

    v22 = [(PDFView *)self documentView];
    [v22 bounds];
    v24 = v23 - v21;

    v14 = [(PDFView *)self documentView];
    [(PDFView *)self convertPoint:v14 fromView:v19, v24];
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
    v4 = [(PDFView *)self document];
    v5 = [v4 pageCount];

    if (currentPageIndex >= v5)
    {
      v6 = [(PDFView *)self document];
      if ([v6 pageCount])
      {
        v7 = [(PDFView *)self document];
        v8 = [v7 pageCount] - 1;
      }

      else
      {
        v8 = 0;
      }

      [(PDFView *)self setCurrentPageIndex:v8 withNotification:0];
    }
  }

  v9 = [(PDFView *)self PDFLayout];
  [v9 invalidateInternalDocumentGeometry];

  [(PDFView *)self _findVisiblePages];
  v10 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
  [v10 layoutDocumentView];

  [(PDFView *)self _resizeDisplayView:self];
  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 postNotificationName:@"PDFViewDidLayoutDocumentView" object:self];
}

- (void)annotationsChangedOnPage:(PDFPage *)page
{
  v4 = MEMORY[0x1E696AD88];
  v5 = page;
  v7 = [v4 defaultCenter];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v5, @"page", 0}];

  [v7 postNotificationName:@"PDFViewAnnotationsDidChange" object:self userInfo:v6];
}

- (CGSize)rowSizeForPage:(PDFPage *)page
{
  v4 = page;
  v5 = [(PDFView *)self PDFLayout];
  [v5 contentSizeWithCurrentPage:v4];
  v7 = v6;
  v9 = v8;

  v10 = round(v7);
  [(PDFView *)self gutterWidth];
  if (v11 > 0.0)
  {
    [(PDFView *)self gutterWidth];
    v10 = v10 + v12;
    v13 = [(PDFView *)self PDFLayout];
    v14 = [v13 functionalDisplayMode];

    if (v14 >= 2)
    {
      [(PDFView *)self gutterWidth];
      v10 = v10 + v15;
    }
  }

  v16 = [(PDFView *)self PDFLayout];
  v17 = [v16 functionalDisplayMode];

  if (v17)
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
    v5 = [(PDFDocumentViewController *)v4->documentViewController pageViews];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v16 + 1) + 8 * i) page];
          [v3 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
      v12 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
      v13 = [v12 pageViewForPageAtIndex:v11];

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
    v3 = [(PDFDocumentViewController *)v2->documentViewController pageViews];
  }

  else
  {
    v4 = [(PDFScrollView *)v2->scrollView pdfDocumentView];
    v3 = [v4 pageViews];
  }

  return v3;
}

- (id)visibleAnnotations
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(PDFView *)self visiblePages];
  v4 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
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
        v9 = [v8 annotations];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v18 + 1) + 8 * j);
              [v14 bounds];
              if ([(PDFView *)self isRectVisible:v8 onPage:?])
              {
                [v4 addObject:v14];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)enableBackgroundImages:(BOOL)a3
{
  [(PDFRenderingProperties *)self->_private->renderingProperties setEnableBackgroundImages:?];
  if (!a3)
  {
    v6 = [(PDFView *)self documentView];
    v5 = [v6 pageBackgroundManager];
    [v5 cancel];
  }
}

- (void)setBackgroundImage:(id)a3 forPage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(PDFView *)self documentView];
  v8 = [v6 document];
  v9 = [v8 indexForPage:v6];

  v10 = [v11 pageBackgroundManager];
  [v10 forceSetBackgroundImage:v7 forPageIndex:v9];
}

- (double)PDFViewWillChangeScaleFactor:(id)a3 toScale:(double)a4
{
  [(PDFView *)self minScaleFactor];
  if (v6 <= a4)
  {
    [(PDFView *)self maxScaleFactor];
    if (v8 >= a4)
    {
      return a4;
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

- (void)PDFViewWillClickOnLink:(id)a3 withURL:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v16 = v6;
    v7 = [MEMORY[0x1E69DC668] sharedApplication];
    if ([v7 canOpenURL:v16])
    {
      v8 = [MEMORY[0x1E69DC668] sharedApplication];
      [v8 openURL:v16 options:MEMORY[0x1E695E0F8] completionHandler:0];
    }

    else
    {
      v8 = PDFKitLocalizedString(@"ERROR: Cannot open URL");
      v9 = MEMORY[0x1E696AEC0];
      v10 = PDFKitLocalizedString(@"Link: %@");
      v11 = [v9 stringWithFormat:v10, v16];

      v12 = PDFKitLocalizedString(@"OK");
      v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v8 message:v11 preferredStyle:1];
      v14 = [MEMORY[0x1E69DC648] actionWithTitle:v12 style:0 handler:0];
      [v13 addAction:v14];
      v15 = [(PDFView *)self parentViewController];
      [v15 presentViewController:v13 animated:1 completion:0];
    }

    v6 = v16;
  }
}

- (id)viewForPage:(id)a3
{
  v4 = [(PDFDocument *)self->_private->document indexForPage:a3];
  if (v4 >= [(PDFDocument *)self->_private->document pageCount])
  {
    v6 = 0;
  }

  else
  {
    v5 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
    v6 = [v5 pageViewForPageAtIndex:v4];
  }

  return v6;
}

- (void)colorWidgetBackgrounds:(BOOL)a3
{
  v3 = a3;
  v5 = [(PDFDocument *)self->_private->document pageCount];
  if (v5 >= 1)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
      v9 = [v8 pageViewForPageAtIndex:i];
      v10 = [(PDFDocument *)self->_private->document pageAtIndex:i];
      [v9 colorWidgetBackgrounds:v3];
      [v10 setColorWidgetBackgrounds:v3];
    }
  }
}

- (void)drawDetectedAnnotationBounds:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(PDFView *)self visiblePageViews];
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

        [*(*(&v9 + 1) + 8 * v8++) enableHighlightDetectedFormFields:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (PDFView)initWithCoder:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = PDFView;
  v5 = [(PDFView *)&v37 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(PDFView *)v5 _commonInit];
    if (![v4 allowsKeyedCoding])
    {
      v36 = 0;
      [v4 decodeValueOfObjCType:"i" at:&v36];
      v35 = 0;
      [v4 decodeValueOfObjCType:"i" at:&v35];
      [(PDFView *)v6 setDisplayMode:v35];
      v34 = 1;
      [v4 decodeValueOfObjCType:"B" at:&v34];
      [(PDFView *)v6 setDisplaysPageBreaks:v34];
      v33 = 1.0;
      [v4 decodeValueOfObjCType:"f" at:&v33];
      [(PDFView *)v6 setScaleFactor:v33];
      v32 = 0;
      [v4 decodeValueOfObjCType:"B" at:&v32];
      [(PDFView *)v6 setAutoScales:v32];
      v31 = 0;
      [v4 decodeValueOfObjCType:"i" at:&v31];
      [(PDFView *)v6 setDisplayDirection:v31];
      v30 = 0;
      [v4 decodeValueOfObjCType:"B" at:&v30];
      [(PDFView *)v6 setDisplaysRTL:v30];
      v29 = 1.0;
      [v4 decodeValueOfObjCType:"f" at:&v29];
      [(PDFView *)v6 setMinScaleFactor:v29];
      v28 = 1.0;
      [v4 decodeValueOfObjCType:"f" at:&v28];
      [(PDFView *)v6 setMinScaleFactor:v28];
      v27 = 1.0;
      [v4 decodeValueOfObjCType:"f" at:&v27];
      v20 = v27;
      [v4 decodeValueOfObjCType:"f" at:&v27];
      v21 = v27;
      [v4 decodeValueOfObjCType:"f" at:&v27];
      v22 = v27;
      [v4 decodeValueOfObjCType:"f" at:&v27];
      [(PDFView *)v6 setPageBreakMargins:v22, v20, v27, v21];
      v26 = 0;
      [v4 decodeValueOfObjCType:"B" at:&v26];
      [(PDFView *)v6 setDisplaysAsBook:v26];
      v25 = 0;
      [v4 decodeValueOfObjCType:"B" at:&v25];
      [(PDFView *)v6 setEnableDataDetectors:v25];
      v24 = 2;
      [v4 decodeValueOfObjCType:"i" at:&v24];
      v19 = v24;
      goto LABEL_41;
    }

    [v4 containsValueForKey:@"Version"];
    if ([v4 containsValueForKey:@"DisplayMode"])
    {
      -[PDFView setDisplayMode:](v6, "setDisplayMode:", [v4 decodeIntForKey:@"DisplayMode"]);
    }

    if ([v4 containsValueForKey:@"PageBreaks"])
    {
      -[PDFView setDisplaysPageBreaks:](v6, "setDisplaysPageBreaks:", [v4 decodeBoolForKey:@"PageBreaks"]);
    }

    if ([v4 containsValueForKey:@"ScaleFactor"])
    {
      [v4 decodeFloatForKey:@"ScaleFactor"];
      [(PDFView *)v6 setScaleFactor:v7];
    }

    if ([v4 containsValueForKey:@"AutoScale"])
    {
      -[PDFView setAutoScales:](v6, "setAutoScales:", [v4 decodeBoolForKey:@"AutoScale"]);
    }

    if ([v4 containsValueForKey:@"DisplayDirection"])
    {
      -[PDFView setDisplayDirection:](v6, "setDisplayDirection:", [v4 decodeBoolForKey:@"DisplayDirection"]);
    }

    if ([v4 containsValueForKey:@"DisplaysRTL"])
    {
      -[PDFView setDisplaysRTL:](v6, "setDisplaysRTL:", [v4 decodeBoolForKey:@"DisplaysRTL"]);
    }

    if ([v4 containsValueForKey:@"MinScaleFactor"])
    {
      [v4 decodeFloatForKey:@"MinScaleFactor"];
      [(PDFView *)v6 setMinScaleFactor:v8];
    }

    if ([v4 containsValueForKey:@"MaxScaleFactor"])
    {
      [v4 decodeFloatForKey:@"MaxScaleFactor"];
      [(PDFView *)v6 setMaxScaleFactor:v9];
    }

    if ([(PDFView *)v6 displaysPageBreaks])
    {
      v10 = 4.0;
      v11 = 4.0;
      if ([v4 containsValueForKey:@"PageBreakMargins.left"])
      {
        [v4 decodeFloatForKey:@"PageBreakMargins.left"];
        v11 = v12;
      }

      if ([v4 containsValueForKey:@"PageBreakMargins.left"])
      {
        [v4 decodeFloatForKey:@"PageBreakMargins.right"];
        v10 = v13;
      }

      v14 = 4.75;
      v15 = 4.75;
      if ([v4 containsValueForKey:@"PageBreakMargins.top"])
      {
        [v4 decodeFloatForKey:@"PageBreakMargins.top"];
        v15 = v16;
      }

      if ([v4 containsValueForKey:@"PageBreakMargins.bottom"])
      {
        [v4 decodeFloatForKey:@"PageBreakMargins.bottom"];
        v14 = v17;
      }

      [(PDFView *)v6 setPageBreakMargins:v15, v11, v14, v10];
    }

    if ([v4 containsValueForKey:@"DisplaysAsBook"])
    {
      -[PDFView setDisplaysAsBook:](v6, "setDisplaysAsBook:", [v4 decodeBoolForKey:@"DisplaysAsBook"]);
    }

    if ([v4 containsValueForKey:@"BackgroundColor"])
    {
      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BackgroundColor"];
      if (v18)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(PDFView *)v6 setBackgroundColor:v18];
        }
      }
    }

    if ([v4 containsValueForKey:@"EnableDataDetectors"])
    {
      -[PDFView setEnableDataDetectors:](v6, "setEnableDataDetectors:", [v4 decodeBoolForKey:@"EnableDataDetectors"]);
    }

    if ([v4 containsValueForKey:@"InterpolationQuality"])
    {
      v19 = [v4 decodeIntegerForKey:@"InterpolationQuality"];
LABEL_41:
      [(PDFView *)v6 setInterpolationQuality:v19];
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = PDFView;
  [(PDFView *)&v3 encodeWithCoder:a3];
}

- (PDFView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PDFView;
  v3 = [(PDFView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PDFView *)v3 _commonInit];
  }

  return v4;
}

- (void)setFrame:(CGRect)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PDFView;
  [(PDFView *)&v14 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = self->_private;
  if (v4)
  {
    if (v4->autoScale)
    {
      [(PDFView *)self _internalSetAutoScaleFactor];
    }

    [(PDFView *)self _updateBookmarksForPages];
    v5 = [(PDFView *)self visiblePageViews];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setNeedsTilesUpdate];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)setBounds:(CGRect)a3
{
  if (self->_private)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
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

    v9 = [(PDFPasswordViewController *)v8->passwordViewController viewIfLoaded];
    v10 = v9;
    if (v9)
    {
      [v9 setFrame:{x, y, width, height}];
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
  v3 = [(PDFView *)self traitCollection];
  [(PDFRenderingProperties *)self->_private->renderingProperties setTraitCollection:v3];
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
  v17 = [(PDFView *)self traitCollection];
  [(PDFRenderingProperties *)self->_private->renderingProperties setTraitCollection:v17];

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
  v38 = [MEMORY[0x1E696AD88] defaultCenter];
  [v38 addObserver:self selector:sel_pdfViewDidChangeScale_ name:@"PDFViewScaleChanged" object:self];
  [v38 addObserver:self selector:sel_pdfViewDidChangePage_ name:@"PDFViewChangedPage" object:self];
  [v38 addObserver:self selector:sel_visiblePagesChanged_ name:@"PDFViewVisiblePagesChanged" object:self];
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
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self];

  v6 = self->_private;
  debugFlags = v6->debugFlags;
  v6->debugFlags = 0;

  v8.receiver = self;
  v8.super_class = PDFView;
  [(PDFView *)&v8 dealloc];
}

- (CGAffineTransform)_transformFromPageToPageView:(SEL)a3
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
  v20 = [v6 rotation];

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
  if (v20 > 179)
  {
    if (v20 == 180)
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
      if (v20 != 270)
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

  if (!v20)
  {
    v50.origin.x = v13;
    v50.origin.y = v15;
    v50.size.width = v17;
    v50.size.height = v19;
    Height = CGRectGetHeight(v50);
    goto LABEL_12;
  }

  Height = 0.0;
  if (v20 == 90)
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

- (CGAffineTransform)_transformFromPageViewToPage:(SEL)a3
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

  v9 = [(PDFPasswordViewController *)passwordViewController view];
  v7 = [(PDFPasswordViewController *)self->_private->passwordViewController view];
  v8 = [v7 superview];

  if (!v8)
  {
    [(PDFView *)self addSubview:v9];
    [v9 setAutoresizesSubviews:1];
    [v9 setAutoresizingMask:18];
    [(PDFView *)self bounds];
    [v9 setFrame:?];
  }

  [v9 setHidden:0];
}

- (void)_removePasswordView
{
  v2 = [(PDFPasswordViewController *)self->_private->passwordViewController viewIfLoaded];
  if (v2)
  {
    v3 = v2;
    [v2 setHidden:1];
    [v3 removeFromSuperview];
    v2 = v3;
  }
}

- (void)_updatePasswordView
{
  v3 = [(PDFPasswordViewController *)self->_private->passwordViewController viewIfLoaded];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v3 = [v3 isHidden];
    v4 = v5;
    if ((v3 & 1) == 0)
    {
      v3 = [(PDFView *)self bringSubviewToFront:v5];
      v4 = v5;
    }
  }

  MEMORY[0x1EEE66BB8](v3, v4);
}

- (BOOL)userDidEnterPassword:(id)a3 forPasswordViewController:(id)a4
{
  v5 = a3;
  v6 = [(PDFView *)self document];
  v7 = [v6 isLocked];

  if (v7 && (-[PDFView document](self, "document"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 unlockWithPassword:v5], v8, (v9 & 1) == 0))
  {
    v11 = [(PDFView *)self window];
    v12 = [v11 rootViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 viewControllers];
      v14 = [v13 objectAtIndex:0];

      v12 = v14;
    }

    v15 = [v12 presentedViewController];

    if (v15)
    {
      v16 = [v12 presentedViewController];

      v12 = v16;
    }

    [(PDFPasswordViewController *)self->_private->passwordViewController presentInvalidPasswordAlertWithParentViewController:v12];

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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(PDFViewController *)self->_private->controller textSelectionMenu];
  v8 = NSStringFromSelector(a3);
  v9 = [v8 isEqualToString:@"delete:"];

  if (v7 == 1 && [(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView]|| [(PDFView *)self akAnnotationEditingEnabled])
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PDFView;
    v11 = [(PDFView *)&v17 canPerformAction:a3 withSender:v6];
    v12 = NSStringFromSelector(a3);
    v13 = [v12 isEqualToString:@"_lookup:"];

    if (v13)
    {
      v14 = [(PDFView *)self currentSelection];
      if (v14)
      {
        v15 = [(PDFView *)self currentSelection];
        v10 = [v15 isEmpty] ^ 1;
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
  v13 = [(PDFScrollView *)self->_private->scrollView panGestureRecognizer];
  [v13 requireGestureRecognizerToFail:self->_private->longPressGestureRecognizer];
}

- (void)addGestureRecognizer:(id)a3
{
  v9.receiver = self;
  v9.super_class = PDFView;
  [(PDFView *)&v9 addGestureRecognizer:a3];
  v4 = [(PDFView *)self documentView];
  v5 = self->_private;
  if (v5->isUsingPageViewController)
  {
    v6 = [(PDFDocumentViewController *)v5->documentViewController currentPage];
    v7 = [(PDFDocumentViewController *)self->_private->documentViewController findPageViewControllerForPageIndex:[(PDFDocument *)self->_private->document indexForPage:v6]];
    v8 = [v7 textInputView];

    v4 = v8;
  }

  [v4 updateGestureRecognizerDependencies];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = self->_private->doubleTapGestureRecognizer != v6 || ([v7 _isPointerTouch] & 1) == 0;

  return v9;
}

- (BOOL)acceptSingleTouch:(id)a3
{
  [a3 locationInView:self];
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
        v16 = [(PDFViewController *)self->_private->controller activeAnnotation];

        if (!v16)
        {
          v17 = [(PDFView *)self currentSelection];
          v18 = v17;
          v15 = v17 && ![v17 isEmpty];

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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  [v4 locationInView:self];
  v6 = v5;
  v8 = v7;
  v9 = [(PDFView *)self typeForGestureRecognizer:v4];
  v10 = self->_private;
  if (v10->tapGestureRecognizer == v4)
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

      v15 = [(PDFViewController *)self->_private->controller activeAnnotation];
      v16 = [v15 isMarkupAnnotationSubtype];
      v17 = [v15 valueForAnnotationKey:@"/Subtype"];
      v18 = [v17 isEqualToString:@"/Text"];

      if ((v16 & 1) != 0 || v18)
      {
        [(PDFViewController *)self->_private->controller removeControlForAnnotation:v15];
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
  if (v10->doubleTapGestureRecognizer == v4)
  {
    if (!PDFKitIsFormFillingEnabled() || ![(PDFView *)self isInFormFillingMode])
    {
      v11 = ![(PDFView *)self isInMarkupMode];
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  if (v10->longPressGestureRecognizer != v4 || [(PDFView *)self _shouldHandleAnnotationAtLocation:v9 forGestureType:v6, v8])
  {
LABEL_12:
    LOBYTE(v11) = 1;
    goto LABEL_21;
  }

  LOBYTE(v11) = 0;
LABEL_21:

  return v11;
}

- (void)handleGesture:(unint64_t)a3 state:(int64_t)a4 location:(CGPoint)a5 locationOfFirstTouch:(CGPoint)a6 isIndirectTouch:(BOOL)a7
{
  v7 = a7;
  y = a6.y;
  x = a6.x;
  v10 = a5.y;
  v11 = a5.x;
  if (a3 != 1 || !a7)
  {
    [(PDFViewController *)self->_private->controller handleGesture:a3 state:a4 location:a5.x, a5.y];
  }

  if ([(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView])
  {
    v15 = [(PDFView *)self documentView];
    [v15 handleGesture:a3 state:a4 location:v7 locationOfFirstTouch:v11 isIndirectTouch:{v10, x, y}];
  }
}

- (unint64_t)typeForGestureRecognizer:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 numberOfTapsRequired] == 2;
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

- (id)pointerRegionForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
      v12 = [v11 string];
      v13 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v14 = [v12 stringByTrimmingCharactersInSet:v13];

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

- (id)hitTestForSubviewsOfView:(id)a3 atLocation:(CGPoint)a4 withEvent:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3;
  v9 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6;
  v25 = __Block_byref_object_dispose__6;
  v26 = 0;
  v10 = [v8 subviews];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__PDFView_hitTestForSubviewsOfView_atLocation_withEvent___block_invoke;
  v15[3] = &unk_1E8152618;
  v19 = x;
  v20 = y;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v18 = &v21;
  [v10 enumerateObjectsUsingBlock:v15];

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

- (BOOL)_shouldHandleAnnotationAtLocation:(CGPoint)a3 forGestureType:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = [(PDFView *)self pageForPoint:0 nearest:?];
  if (v8)
  {
    [(PDFView *)self convertPoint:v8 toPage:x, y];
    v10 = v9;
    v12 = v11;
    v13 = [v8 annotationAtPoint:?];
    v14 = [(PDFViewController *)self->_private->controller activeAnnotation];
    if (!v13)
    {
      v15 = [v8 scannedAnnotationAtPoint:{v10, v12}];
      if (!v15)
      {
        if (a4)
        {
          v26 = 1;
        }

        else
        {
          v26 = v14 == 0;
        }

        v22 = !v26;
        goto LABEL_27;
      }

      v13 = v15;
    }

    v16 = [v13 valueForAnnotationKey:@"/Subtype"];
    v17 = [v16 isEqualToString:@"/Link"];
    v18 = [v16 isEqualToString:@"/Text"];
    v19 = [v13 isMarkupAnnotationSubtype];
    v20 = [v16 isEqualToString:@"/Widget"];
    if (a4)
    {
      if (a4 == 2)
      {
        if (v19)
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

    else if ((v17 | v18 | v19) & 1) != 0 || v20 && (([v13 valueForAnnotationKey:@"/FT"], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", @"/Btn"), (objc_msgSend(v23, "isEqualToString:", @"/Tx") & 1) == 0) ? (v25 = objc_msgSend(v23, "isEqualToString:", @"/Ch")) : (v25 = 1), v27 = v24 | v25 & (v13 != v14), v23, (v27))
    {
      v22 = 1;
LABEL_26:

LABEL_27:
      goto LABEL_28;
    }

    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    v31 = @"PDFAnnotationHit";
    v32[0] = v13;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    [v28 postNotificationName:@"PDFViewAnnotationHit" object:self userInfo:v29];

    v22 = 0;
    goto LABEL_26;
  }

  v22 = 0;
LABEL_28:

  return v22 & 1;
}

- (id)_dragItemsAtLocationInView:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

    v16 = [(PDFView *)self currentSelection];
    if (v15)
    {
      v17 = [v14 URL];
      [v7 registerObject:v17 visibility:0];

      [v14 bounds];
      v27 = PDFRectInset(v26, -3.0, -3.0);
      v18 = [v8 selectionForRect:{v27.origin.x, v27.origin.y, v27.size.width, v27.size.height}];
      [(PDFView *)self setCurrentSelection:v18];
      goto LABEL_12;
    }
  }

  else
  {
    v16 = [(PDFView *)self currentSelection];
    v14 = 0;
  }

  if (v16 && ([v16 isEmpty] & 1) == 0 && objc_msgSend(v16, "containsPoint:onPage:", v8, v11, v12))
  {
    v20 = [v16 string];
    [v7 registerObject:v20 visibility:0];

    v18 = [v16 attributedString];
    [v7 registerObject:v18 visibility:0];
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

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v5 = a4;
  if ([(PDFView *)self isInMarkupMode])
  {
    v6 = 0;
  }

  else
  {
    [v5 locationInView:self];
    v6 = [(PDFView *)self _dragItemsAtLocationInView:?];
    if ([v6 count])
    {
      [(UILongPressGestureRecognizer *)self->_private->longPressGestureRecognizer setEnabled:0];
      [(UILongPressGestureRecognizer *)self->_private->longPressGestureRecognizer setEnabled:1];
    }
  }

  return v6;
}

- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  if ([(UITapGestureRecognizer *)self->_private->tapGestureRecognizer state:a3]== 5)
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v8 = [(PDFView *)self _dragItemsAtLocationInView:x, y];
  }

  return v8;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = [(PDFView *)self currentSelection:a3];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = [v6 pages];
  v8 = [v7 countByEnumeratingWithState:&v51 objects:v55 count:16];
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
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v51 + 1) + 8 * v11);
      v13 = [(PDFView *)self pageViewForPageAtIndex:[(PDFDocument *)self->_private->document indexForPage:v12]];
      if ([v13 isVisible])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v51 objects:v55 count:16];
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
      v7 = v15;
      v29 = [v28 imageWithActions:v40];
      v30 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v29];
      v31 = [v30 layer];
      [v31 setCornerRadius:16.0];

      v32 = [v30 layer];
      [v32 setMasksToBounds:1];

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

- (id)findInteraction:(id)a3 sessionForView:(id)a4
{
  v5 = objc_alloc(MEMORY[0x1E69DD140]);
  v6 = [(PDFView *)self documentView];
  v7 = [v5 initWithSearchableObject:v6];

  return v7;
}

- (CGRect)normalizedPageBounds:(id)a3
{
  v4 = a3;
  [v4 boundsForBox:{-[PDFView displayBox](self, "displayBox")}];
  v6 = v5;
  v8 = v7;
  v9 = PDFPointMake(0.0, 0.0);
  v11 = v10;
  if (![v4 pageRef])
  {
    v12.n128_u64[0] = 0;
    v13.n128_u64[0] = 0;
    v9 = PDFRectMake(v12, v13, 306.0, 396.0);
    v11 = v14;
    v6 = v15;
    v8 = v16;
  }

  v17 = [v4 rotation];
  if (v17 == 270 || v17 == 90)
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

- (double)_pageViewHeight:(id)a3
{
  v4 = a3;
  [(PDFView *)self normalizedPageBounds:v4];
  v6 = v5;
  v7 = [(PDFView *)self PDFLayout];
  v8 = [v7 functionalDisplayMode];

  if (v8 == 3)
  {
    v9 = [(PDFView *)self PDFLayout];
    v10 = [v9 facingPageForPage:v4];

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

- (double)autoScaleFactorForPage:(id)a3
{
  [(PDFView *)self _unboundAutoScaleFactorForPage:a3];

  [(PDFView *)self PDFViewWillChangeScaleFactor:self toScale:?];
  return result;
}

- (double)autoScaleFactorForPageWithSize:(CGSize)a3
{
  [(PDFView *)self _unboundAutoScaleFactorForPageWithSize:a3.width, a3.height];

  [(PDFView *)self PDFViewWillChangeScaleFactor:self toScale:?];
  return result;
}

- (double)_unboundAutoScaleFactorForPage:(id)a3
{
  if (!a3)
  {
    return 1.0;
  }

  v4 = a3;
  v5 = [(PDFView *)self PDFLayout];
  [v5 contentSizeWithCurrentPage:v4];
  v7 = v6;
  v9 = v8;

  [(PDFView *)self _unboundAutoScaleFactorForPageWithSize:v7, v9];
  return result;
}

- (double)_unboundAutoScaleFactorForPageWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
      v28 = [(PDFView *)self PDFLayout];
      v29 = [v28 functionalDisplayMode];

      if (v29 >= 2)
      {
        [(PDFView *)self gutterWidth];
        v24 = v24 - v30;
      }
    }

    v31 = [(PDFView *)self PDFLayout];
    v32 = [v31 functionalDisplayMode];

    if (v32)
    {
      if ([(PDFView *)self displayDirection]== kPDFDisplayDirectionVertical || v32 == 3)
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
    v15 = [(PDFView *)self documentView];
    [v15 bounds];
    [(PDFView *)self convertRect:v15 fromView:?];
    v4 = v3;
    [(PDFView *)self bounds];
    self->_private->horizontalScaleFactorBeforeRotation = v4 / (v5 - (self->_private->savedSafeAreaInsets.left + self->_private->savedSafeAreaInsets.right));
    [(PDFView *)self convertRect:v15 toView:?];
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
    v39 = [(PDFView *)self documentView];
    [(PDFView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = self->_private->horizontalScaleFactorBeforeRotation * (v7 - (self->_private->savedSafeAreaInsets.left + self->_private->savedSafeAreaInsets.right));
    [v39 bounds];
    v13 = v11 / v12;
    [(PDFView *)self autoScaleFactor];
    v15 = v14;
    [(PDFView *)self maxScaleFactor];
    [(PDFView *)self setMinScaleFactor:fmin(v15, v16)];
    [(PDFView *)self setScaleFactor:v13];
    [(PDFView *)self convertRect:v39 toView:v4, v6, v8, v10];
    [v39 convertPoint:self->_private->scrollView toView:{PDFPointMake(self->_private->documentViewCenterBeforeRotation.x - v17 * 0.5, self->_private->documentViewCenterBeforeRotation.y - v18 * 0.5)}];
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

- (void)_internalSetScaleFactor:(double)a3
{
  [(PDFView *)self PDFViewWillChangeScaleFactor:self toScale:a3];
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
      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 postNotificationName:@"PDFViewScaleChanged" object:self];
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
  v3 = [(PDFView *)self PDFLayout];
  v4 = [v3 functionalDisplayMode];

  if (v4)
  {
    viewLayout = self->_private->viewLayout;
    v6 = [(PDFView *)self currentPage];
    [(PDFViewLayout *)viewLayout boundsForPage:v6];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [(PDFView *)self documentView];
    [v15 bounds];
    v17 = v16 - v10 - v14;

    if ([(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView])
    {
      document = self->_private->document;
      v19 = [(PDFView *)self currentPage];
      v20 = [(PDFDocument *)document indexForPage:v19];

      [(PDFView *)self setCurrentPageIndex:v20 withNotification:0];
      v21 = [MEMORY[0x1E696AD88] defaultCenter];
      v49[0] = @"pageIndex";
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
      v49[1] = @"pageFrame";
      v50[0] = v22;
      v23 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v8, v17, v12, v14}];
      v50[1] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
      [v21 postNotificationName:@"PDFExtensionViewGoToPage" object:self userInfo:v24];

      return;
    }

    if ([(PDFView *)self autoScales])
    {
      [(PDFView *)self _internalSetAutoScaleFactor];
    }

    v25 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
    [v25 convertRect:self->_private->scrollView toView:{v8, v17, v12, v14}];
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
  v3 = [(PDFView *)self PDFLayout];
  v4 = [v3 functionalDisplayMode];

  if (v4)
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

- (void)scrollViewSaysPageMayHaveChanged:(id)a3
{
  v4 = [a3 object];
  scrollView = self->_private->scrollView;

  if (v4 == scrollView)
  {

    [(PDFView *)self syncPageIndexToScrollView];
  }
}

- (void)pageViewControllerSaysPageChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"pageIndex"];
  v6 = [v5 integerValue];

  [(PDFView *)self setCurrentPageIndex:v6 withNotification:1];
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
  v18 = [(PDFView *)self document];
  v19 = [v18 indexForPage:v20];

  if (self->_currentPageIndex != v19)
  {
    [(PDFView *)self setCurrentPageIndex:v19 withNotification:1];
  }

  v17 = v20;
LABEL_9:
}

- (CGSize)pageViewSizeForPage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PDFView *)self PDFLayout];
    [v5 contentSizeWithCurrentPage:v4];
    v7 = v6;
    v9 = v8;

    [(PDFView *)self gutterWidth];
    if (v10 > 0.0)
    {
      [(PDFView *)self gutterWidth];
      v7 = v7 + v11;
      v12 = [(PDFView *)self PDFLayout];
      v13 = [v12 functionalDisplayMode];

      if (v13 >= 2)
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

- (void)_resizeDisplayView:(id)a3
{
  v4 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
  [v4 frame];
  v6 = v5;
  v8 = v7;

  [(PDFScrollView *)self->_private->scrollView setContentSize:v6, v8];
  [(PDFView *)self scaleFactor];
  v10 = v9;
  v13 = [(PDFView *)self documentView];
  [v13 updateVisibility];
  [(PDFView *)self scaleFactor];
  if (v11 != v10)
  {
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 postNotificationName:@"PDFViewScaleChanged" object:self];
  }
}

- (void)positionInternalViews:(id)a3
{
  v4 = [(PDFView *)self documentView];
  [v4 frame];
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

      v18 = [(PDFScrollView *)self->_private->scrollView showsVerticalScrollIndicator];
      if (v17 > v12)
      {
LABEL_6:
        if (v18)
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
      if (!v18)
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

      v25 = [(PDFScrollView *)self->_private->scrollView showsHorizontalScrollIndicator];
      goto LABEL_27;
    }

    if (v22 <= v10)
    {
      if (([(PDFScrollView *)v23 showsVerticalScrollIndicator]& 1) == 0)
      {
        [(PDFScrollView *)self->_private->scrollView setShowsVerticalScrollIndicator:1];
      }

      v25 = [(PDFScrollView *)self->_private->scrollView showsHorizontalScrollIndicator];
      if (v6 <= v10)
      {
LABEL_27:
        if (!v25)
        {
          return;
        }

        goto LABEL_28;
      }

      if (v25)
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

        v18 = [(PDFScrollView *)self->_private->scrollView showsVerticalScrollIndicator];
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

- (CGRect)visibleRectForPageView:(id)a3
{
  v4 = a3;
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

  [(PDFView *)self convertRect:v4 toView:v26, v28, v30, v32];
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

- (BOOL)focusOnColumnAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v88[1] = *MEMORY[0x1E69E9840];
  [(PDFView *)self autoScaleFactor];
  v7 = v6;
  [(PDFView *)self scaleFactor];
  v9 = vabdd_f64(v8, v7);
  v10 = [(PDFView *)self renderingProperties];
  v11 = [v10 isUsingPDFExtensionView];

  if (v9 <= 0.00000011920929 || (v11 & 1) != 0)
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
      if (v11)
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
      if (v11)
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
      if (v11)
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
        v38 = [MEMORY[0x1E696AD88] defaultCenter];
        v87 = @"rect";
        v81 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v74, v76, v78, v80}];
        v88[0] = v81;
        v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1];
        [v38 postNotificationName:@"PDFExtensionViewZoomToRect" object:self userInfo:v82];

        goto LABEL_13;
      }
    }

    v38 = [(PDFView *)self pageViewForPageAtIndex:[(PDFDocument *)self->_private->document indexForPage:v13]];
    [(PDFView *)self convertRect:v38 toView:v37, v36, v35, v34];
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

- (void)insertFormFieldWithBounds:(CGRect)a3 onPage:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = MEMORY[0x1E69DB878];
  v10 = a4;
  v11 = +[PDFAnnotation detectedFormFieldDefaultFontName];
  +[PDFAnnotation detectedFormFieldDefaultFontSize];
  v13 = [v9 fontWithName:v11 size:?];

  v12 = [PDFAnnotation createDetectedTextFieldWithBounds:v13 font:0 textContentType:v10 page:x, y, width, height];
  [(PDFViewController *)self->_private->controller addDetectedAnnotation:v12 toPage:v10];

  [(PDFViewController *)self->_private->controller activateAnnotation:v12];
}

- (void)insertFormFieldAtDefaultLocation
{
  v5 = [(PDFView *)self currentPage];
  [(PDFView *)self centerPointOfVisibleRectOfPage:v5];
  [(PDFView *)self insertFormFieldWithBounds:v5 onPage:PDFRectMakeFromCenter(v3, v4, 120.0)];
}

- (void)insertFormFieldAtBestLocationNearPoint:(CGPoint)a3 onPage:(id)a4
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  [(PDFView *)self convertPoint:v9 toPage:x, y];
  [(PDFView *)self insertFormFieldWithBounds:v9 onPage:PDFRectMakeFromCenter(v7, v8, 120.0)];
}

- (void)constrainedScrollToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PDFView *)self documentView];
  [v6 bounds];
  v8 = v7 - y;

  [(PDFScrollView *)self->_private->scrollView bounds];
  v10 = v9;
  v12 = v11;
  v13 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
  [v13 convertPoint:self->_private->scrollView toView:{PDFPointToCGPoint(x, v8)}];
  v15 = v14;
  v17 = v16;

  scrollView = self->_private->scrollView;

  [(PDFScrollView *)scrollView scrollRectToVisible:0 animated:v15, v17, v10, v12];
}

- (void)_scrollVerticalBy:(double)a3
{
  [(PDFView *)self scaleFactor];
  v6 = a3 / v5;
  v18 = [(PDFView *)self determineCurrentPage];
  [(PDFScrollView *)self->_private->scrollView contentOffset];
  v8 = v7;
  v10 = v9;
  [(PDFView *)self constrainedScrollToPoint:PDFPointMake(v7, round(v6 + v9))];
  v11 = [(PDFView *)self PDFLayout];
  v12 = [v11 functionalDisplayMode];

  if (v12)
  {
    v16 = [(PDFView *)self determineCurrentPage];
    if (v16 != v18)
    {
      self->_private->inhibitAutoScroll = 1;
      [(PDFView *)self goToPage:v16];
      self->_private->inhibitAutoScroll = 0;
    }

    goto LABEL_9;
  }

  v13 = [(UIScrollView *)self->_private->scrollView PDFKitDocumentVisibleRectIncludingContentInsets];
  v14 = v18;
  if (v15 != v10)
  {
    goto LABEL_10;
  }

  if (v6 < 0.0)
  {
    v13 = [(PDFView *)self canGoToNextPage];
    v14 = v18;
    if (v13)
    {
      [(PDFView *)self constrainedScrollToPoint:PDFPointMake(v8, 0.0)];
      v13 = [(PDFView *)self goToNextPage:self];
LABEL_9:
      v14 = v18;
      goto LABEL_10;
    }
  }

  if (v6 > 0.0)
  {
    v13 = [(PDFView *)self canGoToPreviousPage];
    v14 = v18;
    if (v13)
    {
      [(UIScrollView *)self->_private->scrollView PDFKitDocumentVisibleRectIncludingContentInsets];
      [(PDFView *)self constrainedScrollToPoint:PDFPointMake(v8, v17)];
      v13 = [(PDFView *)self goToPreviousPage:self];
      goto LABEL_9;
    }
  }

LABEL_10:

  MEMORY[0x1EEE66BB8](v13, v14);
}

- (void)_scrollHorizontalBy:(double)a3
{
  [(PDFView *)self scaleFactor];
  v6 = a3 / v5;
  [(UIScrollView *)self->_private->scrollView PDFKitDocumentVisibleRectIncludingContentInsets];
  v9 = PDFPointMake(round(v6 + v7), v8);

  [(PDFView *)self constrainedScrollToPoint:v9];
}

- (void)_scrollByPage:(BOOL)a3
{
  v3 = a3;
  [(PDFView *)self frame];
  v6 = v5;
  v14 = [(PDFView *)self currentPage];
  [(PDFView *)self _pageViewHeight:?];
  v8 = v7;
  if (vabdd_f64(v7, v6) <= 32.0)
  {
    v10 = [(PDFView *)self currentPage];
    [(PDFView *)self _scrollOriginForPageTopLeft:v10];
    v12 = v11;

    [(UIScrollView *)self->_private->scrollView PDFKitDocumentVisibleRectIncludingContentInsets];
    if (vabdd_f64(v12, v13) < 32.0)
    {
      if (v3)
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
    if (v3)
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 50.0 - v6;
    if (v3)
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

- (CGPoint)_scrollOriginForPageTopLeft:(id)a3
{
  v4 = a3;
  v5 = PDFPointMake(0.0, 0.0);
  v7 = v6;
  if (v4)
  {
    [v4 boundsForBox:{-[PDFView displayBox](self, "displayBox")}];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(PDFView *)self pageBreakMargins];
    v17 = v16;
    v19 = v18;
    v20 = [v4 rotation];
    if (v20 > 179)
    {
      if (v20 == 180)
      {
        v5 = v17 + PDFPointMake(v13, 0.0);
        goto LABEL_12;
      }

      if (v20 != 270)
      {
LABEL_13:
        [(PDFView *)self convertPoint:v4 fromPage:v9 + v5, v11 + v7];
        v24 = v23;
        v26 = v25;
        v27 = [(PDFView *)self documentView];
        [v27 convertPoint:self fromView:{v24, v26}];
        v5 = v28;
        v7 = v29;

        goto LABEL_14;
      }

      v5 = v17 + PDFPointMake(v13, v15);
    }

    else
    {
      if (v20)
      {
        if (v20 == 90)
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
    v49 = [(PDFDocumentViewController *)v3->documentViewController currentPage];
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
    v14 = [(PDFView *)self documentView];
    [(PDFView *)self convertRect:v14 toView:v7, v9, v11, v13];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [(PDFView *)self PDFLayout];
    v24 = [(PDFView *)self currentPage];
    v25 = [v23 visiblePagesInBounds:v24 currentPage:{v16, v18, v20, v22}];

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

      v31 = [(PDFView *)self document];
      v32 = [v26 objectAtIndex:0];
      v33 = [v31 indexForPage:v32];

      v34 = [(PDFView *)self document];
      v35 = [v26 lastObject];
      v36 = [v34 indexForPage:v35];
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

        v47 = [MEMORY[0x1E696AD90] defaultQueue];
        v48 = [MEMORY[0x1E696AD80] notificationWithName:@"PDFViewVisiblePagesChanged" object:self userInfo:v46];
        [v47 enqueueNotification:v48 postingStyle:2];
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
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"PDFViewChangedPage" object:self];
  }
}

- (void)_updateAnnotations
{
  v16 = *MEMORY[0x1E69E9840];
  if (ShouldRenderAnnotationsInPDFKit())
  {
    v3 = [(PDFView *)self visiblePages];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v3);
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
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)visiblePagesChanged:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PDFView *)self isDocumentAnalysisEnabled])
  {
    [(PDFView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(PDFView *)self documentView];
    [(PDFView *)self convertRect:v13 toView:v6, v8, v10, v12];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = [(PDFView *)self documentView];
    [v22 bounds];
    v24 = v23;

    v25 = [(PDFView *)self PDFLayout];
    v26 = [(PDFView *)self currentPage];
    v27 = [v25 visiblePagesInBounds:v26 currentPage:{v15, v24 - v17 - v21, v19, v21}];

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
            v33 = [(PDFView *)self document];
            v34 = [v33 formFillingQueue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __31__PDFView_visiblePagesChanged___block_invoke;
            block[3] = &unk_1E8152690;
            block[4] = v32;
            block[5] = self;
            objc_copyWeak(&v41, location);
            dispatch_async(v34, block);

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

- (CGPoint)centerPointOfVisibleRectOfPage:(id)a3
{
  v4 = a3;
  v5 = [(PDFView *)self document];
  v6 = [v5 indexForPage:v4];

  v7 = [(PDFView *)self pageViewForPageAtIndex:v6];
  [(PDFView *)self visibleRectForPageView:v7];
  [v7 convertRect:self toView:?];
  [(PDFView *)self convertRect:v4 toPage:?];
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

- (void)_showFormFillingButton:(BOOL)a3
{
  v56[2] = *MEMORY[0x1E69E9840];
  formFieldButton = self->_formFieldButton;
  if (a3)
  {
    if (!formFieldButton)
    {
      v5 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
      [v5 setButtonSize:3];
      [v5 setCornerStyle:4];
      v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];
      [v5 setImage:v6];

      v7 = [MEMORY[0x1E69DCAD8] configurationWithScale:2];
      [v5 setPreferredSymbolConfigurationForImage:v7];

      v8 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v5 primaryAction:0];
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

    v22 = [(PDFView *)self documentView];
    [(PDFView *)self insertSubview:formFieldButton aboveSubview:v22];

    v23 = [(UIButton *)self->_formFieldButton bottomAnchor];
    v24 = [(PDFView *)self bottomAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:-15.0];

    v26 = MEMORY[0x1E696ACD8];
    v55[0] = v25;
    v27 = [(UIButton *)self->_formFieldButton trailingAnchor];
    v28 = [(PDFView *)self trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:-15.0];
    v55[1] = v29;
    v30 = [(UIButton *)self->_formFieldButton widthAnchor];
    v31 = [(UIButton *)self->_formFieldButton heightAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v55[2] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:3];
    [v26 activateConstraints:v33];

    [(PDFView *)self setNeedsLayout];
    [(PDFView *)self layoutIfNeeded];
    v34 = [MEMORY[0x1E696AD88] defaultCenter];
    v35 = *MEMORY[0x1E69DE080];
    v36 = [MEMORY[0x1E696ADC8] mainQueue];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __34__PDFView__showFormFillingButton___block_invoke_3;
    v51[3] = &unk_1E8152708;
    v51[4] = self;
    v37 = v25;
    v52 = v37;
    v38 = [v34 addObserverForName:v35 object:0 queue:v36 usingBlock:v51];
    formFieldButtonShowKeyboardNotification = self->_formFieldButtonShowKeyboardNotification;
    self->_formFieldButtonShowKeyboardNotification = v38;

    v40 = *MEMORY[0x1E69DE078];
    v41 = [MEMORY[0x1E696ADC8] mainQueue];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __34__PDFView__showFormFillingButton___block_invoke_5;
    v48[3] = &unk_1E8152708;
    v49 = v37;
    v50 = self;
    v42 = v37;
    v43 = [v34 addObserverForName:v40 object:0 queue:v41 usingBlock:v48];
    formFieldButtonHideKeyboardNotification = self->_formFieldButtonHideKeyboardNotification;
    self->_formFieldButtonHideKeyboardNotification = v43;
  }

  else
  {
    if (formFieldButton)
    {
      [(UIButton *)self->_formFieldButton removeFromSuperview];
    }

    v47 = [MEMORY[0x1E696AD88] defaultCenter];
    [v47 removeObserver:self->_formFieldButtonShowKeyboardNotification];
    v45 = self->_formFieldButtonShowKeyboardNotification;
    self->_formFieldButtonShowKeyboardNotification = 0;

    [v47 removeObserver:self->_formFieldButtonHideKeyboardNotification];
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

- (void)signaturesController:(id)a3 didSelectSignatureWithAnnotation:(id)a4
{
  v5 = a4;
  v22 = [(PDFView *)self currentPage];
  v6 = [(PDFView *)self document];
  v7 = [v6 indexForPage:v22];

  [(PDFView *)self centerPointOfVisibleRectOfPage:v22];
  v9 = v8;
  v11 = v10;
  [v5 rectangle];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  v16 = CGRectGetWidth(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  [v5 setRectangle:{v9 - v16 * (216.0 / v16) * 0.5, v11 - CGRectGetHeight(v25) * (216.0 / v16) * 0.5}];
  v17 = [(PDFView *)self document];
  v18 = [v17 akController];

  [v5 setOriginalExifOrientation:{objc_msgSend(v18, "currentExifOrientationForPageAtIndex:", v7)}];
  [v18 currentModelBaseScaleFactorForPageAtIndex:v7];
  [v5 setOriginalModelBaseScaleFactor:?];
  v19 = [v22 akPageAdaptor];
  v20 = [v19 akPageModelController];
  v21 = [v20 mutableArrayValueForKey:@"annotations"];
  [v21 addObject:v5];
}

- (void)handleAnalysisCompletionOfPage:(id)a3 resultTypes:(unint64_t)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [v12 document];
  v7 = -[PDFView pageViewForPageAtIndex:](self, "pageViewForPageAtIndex:", [v6 indexForPage:v12]);
  if (([v12 containsFormFields] & 1) == 0 && !objc_msgSend(v12, "containsDetectedFormFields"))
  {
    goto LABEL_15;
  }

  v8 = [(PDFView *)self delegate];
  v9 = v8;
  v10 = self->_private;
  if (!v10->delegateRespondsToAllowFormFillingWithConfidence)
  {
    if (v10->delegateRespondsToAllowFormFillingWithAutoFill)
    {
      [v8 PDFView:self allowsFormFillingMode:1 withAutofill:objc_msgSend(v12 forPage:{"containsFormFieldsWithContentType"), v12}];
    }

    else if (v10->delegateRespondsToAllowFormFilling)
    {
      [v8 PDFView:self allowsFormFillingMode:1 forPage:v12];
    }

    goto LABEL_12;
  }

  if ([v12 containsFormFields])
  {
    v11 = 3;
LABEL_9:
    [v9 PDFView:self allowsFormFillingMode:1 withRecognitionConfidence:v11 forPage:v12];
    goto LABEL_12;
  }

  v11 = [v12 detectedFormFieldsRecognitionConfidence];
  if (v11)
  {
    goto LABEL_9;
  }

LABEL_12:
  if ([(PDFView *)self isInFormFillingMode])
  {
    [(PDFViewController *)self->_private->controller populateAnnotationsFromDetectedAnnotationsOnPage:v12];
    [(PDFView *)self highlightDetectedFormFields:1];
  }

LABEL_15:
  if ((v4 & 1) != 0 && GetDefaultsWriteDrawInvisibleText())
  {
    [v7 forceTileUpdate];
  }

  if ((v4 & 2) != 0 && GetDefaultsWriteHighlightDetectedAnnotations())
  {
    [v7 enableHighlightDetectedFormFields:1];
  }

  if ((v4 & 4) != 0)
  {
    [v7 resetAccessibilityTree];
  }
}

- (id)nextPage
{
  if ([(PDFView *)self canGoToNextPage])
  {
    v3 = [(PDFView *)self PDFLayout];
    v4 = [v3 functionalDisplayMode];

    if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v5 = self->_currentPageIndex + 2;
      if (v5 > [(PDFView *)self lastPageIndex])
      {
        v5 = [(PDFView *)self lastPageIndex];
      }

      v6 = [(PDFView *)self document];
      v7 = v6;
      v8 = v5;
    }

    else
    {
      v6 = [(PDFView *)self document];
      v7 = v6;
      v8 = self->_currentPageIndex + 1;
    }

    v9 = [v6 pageAtIndex:v8];
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
    v3 = [(PDFView *)self PDFLayout];
    v4 = [v3 functionalDisplayMode];

    if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      currentPageIndex = self->_currentPageIndex;
      v6 = [(PDFView *)self document];
      v7 = v6;
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
      v6 = [(PDFView *)self document];
      v7 = v6;
      v9 = self->_currentPageIndex - 1;
    }

    v10 = [v6 pageAtIndex:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)pushDestination:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = self->_private;
    historyIndex = v5->historyIndex;
    if (historyIndex < [(NSMutableArray *)v5->destinationHistory count])
    {
      [(NSMutableArray *)self->_private->destinationHistory removeObjectsInRange:self->_private->historyIndex, [(NSMutableArray *)self->_private->destinationHistory count]- self->_private->historyIndex];
    }

    ++self->_private->historyIndex;
    [(NSMutableArray *)self->_private->destinationHistory addObject:v9];
    v7 = [MEMORY[0x1E696AD90] defaultQueue];
    v8 = [MEMORY[0x1E696AD80] notificationWithName:@"PDFViewChangedHistory" object:self];
    [v7 enqueueNotification:v8 postingStyle:1];

    v4 = v9;
  }
}

- (void)goToDestinationNoPush:(id)a3
{
  v42[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = 0;
    goto LABEL_23;
  }

  v6 = [v4 page];
  if (v6)
  {
    [v5 point];
    v8 = v7;
    v10 = v9;
    v11 = [(PDFView *)self currentPage];
    if (v6 == v11 && v8 == 3.40282347e38)
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
      [(PDFView *)self goToPageNoPush:v6];
    }

    else
    {
      v13 = [(PDFView *)self PDFLayout];
      v14 = [v13 functionalDisplayMode];

      if ((v14 & 1) == 0)
      {
        [(PDFView *)self goToPageNoPush:v6];
      }

      if (![(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView])
      {
        [(PDFScrollView *)self->_private->scrollView contentOffset];
      }

      [v6 boundsForBox:0];
      v18 = PDFPointClampInPDFRect(v8, v10, v15, v16, v17);
      v20 = v19;
      [v6 rotation];
      [(PDFView *)self convertPoint:v6 fromPage:v18, v20];
      v22 = v21;
      v24 = v23;
      v25 = [(PDFView *)self documentView];
      [v25 convertPoint:self fromView:{v22, v24}];
      v27 = v26;
      v29 = v28;

      if ([(PDFRenderingProperties *)self->_private->renderingProperties isUsingPDFExtensionView])
      {
        v30 = [(PDFDocument *)self->_private->document indexForPage:v6];
        [(PDFView *)self setCurrentPageIndex:v30 withNotification:0];
        v31 = [MEMORY[0x1E696AD88] defaultCenter];
        v41[0] = @"pageIndex";
        v32 = [MEMORY[0x1E696AD98] numberWithInteger:v30];
        v41[1] = @"point";
        v42[0] = v32;
        v33 = [MEMORY[0x1E696B098] PDFKitValueWithPDFPoint:{v27, v29}];
        v42[1] = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
        [v31 postNotificationName:@"PDFExtensionViewGoToDestination" object:self userInfo:v34];
      }

      else
      {
        v35 = [(PDFView *)self documentView];
        [v35 bounds];
        v37 = v36 - v29;

        [(PDFView *)self constrainedScrollToPoint:PDFPointMake(v27, v37)];
        v38 = [(PDFView *)self document];
        v39 = [v38 indexForPage:v6];
        currentPageIndex = self->_currentPageIndex;

        if (v39 != currentPageIndex)
        {
          self->_private->inhibitAutoScroll = 1;
          [(PDFView *)self goToPageNoPush:v6];
          self->_private->inhibitAutoScroll = 0;
        }
      }
    }
  }

LABEL_23:
}

- (void)goToPageNoPush:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v17 = a3;
  if (v17)
  {
    v6 = [(PDFView *)self currentPage];
    v7 = self->_private;
    fromPage = v7->fromPage;
    v7->fromPage = v6;

    currentPageIndex = self->_currentPageIndex;
    v10 = [(PDFView *)self document];
    -[PDFView setCurrentPageIndex:withNotification:](self, "setCurrentPageIndex:withNotification:", [v10 indexForPage:v17], 0);

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
        [(PDFDocumentViewController *)v13->documentViewController goToPage:v17 direction:v15 animated:v4];
      }

      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [v16 postNotificationName:@"PDFViewChangedPage" object:self];
    }
  }

LABEL_18:
}

- (BOOL)isRectVisible:(CGRect)a3 onPage:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(PDFView *)self visiblePages];
  if ([v10 containsObject:v9])
  {
    [(PDFView *)self convertRect:v9 fromPage:x, y, width, height];
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
    v7 = [(PDFView *)self currentPage];
    [(PDFView *)self _unboundAutoScaleFactorForPage:v7];
    v9 = v8;

    return v9;
  }

  return result;
}

- (void)setScaleFactor:(double)a3 anchorPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(PDFView *)self setAutoScales:0];
  [(PDFView *)self bounds];
  v9 = v8;
  v10 = [(PDFView *)self documentView];
  [(PDFView *)self convertPoint:v10 toView:x, y];
  v11 = v9 / a3;
  v43 = a3;
  v14 = PDFRectMakeFromCenter(v12, v13, v9 / a3);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = self->_private->scrollView;
  v22 = self->_private;
  if (!v22->isUsingPageViewController)
  {
    goto LABEL_10;
  }

  v23 = [(PDFDocumentViewController *)v22->documentViewController currentPage];
  v24 = [(PDFDocumentViewController *)self->_private->documentViewController findPageViewControllerForPageIndex:[(PDFDocument *)self->_private->document indexForPage:v23]];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 scrollView];

    v27 = [v25 pageView];

    if (v26)
    {
      v28 = v27 == 0;
    }

    else
    {
      v28 = 1;
    }

    if (!v28)
    {
      [(PDFView *)self convertPoint:v27 toView:x, y];
      v14 = PDFRectMakeFromCenter(v29, v30, v11);
      v16 = v31;
      v18 = v32;
      v20 = v33;

      v21 = v26;
      v10 = v27;
LABEL_10:
      [v10 bounds];
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
      v10 = v10;
      v47 = v10;
      v49 = v38;
      v50 = v39;
      v51 = width;
      v52 = height;
      [v42 animateWithDuration:v45 animations:0.25];

      goto LABEL_11;
    }

    v21 = v26;
    v10 = v27;
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

- (void)setDisplaysBookmarksForPages:(BOOL)a3
{
  v3 = self->_private;
  if (v3->displaysBookmarksForPages != a3)
  {
    v3->displaysBookmarksForPages = a3;
    [(PDFView *)self _updateBookmarksForPages];
  }
}

- (void)_updateBookmarksForPages
{
  v3 = [(PDFDocument *)self->_private->document bookmarkedPages];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__PDFView__updateBookmarksForPages__block_invoke;
  v4[3] = &unk_1E8152758;
  v4[4] = self;
  [v3 enumerateIndexesUsingBlock:v4];
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

- (id)pageViewForPageAtIndex:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = self->_private;
  if (v4->isUsingPageViewController)
  {
    [(PDFDocumentViewController *)v4->documentViewController pageViews];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v19 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 page];
          v12 = [v11 document];
          v13 = [v12 indexForPage:v11];

          if (v13 == a3)
          {
            v14 = v10;

            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
    v5 = [(PDFScrollView *)v4->scrollView pdfDocumentView];
    v14 = [v5 pageViewForPageAtIndex:a3];
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

- (void)setEnableTileUpdates:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  [(PDFRenderingProperties *)self->_private->renderingProperties setEnableTileUpdates:?];
  if (v3)
  {
    v5 = [(PDFView *)self visiblePageViews];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setNeedsTilesUpdate];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)forceTileRefresh
{
  if (self->_private)
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 bundleIdentifier];
    v5 = [v4 isEqualToString:@"com.apple.Preview"];

    if ((v5 & 1) == 0)
    {

      [(PDFView *)self internalForceTileRefresh];
    }
  }
}

- (void)internalForceTileRefresh
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(PDFView *)self visiblePageViews];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) forceTileUpdate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)internalForceAnnotationRefresh
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(PDFView *)self visiblePages];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
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

        v8 = [*(*(&v9 + 1) + 8 * i) annotations];
        [v8 makeObjectsPerformSelector:sel_updateAnnotationEffect];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)highlightPDFRedactions:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x1E69E9840];
  v4 = [(PDFView *)self visiblePages];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
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

        v10 = [*(*(&v19 + 1) + 8 * v9) annotations];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
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
                objc_enumerationMutation(v10);
              }

              [*(*(&v15 + 1) + 8 * v14++) highlightRedaction:v3];
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
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

- (void)highlightDetectedFormFields:(BOOL)a3
{
  v3 = a3;
  v28 = *MEMORY[0x1E69E9840];
  v4 = [(PDFView *)self visiblePages];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
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

        v8 = [*(*(&v22 + 1) + 8 * i) annotations];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v18 + 1) + 8 * j);
              v14 = [v13 valueForAnnotationKey:@"/AAPL:SFF"];

              if (v14)
              {
                v15 = [v13 akAnnotation];
                [v15 setHighlighted:v3];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
  v3 = [(PDFView *)self currentPage];
  if (v3)
  {
    v7 = v3;
    v4 = [(PDFView *)self document];
    v5 = [v4 indexForPage:v7];

    v6 = [v7 string];
    NSLog(&cfstr_PageLuText.isa, v5, v6);

    v3 = v7;
  }
}

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = PDFView;
  [(PDFView *)&v3 setNeedsDisplay];
  [(PDFView *)self forceTileRefresh];
}

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = PDFView;
  [(PDFView *)&v4 setNeedsDisplayInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PDFView *)self forceTileRefresh];
}

- (void)_tileRefresh
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_private)
  {
    v3 = [(PDFView *)self visiblePageViews];
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

    [(PDFTimer *)self->_private->tilesSyncTimer update];
  }
}

- (BOOL)isOverLinkAnnotation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (void)setGutterWidth:(double)a3
{
  [(PDFView *)self gutterWidth];
  if (v5 != a3)
  {
    [(PDFView *)self gutterWidth];
    if (v6 >= 0.0)
    {
      v9 = MEMORY[0x1E696AD98];
      [(PDFView *)self gutterWidth];
      *&v10 = v10;
      v11 = [v9 numberWithFloat:v10];
      self->_private->gutterWide = a3;
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

- (void)setForcesTopAlignment:(BOOL)a3
{
  [(PDFScrollView *)self->_private->scrollView setForcesTopAlignment:a3];

  [(PDFView *)self layoutDocumentView];
}

- (id)_getDocumentAKController
{
  document = self->_private->document;
  if (document)
  {
    v3 = [(PDFDocument *)document akDocumentAdaptor];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 akMainController];
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

  return v5;
}

- (id)akToolbarView
{
  if ([(PDFDocument *)self->_private->document isLocked])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(PDFView *)self _getDocumentAKController];
    if (v4)
    {
      v5 = [(PDFDocument *)self->_private->document akDocumentAdaptor];
      v3 = [v5 akToolbarView];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)setAkToolbarViewTintColor:(id)a3
{
  v5 = a3;
  v4 = [(PDFView *)self akToolbarView];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setBarTintColor:v5];
    }
  }
}

- (id)akToolbarViewTintColor
{
  v2 = [(PDFView *)self akToolbarView];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 barTintColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAkToolbarViewItemTintColor:(id)a3
{
  v5 = a3;
  v4 = [(PDFView *)self akToolbarView];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setTintColor:v5];
    }
  }
}

- (id)akToolbarViewItemTintColor
{
  v2 = [(PDFView *)self akToolbarView];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 tintColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)akUndoToolbarItem
{
  v2 = [(PDFView *)self _getDocumentAKController];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 toolbarButtonItemOfType:10];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)akRedoToolbarItem
{
  v2 = [(PDFView *)self _getDocumentAKController];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 toolbarButtonItemOfType:11];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)akAnnotationEditingEnabled
{
  v2 = [(PDFView *)self _getDocumentAKController];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 annotationEditingEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAkAnnotationEditingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PDFView *)self _getDocumentAKController];
  if (v5)
  {
    v10 = v5;
    v6 = [v5 annotationEditingEnabled] == v3;
    v5 = v10;
    if (!v6)
    {
      [v10 setAnnotationEditingEnabled:v3];
      if (v3)
      {
        v7 = objc_opt_new();
        [v7 setTag:763000];
        [v10 performActionForSender:v7];
      }

      else
      {
        v8 = [v10 modelController];
        [v8 deselectAllAnnotations];

        [v10 resetToDefaultToolMode];
      }

      v9 = self->_private;
      v5 = v10;
      if (v9->isUsingPageViewController)
      {
        [(PDFDocumentViewController *)v9->documentViewController setScrollViewScrollEnabled:v3 ^ 1];
        v5 = v10;
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

- (void)setFormDetectionEnabled:(BOOL)a3
{
  if (self->_formDetectionEnabled != a3)
  {
    self->_formDetectionEnabled = a3;
    if (a3)
    {
      [(PDFView *)self visiblePagesChanged:0];
    }
  }
}

- (void)setNewPageVisibilityDelegate:(id)a3 withOldDelegate:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 != v7)
  {
    v8 = self->_private;
    if (v8->isUsingPageViewController)
    {
      v9 = [(PDFDocumentViewController *)v8->documentViewController pageViews];
    }

    else
    {
      v10 = [(PDFScrollView *)v8->scrollView pdfDocumentView];
      v9 = [v10 pageViews];
    }

    objc_storeWeak(&self->_private->delegate, v7);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v11 = v9;
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
            if (v7)
            {
              v17 = [v16 visibilityDelegateIndex];
              [(PDFView *)self callPageVisibilityDelegateMethod:2 forPageView:v16 atPageIndex:v17];
              v18 = v17;
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

    objc_storeWeak(&self->_private->delegate, v6);
    if (v6)
    {
      v29 = v7;
      v30 = v6;
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
            v25 = [v24 page];
            v26 = [v25 document];
            v27 = [v24 page];
            v28 = [v26 indexForPage:v27];

            [(PDFView *)self callPageVisibilityDelegateMethod:0 forPageView:v24 atPageIndex:v28];
            [(PDFView *)self callPageVisibilityDelegateMethod:1 forPageView:v24 atPageIndex:v28];
          }

          v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v21);
      }

      v7 = v29;
      v6 = v30;
      v11 = v31;
    }
  }
}

- (void)callPageVisibilityDelegateMethod:(int)a3 forPageView:(id)a4 atPageIndex:(unint64_t)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (a5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    WeakRetained = objc_loadWeakRetained(&self->_private->delegate);
    v10 = self->_overlayViewController;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v23 = [v8 page];
          [WeakRetained pdfView:self willRemoveView:v8 forPage:v23 atIndex:a5];
        }

        v24 = [v8 page];
        [(PDFOverlayViewsController *)v10 pdfView:self willRemoveView:v8 forPage:v24 atIndex:a5];

        [(PDFCoachMarkManager *)self->_private->coachMarkManager pageLayerWillRemove:v8];
        goto LABEL_34;
      }

      if (a3 == 3)
      {
        if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v13 = [v8 page];
          [WeakRetained pdfView:self didRemoveView:v8 forPage:v13 atIndex:a5];
        }

        [v8 setVisibilityDelegateIndex:0x7FFFFFFFFFFFFFFFLL];
        v14 = [v8 page];
        v15 = [(PDFView *)self visiblePageViews];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v25 + 1) + 8 * v19);
              if (v20 != v8)
              {
                v21 = [*(*(&v25 + 1) + 8 * v19) page];

                if (v21 == v14)
                {
                  [v20 setVisibilityDelegateIndex:0x7FFFFFFFFFFFFFFFLL];
                }
              }

              ++v19;
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v17);
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (!a3)
      {
        if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v22 = [v8 page];
          [WeakRetained pdfView:self willAddView:v8 forPage:v22 atIndex:a5];
        }

        [v8 setVisibilityDelegateIndex:a5];
        goto LABEL_34;
      }

      if (a3 == 1)
      {
        if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v11 = [v8 page];
          [WeakRetained pdfView:self didAddView:v8 forPage:v11 atIndex:a5];
        }

        v12 = [v8 page];
        [(PDFOverlayViewsController *)v10 pdfView:self didAddView:v8 forPage:v12 atIndex:a5];

        [(PDFCoachMarkManager *)self->_private->coachMarkManager pageLayerDidAppear:v8];
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
    v4 = [(PDFDocumentViewController *)v3->documentViewController pageViews];
  }

  else
  {
    v5 = [(PDFScrollView *)v3->scrollView pdfDocumentView];
    v4 = [v5 pageViews];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
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
        v12 = [v11 visibilityDelegateIndex];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = v12;
          [(PDFView *)self callPageVisibilityDelegateMethodForOverlayAdaptorOnly:0 forPageView:v11 atPageIndex:v12];
          [(PDFView *)self callPageVisibilityDelegateMethodForOverlayAdaptorOnly:1 forPageView:v11 atPageIndex:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)callPageVisibilityDelegateMethodForOverlayAdaptorOnly:(int)a3 forPageView:(id)a4 atPageIndex:(unint64_t)a5
{
  v10 = a4;
  v8 = self->_overlayViewController;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v9 = [v10 page];
      [(PDFOverlayViewsController *)v8 pdfView:self willRemoveView:v10 forPage:v9 atIndex:a5];
      goto LABEL_9;
    }

    if (a3 == 3)
    {
      goto LABEL_10;
    }

LABEL_7:
    NSLog(&cfstr_IncorrectCallI.isa);
    goto LABEL_10;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  if (a3 != 1)
  {
    goto LABEL_7;
  }

  v9 = [v10 page];
  [(PDFOverlayViewsController *)v8 pdfView:self didAddView:v10 forPage:v9 atIndex:a5];
LABEL_9:

LABEL_10:
}

- (void)setShowsScrollIndicators:(BOOL)a3
{
  v3 = self->_private;
  if (v3->showsScrollIndicators != a3)
  {
    v3->showsScrollIndicators = a3;
    [(PDFView *)self positionInternalViews:0];
  }
}

- (void)setScrollViewScrollEnabled:(BOOL)a3
{
  v3 = a3;
  [(PDFScrollView *)self->_private->scrollView setScrollEnabled:?];
  scrollView = self->_private->scrollView;

  [(PDFScrollView *)scrollView setUserInteractionEnabled:v3];
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
  v2 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
  [v2 documentViewSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)updatePDFViewLayout:(CGRect)a3 scrollViewFrame:(CGRect)a4 zoomScale:(double)a5
{
  self->_private->extensionViewBoundsInDocument = a3;
  self->_private->extensionViewFrame = a4;
  self->_private->extensionViewZoomScale = a5;
  v5 = [(PDFScrollView *)self->_private->scrollView pdfDocumentView];
  [v5 updateVisibility];
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

- (CGRect)convertRectToRootView:(CGRect)a3 fromPageLayer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(PDFView *)self layer];
  [v9 convertRect:v10 toLayer:{x, y, width, height}];
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
    v22 = [(PDFView *)self layer];
    [v22 bounds];
    v21 = v23 - v18 - v14;
  }

  v24 = [(PDFView *)self layer];
  [v24 convertRect:0 toLayer:{v12, v21, v16, v18}];
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

- (CGRect)convertRootViewRect:(CGRect)a3 toPageLayer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  [(PDFView *)self mainScreenScale];
  v11 = x / v10;
  v12 = y / v10;
  v13 = width / v10;
  v14 = height / v10;
  v15 = [(PDFView *)self layer];
  [v15 convertRect:0 fromLayer:{v11, v12, v13, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(PDFView *)self layer];
  [v24 bounds];
  v26 = v25 - v23 - v19;

  v27 = [(PDFView *)self layer];
  [v9 convertRect:v27 fromLayer:{v17, v26, v21, v23}];
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
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
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
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];
  v4 = v3;

  return v4;
}

- (id)pageOverlayViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_pageOverlayViewProvider);

  return WeakRetained;
}

- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_1C1D6C4BC();
  sub_1C1D6C4AC();
  sub_1C1D6C49C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a4;
  v11 = self;
  PDFView._intelligenceCollectContent(in:collector:)(v10, x, y, width, height);
}

@end