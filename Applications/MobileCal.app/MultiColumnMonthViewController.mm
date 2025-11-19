@interface MultiColumnMonthViewController
- (BOOL)_allowedToDisplayEventDetailsColumn;
- (BOOL)_listViewShowsSingleDay;
- (BOOL)_monthWeekViewsUseVerticalCompression;
- (BOOL)_shouldAnimateDots;
- (BOOL)_viewingEventDetailsColumn;
- (CGRect)frameForTodayHighlight;
- (CGRect)frameForWeekContainingDate:(id)a3;
- (CGRect)frameOfListView;
- (MultiColumnMonthViewController)initWithCalendarDate:(id)a3 model:(id)a4 window:(id)a5;
- (double)_listviewColumnCollapsedWidth;
- (double)_scrollViewVerticalVelocity;
- (double)_showDateVerticalOffsetWithVerticalCompression:(BOOL)a3;
- (double)heightForSubviewWithCalendarDate:(id)a3;
- (double)rightSplitViewSideInset;
- (double)showDateVerticalOffset;
- (id)_dayInMonth:(id)a3 fromGesture:(id)a4;
- (id)_loadEventsForStartDate:(id)a3 endDate:(id)a4;
- (id)_viewFromGesture:(id)a3;
- (id)createInitialViewForDate:(id)a3;
- (id)newBottomViewBelowViewWithCalendarDate:(id)a3;
- (id)newTopViewAboveViewWithCalendarDate:(id)a3;
- (id)nextLevelWeekViewControllerWithDate:(id)a3;
- (id)preferredPreSizeClassTransitionSelectedDate;
- (id)pushedWeekViewControllerWithDate:(id)a3 animated:(BOOL)a4;
- (int64_t)eventCountDisplayedForDate:(id)a3;
- (unint64_t)edgesForExtendedLayout;
- (void)_autoSelectEvent;
- (void)_cachedOccurrencesChanged:(id)a3;
- (void)_createEventDetailsColumn;
- (void)_createMonthHighlightForMonthView:(id)a3 day:(id)a4;
- (void)_invalidateUpdateTimer;
- (void)_loadEventsForAllSubviews;
- (void)_loadEventsForViewsInRangeStartingAt:(id)a3 endingAt:(id)a4;
- (void)_occurrencesChanged:(id)a3;
- (void)_removeMonthHighlight;
- (void)_resetPaletteState;
- (void)_scrollListToNewSelectedDateAnimated:(BOOL)a3;
- (void)_scrubGestureCallback:(id)a3;
- (void)_setPaletteDisplaced;
- (void)_setSelectedDay:(id)a3;
- (void)_setSelectedDay:(id)a3 onMonthWeekView:(id)a4 animated:(BOOL)a5;
- (void)_setupListViewController;
- (void)_showDetailsForEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)_slideToAnimatePalleteShowingBackButton:(BOOL)a3 animated:(BOOL)a4;
- (void)_slideToHideEventDetailsAnimated:(BOOL)a3;
- (void)_slideToShowEventDetails:(id)a3 animated:(BOOL)a4;
- (void)_startUpdateTimer;
- (void)_tapGestureCallback:(id)a3;
- (void)_updateEventDetailsColumnViewFrame;
- (void)_updateInfiniteScrollViewFrame;
- (void)_updateListViewFrame;
- (void)_updateListViewModeForCurrentTraits;
- (void)compactMonthListViewController:(id)a3 wantsToCommitViewControllerFromPreview:(id)a4;
- (void)dealloc;
- (void)didEndScrolling;
- (void)didScroll;
- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)eventViewController:(id)a3 requestsDismissalOfEditViewController:(id)a4;
- (void)eventViewControllerNextButtonWasTapped:(id)a3;
- (void)eventViewControllerPreviousButtonWasTapped:(id)a3;
- (void)infiniteScrollViewSafeAreasDidChange;
- (void)listViewController:(id)a3 didScrollToDate:(id)a4;
- (void)loadView;
- (void)monthView:(id)a3 gestureBegan:(id)a4;
- (void)monthView:(id)a3 gestureCancelled:(id)a4;
- (void)monthView:(id)a3 gestureChanged:(id)a4;
- (void)monthView:(id)a3 gestureEnded:(id)a4;
- (void)navigateToEventDetails:(id)a3 fromController:(id)a4;
- (void)setupUIForTraitCollection:(id)a3;
- (void)showDate:(id)a3 animated:(BOOL)a4;
- (void)showDate:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)updateNavigationBarDisplayedDateString;
- (void)updatePalette:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willEndDraggingWithVelocity:(CGPoint)a3 targetContentOffset:(CGPoint *)a4;
@end

@implementation MultiColumnMonthViewController

- (MultiColumnMonthViewController)initWithCalendarDate:(id)a3 model:(id)a4 window:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = MultiColumnMonthViewController;
  v11 = [(MonthViewController *)&v18 initWithCalendarDate:v8 model:v9 window:v10];
  if (v11)
  {
    objc_initWeak(&location, v11);
    v19 = objc_opt_class();
    v12 = [NSArray arrayWithObjects:&v19 count:1];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100126770;
    v15[3] = &unk_10020E9E0;
    objc_copyWeak(&v16, &location);
    v13 = [(MultiColumnMonthViewController *)v11 registerForTraitChanges:v12 withHandler:v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CUIKCalendarModelDisplayedOccurrencesChangedNotification object:self->super.super.super.super._model];
  [v3 removeObserver:self name:CUIKCalendarModelCachedOccurrencesChangedNotification object:self->super.super.super.super._model];

  v4.receiver = self;
  v4.super_class = MultiColumnMonthViewController;
  [(MonthViewController *)&v4 dealloc];
}

