@interface PDFDocumentViewController
- (CGPoint)_convertPoint:(CGPoint)point fromPDFPageViewController:(id)controller;
- (CGPoint)_convertPoint:(CGPoint)point toPDFPageViewController:(id)controller;
- (CGPoint)convertPoint:(CGPoint)point fromPage:(id)page;
- (CGPoint)convertPoint:(CGPoint)point toPage:(id)page;
- (PDFDocumentViewController)initWithPDFView:(id)view pageIndex:(unint64_t)index navigationOrientation:(int64_t)orientation withRenderingProperties:(id)properties andOptions:(id)options;
- (double)autoScaleFactor;
- (double)scaleFactor;
- (id)_pageViewController:(id)controller nextViewController:(int)viewController forViewController:(id)forViewController;
- (id)_pageViewControllerCreate:(unint64_t)create;
- (id)backgroundImageForPage:(id)page withQuality:(int *)quality;
- (id)currentPage;
- (id)document;
- (id)findPageViewControllerForPageIndex:(int64_t)index;
- (id)pageForPoint:(CGPoint)point nearest:(BOOL)nearest;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (id)pageViews;
- (id)scrollView;
- (id)selection;
- (void)_loadDocument:(unint64_t)document;
- (void)_setupDocument:(unint64_t)document;
- (void)_updateCurrentPageViewController:(id)controller;
- (void)dealloc;
- (void)didInsertPage:(id)page atIndex:(unint64_t)index;
- (void)didRemovePage:(id)page atIndex:(unint64_t)index;
- (void)goToPage:(id)page direction:(int64_t)direction animated:(BOOL)animated;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers;
- (void)recieveBackgroundImage:(id)image atBackgroundQuality:(int)quality forPage:(id)page;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setAutoScales:(BOOL)scales;
- (void)setMinScaleFactor:(double)factor withMaxScaleFactor:(double)scaleFactor;
- (void)setScaleFactor:(double)factor;
- (void)setScrollViewScrollEnabled:(BOOL)enabled;
- (void)setSelection:(id)selection;
- (void)updateScrollViews;
- (void)viewWillLayoutSubviews;
@end

@implementation PDFDocumentViewController

- (PDFDocumentViewController)initWithPDFView:(id)view pageIndex:(unint64_t)index navigationOrientation:(int64_t)orientation withRenderingProperties:(id)properties andOptions:(id)options
{
  v42 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  propertiesCopy = properties;
  optionsCopy = options;
  v40.receiver = self;
  v40.super_class = PDFDocumentViewController;
  v15 = [(PDFDocumentViewController *)&v40 initWithTransitionStyle:1 navigationOrientation:orientation options:optionsCopy];
  if (v15)
  {
    v35 = optionsCopy;
    v16 = objc_alloc_init(PDFDocumentViewControllerPrivate);
    v17 = v15->_private;
    v15->_private = v16;

    objc_storeWeak(&v15->_private->pdfView, viewCopy);
    objc_storeStrong(&v15->_private->renderingProperties, properties);
    v15->_private->minScale = 0.25;
    v15->_private->maxScale = 5.0;
    v15->_private->displaysRTL = 0;
    v18 = [[PDFPageBackgroundManager alloc] initWithDelegate:v15 andRenderingProperties:propertiesCopy];
    v19 = v15->_private;
    pageBackgroundManager = v19->pageBackgroundManager;
    v19->pageBackgroundManager = v18;

    v15->_private->weakPageViewControllersLock._os_unfair_lock_opaque = 0;
    v21 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    v22 = v15->_private;
    weakPageViewControllers = v22->weakPageViewControllers;
    v22->weakPageViewControllers = v21;

    [(PDFDocumentViewController *)v15 setDelegate:v15];
    [(PDFDocumentViewController *)v15 setDataSource:v15];
    [(PDFDocumentViewController *)v15 _setupDocument:index];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    view = [(PDFDocumentViewController *)v15 view];
    subviews = [view subviews];

    v26 = [subviews countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = *v37;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(subviews);
          }

          v31 = *(*(&v36 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = v31;

            v28 = v32;
          }
        }

        v27 = [subviews countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v27);
    }

    else
    {
      v28 = 0;
    }

    [v28 _setAutoScrollEnabled:0];
    objc_storeWeak(&v15->_private->scrollView, v28);
    [v28 setDelegate:v15];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel__documentChanged name:@"PDFViewChangedDocument" object:viewCopy];

    optionsCopy = v35;
  }

  return v15;
}

