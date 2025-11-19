@interface BKPictureBookVerticalNavigationController
- (BKPictureBookNavigationDelegate)delegate;
- (BOOL)_bookRenditionFlowIsScrolledContinuous;
- (BOOL)_isRTL;
- (BOOL)gestureRecognizer:(id)a3 canBePreventedByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isPastEndOfBook:(CGPoint)a3;
- (BOOL)shouldDisplaySpread;
- (CGPoint)contentOffsetToScrollToForPageNumber:(int64_t)a3;
- (CGPoint)originForPageNumber:(int64_t)a3;
- (CGPoint)originForPageNumber:(int64_t)a3 pagesContainerSize:(CGSize)a4 isSpread:(BOOL)a5;
- (CGRect)frameForPageNumber:(int64_t)a3;
- (CGSize)_lastScrollViewSizeLayoutWasGeneratedFor;
- (CGSize)pageSize;
- (_NSRange)visiblePages;
- (double)_spaceBetweenPages;
- (double)rawPageNumberForOffset:(CGPoint)a3 pageFraction:(double)a4;
- (id)_setupPageNumber:(int64_t)a3;
- (id)contentView;
- (id)pageViews;
- (id)snapshotCurrentPageInContext;
- (id)viewForPageNumber:(int64_t)a3;
- (id)viewForZoomingInScrollView:(id)a3;
- (int64_t)currentPageNumber;
- (int64_t)pageNumberAtContentOffset:(CGPoint)a3;
- (void)_applyAdditionalScale:(id)a3;
- (void)_displayPagesForOffset:(int64_t)a3;
- (void)_generateLeftPageImageAtPageOffset:(int64_t)a3 completion:(id)a4;
- (void)_generateRightPageImageAtPageOffset:(int64_t)a3 completion:(id)a4;
- (void)_setPageOffsetUncheckedImmediate:(int64_t)a3;
- (void)_setupGestures;
- (void)_setupScrollView:(BOOL)a3;
- (void)_teardownPageNumber:(int64_t)a3;
- (void)_updatePages;
- (void)adjustToNewSize:(CGSize)a3;
- (void)contentViewImage:(BOOL)a3 afterScreenUpdates:(BOOL)a4 completion:(id)a5;
- (void)doubleTapGestureHandler:(id)a3;
- (void)generatePositionForAllPages:(id)a3;
- (void)resetZoomScale;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setAllowDoubleTapToZoom:(BOOL)a3;
- (void)setPageCount:(int64_t)a3;
- (void)setPageOffset:(int64_t)a3 completion:(id)a4;
- (void)setPreferredPageNumberHUDVisibility:(BOOL)a3;
- (void)setZoomScale:(double)a3;
- (void)tapGestureHandler:(id)a3;
- (void)turnToNextPage;
- (void)turnToPageNumber:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)turnToPreviousPage;
- (void)updateContentInsets;
- (void)updateLocationIfNeeded;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BKPictureBookVerticalNavigationController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = BKPictureBookVerticalNavigationController;
  [(BKPictureBookVerticalNavigationController *)&v4 viewDidLoad];
  [(BKPictureBookVerticalNavigationController *)self setPageNumberBeforeTransition:0x7FFFFFFFFFFFFFFFLL];
  [(BKPictureBookVerticalNavigationController *)self _setupScrollView];
  [(BKPictureBookVerticalNavigationController *)self _setupGestures];
  if ([(BKPageNavigationViewController *)self pageOffset]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(BKPictureBookVerticalNavigationController *)self _displayPagesForOffset:[(BKPageNavigationViewController *)self pageOffset]];
    v3 = [(BKPictureBookVerticalNavigationController *)self delegate];
    [v3 pageNavigationDidChangeLocation:self];
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = BKPictureBookVerticalNavigationController;
  [(BKPictureBookVerticalNavigationController *)&v11 viewIsAppearing:a3];
  v4 = [(BKPictureBookVerticalNavigationController *)self delegate];
  v5 = [v4 transitionLocationForNavigationController];

  v6 = [(BKPictureBookVerticalNavigationController *)self currentPageNumber];
  objc_opt_class();
  v7 = BUDynamicCast();
  if (v7)
  {
    v8 = _AECaptureLocationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "#PictureBookVerticalNVC viewWillAppear using location:%@", buf, 0xCu);
    }

    v9 = [v7 ordinal];
    v6 = [v7 pageOffset] + v9 + 1;
  }

  v10 = _AECaptureLocationLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = v6;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "#PictureBookVerticalNVC viewWillAppear transitioning to page number: %lu", buf, 0xCu);
  }

  [(BKPictureBookVerticalNavigationController *)self setPageNumberBeforeTransition:v6];
  [(BKPictureBookVerticalNavigationController *)self _setupScrollView];
  [(BKPictureBookVerticalNavigationController *)self _displayPagesForOffset:[(BKPictureBookVerticalNavigationController *)self pageNumberBeforeTransition]- 1];
  [(BKPictureBookVerticalNavigationController *)self setPageNumberBeforeTransition:0x7FFFFFFFFFFFFFFFLL];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKPictureBookVerticalNavigationController;
  [(BKPictureBookVerticalNavigationController *)&v4 viewDidAppear:a3];
  [(BKPictureBookVerticalNavigationController *)self updateContentInsets];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(BKPictureBookVerticalNavigationController *)self delegate];
  v9 = [v8 inLiveResize];

  if (v9)
  {
    [(BKPictureBookVerticalNavigationController *)self setPageNumberBeforeTransition:[(BKPictureBookVerticalNavigationController *)self currentPageNumber]];
  }

  if ([(BKPictureBookVerticalNavigationController *)self isVisible])
  {
    v10 = [(BKPictureBookVerticalNavigationController *)self delegate];
    v11 = [v10 inLiveResize];

    if ((v11 & 1) == 0)
    {
      [(BKPictureBookVerticalNavigationController *)self setAnimating:1];
      [(BKPictureBookVerticalNavigationController *)self setPageNumberBeforeTransition:[(BKPictureBookVerticalNavigationController *)self currentPageNumber]];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = [(BKPictureBookVerticalNavigationController *)self pageViews];
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v24;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v23 + 1) + 8 * i);
            v18 = [v17 pageNumber];
            if (v18 == [(BKPictureBookVerticalNavigationController *)self pageNumberBeforeTransition])
            {
              v19 = [v17 pageScrollerPageView];
              [v19 setScrollState:3];
            }

            else
            {
              [v17 setAlpha:0.0];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v14);
      }

      v21[4] = self;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_F6404;
      v22[3] = &unk_1E2A60;
      v22[4] = self;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_F6450;
      v21[3] = &unk_1E2A60;
      [v7 animateAlongsideTransition:v22 completion:v21];
    }
  }

  v20.receiver = self;
  v20.super_class = BKPictureBookVerticalNavigationController;
  [(BKPictureBookVerticalNavigationController *)&v20 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = BKPictureBookVerticalNavigationController;
  [(BKPictureBookVerticalNavigationController *)&v3 viewSafeAreaInsetsDidChange];
  [(BKPictureBookVerticalNavigationController *)self updateContentInsets];
}

