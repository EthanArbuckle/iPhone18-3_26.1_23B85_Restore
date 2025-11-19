@interface InfiniteScrollViewController
+ (BOOL)_view:(id)a3 containsCalendarDate:(id)a4;
- (BOOL)isDateVisible:(id)a3;
- (CGPoint)nearestMajorBoundaryForPoint:(CGPoint)a3;
- (CGPoint)nearestMajorBoundaryForPoint:(CGPoint)a3 date:(id *)a4;
- (CGSize)_visibleSize;
- (InfiniteScrollViewController)initWithCalendarDate:(id)a3 model:(id)a4 window:(id)a5;
- (NSString)description;
- (double)heightForSubviewWithCalendarDate:(id)a3;
- (double)topInsetForSubviewWithCalendarDate:(id)a3;
- (double)unobstructedScrollViewHeight;
- (id)_addNewBottomView;
- (id)_addNewTopView;
- (id)_lastViewOnScreen;
- (id)calendarDateForSubviewAboveSubviewWithCalendarDate:(id)a3;
- (id)calendarDateForSubviewBelowSubviewWithCalendarDate:(id)a3;
- (id)centerViewOnScreen;
- (id)createInitialViewForDate:(id)a3;
- (id)dateOfCenterViewInBuffer;
- (id)dateOfCenterViewOnScreen;
- (id)dateOfViewInBufferIndexRelativeToCenter:(int64_t)a3;
- (id)dequeueReusableView;
- (id)firstViewOnScreen;
- (id)futureMajorBoundaryCalendarDateForCalendarDate:(id)a3;
- (id)newBottomViewBelowViewWithCalendarDate:(id)a3;
- (id)newTopViewAboveViewWithCalendarDate:(id)a3;
- (id)pastMajorBoundaryCalendarDateForCalendarDate:(id)a3;
- (id)subviewForDate:(id)a3;
- (id)subviewForPoint:(CGPoint)a3;
- (void)_layoutInitialSubviews;
- (void)_recenterContentIfNeededWithForce:(BOOL)a3;
- (void)_removeBottomView;
- (void)_removeTopView;
- (void)_setUpInitialViewWithDate:(id)a3;
- (void)_updateSelectedDateWithTopView;
- (void)adjustLoadedViewRange;
- (void)currentlyVisibleDateRangeFromStartDate:(id *)a3 toEndDate:(id *)a4;
- (void)didEndScrolling;
- (void)enumerateScrollViewSubviews:(id)a3;
- (void)insertViews:(id)a3;
- (void)loadView;
- (void)reinitializeAllViewsWithCalendarDate:(id)a3;
- (void)reloadDataForViews:(id)a3;
- (void)resizeAllViews;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)showDate:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)showSelectedDateIfNeeded;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation InfiniteScrollViewController

- (InfiniteScrollViewController)initWithCalendarDate:(id)a3 model:(id)a4 window:(id)a5
{
  v9 = a3;
  v15.receiver = self;
  v15.super_class = InfiniteScrollViewController;
  v10 = [(MainViewController *)&v15 initWithWindow:a5 model:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_startingDate, a3);
    v12 = objc_alloc_init(NSMutableArray);
    reusableViews = v11->_reusableViews;
    v11->_reusableViews = v12;
  }

  return v11;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = InfiniteScrollViewController;
  v3 = [(InfiniteScrollViewController *)&v10 description];
  startingDate = self->_startingDate;
  v5 = [(MainViewController *)self model];
  v6 = [NSNumber numberWithUnsignedInteger:[(NSMutableArray *)self->_views count]];
  v7 = [NSNumber numberWithUnsignedInteger:[(NSMutableArray *)self->_reusableViews count]];
  v8 = [NSString stringWithFormat:@"%@ startingDate: [%@], model: [%@], views: [%@], _reusableViews: [%@]", v3, startingDate, v5, v6, v7];;

  return v8;
}

