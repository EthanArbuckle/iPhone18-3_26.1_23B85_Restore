@interface MultiColumnMonthViewController
- (BOOL)_allowedToDisplayEventDetailsColumn;
- (BOOL)_listViewShowsSingleDay;
- (BOOL)_monthWeekViewsUseVerticalCompression;
- (BOOL)_shouldAnimateDots;
- (BOOL)_viewingEventDetailsColumn;
- (CGRect)frameForTodayHighlight;
- (CGRect)frameForWeekContainingDate:(id)date;
- (CGRect)frameOfListView;
- (MultiColumnMonthViewController)initWithCalendarDate:(id)date model:(id)model window:(id)window;
- (double)_listviewColumnCollapsedWidth;
- (double)_scrollViewVerticalVelocity;
- (double)_showDateVerticalOffsetWithVerticalCompression:(BOOL)compression;
- (double)heightForSubviewWithCalendarDate:(id)date;
- (double)rightSplitViewSideInset;
- (double)showDateVerticalOffset;
- (id)_dayInMonth:(id)month fromGesture:(id)gesture;
- (id)_loadEventsForStartDate:(id)date endDate:(id)endDate;
- (id)_viewFromGesture:(id)gesture;
- (id)createInitialViewForDate:(id)date;
- (id)newBottomViewBelowViewWithCalendarDate:(id)date;
- (id)newTopViewAboveViewWithCalendarDate:(id)date;
- (id)nextLevelWeekViewControllerWithDate:(id)date;
- (id)preferredPreSizeClassTransitionSelectedDate;
- (id)pushedWeekViewControllerWithDate:(id)date animated:(BOOL)animated;
- (int64_t)eventCountDisplayedForDate:(id)date;
- (unint64_t)edgesForExtendedLayout;
- (void)_autoSelectEvent;
- (void)_cachedOccurrencesChanged:(id)changed;
- (void)_createEventDetailsColumn;
- (void)_createMonthHighlightForMonthView:(id)view day:(id)day;
- (void)_invalidateUpdateTimer;
- (void)_loadEventsForAllSubviews;
- (void)_loadEventsForViewsInRangeStartingAt:(id)at endingAt:(id)endingAt;
- (void)_occurrencesChanged:(id)changed;
- (void)_removeMonthHighlight;
- (void)_resetPaletteState;
- (void)_scrollListToNewSelectedDateAnimated:(BOOL)animated;
- (void)_scrubGestureCallback:(id)callback;
- (void)_setPaletteDisplaced;
- (void)_setSelectedDay:(id)day;
- (void)_setSelectedDay:(id)day onMonthWeekView:(id)view animated:(BOOL)animated;
- (void)_setupListViewController;
- (void)_showDetailsForEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)_slideToAnimatePalleteShowingBackButton:(BOOL)button animated:(BOOL)animated;
- (void)_slideToHideEventDetailsAnimated:(BOOL)animated;
- (void)_slideToShowEventDetails:(id)details animated:(BOOL)animated;
- (void)_startUpdateTimer;
- (void)_tapGestureCallback:(id)callback;
- (void)_updateEventDetailsColumnViewFrame;
- (void)_updateInfiniteScrollViewFrame;
- (void)_updateListViewFrame;
- (void)_updateListViewModeForCurrentTraits;
- (void)compactMonthListViewController:(id)controller wantsToCommitViewControllerFromPreview:(id)preview;
- (void)dealloc;
- (void)didEndScrolling;
- (void)didScroll;
- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action;
- (void)eventViewController:(id)controller requestsDismissalOfEditViewController:(id)viewController;
- (void)eventViewControllerNextButtonWasTapped:(id)tapped;
- (void)eventViewControllerPreviousButtonWasTapped:(id)tapped;
- (void)infiniteScrollViewSafeAreasDidChange;
- (void)listViewController:(id)controller didScrollToDate:(id)date;
- (void)loadView;
- (void)monthView:(id)view gestureBegan:(id)began;
- (void)monthView:(id)view gestureCancelled:(id)cancelled;
- (void)monthView:(id)view gestureChanged:(id)changed;
- (void)monthView:(id)view gestureEnded:(id)ended;
- (void)navigateToEventDetails:(id)details fromController:(id)controller;
- (void)setupUIForTraitCollection:(id)collection;
- (void)showDate:(id)date animated:(BOOL)animated;
- (void)showDate:(id)date animated:(BOOL)animated completionBlock:(id)block;
- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)updateNavigationBarDisplayedDateString;
- (void)updatePalette:(id)palette;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willEndDraggingWithVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation MultiColumnMonthViewController

