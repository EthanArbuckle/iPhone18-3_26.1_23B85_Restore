@interface BKPictureBookVerticalNavigationController
- (BKPictureBookNavigationDelegate)delegate;
- (BOOL)_bookRenditionFlowIsScrolledContinuous;
- (BOOL)_isRTL;
- (BOOL)gestureRecognizer:(id)recognizer canBePreventedByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isPastEndOfBook:(CGPoint)book;
- (BOOL)shouldDisplaySpread;
- (CGPoint)contentOffsetToScrollToForPageNumber:(int64_t)number;
- (CGPoint)originForPageNumber:(int64_t)number;
- (CGPoint)originForPageNumber:(int64_t)number pagesContainerSize:(CGSize)size isSpread:(BOOL)spread;
- (CGRect)frameForPageNumber:(int64_t)number;
- (CGSize)_lastScrollViewSizeLayoutWasGeneratedFor;
- (CGSize)pageSize;
- (_NSRange)visiblePages;
- (double)_spaceBetweenPages;
- (double)rawPageNumberForOffset:(CGPoint)offset pageFraction:(double)fraction;
- (id)_setupPageNumber:(int64_t)number;
- (id)contentView;
- (id)pageViews;
- (id)snapshotCurrentPageInContext;
- (id)viewForPageNumber:(int64_t)number;
- (id)viewForZoomingInScrollView:(id)view;
- (int64_t)currentPageNumber;
- (int64_t)pageNumberAtContentOffset:(CGPoint)offset;
- (void)_applyAdditionalScale:(id)scale;
- (void)_displayPagesForOffset:(int64_t)offset;
- (void)_generateLeftPageImageAtPageOffset:(int64_t)offset completion:(id)completion;
- (void)_generateRightPageImageAtPageOffset:(int64_t)offset completion:(id)completion;
- (void)_setPageOffsetUncheckedImmediate:(int64_t)immediate;
- (void)_setupGestures;
- (void)_setupScrollView:(BOOL)view;
- (void)_teardownPageNumber:(int64_t)number;
- (void)_updatePages;
- (void)adjustToNewSize:(CGSize)size;
- (void)contentViewImage:(BOOL)image afterScreenUpdates:(BOOL)updates completion:(id)completion;
- (void)doubleTapGestureHandler:(id)handler;
- (void)generatePositionForAllPages:(id)pages;
- (void)resetZoomScale;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setAllowDoubleTapToZoom:(BOOL)zoom;
- (void)setPageCount:(int64_t)count;
- (void)setPageOffset:(int64_t)offset completion:(id)completion;
- (void)setPreferredPageNumberHUDVisibility:(BOOL)visibility;
- (void)setZoomScale:(double)scale;
- (void)tapGestureHandler:(id)handler;
- (void)turnToNextPage;
- (void)turnToPageNumber:(int64_t)number animated:(BOOL)animated completion:(id)completion;
- (void)turnToPreviousPage;
- (void)updateContentInsets;
- (void)updateLocationIfNeeded;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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
    delegate = [(BKPictureBookVerticalNavigationController *)self delegate];
    [delegate pageNavigationDidChangeLocation:self];
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v11.receiver = self;
  v11.super_class = BKPictureBookVerticalNavigationController;
  [(BKPictureBookVerticalNavigationController *)&v11 viewIsAppearing:appearing];
  delegate = [(BKPictureBookVerticalNavigationController *)self delegate];
  transitionLocationForNavigationController = [delegate transitionLocationForNavigationController];

  currentPageNumber = [(BKPictureBookVerticalNavigationController *)self currentPageNumber];
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

    ordinal = [v7 ordinal];
    currentPageNumber = [v7 pageOffset] + ordinal + 1;
  }

  v10 = _AECaptureLocationLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = currentPageNumber;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "#PictureBookVerticalNVC viewWillAppear transitioning to page number: %lu", buf, 0xCu);
  }

  [(BKPictureBookVerticalNavigationController *)self setPageNumberBeforeTransition:currentPageNumber];
  [(BKPictureBookVerticalNavigationController *)self _setupScrollView];
  [(BKPictureBookVerticalNavigationController *)self _displayPagesForOffset:[(BKPictureBookVerticalNavigationController *)self pageNumberBeforeTransition]- 1];
  [(BKPictureBookVerticalNavigationController *)self setPageNumberBeforeTransition:0x7FFFFFFFFFFFFFFFLL];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BKPictureBookVerticalNavigationController;
  [(BKPictureBookVerticalNavigationController *)&v4 viewDidAppear:appear];
  [(BKPictureBookVerticalNavigationController *)self updateContentInsets];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  delegate = [(BKPictureBookVerticalNavigationController *)self delegate];
  inLiveResize = [delegate inLiveResize];

  if (inLiveResize)
  {
    [(BKPictureBookVerticalNavigationController *)self setPageNumberBeforeTransition:[(BKPictureBookVerticalNavigationController *)self currentPageNumber]];
  }

  if ([(BKPictureBookVerticalNavigationController *)self isVisible])
  {
    delegate2 = [(BKPictureBookVerticalNavigationController *)self delegate];
    inLiveResize2 = [delegate2 inLiveResize];

    if ((inLiveResize2 & 1) == 0)
    {
      [(BKPictureBookVerticalNavigationController *)self setAnimating:1];
      [(BKPictureBookVerticalNavigationController *)self setPageNumberBeforeTransition:[(BKPictureBookVerticalNavigationController *)self currentPageNumber]];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      pageViews = [(BKPictureBookVerticalNavigationController *)self pageViews];
      v13 = [pageViews countByEnumeratingWithState:&v23 objects:v27 count:16];
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
              objc_enumerationMutation(pageViews);
            }

            v17 = *(*(&v23 + 1) + 8 * i);
            pageNumber = [v17 pageNumber];
            if (pageNumber == [(BKPictureBookVerticalNavigationController *)self pageNumberBeforeTransition])
            {
              pageScrollerPageView = [v17 pageScrollerPageView];
              [pageScrollerPageView setScrollState:3];
            }

            else
            {
              [v17 setAlpha:0.0];
            }
          }

          v14 = [pageViews countByEnumeratingWithState:&v23 objects:v27 count:16];
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
      [coordinatorCopy animateAlongsideTransition:v22 completion:v21];
    }
  }

  v20.receiver = self;
  v20.super_class = BKPictureBookVerticalNavigationController;
  [(BKPictureBookVerticalNavigationController *)&v20 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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
  pagesContainerView = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];
  subviews = [pagesContainerView subviews];
  v4 = [NSPredicate predicateWithBlock:&stru_1E5D98];
  v5 = [subviews filteredArrayUsingPredicate:v4];

  return v5;
}

