@interface MTAStopwatchPagingViewController
- (MTAStopwatchPagingViewControllerDelegate)delegate;
- (void)loadView;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setCurrentPage:(unint64_t)a3 animated:(BOOL)a4;
- (void)setPages:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MTAStopwatchPagingViewController

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = MTAStopwatchPagingViewController;
  [(MTAStopwatchPagingViewController *)&v11 loadView];
  v3 = objc_opt_new();
  [(MTAStopwatchPagingViewController *)self setScrollView:v3];

  v4 = [(MTAStopwatchPagingViewController *)self scrollView];
  [v4 setPagingEnabled:1];

  v5 = [(MTAStopwatchPagingViewController *)self scrollView];
  [v5 setShowsHorizontalScrollIndicator:0];

  v6 = [(MTAStopwatchPagingViewController *)self scrollView];
  [v6 setAutoresizesSubviews:0];

  v7 = [(MTAStopwatchPagingViewController *)self scrollView];
  [v7 setDelegate:self];

  v8 = [(MTAStopwatchPagingViewController *)self view];
  [v8 setAutoresizesSubviews:0];

  v9 = [(MTAStopwatchPagingViewController *)self view];
  v10 = [(MTAStopwatchPagingViewController *)self scrollView];
  [v9 addSubview:v10];
}

- (void)setPages:(id)a3
{
  v5 = a3;
  pages = self->_pages;
  if (pages != v5)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = pages;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
            objc_enumerationMutation(v7);
          }

          [*(*(&v24 + 1) + 8 * i) removeFromSuperview];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->_pages, a3);
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
          v18 = [(MTAStopwatchPagingViewController *)self scrollView];
          [v18 addSubview:v17];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v14);
    }

    v19 = [(MTAStopwatchPagingViewController *)self view];
    [v19 setNeedsLayout];
  }
}

- (void)setCurrentPage:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  self->_currentPage = a3;
  v6 = a3;
  v7 = [(MTAStopwatchPagingViewController *)self scrollView];
  [v7 bounds];
  v9 = v8 * v6;

  v10 = [(MTAStopwatchPagingViewController *)self scrollView];
  [v10 setContentOffset:v4 animated:{v9, 0.0}];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = MTAStopwatchPagingViewController;
  [(MTAStopwatchPagingViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(MTAStopwatchPagingViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(MTAStopwatchPagingViewController *)self scrollView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)viewDidLayoutSubviews
{
  v31.receiver = self;
  v31.super_class = MTAStopwatchPagingViewController;
  [(MTAStopwatchPagingViewController *)&v31 viewDidLayoutSubviews];
  v3 = [(MTAStopwatchPagingViewController *)self view];
  v4 = [v3 mtui_isRTL];

  v5 = [(MTAStopwatchPagingViewController *)self scrollView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  v10 = [(MTAStopwatchPagingViewController *)self pages];
  v11 = v10;
  if (v4)
  {
    [v10 reverseObjectEnumerator];
  }

  else
  {
    [v10 objectEnumerator];
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

  v20 = [(MTAStopwatchPagingViewController *)self pages];
  v21 = v7 * [v20 count];
  v22 = [(MTAStopwatchPagingViewController *)self scrollView];
  [v22 setContentSize:{v21, v9}];

  if (v4)
  {
    v23 = [(MTAStopwatchPagingViewController *)self pages];
    v24 = [v23 count];
    v25 = v24 + ~[(MTAStopwatchPagingViewController *)self currentPage];
  }

  else
  {
    v25 = [(MTAStopwatchPagingViewController *)self currentPage];
  }

  v26 = [(MTAStopwatchPagingViewController *)self scrollView];
  [v26 setContentOffset:{v7 * v25, 0.0}];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = MTAStopwatchPagingViewController;
  v7 = a4;
  [(MTAStopwatchPagingViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100048A5C;
  v8[3] = &unk_1000AD9C8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v7 = a3;
  v8 = [(MTAStopwatchPagingViewController *)self view];
  v9 = [v8 mtui_isRTL];

  x = a5->x;
  [v7 bounds];
  v12 = v11;

  v13 = vcvtad_u64_f64(x / v12);
  if (v9)
  {
    v14 = [(MTAStopwatchPagingViewController *)self pages];
    v13 = [v14 count] + ~v13;
  }

  if (v13 != self->_currentPage)
  {
    self->_currentPage = v13;
    v15 = [(MTAStopwatchPagingViewController *)self delegate];
    [v15 stopwatchPagingViewController:self didPage:self->_currentPage];
  }
}

- (MTAStopwatchPagingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end