- (void)loadView
{
  v39.receiver = self;
  v39.super_class = MultiColumnMonthViewController;
  [(MonthViewController *)&v39 loadView];
  [(MultiColumnMonthViewController *)self _setupListViewController];
  if (CalCanvasPocketEnabled())
  {
    v3 = objc_opt_new();
    v4 = *(&self->_dividerLineBetweenListAndEventDetails + 1);
    *(&self->_dividerLineBetweenListAndEventDetails + 1) = v3;

    v5 = +[UIColor clearColor];
    [*(&self->_dividerLineBetweenListAndEventDetails + 1) setBackgroundColor:v5];

    [*(&self->_dividerLineBetweenListAndEventDetails + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(MultiColumnMonthViewController *)self view];
    [v6 addSubview:*(&self->_dividerLineBetweenListAndEventDetails + 1)];

    v7 = *(&self->_dividerLineBetweenListAndEventDetails + 1);
    v8 = [_UIScrollPocketInteraction alloc];
    v9 = [(InfiniteScrollViewController *)self scrollView];
    v10 = [v8 initWithScrollView:v9 edge:1 style:0];
    [v7 addInteraction:v10];

    v11 = [(InfiniteScrollViewController *)self scrollView];
    [v11 _setPocketStyle:1 forEdge:1];

    v37 = [*(&self->_dividerLineBetweenListAndEventDetails + 1) topAnchor];
    v38 = [(MultiColumnMonthViewController *)self view];
    v36 = [v38 topAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v40[0] = v35;
    v33 = [*(&self->_dividerLineBetweenListAndEventDetails + 1) bottomAnchor];
    v34 = [(MultiColumnMonthViewController *)self view];
    v32 = [v34 safeAreaLayoutGuide];
    v31 = [v32 topAnchor];
    v30 = [v33 constraintEqualToAnchor:v31];
    v40[1] = v30;
    v12 = [*(&self->_dividerLineBetweenListAndEventDetails + 1) leadingAnchor];
    v13 = [(MultiColumnMonthViewController *)self view];
    v14 = [v13 leadingAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v40[2] = v15;
    v16 = [*(&self->_dividerLineBetweenListAndEventDetails + 1) trailingAnchor];
    v17 = [(MultiColumnMonthViewController *)self view];
    v18 = [v17 trailingAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    v40[3] = v19;
    v20 = [NSArray arrayWithObjects:v40 count:4];
    [NSLayoutConstraint activateConstraints:v20];
  }

  v21 = objc_alloc_init(UIView);
  v22 = *(&self->_weekCalculationCalendar + 1);
  *(&self->_weekCalculationCalendar + 1) = v21;

  v23 = [UIColor colorWithWhite:0.8 alpha:1.0];
  [*(&self->_weekCalculationCalendar + 1) setBackgroundColor:v23];

  v24 = [(MultiColumnMonthViewController *)self view];
  [v24 addSubview:*(&self->_weekCalculationCalendar + 1)];

  v25 = objc_alloc_init(UIView);
  v26 = *(&self->_dividerLineBetweenListAndMonth + 1);
  *(&self->_dividerLineBetweenListAndMonth + 1) = v25;

  v27 = [UIColor colorWithWhite:0.8 alpha:1.0];
  [*(&self->_dividerLineBetweenListAndMonth + 1) setBackgroundColor:v27];

  v28 = [(MultiColumnMonthViewController *)self view];
  [v28 addSubview:*(&self->_dividerLineBetweenListAndMonth + 1)];

  [(MonthViewController *)self setShouldShowMonthTitleHUDWhenScrolling:0];
  v29 = +[NSNotificationCenter defaultCenter];
  [v29 addObserver:self selector:"_cachedOccurrencesChanged:" name:CUIKCalendarModelCachedOccurrencesChangedNotification object:self->super.super.super.super._model];
  [v29 addObserver:self selector:"_occurrencesChanged:" name:CUIKCalendarModelDisplayedOccurrencesChangedNotification object:self->super.super.super.super._model];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = MultiColumnMonthViewController;
  [(InfiniteScrollViewController *)&v7 viewDidLoad];
  v3 = [(InfiniteScrollViewController *)self scrollView];
  [v3 setDecelerationRate:UIScrollViewDecelerationRateFast];

  v4 = [(MultiColumnMonthViewController *)self traitCollection];
  [UITraitCollection _setCurrentTraitCollection:v4];

  v5 = [objc_opt_class() dividedModeBackgroundColor];
  v6 = [(InfiniteScrollViewController *)self scrollView];
  [v6 setBackgroundColor:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v24.receiver = self;
  v24.super_class = MultiColumnMonthViewController;
  [(MonthViewController *)&v24 viewWillAppear:?];
  if ((BYTE2(self->_tempMaskForPocket) & 1) == 0)
  {
    v5 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v6 = [(MonthViewController *)self adjustSelectedDateForNewMonth:v5];

    [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v6];
    BYTE2(self->_tempMaskForPocket) = 1;
  }

  BYTE1(self->_tempMaskForPocket) = 1;
  v7 = *&self->_hasSetInitialSelectedDate;
  *&self->_hasSetInitialSelectedDate = 0;

  v8 = objc_alloc_init(UITapGestureRecognizer);
  [(MultiColumnMonthViewController *)self setDayCellsTapGestureRecognizer:v8];

  v9 = [(MultiColumnMonthViewController *)self dayCellsTapGestureRecognizer];
  [v9 addTarget:self action:"_tapGestureCallback:"];

  v10 = [(InfiniteScrollViewController *)self scrollView];
  v11 = [(MultiColumnMonthViewController *)self dayCellsTapGestureRecognizer];
  [v10 addGestureRecognizer:v11];

  v12 = objc_alloc_init(UILongPressGestureRecognizer);
  [(MultiColumnMonthViewController *)self setDayCellsScrubbingGestureRecognizer:v12];

  [objc_opt_class() scrubbingMinimumPressDuration];
  v14 = v13;
  v15 = [(MultiColumnMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [v15 setMinimumPressDuration:v14];

  v16 = [(MultiColumnMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [v16 addTarget:self action:"_scrubGestureCallback:"];

  v17 = [(InfiniteScrollViewController *)self scrollView];
  v18 = [(MultiColumnMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [v17 addGestureRecognizer:v18];

  v19 = [(MultiColumnMonthViewController *)self view];
  LODWORD(v18) = EKUICurrentHeightSizeClassIsRegular();

  if (v18)
  {
    if ([(MultiColumnMonthViewController *)self _shouldDisplayThreeColumns]&& (BYTE3(self->_tempMaskForPocket) & 1) == 0)
    {
      v20 = +[CUIKPreferences sharedPreferences];
      [v20 setLargeListViewDisclosingEventDetails:1];
    }

    v21 = +[CUIKPreferences sharedPreferences];
    if ([v21 largeListViewDisclosingEventDetails])
    {
      v22 = [(MultiColumnMonthViewController *)self _viewingEventDetailsColumn];

      if ((v22 & 1) == 0)
      {
        [(MultiColumnMonthViewController *)self _autoSelectEvent];
        return;
      }
    }

    else
    {
    }

    v23 = +[CUIKPreferences sharedPreferences];
    [v23 setLargeListViewDisclosingEventDetails:0];

    if ([(MultiColumnMonthViewController *)self _viewingEventDetailsColumn])
    {
      [(MultiColumnMonthViewController *)self _slideToHideEventDetailsAnimated:v3];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MultiColumnMonthViewController;
  [(CompactMonthViewController *)&v7 viewDidAppear:a3];
  v4 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDay];
  v5 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDay];
  v6 = [(InfiniteScrollViewController *)self subviewForDate:v5];
  [(MultiColumnMonthViewController *)self _setSelectedDay:v4 onMonthWeekView:v6 animated:1];

  BYTE5(self->_tempMaskForPocket) = 1;
  self->_shouldSetSelectedDate = 0;
  if ((BYTE6(self->_tempMaskForPocket) & 1) != 0 || HIBYTE(self->_tempMaskForPocket) == 1)
  {
    BYTE6(self->_tempMaskForPocket) = 0;
    HIBYTE(self->_tempMaskForPocket) = 0;
    [(MultiColumnMonthViewController *)self _loadEventsForAllSubviews];
  }

  [(MultiColumnMonthViewController *)self _refreshListView];
  [(MultiColumnMonthViewController *)self _startUpdateTimer];
  [(MultiColumnMonthViewController *)self updatePalette:*(&self->_cancelEventDetailViewModeButton + 1)];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(MultiColumnMonthViewController *)self _resetPaletteState];
  [(MultiColumnMonthViewController *)self _invalidateUpdateTimer];
  [*&self->_editorPresentedProgramatically removeFromSuperview];
  v5 = *&self->_editorPresentedProgramatically;
  *&self->_editorPresentedProgramatically = 0;

  v6 = [(InfiniteScrollViewController *)self scrollView];
  v7 = [(MultiColumnMonthViewController *)self dayCellsTapGestureRecognizer];
  [v6 removeGestureRecognizer:v7];

  v8 = [(InfiniteScrollViewController *)self scrollView];
  v9 = [(MultiColumnMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [v8 removeGestureRecognizer:v9];

  v10.receiver = self;
  v10.super_class = MultiColumnMonthViewController;
  [(MonthViewController *)&v10 viewWillDisappear:v3];
}

- (void)setupUIForTraitCollection:(id)a3
{
  v8.receiver = self;
  v8.super_class = MultiColumnMonthViewController;
  v4 = a3;
  [(MainViewController *)&v8 setupUIForTraitCollection:v4];
  v5 = [v4 verticalSizeClass];

  if (v5 == 1)
  {
    [objc_opt_class() dividedModeBackgroundColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v6 = ;
  v7 = [(InfiniteScrollViewController *)self scrollView];
  [v7 setBackgroundColor:v6];
}

- (void)viewWillLayoutSubviews
{
  v3 = [(MultiColumnMonthViewController *)self view];
  [v3 bounds];
  IsEmpty = CGRectIsEmpty(v6);

  if (!IsEmpty)
  {
    [(MultiColumnMonthViewController *)self _updateListViewFrame];
    [(MultiColumnMonthViewController *)self _updateInfiniteScrollViewFrame];
    [(MultiColumnMonthViewController *)self _updateEventDetailsColumnViewFrame];
    v5.receiver = self;
    v5.super_class = MultiColumnMonthViewController;
    [(InfiniteScrollViewController *)&v5 viewWillLayoutSubviews];
  }
}

- (unint64_t)edgesForExtendedLayout
{
  if (CalCanvasPocketEnabled())
  {
    return 15;
  }

  else
  {
    return 0;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  if ([(MultiColumnMonthViewController *)self isViewLoaded])
  {
    v8 = [(MultiColumnMonthViewController *)self view];
    v9 = [v8 window];

    if (v9)
    {
      [(MainViewController *)self transitionToSizeWillStart];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10012760C;
      v13[3] = &unk_10020F240;
      v13[4] = self;
      [v7 animateAlongsideTransition:0 completion:v13];
      BYTE3(self->_tempMaskForPocket) = 1;
      if ([(MultiColumnMonthViewController *)self _threeColumnsDisplayIsAllowed]&& (EKUIWidthForWindowSizeParadigm(), width > v10))
      {
        if ([(MultiColumnMonthViewController *)self _viewingEventDetailsColumn])
        {
          [(MultiColumnMonthViewController *)self _slideToAnimatePalleteShowingBackButton:0 animated:1];
        }

        v11 = +[CUIKPreferences sharedPreferences];
        [v11 setLargeListViewDisclosingEventDetails:1];
      }

      else
      {
        EKUIHeightForWindowSizeParadigm();
        if (height > v12)
        {
          [(MultiColumnMonthViewController *)self _slideToAnimatePalleteShowingBackButton:[(MultiColumnMonthViewController *)self _viewingEventDetailsColumn] animated:1];
        }
      }

      [(MultiColumnMonthViewController *)self viewWillAppear:1];
      BYTE3(self->_tempMaskForPocket) = 0;
    }
  }
}

- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  if (v10)
  {
    if (a5)
    {
      [(MultiColumnMonthViewController *)self _showDetailsForEvent:v10 animated:v8 showMode:a5 context:v11];
    }
  }

  else
  {
    v12 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No event given.  Will not show event through Month View.", v13, 2u);
    }
  }
}

- (void)updatePalette:(id)a3
{
  objc_storeStrong((&self->_cancelEventDetailViewModeButton + 1), a3);
  v5 = a3;
  [v5 setWeekdayHeaderFillsHalfWidth:1];
  [v5 setNeedsLayout];
  v10.receiver = self;
  v10.super_class = MultiColumnMonthViewController;
  [(CompactMonthViewController *)&v10 updatePalette:v5];
  [v5 setTodayButtonVisible:1];
  [v5 setDateStringVisible:1];
  [v5 setFocusBannerPlacement:2];
  [v5 setOpaqueBackground:0];
  v6 = +[UIColor clearColor];
  [v5 setBackgroundColor:v6];

  [v5 sizeToFit];
  [v5 frame];
  v8 = v7;
  v9 = [v5 containingPalette];

  [v9 setPreferredHeight:v8];
}

- (void)updateNavigationBarDisplayedDateString
{
  v3 = [(MainViewController *)self model];
  v4 = [v3 selectedDate];

  if (v4)
  {
    if (!*&self->_hasSetInitialSelectedDate || (v5 = [v4 month], v5 != objc_msgSend(*&self->_hasSetInitialSelectedDate, "month")) || (v6 = objc_msgSend(v4, "year"), v6 != objc_msgSend(*&self->_hasSetInitialSelectedDate, "year")))
    {
      v7 = [(MultiColumnMonthViewController *)self navigationController];
      v8 = [v7 topMainViewControllerContainer];
      v9 = [v8 currentChildViewController];

      if (v9 == self)
      {
        v10 = [(MultiColumnMonthViewController *)self navigationController];
        [v10 setNavBarStringFromDate:v4 includeMonth:1 includeYear:1];
      }
    }
  }

  v11 = *&self->_hasSetInitialSelectedDate;
  *&self->_hasSetInitialSelectedDate = v4;
}

- (id)preferredPreSizeClassTransitionSelectedDate
{
  v3 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];

  if (v3)
  {
    v4 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MultiColumnMonthViewController;
    v4 = [(MonthViewController *)&v6 preferredPreSizeClassTransitionSelectedDate];
  }

  return v4;
}

- (BOOL)_monthWeekViewsUseVerticalCompression
{
  v2 = [(MultiColumnMonthViewController *)self ekui_futureTraitCollection];
  v3 = [v2 verticalSizeClass] == 1;

  return v3;
}

- (id)createInitialViewForDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ([v4 day] != 1)
  {
    v5 = [v4 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];
  }

  v6 = [(InfiniteScrollViewController *)self dequeueReusableView];
  if (v6)
  {
    v7 = v6;
    [(CompactMonthWeekView *)v6 setCompressedVerticalMode:[(MultiColumnMonthViewController *)self _monthWeekViewsUseVerticalCompression]];
    [(CompactMonthWeekView *)v7 setCalendarDate:v5];
  }

  else
  {
    v8 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v7 = [[CompactMonthWeekView alloc] initWithCalendarDate:v5 calendar:v8 compressed:[(MultiColumnMonthViewController *)self _monthWeekViewsUseVerticalCompression]];
  }

  [(CompactMonthWeekView *)v7 setUseLayoutMargins:1];
  if (!*(&self->_pressedMonthView + 1))
  {
    v9 = [(CompactMonthWeekView *)v7 calendarDate];
    [v9 absoluteTime];
    v11 = v10;
    v12 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [v12 absoluteTime];
    if (v11 <= v13)
    {
      v14 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [v14 absoluteTime];
      v16 = v15;
      v17 = [(CompactMonthWeekView *)v7 endCalendarDate];
      [v17 absoluteTime];
      v19 = v18;

      if (v16 > v19)
      {
        goto LABEL_12;
      }

      v9 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(MultiColumnMonthViewController *)self _setSelectedDay:v9 onMonthWeekView:v7 animated:0];
    }

    else
    {
    }
  }

LABEL_12:
  v20 = [(CompactMonthWeekView *)v7 calendarDate];
  v21 = [(CompactMonthWeekView *)v7 endCalendarDate];
  v22 = [(MultiColumnMonthViewController *)self _loadEventsForStartDate:v20 endDate:v21];
  [(CompactMonthWeekView *)v7 setEventData:v22];

  v23 = +[CUIKPreferences sharedPreferences];
  -[CompactMonthWeekView setShowWeekNumber:](v7, "setShowWeekNumber:", [v23 showWeekNumbers]);

  return v7;
}

- (id)newTopViewAboveViewWithCalendarDate:(id)a3
{
  v4 = [(MonthViewController *)self calendarDateForSubviewAboveSubviewWithCalendarDate:a3];
  v5 = [(InfiniteScrollViewController *)self dequeueReusableView];
  if (v5)
  {
    v6 = v5;
    [(CompactMonthWeekView *)v5 setCompressedVerticalMode:[(MultiColumnMonthViewController *)self _monthWeekViewsUseVerticalCompression]];
    [(CompactMonthWeekView *)v6 setCalendarDate:v4];
  }

  else
  {
    v7 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v6 = [[CompactMonthWeekView alloc] initWithCalendarDate:v4 calendar:v7 compressed:[(MultiColumnMonthViewController *)self _monthWeekViewsUseVerticalCompression]];
  }

  [(CompactMonthWeekView *)v6 setUseLayoutMargins:1];
  v8 = [(CompactMonthWeekView *)v6 calendarDate];
  v9 = [(CompactMonthWeekView *)v6 endCalendarDate];
  v10 = [(MultiColumnMonthViewController *)self _loadEventsForStartDate:v8 endDate:v9];
  [(CompactMonthWeekView *)v6 setEventData:v10 animated:[(MultiColumnMonthViewController *)self _shouldAnimateDots]];

  if (!*(&self->_pressedMonthView + 1))
  {
    v11 = [(CompactMonthWeekView *)v6 calendarDate];
    [v11 absoluteTime];
    v13 = v12;
    v14 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [v14 absoluteTime];
    if (v13 > v15)
    {

LABEL_9:
      goto LABEL_10;
    }

    v16 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [v16 absoluteTime];
    v18 = v17;
    v19 = [(CompactMonthWeekView *)v6 endCalendarDate];
    [v19 absoluteTime];
    v21 = v20;

    if (v18 <= v21)
    {
      v11 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(MultiColumnMonthViewController *)self _setSelectedDay:v11 onMonthWeekView:v6 animated:0];
      goto LABEL_9;
    }
  }

LABEL_10:
  v22 = +[CUIKPreferences sharedPreferences];
  -[CompactMonthWeekView setShowWeekNumber:](v6, "setShowWeekNumber:", [v22 showWeekNumbers]);

  return v6;
}

- (id)newBottomViewBelowViewWithCalendarDate:(id)a3
{
  v4 = [(MonthViewController *)self calendarDateForSubviewBelowSubviewWithCalendarDate:a3];
  v5 = [(InfiniteScrollViewController *)self dequeueReusableView];
  if (v5)
  {
    v6 = v5;
    [(CompactMonthWeekView *)v5 setCompressedVerticalMode:[(MultiColumnMonthViewController *)self _monthWeekViewsUseVerticalCompression]];
    [(CompactMonthWeekView *)v6 setCalendarDate:v4];
  }

  else
  {
    v7 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v6 = [[CompactMonthWeekView alloc] initWithCalendarDate:v4 calendar:v7 compressed:[(MultiColumnMonthViewController *)self _monthWeekViewsUseVerticalCompression]];
  }

  [(CompactMonthWeekView *)v6 setUseLayoutMargins:1];
  v8 = [(CompactMonthWeekView *)v6 calendarDate];
  v9 = [(CompactMonthWeekView *)v6 endCalendarDate];
  v10 = [(MultiColumnMonthViewController *)self _loadEventsForStartDate:v8 endDate:v9];
  [(CompactMonthWeekView *)v6 setEventData:v10 animated:[(MultiColumnMonthViewController *)self _shouldAnimateDots]];

  if (!*(&self->_pressedMonthView + 1))
  {
    v11 = [(CompactMonthWeekView *)v6 calendarDate];
    [v11 absoluteTime];
    v13 = v12;
    v14 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [v14 absoluteTime];
    if (v13 < v15)
    {

LABEL_9:
      goto LABEL_10;
    }

    v16 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [v16 absoluteTime];
    v18 = v17;
    v19 = [(CompactMonthWeekView *)v6 endCalendarDate];
    [v19 absoluteTime];
    v21 = v20;

    if (v18 <= v21)
    {
      v11 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(MultiColumnMonthViewController *)self _setSelectedDay:v11 onMonthWeekView:v6 animated:0];
      goto LABEL_9;
    }
  }

LABEL_10:
  v22 = +[CUIKPreferences sharedPreferences];
  -[CompactMonthWeekView setShowWeekNumber:](v6, "setShowWeekNumber:", [v22 showWeekNumbers]);

  return v6;
}

- (void)didEndScrolling
{
  v8.receiver = self;
  v8.super_class = MultiColumnMonthViewController;
  [(MonthViewController *)&v8 didEndScrolling];
  if (HIBYTE(self->_tempMaskForPocket) == 1 && !self->_shouldSetSelectedDate)
  {
    HIBYTE(self->_tempMaskForPocket) = 0;
    self->_shouldSetSelectedDate = 1;
    v3 = dispatch_time(0, 100000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100128260;
    block[3] = &unk_10020EB00;
    block[4] = self;
    dispatch_after(v3, &_dispatch_main_q, block);
  }

  if (BYTE5(self->_tempMaskForPocket) == 1)
  {
    v4 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v5 = [(InfiniteScrollViewController *)self subviewForDate:v4];

    if (v5 != *(&self->_pressedMonthView + 1))
    {
      v6 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(MultiColumnMonthViewController *)self _setSelectedDay:v6 onMonthWeekView:v5 animated:1];
    }

    [(MultiColumnMonthViewController *)self updateNavigationBarDisplayedDateString];
  }
}

- (void)willEndDraggingWithVelocity:(CGPoint)a3 targetContentOffset:(CGPoint *)a4
{
  y = a3.y;
  v70.receiver = self;
  v70.super_class = MultiColumnMonthViewController;
  [(MonthViewController *)&v70 willEndDraggingWithVelocity:a3.x targetContentOffset:?];
  v7 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  v8 = -y;
  if (y >= 0.0)
  {
    v8 = y;
  }

  if (v8 <= 0.3)
  {
    v33 = [(InfiniteScrollViewController *)self scrollView];
    [v33 contentOffset];
    v35 = v34;
    v37 = v36;

    v38 = [(InfiniteScrollViewController *)self scrollView];
    [v38 frame];
    v40 = v39;

    v41 = [(InfiniteScrollViewController *)self scrollView];
    [v41 safeAreaInsets];
    v43 = v42;
    v44 = [(InfiniteScrollViewController *)self scrollView];
    [v44 safeAreaInsets];
    v46 = v40 - (v43 + v45);

    v68 = 0;
    [(InfiniteScrollViewController *)self nearestMajorBoundaryForPoint:&v68 date:v35, v37 + v46 * 0.5];
    v48 = v47;
    v50 = v49;
    v32 = v68;
    a4->x = v48;
    a4->y = v50;
    v9 = v7;
  }

  else
  {
    v9 = *(&self->_pressedMonthView + 1);
    if (!v9)
    {
      v9 = [(InfiniteScrollViewController *)self firstView];
    }

    v10 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v11 = v10;
    if (y > 0.0)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    v13 = [v10 calendarDateByAddingMonths:v12];
    v14 = [v13 calendarDateForMonth];

    v15 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v16 = [v9 calendarDate];
    v17 = [v16 date];
    v18 = [v14 date];
    v19 = [v15 components:0x2000 fromDate:v17 toDate:v18 options:0];

    [v9 frame];
    v21 = v20;
    [v9 frame];
    v23 = v22;
    v24 = y <= 0.0;
    v26 = v25 + [v19 weekOfYear] * v21;
    if (v24)
    {
      +[CompactMonthWeekView headerHeight];
      v26 = v26 - v27;
    }

    v69 = v14;
    [(InfiniteScrollViewController *)self nearestMajorBoundaryForPoint:&v69 date:v23, v26];
    v29 = v28;
    v31 = v30;
    v32 = v69;

    a4->x = v29;
    a4->y = v31;
  }

  v51 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  v52 = [v51 month];
  if (v52 == [v32 month])
  {
    v53 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v54 = [v53 year];
    v55 = [v32 year];

    if (v54 == v55)
    {
      v56 = v32;
      goto LABEL_25;
    }
  }

  else
  {
  }

  v57 = CUIKTodayDate();
  v58 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
  v59 = [v58 timeZone];
  v60 = [EKCalendarDate calendarDateWithDate:v57 timeZone:v59];

  v61 = [v60 month];
  if (v61 == [v32 month] && (v62 = objc_msgSend(v60, "year"), v62 == objc_msgSend(v32, "year")))
  {
    v63 = v60;
  }

  else
  {
    v63 = [v32 calendarDateForMonth];
  }

  v56 = v63;

  BYTE3(self->_navigationBarDisplayedDate) = 1;
  v64 = [(MainViewController *)self model];
  [v64 setSelectedDate:v56];

  BYTE3(self->_navigationBarDisplayedDate) = 0;
  if (BYTE5(self->_tempMaskForPocket) == 1)
  {
    v65 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v66 = [(InfiniteScrollViewController *)self subviewForDate:v65];

    v67 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [(MultiColumnMonthViewController *)self _setSelectedDay:v67 onMonthWeekView:v66 animated:1];

    [(MultiColumnMonthViewController *)self updateNavigationBarDisplayedDateString];
  }

LABEL_25:
  [(MultiColumnMonthViewController *)self _scrollListToNewSelectedDateAnimated:1];
}

- (void)didScroll
{
  v3.receiver = self;
  v3.super_class = MultiColumnMonthViewController;
  [(CompactMonthViewController *)&v3 didScroll];
  self->_shouldSetSelectedDate = 0;
}

- (void)showDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(MultiColumnMonthViewController *)self showDate:a3 animated:a4 completionBlock:0];

  [(MultiColumnMonthViewController *)self _scrollListToNewSelectedDateAnimated:v4];
}

- (void)showDate:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(MainViewController *)self model];
  v11 = [v10 calendar];
  v12 = [v11 timeZone];
  v13 = [EKCalendarDate calendarDateWithDate:v9 timeZone:v12];

  v14 = [v13 calendarDateForMonth];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100128920;
  v19[3] = &unk_10020F308;
  v19[4] = self;
  v20 = v8;
  v15 = v8;
  v16 = objc_retainBlock(v19);
  v17 = [v14 date];
  v18.receiver = self;
  v18.super_class = MultiColumnMonthViewController;
  [(InfiniteScrollViewController *)&v18 showDate:v17 animated:v5 completionBlock:v16];
}

- (void)infiniteScrollViewSafeAreasDidChange
{
  v3 = [(InfiniteScrollViewController *)self scrollView];
  v4 = [(InfiniteScrollViewController *)self scrollView];
  v5 = [v4 layer];
  [v3 layoutSublayersOfLayer:v5];

  v6 = [(MultiColumnMonthViewController *)self view];
  [v6 setNeedsLayout];
}

- (void)_tapGestureCallback:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100128BF8;
  v18 = sub_100128C08;
  v19 = 0;
  v5 = [v4 view];
  v6 = [v5 subviews];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100128C10;
  v11 = &unk_100210170;
  v7 = v4;
  v12 = v7;
  v13 = &v14;
  [v6 enumerateObjectsUsingBlock:&v8];

  [(MultiColumnMonthViewController *)self monthView:v15[5] gestureBegan:v7, v8, v9, v10, v11];
  [(MultiColumnMonthViewController *)self monthView:v15[5] gestureEnded:v7];

  _Block_object_dispose(&v14, 8);
}

- (void)_scrubGestureCallback:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100128BF8;
  v19 = sub_100128C08;
  v20 = 0;
  v5 = [v4 view];
  v6 = [v5 subviews];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100128E98;
  v12 = &unk_100210170;
  v7 = v4;
  v13 = v7;
  v14 = &v15;
  [v6 enumerateObjectsUsingBlock:&v9];

  v8 = [v7 state];
  if (v8 > 3)
  {
    if ((v8 - 4) < 2)
    {
      [(MultiColumnMonthViewController *)self monthView:v16[5] gestureCancelled:v7];
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        [(MultiColumnMonthViewController *)self monthView:v16[5] gestureBegan:v7];
        break;
      case 2:
        [(MultiColumnMonthViewController *)self monthView:v16[5] gestureChanged:v7];
        break;
      case 3:
        [(MultiColumnMonthViewController *)self monthView:v16[5] gestureEnded:v7];
        break;
    }
  }

  _Block_object_dispose(&v15, 8);
}

- (void)_scrollListToNewSelectedDateAnimated:(BOOL)a3
{
  v3 = a3;
  BYTE3(self->_navigationBarDisplayedDate) = 1;
  v5 = *(&self->_singleDayListViewController + 1);
  v6 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  v7 = [v6 date];
  [v5 scrollToDate:v7 animated:v3];

  v8 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100129058;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (id)_viewFromGesture:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100128BF8;
  v17 = sub_100128C08;
  v18 = 0;
  v5 = [(InfiniteScrollViewController *)self scrollView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001291C0;
  v12[3] = &unk_10020ECF8;
  v12[6] = v7;
  v12[7] = v9;
  v12[4] = self;
  v12[5] = &v13;
  [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v12];
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (void)monthView:(id)a3 gestureBegan:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(InfiniteScrollViewController *)self scrollView];
  v8 = [v7 isDecelerating];

  if ((v8 & 1) == 0)
  {
    v9 = [(MultiColumnMonthViewController *)self _dayInMonth:v16 fromGesture:v6];
    if (v9)
    {
      if (*(&self->_pressHighlight + 1) != v16 || [v9 compare:*(&self->super._applicationResuming + 1)])
      {
        [(MultiColumnMonthViewController *)self _createMonthHighlightForMonthView:v16 day:v9];
        [*(&self->_pressedDay + 1) setPressed:1];
      }

      v10 = [(InfiniteScrollViewController *)self scrollView];
      [v10 setScrollEnabled:0];

      [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v9];
      [(MultiColumnMonthViewController *)self _scrollListToNewSelectedDateAnimated:0];
      v11 = CUIKTodayDate();
      v12 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
      v13 = [v12 timeZone];
      v14 = [EKCalendarDate calendarDateWithDate:v11 timeZone:v13];
      v15 = [(InfiniteScrollViewController *)self subviewForDate:v14];

      if (v15)
      {
        [v15 haltTodayPulse];
      }
    }
  }
}

- (void)monthView:(id)a3 gestureChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(InfiniteScrollViewController *)self scrollView];
  v9 = [v8 isDecelerating];

  if (v9)
  {
    v13 = v6;
  }

  else
  {
    v13 = [(MultiColumnMonthViewController *)self _viewFromGesture:v7];

    v10 = [(MultiColumnMonthViewController *)self _dayInMonth:v13 fromGesture:v7];
    v11 = v13 == *(&self->_pressHighlight + 1) && [*(&self->super._applicationResuming + 1) compare:v10] == 0;
    if (v11 != [*(&self->_pressedDay + 1) isSelected])
    {
      [*(&self->_pressedDay + 1) setPressed:v11];
    }

    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 1;
    }

    if ((v12 & 1) == 0)
    {
      [(MultiColumnMonthViewController *)self _removeMonthHighlight];
      [(MultiColumnMonthViewController *)self _createMonthHighlightForMonthView:v13 day:v10];
      [*(&self->_pressedDay + 1) setPressed:1];
      [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v10];
      [(MultiColumnMonthViewController *)self _scrollListToNewSelectedDateAnimated:0];
    }
  }
}