- (void)dealloc
{
  [(PDFPageBackgroundManager *)self->_private->pageBackgroundManager cancel];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PDFDocumentViewController;
  [(PDFDocumentViewController *)&v4 dealloc];
}

- (id)pageViews
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  viewControllers = [(PDFDocumentViewController *)self viewControllers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(viewControllers);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        pageView = [v9 pageView];

        if (pageView)
        {
          pageView2 = [v9 pageView];
          [v3 addObject:pageView2];
        }
      }

      v6 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)goToPage:(id)page direction:(int64_t)direction animated:(BOOL)animated
{
  animatedCopy = animated;
  v30 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  document = [WeakRetained document];
  v9 = [document indexForPage:pageCopy];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PDFDocumentViewController *)self viewControllers];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v10 = v25 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = *v25;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        pDFPage = [v14 PDFPage];
        v16 = pDFPage == pageCopy;

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v17 = v14;

      if (v17)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:
    }

    v17 = [(PDFDocumentViewController *)self _pageViewControllerCreate:v9];
LABEL_13:
    objc_initWeak(&location, self);
    v28 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __57__PDFDocumentViewController_goToPage_direction_animated___block_invoke;
    v21[3] = &unk_1E81513D8;
    objc_copyWeak(v22, &location);
    v22[1] = v9;
    [(PDFDocumentViewController *)self setViewControllers:v18 direction:direction animated:animatedCopy completion:v21];

    [(PDFDocumentViewController *)self _updateCurrentPageViewController:v17];
    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
  }
}

void __57__PDFDocumentViewController_goToPage_direction_animated___block_invoke(uint64_t a1, int a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (a2 && WeakRetained)
  {
    v6 = objc_loadWeakRetained((*(WeakRetained + 161) + 8));
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"PDFViewVisiblePagesChanged" object:v6];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = @"pageIndex";
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
    v12[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v8 postNotificationName:@"PDFDocumentViewControllerChangedPage" object:v6 userInfo:v10];
  }
}

- (id)currentPage
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activePageView);
  pDFPage = [WeakRetained PDFPage];

  return pDFPage;
}

- (void)setAutoScales:(BOOL)scales
{
  scalesCopy = scales;
  v14 = *MEMORY[0x1E69E9840];
  viewControllers = [(PDFDocumentViewController *)self viewControllers];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        [*(*(&v9 + 1) + 8 * v8++) setAutoScales:scalesCopy];
      }

      while (v6 != v8);
      v6 = [viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (double)autoScaleFactor
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activePageView);
  [WeakRetained autoScaleFactor];
  v4 = v3;

  return v4;
}

- (void)setMinScaleFactor:(double)factor withMaxScaleFactor:(double)scaleFactor
{
  v16 = *MEMORY[0x1E69E9840];
  self->_private->minScale = factor;
  self->_private->maxScale = scaleFactor;
  viewControllers = [(PDFDocumentViewController *)self viewControllers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(viewControllers);
        }

        [*(*(&v11 + 1) + 8 * v10++) setMinScaleFactor:factor withMaxScaleFactor:scaleFactor];
      }

      while (v8 != v10);
      v8 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setScaleFactor:(double)factor
{
  v14 = *MEMORY[0x1E69E9840];
  viewControllers = [(PDFDocumentViewController *)self viewControllers];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        [*(*(&v9 + 1) + 8 * v8++) setScaleFactor:factor];
      }

      while (v6 != v8);
      v6 = [viewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (double)scaleFactor
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activePageView);
  [WeakRetained scaleFactor];
  v4 = v3;

  return v4;
}

- (void)setSelection:(id)selection
{
  v15 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  viewControllers = [(PDFDocumentViewController *)self viewControllers];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        [*(*(&v10 + 1) + 8 * v9++) setSelection:selectionCopy];
      }

      while (v7 != v9);
      v7 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)selection
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activePageView);
  selection = [WeakRetained selection];

  return selection;
}

- (void)setScrollViewScrollEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  WeakRetained = objc_loadWeakRetained(&self->_private->scrollView);
  [WeakRetained setScrollEnabled:enabledCopy];
}

- (id)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_private->scrollView);

  return WeakRetained;
}