- (MultiColumnMonthViewController)initWithCalendarDate:(id)date model:(id)model window:(id)window
{
  dateCopy = date;
  modelCopy = model;
  windowCopy = window;
  v18.receiver = self;
  v18.super_class = MultiColumnMonthViewController;
  v11 = [(MonthViewController *)&v18 initWithCalendarDate:dateCopy model:modelCopy window:windowCopy];
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
    view = [(MultiColumnMonthViewController *)self view];
    [view addSubview:*(&self->_dividerLineBetweenListAndEventDetails + 1)];

    v7 = *(&self->_dividerLineBetweenListAndEventDetails + 1);
    v8 = [_UIScrollPocketInteraction alloc];
    scrollView = [(InfiniteScrollViewController *)self scrollView];
    v10 = [v8 initWithScrollView:scrollView edge:1 style:0];
    [v7 addInteraction:v10];

    scrollView2 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView2 _setPocketStyle:1 forEdge:1];

    topAnchor = [*(&self->_dividerLineBetweenListAndEventDetails + 1) topAnchor];
    view2 = [(MultiColumnMonthViewController *)self view];
    topAnchor2 = [view2 topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v40[0] = v35;
    bottomAnchor = [*(&self->_dividerLineBetweenListAndEventDetails + 1) bottomAnchor];
    view3 = [(MultiColumnMonthViewController *)self view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    topAnchor3 = [safeAreaLayoutGuide topAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
    v40[1] = v30;
    leadingAnchor = [*(&self->_dividerLineBetweenListAndEventDetails + 1) leadingAnchor];
    view4 = [(MultiColumnMonthViewController *)self view];
    leadingAnchor2 = [view4 leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v40[2] = v15;
    trailingAnchor = [*(&self->_dividerLineBetweenListAndEventDetails + 1) trailingAnchor];
    view5 = [(MultiColumnMonthViewController *)self view];
    trailingAnchor2 = [view5 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v40[3] = v19;
    v20 = [NSArray arrayWithObjects:v40 count:4];
    [NSLayoutConstraint activateConstraints:v20];
  }

  v21 = objc_alloc_init(UIView);
  v22 = *(&self->_weekCalculationCalendar + 1);
  *(&self->_weekCalculationCalendar + 1) = v21;

  v23 = [UIColor colorWithWhite:0.8 alpha:1.0];
  [*(&self->_weekCalculationCalendar + 1) setBackgroundColor:v23];

  view6 = [(MultiColumnMonthViewController *)self view];
  [view6 addSubview:*(&self->_weekCalculationCalendar + 1)];

  v25 = objc_alloc_init(UIView);
  v26 = *(&self->_dividerLineBetweenListAndMonth + 1);
  *(&self->_dividerLineBetweenListAndMonth + 1) = v25;

  v27 = [UIColor colorWithWhite:0.8 alpha:1.0];
  [*(&self->_dividerLineBetweenListAndMonth + 1) setBackgroundColor:v27];

  view7 = [(MultiColumnMonthViewController *)self view];
  [view7 addSubview:*(&self->_dividerLineBetweenListAndMonth + 1)];

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
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView setDecelerationRate:UIScrollViewDecelerationRateFast];

  traitCollection = [(MultiColumnMonthViewController *)self traitCollection];
  [UITraitCollection _setCurrentTraitCollection:traitCollection];

  dividedModeBackgroundColor = [objc_opt_class() dividedModeBackgroundColor];
  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  [scrollView2 setBackgroundColor:dividedModeBackgroundColor];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v24.receiver = self;
  v24.super_class = MultiColumnMonthViewController;
  [(MonthViewController *)&v24 viewWillAppear:?];
  if ((BYTE2(self->_tempMaskForPocket) & 1) == 0)
  {
    selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v6 = [(MonthViewController *)self adjustSelectedDateForNewMonth:selectedDate];

    [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v6];
    BYTE2(self->_tempMaskForPocket) = 1;
  }

  BYTE1(self->_tempMaskForPocket) = 1;
  v7 = *&self->_hasSetInitialSelectedDate;
  *&self->_hasSetInitialSelectedDate = 0;

  v8 = objc_alloc_init(UITapGestureRecognizer);
  [(MultiColumnMonthViewController *)self setDayCellsTapGestureRecognizer:v8];

  dayCellsTapGestureRecognizer = [(MultiColumnMonthViewController *)self dayCellsTapGestureRecognizer];
  [dayCellsTapGestureRecognizer addTarget:self action:"_tapGestureCallback:"];

  scrollView = [(InfiniteScrollViewController *)self scrollView];
  dayCellsTapGestureRecognizer2 = [(MultiColumnMonthViewController *)self dayCellsTapGestureRecognizer];
  [scrollView addGestureRecognizer:dayCellsTapGestureRecognizer2];

  v12 = objc_alloc_init(UILongPressGestureRecognizer);
  [(MultiColumnMonthViewController *)self setDayCellsScrubbingGestureRecognizer:v12];

  [objc_opt_class() scrubbingMinimumPressDuration];
  v14 = v13;
  dayCellsScrubbingGestureRecognizer = [(MultiColumnMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [dayCellsScrubbingGestureRecognizer setMinimumPressDuration:v14];

  dayCellsScrubbingGestureRecognizer2 = [(MultiColumnMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [dayCellsScrubbingGestureRecognizer2 addTarget:self action:"_scrubGestureCallback:"];

  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  dayCellsScrubbingGestureRecognizer3 = [(MultiColumnMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [scrollView2 addGestureRecognizer:dayCellsScrubbingGestureRecognizer3];

  view = [(MultiColumnMonthViewController *)self view];
  LODWORD(dayCellsScrubbingGestureRecognizer3) = EKUICurrentHeightSizeClassIsRegular();

  if (dayCellsScrubbingGestureRecognizer3)
  {
    if ([(MultiColumnMonthViewController *)self _shouldDisplayThreeColumns]&& (BYTE3(self->_tempMaskForPocket) & 1) == 0)
    {
      v20 = +[CUIKPreferences sharedPreferences];
      [v20 setLargeListViewDisclosingEventDetails:1];
    }

    v21 = +[CUIKPreferences sharedPreferences];
    if ([v21 largeListViewDisclosingEventDetails])
    {
      _viewingEventDetailsColumn = [(MultiColumnMonthViewController *)self _viewingEventDetailsColumn];

      if ((_viewingEventDetailsColumn & 1) == 0)
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
      [(MultiColumnMonthViewController *)self _slideToHideEventDetailsAnimated:appearCopy];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = MultiColumnMonthViewController;
  [(CompactMonthViewController *)&v7 viewDidAppear:appear];
  selectedDay = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDay];
  selectedDay2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDay];
  v6 = [(InfiniteScrollViewController *)self subviewForDate:selectedDay2];
  [(MultiColumnMonthViewController *)self _setSelectedDay:selectedDay onMonthWeekView:v6 animated:1];

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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(MultiColumnMonthViewController *)self _resetPaletteState];
  [(MultiColumnMonthViewController *)self _invalidateUpdateTimer];
  [*&self->_editorPresentedProgramatically removeFromSuperview];
  v5 = *&self->_editorPresentedProgramatically;
  *&self->_editorPresentedProgramatically = 0;

  scrollView = [(InfiniteScrollViewController *)self scrollView];
  dayCellsTapGestureRecognizer = [(MultiColumnMonthViewController *)self dayCellsTapGestureRecognizer];
  [scrollView removeGestureRecognizer:dayCellsTapGestureRecognizer];

  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  dayCellsScrubbingGestureRecognizer = [(MultiColumnMonthViewController *)self dayCellsScrubbingGestureRecognizer];
  [scrollView2 removeGestureRecognizer:dayCellsScrubbingGestureRecognizer];

  v10.receiver = self;
  v10.super_class = MultiColumnMonthViewController;
  [(MonthViewController *)&v10 viewWillDisappear:disappearCopy];
}

- (void)setupUIForTraitCollection:(id)collection
{
  v8.receiver = self;
  v8.super_class = MultiColumnMonthViewController;
  collectionCopy = collection;
  [(MainViewController *)&v8 setupUIForTraitCollection:collectionCopy];
  verticalSizeClass = [collectionCopy verticalSizeClass];

  if (verticalSizeClass == 1)
  {
    [objc_opt_class() dividedModeBackgroundColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v6 = ;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [scrollView setBackgroundColor:v6];
}

- (void)viewWillLayoutSubviews
{
  view = [(MultiColumnMonthViewController *)self view];
  [view bounds];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  if ([(MultiColumnMonthViewController *)self isViewLoaded])
  {
    view = [(MultiColumnMonthViewController *)self view];
    window = [view window];

    if (window)
    {
      [(MainViewController *)self transitionToSizeWillStart];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10012760C;
      v13[3] = &unk_10020F240;
      v13[4] = self;
      [coordinatorCopy animateAlongsideTransition:0 completion:v13];
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

- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  animatedCopy = animated;
  eventCopy = event;
  contextCopy = context;
  if (eventCopy)
  {
    if (mode)
    {
      [(MultiColumnMonthViewController *)self _showDetailsForEvent:eventCopy animated:animatedCopy showMode:mode context:contextCopy];
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

- (void)updatePalette:(id)palette
{
  objc_storeStrong((&self->_cancelEventDetailViewModeButton + 1), palette);
  paletteCopy = palette;
  [paletteCopy setWeekdayHeaderFillsHalfWidth:1];
  [paletteCopy setNeedsLayout];
  v10.receiver = self;
  v10.super_class = MultiColumnMonthViewController;
  [(CompactMonthViewController *)&v10 updatePalette:paletteCopy];
  [paletteCopy setTodayButtonVisible:1];
  [paletteCopy setDateStringVisible:1];
  [paletteCopy setFocusBannerPlacement:2];
  [paletteCopy setOpaqueBackground:0];
  v6 = +[UIColor clearColor];
  [paletteCopy setBackgroundColor:v6];

  [paletteCopy sizeToFit];
  [paletteCopy frame];
  v8 = v7;
  containingPalette = [paletteCopy containingPalette];

  [containingPalette setPreferredHeight:v8];
}

- (void)updateNavigationBarDisplayedDateString
{
  model = [(MainViewController *)self model];
  selectedDate = [model selectedDate];

  if (selectedDate)
  {
    if (!*&self->_hasSetInitialSelectedDate || (v5 = [selectedDate month], v5 != objc_msgSend(*&self->_hasSetInitialSelectedDate, "month")) || (v6 = objc_msgSend(selectedDate, "year"), v6 != objc_msgSend(*&self->_hasSetInitialSelectedDate, "year")))
    {
      navigationController = [(MultiColumnMonthViewController *)self navigationController];
      topMainViewControllerContainer = [navigationController topMainViewControllerContainer];
      currentChildViewController = [topMainViewControllerContainer currentChildViewController];

      if (currentChildViewController == self)
      {
        navigationController2 = [(MultiColumnMonthViewController *)self navigationController];
        [navigationController2 setNavBarStringFromDate:selectedDate includeMonth:1 includeYear:1];
      }
    }
  }

  v11 = *&self->_hasSetInitialSelectedDate;
  *&self->_hasSetInitialSelectedDate = selectedDate;
}

- (id)preferredPreSizeClassTransitionSelectedDate
{
  selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];

  if (selectedDate)
  {
    selectedDate2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MultiColumnMonthViewController;
    selectedDate2 = [(MonthViewController *)&v6 preferredPreSizeClassTransitionSelectedDate];
  }

  return selectedDate2;
}

- (BOOL)_monthWeekViewsUseVerticalCompression
{
  ekui_futureTraitCollection = [(MultiColumnMonthViewController *)self ekui_futureTraitCollection];
  v3 = [ekui_futureTraitCollection verticalSizeClass] == 1;

  return v3;
}

- (id)createInitialViewForDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if ([dateCopy day] != 1)
  {
    v5 = [dateCopy calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];
  }

  dequeueReusableView = [(InfiniteScrollViewController *)self dequeueReusableView];
  if (dequeueReusableView)
  {
    v7 = dequeueReusableView;
    [(CompactMonthWeekView *)dequeueReusableView setCompressedVerticalMode:[(MultiColumnMonthViewController *)self _monthWeekViewsUseVerticalCompression]];
    [(CompactMonthWeekView *)v7 setCalendarDate:v5];
  }

  else
  {
    calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v7 = [[CompactMonthWeekView alloc] initWithCalendarDate:v5 calendar:calendar compressed:[(MultiColumnMonthViewController *)self _monthWeekViewsUseVerticalCompression]];
  }

  [(CompactMonthWeekView *)v7 setUseLayoutMargins:1];
  if (!*(&self->_pressedMonthView + 1))
  {
    calendarDate = [(CompactMonthWeekView *)v7 calendarDate];
    [calendarDate absoluteTime];
    v11 = v10;
    selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [selectedDate absoluteTime];
    if (v11 <= v13)
    {
      selectedDate2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [selectedDate2 absoluteTime];
      v16 = v15;
      endCalendarDate = [(CompactMonthWeekView *)v7 endCalendarDate];
      [endCalendarDate absoluteTime];
      v19 = v18;

      if (v16 > v19)
      {
        goto LABEL_12;
      }

      calendarDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(MultiColumnMonthViewController *)self _setSelectedDay:calendarDate onMonthWeekView:v7 animated:0];
    }

    else
    {
    }
  }

LABEL_12:
  calendarDate2 = [(CompactMonthWeekView *)v7 calendarDate];
  endCalendarDate2 = [(CompactMonthWeekView *)v7 endCalendarDate];
  v22 = [(MultiColumnMonthViewController *)self _loadEventsForStartDate:calendarDate2 endDate:endCalendarDate2];
  [(CompactMonthWeekView *)v7 setEventData:v22];

  v23 = +[CUIKPreferences sharedPreferences];
  -[CompactMonthWeekView setShowWeekNumber:](v7, "setShowWeekNumber:", [v23 showWeekNumbers]);

  return v7;
}

- (id)newTopViewAboveViewWithCalendarDate:(id)date
{
  v4 = [(MonthViewController *)self calendarDateForSubviewAboveSubviewWithCalendarDate:date];
  dequeueReusableView = [(InfiniteScrollViewController *)self dequeueReusableView];
  if (dequeueReusableView)
  {
    v6 = dequeueReusableView;
    [(CompactMonthWeekView *)dequeueReusableView setCompressedVerticalMode:[(MultiColumnMonthViewController *)self _monthWeekViewsUseVerticalCompression]];
    [(CompactMonthWeekView *)v6 setCalendarDate:v4];
  }

  else
  {
    calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v6 = [[CompactMonthWeekView alloc] initWithCalendarDate:v4 calendar:calendar compressed:[(MultiColumnMonthViewController *)self _monthWeekViewsUseVerticalCompression]];
  }

  [(CompactMonthWeekView *)v6 setUseLayoutMargins:1];
  calendarDate = [(CompactMonthWeekView *)v6 calendarDate];
  endCalendarDate = [(CompactMonthWeekView *)v6 endCalendarDate];
  v10 = [(MultiColumnMonthViewController *)self _loadEventsForStartDate:calendarDate endDate:endCalendarDate];
  [(CompactMonthWeekView *)v6 setEventData:v10 animated:[(MultiColumnMonthViewController *)self _shouldAnimateDots]];

  if (!*(&self->_pressedMonthView + 1))
  {
    calendarDate2 = [(CompactMonthWeekView *)v6 calendarDate];
    [calendarDate2 absoluteTime];
    v13 = v12;
    selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [selectedDate absoluteTime];
    if (v13 > v15)
    {

LABEL_9:
      goto LABEL_10;
    }

    selectedDate2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [selectedDate2 absoluteTime];
    v18 = v17;
    endCalendarDate2 = [(CompactMonthWeekView *)v6 endCalendarDate];
    [endCalendarDate2 absoluteTime];
    v21 = v20;

    if (v18 <= v21)
    {
      calendarDate2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(MultiColumnMonthViewController *)self _setSelectedDay:calendarDate2 onMonthWeekView:v6 animated:0];
      goto LABEL_9;
    }
  }

LABEL_10:
  v22 = +[CUIKPreferences sharedPreferences];
  -[CompactMonthWeekView setShowWeekNumber:](v6, "setShowWeekNumber:", [v22 showWeekNumbers]);

  return v6;
}

- (id)newBottomViewBelowViewWithCalendarDate:(id)date
{
  v4 = [(MonthViewController *)self calendarDateForSubviewBelowSubviewWithCalendarDate:date];
  dequeueReusableView = [(InfiniteScrollViewController *)self dequeueReusableView];
  if (dequeueReusableView)
  {
    v6 = dequeueReusableView;
    [(CompactMonthWeekView *)dequeueReusableView setCompressedVerticalMode:[(MultiColumnMonthViewController *)self _monthWeekViewsUseVerticalCompression]];
    [(CompactMonthWeekView *)v6 setCalendarDate:v4];
  }

  else
  {
    calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    v6 = [[CompactMonthWeekView alloc] initWithCalendarDate:v4 calendar:calendar compressed:[(MultiColumnMonthViewController *)self _monthWeekViewsUseVerticalCompression]];
  }

  [(CompactMonthWeekView *)v6 setUseLayoutMargins:1];
  calendarDate = [(CompactMonthWeekView *)v6 calendarDate];
  endCalendarDate = [(CompactMonthWeekView *)v6 endCalendarDate];
  v10 = [(MultiColumnMonthViewController *)self _loadEventsForStartDate:calendarDate endDate:endCalendarDate];
  [(CompactMonthWeekView *)v6 setEventData:v10 animated:[(MultiColumnMonthViewController *)self _shouldAnimateDots]];

  if (!*(&self->_pressedMonthView + 1))
  {
    calendarDate2 = [(CompactMonthWeekView *)v6 calendarDate];
    [calendarDate2 absoluteTime];
    v13 = v12;
    selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [selectedDate absoluteTime];
    if (v13 < v15)
    {

LABEL_9:
      goto LABEL_10;
    }

    selectedDate2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [selectedDate2 absoluteTime];
    v18 = v17;
    endCalendarDate2 = [(CompactMonthWeekView *)v6 endCalendarDate];
    [endCalendarDate2 absoluteTime];
    v21 = v20;

    if (v18 <= v21)
    {
      calendarDate2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(MultiColumnMonthViewController *)self _setSelectedDay:calendarDate2 onMonthWeekView:v6 animated:0];
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
    selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v5 = [(InfiniteScrollViewController *)self subviewForDate:selectedDate];

    if (v5 != *(&self->_pressedMonthView + 1))
    {
      selectedDate2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
      [(MultiColumnMonthViewController *)self _setSelectedDay:selectedDate2 onMonthWeekView:v5 animated:1];
    }

    [(MultiColumnMonthViewController *)self updateNavigationBarDisplayedDateString];
  }
}

- (void)willEndDraggingWithVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  v70.receiver = self;
  v70.super_class = MultiColumnMonthViewController;
  [(MonthViewController *)&v70 willEndDraggingWithVelocity:velocity.x targetContentOffset:?];
  selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  v8 = -y;
  if (y >= 0.0)
  {
    v8 = y;
  }

  if (v8 <= 0.3)
  {
    scrollView = [(InfiniteScrollViewController *)self scrollView];
    [scrollView contentOffset];
    v35 = v34;
    v37 = v36;

    scrollView2 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView2 frame];
    v40 = v39;

    scrollView3 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView3 safeAreaInsets];
    v43 = v42;
    scrollView4 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView4 safeAreaInsets];
    v46 = v40 - (v43 + v45);

    v68 = 0;
    [(InfiniteScrollViewController *)self nearestMajorBoundaryForPoint:&v68 date:v35, v37 + v46 * 0.5];
    v48 = v47;
    v50 = v49;
    v32 = v68;
    offset->x = v48;
    offset->y = v50;
    firstView = selectedDate;
  }

  else
  {
    firstView = *(&self->_pressedMonthView + 1);
    if (!firstView)
    {
      firstView = [(InfiniteScrollViewController *)self firstView];
    }

    selectedDate2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v11 = selectedDate2;
    if (y > 0.0)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    v13 = [selectedDate2 calendarDateByAddingMonths:v12];
    calendarDateForMonth = [v13 calendarDateForMonth];

    calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    calendarDate = [firstView calendarDate];
    date = [calendarDate date];
    date2 = [calendarDateForMonth date];
    v19 = [calendar components:0x2000 fromDate:date toDate:date2 options:0];

    [firstView frame];
    v21 = v20;
    [firstView frame];
    v23 = v22;
    v24 = y <= 0.0;
    v26 = v25 + [v19 weekOfYear] * v21;
    if (v24)
    {
      +[CompactMonthWeekView headerHeight];
      v26 = v26 - v27;
    }

    v69 = calendarDateForMonth;
    [(InfiniteScrollViewController *)self nearestMajorBoundaryForPoint:&v69 date:v23, v26];
    v29 = v28;
    v31 = v30;
    v32 = v69;

    offset->x = v29;
    offset->y = v31;
  }

  selectedDate3 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  month = [selectedDate3 month];
  if (month == [v32 month])
  {
    selectedDate4 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    year = [selectedDate4 year];
    year2 = [v32 year];

    if (year == year2)
    {
      v56 = v32;
      goto LABEL_25;
    }
  }

  else
  {
  }

  v57 = CUIKTodayDate();
  calendar2 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
  timeZone = [calendar2 timeZone];
  v60 = [EKCalendarDate calendarDateWithDate:v57 timeZone:timeZone];

  month2 = [v60 month];
  if (month2 == [v32 month] && (v62 = objc_msgSend(v60, "year"), v62 == objc_msgSend(v32, "year")))
  {
    calendarDateForMonth2 = v60;
  }

  else
  {
    calendarDateForMonth2 = [v32 calendarDateForMonth];
  }

  v56 = calendarDateForMonth2;

  BYTE3(self->_navigationBarDisplayedDate) = 1;
  model = [(MainViewController *)self model];
  [model setSelectedDate:v56];

  BYTE3(self->_navigationBarDisplayedDate) = 0;
  if (BYTE5(self->_tempMaskForPocket) == 1)
  {
    selectedDate5 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    v66 = [(InfiniteScrollViewController *)self subviewForDate:selectedDate5];

    selectedDate6 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
    [(MultiColumnMonthViewController *)self _setSelectedDay:selectedDate6 onMonthWeekView:v66 animated:1];

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

- (void)showDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  [(MultiColumnMonthViewController *)self showDate:date animated:animated completionBlock:0];

  [(MultiColumnMonthViewController *)self _scrollListToNewSelectedDateAnimated:animatedCopy];
}

- (void)showDate:(id)date animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  dateCopy = date;
  model = [(MainViewController *)self model];
  calendar = [model calendar];
  timeZone = [calendar timeZone];
  v13 = [EKCalendarDate calendarDateWithDate:dateCopy timeZone:timeZone];

  calendarDateForMonth = [v13 calendarDateForMonth];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100128920;
  v19[3] = &unk_10020F308;
  v19[4] = self;
  v20 = blockCopy;
  v15 = blockCopy;
  v16 = objc_retainBlock(v19);
  date = [calendarDateForMonth date];
  v18.receiver = self;
  v18.super_class = MultiColumnMonthViewController;
  [(InfiniteScrollViewController *)&v18 showDate:date animated:animatedCopy completionBlock:v16];
}

- (void)infiniteScrollViewSafeAreasDidChange
{
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  layer = [scrollView2 layer];
  [scrollView layoutSublayersOfLayer:layer];

  view = [(MultiColumnMonthViewController *)self view];
  [view setNeedsLayout];
}

- (void)_tapGestureCallback:(id)callback
{
  callbackCopy = callback;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100128BF8;
  v18 = sub_100128C08;
  v19 = 0;
  view = [callbackCopy view];
  subviews = [view subviews];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100128C10;
  v11 = &unk_100210170;
  v7 = callbackCopy;
  v12 = v7;
  v13 = &v14;
  [subviews enumerateObjectsUsingBlock:&v8];

  [(MultiColumnMonthViewController *)self monthView:v15[5] gestureBegan:v7, v8, v9, v10, v11];
  [(MultiColumnMonthViewController *)self monthView:v15[5] gestureEnded:v7];

  _Block_object_dispose(&v14, 8);
}

- (void)_scrubGestureCallback:(id)callback
{
  callbackCopy = callback;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100128BF8;
  v19 = sub_100128C08;
  v20 = 0;
  view = [callbackCopy view];
  subviews = [view subviews];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100128E98;
  v12 = &unk_100210170;
  v7 = callbackCopy;
  v13 = v7;
  v14 = &v15;
  [subviews enumerateObjectsUsingBlock:&v9];

  state = [v7 state];
  if (state > 3)
  {
    if ((state - 4) < 2)
    {
      [(MultiColumnMonthViewController *)self monthView:v16[5] gestureCancelled:v7];
    }
  }

  else
  {
    switch(state)
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

- (void)_scrollListToNewSelectedDateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  BYTE3(self->_navigationBarDisplayedDate) = 1;
  v5 = *(&self->_singleDayListViewController + 1);
  selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  date = [selectedDate date];
  [v5 scrollToDate:date animated:animatedCopy];

  v8 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100129058;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_after(v8, &_dispatch_main_q, block);
}

- (id)_viewFromGesture:(id)gesture
{
  gestureCopy = gesture;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100128BF8;
  v17 = sub_100128C08;
  v18 = 0;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  [gestureCopy locationInView:scrollView];
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

- (void)monthView:(id)view gestureBegan:(id)began
{
  viewCopy = view;
  beganCopy = began;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  isDecelerating = [scrollView isDecelerating];

  if ((isDecelerating & 1) == 0)
  {
    v9 = [(MultiColumnMonthViewController *)self _dayInMonth:viewCopy fromGesture:beganCopy];
    if (v9)
    {
      if (*(&self->_pressHighlight + 1) != viewCopy || [v9 compare:*(&self->super._applicationResuming + 1)])
      {
        [(MultiColumnMonthViewController *)self _createMonthHighlightForMonthView:viewCopy day:v9];
        [*(&self->_pressedDay + 1) setPressed:1];
      }

      scrollView2 = [(InfiniteScrollViewController *)self scrollView];
      [scrollView2 setScrollEnabled:0];

      [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:v9];
      [(MultiColumnMonthViewController *)self _scrollListToNewSelectedDateAnimated:0];
      v11 = CUIKTodayDate();
      calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
      timeZone = [calendar timeZone];
      v14 = [EKCalendarDate calendarDateWithDate:v11 timeZone:timeZone];
      v15 = [(InfiniteScrollViewController *)self subviewForDate:v14];

      if (v15)
      {
        [v15 haltTodayPulse];
      }
    }
  }
}

- (void)monthView:(id)view gestureChanged:(id)changed
{
  viewCopy = view;
  changedCopy = changed;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  isDecelerating = [scrollView isDecelerating];

  if (isDecelerating)
  {
    v13 = viewCopy;
  }

  else
  {
    v13 = [(MultiColumnMonthViewController *)self _viewFromGesture:changedCopy];

    v10 = [(MultiColumnMonthViewController *)self _dayInMonth:v13 fromGesture:changedCopy];
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

- (void)monthView:(id)view gestureEnded:(id)ended
{
  viewCopy = view;
  endedCopy = ended;
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  isDecelerating = [scrollView isDecelerating];

  if ((isDecelerating & 1) == 0)
  {
    v10 = [(MultiColumnMonthViewController *)self _viewFromGesture:endedCopy];

    v11 = [(MultiColumnMonthViewController *)self _dayInMonth:v10 fromGesture:endedCopy];
    v12 = v11;
    if (v10 != *(&self->_pressHighlight + 1) || v11 == 0)
    {
      scrollView2 = [(InfiniteScrollViewController *)self scrollView];
      [scrollView2 setScrollEnabled:1];
    }

    else
    {
      v15 = [v11 compare:*(&self->super._applicationResuming + 1)];
      scrollView3 = [(InfiniteScrollViewController *)self scrollView];
      [scrollView3 setScrollEnabled:1];

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

  v10 = viewCopy;
LABEL_12:
}

- (void)monthView:(id)view gestureCancelled:(id)cancelled
{
  v5 = [(InfiniteScrollViewController *)self scrollView:view];
  [v5 setScrollEnabled:1];

  [(MultiColumnMonthViewController *)self _removeMonthHighlight];
}

- (id)_dayInMonth:(id)month fromGesture:(id)gesture
{
  monthCopy = month;
  [gesture locationInView:monthCopy];
  v6 = [monthCopy dayForPoint:?];

  return v6;
}

- (void)_createMonthHighlightForMonthView:(id)view day:(id)day
{
  viewCopy = view;
  dayCopy = day;
  [(MultiColumnMonthViewController *)self _removeMonthHighlight];
  v8 = *(&self->super._applicationResuming + 1);
  *(&self->super._applicationResuming + 1) = dayCopy;
  v11 = dayCopy;

  v9 = *(&self->_pressHighlight + 1);
  *(&self->_pressHighlight + 1) = viewCopy;
  v10 = viewCopy;

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

- (void)_setSelectedDay:(id)day
{
  selectedDate = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  v6 = [(InfiniteScrollViewController *)self subviewForDate:selectedDate];

  selectedDate2 = [(CUIKCalendarModel *)self->super.super.super.super._model selectedDate];
  [(MultiColumnMonthViewController *)self _setSelectedDay:selectedDate2 onMonthWeekView:v6 animated:0];
}

- (void)_setSelectedDay:(id)day onMonthWeekView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  dayCopy = day;
  viewCopy = view;
  v9 = *(&self->_pressedMonthView + 1);
  if (v9 != viewCopy)
  {
    [v9 setSelectedDay:0 animated:0];
    v10 = *(&self->_pressedMonthView + 1);
    *(&self->_pressedMonthView + 1) = 0;
  }

  if (dayCopy && viewCopy)
  {
    [viewCopy setSelectedDay:dayCopy animated:animatedCopy];
    objc_storeStrong((&self->_pressedMonthView + 1), view);
  }
}

- (double)_listviewColumnCollapsedWidth
{
  view = [(MultiColumnMonthViewController *)self view];
  [view bounds];
  CGRectGetWidth(v6);
  EKUIGoldenRatioColumnWidthMinor();
  v4 = v3;

  return v4;
}

- (void)_cachedOccurrencesChanged:(id)changed
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

- (void)_occurrencesChanged:(id)changed
{
  if (BYTE5(self->_tempMaskForPocket))
  {
    changedCopy = changed;
    userInfo = [changedCopy userInfo];
    v8 = [userInfo objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeStartKey];

    userInfo2 = [changedCopy userInfo];

    v7 = [userInfo2 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeEndKey];

    [(MultiColumnMonthViewController *)self _loadEventsForViewsInRangeStartingAt:v8 endingAt:v7];
  }

  else
  {
    BYTE6(self->_tempMaskForPocket) = 1;
  }
}

- (void)_loadEventsForViewsInRangeStartingAt:(id)at endingAt:(id)endingAt
{
  atCopy = at;
  endingAtCopy = endingAt;
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
      [atCopy timeIntervalSinceReferenceDate];
      v10 = v9;
      [endingAtCopy timeIntervalSinceReferenceDate];
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
      model = [(MainViewController *)self model];
      [model startNotificationMonitor];

      return;
    }
  }

  else
  {
    v4 = 342;
  }

  *(&self->super.super.super.super.super.super.super.isa + v4) = 1;
}

- (id)_loadEventsForStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
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

    calendarDateForDay = [dateCopy calendarDateForDay];

    calendarDateForEndOfDay = [endDateCopy calendarDateForEndOfDay];

    selfCopy = self;
    calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    timeZone = [calendar timeZone];
    [calendarDateForDay absoluteTime];
    v14 = v13;
    [calendarDateForEndOfDay absoluteTime];
    v16 = v15;
    date = [calendarDateForDay date];
    date2 = [calendarDateForEndOfDay date];
    v101 = 0;
    v102 = 0;
    CalEventOccurrenceCacheCopyBoundsForTimeZone();
    if (timeZone)
    {
      CFRelease(timeZone);
    }

    v20 = v101;
    v19 = v102;
    v21 = [calendarDateForEndOfDay differenceInDays:calendarDateForDay];
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

    v90 = date;
    v91 = calendarDateForEndOfDay;
    v88 = v101;
    v89 = v102;
    if ([date compare:v102] == 1 && objc_msgSend(date2, "compare:", v101) == -1)
    {
      v53 = selfCopy;
      if (([(CUIKCalendarModel *)selfCopy->super.super.super.super._model cachedOccurrencesAreLoaded]& 1) == 0)
      {
        if ((BYTE4(selfCopy->_tempMaskForPocket) & 1) == 0)
        {
          BYTE4(selfCopy->_tempMaskForPocket) = 1;
          v62 = dispatch_get_global_queue(0, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10012A9C8;
          block[3] = &unk_10020EB00;
          block[4] = selfCopy;
          dispatch_async(v62, block);
        }

        v8 = 0;
        goto LABEL_41;
      }

      v54 = [(CUIKCalendarModel *)selfCopy->super.super.super.super._model sectionForCachedOccurrencesOnDate:date];
      v55 = [(CUIKCalendarModel *)selfCopy->super.super.super.super._model sectionForCachedOccurrencesOnDate:date2];
      v56 = [(CUIKCalendarModel *)selfCopy->super.super.super.super._model dateForCachedOccurrencesInSection:v54];
      [v56 timeIntervalSinceReferenceDate];
      v58 = v57;

      v84 = v55;
      v59 = [(CUIKCalendarModel *)selfCopy->super.super.super.super._model dateForCachedOccurrencesInSection:v55];
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
        v86 = date2;
        do
        {
          v63 = [(CUIKCalendarModel *)v53->super.super.super.super._model numberOfCachedOccurrencesInSection:v54];
          if (v63 >= 1)
          {
            v64 = v63;
            v92 = [(CUIKCalendarModel *)v53->super.super.super.super._model cachedSpecialDayDataForSection:v54];
            v87 = [(CUIKCalendarModel *)v53->super.super.super.super._model dateForCachedOccurrencesInSection:v54];
            v65 = [calendar components:30 fromDate:?];
            month = [v65 month];
            if (month == [calendarDateForDay month])
            {
              v67 = [v65 day];
              v68 = v67 - [calendarDateForDay day];
              if (v68 >= 0 && v68 < [v23 count])
              {
                v82 = v68;
                v83 = v65;
                if (v92)
                {
                  dayType = [v92 dayType];
                }

                else
                {
                  dayType = 0;
                }

                v70 = [CompactMonthWeekDayData dayDataWithEventCount:v64 dayType:dayType];
                color = [v92 color];
                [v70 setDayTypeBadgeColor:color];

                locale = [v92 locale];
                v81 = v70;
                [v70 setDayTypeBadgeLocale:locale];

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

                date2 = v86;
                v53 = selfCopy;
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
      v85 = date2;
      v25 = [(CUIKCalendarModel *)selfCopy->super.super.super.super._model occurrencesForStartDate:date endDate:date2 preSorted:1 waitForLoad:0];
      occurrences = [v25 occurrences];

      v27 = [occurrences count];
      if (v27 >= 1)
      {
        v28 = v27;
        v29 = 0;
        v94 = occurrences;
        do
        {
          v30 = [occurrences objectAtIndex:v29];
          startDate = [v30 startDate];
          [startDate timeIntervalSinceReferenceDate];
          v33 = v32;

          endDate = [v30 endDate];
          [endDate timeIntervalSinceReferenceDate];
          v36 = v35;

          endCalendarDate = [v30 endCalendarDate];
          allComponents = [endCalendarDate allComponents];

          if (![allComponents hour] && !objc_msgSend(allComponents, "minute"))
          {
            second = [allComponents second];
            v40 = v33 != v36 && second == 0;
            if (v40)
            {
              v36 = v36 + -1.0;
            }
          }

          if (v33 > v16 || v36 < v14)
          {
            v47 = allComponents;
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
            v45 = [calendar components:30 fromDate:v44];

            v46 = [NSDate dateWithTimeIntervalSinceReferenceDate:v43];
            v47 = [calendar components:30 fromDate:v46];

            v48 = [v45 day];
            if (v48 <= [v47 day])
            {
              do
              {
                v49 = v48 - [calendarDateForDay day];
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
            occurrences = v94;
          }

          ++v29;
        }

        while (v29 != v28);
      }

      date2 = v85;
    }

    v8 = v23;
    date = v90;
    calendarDateForEndOfDay = v91;
    v20 = v88;
    v19 = v89;
LABEL_41:

    goto LABEL_44;
  }

  v8 = 0;
LABEL_43:
  calendarDateForEndOfDay = endDateCopy;
  calendarDateForDay = dateCopy;
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
  scrollView = [(InfiniteScrollViewController *)self scrollView];
  if ([scrollView isDragging])
  {
    goto LABEL_6;
  }

  scrollView2 = [(InfiniteScrollViewController *)self scrollView];
  if ([scrollView2 isTracking])
  {
LABEL_5:

LABEL_6:
LABEL_7:
    scrollView3 = [(InfiniteScrollViewController *)self scrollView];
    [scrollView3 _verticalVelocity];
    v8 = v7;

    return v8;
  }

  scrollView4 = [(InfiniteScrollViewController *)self scrollView];
  if ([scrollView4 isDecelerating])
  {

    goto LABEL_5;
  }

  scrollView5 = [(InfiniteScrollViewController *)self scrollView];
  isScrollAnimating = [scrollView5 isScrollAnimating];

  if (isScrollAnimating)
  {
    goto LABEL_7;
  }

  return 0.0;
}

- (BOOL)_allowedToDisplayEventDetailsColumn
{
  view = [(MultiColumnMonthViewController *)self view];
  if (EKUICurrentHeightSizeClassIsRegular())
  {
    v3 = +[CUIKPreferences sharedPreferences];
    showExperimentalUI = [v3 showExperimentalUI];
  }

  else
  {
    showExperimentalUI = 0;
  }

  return showExperimentalUI;
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
  superview = [*(&self->_blankViewController + 1) superview];

  if (!superview)
  {
    v4 = objc_alloc_init(UINavigationController);
    v5 = *(&self->_palette + 1);
    *(&self->_palette + 1) = v4;

    view = [*(&self->_palette + 1) view];
    [view setClipsToBounds:1];

    v7 = [LargeDayNavigationWrapperView alloc];
    view2 = [*(&self->_palette + 1) view];
    v9 = [(LargeDayNavigationWrapperView *)v7 initWithNavigationView:view2];
    v10 = *(&self->_blankViewController + 1);
    *(&self->_blankViewController + 1) = v9;

    [*(&self->_blankViewController + 1) setClipsToBounds:1];
    [(MultiColumnMonthViewController *)self addChildViewController:*(&self->_palette + 1)];
    [*(&self->_palette + 1) didMoveToParentViewController:self];
    view3 = [(MultiColumnMonthViewController *)self view];
    [view3 addSubview:*(&self->_blankViewController + 1)];

    view4 = [(MultiColumnMonthViewController *)self view];
    [view4 sendSubviewToBack:*(&self->_blankViewController + 1)];

    [(MultiColumnMonthViewController *)self _updateEventDetailsColumnViewFrame];
  }
}

- (void)_updateEventDetailsColumnViewFrame
{
  view = [(MultiColumnMonthViewController *)self view];
  [view bounds];
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

- (void)_slideToShowEventDetails:(id)details animated:(BOOL)animated
{
  animatedCopy = animated;
  detailsCopy = details;
  if ([(MultiColumnMonthViewController *)self _allowedToDisplayEventDetailsColumn])
  {
    [(MultiColumnMonthViewController *)self _createEventDetailsColumn];
    objc_storeStrong((&self->_navigationWrapperView + 1), details);
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
      v35 = animatedCopy;
      v10 = v8;
      dispatch_after(v9, &_dispatch_main_q, block);
    }

    presentedViewController = [*(&self->_palette + 1) presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [*(&self->_palette + 1) dismissViewControllerWithTransition:0 completion:0];
    }

    v13 = [*(&self->_palette + 1) popToRootViewControllerAnimated:0];
    [*(&self->_palette + 1) pushViewController:*(&self->_navigationWrapperView + 1) animated:0];
    navigationItem = [*(&self->_navigationWrapperView + 1) navigationItem];
    [navigationItem setHidesBackButton:1];

    [*(&self->_palette + 1) setNavigationBarHidden:0];
    [(MultiColumnMonthViewController *)self viewWillLayoutSubviews];
    view = [*(&self->_navigationWrapperView + 1) view];
    [view layoutMargins];
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
    view2 = [*(&self->_navigationWrapperView + 1) view];
    [view2 setLayoutMargins:{v17, v27, v19, v23}];

    if (![(MultiColumnMonthViewController *)self _viewingEventDetailsColumn])
    {
      v29 = +[CUIKPreferences sharedPreferences];
      [v29 setLargeListViewDisclosingEventDetails:1];

      BYTE4(self->_navigationBarDisplayedDate) = 1;
      if (![(MultiColumnMonthViewController *)self _shouldDisplayThreeColumns])
      {
        [(MultiColumnMonthViewController *)self _slideToAnimatePalleteShowingBackButton:1 animated:animatedCopy];
      }

      v30 = 0.0;
      if (animatedCopy)
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

- (void)_slideToAnimatePalleteShowingBackButton:(BOOL)button animated:(BOOL)animated
{
  animatedCopy = animated;
  [*&self->_editorPresentedProgramatically setHidden:0];
  [*&self->_editorPresentedProgramatically setAlpha:0.0];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10012B490;
  v11[3] = &unk_10020EAD8;
  buttonCopy = button;
  v11[4] = self;
  v7 = objc_retainBlock(v11);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10012B4F4;
  v9[3] = &unk_100210008;
  buttonCopy2 = button;
  v9[4] = self;
  v8 = objc_retainBlock(v9);
  if (animatedCopy)
  {
    [UIView animateWithDuration:0 delay:v7 usingSpringWithDamping:v8 initialSpringVelocity:0.5 options:0.0 animations:2.0 completion:0.0];
  }

  else
  {
    (v7[2])(v7);
    (v8[2])(v8, 1);
  }
}

- (void)_slideToHideEventDetailsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(MultiColumnMonthViewController *)self _allowedToDisplayEventDetailsColumn])
  {
    tableView = [*(&self->_singleDayListViewController + 1) tableView];
    tableView2 = [*(&self->_singleDayListViewController + 1) tableView];
    indexPathForSelectedRow = [tableView2 indexPathForSelectedRow];
    [tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:animatedCopy];

    v8 = +[CUIKPreferences sharedPreferences];
    [v8 setLargeListViewDisclosingEventDetails:0];

    BYTE4(self->_navigationBarDisplayedDate) = 0;
    [(MultiColumnMonthViewController *)self _slideToAnimatePalleteShowingBackButton:0 animated:animatedCopy];
    v9 = 0.0;
    if (animatedCopy)
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
  eKUI_viewHierarchy = [(MainViewController *)self EKUI_viewHierarchy];
  [eKUI_viewHierarchy ekui_interfaceOrientation];

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

- (id)pushedWeekViewControllerWithDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(MultiColumnMonthViewController *)self nextLevelWeekViewControllerWithDate:date];
  navigationController = [(MultiColumnMonthViewController *)self navigationController];
  [navigationController pushViewController:v6 animated:animatedCopy];

  return v6;
}

- (id)nextLevelWeekViewControllerWithDate:(id)date
{
  [(CUIKCalendarModel *)self->super.super.super.super._model setSelectedDate:date];
  v4 = [WeekViewContainerViewController alloc];
  model = self->super.super.super.super._model;
  window = [(MainViewController *)self window];
  v7 = [(MainViewControllerContainer *)v4 initWithModel:model window:window];

  return v7;
}

- (CGRect)frameForWeekContainingDate:(id)date
{
  model = self->super.super.super.super._model;
  dateCopy = date;
  calendar = [(CUIKCalendarModel *)model calendar];
  timeZone = [calendar timeZone];
  v8 = [EKCalendarDate calendarDateWithDate:dateCopy timeZone:timeZone];

  v9 = [(InfiniteScrollViewController *)self subviewForDate:v8];
  v10 = v9;
  if (v9)
  {
    [v9 rectForCells];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    view = [(MultiColumnMonthViewController *)self view];
    [view convertRect:v10 fromView:{v12, v14, v16, v18}];
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
  calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
  timeZone = [calendar timeZone];
  v6 = [EKCalendarDate calendarDateWithDate:v3 timeZone:timeZone];

  v7 = [(InfiniteScrollViewController *)self subviewForDate:v6];
  v8 = v7;
  if (v7)
  {
    [v7 frameForTodayHighlight];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    view = [(MultiColumnMonthViewController *)self view];
    [view convertRect:v8 fromView:{v10, v12, v14, v16}];
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

- (double)heightForSubviewWithCalendarDate:(id)date
{
  dateCopy = date;
  _monthWeekViewsUseVerticalCompression = [(MultiColumnMonthViewController *)self _monthWeekViewsUseVerticalCompression];
  view = [(MultiColumnMonthViewController *)self view];
  EKUICurrentWindowSize();
  [CompactMonthWeekView heightForViewWithCalendarDate:"heightForViewWithCalendarDate:compressed:windowSize:scale:" compressed:dateCopy windowSize:_monthWeekViewsUseVerticalCompression scale:?];
  v8 = v7;

  return v8;
}

- (double)showDateVerticalOffset
{
  _monthWeekViewsUseVerticalCompression = [(MultiColumnMonthViewController *)self _monthWeekViewsUseVerticalCompression];

  [(MultiColumnMonthViewController *)self _showDateVerticalOffsetWithVerticalCompression:_monthWeekViewsUseVerticalCompression];
  return result;
}

- (double)_showDateVerticalOffsetWithVerticalCompression:(BOOL)compression
{
  v4 = -12.0;
  if (compression)
  {
    +[CompactMonthWeekView headerHeight];
    v4 = v5;
  }

  EKUIScaleFactor();
  v7 = v4 + 2.0 / v6;
  traitCollection = [(MultiColumnMonthViewController *)self traitCollection];
  v9 = EKUIUsesLargeTextLayout();

  if (v9)
  {
    EKUIScaleFactor();
    return v7 + 1.0 / v10;
  }

  return v7;
}

- (int64_t)eventCountDisplayedForDate:(id)date
{
  dateCopy = date;
  v5 = [(InfiniteScrollViewController *)self subviewForDate:dateCopy];
  v6 = [dateCopy day];

  calendarDate = [v5 calendarDate];
  v8 = [calendarDate day];

  if (!v5)
  {
    goto LABEL_7;
  }

  eventData = [v5 eventData];
  eventCount = 0;
  if (!eventData)
  {
    goto LABEL_6;
  }

  v11 = v6 - v8;
  if (v11 < 0)
  {
    goto LABEL_6;
  }

  eventData2 = [v5 eventData];
  v13 = [eventData2 count];

  if (v11 >= v13)
  {
LABEL_7:
    eventCount = 0;
    goto LABEL_8;
  }

  eventData3 = [v5 eventData];
  eventData = [eventData3 objectAtIndex:v11];

  eventCount = [eventData eventCount];
LABEL_6:

LABEL_8:
  return eventCount;
}

- (void)_updateInfiniteScrollViewFrame
{
  view = [(MultiColumnMonthViewController *)self view];
  [view bounds];
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
      largeListViewDisclosingEventDetails = [v15 largeListViewDisclosingEventDetails];

      if (largeListViewDisclosingEventDetails)
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

    scrollView = [(InfiniteScrollViewController *)self scrollView];
    [scrollView setFrame:{MinX, v7, MidX, v11}];
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

    view = [(MultiColumnMonthViewController *)self view];
    [view addSubview:*(&self->_selectedMonthWeekView + 1)];

    v7 = [[CompactMonthListViewController alloc] initWithModel:self->super.super.super.super._model];
    v8 = *(&self->_listViewContainer + 1);
    *(&self->_listViewContainer + 1) = v7;

    [*(&self->_listViewContainer + 1) setCompactMonthListViewDelegate:self];
    view2 = [*(&self->_listViewContainer + 1) view];
    [view2 setAutoresizingMask:18];

    [*(&self->_selectedMonthWeekView + 1) bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    view3 = [*(&self->_listViewContainer + 1) view];
    [view3 setFrame:{v11, v13, v15, v17}];

    v19 = [ListViewController alloc];
    model = self->super.super.super.super._model;
    window = [(MainViewController *)self window];
    v22 = [(ListViewController *)v19 initWithModel:model window:window];
    v23 = *(&self->_singleDayListViewController + 1);
    *(&self->_singleDayListViewController + 1) = v22;

    [*(&self->_singleDayListViewController + 1) setAllowExtendedHeightCells:1];
    view4 = [*(&self->_singleDayListViewController + 1) view];
    [view4 setAutoresizingMask:18];

    [*(&self->_selectedMonthWeekView + 1) bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    view5 = [*(&self->_singleDayListViewController + 1) view];
    [view5 setFrame:{v26, v28, v30, v32}];

    [*(&self->_singleDayListViewController + 1) setDelegate:self];

    [(MultiColumnMonthViewController *)self _updateListViewModeForCurrentTraits];
  }
}

- (void)_updateListViewModeForCurrentTraits
{
  _listViewShowsSingleDay = [(MultiColumnMonthViewController *)self _listViewShowsSingleDay];
  if (_listViewShowsSingleDay)
  {
    v4 = &OBJC_IVAR___MultiColumnMonthViewController__multiDayListViewController;
  }

  else
  {
    v4 = &OBJC_IVAR___MultiColumnMonthViewController__singleDayListViewController;
  }

  if (_listViewShowsSingleDay)
  {
    v5 = &OBJC_IVAR___MultiColumnMonthViewController__singleDayListViewController;
  }

  else
  {
    v5 = &OBJC_IVAR___MultiColumnMonthViewController__multiDayListViewController;
  }

  v6 = *v4;
  [*(&self->super.super.super.super.super.super.super.isa + v6) removeFromParentViewController];
  view = [*(&self->super.super.super.super.super.super.super.isa + v6) view];
  [view removeFromSuperview];

  v8 = *v5;
  [(MultiColumnMonthViewController *)self addChildViewController:*(&self->super.super.super.super.super.super.super.isa + v8)];
  v9 = *(&self->_selectedMonthWeekView + 1);
  view2 = [*(&self->super.super.super.super.super.super.super.isa + v8) view];
  [v9 addSubview:view2];

  v11 = *(&self->super.super.super.super.super.super.super.isa + v8);

  [v11 didMoveToParentViewController:self];
}

- (BOOL)_listViewShowsSingleDay
{
  ekui_futureTraitCollection = [(MultiColumnMonthViewController *)self ekui_futureTraitCollection];
  if ([ekui_futureTraitCollection verticalSizeClass] == 1)
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
  view = [(MultiColumnMonthViewController *)self view];
  [view bounds];
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
    largeListViewDisclosingEventDetails = [v15 largeListViewDisclosingEventDetails];

    if (largeListViewDisclosingEventDetails)
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
    view2 = [(MultiColumnMonthViewController *)self view];
    [view2 safeAreaInsets];
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

- (void)navigateToEventDetails:(id)details fromController:(id)controller
{
  detailsCopy = details;
  controllerCopy = controller;
  v8 = CUIKTodayDate();
  calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
  timeZone = [calendar timeZone];
  v11 = [EKCalendarDate calendarDateWithDate:v8 timeZone:timeZone];

  v12 = [(InfiniteScrollViewController *)self subviewForDate:v11];
  [v12 setDisableTodayPulse:1];
  [*(&self->_listViewContainer + 1) deselectAllRowsAnimated:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10012CB08;
  v16[3] = &unk_10020F290;
  v16[4] = self;
  v17 = controllerCopy;
  v18 = detailsCopy;
  v19 = v12;
  v13 = v12;
  v14 = detailsCopy;
  v15 = controllerCopy;
  [(MultiColumnMonthViewController *)self dismissViewControllerAnimated:1 completion:v16];
}

- (void)eventViewControllerNextButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  event = [tappedCopy event];
  nextOccurrence = [event nextOccurrence];

  if (nextOccurrence)
  {
    [(MultiColumnMonthViewController *)self navigateToEventDetails:nextOccurrence fromController:tappedCopy];
  }
}

- (void)eventViewControllerPreviousButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  event = [tappedCopy event];
  previousOccurrence = [event previousOccurrence];

  if (previousOccurrence)
  {
    [(MultiColumnMonthViewController *)self navigateToEventDetails:previousOccurrence fromController:tappedCopy];
  }
}

- (void)_showDetailsForEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  animatedCopy = animated;
  eventCopy = event;
  v11 = [(MainViewController *)self augmentEventDetailsContext:context];
  v12 = [EKEventViewController eventDetailViewControllerWithEvent:eventCopy delegate:self context:v11 canvasView:2];
  model = [(MainViewController *)self model];
  [model setSelectedOccurrence:eventCopy];

  view = [(MultiColumnMonthViewController *)self view];
  LODWORD(model) = EKUICurrentHeightSizeClassIsRegular();

  if (model)
  {
    [(MultiColumnMonthViewController *)self _slideToShowEventDetails:v12 animated:animatedCopy];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10012CF24;
    v15[3] = &unk_100211EC0;
    selfCopy = self;
    modeCopy = mode;
    v16 = v12;
    [(MainViewController *)self showViewController:v16 sender:self animated:animatedCopy completion:v15];
  }
}

- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  controllerCopy = controller;
  [*(&self->_listViewContainer + 1) deselectAllRowsAnimated:1];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10012D12C;
  v10 = &unk_10020EC68;
  selfCopy = self;
  v12 = controllerCopy;
  v6 = controllerCopy;
  [(MultiColumnMonthViewController *)self dismissViewControllerAnimated:1 completion:&v7];
  if ([(MultiColumnMonthViewController *)self _viewingEventDetailsColumn:v7])
  {
    [(MultiColumnMonthViewController *)self _autoSelectEvent];
  }
}

- (void)eventViewController:(id)controller requestsDismissalOfEditViewController:(id)viewController
{
  viewControllerCopy = viewController;
  [viewControllerCopy setModalTransitionStyle:2];
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
    [viewControllerCopy dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)compactMonthListViewController:(id)controller wantsToCommitViewControllerFromPreview:(id)preview
{
  event = [preview event];
  [(MultiColumnMonthViewController *)self _showDetailsForEvent:event animated:1 showMode:1 context:0];
}

- (void)listViewController:(id)controller didScrollToDate:(id)date
{
  controllerCopy = controller;
  dateCopy = date;
  if ((BYTE3(self->_navigationBarDisplayedDate) & 1) == 0 && (![(MultiColumnMonthViewController *)self _viewingEventDetailsColumn]|| [(MultiColumnMonthViewController *)self _shouldDisplayThreeColumns]))
  {
    v8 = CUIKTodayDate();
    calendar = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    timeZone = [calendar timeZone];
    v11 = [EKCalendarDate calendarDateWithDate:v8 timeZone:timeZone];

    calendar2 = [(CUIKCalendarModel *)self->super.super.super.super._model calendar];
    timeZone2 = [calendar2 timeZone];
    v14 = [EKCalendarDate calendarDateWithDate:dateCopy timeZone:timeZone2];

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
      selfCopy = self;
      v19 = v14;
      [(MultiColumnMonthViewController *)self showDate:dateCopy animated:1 completionBlock:v16];
    }
  }
}

@end