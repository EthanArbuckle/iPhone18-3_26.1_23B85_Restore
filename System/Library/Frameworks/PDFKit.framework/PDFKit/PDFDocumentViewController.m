@interface PDFDocumentViewController
- (CGPoint)_convertPoint:(CGPoint)a3 fromPDFPageViewController:(id)a4;
- (CGPoint)_convertPoint:(CGPoint)a3 toPDFPageViewController:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 fromPage:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toPage:(id)a4;
- (PDFDocumentViewController)initWithPDFView:(id)a3 pageIndex:(unint64_t)a4 navigationOrientation:(int64_t)a5 withRenderingProperties:(id)a6 andOptions:(id)a7;
- (double)autoScaleFactor;
- (double)scaleFactor;
- (id)_pageViewController:(id)a3 nextViewController:(int)a4 forViewController:(id)a5;
- (id)_pageViewControllerCreate:(unint64_t)a3;
- (id)backgroundImageForPage:(id)a3 withQuality:(int *)a4;
- (id)currentPage;
- (id)document;
- (id)findPageViewControllerForPageIndex:(int64_t)a3;
- (id)pageForPoint:(CGPoint)a3 nearest:(BOOL)a4;
- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
- (id)pageViews;
- (id)scrollView;
- (id)selection;
- (void)_loadDocument:(unint64_t)a3;
- (void)_setupDocument:(unint64_t)a3;
- (void)_updateCurrentPageViewController:(id)a3;
- (void)dealloc;
- (void)didInsertPage:(id)a3 atIndex:(unint64_t)a4;
- (void)didRemovePage:(id)a3 atIndex:(unint64_t)a4;
- (void)goToPage:(id)a3 direction:(int64_t)a4 animated:(BOOL)a5;
- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6;
- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4;
- (void)recieveBackgroundImage:(id)a3 atBackgroundQuality:(int)a4 forPage:(id)a5;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setAutoScales:(BOOL)a3;
- (void)setMinScaleFactor:(double)a3 withMaxScaleFactor:(double)a4;
- (void)setScaleFactor:(double)a3;
- (void)setScrollViewScrollEnabled:(BOOL)a3;
- (void)setSelection:(id)a3;
- (void)updateScrollViews;
- (void)viewWillLayoutSubviews;
@end

@implementation PDFDocumentViewController

- (PDFDocumentViewController)initWithPDFView:(id)a3 pageIndex:(unint64_t)a4 navigationOrientation:(int64_t)a5 withRenderingProperties:(id)a6 andOptions:(id)a7
{
  v42 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v40.receiver = self;
  v40.super_class = PDFDocumentViewController;
  v15 = [(PDFDocumentViewController *)&v40 initWithTransitionStyle:1 navigationOrientation:a5 options:v14];
  if (v15)
  {
    v35 = v14;
    v16 = objc_alloc_init(PDFDocumentViewControllerPrivate);
    v17 = v15->_private;
    v15->_private = v16;

    objc_storeWeak(&v15->_private->pdfView, v12);
    objc_storeStrong(&v15->_private->renderingProperties, a6);
    v15->_private->minScale = 0.25;
    v15->_private->maxScale = 5.0;
    v15->_private->displaysRTL = 0;
    v18 = [[PDFPageBackgroundManager alloc] initWithDelegate:v15 andRenderingProperties:v13];
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
    [(PDFDocumentViewController *)v15 _setupDocument:a4];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v24 = [(PDFDocumentViewController *)v15 view];
    v25 = [v24 subviews];

    v26 = [v25 countByEnumeratingWithState:&v36 objects:v41 count:16];
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
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v36 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = v31;

            v28 = v32;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v36 objects:v41 count:16];
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
    v33 = [MEMORY[0x1E696AD88] defaultCenter];
    [v33 addObserver:v15 selector:sel__documentChanged name:@"PDFViewChangedDocument" object:v12];

    v14 = v35;
  }

  return v15;
}

- (void)dealloc
{
  [(PDFPageBackgroundManager *)self->_private->pageBackgroundManager cancel];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PDFDocumentViewController;
  [(PDFDocumentViewController *)&v4 dealloc];
}

- (id)pageViews
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PDFDocumentViewController *)self viewControllers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 pageView];

        if (v10)
        {
          v11 = [v9 pageView];
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)goToPage:(id)a3 direction:(int64_t)a4 animated:(BOOL)a5
{
  v20 = a5;
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  v8 = [WeakRetained document];
  v9 = [v8 indexForPage:v6];

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
        v15 = [v14 PDFPage];
        v16 = v15 == v6;

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
    [(PDFDocumentViewController *)self setViewControllers:v18 direction:a4 animated:v20 completion:v21];

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
  v3 = [WeakRetained PDFPage];

  return v3;
}

