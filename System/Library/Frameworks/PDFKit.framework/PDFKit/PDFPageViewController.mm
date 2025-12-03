@interface PDFPageViewController
- (PDFPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)autoScaleFactor;
- (id)pdfView;
- (void)_buildPDFPageView;
- (void)_centerAlign;
- (void)_removePDFView;
- (void)_setupGestureRecognizerDependencies;
- (void)_updateAnnotations;
- (void)dealloc;
- (void)enforceAutoScaleFactor;
- (void)removeAKOverlay;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale;
- (void)scrollViewDidZoom:(id)zoom;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)setAutoScales:(BOOL)scales;
- (void)setBackgroundImage:(id)image atBackgroundQuality:(int)quality;
- (void)setMinScaleFactor:(double)factor withMaxScaleFactor:(double)scaleFactor;
- (void)setScaleFactor:(double)factor;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation PDFPageViewController

- (void)setAutoScales:(BOOL)scales
{
  if (scales)
  {
    [(PDFPageViewController *)self enforceAutoScaleFactor];
  }
}

- (void)enforceAutoScaleFactor
{
  [(PDFPageViewController *)self autoScaleFactor];
  v4 = v3;
  v5 = self->_private;
  if (v5->minScale > v3)
  {
    v5->minScale = v3;
    [(UIScrollView *)self->_private->scrollView setMinimumZoomScale:v3];
    v5 = self->_private;
  }

  if (v5->maxScale < v4)
  {
    v5->maxScale = v4;
    [(UIScrollView *)self->_private->scrollView setMaximumZoomScale:v4];
    v5 = self->_private;
  }

  scrollView = v5->scrollView;

  [(UIScrollView *)scrollView setZoomScale:v4];
}

- (void)setMinScaleFactor:(double)factor withMaxScaleFactor:(double)scaleFactor
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  if (WeakRetained)
  {
    self->_private->minScale = factor;
    self->_private->maxScale = scaleFactor;
    v11 = WeakRetained;
    [(UIScrollView *)self->_private->scrollView setMinimumZoomScale:factor];
    [(UIScrollView *)self->_private->scrollView setMaximumZoomScale:scaleFactor];
    if ([v11 autoScales])
    {
      scrollView = self->_private->scrollView;
      if (scrollView)
      {
        [(UIScrollView *)scrollView zoomScale];
        if (v9 < factor || v9 > scaleFactor)
        {
          [v11 setAutoScales:0];
        }
      }
    }

    [(UIScrollView *)self->_private->scrollView zoomScale];
    [(PDFPageViewController *)self setScaleFactor:?];
    WeakRetained = v11;
  }
}

- (void)setScaleFactor:(double)factor
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v6 = CGFloatClamp(factor, self->_private->minScale, self->_private->maxScale);
    if ([v11 autoScales])
    {
      scrollView = self->_private->scrollView;
      if (scrollView)
      {
        [(UIScrollView *)scrollView zoomScale];
        v9 = v8;
        [(PDFPageViewController *)self autoScaleFactor];
        if (vabdd_f64(v10, v9) > 0.001)
        {
          [v11 setAutoScales:0];
        }
      }
    }

    [(UIScrollView *)self->_private->scrollView setZoomScale:v6];
    WeakRetained = v11;
  }
}

- (double)autoScaleFactor
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    -[PDFPage boundsForBox:](self->_private->page, "boundsForBox:", [WeakRetained displayBox]);
    PDFRectRotate([(PDFPage *)self->_private->page rotation], v5, v6);
    v8 = v7;
    v10 = v9;
    v11 = PDFPointMake(0.0, 0.0);
    v13 = v12;
    v14 = self->_private;
    v15 = v8 + v14->pageMargins.left + v14->pageMargins.right;
    v16 = v10 + v14->pageMargins.top + v14->pageMargins.bottom;
    [v4 bounds];
    v21 = PDFScaleRectToRect(v11, v13, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = 1.0;
  }

  return v21;
}

- (void)setBackgroundImage:(id)image atBackgroundQuality:(int)quality
{
  imageCopy = image;
  v8 = self->_private;
  pageView = v8->pageView;
  v10 = imageCopy;
  if (pageView)
  {
    [PDFPageView setBackgroundImage:"setBackgroundImage:atBackgroundQuality:" atBackgroundQuality:?];
  }

  else
  {
    objc_storeStrong(&v8->backgroundImage, image);
    self->_private->backgroundQuality = quality;
  }
}

- (PDFPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = PDFPageViewController;
  v4 = [(PDFPageViewController *)&v8 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = objc_alloc_init(PDFPageViewControllerPrivate);
    v6 = v4->_private;
    v4->_private = v5;

    v4->_private->minScale = 0.25;
    v4->_private->maxScale = 5.0;
  }

  return v4;
}

- (void)dealloc
{
  [(PDFPageViewController *)self _removePDFView];
  v3.receiver = self;
  v3.super_class = PDFPageViewController;
  [(PDFPageViewController *)&v3 dealloc];
}