- (void)loadView
{
  v10 = objc_alloc_init(UIView);
  [v10 setAutoresizingMask:18];
  [(InfiniteScrollViewController *)self setView:v10];
  v3 = objc_alloc_init(_InfiniteScrollViewController);
  [(_InfiniteScrollViewController *)v3 setDelegate:self];
  v4 = objc_alloc_init(UIScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = v4;

  v6 = [(InfiniteScrollViewController *)self scrollView];
  [v6 setAutoresizingMask:18];

  v7 = [(InfiniteScrollViewController *)self scrollView];
  [(_InfiniteScrollViewController *)v3 setView:v7];

  [(InfiniteScrollViewController *)self addChildViewController:v3];
  v8 = [(InfiniteScrollViewController *)self view];
  v9 = [(InfiniteScrollViewController *)self scrollView];
  [v8 addSubview:v9];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = InfiniteScrollViewController;
  [(InfiniteScrollViewController *)&v12 viewDidLoad];
  v3 = [(InfiniteScrollViewController *)self scrollView];
  [v3 setClipsToBounds:0];

  v4 = [(InfiniteScrollViewController *)self scrollView];
  [v4 setContentSize:{200.0, 400000.0}];

  v5 = [(InfiniteScrollViewController *)self scrollView];
  [v5 setShowsHorizontalScrollIndicator:0];

  v6 = [(InfiniteScrollViewController *)self scrollView];
  [v6 setShowsVerticalScrollIndicator:0];

  v7 = [(InfiniteScrollViewController *)self scrollView];
  [v7 setScrollsToTop:0];

  v8 = +[UIColor systemBackgroundColor];
  v9 = [(InfiniteScrollViewController *)self scrollView];
  [v9 setBackgroundColor:v8];

  v10 = [(InfiniteScrollViewController *)self scrollView];
  [v10 setBounces:0];

  v11 = [(InfiniteScrollViewController *)self scrollView];
  [v11 setDelegate:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = InfiniteScrollViewController;
  [(InfiniteScrollViewController *)&v7 viewWillAppear:a3];
  v4 = [(InfiniteScrollViewController *)self scrollView];
  v5 = [v4 subviews];
  v6 = [v5 count];

  if (!v6)
  {
    [(InfiniteScrollViewController *)self _setUpInitialViewWithDate:self->_startingDate];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  self->_viewIsVisible = 1;
  v3.receiver = self;
  v3.super_class = InfiniteScrollViewController;
  [(MainViewController *)&v3 viewDidAppear:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = InfiniteScrollViewController;
  [(InfiniteScrollViewController *)&v4 viewWillDisappear:a3];
  self->_viewIsVisible = 0;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  self->_futureSize = a3;
  self->_useFutureSize = 1;
  v7 = a4;
  if ([(InfiniteScrollViewController *)self isViewLoaded])
  {
    v8 = [(InfiniteScrollViewController *)self view];
    v9 = [v8 window];

    if (v9)
    {
      [(InfiniteScrollViewController *)self adjustLoadedViewRange];
    }
  }

  v12.receiver = self;
  v12.super_class = InfiniteScrollViewController;
  [(MainViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v10[4] = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100050890;
  v11[3] = &unk_10020F240;
  v11[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100050998;
  v10[3] = &unk_10020F240;
  [v7 animateAlongsideTransition:v11 completion:v10];
}

- (void)_setUpInitialViewWithDate:(id)a3
{
  v4 = a3;
  v5 = [v4 timeZone];
  v6 = [(MainViewController *)self model];
  v7 = [v6 calendar];
  v8 = [v7 timeZone];
  v9 = [v5 isEqualToTimeZone:v8];

  if ((v9 & 1) == 0)
  {
    v10 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v4 timeZone];
      v13 = [v12 name];
      v14 = [(MainViewController *)self model];
      v15 = [v14 calendar];
      v16 = [v15 timeZone];
      v17 = [v16 name];
      *buf = 138412546;
      v56 = v13;
      v57 = 2112;
      v58 = v17;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Fixing mismatched timezone on date for reloading infinite scroll view (received %@, UI showing %@).", buf, 0x16u);
    }

    v18 = [v4 date];
    v19 = [(MainViewController *)self model];
    v20 = [v19 calendar];
    v21 = [v20 timeZone];
    v22 = [EKCalendarDate calendarDateWithDate:v18 timeZone:v21];

    v4 = v22;
  }

  v23 = [(InfiniteScrollViewController *)self view];
  if (v23)
  {
    v24 = v23;
    v25 = [(NSMutableArray *)self->_views count];

    if (v25)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v26 = self->_views;
      v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v51;
        do
        {
          v30 = 0;
          do
          {
            if (*v51 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [*(*(&v50 + 1) + 8 * v30) removeFromSuperview];
            v30 = v30 + 1;
          }

          while (v28 != v30);
          v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v28);
      }

      views = self->_views;
      self->_views = 0;

      [(NSMutableArray *)self->_reusableViews removeAllObjects];
    }
  }

  self->_suppressViewAdjustmentsForInitialSetup = 1;
  v32 = [(InfiniteScrollViewController *)self scrollView];
  [v32 contentSize];
  v34 = v33 * 0.5;
  v35 = [(InfiniteScrollViewController *)self scrollView];
  [v35 setContentOffset:{0.0, v34}];

  self->_suppressViewAdjustmentsForInitialSetup = 0;
  v36 = [[NSMutableArray alloc] initWithCapacity:3];
  v37 = self->_views;
  self->_views = v36;

  v38 = [(InfiniteScrollViewController *)self createInitialViewForDate:v4];
  v39 = [(InfiniteScrollViewController *)self scrollView];
  [v39 addSubview:v38];

  [(NSMutableArray *)self->_views addObject:v38];
  [v38 setAutoresizingMask:2];
  [v38 setHidden:0];
  v40 = [(InfiniteScrollViewController *)self scrollView];
  [v40 bounds];
  [v38 sizeThatFits:{v41, v42}];
  v44 = v43;
  v46 = v45;

  [v38 frame];
  [v38 setFrame:{CGPointZero.x, CGPointZero.y, v44, v46}];
  v47 = [(InfiniteScrollViewController *)self _addNewTopView];
  v48 = [(InfiniteScrollViewController *)self _addNewBottomView];
  [(InfiniteScrollViewController *)self reloadDataForAllViews];
  [(InfiniteScrollViewController *)self _layoutInitialSubviews];
  v49 = [(EKCalendarDate *)self->_startingDate date];
  [(InfiniteScrollViewController *)self showDate:v49 animated:0];
}

- (void)_layoutInitialSubviews
{
  if ([(NSMutableArray *)self->_views count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v3 = self->_views;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v35;
      v7 = 0.0;
      v8 = 1;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v35 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v34 + 1) + 8 * i);
          [v10 frame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v17 = v7;
          if ((v8 & 1) == 0)
          {
            [v10 topInset];
            v17 = v7 - v18;
          }

          [v10 setFrame:{v12, v17, v14, v16}];
          [v10 frame];
          v20 = v19;
          v21 = 0.0;
          if ((v8 & 1) == 0)
          {
            [v10 topInset];
          }

          v8 = 0;
          v7 = v7 + v20 - v21;
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v34 objects:v39 count:16];
        v8 = 0;
      }

      while (v5);
    }

    v22 = [(InfiniteScrollViewController *)self scrollView];
    [v22 contentOffset];

    v23 = [(NSMutableArray *)self->_views objectAtIndex:[(NSMutableArray *)self->_views count]>> 1];
    [v23 frame];
    [v23 frame];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = self->_views;
    v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v31;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v30 + 1) + 8 * j);
          [v29 frame];
          [v29 setFrame:?];
        }

        v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v26);
    }
  }
}

- (void)resizeAllViews
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_views;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v7) sizeToFit];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(InfiniteScrollViewController *)self _layoutInitialSubviews];
}

- (void)reinitializeAllViewsWithCalendarDate:(id)a3
{
  v4 = a3;
  v5 = [(InfiniteScrollViewController *)self view];
  v6 = [v5 window];

  if (v6 || (-[InfiniteScrollViewController navigationController](self, "navigationController"), v8 = objc_claimAutoreleasedReturnValue(), [v8 view], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "window"), v12 = objc_claimAutoreleasedReturnValue(), v9, v8, !v12))
  {
    v12 = 0;
    v7 = 1;
  }

  else
  {
    EKUIPushFallbackSizingContextWithViewHierarchy();
    v7 = 0;
  }

  [(NSMutableArray *)self->_reusableViews removeAllObjects];
  startingDate = self->_startingDate;
  self->_startingDate = v4;
  v11 = v4;

  [(InfiniteScrollViewController *)self _setUpInitialViewWithDate:v11];
  [(InfiniteScrollViewController *)self adjustLoadedViewRange];
  if ((v7 & 1) == 0)
  {
    EKUIPopFallbackSizingContextWithViewHierarchy();
  }
}