- (void)updateScrollViews
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  showsScrollIndicators = [WeakRetained showsScrollIndicators];

  scrollView = [(PDFDocumentViewController *)self scrollView];
  [scrollView setShowsVerticalScrollIndicator:showsScrollIndicators];

  scrollView2 = [(PDFDocumentViewController *)self scrollView];
  [scrollView2 setShowsHorizontalScrollIndicator:showsScrollIndicators];

  viewControllers = [(PDFDocumentViewController *)self viewControllers];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [viewControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(viewControllers);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        scrollView3 = [v12 scrollView];
        [scrollView3 setShowsVerticalScrollIndicator:showsScrollIndicators];

        scrollView4 = [v12 scrollView];
        [scrollView4 setShowsHorizontalScrollIndicator:showsScrollIndicators];
      }

      v9 = [viewControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (id)pageForPoint:(CGPoint)point nearest:(BOOL)nearest
{
  nearestCopy = nearest;
  y = point.y;
  x = point.x;
  v53 = *MEMORY[0x1E69E9840];
  [(PDFDocumentViewController *)self viewControllers];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = v51 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v46 = 0;
    v10 = *v49;
    v11 = 1.79769313e308;
    v12 = 0x1EBF19000uLL;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v48 + 1) + 8 * i);
        pageView = [v14 pageView];
        pDFPage = [v14 PDFPage];
        WeakRetained = objc_loadWeakRetained(*(&self->super.super.super.super.isa + *(v12 + 3864)) + 1);
        v18 = PDFRectToCGRect([pDFPage boundsForBox:{objc_msgSend(WeakRetained, "displayBox")}]);
        v20 = v19;
        v22 = v21;
        v24 = v23;
        [(PDFDocumentViewController *)self convertPoint:pDFPage toPage:x, y];
        v55.x = PDFPointToCGPoint(v25, v26);
        v55.y = v27;
        v56.origin.x = v18;
        v56.origin.y = v20;
        v56.size.width = v22;
        v56.size.height = v24;
        if (CGRectContainsPoint(v56, v55))
        {

          v44 = v46;
          goto LABEL_17;
        }

        if (nearestCopy)
        {
          v28 = v10;
          v29 = nearestCopy;
          v30 = v7;
          v31 = v12;
          view = [(PDFDocumentViewController *)self view];
          [pageView bounds];
          v33 = PDFRectToCGRect([view convertRect:pageView fromView:?]);
          v35 = v34;
          v37 = v36;
          v39 = v38;

          v57.origin.x = v33;
          v57.origin.y = v35;
          v57.size.width = v37;
          v57.size.height = v39;
          v40 = x - CGRectGetMidX(v57);
          v58.origin.x = v33;
          v58.origin.y = v35;
          v58.size.width = v37;
          v58.size.height = v39;
          MidY = CGRectGetMidY(v58);
          v42 = (y - MidY) * (y - MidY) + v40 * v40;
          if (v42 < v11)
          {
            v43 = pDFPage;

            v46 = v43;
            v11 = v42;
          }

          v12 = v31;
          v7 = v30;
          nearestCopy = v29;
          v10 = v28;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v46 = 0;
  }

  v44 = v46;
  pDFPage = v44;
LABEL_17:

  return pDFPage;
}

- (CGPoint)convertPoint:(CGPoint)point toPage:(id)page
{
  y = point.y;
  x = point.x;
  v30 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_private->activePageView);
  pDFPage = [WeakRetained PDFPage];

  if (pDFPage == pageCopy)
  {
    [(PDFDocumentViewController *)self _convertPoint:WeakRetained toPDFPageViewController:x, y];
    v17 = v21;
    v18 = v22;
  }

  else
  {
    [(PDFDocumentViewController *)self viewControllers];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v28 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          pDFPage2 = [v15 PDFPage];

          if (pDFPage2 == pageCopy)
          {
            [(PDFDocumentViewController *)self _convertPoint:v15 toPDFPageViewController:x, y];
            v17 = v19;
            v18 = v20;

            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v17 = *MEMORY[0x1E695EFF8];
    v18 = *(MEMORY[0x1E695EFF8] + 8);
  }

LABEL_13:

  v23 = v17;
  v24 = v18;
  result.y = v24;
  result.x = v23;
  return result;
}

