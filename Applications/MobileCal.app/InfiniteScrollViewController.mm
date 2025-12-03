@interface InfiniteScrollViewController
+ (BOOL)_view:(id)_view containsCalendarDate:(id)date;
- (BOOL)isDateVisible:(id)visible;
- (CGPoint)nearestMajorBoundaryForPoint:(CGPoint)point;
- (CGPoint)nearestMajorBoundaryForPoint:(CGPoint)point date:(id *)date;
- (CGSize)_visibleSize;
- (InfiniteScrollViewController)initWithCalendarDate:(id)date model:(id)model window:(id)window;
- (NSString)description;
- (double)heightForSubviewWithCalendarDate:(id)date;
- (double)topInsetForSubviewWithCalendarDate:(id)date;
- (double)unobstructedScrollViewHeight;
- (id)_addNewBottomView;
- (id)_addNewTopView;
- (id)_lastViewOnScreen;
- (id)calendarDateForSubviewAboveSubviewWithCalendarDate:(id)date;
- (id)calendarDateForSubviewBelowSubviewWithCalendarDate:(id)date;
- (id)centerViewOnScreen;
- (id)createInitialViewForDate:(id)date;
- (id)dateOfCenterViewInBuffer;
- (id)dateOfCenterViewOnScreen;
- (id)dateOfViewInBufferIndexRelativeToCenter:(int64_t)center;
- (id)dequeueReusableView;
- (id)firstViewOnScreen;
- (id)futureMajorBoundaryCalendarDateForCalendarDate:(id)date;
- (id)newBottomViewBelowViewWithCalendarDate:(id)date;
- (id)newTopViewAboveViewWithCalendarDate:(id)date;
- (id)pastMajorBoundaryCalendarDateForCalendarDate:(id)date;
- (id)subviewForDate:(id)date;
- (id)subviewForPoint:(CGPoint)point;
- (void)_layoutInitialSubviews;
- (void)_recenterContentIfNeededWithForce:(BOOL)force;
- (void)_removeBottomView;
- (void)_removeTopView;
- (void)_setUpInitialViewWithDate:(id)date;
- (void)_updateSelectedDateWithTopView;
- (void)adjustLoadedViewRange;
- (void)currentlyVisibleDateRangeFromStartDate:(id *)date toEndDate:(id *)endDate;
- (void)didEndScrolling;
- (void)enumerateScrollViewSubviews:(id)subviews;
- (void)insertViews:(id)views;
- (void)loadView;
- (void)reinitializeAllViewsWithCalendarDate:(id)date;
- (void)reloadDataForViews:(id)views;
- (void)resizeAllViews;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)showDate:(id)date animated:(BOOL)animated completionBlock:(id)block;
- (void)showSelectedDateIfNeeded;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation InfiniteScrollViewController