- (void)_recenterContentIfNeededWithForce:(BOOL)a3
{
  if (![(InfiniteScrollViewController *)self suppressViewAdjustments]&& !self->_suppressViewAdjustmentsForInitialSetup)
  {
    v5 = [(InfiniteScrollViewController *)self scrollView];
    [v5 contentOffset];
    v7 = v6;
    v9 = v8;

    v10 = [(InfiniteScrollViewController *)self scrollView];
    [v10 contentSize];
    v12 = v11;

    v13 = [(InfiniteScrollViewController *)self scrollView];
    [v13 bounds];
    v15 = (v12 - v14) * 0.5;

    if (a3 || vabdd_f64(v9, v15) > v12 * 0.25)
    {
      v16 = [(InfiniteScrollViewController *)self scrollView];
      [v16 setContentOffset:{v7, v15}];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v17 = self->_views;
      v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v24;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v24 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v23 + 1) + 8 * i);
            [v22 center];
            [v22 setCenter:?];
          }

          v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v19);
      }
    }
  }
}

- (void)adjustLoadedViewRange
{
  if (![(InfiniteScrollViewController *)self suppressViewAdjustments]&& !self->_suppressViewAdjustmentsForInitialSetup)
  {
    v3 = [(InfiniteScrollViewController *)self scrollView];
    [(InfiniteScrollViewController *)self _visibleSize];
    v5 = v4;
    [(InfiniteScrollViewController *)self subviewBufferExtensionMultiplier];
    v7 = v6;
    [v3 contentOffset];
    v9 = v8;
    [v3 contentOffset];
    v11 = v10;
    v12 = objc_alloc_init(NSMutableSet);
    v13 = [(NSMutableArray *)self->_views firstObject];
    v14 = [(NSMutableArray *)self->_views lastObject];
    if (!v13)
    {
      goto LABEL_38;
    }

    v15 = v9 - v5 * v7;
    v16 = v5 * v7 + v5 + v11;
    [v13 frame];
    MinY = CGRectGetMinY(v67);
    [v14 frame];
    MaxY = CGRectGetMaxY(v68);
    if (v16 < MinY)
    {
      v19 = [v13 calendarDate];
      [v13 frame];
      v21 = v20;
      [v13 topInset];
      v23 = v22;
      v24 = MinY;
      goto LABEL_8;
    }

    if (v15 > MaxY)
    {
      v19 = [v14 calendarDate];
      [v14 frame];
      v21 = v25;
      [v14 topInset];
      v23 = v26;
      [v14 frame];
      v24 = CGRectGetMinY(v69);
      do
      {
        while (1)
        {
LABEL_8:
          if (v16 >= MinY)
          {
            [(InfiniteScrollViewController *)self calendarDateForSubviewBelowSubviewWithCalendarDate:v19];
          }

          else
          {
            [(InfiniteScrollViewController *)self calendarDateForSubviewAboveSubviewWithCalendarDate:v19];
          }
          v27 = ;

          [(InfiniteScrollViewController *)self heightForSubviewWithCalendarDate:v27];
          v29 = v28;
          [(InfiniteScrollViewController *)self topInsetForSubviewWithCalendarDate:v27];
          v31 = v23 + v24 - v29;
          v32 = v21 + v24 - v30;
          v24 = v16 >= MinY ? v21 + v24 - v30 : v23 + v24 - v29;
          if (v16 >= MinY)
          {
            break;
          }

          v19 = v27;
          v23 = v30;
          v21 = v29;
          if (v31 <= v15)
          {
            goto LABEL_18;
          }
        }

        v19 = v27;
        v23 = v30;
        v21 = v29;
      }

      while (v29 + v32 < v16);
LABEL_18:
      if ([(NSMutableArray *)self->_views count])
      {
        v58 = v14;
        v59 = v13;
        v60 = v3;
        v33 = [(InfiniteScrollViewController *)self maximumCachedReusableViews];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v34 = self->_views;
        v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v62 objects:v66 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v63;
          do
          {
            for (i = 0; i != v36; i = i + 1)
            {
              if (*v63 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v62 + 1) + 8 * i);
              if ([(NSMutableArray *)self->_reusableViews count]<= v33)
              {
                [(NSMutableArray *)self->_reusableViews addObject:v39];
                [v39 setHidden:1];
              }

              else
              {
                [v39 removeFromSuperview];
              }
            }

            v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v62 objects:v66 count:16];
          }

          while (v36);
        }

        v40 = [[NSMutableArray alloc] initWithCapacity:3];
        views = self->_views;
        self->_views = v40;

        v3 = v60;
        v14 = v58;
        v13 = v59;
      }

      v42 = [(InfiniteScrollViewController *)self createInitialViewForDate:v27];
      [v42 setHidden:0];
      [(NSMutableArray *)self->_views addObject:v42];
      [v3 addSubview:v42];
      [(InfiniteScrollViewController *)self _visibleSize];
      [v42 sizeThatFits:?];
      [v3 frame];
      [v42 setFrame:?];
      v43 = v42;

      v14 = v43;
      v13 = v43;
    }

    if (v13 && v14)
    {
      [v13 frame];
      if (CGRectGetMinY(v70) > v15)
      {
        while (1)
        {
          v44 = v13;
          v45 = [(InfiniteScrollViewController *)self _addNewTopView];
          v13 = [(NSMutableArray *)self->_views firstObject];

          if (!v45)
          {
            break;
          }

          [v45 frame];
          if (v46 < 0.0001)
          {
            break;
          }

          [v12 addObject:v45];

          [v13 frame];
          if (CGRectGetMinY(v71) <= v15)
          {
            goto LABEL_41;
          }
        }
      }

LABEL_41:
      [v14 frame];
      if (CGRectGetMaxY(v72) < v16)
      {
        while (1)
        {
          v48 = v14;
          v49 = [(InfiniteScrollViewController *)self _addNewBottomView];
          v14 = [(NSMutableArray *)self->_views lastObject];

          if (!v49)
          {
            break;
          }

          [v49 frame];
          if (v50 < 0.0001)
          {
            break;
          }

          [v12 addObject:v49];

          [v14 frame];
          if (CGRectGetMaxY(v73) >= v16)
          {
            goto LABEL_47;
          }
        }
      }

LABEL_47:
      if (!self->_isRelayingOut)
      {
        if (!self->_viewCullingDisabledForScrollAnimation)
        {
          v51 = [(NSMutableArray *)self->_views firstObject];

          if ([(NSMutableArray *)self->_views count])
          {
            while (1)
            {
              [v51 frame];
              if (CGRectGetMaxY(v74) >= v15)
              {
                break;
              }

              [(InfiniteScrollViewController *)self _removeTopView];
              v13 = [(NSMutableArray *)self->_views firstObject];

              v51 = v13;
              if (![(NSMutableArray *)self->_views count])
              {
                goto LABEL_54;
              }
            }
          }

          v13 = v51;
LABEL_54:
          v52 = [(NSMutableArray *)self->_views lastObject];

          if ([(NSMutableArray *)self->_views count])
          {
            while (1)
            {
              [v52 frame];
              if (CGRectGetMinY(v75) <= v16)
              {
                break;
              }

              [(InfiniteScrollViewController *)self _removeBottomView];
              v14 = [(NSMutableArray *)self->_views lastObject];

              v52 = v14;
              if (![(NSMutableArray *)self->_views count])
              {
                goto LABEL_59;
              }
            }
          }

          v14 = v52;
LABEL_59:
          if (self->_viewIsVisible && [(InfiniteScrollViewController *)self shouldUpdatePreferredReloadDates]&& (objc_opt_respondsToSelector() & 1) != 0)
          {
            v53 = [v13 calendarDate];
            v54 = [v53 date];

            v55 = [v14 endCalendarDate];
            v56 = [v55 date];

            v57 = [(MainViewController *)self model];
            [v57 setPreferredReloadStartDate:v54 endDate:v56];
          }
        }

        if ([v12 count])
        {
          [(InfiniteScrollViewController *)self reloadDataForViews:v12];
          [(InfiniteScrollViewController *)self didScroll];
        }
      }
    }

    else
    {
LABEL_38:
      v47 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Didn't load required views in _adjustLoadedViewRange. It is possible that we are being torn down while reloading.", buf, 2u);
      }
    }
  }
}