- (id)pageViews
{
  v2 = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];
  v3 = [v2 subviews];
  v4 = [NSPredicate predicateWithBlock:&stru_1E5D98];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (void)updateContentInsets
{
  v3 = [(BKPictureBookVerticalNavigationController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;
  v6 = [(BKPictureBookVerticalNavigationController *)self view];
  [v6 safeAreaInsets];
  [(UIScrollView *)self->_scrollView setContentInset:v5, 0.0];

  [(UIScrollView *)self->_scrollView contentOffset];
  v8 = v7;
  [(UIScrollView *)self->_scrollView contentInset];
  if (v8 < v9)
  {
    [(UIScrollView *)self->_scrollView contentOffset];
    v11 = v10;
    [(UIScrollView *)self->_scrollView contentInset];
    scrollView = self->_scrollView;

    [(UIScrollView *)scrollView setContentOffset:v11, -v12];
  }
}

- (void)_setupGestures
{
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"doubleTapGestureHandler:"];
  doubleTapGesture = self->_doubleTapGesture;
  self->_doubleTapGesture = v3;

  [(UITapGestureRecognizer *)self->_doubleTapGesture setNumberOfTapsRequired:2];
  [(UITapGestureRecognizer *)self->_doubleTapGesture setDelegate:self];
  v5 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  v6 = [(BKPictureBookVerticalNavigationController *)self doubleTapGesture];
  [v5 addGestureRecognizer:v6];

  v8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tapGestureHandler:"];
  if (self->_doubleTapGesture)
  {
    [v8 requireGestureRecognizerToFail:?];
  }

  v7 = [(BKPictureBookVerticalNavigationController *)self view];
  [v7 addGestureRecognizer:v8];
}

- (void)tapGestureHandler:(id)a3
{
  v4 = [(BKPictureBookVerticalNavigationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(BKPictureBookVerticalNavigationController *)self delegate];
    [v6 contentView:0 unhandledClickAtPoint:{CGPointZero.x, CGPointZero.y}];
  }
}

- (void)setAllowDoubleTapToZoom:(BOOL)a3
{
  v3 = a3;
  if (self->_allowDoubleTapToZoom != a3)
  {
    self->_allowDoubleTapToZoom = a3;
  }

  v4 = [(BKPictureBookVerticalNavigationController *)self doubleTapGesture];
  [v4 setEnabled:v3];
}

- (void)doubleTapGestureHandler:(id)a3
{
  v18 = a3;
  v4 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [v4 zoomScale];
  v6 = v5;

  v7 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  v8 = v7;
  if (v6 <= 1.0)
  {
    [v18 locationInView:v7];
    v10 = v9;
    v12 = v11;

    [(BKPictureBookVerticalNavigationController *)self pageSize];
    v14 = v13 * 0.5;
    [(BKPictureBookVerticalNavigationController *)self pageSize];
    v16 = v15 * 0.5;
    v17 = v10 - v15 * 0.5 * 0.5;
    v8 = [(BKPictureBookVerticalNavigationController *)self scrollView];
    [v8 zoomToRect:1 animated:{v17, v12 - v14 * 0.5, v16, v14}];
  }

  else
  {
    [v7 setZoomScale:1 animated:?];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(BKPictureBookVerticalNavigationController *)self doubleTapGesture];

  return v5 == v4;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKPictureBookVerticalNavigationController *)self doubleTapGesture];

  if (v8 == v7)
  {
    v10 = 1;
  }

  else
  {
    v9 = [(BKPictureBookVerticalNavigationController *)self doubleTapGesture];
    v10 = v9 == v6;
  }

  return v10;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKPictureBookVerticalNavigationController *)self doubleTapGesture];

  if (v8 == v7)
  {
    v9 = [v6 bk_isWKSyntheticTapGestureRecognizer];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 canBePreventedByGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKPictureBookVerticalNavigationController *)self doubleTapGesture];

  if (v8 != v7)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    LOBYTE(v9) = 1;
    goto LABEL_4;
  }

  v8 = v6;
  if ([v8 numberOfTapsRequired] == &dword_0 + 2)
  {
    v9 = [v8 matchesTarget:+[UIView be_wkContentViewClass](UIView andAction:{"be_wkContentViewClass"), "_nonBlockingDoubleTapRecognized:"}] ^ 1;
  }

  else
  {
LABEL_2:
    LOBYTE(v9) = 1;
  }

LABEL_4:
  return v9;
}