- (InfiniteScrollViewController)initWithCalendarDate:(id)date model:(id)model window:(id)window
{
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = InfiniteScrollViewController;
  v10 = [(MainViewController *)&v15 initWithWindow:window model:model];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_startingDate, date);
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
  model = [(MainViewController *)self model];
  v6 = [NSNumber numberWithUnsignedInteger:[(NSMutableArray *)self->_views count]];
  v7 = [NSNumber numberWithUnsignedInteger:[(NSMutableArray *)self->_reusableViews count]];
  v8 = [NSString stringWithFormat:@"%@ startingDate: [%@], model: [%@], views: [%@], _reusableViews: [%@]", v3, startingDate, model, v6, v7];;

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

  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView setAutoresizingMask:18];

  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [(_InfiniteScrollViewController *)v3 setView:scrollView2];

  [(InfiniteScrollViewController *)self addChildViewController:v3];
  view = [(InfiniteScrollViewController *)self view];
  scrollView3 = [(InfiniteScrollViewController *)self scrollView];
  [view addSubview:scrollView3];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = InfiniteScrollViewController;
  [(InfiniteScrollViewController *)&v12 viewDidLoad];
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView setClipsToBounds:0];

  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView2 setContentSize:{200.0, 400000.0}];

  scrollView3 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView3 setShowsHorizontalScrollIndicator:0];

  scrollView4 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView4 setShowsVerticalScrollIndicator:0];

  scrollView5 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView5 setScrollsToTop:0];

  v8 = +[UIColor systemBackgroundColor];
  scrollView6 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView6 setBackgroundColor:v8];

  scrollView7 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView7 setBounces:0];

  scrollView8 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView8 setDelegate:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = InfiniteScrollViewController;
  [(InfiniteScrollViewController *)&v7 viewWillAppear:appear];
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  subviews = [scrollView subviews];
  v6 = [subviews count];

  if (!v6)
  {
    [(InfiniteScrollViewController *)self _setUpInitialViewWithDate:self->_startingDate];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  self->_viewIsVisible = 1;
  v3.receiver = self;
  v3.super_class = InfiniteScrollViewController;
  [(MainViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = InfiniteScrollViewController;
  [(InfiniteScrollViewController *)&v4 viewWillDisappear:disappear];
  self->_viewIsVisible = 0;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  self->_futureSize = size;
  self->_useFutureSize = 1;
  coordinatorCopy = coordinator;
  if ([(InfiniteScrollViewController *)self isViewLoaded])
  {
    view = [(InfiniteScrollViewController *)self view];
    window = [view window];

    if (window)
    {
      [(InfiniteScrollViewController *)self adjustLoadedViewRange];
    }
  }

  v12.receiver = self;
  v12.super_class = InfiniteScrollViewController;
  [(MainViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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
  [coordinatorCopy animateAlongsideTransition:v11 completion:v10];
}

- (void)_setUpInitialViewWithDate:(id)date
{
  dateCopy = date;
  timeZone = [dateCopy timeZone];
  model = [(MainViewController *)self model];
  calendar = [model calendar];
  timeZone2 = [calendar timeZone];
  v9 = [timeZone isEqualToTimeZone:timeZone2];

  if ((v9 & 1) == 0)
  {
    v10 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      timeZone3 = [dateCopy timeZone];
      name = [timeZone3 name];
      model2 = [(MainViewController *)self model];
      calendar2 = [model2 calendar];
      timeZone4 = [calendar2 timeZone];
      name2 = [timeZone4 name];
      *buf = 138412546;
      v56 = name;
      v57 = 2112;
      v58 = name2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Fixing mismatched timezone on date for reloading infinite scroll view (received %@, UI showing %@).", buf, 0x16u);
    }

    date = [dateCopy date];
    model3 = [(MainViewController *)self model];
    calendar3 = [model3 calendar];
    timeZone5 = [calendar3 timeZone];
    v22 = [EKCalendarDate calendarDateWithDate:date timeZone:timeZone5];

    dateCopy = v22;
  }

  view = [(InfiniteScrollViewController *)self view];
  if (view)
  {
    v24 = view;
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
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView contentSize];
  v34 = v33 * 0.5;
  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView2 setContentOffset:{0.0, v34}];

  self->_suppressViewAdjustmentsForInitialSetup = 0;
  v36 = [[NSMutableArray alloc] initWithCapacity:3];
  v37 = self->_views;
  self->_views = v36;

  v38 = [(InfiniteScrollViewController *)self createInitialViewForDate:dateCopy];
  scrollView3 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView3 addSubview:v38];

  [(NSMutableArray *)self->_views addObject:v38];
  [v38 setAutoresizingMask:2];
  [v38 setHidden:0];
  scrollView4 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView4 bounds];
  [v38 sizeThatFits:{v41, v42}];
  v44 = v43;
  v46 = v45;

  [v38 frame];
  [v38 setFrame:{CGPointZero.x, CGPointZero.y, v44, v46}];
  _addNewTopView = [(InfiniteScrollViewController *)self _addNewTopView];
  _addNewBottomView = [(InfiniteScrollViewController *)self _addNewBottomView];
  [(InfiniteScrollViewController *)self reloadDataForAllViews];
  [(InfiniteScrollViewController *)self _layoutInitialSubviews];
  date2 = [(EKCalendarDate *)self->_startingDate date];
  [(InfiniteScrollViewController *)self showDate:date2 animated:0];
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

    scrollView = [(InfiniteScrollViewController *)self scrollView];
    [scrollView contentOffset];

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

- (void)reinitializeAllViewsWithCalendarDate:(id)date
{
  dateCopy = date;
  view = [(InfiniteScrollViewController *)self view];
  window = [view window];

  if (window || (-[InfiniteScrollViewController navigationController](self, "navigationController"), v8 = objc_claimAutoreleasedReturnValue(), [v8 view], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "window"), v12 = objc_claimAutoreleasedReturnValue(), v9, v8, !v12))
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
  self->_startingDate = dateCopy;
  v11 = dateCopy;

  [(InfiniteScrollViewController *)self _setUpInitialViewWithDate:v11];
  [(InfiniteScrollViewController *)self adjustLoadedViewRange];
  if ((v7 & 1) == 0)
  {
    EKUIPopFallbackSizingContextWithViewHierarchy();
  }
}