- (void)updateContentInsets
{
  view = [(BKPictureBookVerticalNavigationController *)self view];
  [view safeAreaInsets];
  v5 = v4;
  view2 = [(BKPictureBookVerticalNavigationController *)self view];
  [view2 safeAreaInsets];
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
  scrollView = [(BKPictureBookVerticalNavigationController *)self scrollView];
  doubleTapGesture = [(BKPictureBookVerticalNavigationController *)self doubleTapGesture];
  [scrollView addGestureRecognizer:doubleTapGesture];

  v8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tapGestureHandler:"];
  if (self->_doubleTapGesture)
  {
    [v8 requireGestureRecognizerToFail:?];
  }

  view = [(BKPictureBookVerticalNavigationController *)self view];
  [view addGestureRecognizer:v8];
}

- (void)tapGestureHandler:(id)handler
{
  delegate = [(BKPictureBookVerticalNavigationController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(BKPictureBookVerticalNavigationController *)self delegate];
    [delegate2 contentView:0 unhandledClickAtPoint:{CGPointZero.x, CGPointZero.y}];
  }
}

- (void)setAllowDoubleTapToZoom:(BOOL)zoom
{
  zoomCopy = zoom;
  if (self->_allowDoubleTapToZoom != zoom)
  {
    self->_allowDoubleTapToZoom = zoom;
  }

  doubleTapGesture = [(BKPictureBookVerticalNavigationController *)self doubleTapGesture];
  [doubleTapGesture setEnabled:zoomCopy];
}

- (void)doubleTapGestureHandler:(id)handler
{
  handlerCopy = handler;
  scrollView = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [scrollView zoomScale];
  v6 = v5;

  scrollView2 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  scrollView3 = scrollView2;
  if (v6 <= 1.0)
  {
    [handlerCopy locationInView:scrollView2];
    v10 = v9;
    v12 = v11;

    [(BKPictureBookVerticalNavigationController *)self pageSize];
    v14 = v13 * 0.5;
    [(BKPictureBookVerticalNavigationController *)self pageSize];
    v16 = v15 * 0.5;
    v17 = v10 - v15 * 0.5 * 0.5;
    scrollView3 = [(BKPictureBookVerticalNavigationController *)self scrollView];
    [scrollView3 zoomToRect:1 animated:{v17, v12 - v14 * 0.5, v16, v14}];
  }

  else
  {
    [scrollView2 setZoomScale:1 animated:?];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  doubleTapGesture = [(BKPictureBookVerticalNavigationController *)self doubleTapGesture];

  return doubleTapGesture == beginCopy;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  doubleTapGesture = [(BKPictureBookVerticalNavigationController *)self doubleTapGesture];

  if (doubleTapGesture == recognizerCopy)
  {
    v10 = 1;
  }

  else
  {
    doubleTapGesture2 = [(BKPictureBookVerticalNavigationController *)self doubleTapGesture];
    v10 = doubleTapGesture2 == gestureRecognizerCopy;
  }

  return v10;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  doubleTapGesture = [(BKPictureBookVerticalNavigationController *)self doubleTapGesture];

  if (doubleTapGesture == recognizerCopy)
  {
    bk_isWKSyntheticTapGestureRecognizer = [gestureRecognizerCopy bk_isWKSyntheticTapGestureRecognizer];
  }

  else
  {
    bk_isWKSyntheticTapGestureRecognizer = 0;
  }

  return bk_isWKSyntheticTapGestureRecognizer;
}

- (BOOL)gestureRecognizer:(id)recognizer canBePreventedByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  doubleTapGesture = [(BKPictureBookVerticalNavigationController *)self doubleTapGesture];

  if (doubleTapGesture != recognizerCopy)
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

  doubleTapGesture = gestureRecognizerCopy;
  if ([doubleTapGesture numberOfTapsRequired] == &dword_0 + 2)
  {
    v9 = [doubleTapGesture matchesTarget:+[UIView be_wkContentViewClass](UIView andAction:{"be_wkContentViewClass"), "_nonBlockingDoubleTapRecognized:"}] ^ 1;
  }

  else
  {
LABEL_2:
    LOBYTE(v9) = 1;
  }

LABEL_4:
  return v9;
}