- (void)setZoomScale:(double)a3
{
  if (a3 < 1.0)
  {
    v5 = [(BKPictureBookVerticalNavigationController *)self scrollView];
    [v5 setMinimumZoomScale:a3];
  }

  if (a3 > 3.0)
  {
    v6 = [(BKPictureBookVerticalNavigationController *)self scrollView];
    [v6 setMaximumZoomScale:a3];
  }

  self->_scrollViewIsZooming = 1;
  v7 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [v7 setZoomScale:a3];

  self->_scrollViewIsZooming = 0;
}

- (void)resetZoomScale
{
  v3 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  v4 = 1.0;
  [v3 setMinimumZoomScale:1.0];

  if ([(BKPictureBookVerticalNavigationController *)self _allowZoom])
  {
    v4 = 3.0;
    if ([(BKPictureBookVerticalNavigationController *)self isViewLoaded])
    {
      v5 = [(BKPictureBookVerticalNavigationController *)self book];

      if (v5)
      {
        v6 = [(BKPictureBookVerticalNavigationController *)self book];
        v7 = [v6 firstDocument];
        [v7 fixedLayoutSize];
        v9 = v8;

        [(BKPictureBookVerticalNavigationController *)self pageSize];
        v4 = fmax(v9 / v10, 1.0) * 1.5;
      }
    }
  }

  v11 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [v11 setMaximumZoomScale:v4];

  self->_scrollViewIsZooming = 1;
  v12 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  v13 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [v13 minimumZoomScale];
  [v12 setZoomScale:?];

  if ([(BKPictureBookVerticalNavigationController *)self currentPageNumber]<= 1)
  {
    y = CGPointZero.y;
    v15 = [(BKPictureBookVerticalNavigationController *)self scrollView];
    [v15 setContentOffset:{CGPointZero.x, y}];
  }

  self->_scrollViewIsZooming = 0;
}