- (void)_recenterContentIfNeededWithForce:(BOOL)force
{
  if (![(InfiniteScrollViewController *)self suppressViewAdjustments]&& !self->_suppressViewAdjustmentsForInitialSetup)
  {
    scrollView = [(InfiniteScrollViewController *)self scrollView];
    [scrollView contentOffset];
    v7 = v6;
    v9 = v8;

    scrollView2 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView2 contentSize];
    v12 = v11;

    scrollView3 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView3 bounds];
    v15 = (v12 - v14) * 0.5;

    if (force || vabdd_f64(v9, v15) > v12 * 0.25)
    {
      scrollView4 = [(InfiniteScrollViewController *)self scrollView];
      [scrollView4 setContentOffset:{v7, v15}];

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
    scrollView = [(InfiniteScrollViewController *)self scrollView];
    [(InfiniteScrollViewController *)self _visibleSize];
    v5 = v4;
    [(InfiniteScrollViewController *)self subviewBufferExtensionMultiplier];
    v7 = v6;
    [scrollView contentOffset];
    v9 = v8;
    [scrollView contentOffset];
    v11 = v10;
    v12 = objc_alloc_init(NSMutableSet);
    firstObject = [(NSMutableArray *)self->_views firstObject];
    lastObject = [(NSMutableArray *)self->_views lastObject];
    if (!firstObject)
    {
      goto LABEL_38;
    }

    v15 = v9 - v5 * v7;
    v16 = v5 * v7 + v5 + v11;
    [firstObject frame];
    MinY = CGRectGetMinY(v67);
    [lastObject frame];
    MaxY = CGRectGetMaxY(v68);
    if (v16 < MinY)
    {
      calendarDate = [firstObject calendarDate];
      [firstObject frame];
      v21 = v20;
      [firstObject topInset];
      v23 = v22;
      v24 = MinY;
      goto LABEL_8;
    }

    if (v15 > MaxY)
    {
      calendarDate = [lastObject calendarDate];
      [lastObject frame];
      v21 = v25;
      [lastObject topInset];
      v23 = v26;
      [lastObject frame];
      v24 = CGRectGetMinY(v69);
      do
      {
        while (1)
        {
LABEL_8:
          if (v16 >= MinY)
          {
            [(InfiniteScrollViewController *)self calendarDateForSubviewBelowSubviewWithCalendarDate:calendarDate];
          }

          else
          {
            [(InfiniteScrollViewController *)self calendarDateForSubviewAboveSubviewWithCalendarDate:calendarDate];
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

          calendarDate = v27;
          v23 = v30;
          v21 = v29;
          if (v31 <= v15)
          {
            goto LABEL_18;
          }
        }

        calendarDate = v27;
        v23 = v30;
        v21 = v29;
      }

      while (v29 + v32 < v16);
LABEL_18:
      if ([(NSMutableArray *)self->_views count])
      {
        v58 = lastObject;
        v59 = firstObject;
        v60 = scrollView;
        maximumCachedReusableViews = [(InfiniteScrollViewController *)self maximumCachedReusableViews];
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
              if ([(NSMutableArray *)self->_reusableViews count]<= maximumCachedReusableViews)
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

        scrollView = v60;
        lastObject = v58;
        firstObject = v59;
      }

      v42 = [(InfiniteScrollViewController *)self createInitialViewForDate:v27];
      [v42 setHidden:0];
      [(NSMutableArray *)self->_views addObject:v42];
      [scrollView addSubview:v42];
      [(InfiniteScrollViewController *)self _visibleSize];
      [v42 sizeThatFits:?];
      [scrollView frame];
      [v42 setFrame:?];
      v43 = v42;

      lastObject = v43;
      firstObject = v43;
    }

    if (firstObject && lastObject)
    {
      [firstObject frame];
      if (CGRectGetMinY(v70) > v15)
      {
        while (1)
        {
          v44 = firstObject;
          _addNewTopView = [(InfiniteScrollViewController *)self _addNewTopView];
          firstObject = [(NSMutableArray *)self->_views firstObject];

          if (!_addNewTopView)
          {
            break;
          }

          [_addNewTopView frame];
          if (v46 < 0.0001)
          {
            break;
          }

          [v12 addObject:_addNewTopView];

          [firstObject frame];
          if (CGRectGetMinY(v71) <= v15)
          {
            goto LABEL_41;
          }
        }
      }

LABEL_41:
      [lastObject frame];
      if (CGRectGetMaxY(v72) < v16)
      {
        while (1)
        {
          v48 = lastObject;
          _addNewBottomView = [(InfiniteScrollViewController *)self _addNewBottomView];
          lastObject = [(NSMutableArray *)self->_views lastObject];

          if (!_addNewBottomView)
          {
            break;
          }

          [_addNewBottomView frame];
          if (v50 < 0.0001)
          {
            break;
          }

          [v12 addObject:_addNewBottomView];

          [lastObject frame];
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
          firstObject2 = [(NSMutableArray *)self->_views firstObject];

          if ([(NSMutableArray *)self->_views count])
          {
            while (1)
            {
              [firstObject2 frame];
              if (CGRectGetMaxY(v74) >= v15)
              {
                break;
              }

              [(InfiniteScrollViewController *)self _removeTopView];
              firstObject = [(NSMutableArray *)self->_views firstObject];

              firstObject2 = firstObject;
              if (![(NSMutableArray *)self->_views count])
              {
                goto LABEL_54;
              }
            }
          }

          firstObject = firstObject2;
LABEL_54:
          lastObject2 = [(NSMutableArray *)self->_views lastObject];

          if ([(NSMutableArray *)self->_views count])
          {
            while (1)
            {
              [lastObject2 frame];
              if (CGRectGetMinY(v75) <= v16)
              {
                break;
              }

              [(InfiniteScrollViewController *)self _removeBottomView];
              lastObject = [(NSMutableArray *)self->_views lastObject];

              lastObject2 = lastObject;
              if (![(NSMutableArray *)self->_views count])
              {
                goto LABEL_59;
              }
            }
          }

          lastObject = lastObject2;
LABEL_59:
          if (self->_viewIsVisible && [(InfiniteScrollViewController *)self shouldUpdatePreferredReloadDates]&& (objc_opt_respondsToSelector() & 1) != 0)
          {
            calendarDate2 = [firstObject calendarDate];
            date = [calendarDate2 date];

            endCalendarDate = [lastObject endCalendarDate];
            date2 = [endCalendarDate date];

            model = [(MainViewController *)self model];
            [model setPreferredReloadStartDate:date endDate:date2];
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

- (void)reloadDataForViews:(id)views
{
  viewsCopy = views;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [viewsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(viewsCopy);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 reloadData];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [viewsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  firstViewOnScreen = [(InfiniteScrollViewController *)self firstViewOnScreen];
  if (firstViewOnScreen)
  {
    v7 = firstViewOnScreen;
    calendarDate = [firstViewOnScreen calendarDate];
    [(CUIKCalendarModel *)self->super._model setSelectedDate:calendarDate];

    calendarDate2 = [v7 calendarDate];
    lastKnownShownDate = self->_lastKnownShownDate;
    self->_lastKnownShownDate = calendarDate2;

    firstViewOnScreen = v7;
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (![(InfiniteScrollViewController *)self suppressViewAdjustments]&& !self->_suppressViewAdjustmentsForInitialSetup)
  {

    [(InfiniteScrollViewController *)self didScroll];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"EmptySearchBarNeedsResignFirstResponderNotification" object:self];

  [(InfiniteScrollViewController *)self setIsUserFingerDown:1];

  [(InfiniteScrollViewController *)self willBeginDragging];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  [(InfiniteScrollViewController *)self setIsUserFingerDown:0];
  [(InfiniteScrollViewController *)self didEndDraggingWillDecelerate:decelerateCopy];
  if (!decelerateCopy)
  {

    [(InfiniteScrollViewController *)self didEndScrolling];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
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
    scrollView = [(InfiniteScrollViewController *)self scrollView];
    [scrollView bounds];
    width = v5;
    height = v6;
  }

  v7 = width;
  v8 = height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)insertViews:(id)views
{
  viewsCopy = views;
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
        superview = [v10 superview];
        scrollView = [(InfiniteScrollViewController *)self scrollView];

        if (superview == scrollView)
        {
          [v10 removeFromSuperview];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v13 = [NSMutableArray arrayWithArray:viewsCopy];
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
        scrollView2 = [(InfiniteScrollViewController *)self scrollView];
        [scrollView2 addSubview:v20];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }
}

- (id)_addNewTopView
{
  firstObject = [(NSMutableArray *)self->_views firstObject];
  calendarDate = [firstObject calendarDate];
  v5 = [(InfiniteScrollViewController *)self newTopViewAboveViewWithCalendarDate:calendarDate];
  [v5 setAutoresizingMask:2];
  superview = [v5 superview];

  scrollView = [(InfiniteScrollViewController *)self scrollView];
  v8 = scrollView;
  if (superview)
  {
    [scrollView sendSubviewToBack:v5];
  }

  else
  {
    [scrollView insertSubview:v5 atIndex:0];
  }

  [v5 setHidden:0];
  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView2 bounds];
  [v5 sizeThatFits:{v10, v11}];
  v13 = v12;
  v15 = v14;

  [v5 frame];
  [firstObject frame];
  v16 = CGRectGetMinY(v20) - v15;
  [firstObject topInset];
  [v5 setFrame:{0.0, v16 + v17, v13, v15}];
  [(NSMutableArray *)self->_views insertObject:v5 atIndex:0];

  return v5;
}

- (id)_addNewBottomView
{
  lastObject = [(NSMutableArray *)self->_views lastObject];
  calendarDate = [lastObject calendarDate];
  v5 = [(InfiniteScrollViewController *)self newBottomViewBelowViewWithCalendarDate:calendarDate];
  [v5 setAutoresizingMask:2];
  if (v5)
  {
    superview = [v5 superview];

    scrollView = [(InfiniteScrollViewController *)self scrollView];
    v8 = scrollView;
    if (superview)
    {
      [scrollView bringSubviewToFront:v5];
    }

    else
    {
      [scrollView addSubview:v5];
    }

    [v5 setHidden:0];
    scrollView2 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView2 bounds];
    [v5 sizeThatFits:{v10, v11}];
    v13 = v12;
    v15 = v14;

    [v5 frame];
    [lastObject frame];
    MaxY = CGRectGetMaxY(v20);
    [v5 topInset];
    [v5 setFrame:{0.0, MaxY - v17, v13, v15}];
    [(NSMutableArray *)self->_views addObject:v5];
  }

  return v5;
}

- (void)_removeTopView
{
  firstObject = [(NSMutableArray *)self->_views firstObject];
  v3 = [(NSMutableArray *)self->_reusableViews count];
  if (v3 <= [(InfiniteScrollViewController *)self maximumCachedReusableViews])
  {
    [(NSMutableArray *)self->_reusableViews addObject:firstObject];
  }

  else
  {
    [firstObject removeFromSuperview];
  }

  [(NSMutableArray *)self->_views removeObjectAtIndex:0];
  [firstObject setHidden:1];
}

+ (BOOL)_view:(id)_view containsCalendarDate:(id)date
{
  _viewCopy = _view;
  dateCopy = date;
  calendarDate = [_viewCopy calendarDate];
  v8 = [calendarDate compare:dateCopy];

  if (v8 == 1)
  {
    v9 = 0;
  }

  else
  {
    endCalendarDate = [_viewCopy endCalendarDate];
    v9 = [endCalendarDate compare:dateCopy] != -1;
  }

  return v9;
}

- (void)_removeBottomView
{
  lastObject = [(NSMutableArray *)self->_views lastObject];
  v3 = [(NSMutableArray *)self->_reusableViews count];
  if (v3 <= [(InfiniteScrollViewController *)self maximumCachedReusableViews])
  {
    [(NSMutableArray *)self->_reusableViews addObject:lastObject];
  }

  else
  {
    [lastObject removeFromSuperview];
  }

  [(NSMutableArray *)self->_views removeLastObject];
  [lastObject setHidden:1];
}

- (BOOL)isDateVisible:(id)visible
{
  visibleCopy = visible;
  firstViewOnScreen = [(InfiniteScrollViewController *)self firstViewOnScreen];
  _lastViewOnScreen = [(InfiniteScrollViewController *)self _lastViewOnScreen];
  calendarDate = [firstViewOnScreen calendarDate];
  endCalendarDate = [_lastViewOnScreen endCalendarDate];
  calendarDateForEndOfDay = [endCalendarDate calendarDateForEndOfDay];

  [calendarDate absoluteTime];
  v11 = v10;
  [calendarDateForEndOfDay absoluteTime];
  v13 = v12;
  [visibleCopy timeIntervalSinceReferenceDate];
  v15 = v14;
  v16 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    date = [calendarDate date];
    date2 = [calendarDateForEndOfDay date];
    v22 = 138412802;
    v23 = visibleCopy;
    v24 = 2112;
    v25 = date;
    v26 = 2112;
    v27 = date2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Infinite scroll view determining if date %@ is visible. Onscreen dates: %@ - %@", &v22, 0x20u);
  }

  v20 = v15 <= v13 && v11 <= v15;

  return v20;
}

- (void)currentlyVisibleDateRangeFromStartDate:(id *)date toEndDate:(id *)endDate
{
  firstViewOnScreen = [(InfiniteScrollViewController *)self firstViewOnScreen];
  _lastViewOnScreen = [(InfiniteScrollViewController *)self _lastViewOnScreen];
  calendarDate = [firstViewOnScreen calendarDate];
  endCalendarDate = [_lastViewOnScreen endCalendarDate];
  calendarDateForEndOfDay = [endCalendarDate calendarDateForEndOfDay];

  if (date)
  {
    *date = [calendarDate date];
  }

  if (endDate)
  {
    *endDate = [calendarDateForEndOfDay date];
  }
}

- (void)showDate:(id)date animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  dateCopy = date;
  blockCopy = block;
  v10 = &_s19RemindersAppIntents0A40InCalendarReminderEditingModuleInterfaceP036requiresUserConfirmationForCancelingG0SbvgTj_ptr;
  model = [(MainViewController *)self model];
  eventStore = [model eventStore];
  timeZone = [eventStore timeZone];
  v14 = [EKCalendarDate calendarDateWithDate:dateCopy timeZone:timeZone];

  if ([(InfiniteScrollViewController *)self isViewLoaded])
  {
    views = self->_views;
    if (views)
    {
      v73 = dateCopy;
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
      v69 = animatedCopy;
      firstObject = [(NSMutableArray *)self->_views firstObject];
      lastObject = [(NSMutableArray *)self->_views lastObject];
      calendarDate = [firstObject calendarDate];
      date = [calendarDate date];

      calendarDate2 = [lastObject calendarDate];
      date2 = [calendarDate2 date];

      v71 = date;
      v30 = [v73 compare:date];
      v70 = blockCopy;
      v67 = lastObject;
      v68 = firstObject;
      if (v30 == 1)
      {
        v34 = date2;
        if ([v73 compare:date2] == -1)
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
            v87 = date2;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "Target view is not loaded. No view for date %@ in range %@ to %@", buf, 0x20u);
          }

          goto LABEL_46;
        }

        v31 = v72;
        calendarDate3 = [lastObject calendarDate];
        v36 = [(InfiniteScrollViewController *)self shouldAnimateScrollToDate:v14 fromClosestDate:calendarDate3];

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
            blockCopy = v70;
            if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
            {
              v47 = v46;
              calendarDate4 = [v17 calendarDate];
              date3 = [calendarDate4 date];
              *buf = 138544130;
              v83 = v73;
              v84 = 2114;
              v85 = v71;
              v86 = 2114;
              v87 = v34;
              v88 = 2114;
              v89 = date3;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "No view for date %{public}@. Loaded range is %{public}@ to %{public}@. Not reinitalizing views because we were already doing that, so scrolling to %{public}@ instead", buf, 0x2Au);

              v10 = &_s19RemindersAppIntents0A40InCalendarReminderEditingModuleInterfaceP036requiresUserConfirmationForCancelingG0SbvgTj_ptr;
            }

            v23 = 0;
            animatedCopy = v69;
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
            blockCopy = v70;
            animatedCopy = v69;
          }

          goto LABEL_54;
        }
      }

      else
      {
        v31 = v72;
        calendarDate5 = [firstObject calendarDate];
        v33 = [(InfiniteScrollViewController *)self shouldAnimateScrollToDate:v14 fromClosestDate:calendarDate5];

        v34 = date2;
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
          _addNewBottomView = [(InfiniteScrollViewController *)self _addNewBottomView];
          [_addNewBottomView endCalendarDate];
        }

        else
        {
          _addNewBottomView = [(InfiniteScrollViewController *)self _addNewTopView];
          [_addNewBottomView calendarDate];
        }
        v39 = ;

        if (_addNewBottomView)
        {
          [v31 addObject:_addNewBottomView];
        }

        v40 = [objc_opt_class() _view:_addNewBottomView containsCalendarDate:v14];
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
      animatedCopy = v69;
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
      blockCopy = v70;
      v10 = &_s19RemindersAppIntents0A40InCalendarReminderEditingModuleInterfaceP036requiresUserConfirmationForCancelingG0SbvgTj_ptr;
LABEL_54:

      if (!v17)
      {
        if (blockCopy)
        {
          blockCopy[2](blockCopy, 0);
        }

        v17 = 0;
        goto LABEL_74;
      }

LABEL_55:
      [v17 frame];
      v51 = v50;
      [(InfiniteScrollViewController *)self showDateVerticalOffsetForDate:v14];
      scrollView = [(InfiniteScrollViewController *)self scrollView];
      [scrollView safeAreaInsets];

      CalRoundToScreenScale();
      v54 = v53;
      scrollView2 = [(InfiniteScrollViewController *)self scrollView];
      [scrollView2 contentOffset];
      v57 = v54 - v56;

      v58 = -v57;
      if (v57 >= 0.0)
      {
        v58 = v57;
      }

      if (animatedCopy && v58 < 1.0)
      {
        v59 = v10[242];
        v60 = CUIKTodayDate();
        calendar = [(CUIKCalendarModel *)self->super._model calendar];
        timeZone2 = [calendar timeZone];
        v63 = [v59 calendarDateWithDate:v60 timeZone:timeZone2];

        v64 = [(InfiniteScrollViewController *)self subviewForDate:v63];
        if (objc_opt_respondsToSelector())
        {
          [v64 pulseTodayCircle];
        }

        if (blockCopy)
        {
          blockCopy[2](blockCopy, 1);
        }
      }

      else
      {
        if (!animatedCopy)
        {
          scrollView3 = [(InfiniteScrollViewController *)self scrollView];
          [scrollView3 setContentOffset:0 animated:{v51, v54}];

          [(InfiniteScrollViewController *)self adjustLoadedViewRange];
          dateCopy = v73;
          if (blockCopy)
          {
            blockCopy[2](blockCopy, 1);
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
        v76 = blockCopy;
        v75 = v22;
        [UIView _animateUsingDefaultTimingWithOptions:0 animations:v77 completion:v74];
      }

LABEL_74:
      dateCopy = v73;
LABEL_75:
      objc_storeStrong(&self->_lastKnownShownDate, v14);

      goto LABEL_76;
    }
  }

  objc_storeStrong(&self->_startingDate, v14);
  if (blockCopy)
  {
    blockCopy[2](blockCopy, 0);
  }

LABEL_76:
}