- (void)removeAKOverlay
{
  v6 = self->_private->pageView;
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  if (v6)
  {
    document = [(PDFPage *)self->_private->page document];
    v5 = [document indexForPage:self->_private->page];

    [WeakRetained callPageVisibilityDelegateMethod:2 forPageView:v6 atPageIndex:v5];
    [WeakRetained callPageVisibilityDelegateMethod:3 forPageView:v6 atPageIndex:v5];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = PDFPageViewController;
  [(PDFPageViewController *)&v8 viewWillAppear:appear];
  if (self->_private->page)
  {
    [(PDFPageViewController *)self _buildPDFPageView];
    [(PDFPageView *)self->_private->pageView setEnableTileUpdates:1];
    [(PDFPageView *)self->_private->pageView setNeedsTilesUpdate];
    WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
    currentSelection = [WeakRetained currentSelection];
    [WeakRetained setCurrentSelection:currentSelection];

    document = [(PDFPage *)self->_private->page document];
    v7 = [document indexForPage:self->_private->page];

    [WeakRetained callPageVisibilityDelegateMethod:0 forPageView:self->_private->pageView atPageIndex:v7];
    [WeakRetained callPageVisibilityDelegateMethod:1 forPageView:self->_private->pageView atPageIndex:v7];
    [(PDFPageViewController *)self _updateAnnotations];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PDFPageViewController;
  [(PDFPageViewController *)&v4 viewDidAppear:appear];
  [(PDFPageView *)self->_private->pageView setEnableTileUpdates:1];
  [(PDFPageView *)self->_private->pageView setNeedsTilesUpdate];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PDFPageViewController;
  [(PDFPageViewController *)&v4 viewWillDisappear:disappear];
  [(PDFPageView *)self->_private->pageView setEnableTileUpdates:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PDFPageViewController;
  [(PDFPageViewController *)&v4 viewDidDisappear:disappear];
  [(PDFPage *)self->_private->page setView:0];
  [(PDFPageViewController *)self removeAKOverlay];
  [(PDFPageView *)self->_private->pageView setBackgroundImage:0 atBackgroundQuality:2];
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = PDFPageViewController;
  [(PDFPageViewController *)&v7 viewWillLayoutSubviews];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  autoScales = [WeakRetained autoScales];

  if (autoScales)
  {
    [(PDFPageViewController *)self enforceAutoScaleFactor];
  }

  scrollView = self->_private->scrollView;
  view = [(PDFPageViewController *)self view];
  [view bounds];
  [(UIScrollView *)scrollView setFrame:?];

  [(PDFPageViewController *)self _centerAlign];
}

- (void)_buildPDFPageView
{
  v42 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  [(PDFPage *)self->_private->page setView:WeakRetained];
  if (self->_private->pageView)
  {
    [(PDFPageViewController *)self enforceAutoScaleFactor];
    [(PDFPageView *)self->_private->pageView setBackgroundImage:self->_private->backgroundImage atBackgroundQuality:self->_private->backgroundQuality];
  }

  else
  {
    v4 = WeakRetained;
    v5 = [[PDFPageView alloc] initWithPage:self->_private->page geometryInterface:v4 andRenderingProperties:self->_private->renderingProperties];
    v6 = self->_private;
    pageView = v6->pageView;
    v6->pageView = v5;

    -[PDFPage boundsForBox:](self->_private->page, "boundsForBox:", [v4 displayBox]);
    PDFRectRotate([(PDFPage *)self->_private->page rotation], v8, v9);
    v11 = v10;
    v13 = v12;
    [(PDFPageView *)self->_private->pageView setFrame:PDFPointMake(0.0, 0.0)];
    v36 = v4;
    highlightedSelections = [v4 highlightedSelections];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v15 = [highlightedSelections countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(highlightedSelections);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          pages = [v19 pages];
          v21 = [pages containsObject:self->_private->page];

          if (v21)
          {
            [(PDFPageView *)self->_private->pageView addSearchSelection:v19];
          }
        }

        v16 = [highlightedSelections countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v16);
    }

    v22 = objc_alloc(MEMORY[0x1E69DCEF8]);
    view = [(PDFPageViewController *)self view];
    [view bounds];
    v24 = [v22 initWithFrame:?];
    v25 = self->_private;
    scrollView = v25->scrollView;
    v25->scrollView = v24;

    [(UIScrollView *)self->_private->scrollView setDelegate:self];
    [(UIScrollView *)self->_private->scrollView _setAutoScrollEnabled:0];
    [(UIScrollView *)self->_private->scrollView setContentSize:v11, v13];
    [(UIScrollView *)self->_private->scrollView setMinimumZoomScale:self->_private->minScale];
    [(UIScrollView *)self->_private->scrollView setMaximumZoomScale:self->_private->maxScale];
    v27 = [[PDFTextInputView alloc] initWithDelegate:self];
    v28 = self->_private;
    pageViewContainerView = v28->pageViewContainerView;
    v28->pageViewContainerView = v27;

    v30 = self->_private;
    v31 = v30->pageViewContainerView;
    [(PDFPageView *)v30->pageView frame];
    [(PDFTextInputView *)v31 setFrame:?];
    [(PDFTextInputView *)self->_private->pageViewContainerView addSubview:self->_private->pageView];
    [(PDFPageView *)self->_private->pageView setBackgroundImage:self->_private->backgroundImage atBackgroundQuality:self->_private->backgroundQuality];
    [(UIScrollView *)self->_private->scrollView addSubview:self->_private->pageViewContainerView];
    view2 = [(PDFPageViewController *)self view];
    [view2 addSubview:self->_private->scrollView];

    [(PDFPageViewController *)self _setupGestureRecognizerDependencies];
    [(PDFPageViewController *)self enforceAutoScaleFactor];
    [(PDFPageViewController *)self _centerAlign];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_changedBoundsForBoxNotification_ name:@"PDFPageChangedBoundsForBox" object:self->_private->page];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_didRotatePageNotification_ name:@"PDFPageDidRotate" object:self->_private->page];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel_didRotatePageNotification_ name:@"PDFPageDidChangeBounds" object:self->_private->page];
  }
}