- (void)setZoomScale:(double)scale
{
  if (scale < 1.0)
  {
    scrollView = [(BKPictureBookVerticalNavigationController *)self scrollView];
    [scrollView setMinimumZoomScale:scale];
  }

  if (scale > 3.0)
  {
    scrollView2 = [(BKPictureBookVerticalNavigationController *)self scrollView];
    [scrollView2 setMaximumZoomScale:scale];
  }

  self->_scrollViewIsZooming = 1;
  scrollView3 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [scrollView3 setZoomScale:scale];

  self->_scrollViewIsZooming = 0;
}

- (void)resetZoomScale
{
  scrollView = [(BKPictureBookVerticalNavigationController *)self scrollView];
  v4 = 1.0;
  [scrollView setMinimumZoomScale:1.0];

  if ([(BKPictureBookVerticalNavigationController *)self _allowZoom])
  {
    v4 = 3.0;
    if ([(BKPictureBookVerticalNavigationController *)self isViewLoaded])
    {
      book = [(BKPictureBookVerticalNavigationController *)self book];

      if (book)
      {
        book2 = [(BKPictureBookVerticalNavigationController *)self book];
        firstDocument = [book2 firstDocument];
        [firstDocument fixedLayoutSize];
        v9 = v8;

        [(BKPictureBookVerticalNavigationController *)self pageSize];
        v4 = fmax(v9 / v10, 1.0) * 1.5;
      }
    }
  }

  scrollView2 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [scrollView2 setMaximumZoomScale:v4];

  self->_scrollViewIsZooming = 1;
  scrollView3 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  scrollView4 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [scrollView4 minimumZoomScale];
  [scrollView3 setZoomScale:?];

  if ([(BKPictureBookVerticalNavigationController *)self currentPageNumber]<= 1)
  {
    y = CGPointZero.y;
    scrollView5 = [(BKPictureBookVerticalNavigationController *)self scrollView];
    [scrollView5 setContentOffset:{CGPointZero.x, y}];
  }

  self->_scrollViewIsZooming = 0;
}