- (void)monthView:(id)a3 gestureEnded:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(InfiniteScrollViewController *)self scrollView];
  v9 = [v8 isDecelerating];

  if ((v9 & 1) == 0)
  {
    v10 = [(MultiColumnMonthViewController *)self _viewFromGesture:v7];

    v11 = [(MultiColumnMonthViewController *)self _dayInMonth:v10 fromGesture:v7];
    v12 = v11;
    if (v10 != *(&self->_pressHighlight + 1) || v11 == 0)
    {
      v14 = [(InfiniteScrollViewController *)self scrollView];
      [v14 setScrollEnabled:1];
    }

    else
    {
      v15 = [v11 compare:*(&self->super._applicationResuming + 1)];
      v16 = [(InfiniteScrollViewController *)self scrollView];
      [v16 setScrollEnabled:1];

      if (!v15)
      {
        [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v12];
        [(MultiColumnMonthViewController *)self _removeMonthHighlight];
        [(MultiColumnMonthViewController *)self _setSelectedDay:v12 onMonthWeekView:v10 animated:0];
        [(MultiColumnMonthViewController *)self _scrollListToNewSelectedDateAnimated:1];
        goto LABEL_11;
      }
    }

    [*(&self->_pressedDay + 1) setPressed:0];
    v17 = dispatch_time(0, 300000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100129818;
    block[3] = &unk_10020EB00;
    block[4] = self;
    dispatch_after(v17, &_dispatch_main_q, block);
LABEL_11:

    goto LABEL_12;
  }

  v10 = v6;
LABEL_12:
}