- (void)_setupGestureRecognizerDependencies
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  longPressGestureRecognizer = [WeakRetained longPressGestureRecognizer];
  if (longPressGestureRecognizer)
  {
    panGestureRecognizer = [(UIScrollView *)self->_private->scrollView panGestureRecognizer];
    [panGestureRecognizer requireGestureRecognizerToFail:longPressGestureRecognizer];
  }

  [(PDFTextInputView *)self->_private->pageViewContainerView updateGestureRecognizerDependencies];
}

- (void)_removePDFView
{
  pageView = self->_private->pageView;
  if (pageView)
  {
    [(PDFPageView *)pageView removeFromSuperview];
    v4 = self->_private;
    v5 = v4->pageView;
    v4->pageView = 0;

    [(UIScrollView *)self->_private->scrollView removeFromSuperview];
    v6 = self->_private;
    scrollView = v6->scrollView;
    v6->scrollView = 0;
  }
}

- (void)_updateAnnotations
{
  v18 = *MEMORY[0x1E69E9840];
  annotations = [(PDFPage *)self->_private->page annotations];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [annotations countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(annotations);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
        pageLayer = [(PDFPageView *)self->_private->pageView pageLayer];
        [WeakRetained convertRectToRootView:pageLayer fromPageLayer:{0.0, 0.0, 1.0, 1.0}];
        v12 = v11;

        [v8 setScaleFactor:v12];
        [(PDFPageView *)self->_private->pageView updateAnnotation:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [annotations countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (id)pdfView
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);

  return WeakRetained;
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  [(PDFPageView *)self->_private->pageView setNeedsTilesUpdate:zooming];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  [WeakRetained setAutoScales:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PDFTextSelectionMenuWillChangeScrollPosition" object:self];
}

- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale
{
  [(PDFPageView *)self->_private->pageView setNeedsTilesUpdate:zooming];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  [WeakRetained setAutoScales:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PDFViewScaleChanged" object:WeakRetained];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"PDFScrollViewDidChangeZoomFactor" object:self];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 postNotificationName:@"PDFTextSelectionMenuDidChangeScrollPosition" object:self];
}

- (void)scrollViewDidZoom:(id)zoom
{
  [(PDFPageView *)self->_private->pageView setNeedsTilesUpdate];
  [(PDFPageViewController *)self _centerAlign];
  [(PDFPageView *)self->_private->pageView updateBookmark];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PDFScrollViewDidChangeZoomFactor" object:self];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PDFTextSelectionMenuWillChangeScrollPosition" object:self];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PDFTextSelectionMenuDidChangeScrollPosition" object:self];
}

- (void)_centerAlign
{
  v15 = self->_private->pageViewContainerView;
  [(PDFTextInputView *)v15 center];
  [(UIScrollView *)self->_private->scrollView bounds];
  v4 = v3;
  [(UIScrollView *)self->_private->scrollView contentSize];
  v6 = (v4 - v5) * 0.5;
  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  [(UIScrollView *)self->_private->scrollView contentSize];
  v9 = v7 + v8 * 0.5;
  [(UIScrollView *)self->_private->scrollView bounds];
  v11 = v10;
  [(UIScrollView *)self->_private->scrollView contentSize];
  if ((v11 - v12) * 0.5 >= 0.0)
  {
    v13 = (v11 - v12) * 0.5;
  }

  else
  {
    v13 = 0.0;
  }

  [(UIScrollView *)self->_private->scrollView contentSize];
  [(PDFTextInputView *)v15 setCenter:v9, v13 + v14 * 0.5];
}

@end