- (void)adjustToNewSize:(CGSize)size
{
  [(BKPictureBookVerticalNavigationController *)self _setupScrollView:size.width];
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

- (void)_setupScrollView:(BOOL)view
{
  view = [(BKPictureBookVerticalNavigationController *)self view];
  window = [view window];

  if (!window)
  {
    delegate = [(BKPictureBookVerticalNavigationController *)self delegate];
    [delegate desiredBoundsForNavigationController];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    view2 = [(BKPictureBookVerticalNavigationController *)self view];
    [view2 setFrame:{v9, v11, v13, v15}];
  }

  v17 = +[UIColor clearColor];
  view3 = [(BKPictureBookVerticalNavigationController *)self view];
  [view3 setBackgroundColor:v17];

  if (view)
  {
    v19 = 1;
  }

  else
  {
    scrollView = [(BKPictureBookVerticalNavigationController *)self scrollView];
    if (scrollView)
    {
      pagesContainerView = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];
      if (pagesContainerView)
      {
        view4 = [(BKPictureBookVerticalNavigationController *)self view];
        [view4 bounds];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        scrollView2 = [(BKPictureBookVerticalNavigationController *)self scrollView];
        [scrollView2 frame];
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

  scrollView3 = [(BKPictureBookVerticalNavigationController *)self scrollView];

  if (scrollView3)
  {
    [(BKPictureBookVerticalNavigationController *)self resetZoomScale];
  }

  else
  {
    v37 = [UIScrollView alloc];
    view5 = [(BKPictureBookVerticalNavigationController *)self view];
    [view5 bounds];
    v39 = [v37 initWithFrame:?];
    scrollView = self->_scrollView;
    self->_scrollView = v39;

    [(UIScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
    [(UIScrollView *)self->_scrollView setMinimumZoomScale:1.0];
    _allowZoom = [(BKPictureBookVerticalNavigationController *)self _allowZoom];
    v42 = 3.0;
    if (!_allowZoom)
    {
      v42 = 1.0;
    }

    [(UIScrollView *)self->_scrollView setMaximumZoomScale:v42];
    v43 = +[UIColor clearColor];
    [(UIScrollView *)self->_scrollView setBackgroundColor:v43];

    [(UIScrollView *)self->_scrollView setDelegate:self];
    view6 = [(BKPictureBookVerticalNavigationController *)self view];
    [view6 addSubview:self->_scrollView];
  }

  [(BKPictureBookVerticalNavigationController *)self updateContentInsets];
  pagesContainerView2 = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];

  if (pagesContainerView2)
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
    view7 = [(BKPictureBookVerticalNavigationController *)self view];
    [view7 bounds];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    scrollView4 = [(BKPictureBookVerticalNavigationController *)self scrollView];
    [scrollView4 setFrame:{v52, v54, v56, v58}];

    scrollView5 = [(BKPictureBookVerticalNavigationController *)self scrollView];
    [scrollView5 bounds];
    Width = CGRectGetWidth(v67);
    scrollView6 = [(BKPictureBookVerticalNavigationController *)self scrollView];
    [scrollView6 bounds];
    Height = CGRectGetHeight(v68);
    pagesContainerView3 = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];
    [pagesContainerView3 setFrame:{0.0, 0.0, Width, Height}];

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

  book = [(BKPictureBookVerticalNavigationController *)self book];
  firstDocument = [book firstDocument];
  [firstDocument fixedLayoutSize];
  v6 = v5;
  v8 = v7;

  view = [(BKPictureBookVerticalNavigationController *)self view];
  [view frame];
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

  delegate = [(BKPictureBookVerticalNavigationController *)self delegate];
  supportsSpreadForVerticalLayout = [delegate supportsSpreadForVerticalLayout];

  return supportsSpreadForVerticalLayout;
}

- (int64_t)currentPageNumber
{
  if (!self->_scrollView)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  scrollView = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [scrollView contentOffset];
  v4 = [(BKPictureBookVerticalNavigationController *)self pageNumberAtContentOffset:?];

  return v4;
}

- (int64_t)pageNumberAtContentOffset:(CGPoint)offset
{
  [(BKPictureBookVerticalNavigationController *)self rawPageNumberForOffset:offset.x pageFraction:offset.y, 2.0];
  v5 = v4;
  shouldDisplaySpread = [(BKPictureBookVerticalNavigationController *)self shouldDisplaySpread];
  v7 = 2 * v5;
  if (!shouldDisplaySpread)
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

- (double)rawPageNumberForOffset:(CGPoint)offset pageFraction:(double)fraction
{
  y = offset.y;
  book = [(BKPictureBookVerticalNavigationController *)self book];
  v8 = 1.0;
  if (book)
  {
    v9 = book;
    scrollView = [(BKPictureBookVerticalNavigationController *)self scrollView];

    if (scrollView)
    {
      [(BKPictureBookVerticalNavigationController *)self pageSize];
      v12 = v11;
      scrollView2 = [(BKPictureBookVerticalNavigationController *)self scrollView];
      [scrollView2 zoomScale];
      if (v14 == 0.0)
      {
        v17 = 1.0;
      }

      else
      {
        scrollView3 = [(BKPictureBookVerticalNavigationController *)self scrollView];
        [scrollView3 zoomScale];
        v17 = v16;
      }

      [(BKPictureBookVerticalNavigationController *)self _spaceBetweenPages];
      v19 = v12 + v18;
      scrollView4 = [(BKPictureBookVerticalNavigationController *)self scrollView];
      [scrollView4 bounds];
      v8 = (y / v17 + CGRectGetHeight(v22) / fraction) / v19;
    }
  }

  return v8;
}

- (BOOL)isPastEndOfBook:(CGPoint)book
{
  [(BKPictureBookVerticalNavigationController *)self rawPageNumberForOffset:book.x pageFraction:book.y, 1.0];
  v5 = v4;
  shouldDisplaySpread = [(BKPictureBookVerticalNavigationController *)self shouldDisplaySpread];
  pageCount = [(BKPageNavigationViewController *)self pageCount];
  v8 = pageCount;
  v9 = round(vcvtd_n_f64_s64(pageCount + 1, 1uLL));
  if (shouldDisplaySpread)
  {
    v8 = v9;
  }

  return v5 - v8 > 0.1;
}

- (_NSRange)visiblePages
{
  if (self->_scrollView)
  {
    currentPageNumber = [(BKPictureBookVerticalNavigationController *)self currentPageNumber];
    if ([(BKPictureBookVerticalNavigationController *)self shouldDisplaySpread]&& currentPageNumber > 1)
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
    currentPageNumber = 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = currentPageNumber;
  result.length = v4;
  result.location = v5;
  return result;
}

- (id)contentView
{
  currentPageNumber = [(BKPictureBookVerticalNavigationController *)self currentPageNumber];

  return [(BKPictureBookVerticalNavigationController *)self viewForPageNumber:currentPageNumber];
}

- (CGSize)pageSize
{
  scrollView = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [scrollView bounds];
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
    book = [(BKPictureBookVerticalNavigationController *)self book];
    firstDocument = [book firstDocument];
    [firstDocument fixedLayoutSize];

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

- (id)viewForPageNumber:(int64_t)number
{
  if (number > 0x7FFFFFFFFFFFFFFELL)
  {
    5000 = 0;
    goto LABEL_11;
  }

  [(BKPictureBookVerticalNavigationController *)self pageSize];
  v7 = v6;
  v9 = v8;
  [(BKPictureBookVerticalNavigationController *)self originForPageNumber:number];
  v11 = v10;
  v13 = v12;
  5000 = [(UIView *)self->_pagesContainerView viewWithTag:number + 5000];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_F7E94;
  v21[3] = &unk_1E5DC0;
  v21[4] = self;
  v21[5] = number;
  v14 = objc_retainBlock(v21);
  if (!5000)
  {
    v19 = _AEWKPictureBookLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      numberCopy = number;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Creating View for page %lu", buf, 0xCu);
    }

    5000 = [[BKPictureBookPageContainerView alloc] initWithFrame:v11, v13, v7, v9];
    [(BKPictureBookPageContainerView *)5000 setPageNumber:number];
    [(BKPictureBookPageContainerView *)5000 setUseRoundedCornerRadius:[(BKPictureBookVerticalNavigationController *)self _pageViewShouldHaveRoundedCorners]];
    [(BKPictureBookPageContainerView *)5000 setAutoresizingMask:0];
    [(BKPictureBookPageContainerView *)5000 setTag:number + 5000];
    goto LABEL_9;
  }

  [(BKPictureBookPageContainerView *)5000 frame];
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
    [(BKPictureBookPageContainerView *)5000 setFrame:v11, v13, v7, v9];
LABEL_9:
    (v14[2])(v14, 5000);
  }

LABEL_11:

  return 5000;
}

- (CGRect)frameForPageNumber:(int64_t)number
{
  [(BKPictureBookVerticalNavigationController *)self pageSize];
  v6 = v5;
  v8 = v7;
  [(BKPictureBookVerticalNavigationController *)self originForPageNumber:number];
  v11 = v6;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)generatePositionForAllPages:(id)pages
{
  pagesCopy = pages;
  _positionForPages = [(BKPictureBookVerticalNavigationController *)self _positionForPages];
  if (![_positionForPages count])
  {
    pageCount = [(BKPageNavigationViewController *)self pageCount];

    if (pageCount == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  scrollView = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [scrollView bounds];
  v7 = v6;
  v9 = v8;
  [(BKPictureBookVerticalNavigationController *)self _lastScrollViewSizeLayoutWasGeneratedFor];
  if (v7 == v11 && v9 == v10)
  {

LABEL_14:
    goto LABEL_15;
  }

  pageCount2 = [(BKPageNavigationViewController *)self pageCount];

  if (pageCount2 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_9:
    pagesContainerView = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];
    [pagesContainerView bounds];
    v17 = v16;
    v19 = v18;

    shouldDisplaySpread = [(BKPictureBookVerticalNavigationController *)self shouldDisplaySpread];
    _positionForPages = [NSMutableArray arrayWithCapacity:[(BKPageNavigationViewController *)self pageCount]];
    pageCount3 = [(BKPageNavigationViewController *)self pageCount];
    if (pageCount3 != -1)
    {
      v22 = 0;
      v23 = pageCount3 + 1;
      do
      {
        [(BKPictureBookVerticalNavigationController *)self originForPageNumber:v22 pagesContainerSize:shouldDisplaySpread isSpread:v17, v19];
        v24 = [NSValue valueWithPoint:?];
        [_positionForPages addObject:v24];

        ++v22;
      }

      while (v23 != v22);
    }

    [(BKPictureBookVerticalNavigationController *)self set_positionForPages:_positionForPages];
    goto LABEL_14;
  }

LABEL_15:
  v25 = objc_retainBlock(pagesCopy);
  v26 = v25;
  if (v25)
  {
    (*(v25 + 2))(v25);
  }
}

- (CGPoint)originForPageNumber:(int64_t)number pagesContainerSize:(CGSize)size isSpread:(BOOL)spread
{
  spreadCopy = spread;
  width = size.width;
  v9 = [(BKPictureBookVerticalNavigationController *)self book:size.width];
  bkPageProgressionDirection = [v9 bkPageProgressionDirection];

  [(BKPictureBookVerticalNavigationController *)self pageSize];
  v13 = v12;
  if (spreadCopy)
  {
    v14 = width * 0.5 - v11;
    if (((bkPageProgressionDirection != 1) ^ number))
    {
      v15 = v14;
    }

    else
    {
      v15 = width * 0.5;
    }

    [(BKPictureBookVerticalNavigationController *)self _spaceBetweenPages];
    v17 = v13 + v16;
    v18 = (number / 2);
  }

  else
  {
    if (number <= 1)
    {
      numberCopy = 1;
    }

    else
    {
      numberCopy = number;
    }

    v20 = numberCopy - 1;
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

- (CGPoint)originForPageNumber:(int64_t)number
{
  _positionForPages = [(BKPictureBookVerticalNavigationController *)self _positionForPages];
  v6 = [_positionForPages count];

  _positionForPages2 = [(BKPictureBookVerticalNavigationController *)self _positionForPages];

  if (_positionForPages2 && v6 > number)
  {
    v8 = number & ~(number >> 63);
    _positionForPages3 = [(BKPictureBookVerticalNavigationController *)self _positionForPages];
    v10 = [_positionForPages3 count] - 1;

    if (v8 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    _positionForPages4 = [(BKPictureBookVerticalNavigationController *)self _positionForPages];
    v13 = [_positionForPages4 objectAtIndexedSubscript:v11];
  }

  else
  {
    pagesContainerView = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];
    [pagesContainerView bounds];
    v16 = v15;
    v18 = v17;

    [(BKPictureBookVerticalNavigationController *)self originForPageNumber:number pagesContainerSize:[(BKPictureBookVerticalNavigationController *)self shouldDisplaySpread] isSpread:v16, v18];
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

- (void)contentViewImage:(BOOL)image afterScreenUpdates:(BOOL)updates completion:(id)completion
{
  completionCopy = completion;
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
    selfCopy = self;
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
    selfCopy2 = self;
    v26 = v11;
    v13 = v11;
    [(BKPictureBookVerticalNavigationController *)self _generateRightPageImageAtPageOffset:v8 completion:v23];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_F88EC;
    block[3] = &unk_1E3438;
    v21 = v12;
    v22 = completionCopy;
    v14 = completionCopy;
    v15 = v12;
    dispatch_group_notify(v13, &_dispatch_main_q, block);
  }

  else
  {
    delegate = [(BKPictureBookVerticalNavigationController *)self delegate];
    currentPageNumber = [(BKPictureBookVerticalNavigationController *)self currentPageNumber];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_F8A68;
    v18[3] = &unk_1E2E50;
    v19 = completionCopy;
    v13 = completionCopy;
    [delegate pageNavigationSnapshotForPageNumber:currentPageNumber completion:v18];

    v15 = v19;
  }
}

- (void)_generateLeftPageImageAtPageOffset:(int64_t)offset completion:(id)completion
{
  completionCopy = completion;
  v7 = [(BKPageNavigationViewController *)self leftPageNumberForSinglePageOffset:offset];
  delegate = [(BKPictureBookVerticalNavigationController *)self delegate];
  [delegate pageNavigationSnapshotForPageNumber:v7 completion:completionCopy];
}

- (void)_generateRightPageImageAtPageOffset:(int64_t)offset completion:(id)completion
{
  completionCopy = completion;
  v7 = [(BKPageNavigationViewController *)self rightPageNumberForSinglePageOffset:offset];
  delegate = [(BKPictureBookVerticalNavigationController *)self delegate];
  [delegate pageNavigationSnapshotForPageNumber:v7 completion:completionCopy];
}

- (void)setPageCount:(int64_t)count
{
  pageCount = [(BKPageNavigationViewController *)self pageCount];
  v6.receiver = self;
  v6.super_class = BKPictureBookVerticalNavigationController;
  [(BKPageNavigationViewController *)&v6 setPageCount:count];
  if (pageCount != count)
  {
    if ([(BKPictureBookVerticalNavigationController *)self isViewLoaded])
    {
      [(BKPictureBookVerticalNavigationController *)self _setupScrollView:1];
      [(BKPictureBookVerticalNavigationController *)self _updatePages];
    }
  }
}

- (void)setPageOffset:(int64_t)offset completion:(id)completion
{
  completionCopy = completion;
  v7 = offset & ~(offset >> 63);
  pageCount = [(BKPageNavigationViewController *)self pageCount];
  if (v7 >= pageCount - 1)
  {
    v7 = pageCount - 1;
  }

  if (v7 == self->super._pageOffset)
  {
    v9 = objc_retainBlock(completionCopy);
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
    v15 = completionCopy;
    v11 = objc_retainBlock(v14);
    delegate = [(BKPictureBookVerticalNavigationController *)self delegate];
    v13 = [delegate pageNavigationController:self shouldDelayChangeToPageOffset:v7 completion:v11];

    if ((v13 & 1) == 0)
    {
      (v11[2])(v11);
    }
  }
}

- (void)_setPageOffsetUncheckedImmediate:(int64_t)immediate
{
  v6.receiver = self;
  v6.super_class = BKPictureBookVerticalNavigationController;
  [(BKPageNavigationViewController *)&v6 setPageOffset:?];
  if ([(BKPictureBookVerticalNavigationController *)self isViewLoaded])
  {
    [(BKPictureBookVerticalNavigationController *)self _displayPagesForOffset:immediate];
    delegate = [(BKPictureBookVerticalNavigationController *)self delegate];
    [delegate pageNavigationDidChangeLocation:self];
  }
}

- (void)turnToPageNumber:(int64_t)number animated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  if (number == 0x7FFFFFFFFFFFFFFFLL || (v9 = [(BKPageNavigationViewController *)self pageOffset], number < 1) || v9 + 1 == number || [(BKPageNavigationViewController *)self pageCount]< number)
  {
    v7 = objc_retainBlock(completionCopy);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7);
    }
  }

  else
  {
    [(BKPictureBookVerticalNavigationController *)self isVisible];
    [(BKPictureBookVerticalNavigationController *)self setPageOffset:number - 1 completion:completionCopy];
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

- (CGPoint)contentOffsetToScrollToForPageNumber:(int64_t)number
{
  [(BKPictureBookVerticalNavigationController *)self originForPageNumber:number];
  v5 = v4;
  [(BKPictureBookVerticalNavigationController *)self pageSize];
  v7 = v6;
  scrollView = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [scrollView bounds];
  Height = CGRectGetHeight(v23);

  scrollView2 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [scrollView2 zoomScale];
  v12 = v5 * v11;

  v13 = v12 + (Height - v7) * -0.5;
  scrollView3 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [scrollView3 contentInset];
  v16 = -v15;

  if (v13 >= v16)
  {
    v16 = v13;
  }

  scrollView4 = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [scrollView4 contentSize];
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

- (void)_displayPagesForOffset:(int64_t)offset
{
  [(BKPictureBookVerticalNavigationController *)self contentOffsetToScrollToForPageNumber:offset + 1];
  v5 = v4;
  v7 = v6;
  scrollView = [(BKPictureBookVerticalNavigationController *)self scrollView];
  [scrollView setContentOffset:0 animated:{v5, v7}];

  self->_lastScrollSpeed = 0.0;

  [(BKPictureBookVerticalNavigationController *)self _updatePages];
}

- (id)_setupPageNumber:(int64_t)number
{
  v5 = [(BKPictureBookVerticalNavigationController *)self viewForPageNumber:?];
  v6 = v5;
  if (v5)
  {
    superview = [v5 superview];

    if (!superview)
    {
      pagesContainerView = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];
      [pagesContainerView addSubview:v6];
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
      delegate = [(BKPictureBookVerticalNavigationController *)self delegate];
      delegate2 = [(BKPictureBookVerticalNavigationController *)self delegate];
      delegate3 = [(BKPictureBookVerticalNavigationController *)self delegate];
      v11 = [(BKPageScrollerPageView *)v12 initWithFrame:number pageNumber:delegate navigationDelegate:delegate2 thumbnailingDelegate:delegate3 imageResizerDelegate:v14, v16, v18, v20];

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
      delegate4 = [(BKPictureBookVerticalNavigationController *)self delegate];
      v25 = [delegate4 contentViewControllerForPageNumber:number];
      v26 = BUDynamicCast();

      [(BKPictureBookVerticalNavigationController *)self _applyAdditionalScale:v26];
    }

    goto LABEL_13;
  }

LABEL_14:

  return v6;
}

- (void)_applyAdditionalScale:(id)scale
{
  scaleCopy = scale;
  v4 = scaleCopy;
  if (scaleCopy)
  {
    loader = [scaleCopy loader];
    webView = [loader webView];
    [webView be_scale];
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
      view = [v4 view];
      v12 = v13;
      [view setTransform:&v12];
    }
  }
}

- (void)_teardownPageNumber:(int64_t)number
{
  v4 = [(BKPictureBookVerticalNavigationController *)self viewForPageNumber:number];
  if (v4)
  {
    v8 = v4;
    pagesContainerView = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];

    v4 = v8;
    if (v8 != pagesContainerView)
    {
      pageScrollerPageView = [v8 pageScrollerPageView];
      v7 = pageScrollerPageView;
      if (pageScrollerPageView)
      {
        [pageScrollerPageView setScrollState:3];
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

- (void)setPreferredPageNumberHUDVisibility:(BOOL)visibility
{
  if (self->_preferredPageNumberHUDVisibility != visibility)
  {
    self->_preferredPageNumberHUDVisibility = visibility;
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
  _bookRenditionFlowIsScrolledContinuous = [(BKPictureBookVerticalNavigationController *)self _bookRenditionFlowIsScrolledContinuous];
  result = 4.0;
  if (_bookRenditionFlowIsScrolledContinuous)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)_bookRenditionFlowIsScrolledContinuous
{
  book = [(BKPictureBookVerticalNavigationController *)self book];
  fixedLayoutFlow = [book fixedLayoutFlow];
  v4 = [fixedLayoutFlow isEqualToString:@"scrolled-continuous"];

  return v4;
}

- (BOOL)_isRTL
{
  book = [(BKPictureBookVerticalNavigationController *)self book];
  v3 = [book bkPageProgressionDirection] == 1;

  return v3;
}

- (void)updateLocationIfNeeded
{
  v3 = [(BKPictureBookVerticalNavigationController *)self currentPageNumber]- 1;
  if (v3 != [(BKPageNavigationViewController *)self pageOffset])
  {
    self->super._pageOffset = [(BKPictureBookVerticalNavigationController *)self currentPageNumber]- 1;
    delegate = [(BKPictureBookVerticalNavigationController *)self delegate];
    [delegate pageNavigationDidChangeLocation:self];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  v5 = v4;
  v7 = v6;
  if (!self->_scrollViewIsZooming && ![(BKPictureBookVerticalNavigationController *)self animating]&& [(BKPictureBookVerticalNavigationController *)self isPastEndOfBook:v5, v7])
  {
    delegate = [(BKPictureBookVerticalNavigationController *)self delegate];
    [delegate pageNavigationDidTryToSwipePastEndOfBook:self];
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

  if (([scrollCopy isZooming] & 1) == 0 && !self->_scrollViewIsZooming && !-[BKPictureBookVerticalNavigationController animating](self, "animating") && vabdd_f64(self->_lastOffsetUsedForPageRefresh.y, v7) > 100.0)
  {
    [(BKPictureBookVerticalNavigationController *)self _updatePages];
    [(BKPictureBookVerticalNavigationController *)self updateLocationIfNeeded];
    self->_lastPageRefreshTime = v10;
    self->_lastOffsetUsedForPageRefresh.x = v5;
    self->_lastOffsetUsedForPageRefresh.y = v7;
  }
}

- (id)viewForZoomingInScrollView:(id)view
{
  viewCopy = view;
  scrollView = [(BKPictureBookVerticalNavigationController *)self scrollView];

  if (scrollView == viewCopy)
  {
    pagesContainerView = [(BKPictureBookVerticalNavigationController *)self pagesContainerView];
  }

  else
  {
    pagesContainerView = 0;
  }

  return pagesContainerView;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  delegate = [(BKPictureBookVerticalNavigationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate pictureBookVerticalNavigationInteractionDidStart:0];
  }
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  self->_scrollViewIsZooming = 1;
  v5 = [(BKPictureBookVerticalNavigationController *)self delegate:zooming];
  if (v5)
  {
    v6 = v5;
    delegate = [(BKPictureBookVerticalNavigationController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(BKPictureBookVerticalNavigationController *)self delegate];
      [delegate2 pictureBookVerticalNavigationInteractionDidStart:1];
    }
  }
}

- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale
{
  [(BKPictureBookVerticalNavigationController *)self _updatePages:zooming];
  [(BKPictureBookVerticalNavigationController *)self updateLocationIfNeeded];
  self->_scrollViewIsZooming = 0;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [(BKPictureBookVerticalNavigationController *)self setPreferredPageNumberHUDVisibility:0];

  [(BKPictureBookVerticalNavigationController *)self _updatePages];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(BKPictureBookVerticalNavigationController *)self setPreferredPageNumberHUDVisibility:0];
    self->_lastScrollSpeed = 0.0;

    [(BKPictureBookVerticalNavigationController *)self _updatePages];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  if (fabs(velocity.y) > 1.0)
  {
    draggingCopy = dragging;
    [draggingCopy zoomScale];
    v10 = v9;
    [draggingCopy minimumZoomScale];
    v12 = v11;

    if (v10 == v12)
    {
      if (([(BKPictureBookVerticalNavigationController *)self contentOffsetToScrollToForPageNumber:[(BKPictureBookVerticalNavigationController *)self pageNumberAtContentOffset:offset->x, offset->y]], v15 = v14 - offset->y, y > 0.0) && v15 > 0.0 || y < 0.0 && v15 < 0.0)
      {
        offset->x = v13;
        offset->y = v14;
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