- (void)reloadDataForViews:(id)a3
{
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 reloadData];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)viewDidLayoutSubviews
{
  [(UIScrollView *)self->_scrollView contentSize];
  v4 = v3;
  [(UIScrollView *)self->_scrollView frame];
  if (vabdd_f64(v4, v5) >= 2.22044605e-16)
  {
    [(UIScrollView *)self->_scrollView contentSize];
    v7 = v6;
    [(UIScrollView *)self->_scrollView frame];
    scrollView = self->_scrollView;

    [(UIScrollView *)scrollView setContentSize:v8, v7];
  }
}

- (void)didEndScrolling
{
  [(InfiniteScrollViewController *)self _recenterContentIfNeeded];
  if (self->_viewIsVisible && [(InfiniteScrollViewController *)self shouldUpdateSelectedDateWithCentralView])
  {

    [(InfiniteScrollViewController *)self _updateSelectedDateWithTopView];
  }
}

- (void)_updateSelectedDateWithTopView
{
  v3 = [(InfiniteScrollViewController *)self firstViewOnScreen];
  if (v3)
  {
    v7 = v3;
    v4 = [v3 calendarDate];
    [(CUIKCalendarModel *)self->super._model setSelectedDate:v4];

    v5 = [v7 calendarDate];
    lastKnownShownDate = self->_lastKnownShownDate;
    self->_lastKnownShownDate = v5;

    v3 = v7;
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  if (![(InfiniteScrollViewController *)self suppressViewAdjustments]&& !self->_suppressViewAdjustmentsForInitialSetup)
  {

    [(InfiniteScrollViewController *)self didScroll];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"EmptySearchBarNeedsResignFirstResponderNotification" object:self];

  [(InfiniteScrollViewController *)self setIsUserFingerDown:1];

  [(InfiniteScrollViewController *)self willBeginDragging];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  [(InfiniteScrollViewController *)self setIsUserFingerDown:0];
  [(InfiniteScrollViewController *)self didEndDraggingWillDecelerate:v4];
  if (!v4)
  {

    [(InfiniteScrollViewController *)self didEndScrolling];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  if (![(InfiniteScrollViewController *)self suppressViewAdjustments]&& !self->_suppressViewAdjustmentsForInitialSetup)
  {
    self->_viewCullingDisabledForScrollAnimation = 0;

    [(InfiniteScrollViewController *)self didEndScrolling];
  }
}

- (void)viewWillLayoutSubviews
{
  if ([(InfiniteScrollViewController *)self isViewLoaded])
  {
    if (!self->_views)
    {
      [(InfiniteScrollViewController *)self _setUpInitialViewWithDate:self->_startingDate];
      [(InfiniteScrollViewController *)self didLoadInitialViews];
    }

    v3.receiver = self;
    v3.super_class = InfiniteScrollViewController;
    [(InfiniteScrollViewController *)&v3 viewWillLayoutSubviews];
  }
}

- (CGSize)_visibleSize
{
  if (self->_useFutureSize)
  {
    width = self->_futureSize.width;
    height = self->_futureSize.height;
  }

  else
  {
    v4 = [(InfiniteScrollViewController *)self scrollView];
    [v4 bounds];
    width = v5;
    height = v6;
  }

  v7 = width;
  v8 = height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)insertViews:(id)a3
{
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_views;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 superview];
        v12 = [(InfiniteScrollViewController *)self scrollView];

        if (v11 == v12)
        {
          [v10 removeFromSuperview];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v13 = [NSMutableArray arrayWithArray:v4];
  views = self->_views;
  self->_views = v13;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = self->_views;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v22 + 1) + 8 * j);
        [v20 setHidden:{0, v22}];
        v21 = [(InfiniteScrollViewController *)self scrollView];
        [v21 addSubview:v20];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }
}