- (void)setAutoScales:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(PDFDocumentViewController *)self viewControllers];
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

        [*(*(&v9 + 1) + 8 * v8++) setAutoScales:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)setMinScaleFactor:(double)a3 withMaxScaleFactor:(double)a4
{
  v16 = *MEMORY[0x1E69E9840];
  self->_private->minScale = a3;
  self->_private->maxScale = a4;
  v6 = [(PDFDocumentViewController *)self viewControllers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setMinScaleFactor:a3 withMaxScaleFactor:a4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setScaleFactor:(double)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(PDFDocumentViewController *)self viewControllers];
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

        [*(*(&v9 + 1) + 8 * v8++) setScaleFactor:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)setSelection:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PDFDocumentViewController *)self viewControllers];
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

        [*(*(&v10 + 1) + 8 * v9++) setSelection:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)selection
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activePageView);
  v3 = [WeakRetained selection];

  return v3;
}

- (void)setScrollViewScrollEnabled:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->scrollView);
  [WeakRetained setScrollEnabled:v3];
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
  v4 = [WeakRetained showsScrollIndicators];

  v5 = [(PDFDocumentViewController *)self scrollView];
  [v5 setShowsVerticalScrollIndicator:v4];

  v6 = [(PDFDocumentViewController *)self scrollView];
  [v6 setShowsHorizontalScrollIndicator:v4];

  v7 = [(PDFDocumentViewController *)self viewControllers];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 scrollView];
        [v13 setShowsVerticalScrollIndicator:v4];

        v14 = [v12 scrollView];
        [v14 setShowsHorizontalScrollIndicator:v4];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (id)pageForPoint:(CGPoint)a3 nearest:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
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
        v15 = [v14 pageView];
        v16 = [v14 PDFPage];
        WeakRetained = objc_loadWeakRetained(*(&self->super.super.super.super.isa + *(v12 + 3864)) + 1);
        v18 = PDFRectToCGRect([v16 boundsForBox:{objc_msgSend(WeakRetained, "displayBox")}]);
        v20 = v19;
        v22 = v21;
        v24 = v23;
        [(PDFDocumentViewController *)self convertPoint:v16 toPage:x, y];
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

        if (v4)
        {
          v28 = v10;
          v29 = v4;
          v30 = v7;
          v31 = v12;
          v32 = [(PDFDocumentViewController *)self view];
          [v15 bounds];
          v33 = PDFRectToCGRect([v32 convertRect:v15 fromView:?]);
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
            v43 = v16;

            v46 = v43;
            v11 = v42;
          }

          v12 = v31;
          v7 = v30;
          v4 = v29;
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
  v16 = v44;
LABEL_17:

  return v16;
}

- (CGPoint)convertPoint:(CGPoint)a3 toPage:(id)a4
{
  y = a3.y;
  x = a3.x;
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_private->activePageView);
  v9 = [WeakRetained PDFPage];

  if (v9 == v7)
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
          v16 = [v15 PDFPage];

          if (v16 == v7)
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