- (void)monthView:(id)a3 gestureCancelled:(id)a4
{
  v5 = [(InfiniteScrollViewController *)self scrollView:a3];
  [v5 setScrollEnabled:1];

  [(MultiColumnMonthViewController *)self _removeMonthHighlight];
}

- (id)_dayInMonth:(id)a3 fromGesture:(id)a4
{
  v5 = a3;
  [a4 locationInView:v5];
  v6 = [v5 dayForPoint:?];

  return v6;
}

- (void)_createMonthHighlightForMonthView:(id)a3 day:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MultiColumnMonthViewController *)self _removeMonthHighlight];
  v8 = *(&self->super._applicationResuming + 1);
  *(&self->super._applicationResuming + 1) = v7;
  v11 = v7;

  v9 = *(&self->_pressHighlight + 1);
  *(&self->_pressHighlight + 1) = v6;
  v10 = v6;

  [(MultiColumnMonthViewController *)self _setSelectedDay:v11 onMonthWeekView:v10 animated:0];
}

- (void)_removeMonthHighlight
{
  [(MultiColumnMonthViewController *)self _setSelectedDay:0 onMonthWeekView:*(&self->_pressedMonthView + 1) animated:0];
  v3 = *(&self->_pressedDay + 1);
  v4 = *(&self->_pressedDay + 1);
  *(&self->_pressedDay + 1) = 0;

  v5 = *(&self->super._applicationResuming + 1);
  *(&self->super._applicationResuming + 1) = 0;

  v6 = *(&self->_pressHighlight + 1);
  *(&self->_pressHighlight + 1) = 0;

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100129AD8;
  v10[3] = &unk_10020EB00;
  v11 = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100129AE4;
  v8[3] = &unk_10020EB98;
  v9 = v11;
  v7 = v11;
  [UIView animateWithDuration:v10 animations:v8 completion:0.2];
}