- (id)_addNewTopView
{
  v3 = [(NSMutableArray *)self->_views firstObject];
  v4 = [v3 calendarDate];
  v5 = [(InfiniteScrollViewController *)self newTopViewAboveViewWithCalendarDate:v4];
  [v5 setAutoresizingMask:2];
  v6 = [v5 superview];

  v7 = [(InfiniteScrollViewController *)self scrollView];
  v8 = v7;
  if (v6)
  {
    [v7 sendSubviewToBack:v5];
  }

  else
  {
    [v7 insertSubview:v5 atIndex:0];
  }

  [v5 setHidden:0];
  v9 = [(InfiniteScrollViewController *)self scrollView];
  [v9 bounds];
  [v5 sizeThatFits:{v10, v11}];
  v13 = v12;
  v15 = v14;

  [v5 frame];
  [v3 frame];
  v16 = CGRectGetMinY(v20) - v15;
  [v3 topInset];
  [v5 setFrame:{0.0, v16 + v17, v13, v15}];
  [(NSMutableArray *)self->_views insertObject:v5 atIndex:0];

  return v5;
}

- (id)_addNewBottomView
{
  v3 = [(NSMutableArray *)self->_views lastObject];
  v4 = [v3 calendarDate];
  v5 = [(InfiniteScrollViewController *)self newBottomViewBelowViewWithCalendarDate:v4];
  [v5 setAutoresizingMask:2];
  if (v5)
  {
    v6 = [v5 superview];

    v7 = [(InfiniteScrollViewController *)self scrollView];
    v8 = v7;
    if (v6)
    {
      [v7 bringSubviewToFront:v5];
    }

    else
    {
      [v7 addSubview:v5];
    }

    [v5 setHidden:0];
    v9 = [(InfiniteScrollViewController *)self scrollView];
    [v9 bounds];
    [v5 sizeThatFits:{v10, v11}];
    v13 = v12;
    v15 = v14;

    [v5 frame];
    [v3 frame];
    MaxY = CGRectGetMaxY(v20);
    [v5 topInset];
    [v5 setFrame:{0.0, MaxY - v17, v13, v15}];
    [(NSMutableArray *)self->_views addObject:v5];
  }

  return v5;
}

- (void)_removeTopView
{
  v4 = [(NSMutableArray *)self->_views firstObject];
  v3 = [(NSMutableArray *)self->_reusableViews count];
  if (v3 <= [(InfiniteScrollViewController *)self maximumCachedReusableViews])
  {
    [(NSMutableArray *)self->_reusableViews addObject:v4];
  }

  else
  {
    [v4 removeFromSuperview];
  }

  [(NSMutableArray *)self->_views removeObjectAtIndex:0];
  [v4 setHidden:1];
}

+ (BOOL)_view:(id)a3 containsCalendarDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 calendarDate];
  v8 = [v7 compare:v6];

  if (v8 == 1)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v5 endCalendarDate];
    v9 = [v10 compare:v6] != -1;
  }

  return v9;
}

- (void)_removeBottomView
{
  v4 = [(NSMutableArray *)self->_views lastObject];
  v3 = [(NSMutableArray *)self->_reusableViews count];
  if (v3 <= [(InfiniteScrollViewController *)self maximumCachedReusableViews])
  {
    [(NSMutableArray *)self->_reusableViews addObject:v4];
  }

  else
  {
    [v4 removeFromSuperview];
  }

  [(NSMutableArray *)self->_views removeLastObject];
  [v4 setHidden:1];
}

- (BOOL)isDateVisible:(id)a3
{
  v4 = a3;
  v5 = [(InfiniteScrollViewController *)self firstViewOnScreen];
  v6 = [(InfiniteScrollViewController *)self _lastViewOnScreen];
  v7 = [v5 calendarDate];
  v8 = [v6 endCalendarDate];
  v9 = [v8 calendarDateForEndOfDay];

  [v7 absoluteTime];
  v11 = v10;
  [v9 absoluteTime];
  v13 = v12;
  [v4 timeIntervalSinceReferenceDate];
  v15 = v14;
  v16 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    v18 = [v7 date];
    v19 = [v9 date];
    v22 = 138412802;
    v23 = v4;
    v24 = 2112;
    v25 = v18;
    v26 = 2112;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Infinite scroll view determining if date %@ is visible. Onscreen dates: %@ - %@", &v22, 0x20u);
  }

  v20 = v15 <= v13 && v11 <= v15;

  return v20;
}

- (void)currentlyVisibleDateRangeFromStartDate:(id *)a3 toEndDate:(id *)a4
{
  v11 = [(InfiniteScrollViewController *)self firstViewOnScreen];
  v7 = [(InfiniteScrollViewController *)self _lastViewOnScreen];
  v8 = [v11 calendarDate];
  v9 = [v7 endCalendarDate];
  v10 = [v9 calendarDateForEndOfDay];

  if (a3)
  {
    *a3 = [v8 date];
  }

  if (a4)
  {
    *a4 = [v10 date];
  }
}

- (void)showDate:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = &_s19RemindersAppIntents0A40InCalendarReminderEditingModuleInterfaceP036requiresUserConfirmationForCancelingG0SbvgTj_ptr;
  v11 = [(MainViewController *)self model];
  v12 = [v11 eventStore];
  v13 = [v12 timeZone];
  v14 = [EKCalendarDate calendarDateWithDate:v8 timeZone:v13];

  if ([(InfiniteScrollViewController *)self isViewLoaded])
  {
    views = self->_views;
    if (views)
    {
      v73 = v8;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v16 = views;
      v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v78 objects:v90 count:16];
      if (v17)
      {
        v18 = *v79;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v79 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v78 + 1) + 8 * i);
            if ([objc_opt_class() _view:v20 containsCalendarDate:v14])
            {
              v17 = v20;
              goto LABEL_15;
            }
          }

          v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v78 objects:v90 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }

LABEL_15:
        v10 = &_s19RemindersAppIntents0A40InCalendarReminderEditingModuleInterfaceP036requiresUserConfirmationForCancelingG0SbvgTj_ptr;
      }

      v21 = +[NSMutableArray array];
      v22 = v21;
      if (v17)
      {
        v23 = 0;
        goto LABEL_55;
      }

      v72 = v21;
      v69 = v6;
      v24 = [(NSMutableArray *)self->_views firstObject];
      v25 = [(NSMutableArray *)self->_views lastObject];
      v26 = [v24 calendarDate];
      v27 = [v26 date];

      v28 = [v25 calendarDate];
      v29 = [v28 date];

      v71 = v27;
      v30 = [v73 compare:v27];
      v70 = v9;
      v67 = v25;
      v68 = v24;
      if (v30 == 1)
      {
        v34 = v29;
        if ([v73 compare:v29] == -1)
        {
          v31 = v72;
          v45 = kCalUILogHandle;
          if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v83 = v73;
            v84 = 2112;
            v85 = v71;
            v86 = 2112;
            v87 = v29;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "Target view is not loaded. No view for date %@ in range %@ to %@", buf, 0x20u);
          }

          goto LABEL_46;
        }

        v31 = v72;
        v35 = [v25 calendarDate];
        v36 = [(InfiniteScrollViewController *)self shouldAnimateScrollToDate:v14 fromClosestDate:v35];

        if (!v36)
        {
LABEL_46:
          if (self->_reinitializingViewsForNewDate)
          {
            if ([(NSMutableArray *)self->_views count])
            {
              v17 = [(NSMutableArray *)self->_views objectAtIndexedSubscript:[(NSMutableArray *)self->_views count]>> 1];
            }

            else
            {
              v17 = 0;
            }

            v46 = kCalUILogHandle;
            v9 = v70;
            if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
            {
              v47 = v46;
              v48 = [v17 calendarDate];
              v49 = [v48 date];
              *buf = 138544130;
              v83 = v73;
              v84 = 2114;
              v85 = v71;
              v86 = 2114;
              v87 = v34;
              v88 = 2114;
              v89 = v49;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "No view for date %{public}@. Loaded range is %{public}@ to %{public}@. Not reinitalizing views because we were already doing that, so scrolling to %{public}@ instead", buf, 0x2Au);

              v10 = &_s19RemindersAppIntents0A40InCalendarReminderEditingModuleInterfaceP036requiresUserConfirmationForCancelingG0SbvgTj_ptr;
            }

            v23 = 0;
            v6 = v69;
            v22 = v72;
          }

          else
          {
            self->_reinitializingViewsForNewDate = 1;
            [(InfiniteScrollViewController *)self reinitializeAllViewsWithCalendarDate:v14];
            v23 = 0;
            v17 = 0;
            self->_reinitializingViewsForNewDate = 0;
            v22 = v31;
            v9 = v70;
            v6 = v69;
          }

          goto LABEL_54;
        }
      }

      else
      {
        v31 = v72;
        v32 = [v24 calendarDate];
        v33 = [(InfiniteScrollViewController *)self shouldAnimateScrollToDate:v14 fromClosestDate:v32];

        v34 = v29;
        if ((v33 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      v66 = v34;
      v37 = 0;
      do
      {
        if (v30 == 1)
        {
          v38 = [(InfiniteScrollViewController *)self _addNewBottomView];
          [v38 endCalendarDate];
        }

        else
        {
          v38 = [(InfiniteScrollViewController *)self _addNewTopView];
          [v38 calendarDate];
        }
        v39 = ;

        if (v38)
        {
          [v31 addObject:v38];
        }

        v40 = [objc_opt_class() _view:v38 containsCalendarDate:v14];
        v41 = [v14 compare:v39];
        v42 = v41 == -1 && v30 == 1;

        if (v41 == 1 && v30 != 1)
        {
          break;
        }

        if (!v41)
        {
          break;
        }

        if (v42)
        {
          break;
        }

        v37 = v39;
      }

      while (!v40);
      v44 = self->_views;
      v6 = v69;
      if (v30 == 1)
      {
        [(NSMutableArray *)v44 lastObject];
      }

      else
      {
        [(NSMutableArray *)v44 firstObject];
      }
      v17 = ;
      v22 = v31;
      v34 = v66;

      v23 = 1;
      v9 = v70;
      v10 = &_s19RemindersAppIntents0A40InCalendarReminderEditingModuleInterfaceP036requiresUserConfirmationForCancelingG0SbvgTj_ptr;
LABEL_54:

      if (!v17)
      {
        if (v9)
        {
          v9[2](v9, 0);
        }

        v17 = 0;
        goto LABEL_74;
      }

LABEL_55:
      [v17 frame];
      v51 = v50;
      [(InfiniteScrollViewController *)self showDateVerticalOffsetForDate:v14];
      v52 = [(InfiniteScrollViewController *)self scrollView];
      [v52 safeAreaInsets];

      CalRoundToScreenScale();
      v54 = v53;
      v55 = [(InfiniteScrollViewController *)self scrollView];
      [v55 contentOffset];
      v57 = v54 - v56;

      v58 = -v57;
      if (v57 >= 0.0)
      {
        v58 = v57;
      }

      if (v6 && v58 < 1.0)
      {
        v59 = v10[242];
        v60 = CUIKTodayDate();
        v61 = [(CUIKCalendarModel *)self->super._model calendar];
        v62 = [v61 timeZone];
        v63 = [v59 calendarDateWithDate:v60 timeZone:v62];

        v64 = [(InfiniteScrollViewController *)self subviewForDate:v63];
        if (objc_opt_respondsToSelector())
        {
          [v64 pulseTodayCircle];
        }

        if (v9)
        {
          v9[2](v9, 1);
        }
      }

      else
      {
        if (!v6)
        {
          v65 = [(InfiniteScrollViewController *)self scrollView];
          [v65 setContentOffset:0 animated:{v51, v54}];

          [(InfiniteScrollViewController *)self adjustLoadedViewRange];
          v8 = v73;
          if (v9)
          {
            v9[2](v9, 1);
          }

          [(InfiniteScrollViewController *)self didEndScrolling];
          [(InfiniteScrollViewController *)self reloadDataForViews:v22];
          goto LABEL_75;
        }

        if (v23)
        {
          self->_viewCullingDisabledForScrollAnimation = 1;
        }

        v77[0] = _NSConcreteStackBlock;
        v77[1] = 3221225472;
        v77[2] = sub_100053318;
        v77[3] = &unk_10020EDD8;
        v77[4] = self;
        *&v77[5] = v51;
        *&v77[6] = v54;
        v74[0] = _NSConcreteStackBlock;
        v74[1] = 3221225472;
        v74[2] = sub_100053370;
        v74[3] = &unk_10020F658;
        v74[4] = self;
        v76 = v9;
        v75 = v22;
        [UIView _animateUsingDefaultTimingWithOptions:0 animations:v77 completion:v74];
      }

LABEL_74:
      v8 = v73;
LABEL_75:
      objc_storeStrong(&self->_lastKnownShownDate, v14);

      goto LABEL_76;
    }
  }

  objc_storeStrong(&self->_startingDate, v14);
  if (v9)
  {
    v9[2](v9, 0);
  }

LABEL_76:
}