- (id)subviewForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  view = [(InfiniteScrollViewController *)self view];
  [scrollView convertPoint:view fromView:{x, y}];
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

- (id)subviewForDate:(id)date
{
  dateCopy = date;
  if (+[NSThread isMainThread])
  {
    view = [(InfiniteScrollViewController *)self view];
    [view layoutIfNeeded];
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
        if ([objc_opt_class() _view:v11 containsCalendarDate:{dateCopy, v14}])
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
  view = [(InfiniteScrollViewController *)self view];
  [view bounds];
  v5 = [(InfiniteScrollViewController *)self subviewForPoint:0.0, v4 * 0.5];

  return v5;
}

- (id)firstViewOnScreen
{
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView adjustedContentInset];
  v5 = v4;

  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView2 frame];
  v7 = [(InfiniteScrollViewController *)self subviewForPoint:CGRectGetMidX(v10), v5];

  return v7;
}

- (id)_lastViewOnScreen
{
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView frame];
  v5 = v4;

  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView2 adjustedContentInset];
  v8 = v5 - v7;

  return [(InfiniteScrollViewController *)self subviewForPoint:0.0, v8];
}

- (id)dateOfCenterViewOnScreen
{
  centerViewOnScreen = [(InfiniteScrollViewController *)self centerViewOnScreen];
  calendarDate = [centerViewOnScreen calendarDate];
  if (calendarDate)
  {
    goto LABEL_2;
  }

  firstViewOnScreen = [(InfiniteScrollViewController *)self firstViewOnScreen];
  calendarDate2 = [firstViewOnScreen calendarDate];

  if (!calendarDate2)
  {
    calendarDate = self->_startingDate;
LABEL_2:
    calendarDate2 = calendarDate;
  }

  return calendarDate2;
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

- (id)dateOfViewInBufferIndexRelativeToCenter:(int64_t)center
{
  v5 = [(NSMutableArray *)self->_views count];
  if (v5 && ([(NSMutableArray *)self->_views objectAtIndex:center + (v5 >> 1)], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    calendarDate = [v6 calendarDate];
  }

  else
  {
    calendarDate = 0;
  }

  return calendarDate;
}

- (void)enumerateScrollViewSubviews:(id)subviews
{
  subviewsCopy = subviews;
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
      subviewsCopy[2](subviewsCopy, v10, &v11);
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
    firstObject = [(NSMutableArray *)self->_reusableViews firstObject];
    [(NSMutableArray *)self->_reusableViews removeObjectAtIndex:0];
    if (objc_opt_respondsToSelector())
    {
      [firstObject prepareForReuse];
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)showSelectedDateIfNeeded
{
  model = [(MainViewController *)self model];
  selectedDate = [model selectedDate];
  v5 = [selectedDate isEqual:self->_lastKnownShownDate];

  if ((v5 & 1) == 0)
  {
    model2 = [(MainViewController *)self model];
    selectedDate2 = [model2 selectedDate];
    date = [selectedDate2 date];
    [(InfiniteScrollViewController *)self showDate:date animated:0];
  }
}

- (CGPoint)nearestMajorBoundaryForPoint:(CGPoint)point
{
  [(InfiniteScrollViewController *)self nearestMajorBoundaryForPoint:0 date:point.x, point.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)nearestMajorBoundaryForPoint:(CGPoint)point date:(id *)date
{
  y = point.y;
  x = point.x;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView safeAreaInsets];
  v9 = v8;

  v10 = 0.0;
  v11 = [(InfiniteScrollViewController *)self subviewForPoint:0.0, v9];
  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  view = [(InfiniteScrollViewController *)self view];
  [scrollView2 convertPoint:view fromView:{0.0, v9}];
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

  dateCopy = date;
  calendarDate = [v11 calendarDate];
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
    v28 = [(InfiniteScrollViewController *)self pastMajorBoundaryCalendarDateForCalendarDate:calendarDate];

    v29 = [(InfiniteScrollViewController *)self futureMajorBoundaryCalendarDateForCalendarDate:calendarDate];

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
      v36 = [(InfiniteScrollViewController *)self calendarDateForSubviewAboveSubviewWithCalendarDate:calendarDate];
      v16 = 1;
      goto LABEL_32;
    }

    v52 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v59 = calendarDate;
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
      v59 = calendarDate;
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
    v41 = calendarDate;
LABEL_64:
    v46 = v57;
    goto LABEL_65;
  }

  v27 = 0;
  while (1)
  {
    v36 = [(InfiniteScrollViewController *)self calendarDateForSubviewBelowSubviewWithCalendarDate:calendarDate];
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
    calendarDate = v41;
    if ((v27 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    if (v25)
    {
      v25 = 1;
    }

    else if ((v30 = [v24 month], v30 == objc_msgSend(calendarDate, "month")) && (v31 = objc_msgSend(v24, "day"), v31 == objc_msgSend(calendarDate, "day")) || (v32 = objc_msgSend(v24, "compare:", calendarDate)) == 0)
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
        v61 = calendarDate;
        v49 = "Major boundary calculation failsafe triggered while trying to find the subview matching a past major boundary calendar date.  pastMajorBoundaryCalendarDate: [%@] subviewCalendarDate: [%@]";
LABEL_53:
        v50 = v48;
        v51 = 22;
        goto LABEL_61;
      }

      v25 = 0;
    }

    month = [v23 month];
    if (month == [calendarDate month])
    {
      v34 = [v23 day];
      if (v34 == [calendarDate day])
      {
        break;
      }
    }

    v35 = [v23 compare:calendarDate];
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
      v61 = calendarDate;
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
  if (!dateCopy)
  {
    goto LABEL_63;
  }

  v46 = v57;
  if (v43)
  {
    v47 = v43;
    *dateCopy = v43;
  }

  v41 = calendarDate;
LABEL_65:

  v53 = x;
  v54 = y;
  result.y = v54;
  result.x = v53;
  return result;
}

- (double)unobstructedScrollViewHeight
{
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView safeAreaInsets];
  v5 = v4;
  v7 = v6;

  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView2 bounds];
  v9 = CGRectGetHeight(v11) - v5 - v7;

  return v9;
}

- (id)pastMajorBoundaryCalendarDateForCalendarDate:(id)date
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (id)futureMajorBoundaryCalendarDateForCalendarDate:(id)date
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (id)createInitialViewForDate:(id)date
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (id)newTopViewAboveViewWithCalendarDate:(id)date
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (id)newBottomViewBelowViewWithCalendarDate:(id)date
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (id)calendarDateForSubviewAboveSubviewWithCalendarDate:(id)date
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (id)calendarDateForSubviewBelowSubviewWithCalendarDate:(id)date
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (double)heightForSubviewWithCalendarDate:(id)date
{
  sub_100026F48();
  sub_100026F2C();
  return 0.0;
}

- (double)topInsetForSubviewWithCalendarDate:(id)date
{
  sub_100026F48();
  sub_100026F2C();
  return 0.0;
}

@end