- (CGPoint)_convertPoint:(CGPoint)a3 toPDFPageViewController:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = PDFPointToCGPoint(x, y);
  v10 = v9;
  v11 = [v7 PDFPage];
  v12 = [v7 pageView];

  v13 = [(PDFDocumentViewController *)self view];
  [v13 convertPoint:v12 toView:{v8, v10}];
  v47 = v14;
  v16 = v15;

  [v12 bounds];
  v45 = v17 - v16;
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  [v11 boundsForBox:{objc_msgSend(WeakRetained, "displayBox")}];
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
  v31 = [v11 rotation];
  v32.f64[0] = v47;
  v32.f64[1] = v45;
  if (v31 > 179)
  {
    if (v31 == 180)
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

    if (v31 == 270)
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
    if (!v31)
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

    if (v31 == 90)
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

- (CGPoint)convertPoint:(CGPoint)a3 fromPage:(id)a4
{
  y = a3.y;
  x = a3.x;
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_private->activePageView);
  v9 = [WeakRetained PDFPage];

  if (v9 == v7)
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
          v16 = [v15 PDFPage];

          if (v16 == v7)
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

- (CGPoint)_convertPoint:(CGPoint)a3 fromPDFPageViewController:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v45 = PDFPointToCGPoint(x, y);
  v46 = v8;
  v9 = [v7 PDFPage];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  [v9 boundsForBox:{objc_msgSend(WeakRetained, "displayBox")}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [v9 rotation];
  v20 = *(MEMORY[0x1E695EFD0] + 8);
  v22 = *(MEMORY[0x1E695EFD0] + 16);
  v21 = *(MEMORY[0x1E695EFD0] + 24);
  v24 = *(MEMORY[0x1E695EFD0] + 32);
  v23 = *(MEMORY[0x1E695EFD0] + 40);
  v25.f64[0] = v45;
  v25.f64[1] = v46;
  v47 = v25;
  if (v19 > 179)
  {
    if (v19 == 180)
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

    if (v19 == 270)
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
    if (!v19)
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

    if (v19 == 90)
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
  v30 = [v7 pageView];
  [v30 bounds];
  v32 = v31 - v47.f64[1];
  v33 = [(PDFDocumentViewController *)self view];
  [v33 convertPoint:v30 fromView:{v47.f64[0], v32}];
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

- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4
{
  v8 = [a4 firstObject];
  [(PDFDocumentViewController *)self _updateCurrentPageViewController:v8];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"PDFViewVisiblePagesChanged" object:WeakRetained];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"PDFTextSelectionMenuWillChangeScrollPosition" object:WeakRetained];

  os_unfair_lock_lock(&self->_private->weakPageViewControllersLock);
  [(NSHashTable *)self->_private->weakPageViewControllers addObject:v8];
  os_unfair_lock_unlock(&self->_private->weakPageViewControllersLock);
}

- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6
{
  v7 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  if (a6)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v9;
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

          v16 = [*(*(&v26 + 1) + 8 * v15) pageView];
          [v16 clearTiles];

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
    v17 = [v9 firstObject];
    [(PDFDocumentViewController *)self _updateCurrentPageViewController:v17];
  }

  if (v7)
  {
    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 postNotificationName:@"PDFTextSelectionMenuDidChangeScrollPosition" object:WeakRetained];
  }

  v19 = [MEMORY[0x1E696AD88] defaultCenter];
  [v19 postNotificationName:@"PDFViewVisiblePagesChanged" object:WeakRetained];

  v20 = [WeakRetained document];
  v21 = [(PDFDocumentViewController *)self currentPage];
  v22 = [v20 indexForPage:v21];

  v23 = [MEMORY[0x1E696AD88] defaultCenter];
  v30 = @"pageIndex";
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22];
  v31 = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  [v23 postNotificationName:@"PDFDocumentViewControllerChangedPage" object:WeakRetained userInfo:v25];
}

- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  if (self->_private->displaysRTL)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  return [(PDFDocumentViewController *)self _pageViewController:a3 nextViewController:v5 forViewController:a4];
}

- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  if (self->_private->displaysRTL)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  return [(PDFDocumentViewController *)self _pageViewController:a3 nextViewController:v5 forViewController:a4];
}

- (id)document
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  v3 = [WeakRetained document];

  return v3;
}

- (void)viewWillLayoutSubviews
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PDFDocumentViewController;
  [(PDFDocumentViewController *)&v14 viewWillLayoutSubviews];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  v4 = [WeakRetained autoScales];

  if (v4)
  {
    v5 = [(PDFDocumentViewController *)self viewControllers];
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

          [*(*(&v10 + 1) + 8 * v9++) enforceAutoScaleFactor];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activePageView);
  v3 = [WeakRetained pageView];
  [v3 setNeedsTilesUpdate];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activePageView);
  v3 = [WeakRetained pageView];
  [v3 setNeedsTilesUpdate];
}

- (void)_setupDocument:(unint64_t)a3
{
  v5 = [(PDFDocumentViewController *)self document];
  if (v5)
  {
    v7 = v5;
    if ([v5 isLocked])
    {
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 addObserver:self selector:sel__documentWasUnlocked name:@"PDFDocumentDidUnlock" object:v7];
    }

    else if ([v7 pageCount])
    {
      [(PDFDocumentViewController *)self _loadDocument:a3];
    }

    [v7 setPageChangeDelegate:self];
    v5 = v7;
  }
}

- (void)_loadDocument:(unint64_t)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5 = [(PDFDocumentViewController *)self _pageViewControllerCreate:?];
  objc_storeWeak(&self->_private->activePageView, v5);
  v7[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [(PDFDocumentViewController *)self setViewControllers:v6 direction:0 animated:0 completion:0];

  [(NSHashTable *)self->_private->weakPageViewControllers addObject:v5];
  [(PDFPageBackgroundManager *)self->_private->pageBackgroundManager updateActivePageIndex:a3];
}