- (CGPoint)_convertPoint:(CGPoint)point toPDFPageViewController:(id)controller
{
  y = point.y;
  x = point.x;
  controllerCopy = controller;
  v8 = PDFPointToCGPoint(x, y);
  v10 = v9;
  pDFPage = [controllerCopy PDFPage];
  pageView = [controllerCopy pageView];

  view = [(PDFDocumentViewController *)self view];
  [view convertPoint:pageView toView:{v8, v10}];
  v47 = v14;
  v16 = v15;

  [pageView bounds];
  v45 = v17 - v16;
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  [pDFPage boundsForBox:{objc_msgSend(WeakRetained, "displayBox")}];
  v43 = v19;
  v44 = v20;
  v22 = v21;
  v24 = v23;

  v26 = *MEMORY[0x1E695EFD0];
  v25 = *(MEMORY[0x1E695EFD0] + 8);
  v28 = *(MEMORY[0x1E695EFD0] + 16);
  v27 = *(MEMORY[0x1E695EFD0] + 24);
  v30 = *(MEMORY[0x1E695EFD0] + 32);
  v29 = *(MEMORY[0x1E695EFD0] + 40);
  rotation = [pDFPage rotation];
  v32.f64[0] = v47;
  v32.f64[1] = v45;
  if (rotation > 179)
  {
    if (rotation == 180)
    {
      v46 = v32;
      v37 = PDFDegToRad(180.0);
      v48.a = v26;
      v48.b = v25;
      v48.c = v28;
      v48.d = v27;
      v48.tx = v30;
      v48.ty = v29;
      CGAffineTransformRotate(&v49, &v48, v37);
      v35 = -v22 - v43;
      v34 = -v24 - v44;
      v48 = v49;
      goto LABEL_10;
    }

    if (rotation == 270)
    {
      v46 = v32;
      v36 = PDFDegToRad(270.0);
      v48.a = v26;
      v48.b = v25;
      v48.c = v28;
      v48.d = v27;
      v48.tx = v30;
      v48.ty = v29;
      CGAffineTransformRotate(&v49, &v48, v36);
      v35 = -v24 - v44;
      v48 = v49;
      v34 = v43;
      goto LABEL_10;
    }
  }

  else
  {
    if (!rotation)
    {
      v48.a = v26;
      v48.b = v25;
      v48.c = v28;
      v48.d = v27;
      v48.tx = v30;
      v48.ty = v29;
      v46 = v32;
      v35 = v43;
      v34 = v44;
      goto LABEL_10;
    }

    if (rotation == 90)
    {
      v46 = v32;
      v33 = PDFDegToRad(90.0);
      v48.a = v26;
      v48.b = v25;
      v48.c = v28;
      v48.d = v27;
      v48.tx = v30;
      v48.ty = v29;
      CGAffineTransformRotate(&v49, &v48, v33);
      v34 = -v22 - v43;
      v48 = v49;
      v35 = v44;
LABEL_10:
      CGAffineTransformTranslate(&v49, &v48, v35, v34);
      v32 = vaddq_f64(*&v49.tx, vmlaq_n_f64(vmulq_laneq_f64(*&v49.c, v46, 1), *&v49.a, v47));
    }
  }

  v38 = PDFPointFromCGPoint(v32.f64[0], v32.f64[1]);
  v40 = v39;

  v41 = v38;
  v42 = v40;
  result.y = v42;
  result.x = v41;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromPage:(id)page
{
  y = point.y;
  x = point.x;
  v30 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_private->activePageView);
  pDFPage = [WeakRetained PDFPage];

  if (pDFPage == pageCopy)
  {
    [(PDFDocumentViewController *)self _convertPoint:WeakRetained fromPDFPageViewController:x, y];
    v17 = v21;
    v18 = v22;
  }

  else
  {
    [(PDFDocumentViewController *)self viewControllers];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v28 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          pDFPage2 = [v15 PDFPage];

          if (pDFPage2 == pageCopy)
          {
            [(PDFDocumentViewController *)self _convertPoint:v15 fromPDFPageViewController:x, y];
            v17 = v19;
            v18 = v20;

            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v17 = *MEMORY[0x1E695EFF8];
    v18 = *(MEMORY[0x1E695EFF8] + 8);
  }

LABEL_13:

  v23 = v17;
  v24 = v18;
  result.y = v24;
  result.x = v23;
  return result;
}

- (CGPoint)_convertPoint:(CGPoint)point fromPDFPageViewController:(id)controller
{
  y = point.y;
  x = point.x;
  controllerCopy = controller;
  v45 = PDFPointToCGPoint(x, y);
  v46 = v8;
  pDFPage = [controllerCopy PDFPage];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  [pDFPage boundsForBox:{objc_msgSend(WeakRetained, "displayBox")}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  rotation = [pDFPage rotation];
  v20 = *(MEMORY[0x1E695EFD0] + 8);
  v22 = *(MEMORY[0x1E695EFD0] + 16);
  v21 = *(MEMORY[0x1E695EFD0] + 24);
  v24 = *(MEMORY[0x1E695EFD0] + 32);
  v23 = *(MEMORY[0x1E695EFD0] + 40);
  v25.f64[0] = v45;
  v25.f64[1] = v46;
  v47 = v25;
  if (rotation > 179)
  {
    if (rotation == 180)
    {
      v48.a = *MEMORY[0x1E695EFD0];
      v48.b = v20;
      v48.c = v22;
      v48.d = v21;
      v48.tx = v24;
      v48.ty = v23;
      CGAffineTransformTranslate(&v49, &v48, v16 + v12, v18 + v14);
      tx = v49.tx;
      ty = v49.ty;
      v43 = *&v49.c;
      v44 = *&v49.a;
      v28 = 180.0;
      goto LABEL_10;
    }

    if (rotation == 270)
    {
      v48.a = *MEMORY[0x1E695EFD0];
      v48.b = v20;
      v48.c = v22;
      v48.d = v21;
      v48.tx = v24;
      v48.ty = v23;
      CGAffineTransformTranslate(&v49, &v48, v18 + v14, -v12);
      tx = v49.tx;
      ty = v49.ty;
      v43 = *&v49.c;
      v44 = *&v49.a;
      v28 = 90.0;
      goto LABEL_10;
    }
  }

  else
  {
    if (!rotation)
    {
      v48.a = *MEMORY[0x1E695EFD0];
      v48.b = v20;
      v48.c = v22;
      v48.d = v21;
      v48.tx = v24;
      v48.ty = v23;
      CGAffineTransformTranslate(&v49, &v48, -v12, -v14);
LABEL_11:
      v47 = vaddq_f64(*&v49.tx, vmlaq_n_f64(vmulq_laneq_f64(*&v49.c, v47, 1), *&v49.a, v45));
      goto LABEL_12;
    }

    if (rotation == 90)
    {
      v48.a = *MEMORY[0x1E695EFD0];
      v48.b = v20;
      v48.c = v22;
      v48.d = v21;
      v48.tx = v24;
      v48.ty = v23;
      CGAffineTransformTranslate(&v49, &v48, -v14, v16 + v12);
      tx = v49.tx;
      ty = v49.ty;
      v43 = *&v49.c;
      v44 = *&v49.a;
      v28 = 270.0;
LABEL_10:
      v29 = PDFDegToRad(v28);
      *&v48.a = v44;
      *&v48.c = v43;
      v48.tx = tx;
      v48.ty = ty;
      CGAffineTransformRotate(&v49, &v48, v29);
      goto LABEL_11;
    }
  }

LABEL_12:
  pageView = [controllerCopy pageView];
  [pageView bounds];
  v32 = v31 - v47.f64[1];
  view = [(PDFDocumentViewController *)self view];
  [view convertPoint:pageView fromView:{v47.f64[0], v32}];
  v35 = v34;
  v37 = v36;

  v38 = PDFPointFromCGPoint(v35, v37);
  v40 = v39;

  v41 = v38;
  v42 = v40;
  result.y = v42;
  result.x = v41;
  return result;
}

- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers
{
  firstObject = [controllers firstObject];
  [(PDFDocumentViewController *)self _updateCurrentPageViewController:firstObject];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PDFViewVisiblePagesChanged" object:WeakRetained];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"PDFTextSelectionMenuWillChangeScrollPosition" object:WeakRetained];

  os_unfair_lock_lock(&self->_private->weakPageViewControllersLock);
  [(NSHashTable *)self->_private->weakPageViewControllers addObject:firstObject];
  os_unfair_lock_unlock(&self->_private->weakPageViewControllersLock);
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  animatingCopy = animating;
  v33 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  if (completed)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = controllersCopy;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        v15 = 0;
        do
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          pageView = [*(*(&v26 + 1) + 8 * v15) pageView];
          [pageView clearTiles];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v13);
    }

    [WeakRetained clearSelection];
  }

  else
  {
    firstObject = [controllersCopy firstObject];
    [(PDFDocumentViewController *)self _updateCurrentPageViewController:firstObject];
  }

  if (animatingCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PDFTextSelectionMenuDidChangeScrollPosition" object:WeakRetained];
  }

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"PDFViewVisiblePagesChanged" object:WeakRetained];

  document = [WeakRetained document];
  currentPage = [(PDFDocumentViewController *)self currentPage];
  v22 = [document indexForPage:currentPage];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  v30 = @"pageIndex";
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22];
  v31 = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  [defaultCenter3 postNotificationName:@"PDFDocumentViewControllerChangedPage" object:WeakRetained userInfo:v25];
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  if (self->_private->displaysRTL)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  return [(PDFDocumentViewController *)self _pageViewController:controller nextViewController:v5 forViewController:viewController];
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  if (self->_private->displaysRTL)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  return [(PDFDocumentViewController *)self _pageViewController:controller nextViewController:v5 forViewController:viewController];
}