- (void)_setSelectedDay:(id)a3
{
  v4 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  v6 = [(InfiniteScrollViewController *)self subviewForDate:v4];

  v5 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  [(MultiColumnMonthViewController *)self _setSelectedDay:v5 onMonthWeekView:v6 animated:0];
}

- (void)_setSelectedDay:(id)a3 onMonthWeekView:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  v9 = *(&self->_pressedMonthView + 1);
  if (v9 != v8)
  {
    [v9 setSelectedDay:0 animated:0];
    v10 = *(&self->_pressedMonthView + 1);
    *(&self->_pressedMonthView + 1) = 0;
  }

  if (v11 && v8)
  {
    [v8 setSelectedDay:v11 animated:v5];
    objc_storeStrong((&self->_pressedMonthView + 1), a4);
  }
}

- (double)_listviewColumnCollapsedWidth
{
  v2 = [(MultiColumnMonthViewController *)self view];
  [v2 bounds];
  CGRectGetWidth(v6);
  EKUIGoldenRatioColumnWidthMinor();
  v4 = v3;

  return v4;
}

- (void)_cachedOccurrencesChanged:(id)a3
{
  if (BYTE5(self->_tempMaskForPocket) == 1)
  {
    [(MultiColumnMonthViewController *)self _loadEventsForAllSubviews];
  }

  else
  {
    BYTE6(self->_tempMaskForPocket) = 1;
  }
}

- (void)_occurrencesChanged:(id)a3
{
  if (BYTE5(self->_tempMaskForPocket))
  {
    v4 = a3;
    v5 = [v4 userInfo];
    v8 = [v5 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeStartKey];

    v6 = [v4 userInfo];

    v7 = [v6 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeEndKey];

    [(MultiColumnMonthViewController *)self _loadEventsForViewsInRangeStartingAt:v8 endingAt:v7];
  }

  else
  {
    BYTE6(self->_tempMaskForPocket) = 1;
  }
}

- (void)_loadEventsForViewsInRangeStartingAt:(id)a3 endingAt:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((HIBYTE(self->_tempMaskForPocket) & 1) == 0)
  {
    [(MultiColumnMonthViewController *)self _scrollViewVerticalVelocity];
    if (v8 < 0.0)
    {
      v8 = -v8;
    }

    if (v8 >= 1.0)
    {
      HIBYTE(self->_tempMaskForPocket) = 1;
    }

    else
    {
      [v6 timeIntervalSinceReferenceDate];
      v10 = v9;
      [v7 timeIntervalSinceReferenceDate];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100129EA8;
      v12[3] = &unk_100210198;
      v12[5] = v11;
      v12[6] = v10;
      v12[4] = self;
      [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v12];
    }
  }
}

- (void)_loadEventsForAllSubviews
{
  if (BYTE5(self->_tempMaskForPocket))
  {
    [(MultiColumnMonthViewController *)self _scrollViewVerticalVelocity];
    if (v3 < 0.0)
    {
      v3 = -v3;
    }

    v4 = 343;
    if (v3 < 0.4)
    {
      HIBYTE(self->_tempMaskForPocket) = 0;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10012A0A8;
      v6[3] = &unk_10020ED60;
      v6[4] = self;
      [(InfiniteScrollViewController *)self enumerateScrollViewSubviews:v6];
      [(MultiColumnMonthViewController *)self _refreshListView];
      v5 = [(MainViewController *)self model];
      [v5 startNotificationMonitor];

      return;
    }
  }

  else
  {
    v4 = 342;
  }

  *(&self->super.super.super.super.super.super.super.isa + v4) = 1;
}

- (id)_loadEventsForStartDate:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((HIBYTE(self->_tempMaskForPocket) & 1) == 0)
  {
    [(MultiColumnMonthViewController *)self _scrollViewVerticalVelocity];
    if (v9 < 0.0)
    {
      v9 = -v9;
    }

    if (v9 >= 1.0)
    {
      v8 = 0;
      HIBYTE(self->_tempMaskForPocket) = 1;
      goto LABEL_43;
    }

    v10 = [v6 calendarDateForDay];

    v11 = [v7 calendarDateForEndOfDay];

    v93 = self;
    v95 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v12 = [v95 timeZone];
    [v10 absoluteTime];
    v14 = v13;
    [v11 absoluteTime];
    v16 = v15;
    v17 = [v10 date];
    v18 = [v11 date];
    v101 = 0;
    v102 = 0;
    CalEventOccurrenceCacheCopyBoundsForTimeZone();
    if (v12)
    {
      CFRelease(v12);
    }

    v20 = v101;
    v19 = v102;
    v21 = [v11 differenceInDays:v10];
    v22 = (v21 + 1);
    v23 = [NSMutableArray arrayWithCapacity:v21 + 1];
    if ((v21 & 0x8000000000000000) == 0)
    {
      do
      {
        v24 = [CompactMonthWeekDayData dayDataWithEventCount:0 dayType:0];
        [v23 addObject:v24];

        --v22;
      }

      while (v22);
    }

    v90 = v17;
    v91 = v11;
    v88 = v101;
    v89 = v102;
    if ([v17 compare:v102] == 1 && objc_msgSend(v18, "compare:", v101) == -1)
    {
      v53 = v93;
      if (([(CUIKCalendarModel *)v93->super.super.super.super._model cachedOccurrencesAreLoaded]& 1) == 0)
      {
        if ((BYTE4(v93->_tempMaskForPocket) & 1) == 0)
        {
          BYTE4(v93->_tempMaskForPocket) = 1;
          v62 = dispatch_get_global_queue(0, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10012A9C8;
          block[3] = &unk_10020EB00;
          block[4] = v93;
          dispatch_async(v62, block);
        }

        v8 = 0;
        goto LABEL_41;
      }

      v54 = [(CUIKCalendarModel *)v93->super.super.super.super._model sectionForCachedOccurrencesOnDate:v17];
      v55 = [(CUIKCalendarModel *)v93->super.super.super.super._model sectionForCachedOccurrencesOnDate:v18];
      v56 = [(CUIKCalendarModel *)v93->super.super.super.super._model dateForCachedOccurrencesInSection:v54];
      [v56 timeIntervalSinceReferenceDate];
      v58 = v57;

      v84 = v55;
      v59 = [(CUIKCalendarModel *)v93->super.super.super.super._model dateForCachedOccurrencesInSection:v55];
      [v59 timeIntervalSinceReferenceDate];
      v61 = v60;

      if (v58 >= v14)
      {
        if (v61 > v16)
        {
          v84 = v55 - 1;
        }
      }

      else
      {
        ++v54;
      }

      if (v54 <= v84)
      {
        v86 = v18;
        do
        {
          v63 = [(CUIKCalendarModel *)v53->super.super.super.super._model numberOfCachedOccurrencesInSection:v54];
          if (v63 >= 1)
          {
            v64 = v63;
            v92 = [(CUIKCalendarModel *)v53->super.super.super.super._model cachedSpecialDayDataForSection:v54];
            v87 = [(CUIKCalendarModel *)v53->super.super.super.super._model dateForCachedOccurrencesInSection:v54];
            v65 = [v95 components:30 fromDate:?];
            v66 = [v65 month];
            if (v66 == [v10 month])
            {
              v67 = [v65 day];
              v68 = v67 - [v10 day];
              if (v68 >= 0 && v68 < [v23 count])
              {
                v82 = v68;
                v83 = v65;
                if (v92)
                {
                  v69 = [v92 dayType];
                }

                else
                {
                  v69 = 0;
                }

                v70 = [CompactMonthWeekDayData dayDataWithEventCount:v64 dayType:v69];
                v71 = [v92 color];
                [v70 setDayTypeBadgeColor:v71];

                v72 = [v92 locale];
                v81 = v70;
                [v70 setDayTypeBadgeLocale:v72];

                v73 = [(CUIKCalendarModel *)v53->super.super.super.super._model cachedOccurrencesForSection:v54];
                v74 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v73 count]);
                v96 = 0u;
                v97 = 0u;
                v98 = 0u;
                v99 = 0u;
                v75 = v73;
                v76 = [v75 countByEnumeratingWithState:&v96 objects:v103 count:16];
                if (v76)
                {
                  v77 = v76;
                  v78 = *v97;
                  do
                  {
                    for (i = 0; i != v77; i = i + 1)
                    {
                      if (*v97 != v78)
                      {
                        objc_enumerationMutation(v75);
                      }

                      v80 = [EventSummaryData eventSummaryDataFromEKEvent:*(*(&v96 + 1) + 8 * i)];
                      [v74 addObject:v80];
                    }

                    v77 = [v75 countByEnumeratingWithState:&v96 objects:v103 count:16];
                  }

                  while (v77);
                }

                [v81 setEventSummaryData:v74];
                [v23 setObject:v81 atIndexedSubscript:v82];

                v18 = v86;
                v53 = v93;
                v65 = v83;
              }
            }
          }

          v40 = v54++ == v84;
        }

        while (!v40);
      }
    }

    else
    {
      v85 = v18;
      v25 = [(CUIKCalendarModel *)v93->super.super.super.super._model occurrencesForStartDate:v17 endDate:v18 preSorted:1 waitForLoad:0];
      v26 = [v25 occurrences];

      v27 = [v26 count];
      if (v27 >= 1)
      {
        v28 = v27;
        v29 = 0;
        v94 = v26;
        do
        {
          v30 = [v26 objectAtIndex:v29];
          v31 = [v30 startDate];
          [v31 timeIntervalSinceReferenceDate];
          v33 = v32;

          v34 = [v30 endDate];
          [v34 timeIntervalSinceReferenceDate];
          v36 = v35;

          v37 = [v30 endCalendarDate];
          v38 = [v37 allComponents];

          if (![v38 hour] && !objc_msgSend(v38, "minute"))
          {
            v39 = [v38 second];
            v40 = v33 != v36 && v39 == 0;
            if (v40)
            {
              v36 = v36 + -1.0;
            }
          }

          if (v33 > v16 || v36 < v14)
          {
            v47 = v38;
          }

          else
          {
            v41 = v28;
            if (v33 >= v14)
            {
              v42 = v33;
            }

            else
            {
              v42 = v14;
            }

            if (v36 <= v16)
            {
              v43 = v36;
            }

            else
            {
              v43 = v16;
            }

            v44 = [NSDate dateWithTimeIntervalSinceReferenceDate:v42];
            v45 = [v95 components:30 fromDate:v44];

            v46 = [NSDate dateWithTimeIntervalSinceReferenceDate:v43];
            v47 = [v95 components:30 fromDate:v46];

            v48 = [v45 day];
            if (v48 <= [v47 day])
            {
              do
              {
                v49 = v48 - [v10 day];
                if (v49 >= 0 && v49 < [v23 count])
                {
                  v50 = [v23 objectAtIndex:v49];
                  [v50 setEventCount:{objc_msgSend(v50, "eventCount") + 1}];
                  [v50 setDayType:0];
                  [v50 setDayTypeBadgeColor:0];
                  [v50 setDayTypeBadgeLocale:0];
                  if (v49 < [v23 count])
                  {
                    [v23 setObject:v50 atIndexedSubscript:v49];
                  }
                }
              }

              while (v48++ < [v47 day]);
            }

            v28 = v41;
            v26 = v94;
          }

          ++v29;
        }

        while (v29 != v28);
      }

      v18 = v85;
    }

    v8 = v23;
    v17 = v90;
    v11 = v91;
    v20 = v88;
    v19 = v89;
