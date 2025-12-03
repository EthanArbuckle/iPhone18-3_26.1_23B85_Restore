@interface MTAStopwatchPagingViewController
- (MTAStopwatchPagingViewControllerDelegate)delegate;
- (void)loadView;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setCurrentPage:(unint64_t)page animated:(BOOL)animated;
- (void)setPages:(id)pages;
- (void)viewDidLayoutSubviews;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MTAStopwatchPagingViewController

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = MTAStopwatchPagingViewController;
  [(MTAStopwatchPagingViewController *)&v11 loadView];
  v3 = objc_opt_new();
  [(MTAStopwatchPagingViewController *)self setScrollView:v3];

  scrollView = [(MTAStopwatchPagingViewController *)self scrollView];
  [scrollView setPagingEnabled:1];

  scrollView2 = [(MTAStopwatchPagingViewController *)self scrollView];
  [scrollView2 setShowsHorizontalScrollIndicator:0];

  scrollView3 = [(MTAStopwatchPagingViewController *)self scrollView];
  [scrollView3 setAutoresizesSubviews:0];

  scrollView4 = [(MTAStopwatchPagingViewController *)self scrollView];
  [scrollView4 setDelegate:self];

  view = [(MTAStopwatchPagingViewController *)self view];
  [view setAutoresizesSubviews:0];

  view2 = [(MTAStopwatchPagingViewController *)self view];
  scrollView5 = [(MTAStopwatchPagingViewController *)self scrollView];
  [view2 addSubview:scrollView5];
}

- (void)setPages:(id)pages
{
  pagesCopy = pages;
  pages = self->_pages;
  if (pages != pagesCopy)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    pagesCopy2 = pages;
    v8 = [(NSArray *)pagesCopy2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(pagesCopy2);
          }

          [*(*(&v24 + 1) + 8 * i) removeFromSuperview];
        }

        v9 = [(NSArray *)pagesCopy2 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->_pages, pages);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = self->_pages;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * j);
          [v17 setAutoresizesSubviews:{0, v20}];
          [v17 setAutoresizingMask:0];
          scrollView = [(MTAStopwatchPagingViewController *)self scrollView];
          [scrollView addSubview:v17];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v14);
    }

    view = [(MTAStopwatchPagingViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)setCurrentPage:(unint64_t)page animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_currentPage = page;
  pageCopy = page;
  scrollView = [(MTAStopwatchPagingViewController *)self scrollView];
  [scrollView bounds];
  v9 = v8 * pageCopy;

  scrollView2 = [(MTAStopwatchPagingViewController *)self scrollView];
  [scrollView2 setContentOffset:animatedCopy animated:{v9, 0.0}];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = MTAStopwatchPagingViewController;
  [(MTAStopwatchPagingViewController *)&v13 viewWillLayoutSubviews];
  view = [(MTAStopwatchPagingViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  scrollView = [(MTAStopwatchPagingViewController *)self scrollView];
  [scrollView setFrame:{v5, v7, v9, v11}];
}

- (void)viewDidLayoutSubviews
{
  v31.receiver = self;
  v31.super_class = MTAStopwatchPagingViewController;
  [(MTAStopwatchPagingViewController *)&v31 viewDidLayoutSubviews];
  view = [(MTAStopwatchPagingViewController *)self view];
  mtui_isRTL = [view mtui_isRTL];

  scrollView = [(MTAStopwatchPagingViewController *)self scrollView];
  [scrollView bounds];
  v7 = v6;
  v9 = v8;

  pages = [(MTAStopwatchPagingViewController *)self pages];
  v11 = pages;
  if (mtui_isRTL)
  {
    [pages reverseObjectEnumerator];
  }

  else
  {
    [pages objectEnumerator];
  }
  v12 = ;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    x = CGPointZero.x;
    y = CGPointZero.y;
    v18 = *v28;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v27 + 1) + 8 * i) setFrame:{x, y, v7, v9, v27}];
        x = v7 + x;
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v15);
  }

  pages2 = [(MTAStopwatchPagingViewController *)self pages];
  v21 = v7 * [pages2 count];
  scrollView2 = [(MTAStopwatchPagingViewController *)self scrollView];
  [scrollView2 setContentSize:{v21, v9}];

  if (mtui_isRTL)
  {
    pages3 = [(MTAStopwatchPagingViewController *)self pages];
    v24 = [pages3 count];
    currentPage = v24 + ~[(MTAStopwatchPagingViewController *)self currentPage];
  }

  else
  {
    currentPage = [(MTAStopwatchPagingViewController *)self currentPage];
  }

  scrollView3 = [(MTAStopwatchPagingViewController *)self scrollView];
  [scrollView3 setContentOffset:{v7 * currentPage, 0.0}];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = MTAStopwatchPagingViewController;
  coordinatorCopy = coordinator;
  [(MTAStopwatchPagingViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100048A5C;
  v8[3] = &unk_1000AD9C8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  draggingCopy = dragging;
  view = [(MTAStopwatchPagingViewController *)self view];
  mtui_isRTL = [view mtui_isRTL];

  x = offset->x;
  [draggingCopy bounds];
  v12 = v11;

  v13 = vcvtad_u64_f64(x / v12);
  if (mtui_isRTL)
  {
    pages = [(MTAStopwatchPagingViewController *)self pages];
    v13 = [pages count] + ~v13;
  }

  if (v13 != self->_currentPage)
  {
    self->_currentPage = v13;
    delegate = [(MTAStopwatchPagingViewController *)self delegate];
    [delegate stopwatchPagingViewController:self didPage:self->_currentPage];
  }
}

- (MTAStopwatchPagingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end