- (void)adjustToNewSize:(CGSize)a3
{
  [(BKPictureBookVerticalNavigationController *)self _setupScrollView:a3.width];
  if ([(BKPictureBookVerticalNavigationController *)self pageNumberBeforeTransition]== 0x7FFFFFFFFFFFFFFFLL)
  {

    [(BKPictureBookVerticalNavigationController *)self _updatePages];
  }

  else
  {
    [(BKPictureBookVerticalNavigationController *)self _displayPagesForOffset:[(BKPictureBookVerticalNavigationController *)self pageNumberBeforeTransition]- 1];

    [(BKPictureBookVerticalNavigationController *)self setPageNumberBeforeTransition:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (void)_setupScrollView:(BOOL)a3
{
  v5 = [(BKPictureBookVerticalNavigationController *)self view];
  v6 = [v5 window];

  if (!v6)
  {
    v7 = [(BKPictureBookVerticalNavigationController *)self delegate];
    [v7 desiredBoundsForNavigationController];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(BKPictureBookVerticalNavigationController *)self view];
    [v16 setFrame:{v9, v11, v13, v15}];
  }

  v17 = +[UIColor clearColor];
  v18 = [(BKPictureBookVerticalNavigationController *)self view];
  [v18 setBackgroundColor:v17];

  if (a3)
  {
    v19 = 1;
  }

  else
  {
    v20 = [(BKPictureBookVerticalNavigationController *)self scrollView];
    if (v20)
    {
      v21 = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];
      if (v21)
      {
        v22 = [(BKPictureBookVerticalNavigationController *)self view];
        [v22 bounds];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v31 = [(BKPictureBookVerticalNavigationController *)self scrollView];
        [v31 frame];
        v69.origin.x = v32;
        v69.origin.y = v33;
        v69.size.width = v34;
        v69.size.height = v35;
        v66.origin.x = v24;
        v66.origin.y = v26;
        v66.size.width = v28;
        v66.size.height = v30;
        v19 = !CGRectEqualToRect(v66, v69);
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {
      v19 = 1;
    }
  }

  v36 = [(BKPictureBookVerticalNavigationController *)self scrollView];

  if (v36)
  {
    [(BKPictureBookVerticalNavigationController *)self resetZoomScale];
  }

  else
  {
    v37 = [UIScrollView alloc];
    v38 = [(BKPictureBookVerticalNavigationController *)self view];
    [v38 bounds];
    v39 = [v37 initWithFrame:?];
    scrollView = self->_scrollView;
    self->_scrollView = v39;

    [(UIScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
    [(UIScrollView *)self->_scrollView setMinimumZoomScale:1.0];
    v41 = [(BKPictureBookVerticalNavigationController *)self _allowZoom];
    v42 = 3.0;
    if (!v41)
    {
      v42 = 1.0;
    }

    [(UIScrollView *)self->_scrollView setMaximumZoomScale:v42];
    v43 = +[UIColor clearColor];
    [(UIScrollView *)self->_scrollView setBackgroundColor:v43];

    [(UIScrollView *)self->_scrollView setDelegate:self];
    v44 = [(BKPictureBookVerticalNavigationController *)self view];
    [v44 addSubview:self->_scrollView];
  }

  [(BKPictureBookVerticalNavigationController *)self updateContentInsets];
  v45 = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];

  if (v45)
  {
    if (!v19)
    {
      return;
    }
  }

  else
  {
    v46 = [UIView alloc];
    [(UIScrollView *)self->_scrollView bounds];
    v47 = [v46 initWithFrame:?];
    pagesContainerView = self->_pagesContainerView;
    self->_pagesContainerView = v47;

    v49 = +[UIColor clearColor];
    [(UIView *)self->_pagesContainerView setBackgroundColor:v49];

    [(UIScrollView *)self->_scrollView addSubview:self->_pagesContainerView];
    if (!v19)
    {
      return;
    }
  }

  if ([(BKPageNavigationViewController *)self pageCount]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v50 = [(BKPictureBookVerticalNavigationController *)self view];
    [v50 bounds];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = [(BKPictureBookVerticalNavigationController *)self scrollView];
    [v59 setFrame:{v52, v54, v56, v58}];

    v60 = [(BKPictureBookVerticalNavigationController *)self scrollView];
    [v60 bounds];
    Width = CGRectGetWidth(v67);
    v62 = [(BKPictureBookVerticalNavigationController *)self scrollView];
    [v62 bounds];
    Height = CGRectGetHeight(v68);
    v64 = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];
    [v64 setFrame:{0.0, 0.0, Width, Height}];

    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_F75E8;
    v65[3] = &unk_1E4548;
    v65[4] = self;
    v65[5] = [(BKPageNavigationViewController *)self pageCount];
    [(BKPictureBookVerticalNavigationController *)self generatePositionForAllPages:v65];
  }
}

- (BOOL)shouldDisplaySpread
{
  if (![(BKPictureBookVerticalNavigationController *)self isViewLoaded])
  {
    return 0;
  }

  v3 = [(BKPictureBookVerticalNavigationController *)self book];
  v4 = [v3 firstDocument];
  [v4 fixedLayoutSize];
  v6 = v5;
  v8 = v7;

  v9 = [(BKPictureBookVerticalNavigationController *)self view];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v22.origin.x = v11;
  v22.origin.y = v13;
  v22.size.width = v15;
  v22.size.height = v17;
  Width = CGRectGetWidth(v22);
  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  if (Width <= CGRectGetHeight(v23) || v6 > v8)
  {
    return 0;
  }

  v19 = [(BKPictureBookVerticalNavigationController *)self delegate];
  v20 = [v19 supportsSpreadForVerticalLayout];

  return v20;
}

- (int64_t)currentPageNumber
{
  if (!self->_scrollView)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [v3 contentOffset];
  v4 = [(BKPictureBookVerticalNavigationController *)self pageNumberAtContentOffset:?];

  return v4;
}

- (int64_t)pageNumberAtContentOffset:(CGPoint)a3
{
  [(BKPictureBookVerticalNavigationController *)self rawPageNumberForOffset:a3.x pageFraction:a3.y, 2.0];
  v5 = v4;
  v6 = [(BKPictureBookVerticalNavigationController *)self shouldDisplaySpread];
  v7 = 2 * v5;
  if (!v6)
  {
    v7 = v5 + 1;
  }

  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  result = [(BKPageNavigationViewController *)self pageCount];
  if (v8 < result)
  {
    return v8;
  }

  return result;
}

- (double)rawPageNumberForOffset:(CGPoint)a3 pageFraction:(double)a4
{
  y = a3.y;
  v7 = [(BKPictureBookVerticalNavigationController *)self book];
  v8 = 1.0;
  if (v7)
  {
    v9 = v7;
    v10 = [(BKPictureBookVerticalNavigationController *)self scrollView];

    if (v10)
    {
      [(BKPictureBookVerticalNavigationController *)self pageSize];
      v12 = v11;
      v13 = [(BKPictureBookVerticalNavigationController *)self scrollView];
      [v13 zoomScale];
      if (v14 == 0.0)
      {
        v17 = 1.0;
      }

      else
      {
        v15 = [(BKPictureBookVerticalNavigationController *)self scrollView];
        [v15 zoomScale];
        v17 = v16;
      }

      [(BKPictureBookVerticalNavigationController *)self _spaceBetweenPages];
      v19 = v12 + v18;
      v20 = [(BKPictureBookVerticalNavigationController *)self scrollView];
      [v20 bounds];
      v8 = (y / v17 + CGRectGetHeight(v22) / a4) / v19;
    }
  }

  return v8;
}

- (BOOL)isPastEndOfBook:(CGPoint)a3
{
  [(BKPictureBookVerticalNavigationController *)self rawPageNumberForOffset:a3.x pageFraction:a3.y, 1.0];
  v5 = v4;
  v6 = [(BKPictureBookVerticalNavigationController *)self shouldDisplaySpread];
  v7 = [(BKPageNavigationViewController *)self pageCount];
  v8 = v7;
  v9 = round(vcvtd_n_f64_s64(v7 + 1, 1uLL));
  if (v6)
  {
    v8 = v9;
  }

  return v5 - v8 > 0.1;
}

- (_NSRange)visiblePages
{
  if (self->_scrollView)
  {
    v3 = [(BKPictureBookVerticalNavigationController *)self currentPageNumber];
    if ([(BKPictureBookVerticalNavigationController *)self shouldDisplaySpread]&& v3 > 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v3;
  result.length = v4;
  result.location = v5;
  return result;
}

- (id)contentView
{
  v3 = [(BKPictureBookVerticalNavigationController *)self currentPageNumber];

  return [(BKPictureBookVerticalNavigationController *)self viewForPageNumber:v3];
}

- (CGSize)pageSize
{
  v3 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  p_pageSize = &self->_pageSize;
  v9 = self->_pageSize.width == CGSizeZero.width && self->_pageSize.height == CGSizeZero.height;
  if (!v9 && (([(BKPictureBookVerticalNavigationController *)self _lastScrollViewSizeLayoutWasGeneratedFor], v5 == v11) ? (v12 = v7 == v10) : (v12 = 0), v12))
  {
    width = p_pageSize->width;
    height = self->_pageSize.height;
  }

  else
  {
    [(BKPictureBookVerticalNavigationController *)self set_lastScrollViewSizeLayoutWasGeneratedFor:v5, v7];
    v13 = [(BKPictureBookVerticalNavigationController *)self book];
    v14 = [v13 firstDocument];
    [v14 fixedLayoutSize];

    [(BKPictureBookVerticalNavigationController *)self shouldDisplaySpread];
    CGSizeScaledToFitInSize();
    v17 = v15 / v16;
    width = ceil(v15);
    height = floor(width / v17);
    p_pageSize->width = width;
    self->_pageSize.height = height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (id)viewForPageNumber:(int64_t)a3
{
  if (a3 > 0x7FFFFFFFFFFFFFFELL)
  {
    v3 = 0;
    goto LABEL_11;
  }

  [(BKPictureBookVerticalNavigationController *)self pageSize];
  v7 = v6;
  v9 = v8;
  [(BKPictureBookVerticalNavigationController *)self originForPageNumber:a3];
  v11 = v10;
  v13 = v12;
  v3 = [(UIView *)self->_pagesContainerView viewWithTag:a3 + 5000];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_F7E94;
  v21[3] = &unk_1E5DC0;
  v21[4] = self;
  v21[5] = a3;
  v14 = objc_retainBlock(v21);
  if (!v3)
  {
    v19 = _AEWKPictureBookLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = a3;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Creating View for page %lu", buf, 0xCu);
    }

    v3 = [[BKPictureBookPageContainerView alloc] initWithFrame:v11, v13, v7, v9];
    [(BKPictureBookPageContainerView *)v3 setPageNumber:a3];
    [(BKPictureBookPageContainerView *)v3 setUseRoundedCornerRadius:[(BKPictureBookVerticalNavigationController *)self _pageViewShouldHaveRoundedCorners]];
    [(BKPictureBookPageContainerView *)v3 setAutoresizingMask:0];
    [(BKPictureBookPageContainerView *)v3 setTag:a3 + 5000];
    goto LABEL_9;
  }

  [(BKPictureBookPageContainerView *)v3 frame];
  v26.origin.x = v15;
  v26.origin.y = v16;
  v26.size.width = v17;
  v26.size.height = v18;
  v25.origin.x = v11;
  v25.origin.y = v13;
  v25.size.width = v7;
  v25.size.height = v9;
  if (!CGRectEqualToRect(v25, v26))
  {
    [(BKPictureBookPageContainerView *)v3 setFrame:v11, v13, v7, v9];
LABEL_9:
    (v14[2])(v14, v3);
  }

LABEL_11:

  return v3;
}

- (CGRect)frameForPageNumber:(int64_t)a3
{
  [(BKPictureBookVerticalNavigationController *)self pageSize];
  v6 = v5;
  v8 = v7;
  [(BKPictureBookVerticalNavigationController *)self originForPageNumber:a3];
  v11 = v6;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)generatePositionForAllPages:(id)a3
{
  v27 = a3;
  v4 = [(BKPictureBookVerticalNavigationController *)self _positionForPages];
  if (![v4 count])
  {
    v14 = [(BKPageNavigationViewController *)self pageCount];

    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v5 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  [(BKPictureBookVerticalNavigationController *)self _lastScrollViewSizeLayoutWasGeneratedFor];
  if (v7 == v11 && v9 == v10)
  {

LABEL_14:
    goto LABEL_15;
  }

  v13 = [(BKPageNavigationViewController *)self pageCount];

  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_9:
    v15 = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];
    [v15 bounds];
    v17 = v16;
    v19 = v18;

    v20 = [(BKPictureBookVerticalNavigationController *)self shouldDisplaySpread];
    v4 = [NSMutableArray arrayWithCapacity:[(BKPageNavigationViewController *)self pageCount]];
    v21 = [(BKPageNavigationViewController *)self pageCount];
    if (v21 != -1)
    {
      v22 = 0;
      v23 = v21 + 1;
      do
      {
        [(BKPictureBookVerticalNavigationController *)self originForPageNumber:v22 pagesContainerSize:v20 isSpread:v17, v19];
        v24 = [NSValue valueWithPoint:?];
        [v4 addObject:v24];

        ++v22;
      }

      while (v23 != v22);
    }

    [(BKPictureBookVerticalNavigationController *)self set_positionForPages:v4];
    goto LABEL_14;
  }

LABEL_15:
  v25 = objc_retainBlock(v27);
  v26 = v25;
  if (v25)
  {
    (*(v25 + 2))(v25);
  }
}

- (CGPoint)originForPageNumber:(int64_t)a3 pagesContainerSize:(CGSize)a4 isSpread:(BOOL)a5
{
  v5 = a5;
  width = a4.width;
  v9 = [(BKPictureBookVerticalNavigationController *)self book:a4.width];
  v10 = [v9 bkPageProgressionDirection];

  [(BKPictureBookVerticalNavigationController *)self pageSize];
  v13 = v12;
  if (v5)
  {
    v14 = width * 0.5 - v11;
    if (((v10 != 1) ^ a3))
    {
      v15 = v14;
    }

    else
    {
      v15 = width * 0.5;
    }

    [(BKPictureBookVerticalNavigationController *)self _spaceBetweenPages];
    v17 = v13 + v16;
    v18 = (a3 / 2);
  }

  else
  {
    if (a3 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = a3;
    }

    v20 = v19 - 1;
    v15 = (width - v11) * 0.5;
    [(BKPictureBookVerticalNavigationController *)self _spaceBetweenPages];
    v17 = v13 + v21;
    v18 = v20;
  }

  v22 = v17 * v18;
  v23 = v15;
  result.y = v22;
  result.x = v23;
  return result;
}

- (CGPoint)originForPageNumber:(int64_t)a3
{
  v5 = [(BKPictureBookVerticalNavigationController *)self _positionForPages];
  v6 = [v5 count];

  v7 = [(BKPictureBookVerticalNavigationController *)self _positionForPages];

  if (v7 && v6 > a3)
  {
    v8 = a3 & ~(a3 >> 63);
    v9 = [(BKPictureBookVerticalNavigationController *)self _positionForPages];
    v10 = [v9 count] - 1;

    if (v8 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    v12 = [(BKPictureBookVerticalNavigationController *)self _positionForPages];
    v13 = [v12 objectAtIndexedSubscript:v11];
  }

  else
  {
    v14 = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];
    [v14 bounds];
    v16 = v15;
    v18 = v17;

    [(BKPictureBookVerticalNavigationController *)self originForPageNumber:a3 pagesContainerSize:[(BKPictureBookVerticalNavigationController *)self shouldDisplaySpread] isSpread:v16, v18];
    v27[0] = v19;
    v27[1] = v20;
    v13 = [NSValue valueWithBytes:v27 objCType:"{CGPoint=dd}"];
  }

  [v13 CGPointValue];
  v22 = v21;
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.y = v26;
  result.x = v25;
  return result;
}

- (id)snapshotCurrentPageInContext
{
  v2 = [(BKPictureBookVerticalNavigationController *)self viewForPageNumber:[(BKPictureBookVerticalNavigationController *)self currentPageNumber]];
  [v2 bounds];
  if (v3 <= 0.0 || (v5 = v4, v4 <= 0.0))
  {
    v7 = _AEWKPictureBookLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Snapshotting a CGSizeZero view", v11, 2u);
    }

    v9 = 0;
  }

  else
  {
    v6 = v3;
    v7 = +[UIGraphicsImageRendererFormat preferredFormat];
    v8 = [[UIGraphicsImageRenderer alloc] initWithSize:v7 format:{v6, v5}];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_F8504;
    v12[3] = &unk_1E5DE8;
    v13 = v2;
    v9 = [v8 imageWithActions:v12];
  }

  return v9;
}

- (void)contentViewImage:(BOOL)a3 afterScreenUpdates:(BOOL)a4 completion:(id)a5
{
  v6 = a5;
  if ([(BKPictureBookVerticalNavigationController *)self shouldDisplaySpread])
  {
    v7 = objc_alloc_init(BKPictureBookView);
    [(BKPictureBookVerticalNavigationController *)self pageSize];
    [(BKPictureBookView *)v7 setContentSize:?];
    [(BKPictureBookView *)v7 setDrawsSpine:1];
    [(BKPictureBookVerticalNavigationController *)self pageSize];
    [BKPictureBookView actualSizeForContentSize:1 drawsSpine:?];
    CGRectMakeWithSize();
    [(BKPictureBookView *)v7 setFrame:?];
    v8 = [(BKPictureBookVerticalNavigationController *)self currentPageNumber]- 1;
    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_F883C;
    v27[3] = &unk_1E5E10;
    v10 = v7;
    v28 = v10;
    v29 = self;
    v11 = v9;
    v30 = v11;
    [(BKPictureBookVerticalNavigationController *)self _generateLeftPageImageAtPageOffset:v8 completion:v27];
    dispatch_group_enter(v11);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_F8894;
    v23[3] = &unk_1E5E10;
    v12 = v10;
    v24 = v12;
    v25 = self;
    v26 = v11;
    v13 = v11;
    [(BKPictureBookVerticalNavigationController *)self _generateRightPageImageAtPageOffset:v8 completion:v23];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_F88EC;
    block[3] = &unk_1E3438;
    v21 = v12;
    v22 = v6;
    v14 = v6;
    v15 = v12;
    dispatch_group_notify(v13, &_dispatch_main_q, block);
  }

  else
  {
    v16 = [(BKPictureBookVerticalNavigationController *)self delegate];
    v17 = [(BKPictureBookVerticalNavigationController *)self currentPageNumber];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_F8A68;
    v18[3] = &unk_1E2E50;
    v19 = v6;
    v13 = v6;
    [v16 pageNavigationSnapshotForPageNumber:v17 completion:v18];

    v15 = v19;
  }
}

- (void)_generateLeftPageImageAtPageOffset:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(BKPageNavigationViewController *)self leftPageNumberForSinglePageOffset:a3];
  v8 = [(BKPictureBookVerticalNavigationController *)self delegate];
  [v8 pageNavigationSnapshotForPageNumber:v7 completion:v6];
}

- (void)_generateRightPageImageAtPageOffset:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(BKPageNavigationViewController *)self rightPageNumberForSinglePageOffset:a3];
  v8 = [(BKPictureBookVerticalNavigationController *)self delegate];
  [v8 pageNavigationSnapshotForPageNumber:v7 completion:v6];
}