LABEL_41:

    goto LABEL_44;
  }

  v8 = 0;
LABEL_43:
  v11 = v7;
  v10 = v6;
LABEL_44:

  return v8;
}

- (BOOL)_shouldAnimateDots
{
  [(MultiColumnMonthViewController *)self _scrollViewVerticalVelocity];
  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  return v2 < 0.05;
}

- (double)_scrollViewVerticalVelocity
{
  v3 = [(InfiniteScrollViewController *)self scrollView];
  if ([v3 isDragging])
  {
    goto LABEL_6;
  }

  v4 = [(InfiniteScrollViewController *)self scrollView];
  if ([v4 isTracking])
  {
LABEL_5:

LABEL_6:
LABEL_7:
    v6 = [(InfiniteScrollViewController *)self scrollView];
    [v6 _verticalVelocity];
    v8 = v7;

    return v8;
  }

  v5 = [(InfiniteScrollViewController *)self scrollView];
  if ([v5 isDecelerating])
  {

    goto LABEL_5;
  }

  v10 = [(InfiniteScrollViewController *)self scrollView];
  v11 = [v10 isScrollAnimating];

  if (v11)
  {
    goto LABEL_7;
  }

  return 0.0;
}

- (BOOL)_allowedToDisplayEventDetailsColumn
{
  v2 = [(MultiColumnMonthViewController *)self view];
  if (EKUICurrentHeightSizeClassIsRegular())
  {
    v3 = +[CUIKPreferences sharedPreferences];
    v4 = [v3 showExperimentalUI];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_viewingEventDetailsColumn
{
  if (BYTE4(self->_navigationBarDisplayedDate) == 1)
  {
    return [(MultiColumnMonthViewController *)self _allowedToDisplayEventDetailsColumn];
  }

  else
  {
    return 0;
  }
}

- (void)_createEventDetailsColumn
{
  v3 = [*(&self->_blankViewController + 1) superview];

  if (!v3)
  {
    v4 = objc_alloc_init(UINavigationController);
    v5 = *(&self->_palette + 1);
    *(&self->_palette + 1) = v4;

    v6 = [*(&self->_palette + 1) view];
    [v6 setClipsToBounds:1];

    v7 = [LargeDayNavigationWrapperView alloc];
    v8 = [*(&self->_palette + 1) view];
    v9 = [(LargeDayNavigationWrapperView *)v7 initWithNavigationView:v8];
    v10 = *(&self->_blankViewController + 1);
    *(&self->_blankViewController + 1) = v9;

    [*(&self->_blankViewController + 1) setClipsToBounds:1];
    [(MultiColumnMonthViewController *)self addChildViewController:*(&self->_palette + 1)];
    [*(&self->_palette + 1) didMoveToParentViewController:self];
    v11 = [(MultiColumnMonthViewController *)self view];
    [v11 addSubview:*(&self->_blankViewController + 1)];

    v12 = [(MultiColumnMonthViewController *)self view];
    [v12 sendSubviewToBack:*(&self->_blankViewController + 1)];

    [(MultiColumnMonthViewController *)self _updateEventDetailsColumnViewFrame];
  }
}

- (void)_updateEventDetailsColumnViewFrame
{
  v3 = [(MultiColumnMonthViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  if (!CGRectIsEmpty(v19))
  {
    if (-[MultiColumnMonthViewController _shouldDisplayThreeColumns](self, "_shouldDisplayThreeColumns") || (+[CUIKPreferences sharedPreferences](CUIKPreferences, "sharedPreferences"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 largeListViewDisclosingEventDetails], v12, v13))
    {
      [*(&self->_dividerLineBetweenListAndMonth + 1) frame];
      MaxX = CGRectGetMaxX(v20);
      v21.origin.x = v5;
      v21.origin.y = v7;
      v21.size.width = v9;
      v21.size.height = v11;
      v15 = CGRectGetMaxX(v21);
      [*(&self->_dividerLineBetweenListAndMonth + 1) frame];
      MidX = v15 - CGRectGetMaxX(v22);
    }

    else
    {
      v23.origin.x = v5;
      v23.origin.y = v7;
      v23.size.width = v9;
      v23.size.height = v11;
      MaxX = CGRectGetMaxX(v23);
      v24.origin.x = v5;
      v24.origin.y = v7;
      v24.size.width = v9;
      v24.size.height = v11;
      MidX = CGRectGetMidX(v24);
    }

    v17 = *(&self->_blankViewController + 1);

    [v17 setFrame:{MaxX, v7, MidX, v11}];
  }
}

- (void)_slideToShowEventDetails:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ([(MultiColumnMonthViewController *)self _allowedToDisplayEventDetailsColumn])
  {
    [(MultiColumnMonthViewController *)self _createEventDetailsColumn];
    objc_storeStrong((&self->_navigationWrapperView + 1), a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(&self->_navigationWrapperView + 1);
      [v8 setAllowsCalendarPreview:1];
      [v8 setCalendarPreviewIsInlineDayView:1];
      [v8 setShowsDoneButton:0];
      [v8 setEditorShowTransition:6];
      v9 = dispatch_time(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10012B260;
      block[3] = &unk_100211E50;
      block[4] = self;
      v34 = v8;
      v35 = v4;
      v10 = v8;
      dispatch_after(v9, &_dispatch_main_q, block);
    }

    v11 = [*(&self->_palette + 1) presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [*(&self->_palette + 1) dismissViewControllerWithTransition:0 completion:0];
    }

    v13 = [*(&self->_palette + 1) popToRootViewControllerAnimated:0];
    [*(&self->_palette + 1) pushViewController:*(&self->_navigationWrapperView + 1) animated:0];
    v14 = [*(&self->_navigationWrapperView + 1) navigationItem];
    [v14 setHidesBackButton:1];

    [*(&self->_palette + 1) setNavigationBarHidden:0];
    [(MultiColumnMonthViewController *)self viewWillLayoutSubviews];
    v15 = [*(&self->_navigationWrapperView + 1) view];
    [v15 layoutMargins];
    v17 = v16;
    v19 = v18;

    [(MultiColumnMonthViewController *)self detailsRightInsetAdjustment];
    v21 = v20;
    [(MultiColumnMonthViewController *)self rightSplitViewSideInset];
    v23 = v21 + v22;
    [(MultiColumnMonthViewController *)self detailsLeftInsetAdjustment];
    v25 = v24;
    [(MultiColumnMonthViewController *)self rightSplitViewSideInset];
    v27 = v25 + v26;
    v28 = [*(&self->_navigationWrapperView + 1) view];
    [v28 setLayoutMargins:{v17, v27, v19, v23}];

    if (![(MultiColumnMonthViewController *)self _viewingEventDetailsColumn])
    {
      v29 = +[CUIKPreferences sharedPreferences];
      [v29 setLargeListViewDisclosingEventDetails:1];

      BYTE4(self->_navigationBarDisplayedDate) = 1;
      if (![(MultiColumnMonthViewController *)self _shouldDisplayThreeColumns])
      {
        [(MultiColumnMonthViewController *)self _slideToAnimatePalleteShowingBackButton:1 animated:v4];
      }

      v30 = 0.0;
      if (v4)
      {
        v30 = 0.5;
      }

      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10012B2C8;
      v32[3] = &unk_10020EB00;
      v32[4] = self;
      [UIView animateWithDuration:0 delay:v32 usingSpringWithDamping:&stru_100211E70 initialSpringVelocity:v30 options:0.0 animations:2.0 completion:0.0];
    }
  }

  else
  {
    v31 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "MultiColumnMonthViewController tried to slide panels without preference enabled.", buf, 2u);
    }
  }
}

- (void)_slideToAnimatePalleteShowingBackButton:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  [*&self->_editorPresentedProgramatically setHidden:0];
  [*&self->_editorPresentedProgramatically setAlpha:0.0];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10012B490;
  v11[3] = &unk_10020EAD8;
  v12 = a3;
  v11[4] = self;
  v7 = objc_retainBlock(v11);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10012B4F4;
  v9[3] = &unk_100210008;
  v10 = a3;
  v9[4] = self;
  v8 = objc_retainBlock(v9);
  if (v4)
  {
    [UIView animateWithDuration:0 delay:v7 usingSpringWithDamping:v8 initialSpringVelocity:0.5 options:0.0 animations:2.0 completion:0.0];
  }

  else
  {
    (v7[2])(v7);
    (v8[2])(v8, 1);
  }
}

- (void)_slideToHideEventDetailsAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(MultiColumnMonthViewController *)self _allowedToDisplayEventDetailsColumn])
  {
    v5 = [*(&self->_singleDayListViewController + 1) tableView];
    v6 = [*(&self->_singleDayListViewController + 1) tableView];
    v7 = [v6 indexPathForSelectedRow];
    [v5 deselectRowAtIndexPath:v7 animated:v3];

    v8 = +[CUIKPreferences sharedPreferences];
    [v8 setLargeListViewDisclosingEventDetails:0];

    BYTE4(self->_navigationBarDisplayedDate) = 0;
    [(MultiColumnMonthViewController *)self _slideToAnimatePalleteShowingBackButton:0 animated:v3];
    v9 = 0.0;
    if (v3)
    {
      v9 = 0.5;
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10012B6EC;
    v12[3] = &unk_10020EB00;
    v12[4] = self;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10012B6F4;
    v11[3] = &unk_10020EB98;
    v11[4] = self;
    [UIView animateWithDuration:0 delay:v12 usingSpringWithDamping:v11 initialSpringVelocity:v9 options:0.0 animations:2.0 completion:0.0];
  }

  else
  {
    v10 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MultiColumnMonthViewController tried to slide panels without preference enabled.", buf, 2u);
    }
  }
}