- (id)document
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  document = [WeakRetained document];

  return document;
}

- (void)viewWillLayoutSubviews
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PDFDocumentViewController;
  [(PDFDocumentViewController *)&v14 viewWillLayoutSubviews];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  autoScales = [WeakRetained autoScales];

  if (autoScales)
  {
    viewControllers = [(PDFDocumentViewController *)self viewControllers];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [viewControllers countByEnumeratingWithState:&v10 objects:v15 count:16];
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
            objc_enumerationMutation(viewControllers);
          }

          [*(*(&v10 + 1) + 8 * v9++) enforceAutoScaleFactor];
        }

        while (v7 != v9);
        v7 = [viewControllers countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activePageView);
  pageView = [WeakRetained pageView];
  [pageView setNeedsTilesUpdate];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activePageView);
  pageView = [WeakRetained pageView];
  [pageView setNeedsTilesUpdate];
}

- (void)_setupDocument:(unint64_t)document
{
  document = [(PDFDocumentViewController *)self document];
  if (document)
  {
    v7 = document;
    if ([document isLocked])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__documentWasUnlocked name:@"PDFDocumentDidUnlock" object:v7];
    }

    else if ([v7 pageCount])
    {
      [(PDFDocumentViewController *)self _loadDocument:document];
    }

    [v7 setPageChangeDelegate:self];
    document = v7;
  }
}