- (void)setPageCount:(int64_t)a3
{
  v5 = [(BKPageNavigationViewController *)self pageCount];
  v6.receiver = self;
  v6.super_class = BKPictureBookVerticalNavigationController;
  [(BKPageNavigationViewController *)&v6 setPageCount:a3];
  if (v5 != a3)
  {
    if ([(BKPictureBookVerticalNavigationController *)self isViewLoaded])
    {
      [(BKPictureBookVerticalNavigationController *)self _setupScrollView:1];
      [(BKPictureBookVerticalNavigationController *)self _updatePages];
    }
  }
}

- (void)setPageOffset:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3 & ~(a3 >> 63);
  v8 = [(BKPageNavigationViewController *)self pageCount];
  if (v7 >= v8 - 1)
  {
    v7 = v8 - 1;
  }

  if (v7 == self->super._pageOffset)
  {
    v9 = objc_retainBlock(v6);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9);
    }
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_F8DA0;
    v14[3] = &unk_1E5E38;
    v14[4] = self;
    v16 = v7;
    v15 = v6;
    v11 = objc_retainBlock(v14);
    v12 = [(BKPictureBookVerticalNavigationController *)self delegate];
    v13 = [v12 pageNavigationController:self shouldDelayChangeToPageOffset:v7 completion:v11];

    if ((v13 & 1) == 0)
    {
      (v11[2])(v11);
    }
  }
}