- (id)subviewForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(InfiniteScrollViewController *)self scrollView];
  v7 = [(InfiniteScrollViewController *)self view];
  [v6 convertPoint:v7 fromView:{x, y}];
  CalRoundPointToScreenScale();
  v9 = v8;
  v11 = v10;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = self->_views;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        [v16 frame];
        v24.x = v9;
        v24.y = v11;
        if (CGRectContainsPoint(v25, v24))
        {
          v13 = v16;
          goto LABEL_11;
        }
      }

      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v13;
}

- (id)subviewForDate:(id)a3
{
  v4 = a3;
  if (+[NSThread isMainThread])
  {
    v5 = [(InfiniteScrollViewController *)self view];
    [v5 layoutIfNeeded];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_views;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([objc_opt_class() _view:v11 containsCalendarDate:{v4, v14}])
        {
          v12 = v11;
          goto LABEL_13;
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (id)centerViewOnScreen
{
  v3 = [(InfiniteScrollViewController *)self view];
  [v3 bounds];
  v5 = [(InfiniteScrollViewController *)self subviewForPoint:0.0, v4 * 0.5];

  return v5;
}

- (id)firstViewOnScreen
{
  v3 = [(InfiniteScrollViewController *)self scrollView];
  [v3 adjustedContentInset];
  v5 = v4;

  v6 = [(InfiniteScrollViewController *)self scrollView];
  [v6 frame];
  v7 = [(InfiniteScrollViewController *)self subviewForPoint:CGRectGetMidX(v10), v5];

  return v7;
}

- (id)_lastViewOnScreen
{
  v3 = [(InfiniteScrollViewController *)self scrollView];
  [v3 frame];
  v5 = v4;

  v6 = [(InfiniteScrollViewController *)self scrollView];
  [v6 adjustedContentInset];
  v8 = v5 - v7;

  return [(InfiniteScrollViewController *)self subviewForPoint:0.0, v8];
}

- (id)dateOfCenterViewOnScreen
{
  v3 = [(InfiniteScrollViewController *)self centerViewOnScreen];
  v4 = [v3 calendarDate];
  if (v4)
  {
    goto LABEL_2;
  }

  v6 = [(InfiniteScrollViewController *)self firstViewOnScreen];
  v5 = [v6 calendarDate];

  if (!v5)
  {
    v4 = self->_startingDate;
LABEL_2:
    v5 = v4;
  }

  return v5;
}

- (id)dateOfCenterViewInBuffer
{
  v3 = [(InfiniteScrollViewController *)self dateOfViewInBufferIndexRelativeToCenter:0];
  if (!v3)
  {
    v3 = self->_startingDate;
  }

  return v3;
}

- (id)dateOfViewInBufferIndexRelativeToCenter:(int64_t)a3
{
  v5 = [(NSMutableArray *)self->_views count];
  if (v5 && ([(NSMutableArray *)self->_views objectAtIndex:a3 + (v5 >> 1)], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [v6 calendarDate];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)enumerateScrollViewSubviews:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_views;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = 0;
      v4[2](v4, v10, &v11);
      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)dequeueReusableView
{
  if ([(NSMutableArray *)self->_reusableViews count])
  {
    v3 = [(NSMutableArray *)self->_reusableViews firstObject];
    [(NSMutableArray *)self->_reusableViews removeObjectAtIndex:0];
    if (objc_opt_respondsToSelector())
    {
      [v3 prepareForReuse];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)showSelectedDateIfNeeded
{
  v3 = [(MainViewController *)self model];
  v4 = [v3 selectedDate];
  v5 = [v4 isEqual:self->_lastKnownShownDate];

  if ((v5 & 1) == 0)
  {
    v8 = [(MainViewController *)self model];
    v6 = [v8 selectedDate];
    v7 = [v6 date];
    [(InfiniteScrollViewController *)self showDate:v7 animated:0];
  }
}

- (CGPoint)nearestMajorBoundaryForPoint:(CGPoint)a3
{
  [(InfiniteScrollViewController *)self nearestMajorBoundaryForPoint:0 date:a3.x, a3.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)nearestMajorBoundaryForPoint:(CGPoint)a3 date:(id *)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(InfiniteScrollViewController *)self scrollView];
  [v7 safeAreaInsets];
  v9 = v8;

  v10 = 0.0;
  v11 = [(InfiniteScrollViewController *)self subviewForPoint:0.0, v9];
  v12 = [(InfiniteScrollViewController *)self scrollView];
  v13 = [(InfiniteScrollViewController *)self view];
  [v12 convertPoint:v13 fromView:{0.0, v9}];
  v15 = v14;

  LOBYTE(v16) = v15 > y;
  if (!v11)
  {
    views = self->_views;
    if (v15 <= y)
    {
      [(NSMutableArray *)views lastObject];
    }

    else
    {
      [(NSMutableArray *)views firstObject];
    }
    v11 = ;
  }

  v55 = a4;
  v18 = [v11 calendarDate];
  [v11 frame];
  MinY = CGRectGetMinY(v63);
  [v11 frame];
  MaxY = CGRectGetMaxY(v64);
  v57 = v11;
  [v11 topInset];
  v22 = v21;
  v23 = 0;
  v24 = 0;
  v25 = 0;
LABEL_7:
  if (y >= MinY && y <= MaxY)
  {
    v28 = [(InfiniteScrollViewController *)self pastMajorBoundaryCalendarDateForCalendarDate:v18];

    v29 = [(InfiniteScrollViewController *)self futureMajorBoundaryCalendarDateForCalendarDate:v18];

    LOBYTE(v16) = 1;
    v24 = v28;
    v23 = v29;
    goto LABEL_15;
  }

  if (v16)
  {
    if (y <= MaxY)
    {
      v27 = 0;
LABEL_28:
      v36 = [(InfiniteScrollViewController *)self calendarDateForSubviewAboveSubviewWithCalendarDate:v18];
      v16 = 1;
      goto LABEL_32;
    }

    v52 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v59 = v18;
      v49 = "Major boundary calculation failsafe triggered while searching upward.  Subview frame exceeds target point.  subviewCalendarDate: [%@]";
      goto LABEL_60;
    }

    goto LABEL_62;
  }

  if (y < MinY)
  {
    v52 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v59 = v18;
      v49 = "Major boundary calculation failsafe triggered while searching downward.  Subview frame exceeds target point.  subviewCalendarDate: [%@]";
LABEL_60:
      v50 = v52;
      v51 = 12;
LABEL_61:
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, v49, buf, v51);
    }

LABEL_62:
    v43 = 0;
LABEL_63:
    v41 = v18;
LABEL_64:
    v46 = v57;
    goto LABEL_65;
  }

  v27 = 0;
  while (1)
  {
    v36 = [(InfiniteScrollViewController *)self calendarDateForSubviewBelowSubviewWithCalendarDate:v18];
    v16 = 0;
LABEL_32:
    [(InfiniteScrollViewController *)self heightForSubviewWithCalendarDate:v36];
    v38 = v37;
    [(InfiniteScrollViewController *)self topInsetForSubviewWithCalendarDate:v36];
    v40 = v39;
    if (v16)
    {
      MinY = v22 + MinY - v38;
    }

    else
    {
      MinY = MaxY - v39;
    }

    v41 = v36;

    if ([v41 year] > 9999 || objc_msgSend(v41, "year") <= -10000)
    {
      v42 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = v41;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Major boundary calculation failsafe triggered while trying to find the subview matching a nearest major boundary calendar date. It is possible that nextSubviewHeight is negative, or other unexpected case happened. subviewCalendarDate: [%@]", buf, 0xCu);
      }

      v43 = 0;
      goto LABEL_64;
    }

    MaxY = v38 + MinY;

    v22 = v40;
    v18 = v41;
    if ((v27 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    if (v25)
    {
      v25 = 1;
    }

    else if ((v30 = [v24 month], v30 == objc_msgSend(v18, "month")) && (v31 = objc_msgSend(v24, "day"), v31 == objc_msgSend(v18, "day")) || (v32 = objc_msgSend(v24, "compare:", v18)) == 0)
    {
      LOBYTE(v16) = 0;
      v25 = 1;
      v10 = MinY;
    }

    else
    {
      if (v32 == 1)
      {
        v48 = kCalUILogHandle;
        if (!os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_62;
        }

        *buf = 138412546;
        v59 = v24;
        v60 = 2112;
        v61 = v18;
        v49 = "Major boundary calculation failsafe triggered while trying to find the subview matching a past major boundary calendar date.  pastMajorBoundaryCalendarDate: [%@] subviewCalendarDate: [%@]";
LABEL_53:
        v50 = v48;
        v51 = 22;
        goto LABEL_61;
      }

      v25 = 0;
    }

    v33 = [v23 month];
    if (v33 == [v18 month])
    {
      v34 = [v23 day];
      if (v34 == [v18 day])
      {
        break;
      }
    }

    v35 = [v23 compare:v18];
    if (!v35)
    {
      break;
    }

    if (v35 == -1)
    {
      v48 = kCalUILogHandle;
      if (!os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_62;
      }

      *buf = 138412546;
      v59 = v23;
      v60 = 2112;
      v61 = v18;
      v49 = "Major boundary calculation failsafe triggered while trying to find the subview matching a future major boundary calendar date.  futureMajorBoundaryCalendarDate: [%@] subviewCalendarDate: [%@]";
      goto LABEL_53;
    }

    v27 = 1;
    if (v16)
    {
      goto LABEL_28;
    }
  }

  if (y - v10 <= MinY - y)
  {
    v44 = v24;
  }

  else
  {
    v44 = v23;
  }

  if (y - v10 > MinY - y)
  {
    v10 = MinY;
  }

  v43 = v44;
  [(InfiniteScrollViewController *)self showDateVerticalOffsetForDate:v43];
  y = v10 - v9 + v45;
  if (!v55)
  {
    goto LABEL_63;
  }

  v46 = v57;
  if (v43)
  {
    v47 = v43;
    *v55 = v43;
  }

  v41 = v18;
LABEL_65:

  v53 = x;
  v54 = y;
  result.y = v54;
  result.x = v53;
  return result;
}

- (double)unobstructedScrollViewHeight
{
  v3 = [(InfiniteScrollViewController *)self scrollView];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;

  v8 = [(InfiniteScrollViewController *)self scrollView];
  [v8 bounds];
  v9 = CGRectGetHeight(v11) - v5 - v7;

  return v9;
}

- (id)pastMajorBoundaryCalendarDateForCalendarDate:(id)a3
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (id)futureMajorBoundaryCalendarDateForCalendarDate:(id)a3
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (id)createInitialViewForDate:(id)a3
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (id)newTopViewAboveViewWithCalendarDate:(id)a3
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (id)newBottomViewBelowViewWithCalendarDate:(id)a3
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (id)calendarDateForSubviewAboveSubviewWithCalendarDate:(id)a3
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (id)calendarDateForSubviewBelowSubviewWithCalendarDate:(id)a3
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (double)heightForSubviewWithCalendarDate:(id)a3
{
  sub_100026F48();
  sub_100026F2C();
  return 0.0;
}

- (double)topInsetForSubviewWithCalendarDate:(id)a3
{
  sub_100026F48();
  sub_100026F2C();
  return 0.0;
}

@end