- (void)_loadDocument:(unint64_t)document
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5 = [(PDFDocumentViewController *)self _pageViewControllerCreate:?];
  objc_storeWeak(&self->_private->activePageView, v5);
  v7[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [(PDFDocumentViewController *)self setViewControllers:v6 direction:0 animated:0 completion:0];

  [(NSHashTable *)self->_private->weakPageViewControllers addObject:v5];
  [(PDFPageBackgroundManager *)self->_private->pageBackgroundManager updateActivePageIndex:document];
}

- (id)_pageViewController:(id)controller nextViewController:(int)viewController forViewController:(id)forViewController
{
  v7 = self->_private;
  forViewControllerCopy = forViewController;
  WeakRetained = objc_loadWeakRetained(&v7->pdfView);
  pDFPage = [forViewControllerCopy PDFPage];

  document = [WeakRetained document];
  pageCount = [document pageCount];
  v13 = 0;
  v14 = [document indexForPage:pDFPage] + viewController;
  if (v14 >= 0 && v14 < pageCount)
  {
    v13 = [(PDFDocumentViewController *)self findPageViewControllerForPageIndex:v14];
    if (!v13)
    {
      v13 = [(PDFDocumentViewController *)self _pageViewControllerCreate:v14];
    }
  }

  return v13;
}