- (void)_setPageOffsetUncheckedImmediate:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = BKPictureBookVerticalNavigationController;
  [(BKPageNavigationViewController *)&v6 setPageOffset:?];
  if ([(BKPictureBookVerticalNavigationController *)self isViewLoaded])
  {
    [(BKPictureBookVerticalNavigationController *)self _displayPagesForOffset:a3];
    v5 = [(BKPictureBookVerticalNavigationController *)self delegate];
    [v5 pageNavigationDidChangeLocation:self];
  }
}

- (void)turnToPageNumber:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v10 = a5;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || (v9 = [(BKPageNavigationViewController *)self pageOffset], a3 < 1) || v9 + 1 == a3 || [(BKPageNavigationViewController *)self pageCount]< a3)
  {
    v7 = objc_retainBlock(v10);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7);
    }
  }

  else
  {
    [(BKPictureBookVerticalNavigationController *)self isVisible];
    [(BKPictureBookVerticalNavigationController *)self setPageOffset:a3 - 1 completion:v10];
  }
}

- (void)turnToNextPage
{
  if ([(BKPageNavigationViewController *)self pageOffset]== &dword_0 + 1)
  {
    v3 = 1;
  }

  else
  {
    [(BKPictureBookVerticalNavigationController *)self visiblePages];
    if (v4 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v4;
    }
  }

  [(BKPageNavigationViewController *)self turnToNextPageWithDelta:v3];
}