- (void)_setPaletteDisplaced
{
  [*(&self->_cancelEventDetailViewModeButton + 1) setWeekdayHeaderMovedBeyondLeftEdge:1];
  v3 = *(&self->_cancelEventDetailViewModeButton + 1);

  [v3 setNeedsLayout];
}

- (void)_resetPaletteState
{
  [*(&self->_cancelEventDetailViewModeButton + 1) setWeekdayHeaderMovedBeyondLeftEdge:0];
  v3 = *(&self->_cancelEventDetailViewModeButton + 1);

  [v3 setNeedsLayout];
}

- (double)rightSplitViewSideInset
{
  v2 = [(MainViewController *)self EKUI_viewHierarchy];
  [v2 ekui_interfaceOrientation];

  return 23.0;
}

- (void)_startUpdateTimer
{
  if (!*(&self->_currentDetailsView + 1))
  {
    v12 = CUIKCalendar();
    v3 = CUIKCalendar();
    v4 = +[NSDate date];
    v5 = [v3 components:126 fromDate:v4];

    v6 = [v12 dateFromComponents:v5];
    v7 = objc_alloc_init(NSDateComponents);
    [v7 setMinute:1];
    v8 = [v12 dateByAddingComponents:v7 toDate:v6 options:0];
    v9 = [[NSTimer alloc] initWithFireDate:v8 interval:self target:"_updateTimerFired" selector:0 userInfo:1 repeats:60.0];
    v10 = *(&self->_currentDetailsView + 1);
    *(&self->_currentDetailsView + 1) = v9;

    v11 = +[NSRunLoop currentRunLoop];
    [v11 addTimer:*(&self->_currentDetailsView + 1) forMode:NSDefaultRunLoopMode];
  }
}

- (void)_invalidateUpdateTimer
{
  [*(&self->_currentDetailsView + 1) invalidate];
  v3 = *(&self->_currentDetailsView + 1);
  *(&self->_currentDetailsView + 1) = 0;
}

- (id)pushedWeekViewControllerWithDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(MultiColumnMonthViewController *)self nextLevelWeekViewControllerWithDate:a3];
  v7 = [(MultiColumnMonthViewController *)self navigationController];
  [v7 pushViewController:v6 animated:v4];

  return v6;
}

- (id)nextLevelWeekViewControllerWithDate:(id)a3
{
  [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:a3];
  v4 = [WeekViewContainerViewController alloc];
  model = self->super.super.super.super._model;
  v6 = [(MainViewController *)self window];
  v7 = [(MainViewControllerContainer *)v4 initWithModel:model window:v6];

  return v7;
}