- (id)_pageViewControllerCreate:(unint64_t)create
{
  v5 = objc_alloc_init(PDFPageViewController);
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  [(PDFPageViewController *)v5 setRenderingProperties:self->_private->renderingProperties];
  [(PDFPageViewController *)v5 setPDFView:WeakRetained];
  [WeakRetained pageBreakMargins];
  [(PDFPageViewController *)v5 setPageBreakMargins:?];
  document = [WeakRetained document];
  v8 = [document pageAtIndex:create];
  [(PDFPageViewController *)v5 setPDFPage:v8];

  showsScrollIndicators = [WeakRetained showsScrollIndicators];
  scrollView = [(PDFPageViewController *)v5 scrollView];
  [scrollView setShowsVerticalScrollIndicator:showsScrollIndicators];

  scrollView2 = [(PDFPageViewController *)v5 scrollView];
  [scrollView2 setShowsHorizontalScrollIndicator:showsScrollIndicators];

  [(PDFPageViewController *)v5 setMinScaleFactor:self->_private->minScale withMaxScaleFactor:self->_private->maxScale];
  v15 = 0;
  v12 = [(PDFPageBackgroundManager *)self->_private->pageBackgroundManager backgroundImageForPageIndex:create withFoundQuality:&v15];
  if (v12 || ([(PDFPageBackgroundManager *)self->_private->pageBackgroundManager forceUpdateActivePageIndex:create withMaxDuration:0.0166666667], [(PDFPageBackgroundManager *)self->_private->pageBackgroundManager backgroundImageForPageIndex:create withFoundQuality:&v15], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    [(PDFPageViewController *)v5 setBackgroundImage:v12 atBackgroundQuality:v15];
  }

  return v5;
}

- (id)findPageViewControllerForPageIndex:(int64_t)index
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  [(PDFDocumentViewController *)self viewControllers];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        pDFPage = [v10 PDFPage];
        if (pDFPage)
        {
          v12 = pDFPage;
          document = [WeakRetained document];
          pDFPage2 = [v10 PDFPage];
          v15 = [document indexForPage:pDFPage2];

          if (v15 == index)
          {
            v16 = v10;
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (void)_updateCurrentPageViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  v6 = controllerCopy;
  objc_storeWeak(&self->_private->activePageView, v6);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PDFViewChangedPage" object:WeakRetained];

  document = [WeakRetained document];
  pDFPage = [v6 PDFPage];
  v10 = [document indexForPage:pDFPage];

  v13 = 0;
  v11 = [(PDFPageBackgroundManager *)self->_private->pageBackgroundManager backgroundImageForPageIndex:v10 withFoundQuality:&v13];
  if (v11)
  {
    [v6 setBackgroundImage:v11 atBackgroundQuality:v13];
  }

  pageView = [v6 pageView];
  [pageView setNeedsTilesUpdate];
}

- (id)backgroundImageForPage:(id)page withQuality:(int *)quality
{
  v25 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  os_unfair_lock_lock(&self->_private->weakPageViewControllersLock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_private->weakPageViewControllers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    qualityCopy = quality;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        pageView = [*(*(&v20 + 1) + 8 * i) pageView];
        v13 = pageView;
        if (pageView)
        {
          page = [pageView page];
          v15 = page;
          if (page == pageCopy)
          {
            hasBackgroundImage = [v13 hasBackgroundImage];

            if (hasBackgroundImage)
            {
              *qualityCopy = [v13 backgroundImageQuality];
              backgroundImage = [v13 backgroundImage];

              goto LABEL_14;
            }
          }

          else
          {
          }
        }
      }

      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  backgroundImage = 0;
LABEL_14:

  os_unfair_lock_unlock(&self->_private->weakPageViewControllersLock);

  return backgroundImage;
}

- (void)recieveBackgroundImage:(id)image atBackgroundQuality:(int)quality forPage:(id)page
{
  v6 = *&quality;
  v24 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  pageCopy = page;
  os_unfair_lock_lock(&self->_private->weakPageViewControllersLock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  v10 = self->_private->weakPageViewControllers;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        pageView = [*(*(&v19 + 1) + 8 * v14) pageView];
        v16 = pageView;
        if (pageView)
        {
          page = [pageView page];

          if (page == pageCopy)
          {
            [v16 setBackgroundImage:imageCopy atBackgroundQuality:v6];
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  os_unfair_lock_unlock(&selfCopy->_private->weakPageViewControllersLock);
}

- (void)didInsertPage:(id)page atIndex:(unint64_t)index
{
  v8[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_private->activePageView);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v8[0] = WeakRetained;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [(PDFDocumentViewController *)self setViewControllers:v7 direction:0 animated:0 completion:0];
  }
}

- (void)didRemovePage:(id)page atIndex:(unint64_t)index
{
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  v7 = objc_loadWeakRetained(&self->_private->activePageView);
  if (v7)
  {
    document = [WeakRetained document];
    if ([document pageCount] > index)
    {
      [document pageAtIndex:index];
    }

    if (pageCopy)
    {
      [(PDFDocumentViewController *)self goToPage:pageCopy direction:0 animated:1];
    }
  }
}

@end