- (void)turnToPreviousPage
{
  [(BKPictureBookVerticalNavigationController *)self visiblePages];
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  [(BKPageNavigationViewController *)self turnToPreviousPageWithDelta:v4];
}

- (CGPoint)contentOffsetToScrollToForPageNumber:(int64_t)a3
{
  [(BKPictureBookVerticalNavigationController *)self originForPageNumber:a3];
  v5 = v4;
  [(BKPictureBookVerticalNavigationController *)self pageSize];
  v7 = v6;
  v8 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [v8 bounds];
  Height = CGRectGetHeight(v23);

  v10 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [v10 zoomScale];
  v12 = v5 * v11;

  v13 = v12 + (Height - v7) * -0.5;
  v14 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [v14 contentInset];
  v16 = -v15;

  if (v13 >= v16)
  {
    v16 = v13;
  }

  v17 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [v17 contentSize];
  v19 = v18;

  if (v16 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  v21 = 0.0;
  result.y = v20;
  result.x = v21;
  return result;
}

- (void)_displayPagesForOffset:(int64_t)a3
{
  [(BKPictureBookVerticalNavigationController *)self contentOffsetToScrollToForPageNumber:a3 + 1];
  v5 = v4;
  v7 = v6;
  v8 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [v8 setContentOffset:0 animated:{v5, v7}];

  self->_lastScrollSpeed = 0.0;

  [(BKPictureBookVerticalNavigationController *)self _updatePages];
}

- (id)_setupPageNumber:(int64_t)a3
{
  v5 = [(BKPictureBookVerticalNavigationController *)self viewForPageNumber:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 superview];

    if (!v7)
    {
      v8 = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];
      [v8 addSubview:v6];
    }

    if (self->_lastScrollSpeed >= 0.5)
    {
      v9 = 0;
    }

    else
    {
      v9 = ![(BKPictureBookVerticalNavigationController *)self animating];
    }

    v10 = [v6 viewWithTag:1306];
    if (v10)
    {
      objc_opt_class();
      v11 = BUDynamicCast();
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = [BKPageScrollerPageView alloc];
      [v6 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [(BKPictureBookVerticalNavigationController *)self delegate];
      v22 = [(BKPictureBookVerticalNavigationController *)self delegate];
      v23 = [(BKPictureBookVerticalNavigationController *)self delegate];
      v11 = [(BKPageScrollerPageView *)v12 initWithFrame:a3 pageNumber:v21 navigationDelegate:v22 thumbnailingDelegate:v23 imageResizerDelegate:v14, v16, v18, v20];

      [v6 bounds];
      [(BKPageScrollerPageView *)v11 setFrame:?];
      [(BKPageScrollerPageView *)v11 setAutoresizingMask:18];
      [(BKPageScrollerPageView *)v11 setTag:1306];
      [v6 addSubview:v11];
      if (!v11)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    [v6 setPageScrollerPageView:v11];
    if (v9)
    {
      [(BKPageScrollerPageView *)v11 setScrollState:2];
      objc_opt_class();
      v24 = [(BKPictureBookVerticalNavigationController *)self delegate];
      v25 = [v24 contentViewControllerForPageNumber:a3];
      v26 = BUDynamicCast();

      [(BKPictureBookVerticalNavigationController *)self _applyAdditionalScale:v26];
    }

    goto LABEL_13;
  }

LABEL_14:

  return v6;
}

- (void)_applyAdditionalScale:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 loader];
    v6 = [v5 webView];
    [v6 be_scale];
    v8 = v7;

    if (v8 < BEWebViewMinimumZoomScale)
    {
      v9 = v8 / BEWebViewMinimumZoomScale;
      v10 = _AEWKPictureBookLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.a) = 134218240;
        *(&buf.a + 4) = v9;
        WORD2(buf.b) = 2048;
        *(&buf.b + 6) = [v4 ordinal];
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "{WebViewLifeCycle} Applying additional scale:%f for ordinal:%lu", &buf, 0x16u);
      }

      memset(&buf, 0, sizeof(buf));
      CGAffineTransformMakeScale(&buf, v9, v9);
      v13 = buf;
      v11 = [v4 view];
      v12 = v13;
      [v11 setTransform:&v12];
    }
  }
}

- (void)_teardownPageNumber:(int64_t)a3
{
  v4 = [(BKPictureBookVerticalNavigationController *)self viewForPageNumber:a3];
  if (v4)
  {
    v8 = v4;
    v5 = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];

    v4 = v8;
    if (v8 != v5)
    {
      v6 = [v8 pageScrollerPageView];
      v7 = v6;
      if (v6)
      {
        [v6 setScrollState:3];
      }

      [v7 teardown];
      [v7 removeFromSuperview];
      [v8 removeFromSuperview];

      v4 = v8;
    }
  }
}