- (CGRect)frameForWeekContainingDate:(id)a3
{
  model = self->super.super.super.super._model;
  v5 = a3;
  v6 = [(CUIKCalendarModel *)model calendar];
  v7 = [v6 timeZone];
  v8 = [EKCalendarDate calendarDateWithDate:v5 timeZone:v7];

  v9 = [(InfiniteScrollViewController *)self subviewForDate:v8];
  v10 = v9;
  if (v9)
  {
    [v9 rectForCells];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(MultiColumnMonthViewController *)self view];
    [v19 convertRect:v10 fromView:{v12, v14, v16, v18}];
    x = v20;
    y = v22;
    width = v24;
    height = v26;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)frameForTodayHighlight
{
  v3 = CUIKTodayDate();
  v4 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
  v5 = [v4 timeZone];
  v6 = [EKCalendarDate calendarDateWithDate:v3 timeZone:v5];

  v7 = [(InfiniteScrollViewController *)self subviewForDate:v6];
  v8 = v7;
  if (v7)
  {
    [v7 frameForTodayHighlight];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(MultiColumnMonthViewController *)self view];
    [v17 convertRect:v8 fromView:{v10, v12, v14, v16}];
    x = v18;
    y = v20;
    width = v22;
    height = v24;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (double)heightForSubviewWithCalendarDate:(id)a3
{
  v4 = a3;
  v5 = [(MultiColumnMonthViewController *)self _monthWeekViewsUseVerticalCompression];
  v6 = [(MultiColumnMonthViewController *)self view];
  EKUICurrentWindowSize();
  [CompactMonthWeekView heightForViewWithCalendarDate:"heightForViewWithCalendarDate:compressed:windowSize:scale:" compressed:v4 windowSize:v5 scale:?];
  v8 = v7;

  return v8;
}

- (double)showDateVerticalOffset
{
  v3 = [(MultiColumnMonthViewController *)self _monthWeekViewsUseVerticalCompression];

  [(MultiColumnMonthViewController *)self _showDateVerticalOffsetWithVerticalCompression:v3];
  return result;
}

- (double)_showDateVerticalOffsetWithVerticalCompression:(BOOL)a3
{
  v4 = -12.0;
  if (a3)
  {
    +[CompactMonthWeekView headerHeight];
    v4 = v5;
  }

  EKUIScaleFactor();
  v7 = v4 + 2.0 / v6;
  v8 = [(MultiColumnMonthViewController *)self traitCollection];
  v9 = EKUIUsesLargeTextLayout();

  if (v9)
  {
    EKUIScaleFactor();
    return v7 + 1.0 / v10;
  }

  return v7;
}

- (int64_t)eventCountDisplayedForDate:(id)a3
{
  v4 = a3;
  v5 = [(InfiniteScrollViewController *)self subviewForDate:v4];
  v6 = [v4 day];

  v7 = [v5 calendarDate];
  v8 = [v7 day];

  if (!v5)
  {
    goto LABEL_7;
  }

  v9 = [v5 eventData];
  v10 = 0;
  if (!v9)
  {
    goto LABEL_6;
  }

  v11 = v6 - v8;
  if (v11 < 0)
  {
    goto LABEL_6;
  }

  v12 = [v5 eventData];
  v13 = [v12 count];

  if (v11 >= v13)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v14 = [v5 eventData];
  v9 = [v14 objectAtIndex:v11];

  v10 = [v9 eventCount];
LABEL_6:

LABEL_8:
  return v10;
}

- (void)_updateInfiniteScrollViewFrame
{
  v3 = [(MultiColumnMonthViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  if (!CGRectIsEmpty(v25))
  {
    if ([(MultiColumnMonthViewController *)self _shouldDisplayThreeColumns])
    {
      v26.origin.x = v5;
      v26.origin.y = v7;
      v26.size.width = v9;
      v26.size.height = v11;
      MinX = CGRectGetMinX(v26);
      [(MultiColumnMonthViewController *)self _listviewColumnCollapsedWidth];
      MidX = v13;
    }

    else
    {
      v27.origin.x = v5;
      v27.origin.y = v7;
      v27.size.width = v9;
      v27.size.height = v11;
      MidX = CGRectGetMidX(v27);
      v15 = +[CUIKPreferences sharedPreferences];
      v16 = [v15 largeListViewDisclosingEventDetails];

      if (v16)
      {
        v28.origin.x = v5;
        v28.origin.y = v7;
        v28.size.width = v9;
        v28.size.height = v11;
        MinX = -CGRectGetMidX(v28);
      }

      else
      {
        IsLeftToRight = CalInterfaceIsLeftToRight();
        v18 = v5;
        v19 = v7;
        v20 = v9;
        v21 = v11;
        if (IsLeftToRight)
        {
          v22 = CGRectGetMinX(*&v18);
        }

        else
        {
          v22 = CGRectGetMidX(*&v18);
        }

        MinX = v22;
      }
    }

    v23 = [(InfiniteScrollViewController *)self scrollView];
    [v23 setFrame:{MinX, v7, MidX, v11}];
  }
}

- (void)_setupListViewController
{
  if (!*(&self->_selectedMonthWeekView + 1))
  {
    v3 = objc_alloc_init(UIView);
    v4 = *(&self->_selectedMonthWeekView + 1);
    *(&self->_selectedMonthWeekView + 1) = v3;

    [*(&self->_selectedMonthWeekView + 1) setAutoresizingMask:18];
    v5 = +[UIColor whiteColor];
    [*(&self->_selectedMonthWeekView + 1) setBackgroundColor:v5];

    v6 = [(MultiColumnMonthViewController *)self view];
    [v6 addSubview:*(&self->_selectedMonthWeekView + 1)];

    v7 = [[CompactMonthListViewController alloc] initWithModel:self->super.super.super.super._model];
    v8 = *(&self->_listViewContainer + 1);
    *(&self->_listViewContainer + 1) = v7;

    [*(&self->_listViewContainer + 1) setCompactMonthListViewDelegate:self];
    v9 = [*(&self->_listViewContainer + 1) view];
    [v9 setAutoresizingMask:18];

    [*(&self->_selectedMonthWeekView + 1) bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [*(&self->_listViewContainer + 1) view];
    [v18 setFrame:{v11, v13, v15, v17}];

    v19 = [ListViewController alloc];
    model = self->super.super.super.super._model;
    v21 = [(MainViewController *)self window];
    v22 = [(ListViewController *)v19 initWithModel:model window:v21];
    v23 = *(&self->_singleDayListViewController + 1);
    *(&self->_singleDayListViewController + 1) = v22;

    [*(&self->_singleDayListViewController + 1) setAllowExtendedHeightCells:1];
    v24 = [*(&self->_singleDayListViewController + 1) view];
    [v24 setAutoresizingMask:18];

    [*(&self->_selectedMonthWeekView + 1) bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [*(&self->_singleDayListViewController + 1) view];
    [v33 setFrame:{v26, v28, v30, v32}];

    [*(&self->_singleDayListViewController + 1) setDelegate:self];

    [(MultiColumnMonthViewController *)self _updateListViewModeForCurrentTraits];
  }
}

- (void)_updateListViewModeForCurrentTraits
{
  v3 = [(MultiColumnMonthViewController *)self _listViewShowsSingleDay];
  if (v3)
  {
    v4 = &OBJC_IVAR___MultiColumnMonthViewController__multiDayListViewController;
  }

  else
  {
    v4 = &OBJC_IVAR___MultiColumnMonthViewController__singleDayListViewController;
  }

  if (v3)
  {
    v5 = &OBJC_IVAR___MultiColumnMonthViewController__singleDayListViewController;
  }

  else
  {
    v5 = &OBJC_IVAR___MultiColumnMonthViewController__multiDayListViewController;
  }

  v6 = *v4;
  [*(&self->super.super.super.super.super.super.super.isa + v6) removeFromParentViewController];
  v7 = [*(&self->super.super.super.super.super.super.super.isa + v6) view];
  [v7 removeFromSuperview];

  v8 = *v5;
  [(MultiColumnMonthViewController *)self addChildViewController:*(&self->super.super.super.super.super.super.super.isa + v8)];
  v9 = *(&self->_selectedMonthWeekView + 1);
  v10 = [*(&self->super.super.super.super.super.super.super.isa + v8) view];
  [v9 addSubview:v10];

  v11 = *(&self->super.super.super.super.super.super.super.isa + v8);

  [v11 didMoveToParentViewController:self];
}

- (BOOL)_listViewShowsSingleDay
{
  v3 = [(MultiColumnMonthViewController *)self ekui_futureTraitCollection];
  if ([v3 verticalSizeClass] == 1)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = ![(MultiColumnMonthViewController *)self _allowedToDisplayEventDetailsColumn];
  }

  return v4;
}

- (CGRect)frameOfListView
{
  [*(&self->_selectedMonthWeekView + 1) frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_updateListViewFrame
{
  v3 = [(MultiColumnMonthViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v31.origin.x = v5;
  v31.origin.y = v7;
  v31.size.width = v9;
  v31.size.height = v11;
  if (CGRectIsEmpty(v31))
  {
    return;
  }

  if (![(MultiColumnMonthViewController *)self _shouldDisplayThreeColumns])
  {
    v15 = +[CUIKPreferences sharedPreferences];
    v16 = [v15 largeListViewDisclosingEventDetails];

    if (v16)
    {
      [(MultiColumnMonthViewController *)self _listviewColumnCollapsedWidth];
      MidX = v17;
    }

    else
    {
      v32.origin.x = v5;
      v32.origin.y = v7;
      v32.size.width = v9;
      v32.size.height = v11;
      MidX = CGRectGetMidX(v32);
      if (CalInterfaceIsLeftToRight())
      {
        v33.origin.x = v5;
        v33.origin.y = v7;
        v33.size.width = v9;
        v33.size.height = v11;
        MinX = CGRectGetMidX(v33);
        goto LABEL_9;
      }
    }

    v34.origin.x = v5;
    v34.origin.y = v7;
    v34.size.width = v9;
    v34.size.height = v11;
    MinX = CGRectGetMinX(v34);
    goto LABEL_9;
  }

  [(MultiColumnMonthViewController *)self _listviewColumnCollapsedWidth];
  MidX = v12;
  [(MultiColumnMonthViewController *)self _listviewColumnCollapsedWidth];
LABEL_9:
  v18 = MinX;
  [*(&self->_selectedMonthWeekView + 1) setFrame:{MinX, v7, MidX, v11}];
  EKUIScaleFactor();
  v20 = v19;
  v21 = v11;
  v22 = v7;
  if (CalSystemSolariumEnabled())
  {
    v23 = [(MultiColumnMonthViewController *)self view];
    [v23 safeAreaInsets];
    v22 = v24;

    v21 = v11 - v22;
  }

  v25 = 1.0 / v20;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  MaxX = v18;
  if ((IsLeftToRight & 1) == 0)
  {
    v35.origin.x = v18;
    v35.origin.y = v7;
    v35.size.width = MidX;
    v35.size.height = v11;
    MaxX = CGRectGetMaxX(v35);
  }

  [*(&self->_weekCalculationCalendar + 1) setFrame:{MaxX, v22, v25, v21}];
  v36.origin.x = v18;
  v36.origin.y = v7;
  v36.size.width = MidX;
  v36.size.height = v11;
  v28 = CGRectGetMaxX(v36);
  v29 = *(&self->_dividerLineBetweenListAndMonth + 1);

  [v29 setFrame:{v28, v22, v25, v21}];
}

- (void)_autoSelectEvent
{
  v3 = dispatch_time(0, 1000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012C8A4;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)navigateToEventDetails:(id)a3 fromController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CUIKTodayDate();
  v9 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
  v10 = [v9 timeZone];
  v11 = [EKCalendarDate calendarDateWithDate:v8 timeZone:v10];

  v12 = [(InfiniteScrollViewController *)self subviewForDate:v11];
  [v12 setDisableTodayPulse:1];
  [*(&self->_listViewContainer + 1) deselectAllRowsAnimated:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10012CB08;
  v16[3] = &unk_10020F290;
  v16[4] = self;
  v17 = v7;
  v18 = v6;
  v19 = v12;
  v13 = v12;
  v14 = v6;
  v15 = v7;
  [(MultiColumnMonthViewController *)self dismissViewControllerAnimated:1 completion:v16];
}

- (void)eventViewControllerNextButtonWasTapped:(id)a3
{
  v6 = a3;
  v4 = [v6 event];
  v5 = [v4 nextOccurrence];

  if (v5)
  {
    [(MultiColumnMonthViewController *)self navigateToEventDetails:v5 fromController:v6];
  }
}

- (void)eventViewControllerPreviousButtonWasTapped:(id)a3
{
  v6 = a3;
  v4 = [v6 event];
  v5 = [v4 previousOccurrence];

  if (v5)
  {
    [(MultiColumnMonthViewController *)self navigateToEventDetails:v5 fromController:v6];
  }
}

- (void)_showDetailsForEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = [(MainViewController *)self augmentEventDetailsContext:a6];
  v12 = [EKEventViewController eventDetailViewControllerWithEvent:v10 delegate:self context:v11 canvasView:2];
  v13 = [(MainViewController *)self model];
  [v13 setSelectedOccurrence:v10];

  v14 = [(MultiColumnMonthViewController *)self view];
  LODWORD(v13) = EKUICurrentHeightSizeClassIsRegular();

  if (v13)
  {
    [(MultiColumnMonthViewController *)self _slideToShowEventDetails:v12 animated:v8];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10012CF24;
    v15[3] = &unk_100211EC0;
    v17 = self;
    v18 = a5;
    v16 = v12;
    [(MainViewController *)self showViewController:v16 sender:self animated:v8 completion:v15];
  }
}

- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  v5 = a3;
  [*(&self->_listViewContainer + 1) deselectAllRowsAnimated:1];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10012D12C;
  v10 = &unk_10020EC68;
  v11 = self;
  v12 = v5;
  v6 = v5;
  [(MultiColumnMonthViewController *)self dismissViewControllerAnimated:1 completion:&v7];
  if ([(MultiColumnMonthViewController *)self _viewingEventDetailsColumn:v7])
  {
    [(MultiColumnMonthViewController *)self _autoSelectEvent];
  }
}

- (void)eventViewController:(id)a3 requestsDismissalOfEditViewController:(id)a4
{
  v5 = a4;
  [v5 setModalTransitionStyle:2];
  if ((BYTE1(self->_navigationBarDisplayedDate) & 1) != 0 || BYTE2(self->_navigationBarDisplayedDate) == 1)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10012D280;
    v6[3] = &unk_10020EB00;
    v6[4] = self;
    [(MultiColumnMonthViewController *)self dismissViewControllerAnimated:1 completion:v6];
    BYTE1(self->_navigationBarDisplayedDate) = 0;
    BYTE2(self->_navigationBarDisplayedDate) = 0;
  }

  else
  {
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)compactMonthListViewController:(id)a3 wantsToCommitViewControllerFromPreview:(id)a4
{
  v5 = [a4 event];
  [(MultiColumnMonthViewController *)self _showDetailsForEvent:v5 animated:1 showMode:1 context:0];
}

- (void)listViewController:(id)a3 didScrollToDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((BYTE3(self->_navigationBarDisplayedDate) & 1) == 0 && (![(MultiColumnMonthViewController *)self _viewingEventDetailsColumn]|| [(MultiColumnMonthViewController *)self _shouldDisplayThreeColumns]))
  {
    v8 = CUIKTodayDate();
    v9 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v10 = [v9 timeZone];
    v11 = [EKCalendarDate calendarDateWithDate:v8 timeZone:v10];

    v12 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v13 = [v12 timeZone];
    v14 = [EKCalendarDate calendarDateWithDate:v7 timeZone:v13];

    v15 = [(InfiniteScrollViewController *)self subviewForDate:v11];
    [v15 setDisableTodayPulse:1];
    if ((byte_100251D70 & 1) == 0)
    {
      byte_100251D70 = 1;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10012D504;
      v16[3] = &unk_10020EB28;
      v17 = v15;
      v18 = self;
      v19 = v14;
      [(MultiColumnMonthViewController *)self showDate:v7 animated:1 completionBlock:v16];
    }
  }
}

@end