- (id)_pageViewController:(id)a3 nextViewController:(int)a4 forViewController:(id)a5
{
  v7 = self->_private;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&v7->pdfView);
  v10 = [v8 PDFPage];

  v11 = [WeakRetained document];
  v12 = [v11 pageCount];
  v13 = 0;
  v14 = [v11 indexForPage:v10] + a4;
  if (v14 >= 0 && v14 < v12)
  {
    v13 = [(PDFDocumentViewController *)self findPageViewControllerForPageIndex:v14];
    if (!v13)
    {
      v13 = [(PDFDocumentViewController *)self _pageViewControllerCreate:v14];
    }
  }

  return v13;
}

- (id)_pageViewControllerCreate:(unint64_t)a3
{
  v5 = objc_alloc_init(PDFPageViewController);
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  [(PDFPageViewController *)v5 setRenderingProperties:self->_private->renderingProperties];
  [(PDFPageViewController *)v5 setPDFView:WeakRetained];
  [WeakRetained pageBreakMargins];
  [(PDFPageViewController *)v5 setPageBreakMargins:?];
  v7 = [WeakRetained document];
  v8 = [v7 pageAtIndex:a3];
  [(PDFPageViewController *)v5 setPDFPage:v8];

  v9 = [WeakRetained showsScrollIndicators];
  v10 = [(PDFPageViewController *)v5 scrollView];
  [v10 setShowsVerticalScrollIndicator:v9];

  v11 = [(PDFPageViewController *)v5 scrollView];
  [v11 setShowsHorizontalScrollIndicator:v9];

  [(PDFPageViewController *)v5 setMinScaleFactor:self->_private->minScale withMaxScaleFactor:self->_private->maxScale];
  v15 = 0;
  v12 = [(PDFPageBackgroundManager *)self->_private->pageBackgroundManager backgroundImageForPageIndex:a3 withFoundQuality:&v15];
  if (v12 || ([(PDFPageBackgroundManager *)self->_private->pageBackgroundManager forceUpdateActivePageIndex:a3 withMaxDuration:0.0166666667], [(PDFPageBackgroundManager *)self->_private->pageBackgroundManager backgroundImageForPageIndex:a3 withFoundQuality:&v15], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    [(PDFPageViewController *)v5 setBackgroundImage:v12 atBackgroundQuality:v15];
  }

  return v5;
}

- (id)findPageViewControllerForPageIndex:(int64_t)a3
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
        v11 = [v10 PDFPage];
        if (v11)
        {
          v12 = v11;
          v13 = [WeakRetained document];
          v14 = [v10 PDFPage];
          v15 = [v13 indexForPage:v14];

          if (v15 == a3)
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

- (void)_updateCurrentPageViewController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  v6 = v4;
  objc_storeWeak(&self->_private->activePageView, v6);
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"PDFViewChangedPage" object:WeakRetained];

  v8 = [WeakRetained document];
  v9 = [v6 PDFPage];
  v10 = [v8 indexForPage:v9];

  v13 = 0;
  v11 = [(PDFPageBackgroundManager *)self->_private->pageBackgroundManager backgroundImageForPageIndex:v10 withFoundQuality:&v13];
  if (v11)
  {
    [v6 setBackgroundImage:v11 atBackgroundQuality:v13];
  }

  v12 = [v6 pageView];
  [v12 setNeedsTilesUpdate];
}

- (id)backgroundImageForPage:(id)a3 withQuality:(int *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
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
    v19 = a4;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v20 + 1) + 8 * i) pageView];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 page];
          v15 = v14;
          if (v14 == v6)
          {
            v16 = [v13 hasBackgroundImage];

            if (v16)
            {
              *v19 = [v13 backgroundImageQuality];
              v17 = [v13 backgroundImage];

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

  v17 = 0;
LABEL_14:

  os_unfair_lock_unlock(&self->_private->weakPageViewControllersLock);

  return v17;
}

- (void)recieveBackgroundImage:(id)a3 atBackgroundQuality:(int)a4 forPage:(id)a5
{
  v6 = *&a4;
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  os_unfair_lock_lock(&self->_private->weakPageViewControllersLock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = self;
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

        v15 = [*(*(&v19 + 1) + 8 * v14) pageView];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 page];

          if (v17 == v9)
          {
            [v16 setBackgroundImage:v8 atBackgroundQuality:v6];
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  os_unfair_lock_unlock(&v18->_private->weakPageViewControllersLock);
}

- (void)didInsertPage:(id)a3 atIndex:(unint64_t)a4
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

- (void)didRemovePage:(id)a3 atIndex:(unint64_t)a4
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  v7 = objc_loadWeakRetained(&self->_private->activePageView);
  if (v7)
  {
    v8 = [WeakRetained document];
    if ([v8 pageCount] > a4)
    {
      [v8 pageAtIndex:a4];
    }

    if (v9)
    {
      [(PDFDocumentViewController *)self goToPage:v9 direction:0 animated:1];
    }
  }
}

@end