- (void)_updatePages
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_F9678;
  v3[3] = &unk_1E36F8;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(BKPictureBookVerticalNavigationController *)self generatePositionForAllPages:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)setPreferredPageNumberHUDVisibility:(BOOL)a3
{
  if (self->_preferredPageNumberHUDVisibility != a3)
  {
    self->_preferredPageNumberHUDVisibility = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 pictureBookVerticalNavigationpreferredPageNumberHUDVisibilityChanged:self->_preferredPageNumberHUDVisibility];
    }
  }
}

- (double)_spaceBetweenPages
{
  v2 = [(BKPictureBookVerticalNavigationController *)self _bookRenditionFlowIsScrolledContinuous];
  result = 4.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)_bookRenditionFlowIsScrolledContinuous
{
  v2 = [(BKPictureBookVerticalNavigationController *)self book];
  v3 = [v2 fixedLayoutFlow];
  v4 = [v3 isEqualToString:@"scrolled-continuous"];

  return v4;
}

- (BOOL)_isRTL
{
  v2 = [(BKPictureBookVerticalNavigationController *)self book];
  v3 = [v2 bkPageProgressionDirection] == 1;

  return v3;
}

- (void)updateLocationIfNeeded
{
  v3 = [(BKPictureBookVerticalNavigationController *)self currentPageNumber]- 1;
  if (v3 != [(BKPageNavigationViewController *)self pageOffset])
  {
    self->super._pageOffset = [(BKPictureBookVerticalNavigationController *)self currentPageNumber]- 1;
    v4 = [(BKPictureBookVerticalNavigationController *)self delegate];
    [v4 pageNavigationDidChangeLocation:self];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v12 = a3;
  [v12 contentOffset];
  v5 = v4;
  v7 = v6;
  if (!self->_scrollViewIsZooming && ![(BKPictureBookVerticalNavigationController *)self animating]&& [(BKPictureBookVerticalNavigationController *)self isPastEndOfBook:v5, v7])
  {
    v8 = [(BKPictureBookVerticalNavigationController *)self delegate];
    [v8 pageNavigationDidTryToSwipePastEndOfBook:self];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v10 = v9;
  if (v9 - self->_lastOffsetCapture > 0.1)
  {
    v11 = fabs((v7 - self->_lastOffset.y) / 100.0);
    [(BKPictureBookVerticalNavigationController *)self setPreferredPageNumberHUDVisibility:v11 > 1.0];
    self->_lastScrollSpeed = v11;
    self->_lastOffset.x = v5;
    self->_lastOffset.y = v7;
    self->_lastOffsetCapture = v10;
  }

  if (([v12 isZooming] & 1) == 0 && !self->_scrollViewIsZooming && !-[BKPictureBookVerticalNavigationController animating](self, "animating") && vabdd_f64(self->_lastOffsetUsedForPageRefresh.y, v7) > 100.0)
  {
    [(BKPictureBookVerticalNavigationController *)self _updatePages];
    [(BKPictureBookVerticalNavigationController *)self updateLocationIfNeeded];
    self->_lastPageRefreshTime = v10;
    self->_lastOffsetUsedForPageRefresh.x = v5;
    self->_lastOffsetUsedForPageRefresh.y = v7;
  }
}

- (id)viewForZoomingInScrollView:(id)a3
{
  v4 = a3;
  v5 = [(BKPictureBookVerticalNavigationController *)self scrollView];

  if (v5 == v4)
  {
    v6 = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v3 = [(BKPictureBookVerticalNavigationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 pictureBookVerticalNavigationInteractionDidStart:0];
  }
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  self->_scrollViewIsZooming = 1;
  v5 = [(BKPictureBookVerticalNavigationController *)self delegate:a3];
  if (v5)
  {
    v6 = v5;
    v7 = [(BKPictureBookVerticalNavigationController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(BKPictureBookVerticalNavigationController *)self delegate];
      [v9 pictureBookVerticalNavigationInteractionDidStart:1];
    }
  }
}

- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5
{
  [(BKPictureBookVerticalNavigationController *)self _updatePages:a3];
  [(BKPictureBookVerticalNavigationController *)self updateLocationIfNeeded];
  self->_scrollViewIsZooming = 0;
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  [(BKPictureBookVerticalNavigationController *)self setPreferredPageNumberHUDVisibility:0];

  [(BKPictureBookVerticalNavigationController *)self _updatePages];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(BKPictureBookVerticalNavigationController *)self setPreferredPageNumberHUDVisibility:0];
    self->_lastScrollSpeed = 0.0;

    [(BKPictureBookVerticalNavigationController *)self _updatePages];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  if (fabs(a4.y) > 1.0)
  {
    v8 = a3;
    [v8 zoomScale];
    v10 = v9;
    [v8 minimumZoomScale];
    v12 = v11;

    if (v10 == v12)
    {
      if (([(BKPictureBookVerticalNavigationController *)self contentOffsetToScrollToForPageNumber:[(BKPictureBookVerticalNavigationController *)self pageNumberAtContentOffset:a5->x, a5->y]], v15 = v14 - a5->y, y > 0.0) && v15 > 0.0 || y < 0.0 && v15 < 0.0)
      {
        a5->x = v13;
        a5->y = v14;
      }
    }
  }
}

- (BKPictureBookNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)_lastScrollViewSizeLayoutWasGeneratedFor
{
  width = self->__lastScrollViewSizeLayoutWasGeneratedFor.width;
  height = self->__lastScrollViewSizeLayoutWasGeneratedFor.height;
  result.height = height;
  result.width = width;
  return result;
}

@end