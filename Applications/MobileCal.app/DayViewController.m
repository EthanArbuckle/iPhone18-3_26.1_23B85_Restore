@interface DayViewController
- (BOOL)allEventsIndividuallyRepresented:(id)a3;
- (BOOL)creationGestureController:(id)a3 canActivateAtPoint:(CGPoint)a4;
- (BOOL)currentlyEditingEventsWithGestures;
- (BOOL)dayViewController:(id)a3 willDuplicateOccurrence:(id)a4;
- (BOOL)dayViewControllerShouldAllowLongPress:(id)a3;
- (BOOL)didSelectEvent:(id)a3 userInitiated:(BOOL)a4;
- (BOOL)didSelectEvents:(id)a3 userInitiated:(BOOL)a4;
- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4;
- (BOOL)isDateVisible:(id)a3;
- (BOOL)provideExternalRepresentationsForEvent:(id)a3 withProvider:(id)a4;
- (CGPoint)creationGestureController:(id)a3 requestsPointForDate:(id)a4;
- (CGRect)scrubberFrameWithPaletteView:(id)a3;
- (CGSize)cellSize;
- (DayViewController)initWithDay:(id)a3 model:(id)a4 window:(id)a5;
- (double)creationGestureController:(id)a3 requestedWidthForEventPreview:(id)a4 atPoint:(CGPoint)a5;
- (double)creationGestureController:(id)a3 requestedXCoordinateForEventPreviewAtPoint:(CGPoint)a4;
- (double)dayViewControllerPersistedHourScalePreference:(id)a3;
- (double)firstCellInset;
- (id)_parentViewForCreationGesture;
- (id)_selectedOccurrenceFrontmostClonedViews;
- (id)cellFactory;
- (id)creationGestureController:(id)a3 dateForPoint:(CGPoint)a4;
- (id)creationGestureController:(id)a3 requestedPreviewForEvent:(id)a4;
- (id)creationGestureControllerRequestsNewEvent:(id)a3;
- (id)dayViewController:(id)a3 createEventAtDate:(id)a4 allDay:(BOOL)a5;
- (id)dayViewController:(id)a3 createReminderAtDate:(id)a4 allDay:(BOOL)a5;
- (id)pasteboardManager;
- (id)pasteboardManagerForEventEditViewController:(id)a3;
- (id)sceneTitle;
- (id)showDetailViewControllerForEvent:(id)a3 context:(id)a4 animated:(BOOL)a5;
- (id)showDetailViewControllerForEvents:(id)a3 animated:(BOOL)a4;
- (int)savedFirstVisibleSecond;
- (int64_t)intendedSizeClass;
- (int64_t)scrubberFirstVisibleDayOffsetFromSelectedDay;
- (void)_cleanupSelectedOccurrenceCloneViews;
- (void)_cleanupSelectedOccurrenceCloneViewsRespectingModelSelected;
- (void)_cleanupSelectedOccurrenceCloneViewsSkipSet:(id)a3;
- (void)_occurrencesChanged:(id)a3;
- (void)_receivedSelectedDateChangeNotification:(id)a3;
- (void)_recursiveRemoveSelectedClonedViewsFromViewTree:(id)a3 skipSet:(id)a4;
- (void)_sceneEnteredForeground:(id)a3;
- (void)_scrollToEvent:(id)a3 animated:(BOOL)a4;
- (void)_selectedOccurrencesChanged:(id)a3;
- (void)_setUpSelectedOccurrenceViewsWithEvents:(id)a3 animated:(BOOL)a4 autoScroll:(BOOL)a5 resetSelection:(BOOL)a6;
- (void)_showDetailForEvent:(id)a3 animated:(BOOL)a4 showComments:(BOOL)a5 context:(id)a6;
- (void)_showDetailForEvent:(id)a3 animated:(BOOL)a4 userInitiated:(BOOL)a5;
- (void)_showDetailForEvents:(id)a3 animated:(BOOL)a4;
- (void)_showDetailForEvents:(id)a3 animated:(BOOL)a4 userInitiated:(BOOL)a5;
- (void)_showNowWhenSameDaySelected;
- (void)_showWeekdayLabelPreferenceChanged;
- (void)_significantTimeChanged:(id)a3;
- (void)_timeZoneChanged:(id)a3;
- (void)_updateNavigationTitleToDate:(id)a3;
- (void)addEventToSelection:(id)a3;
- (void)beginEditingOccurrence:(id)a3 creationMethod:(unint64_t)a4;
- (void)creationGestureController:(id)a3 didCreateNewEvent:(id)a4;
- (void)creationGestureController:(id)a3 didResizeToDate:(id)a4;
- (void)creationGestureControllerDidCancel:(id)a3;
- (void)currentlyVisibleDateRangeFromStartDate:(id *)a3 toEndDate:(id *)a4;
- (void)dataReloadedWithTrigger:(int)a3;
- (void)dayNavigationViewController:(id)a3 didSelectDate:(id)a4;
- (void)dayOccurrenceViewSelected:(id)a3 source:(unint64_t)a4;
- (void)dayViewController:(id)a3 didChangeDisplayDate:(id)a4;
- (void)dayViewController:(id)a3 didChangeDisplayedOccurrencesDueToTrigger:(int)a4;
- (void)dayViewController:(id)a3 didSelectEvent:(id)a4 animated:(BOOL)a5 userInitiated:(BOOL)a6;
- (void)dayViewController:(id)a3 didSelectEvents:(id)a4 animated:(BOOL)a5 userInitiated:(BOOL)a6;
- (void)dayViewController:(id)a3 didStartDeceleratingTargettingDate:(id)a4;
- (void)dayViewController:(id)a3 modifySelection:(id)a4;
- (void)dayViewController:(id)a3 pointerDidTargetOccurrences:(id)a4;
- (void)dayViewController:(id)a3 requestsPresentationOfViewControllerForGestures:(id)a4;
- (void)dayViewController:(id)a3 requestsSaveFirstVisibleSecondPreference:(int)a4;
- (void)dayViewController:(id)a3 requestsSaveHourScalePreference:(double)a4;
- (void)dayViewControllerDidBeginMovingEventWithGesture:(id)a3;
- (void)dayViewControllerDidEndScrolling:(id)a3;
- (void)dayViewControllerDidTapEmptySpace:(id)a3 onDate:(id)a4;
- (void)dayViewDidChangeSelectedDate:(id)a3;
- (void)dealloc;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 dismissController:(BOOL)a5 completionHandler:(id)a6;
- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)eventViewController:(id)a3 requestsShowEvent:(id)a4;
- (void)eventViewControllerNextButtonWasTapped:(id)a3;
- (void)eventViewControllerPreviousButtonWasTapped:(id)a3;
- (void)eventViewControllerWillDisappear:(id)a3;
- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4;
- (void)extendedLaunchCompletedByViewType:(int)a3;
- (void)finishedPinchingDayView;
- (void)loadView;
- (void)presentDetailsForEvents:(id)a3 animated:(BOOL)a4 showComments:(BOOL)a5 context:(id)a6;
- (void)removeEventFromSelection:(id)a3;
- (void)saveFirstVisibleSecond:(int)a3;
- (void)scrubberDidChangeSelectedDate:(id)a3;
- (void)selectDate:(id)a3 andTime:(BOOL)a4 animated:(BOOL)a5;
- (void)setVisible:(BOOL)a3;
- (void)showEditViewController:(id)a3;
- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)showNowAnimated:(BOOL)a3;
- (void)showReminderDetail:(id)a3;
- (void)updatePalette:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DayViewController

- (CGSize)cellSize
{
  v2 = [(DayNavigationViewController *)self->_scrubberControllerNeue weekScrollView];
  [v2 cellSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)loadView
{
  v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v10 setAutoresizingMask:18];
  v3 = +[UIColor systemBackgroundColor];
  [v10 setBackgroundColor:v3];

  v4 = [[DayNavigationViewController alloc] initWithModel:self->super._model];
  scrubberControllerNeue = self->_scrubberControllerNeue;
  self->_scrubberControllerNeue = v4;

  v6 = [(DayViewController *)self cellFactory];
  [(DayNavigationViewController *)self->_scrubberControllerNeue setCellFactory:v6];

  [(DayNavigationViewController *)self->_scrubberControllerNeue setDelegate:self];
  [(DayViewController *)self addChildViewController:self->_scrubberControllerNeue];
  [(DayNavigationViewController *)self->_scrubberControllerNeue didMoveToParentViewController:self];
  v7 = [[EKDayViewController alloc] initWithTargetSizeClass:{-[DayViewController intendedSizeClass](self, "intendedSizeClass")}];
  dayViewController = self->_dayViewController;
  self->_dayViewController = v7;

  [(EKDayViewController *)self->_dayViewController setShouldLogVisibleEvents:1];
  [(EKDayViewController *)self->_dayViewController setShouldAutoscrollAfterAppearance:0];
  [(EKDayViewController *)self->_dayViewController setDataSource:self];
  [(EKDayViewController *)self->_dayViewController setDelegate:self];
  [(EKDayViewController *)self->_dayViewController setShowsBanner:0];
  [(EKDayViewController *)self->_dayViewController setAlwaysAnimate:1];
  [(EKDayViewController *)self->_dayViewController setDisableNotifyDateChangeDuringTracking:1];
  v9 = [(DayViewController *)self navigationController];
  -[EKDayViewController setPreloadExtraDays:](self->_dayViewController, "setPreloadExtraDays:", [v9 extendedLaunchFinished]);

  [(EKDayViewController *)self->_dayViewController setShowWeekdayLabel:[(DayViewController *)self showWeekdayLabel]];
  [(DayViewController *)self addChildViewController:self->_dayViewController];
  [(EKDayViewController *)self->_dayViewController didMoveToParentViewController:self];
  [(DayViewController *)self setView:v10];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = DayViewController;
  [(DayViewController *)&v15 viewDidLoad];
  [(DayViewController *)self selectDate:self->_day animated:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_sceneEnteredForeground:" name:UISceneWillEnterForegroundNotification object:0];
  v4 = [(DayViewController *)self savedFirstVisibleSecond];
  v5 = [(DayViewController *)self dayView];
  [v5 setStartingFirstVisibleSecond:v4];

  v6 = [EKEventCreationGestureController alloc];
  v7 = [(DayViewController *)self dayView];
  v8 = [v7 view];
  v9 = [v6 initWithView:v8 delegate:self];
  eventCreationGestureController = self->_eventCreationGestureController;
  self->_eventCreationGestureController = v9;

  v11 = [(MainViewController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  v12 = [(DayViewController *)self view];
  v13 = [(EKDayViewController *)self->_dayViewController view];
  [v12 addSubview:v13];

  v14 = [(MainViewController *)self window];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

- (void)_showNowWhenSameDaySelected
{
  [(DayViewController *)self showNowAnimated:[(DayViewController *)self shouldRespondToApplicationDidBecomeActiveStateChange]^ 1];
  if ([(DayViewController *)self shouldRespondToApplicationDidBecomeActiveStateChange])
  {

    [(DayViewController *)self setShouldRespondToApplicationDidBecomeActiveStateChange:0];
  }
}

- (int)savedFirstVisibleSecond
{
  if (!EKUIShouldSaveStateInPreferences())
  {
    v8 = [(MainViewController *)self model];
    v9 = [v8 persistedSceneState];

    if (v9)
    {
      v5 = [(MainViewController *)self model];
      v6 = [v5 persistedSceneState];
      v7 = [v6 dayViewFirstVisibleSecond];
      goto LABEL_6;
    }

    return -1;
  }

  v3 = +[CUIKPreferences sharedPreferences];
  v4 = [v3 dayViewFirstVisibleSecond];

  if (!v4)
  {
    return -1;
  }

  v5 = +[CUIKPreferences sharedPreferences];
  v6 = [v5 dayViewFirstVisibleSecond];
  v7 = [v6 intValue];
LABEL_6:
  v10 = v7;

  return v10;
}

- (void)viewWillLayoutSubviews
{
  if (!self->_hasSetUpDayViewInitialLayout)
  {
    v3 = [(MainViewController *)self window];
    EKUIPushFallbackSizingContextWithViewHierarchy();

    v4 = [(EKDayViewController *)self->_dayViewController view];
    [v4 setAutoresizingMask:18];

    v5 = [(DayViewController *)self view];
    [v5 bounds];
    v7 = v6;

    v8 = [(DayViewController *)self view];
    [v8 bounds];
    v10 = v9;

    dayViewController = self->_dayViewController;
    [(EKDayViewController *)dayViewController gutterWidth];
    [(EKDayViewController *)dayViewController setFrame:0.0 gutterWidth:0.0, v7, v10, v12];
    v13 = [(MainViewController *)self window];
    EKUIPopFallbackSizingContextWithViewHierarchy();

    self->_hasSetUpDayViewInitialLayout = 1;
  }

  v14.receiver = self;
  v14.super_class = DayViewController;
  [(DayViewController *)&v14 viewWillLayoutSubviews];
}

- (DayViewController)initWithDay:(id)a3 model:(id)a4 window:(id)a5
{
  v8 = a3;
  v22.receiver = self;
  v22.super_class = DayViewController;
  v9 = [(MainViewController *)&v22 initWithWindow:a5 model:a4];
  if (v9)
  {
    if (CalCanvasPocketEnabled())
    {
      v10 = 15;
    }

    else
    {
      v10 = 0;
    }

    [(DayViewController *)v9 setEdgesForExtendedLayout:v10];
    v11 = [v8 calendarDateForDay];
    day = v9->_day;
    v9->_day = v11;

    v9->_hasReloadedWithData = 0;
    v9->_hasEndedExtendedLaunch = 0;
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v9 selector:"_occurrencesChanged:" name:CUIKCalendarModelDisplayedOccurrencesChangedNotification object:v9->super._model];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v9 selector:"_selectedOccurrencesChanged:" name:CUIKCalendarModelSelectedOccurrencesChangedNotification object:v9->super._model];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v9 selector:"_contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v9 selector:"virtualConferenceAppChanged:" name:EKConferenceUtilsAppRecordChangedNotification object:0];

    model = v9->super._model;
    v18 = [(EKCalendarDate *)v9->_day date];
    v19 = [(EKCalendarDate *)v9->_day calendarDateForEndOfDay];
    v20 = [v19 date];
    [(CUIKCalendarModel *)model setPreferredReloadStartDate:v18 endDate:v20];
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DayViewController;
  [(MainViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v28.receiver = self;
  v28.super_class = DayViewController;
  [(DayViewController *)&v28 viewWillAppear:a3];
  if (self->_viewHasDoneFirstAppearance)
  {
    if ([(MainViewController *)self updateModelPreferredReloadRangeAndReturnWhetherLoadingNeeded])
    {
      [(DayViewController *)self reloadData];
    }
  }

  else
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_significantTimeChanged:" name:CUIKCalendarModelSignificantTimeChangeNotification object:self->super._model];
    [v4 addObserver:self selector:"_timeZoneChanged:" name:CUIKCalendarModelTimeZoneChangedNotification object:self->super._model];
    [v4 addObserver:self selector:"_receivedSelectedDateChangeNotification:" name:CUIKCalendarModelSelectedDateChangedNotification object:self->super._model];
    self->_viewHasDoneFirstAppearance = 1;
  }

  v5 = [(DayViewController *)self navigationItem];
  v6 = [v5 title];
  previousNavigationTitle = self->_previousNavigationTitle;
  self->_previousNavigationTitle = v6;

  v8 = [(DayViewController *)self navigationItem];
  [v8 setTitle:&stru_1002133B8];

  v9 = [(MainViewController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  v10 = [(EKDayViewController *)self->_dayViewController view];
  v11 = [(MainViewController *)self window];
  EKUIPopFallbackSizingContextWithViewHierarchy();

  v12 = [(EKDayViewController *)self->_dayViewController displayDate];
  v13 = [(CUIKCalendarModel *)self->super._model calendar];
  v14 = [v13 timeZone];
  v15 = [EKCalendarDate calendarDateWithDateComponents:v12 timeZone:v14];

  v16 = [(CUIKCalendarModel *)self->super._model calendar];
  v17 = [v15 date];
  v18 = [(CUIKCalendarModel *)self->super._model selectedDate];
  v19 = [v18 date];
  v20 = [v16 isDate:v17 inSameDayAsDate:v19];

  if ((v20 & 1) == 0)
  {
    v21 = [(MainViewController *)self model];
    v22 = [v21 selectedDate];
    [(DayViewController *)self selectDate:v22 animated:0];

    v23 = [(MainViewController *)self model];
    v24 = [v23 selectedDate];

    v15 = v24;
  }

  if (CalSolariumEnabled())
  {
    v25 = [(CUIKCalendarModel *)self->super._model selectedDay];
    [(DayViewController *)self _updateNavigationTitleToDate:v25];
  }

  scrubberControllerNeue = self->_scrubberControllerNeue;
  v27 = [v15 date];
  [(DayNavigationViewController *)scrubberControllerNeue setSelectedDate:v27 animated:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  previousNavigationTitle = self->_previousNavigationTitle;
  self->_previousNavigationTitle = 0;

  v6 = [(DayViewController *)self navigationController];
  v7 = [v6 extendedLaunchFinished];

  if (v7)
  {
    [(CUIKCalendarModel *)self->super._model setDesiredPaddingDays:1];
    [(CUIKCalendarModel *)self->super._model setComponentForExpandingPadding:16];
  }

  v8.receiver = self;
  v8.super_class = DayViewController;
  [(MainViewController *)&v8 viewDidAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  previousNavigationTitle = self->_previousNavigationTitle;
  if (previousNavigationTitle)
  {
    v6 = [(DayViewController *)self navigationItem];
    [v6 setTitle:previousNavigationTitle];

    v7 = self->_previousNavigationTitle;
    self->_previousNavigationTitle = 0;
  }

  v8.receiver = self;
  v8.super_class = DayViewController;
  [(DayViewController *)&v8 viewDidDisappear:v3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  if ([(DayViewController *)self isViewLoaded])
  {
    v8 = [(DayViewController *)self view];
    v9 = [v8 window];

    if (v9)
    {
      v12.receiver = self;
      v12.super_class = DayViewController;
      [(MainViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
      v10 = [(DayViewController *)self dayView];
      [v10 viewWillTransitionToSize:v7 withTransitionCoordinator:{width, height}];

      v11 = [(DayViewController *)self dayScrubberController];
      [v11 viewWillTransitionToSize:v7 withTransitionCoordinator:{width, height}];
    }
  }
}

- (void)updatePalette:(id)a3
{
  v4 = a3;
  [v4 setWeekdayHeaderVisible:1];
  [v4 setWeekdayHeaderFillsHalfWidth:0];
  v11 = [(DayViewController *)self dayScrubberController];
  v5 = [(DayViewController *)self ekui_futureTraitCollection];
  [v11 setShowsWeekNumberWhenEnabled:{objc_msgSend(v5, "horizontalSizeClass") == 2}];

  [v4 setDayScrubberController:v11];
  v6 = [v11 view];
  [v6 setNeedsLayout];

  [v4 setUseCustomDayFrames:0];
  if (CalSolariumEnabled())
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  [v4 setFocusBannerPlacement:v7];
  [v4 sizeToFit];
  [v4 frame];
  v9 = v8;
  v10 = [v4 containingPalette];

  [v10 setPreferredHeight:v9];
}

- (void)_updateNavigationTitleToDate:(id)a3
{
  v5 = a3;
  v4 = [(DayViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [v4 updateTitleToDate:v5];
  }
}

- (void)selectDate:(id)a3 andTime:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (v8)
  {
    v9 = [(MainViewController *)self shownEventEditViewController];

    if (!v9)
    {
      v10 = [(CUIKCalendarModel *)self->super._model eventStore];
      v11 = [v10 timeZone];

      v12 = [v8 calendarDateInTimeZone:v11];
      v13 = [v12 calendarDateForDay];
      day = self->_day;
      self->_day = v13;

      if (!self->_scrubberControllerNeue || !self->_dayViewController)
      {
LABEL_24:

        goto LABEL_25;
      }

      v37 = v12;
      v38 = v6;
      v15 = self->_day;
      v16 = +[NSCalendar currentCalendar];
      v17 = [(EKDayViewController *)self->_dayViewController displayDate];
      v18 = [v16 dateFromComponents:v17];
      v36 = v11;
      v19 = [EKCalendarDate calendarDateWithDate:v18 timeZone:v11];
      v20 = [(EKCalendarDate *)v15 differenceInDays:v19];

      if (v20)
      {
        v21 = v5;
      }

      else
      {
        v21 = 0;
      }

      v22 = [(EKCalendarDate *)self->_day date];
      v23 = [(MainViewController *)self model];
      [v23 setSelectedDate:v8];

      v24 = [(MainViewController *)self model];
      v25 = [(EKCalendarDate *)self->_day calendarDateForEndOfDay];
      v26 = [v25 date];
      [v24 setPreferredReloadStartDate:v22 endDate:v26];

      if (v21)
      {
        if ([(DayNavigationViewController *)self->_scrubberControllerNeue canAnimateToDate:v22])
        {
          [(DayNavigationViewController *)self->_scrubberControllerNeue setSelectedDate:v22 animated:1];
          v27 = [(CUIKCalendarModel *)self->super._model calendar];
          v28 = [v27 components:30 fromDate:v22];
          [(EKDayViewController *)self->_dayViewController setDisplayDate:v28];
        }

        else
        {
          v27 = [(CUIKCalendarModel *)self->super._model calendar];
          v33 = [(EKDayViewController *)self->_dayViewController alwaysAnimate];
          [(EKDayViewController *)self->_dayViewController setAlwaysAnimate:0];
          v34 = [v27 components:30 fromDate:v22];
          [(EKDayViewController *)self->_dayViewController setDisplayDate:v34];

          [(EKDayViewController *)self->_dayViewController setAlwaysAnimate:v33];
          [(DayNavigationViewController *)self->_scrubberControllerNeue setSelectedDate:v22 animated:0];
        }

        v11 = v36;

        [(DayViewController *)self dayViewDidChangeSelectedDate:v22];
        v12 = v37;
      }

      else
      {
        [(DayNavigationViewController *)self->_scrubberControllerNeue setSelectedDate:v22 animated:0];
        v30 = v20;
        if (!v20 && v5)
        {
          [(DayNavigationViewController *)self->_scrubberControllerNeue pulseToday];
        }

        v31 = [(CUIKCalendarModel *)self->super._model calendar];
        v32 = [v31 components:30 fromDate:v22];
        [(EKDayViewController *)self->_dayViewController setDisplayDate:v32];

        [(DayViewController *)self dayViewDidChangeSelectedDate:v22];
        v11 = v36;
        v12 = v37;
        if (!v30)
        {
          [(DayViewController *)self _showNowWhenSameDaySelected];
LABEL_21:
          if (v38)
          {
            v35 = [(DayViewController *)self dayView];
            [v35 scrollToDate:v8 animated:v21];
          }

          goto LABEL_24;
        }
      }

      [(MainViewController *)self setSceneTitleNeedsUpdate];
      goto LABEL_21;
    }
  }

  else
  {
    v29 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v40 = "[DayViewController selectDate:andTime:animated:]";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s received with nil date.", buf, 0xCu);
    }
  }

LABEL_25:
}

- (BOOL)isDateVisible:(id)a3
{
  v4 = a3;
  v5 = [(CUIKCalendarModel *)self->super._model calendar];
  v6 = [(EKDayViewController *)self->_dayViewController displayDate];
  v7 = [v5 dateFromComponents:v6];

  v8 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Day view determining if date %@ is visible. Onscreen date: %@", &v11, 0x16u);
  }

  v9 = [v5 isDate:v4 inSameDayAsDate:v7];

  return v9;
}

- (void)currentlyVisibleDateRangeFromStartDate:(id *)a3 toEndDate:(id *)a4
{
  v14 = [(CUIKCalendarModel *)self->super._model calendar];
  v7 = [(EKDayViewController *)self->_dayViewController displayDate];
  v8 = [v14 dateFromComponents:v7];

  if (a3)
  {
    v9 = [(CUIKCalendarModel *)self->super._model calendar];
    v10 = [v9 timeZone];
    *a3 = [v8 dateForStartOfDayInTimeZone:v10];
  }

  if (a4)
  {
    v11 = [v8 dateByAddingHours:1 inCalendar:v14];
    v12 = [(CUIKCalendarModel *)self->super._model calendar];
    v13 = [v12 timeZone];
    *a4 = [v11 dateForEndOfDayInTimeZone:v13];
  }
}

- (void)showNowAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(DayViewController *)self dayView];
  [v4 scrollToNow:v3];
}

- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  v8 = a4;
  v12 = a3;
  v10 = a6;
  if (a5)
  {
    if (a5 == 3)
    {
      [(DayViewController *)self beginEditingOccurrence:v12 creationMethod:3];
    }

    else
    {
      [(DayViewController *)self _showDetailForEvent:v12 animated:v8 showComments:a5 == 2 context:v10];
    }
  }

  else
  {
    v11 = [v12 startCalendarDate];
    [(DayViewController *)self selectDate:v11 animated:v8];

    [(DayViewController *)self clearSelection];
    [(DayViewController *)self addEventToSelection:v12];
    [(DayViewController *)self didShowEventWithoutShowingDetails:v12];
  }

  [(DayViewController *)self _scrollToEvent:v12 animated:v8];
}

- (void)addEventToSelection:(id)a3
{
  model = self->super._model;
  v5 = a3;
  [(CUIKCalendarModel *)model selectOccurrence:v5];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];

  [(DayViewController *)self _setUpSelectedOccurrenceViewsWithEvents:v6 animated:1 autoScroll:0 resetSelection:0];
}

- (void)removeEventFromSelection:(id)a3
{
  v4 = a3;
  [(CUIKCalendarModel *)self->super._model deselectOccurrence:v4];
  [(DayViewController *)self _selectedOccurrenceFrontmostClonedViews];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v29 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 occurrence];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          [v10 setDelegate:0];
          [v10 removeFromSuperview];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = self;
  v13 = self->_selectedOccurrenceViews;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    while (2)
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        v19 = [v18 occurrence];
        v20 = [v19 isEqual:v4];

        if (v20)
        {
          [(NSMutableArray *)v21->_selectedOccurrenceViews removeObject:v18];
          goto LABEL_21;
        }
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
}

- (BOOL)currentlyEditingEventsWithGestures
{
  v2 = [(EKDayViewController *)self->_dayViewController gestureController];
  v3 = [v2 dragGestureInProgress];

  return v3;
}

- (void)extendedLaunchCompletedByViewType:(int)a3
{
  v6.receiver = self;
  v6.super_class = DayViewController;
  [(MainViewController *)&v6 extendedLaunchCompletedByViewType:*&a3];
  v4 = dispatch_time(0, 300000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015307C;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (id)sceneTitle
{
  v3 = [(EKDayViewController *)self->_dayViewController displayDate];
  v4 = [(MainViewController *)self model];
  v5 = [v4 calendar];

  v6 = [v5 dateFromComponents:v3];
  if (v6)
  {
    if ([v5 isDateInToday:v6])
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"Today" value:&stru_1002133B8 table:0];
    }

    else
    {
      v8 = CUIKLongStringForDateWithCommaAndYear();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setVisible:(BOOL)a3
{
  v3 = a3;
  self->_visible = a3;
  [(DayNavigationViewController *)self->_scrubberControllerNeue setVisible:?];
  v5 = [(EKDayViewController *)self->_dayViewController view];
  [v5 setHidden:!v3];
}

- (double)firstCellInset
{
  v2 = [(DayNavigationViewController *)self->_scrubberControllerNeue weekScrollView];
  [v2 frame];
  v4 = v3;

  return v4;
}

- (CGRect)scrubberFrameWithPaletteView:(id)a3
{
  v4 = a3;
  v5 = [(DayViewController *)self view];
  v6 = [(DayNavigationViewController *)self->_scrubberControllerNeue view];
  [v6 frame];
  [v5 convertRect:v4 fromView:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (int64_t)scrubberFirstVisibleDayOffsetFromSelectedDay
{
  v2 = [(DayNavigationViewController *)self->_scrubberControllerNeue weekScrollView];
  v3 = [v2 firstVisibleDayOffsetFromSelectedDay];

  return v3;
}

- (void)_showWeekdayLabelPreferenceChanged
{
  v3 = [(DayViewController *)self showWeekdayLabel];
  dayViewController = self->_dayViewController;

  [(EKDayViewController *)dayViewController setShowWeekdayLabel:v3];
}

- (void)presentDetailsForEvents:(id)a3 animated:(BOOL)a4 showComments:(BOOL)a5 context:(id)a6
{
  v6 = a5;
  v7 = a4;
  v13 = a6;
  v10 = a3;
  if ([v10 count] < 2)
  {
    v11 = [v10 firstObject];
    [(DayViewController *)self _showDetailForEvent:v11 animated:v7 showComments:v6 context:v13];
  }

  else
  {
    [(DayViewController *)self _showDetailForEvents:v10 animated:v7];
  }

  v12 = [v10 firstObject];

  [(DayViewController *)self _scrollToEvent:v12 animated:v7];
}

- (void)beginEditingOccurrence:(id)a3 creationMethod:(unint64_t)a4
{
  v5 = [AddEventViewController editOrAddViewControllerForEventOrIntegrationWithEvent:a3 model:self->super._model creationMethod:a4 viewStart:0 eventEditViewDelegate:self];
  [(DayViewController *)self showEditViewController:v5];
}

- (void)_showDetailForEvent:(id)a3 animated:(BOOL)a4 userInitiated:(BOOL)a5
{
  v8 = a3;
  objc_initWeak(&location, self);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1001536D0;
  v15 = &unk_1002126F0;
  objc_copyWeak(&v17, &location);
  v9 = v8;
  v16 = v9;
  v18 = a5;
  v19 = a4;
  v10 = objc_retainBlock(&v12);
  v11 = [CalendarTipsManager sharedManager:v12];
  [v11 dismissTipDueToUserNavigationWithCompletionBlock:v10];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_showDetailForEvents:(id)a3 animated:(BOOL)a4 userInitiated:(BOOL)a5
{
  v8 = a3;
  objc_initWeak(&location, self);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1001538B0;
  v15 = &unk_1002126F0;
  objc_copyWeak(&v17, &location);
  v9 = v8;
  v16 = v9;
  v18 = a5;
  v19 = a4;
  v10 = objc_retainBlock(&v12);
  v11 = [CalendarTipsManager sharedManager:v12];
  [v11 dismissTipDueToUserNavigationWithCompletionBlock:v10];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)dayNavigationViewController:(id)a3 didSelectDate:(id)a4
{
  model = self->super._model;
  v6 = a4;
  v7 = [(CUIKCalendarModel *)model calendar];
  v15 = [v7 components:30 fromDate:v6];

  v8 = [(CUIKCalendarModel *)self->super._model calendar];
  v9 = [v8 timeZone];
  v10 = [EKCalendarDate calendarDateWithDateComponents:v15 timeZone:v9];

  [(CUIKCalendarModel *)self->super._model setSelectedDate:v10];
  v11 = [v10 calendarDateForDay];
  v12 = [v11 date];

  v13 = [v10 calendarDateForEndOfDay];
  v14 = [v13 date];

  [(CUIKCalendarModel *)self->super._model setPreferredReloadStartDate:v12 endDate:v14];
  [(EKDayViewController *)self->_dayViewController setDisplayDate:v15];
  [(DayViewController *)self scrubberDidChangeSelectedDate:v6];

  [(MainViewController *)self setSceneTitleNeedsUpdate];
  [(DayViewController *)self wasAllowedToChangeDate];
}

- (void)_showDetailForEvent:(id)a3 animated:(BOOL)a4 showComments:(BOOL)a5 context:(id)a6
{
  if (a3)
  {
    v6 = a5;
    v7 = a4;
    model = self->super._model;
    v11 = a6;
    v12 = a3;
    [(CUIKCalendarModel *)model setSelectedOccurrence:v12];
    v13 = [(DayViewController *)self showDetailViewControllerForEvent:v12 context:v11 animated:v7];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v6)
    {
      [v13 openAttendeesDetailItem];
    }
  }
}

- (void)_showDetailForEvents:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  [(CUIKCalendarModel *)self->super._model setSelectedOccurrences:v7];
  v6 = [(DayViewController *)self showDetailViewControllerForEvents:v7 animated:v4];
}

- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  v20 = a3;
  [v20 setDelegate:0];
  [(CUIKCalendarModel *)self->super._model setSelectedOccurrence:0];
  v6 = [v20 presentingViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v20 presentingViewController];
    v9 = v8;
    if (a4 == 2)
    {
      v10 = [v20 event];
      [v9 reminderDetailDismissedWithDeletedEvent:v10];
    }

    else
    {
      [v8 reminderDetailDismissedWithDeletedEvent:0];
    }
  }

  else
  {
    v11 = [(DayViewController *)self navigationController];
    v12 = [v11 presentedViewController];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    v14 = [(DayViewController *)self navigationController];
    v15 = v14;
    if (v13)
    {
      v16 = [v14 presentedViewController];
      v17 = v16;
      if (a4 == 2)
      {
        v18 = [v20 event];
        [v17 reminderDetailDismissedWithDeletedEvent:v18];
      }

      else
      {
        [v16 reminderDetailDismissedWithDeletedEvent:0];
      }
    }

    else
    {

      if (v15)
      {
        v19 = [(DayViewController *)self navigationController];
        [v19 popViewControllersAfterAndIncluding:v20 animated:!self->_editorDismissedFromDelete];

        self->_editorDismissedFromDelete = 0;
        goto LABEL_14;
      }
    }
  }

  [v20 dismissViewControllerAnimated:1 completion:0];
LABEL_14:
}

- (void)eventViewControllerWillDisappear:(id)a3
{
  v4 = [(DayViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(DayViewController *)self navigationController];
    v6 = [v5 performSelector:"isTransitioningTraitCollection"];

    if (v6)
    {
      return;
    }
  }

  else
  {
  }

  model = self->super._model;

  [(CUIKCalendarModel *)model setSelectedOccurrence:0];
}

- (void)dayViewController:(id)a3 didSelectEvent:(id)a4 animated:(BOOL)a5 userInitiated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v12 = a4;
  v9 = [(MainViewController *)self model];
  v10 = [v9 pasteboardManager];
  v11 = [v12 startDate];
  [v10 setDateForPaste:v11];

  [(DayViewController *)self _showDetailForEvent:v12 animated:v7 userInitiated:v6];
}

- (void)dayViewController:(id)a3 didSelectEvents:(id)a4 animated:(BOOL)a5 userInitiated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v13 = a4;
  v9 = [(MainViewController *)self model];
  v10 = [v9 pasteboardManager];
  v11 = [v13 firstObject];
  v12 = [v11 startDate];
  [v10 setDateForPaste:v12];

  [(DayViewController *)self _showDetailForEvents:v13 animated:v7 userInitiated:v6];
}

- (void)dayViewController:(id)a3 pointerDidTargetOccurrences:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([v6 count] == 1)
  {
    v7 = [v6 firstObject];

    [(DayViewController *)self dayViewController:v8 didSelectEvent:v7 animated:1 userInitiated:1];
    v6 = v7;
  }

  else
  {
    [(DayViewController *)self dayViewController:v8 didSelectEvents:v6 animated:1 userInitiated:1];
  }
}

- (void)dayViewController:(id)a3 modifySelection:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
    v8 = [v7 containsObject:v6];

    if (v8)
    {
      [(DayViewController *)self removeEventFromSelection:v6];
    }

    else
    {
      [(DayViewController *)self addEventToSelection:v6];
    }
  }
}

- (void)dayViewController:(id)a3 didChangeDisplayDate:(id)a4
{
  model = self->super._model;
  v6 = a4;
  v7 = [(CUIKCalendarModel *)model eventStore];
  v8 = [v7 timeZone];
  v9 = [EKCalendarDate calendarDateWithDateComponents:v6 timeZone:v8];

  day = self->_day;
  self->_day = v9;
  v11 = v9;

  [(CUIKCalendarModel *)self->super._model setSelectedDate:v11];

  [(MainViewController *)self setSceneTitleNeedsUpdate];
}

- (void)dayViewControllerDidEndScrolling:(id)a3
{
  model = self->super._model;
  v5 = a3;
  v6 = [(CUIKCalendarModel *)model calendar];
  v7 = [v5 displayDate];

  v9 = [v6 dateFromComponents:v7];

  [(DayNavigationViewController *)self->_scrubberControllerNeue setSelectedDate:v9 animated:1];
  if ([UIApp isRunningTest])
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"NSString *const DayViewController_DayScrollDidEndAnimationNotification" object:self userInfo:0];
  }
}

- (void)dayViewController:(id)a3 didStartDeceleratingTargettingDate:(id)a4
{
  v5 = a4;
  CalAnalyticsSendEvent();
  [(DayViewController *)self beganHorizontalDeceleration];
  v6 = [(CUIKCalendarModel *)self->super._model calendar];
  v7 = [v6 timeZone];
  obj = [EKCalendarDate calendarDateWithDateComponents:v5 timeZone:v7];

  scrubberControllerNeue = self->_scrubberControllerNeue;
  v9 = [obj date];
  [(DayNavigationViewController *)scrubberControllerNeue setSelectedDate:v9 animated:1];

  if ([obj isEqual:self->_day])
  {
    [(CUIKCalendarModel *)self->super._model setSelectedDate:obj];
  }

  else
  {
    objc_storeStrong(&self->_day, obj);
    [(CUIKCalendarModel *)self->super._model setSelectedDate:obj];
    v10 = [obj date];
    [(DayViewController *)self dayViewDidChangeSelectedDate:v10];
  }
}

- (id)dayViewController:(id)a3 createEventAtDate:(id)a4 allDay:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  CalAnalyticsSendEvent();
  v8 = [(CUIKCalendarModel *)self->super._model eventStore];
  v9 = [EKEvent eventWithEventStore:v8];

  [v9 setStartDate:v7];
  if (v5)
  {
    v10 = 1.0;
  }

  else
  {
    v8 = +[CalFoundationPreferences shared];
    [v8 defaultEventDuration];
  }

  v11 = [v7 dateByAddingTimeInterval:v10];
  [v9 setEndDate:v11];

  if (!v5)
  {
  }

  [v9 setAllDay:v5];
  v12 = +[EKEventEditor defaultTitleForCalendarItem];
  [v9 setTitle:v12];

  v13 = [(CUIKCalendarModel *)self->super._model defaultCalendarForNewEvents];
  [v9 setCalendar:v13];

  return v9;
}

- (id)dayViewController:(id)a3 createReminderAtDate:(id)a4 allDay:(BOOL)a5
{
  v5 = a5;
  model = self->super._model;
  v8 = a4;
  v9 = [(CUIKCalendarModel *)model eventStore];
  v10 = [EKEvent eventWithEventStore:v9];

  [v10 setStartDate:v8];
  [v10 setEndDate:v8];

  [v10 setAllDay:v5];
  v11 = [(CUIKCalendarModel *)self->super._model reminderCalendar];
  [v10 setCalendar:v11];

  return v10;
}

- (BOOL)dayViewControllerShouldAllowLongPress:(id)a3
{
  if (![(DayViewController *)self shouldAllowLongPress])
  {
    return 0;
  }

  v4 = [(CUIKCalendarModel *)self->super._model defaultCalendarForNewEvents];
  v5 = v4 != 0;

  return v5;
}

- (void)dayViewControllerDidTapEmptySpace:(id)a3 onDate:(id)a4
{
  v8 = a4;
  [(DayViewController *)self didSelectEvent:0 userInitiated:1];
  [(DayViewController *)self _cleanupSelectedOccurrenceCloneViews];
  if (v8)
  {
    v5 = [(MainViewController *)self model];
    v6 = [v5 pasteboardManager];
    v7 = [v8 date];
    [v6 setDateForPaste:v7];
  }
}

- (void)dayViewController:(id)a3 didChangeDisplayedOccurrencesDueToTrigger:(int)a4
{
  [(DayViewController *)self displayedOccurrencesChangedWithTrigger:*&a4];
  if (self->_hasReloadedWithData && !self->_hasEndedExtendedLaunch)
  {
    self->_hasEndedExtendedLaunch = 1;

    [(DayViewController *)self extendedLaunchCompletedByViewType:3];
  }
}

- (BOOL)dayViewController:(id)a3 willDuplicateOccurrence:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[UIApplication sharedApplication];
  if ([v8 optionKeyIsDown] && (v22 = v7, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v22, 1), v9 = objc_claimAutoreleasedReturnValue(), v10 = +[CUIKPasteboardUtilities allEventsValidForAction:fromEvents:](CUIKPasteboardUtilities, "allEventsValidForAction:fromEvents:", 2, v9), v9, v10))
  {
    v11 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "duplicating event(s) in day view because option key is down", v21, 2u);
    }

    v12 = [(MainViewController *)self model];
    v13 = [v12 pasteboardManager];
    v14 = [v7 startDate];
    [v13 setDateForPaste:v14];

    v15 = [(MainViewController *)self model];
    v16 = [v15 pasteboardManager];
    [v16 setCalendarForPaste:0];

    v17 = [(DayViewController *)self pasteboardManager];
    v18 = [NSSet setWithObject:v7];
    v19 = 1;
    [v17 duplicateEvents:v18 withDateMode:1 delegate:v6];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)dayViewControllerDidBeginMovingEventWithGesture:(id)a3
{
  v4 = [a3 gestureController];
  v5 = [v4 event];
  v6 = [v5 isNew];

  if ((v6 & 1) == 0)
  {
    CalAnalyticsSendEvent();
  }

  [(DayViewController *)self didBeginMovingOccurrenceWithGesture];
}

- (void)dayViewController:(id)a3 requestsPresentationOfViewControllerForGestures:(id)a4
{
  v5 = a4;
  v7 = [[UnadaptableNavigationController alloc] initWithRootViewController:v5];

  [(UnadaptableNavigationController *)v7 setModalPresentationStyle:2];
  v6 = [(DayViewController *)self navigationController];
  [v6 presentViewController:v7 animated:1 completion:0];
}

- (double)dayViewControllerPersistedHourScalePreference:(id)a3
{
  v4 = [(CUIKCalendarModel *)self->super._model persistedSceneState];

  if (!v4)
  {
    return -1.0;
  }

  v5 = [(CUIKCalendarModel *)self->super._model persistedSceneState];
  [v5 dayViewHourScale];
  v7 = v6;

  return v7;
}

- (void)dayViewController:(id)a3 requestsSaveHourScalePreference:(double)a4
{
  v5 = [(CUIKCalendarModel *)self->super._model persistedSceneState];
  [v5 setDayViewHourScale:a4];
}

- (void)dayOccurrenceViewSelected:(id)a3 source:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v11 = v6;
    v7 = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
    v8 = [v11 occurrence];
    v9 = [v7 containsObject:v8];

    v6 = v11;
    if ((v9 & 1) == 0)
    {
      v10 = [v11 occurrence];
      [(CUIKCalendarModel *)self->super._model setSelectedOccurrence:v10];

      v6 = v11;
    }
  }
}

- (BOOL)provideExternalRepresentationsForEvent:(id)a3 withProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isReminderIntegrationEvent])
  {
    v7 = [CUIKIReminderDragProvider itemProviderWriterForReminderEvent:v5];
    if (v7)
    {
      [v6 registerObject:v7 visibility:0];

      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_occurrencesChanged:(id)a3
{
  v17 = a3;
  v4 = [(DayViewController *)self view];
  v5 = [v4 superview];

  if (v5)
  {
    v6 = [v17 userInfo];

    if (v6)
    {
      v7 = [v17 userInfo];
      v8 = [v7 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeStartKey];

      v9 = [v17 userInfo];
      v10 = [v9 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeEndKey];

      v11 = [v17 userInfo];
      v12 = [v11 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedFilteredAllKey];

      v13 = [v17 userInfo];
      v14 = [v13 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedGenerationKey];

      if (([v12 BOOLValue] & 1) == 0)
      {
        self->_hasReloadedWithData = 1;
      }

      if (self->_viewHasDoneFirstAppearance)
      {
        v15 = [v14 intValue];
        dayViewController = self->_dayViewController;
        if (v8 && v10)
        {
          [(EKDayViewController *)dayViewController loadDataBetweenStart:v8 end:v10 withTrigger:1 generation:v15 completionForCurrentDayReload:0];
        }

        else
        {
          [(EKDayViewController *)dayViewController reloadDataForOccurrenceChangeWithGeneration:v15];
        }
      }
    }

    else
    {
      [(EKDayViewController *)self->_dayViewController reloadData];
    }
  }

  else
  {
    [(EKDayViewController *)self->_dayViewController setNeedsReload];
  }
}

- (void)_significantTimeChanged:(id)a3
{
  v4 = [(DayViewController *)self dayView];
  [(DayNavigationViewController *)self->_scrubberControllerNeue significantTimeChangeOccurred];
  [v4 significantTimeChangeOccurred];
}

- (void)_timeZoneChanged:(id)a3
{
  v15 = [(DayViewController *)self dayView];
  v4 = [(MainViewController *)self model];
  v5 = [v4 selectedDate];
  [v5 absoluteTime];
  v7 = v6;

  v8 = [(MainViewController *)self model];
  v9 = [v8 calendar];
  v10 = [v9 timeZone];

  [v15 setTimeZone:v10];
  v11 = [(MainViewController *)self model];
  v12 = [v11 calendar];
  [v15 setCalendar:v12];

  v13 = [[EKCalendarDate alloc] initWithAbsoluteTime:v10 timeZone:v7];
  v14 = [v13 dayComponents];
  [v15 setDisplayDate:v14];
  [(DayNavigationViewController *)self->_scrubberControllerNeue timeZoneChanged];
  [v15 timeZoneChanged];
}

- (void)_receivedSelectedDateChangeNotification:(id)a3
{
  v4 = [(DayViewController *)self view];
  v5 = [v4 window];

  if (v5)
  {
    v9 = [(MainViewController *)self model];
    v6 = [(EKCalendarDate *)self->_day date];
    v7 = [(EKCalendarDate *)self->_day calendarDateForEndOfDay];
    v8 = [v7 date];
    [v9 setPreferredReloadStartDate:v6 endDate:v8];
  }
}

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 dismissController:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  v12 = [v10 event];
  if (v12)
  {
    if (a4)
    {
      if (a4 == 2)
      {
        [(EKDayViewController *)self->_dayViewController editorDidDeleteEvent:v12];
      }

      else if (a4 == 1)
      {
        v13 = [v10 calendarToMakeVisibleOnSave];
        v14 = [v13 objectID];
        if (v14)
        {
          [(CUIKCalendarModel *)self->super._model ensureCalendarVisibleWithId:v14];
        }

        [(CUIKCalendarModel *)self->super._model setSelectedOccurrence:v12];
        [(EKDayViewController *)self->_dayViewController editorDidSaveEvent:v12];
        if ([v13 sharingStatus])
        {
          [(MainViewController *)self attemptDisplayReviewPrompt];
        }
      }
    }

    else
    {
      [(EKDayViewController *)self->_dayViewController editorDidCancelEditingEvent:v12];
    }

    v16 = [v10 internalEditViewDelegate];

    if (v16 == self && v7)
    {
      v17 = [v10 presentingViewController];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10015551C;
      v18[3] = &unk_10020EBC8;
      v18[4] = self;
      v19 = v11;
      [v17 dismissViewControllerAnimated:1 completion:v18];
    }
  }

  else
  {
    v15 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[DayViewController eventEditViewController:didCompleteWithAction:dismissController:completionHandler:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s received with nil event.", buf, 0xCu);
    }
  }
}

- (id)pasteboardManagerForEventEditViewController:(id)a3
{
  v3 = [(MainViewController *)self model];
  v4 = [v3 pasteboardManager];

  return v4;
}

- (id)pasteboardManager
{
  v2 = [(MainViewController *)self model];
  v3 = [v2 pasteboardManager];

  return v3;
}

- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4
{
  if (a4)
  {
    [a3 nextOccurrence];
  }

  else
  {
    [a3 previousOccurrence];
  }
  v4 = ;
  v5 = [v4 reminderOccurrenceType];
  if (v4)
  {
    v6 = v5 == 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;

  return v7;
}

- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10 = v6;
  if (v4)
  {
    [v6 nextOccurrence];
  }

  else
  {
    [v6 previousOccurrence];
  }
  v7 = ;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 startCalendarDate];
    [(DayViewController *)self selectDate:v9 animated:1];

    [(DayViewController *)self showEvent:v8 animated:1 showMode:0 context:0];
  }
}

- (void)eventViewControllerNextButtonWasTapped:(id)a3
{
  v8 = a3;
  v4 = [v8 event];
  v5 = [v4 nextOccurrence];

  if (v5)
  {
    [(DayViewController *)self eventViewController:v8 didCompleteWithAction:0];
    v6 = [v5 startCalendarDate];
    [(DayViewController *)self selectDate:v6 animated:0];

    v7 = [v8 context];
    [(DayViewController *)self showEvent:v5 animated:1 showMode:1 context:v7];
  }
}

- (void)eventViewControllerPreviousButtonWasTapped:(id)a3
{
  v8 = a3;
  v4 = [v8 event];
  v5 = [v4 previousOccurrence];

  if (v5)
  {
    [(DayViewController *)self eventViewController:v8 didCompleteWithAction:0];
    v6 = [v5 startCalendarDate];
    [(DayViewController *)self selectDate:v6 animated:0];

    v7 = [v8 context];
    [(DayViewController *)self showEvent:v5 animated:1 showMode:1 context:v7];
  }
}

- (void)eventViewController:(id)a3 requestsShowEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(DayViewController *)self eventViewController:v7 didCompleteWithAction:0];
  v8 = [v7 context];

  [(DayViewController *)self showEvent:v6 animated:1 showMode:1 context:v8];
}

- (void)_scrollToEvent:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(EKDayViewController *)self->_dayViewController occurrenceViewForEvent:?];
  if (-[DayViewController isViewLoaded](self, "isViewLoaded") && (-[DayViewController view](self, "view"), v7 = objc_claimAutoreleasedReturnValue(), [v7 window], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8) && v6)
  {
    [(EKDayViewController *)self->_dayViewController scrollEventIntoView:v11 animated:v4];
    v9 = 0;
  }

  else
  {
    v9 = [v11 eventIdentifier];
  }

  scrollToEventIdentifier = self->_scrollToEventIdentifier;
  self->_scrollToEventIdentifier = v9;
}

- (BOOL)didSelectEvent:(id)a3 userInitiated:(BOOL)a4
{
  v6 = a3;
  if (!v6)
  {
    [(CUIKCalendarModel *)self->super._model setSelectedOccurrences:&__NSArray0__struct];
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (!a4)
  {
    v8 = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
    v9 = [v8 containsObject:v6];

    if ((v9 & 1) == 0)
    {
      [(CUIKCalendarModel *)self->super._model setSelectedOccurrence:v6];
      v12 = v6;
      v10 = [NSArray arrayWithObjects:&v12 count:1];
      [(DayViewController *)self _setUpSelectedOccurrenceViewsWithEvents:v10 animated:1 autoScroll:0 resetSelection:1];
    }

    goto LABEL_7;
  }

  v7 = 1;
LABEL_8:

  return v7;
}

- (BOOL)didSelectEvents:(id)a3 userInitiated:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    [(CUIKCalendarModel *)self->super._model setSelectedOccurrences:&__NSArray0__struct];
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  if (!a4)
  {
    v10 = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
    v11 = [NSSet setWithArray:v10];
    v12 = [NSSet setWithArray:v7];
    v13 = [v11 isEqualToSet:v12];

    if ((v13 & 1) == 0)
    {
      [(CUIKCalendarModel *)self->super._model setSelectedOccurrences:v7];
      [(DayViewController *)self _setUpSelectedOccurrenceViewsWithEvents:v7 animated:1 autoScroll:0 resetSelection:1];
    }

    goto LABEL_6;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

- (void)scrubberDidChangeSelectedDate:(id)a3
{
  model = self->super._model;
  v5 = a3;
  v6 = [(CUIKCalendarModel *)model calendar];
  v7 = [v6 timeZone];
  v8 = [EKCalendarDate calendarDateWithDate:v5 timeZone:v7];

  day = self->_day;
  self->_day = v8;

  v10 = self->_day;

  [(DayViewController *)self _updateNavigationTitleToDate:v10];
}

- (void)dayViewDidChangeSelectedDate:(id)a3
{
  model = self->super._model;
  v5 = a3;
  v6 = [(CUIKCalendarModel *)model calendar];
  v7 = [v6 timeZone];
  v8 = [EKCalendarDate calendarDateWithDate:v5 timeZone:v7];

  day = self->_day;
  self->_day = v8;

  v10 = self->_day;

  [(DayViewController *)self _updateNavigationTitleToDate:v10];
}

- (id)showDetailViewControllerForEvent:(id)a3 context:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"Day" value:&stru_1002133B8 table:0];
  v12 = [(DayViewController *)self navigationItem];
  [v12 setTitle:v11];

  v13 = [(MainViewController *)self augmentEventDetailsContext:v8];

  v14 = [EKEventViewController eventDetailViewControllerWithEvent:v9 delegate:self context:v13 canvasView:0];

  [(MainViewController *)self showViewController:v14 sender:self animated:v5 completion:0];

  return v14;
}

- (id)showDetailViewControllerForEvents:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Day" value:&stru_1002133B8 table:0];
  v9 = [(DayViewController *)self navigationItem];
  [v9 setTitle:v8];

  v10 = [[EKExpandedReminderStackViewController alloc] initWithEvents:v6 delegate:self];
  [v10 setPreferModalPresentation:0];
  [(MainViewController *)self showViewController:v10 sender:self animated:v4 completion:0];

  return v10;
}

- (void)showReminderDetail:(id)a3
{
  v4 = a3;
  v7 = [(MainViewController *)self augmentEventDetailsContext:0];
  v5 = objc_alloc_init(UINavigationController);
  v6 = [EKEventViewController eventDetailViewControllerWithEvent:v4 delegate:self context:v7 canvasView:0];

  [v5 pushViewController:v6 animated:0];
  [(MainViewController *)self showViewController:v5 sender:self animated:1 completion:0];
}

- (void)showEditViewController:(id)a3
{
  v4 = a3;
  v5 = [(DayViewController *)self navigationController];
  [v5 presentModalViewController:v4 withTransition:8];
}

- (void)dataReloadedWithTrigger:(int)a3
{
  v4 = [(DayViewController *)self view];
  v5 = [v4 window];

  if (v5)
  {
    v6 = [(CUIKCalendarModel *)self->super._model eventStore];
    v7 = [v6 eventWithIdentifier:self->_scrollToEventIdentifier];

    [(DayViewController *)self _scrollToEvent:v7 animated:1];
  }
}

- (void)finishedPinchingDayView
{
  v4 = [(MainViewController *)self model];
  v3 = [v4 selectedOccurrences];
  [(DayViewController *)self _setUpSelectedOccurrenceViewsWithEvents:v3 animated:0 autoScroll:1 resetSelection:1];
}

- (void)_sceneEnteredForeground:(id)a3
{
  v9 = [a3 object];
  v4 = [(MainViewController *)self model];
  v5 = [v4 sceneIdentifier];
  v6 = [v9 _sceneIdentifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(DayViewController *)self savedFirstVisibleSecond];

    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

    v8 = [(DayViewController *)self savedFirstVisibleSecond];
    v4 = [(DayViewController *)self dayView];
    v5 = [v4 currentDayView];
    [v5 setFirstVisibleSecond:v8];
  }

  else
  {
  }

LABEL_6:
}

- (void)dayViewController:(id)a3 requestsSaveFirstVisibleSecondPreference:(int)a4
{
  v4 = *&a4;
  v6 = [(MainViewController *)self window];
  v7 = [v6 windowScene];
  v8 = [v7 activationState];

  if (!v8)
  {

    [(DayViewController *)self saveFirstVisibleSecond:v4];
  }
}

- (void)saveFirstVisibleSecond:(int)a3
{
  v3 = *&a3;
  if (EKUIShouldSaveStateInPreferences())
  {
    v6 = [NSNumber numberWithInt:v3];
    v5 = +[CUIKPreferences sharedPreferences];
    [v5 setDayViewFirstVisibleSecond:v6];
  }

  else
  {
    v6 = [(MainViewController *)self model];
    v5 = [v6 persistedSceneState];
    [v5 setDayViewFirstVisibleSecond:v3];
  }
}

- (BOOL)creationGestureController:(id)a3 canActivateAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(DayViewController *)self gestureController];
  if ([v7 dragGestureInProgress])
  {
    v8 = 0;
LABEL_6:

    return v8;
  }

  v9 = [(DayViewController *)self gestureController];
  v10 = [v9 draggingView];

  if (!v10)
  {
    v11 = [(DayViewController *)self _parentViewForCreationGesture];
    v12 = [(DayViewController *)self dayView];
    v13 = [v12 currentDayView];
    [v11 convertPoint:v13 toView:{x, y}];
    v15 = v14;
    v17 = v16;

    v7 = [(DayViewController *)self dayView];
    v18 = [v7 currentDayView];
    v19 = [v18 occurrenceViewAtPoint:{v15, v17}];
    v8 = v19 == 0;

    goto LABEL_6;
  }

  return 0;
}

- (id)_parentViewForCreationGesture
{
  v2 = [(DayViewController *)self dayView];
  v3 = [v2 effectiveEventGestureSuperview];

  return v3;
}

- (id)creationGestureController:(id)a3 requestedPreviewForEvent:(id)a4
{
  v5 = a4;
  v6 = [(DayViewController *)self dayView];
  v7 = [v6 createOccurrenceViewForEventGestures];

  [v7 setOccurrence:v5];
  [v7 setSelected:1];
  return v7;
}

- (double)creationGestureController:(id)a3 requestedWidthForEventPreview:(id)a4 atPoint:(CGPoint)a5
{
  v6 = [(DayViewController *)self dayView:a3];
  v7 = [v6 currentDayView];
  [v7 frame];
  v9 = v8;
  v10 = [(DayViewController *)self dayView];
  v11 = [v10 currentDayView];
  [v11 leftContentInset];
  v13 = v9 - v12;

  return v13;
}

- (double)creationGestureController:(id)a3 requestedXCoordinateForEventPreviewAtPoint:(CGPoint)a4
{
  v5 = [(DayViewController *)self dayView:a3];
  v6 = [v5 currentDayView];

  v7 = [(DayViewController *)self _parentViewForCreationGesture];
  v8 = [(DayViewController *)self dayView];
  v9 = [v8 currentDayView];
  [v9 leftContentInset];
  [v7 convertPoint:v6 fromView:?];
  v11 = v10;

  return v11;
}

- (CGPoint)creationGestureController:(id)a3 requestsPointForDate:(id)a4
{
  v5 = a4;
  v6 = [(DayViewController *)self dayView];
  [v5 timeIntervalSinceReferenceDate];
  v8 = v7;

  [v6 pointAtDate:0 isAllDay:v8];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)creationGestureController:(id)a3 didResizeToDate:(id)a4
{
  v5 = a4;
  v6 = [(DayViewController *)self dayView];
  [v6 showTimelineHighlightForTime:v5];
}

- (id)creationGestureController:(id)a3 dateForPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = [(DayViewController *)self dayView];
  v7 = [v6 currentDayView];
  [v7 dateAtPoint:0 isAllDay:{x, y}];
  v9 = v8;

  return [NSDate dateWithTimeIntervalSinceReferenceDate:v9];
}

- (id)creationGestureControllerRequestsNewEvent:(id)a3
{
  v4 = [(MainViewController *)self model];
  v5 = [v4 calendar];
  v6 = [(DayViewController *)self dayView];
  v7 = [v6 displayDate];
  v8 = [v5 dateFromComponents:v7];

  v9 = [(DayViewController *)self dayView];
  v10 = [(DayViewController *)self dayViewController:v9 createEventAtDate:v8 allDay:0];

  return v10;
}

- (void)creationGestureController:(id)a3 didCreateNewEvent:(id)a4
{
  v11 = a4;
  v5 = [(DayViewController *)self dayView];
  v6 = [v5 currentEditor];

  if (!v6)
  {
    v7 = +[EKEventEditor defaultTitleForCalendarItem];
    v8 = [v11 title];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      [v11 setTitle:&stru_1002133B8];
    }

    [(DayViewController *)self beginEditingOccurrence:v11 creationMethod:4];
  }

  v10 = [(DayViewController *)self gestureController];
  [v10 liftUpOccurrenceForEditingEvent:v11];
}

- (void)creationGestureControllerDidCancel:(id)a3
{
  v3 = [(DayViewController *)self dayView];
  [v3 hideTimelineHighlight];
}

- (void)_setUpSelectedOccurrenceViewsWithEvents:(id)a3 animated:(BOOL)a4 autoScroll:(BOOL)a5 resetSelection:(BOOL)a6
{
  v34 = a4;
  v35 = a6;
  v33 = a5;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = a3;
  v7 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v37 = 0;
    v9 = 0;
    v10 = *v42;
    v32 = v39;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        v13 = [(DayViewController *)self gestureController];
        v14 = [v13 draggingView];
        v15 = [v14 occurrence];
        v16 = [v15 isEqual:v12];

        if (v16)
        {
          v17 = 0;
        }

        else
        {
          v18 = [(DayViewController *)self dayView];
          v17 = [v18 occurrenceViewForEvent:v12 includeNextAndPreviousDays:1];

          if (v17)
          {
            if (v9)
            {
              v19 = v37;
            }

            else
            {
              if (v35)
              {
                v20 = [(DayViewController *)self _selectedOccurrenceFrontmostClonedViews];
                v21 = [v20 count];

                if (v21)
                {
                  [(DayViewController *)self _cleanupSelectedOccurrenceCloneViews];
                }
              }

              if (v33)
              {
                v22 = [(DayViewController *)self dayView];
                [v22 scrollEventIntoView:v12 animated:v34];
              }

              selectedOccurrenceViews = self->_selectedOccurrenceViews;
              if (selectedOccurrenceViews)
              {
                if (v35)
                {
                  [(NSMutableArray *)selectedOccurrenceViews removeAllObjects];
                }
              }

              else
              {
                v24 = +[NSMutableArray array];
                v25 = self->_selectedOccurrenceViews;
                self->_selectedOccurrenceViews = v24;
              }

              v26 = [(DayViewController *)self _selectedOccurrenceViews];
              v27 = [v26 CalMap:&stru_100212730];
              v28 = [NSMutableSet setWithArray:v27];

              v19 = v28;
            }

            v37 = v19;
            if (([v19 containsObject:v12] & 1) == 0)
            {
              v29 = [v17 occurrences];
              [v19 addObjectsFromArray:v29];

              [(NSMutableArray *)self->_selectedOccurrenceViews addObject:v17];
              v30 = [v17 superview];
              v31 = [v17 copy];
              [v31 setDelegate:0];
              [v31 setIsSelectedCopyView:1];
              [v31 setSelectedCopy:0];
              [v31 setSelected:1];
              [v31 setUserInteractionEnabled:0];
              [v31 requestContentIfNeeded:16 completion:0];
              [v17 setSelectedCopy:v31];
              [v30 addSubview:v31];
              [v30 bringSubviewToFront:v31];
              if (v34)
              {
                [v31 setAlpha:0.0];
                v38[0] = _NSConcreteStackBlock;
                v38[1] = 3221225472;
                v39[0] = sub_100157014;
                v39[1] = &unk_10020EB00;
                v40 = v31;
                [UIView animateWithDuration:6 delay:v38 usingSpringWithDamping:0 initialSpringVelocity:1.5 options:0.0 animations:10.0 completion:10.0];
              }
            }

            v9 = 1;
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v8);
  }

  else
  {
    v37 = 0;
  }
}

- (id)_selectedOccurrenceFrontmostClonedViews
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100157198;
  v14 = sub_1001571A8;
  v15 = 0;
  v3 = objc_opt_new();
  v4 = [(DayViewController *)self timedDayViewContentGridSubviews];
  [v3 addObjectsFromArray:v4];

  v5 = [(DayViewController *)self allDayView];
  v6 = [v5 subviews];
  [v3 addObjectsFromArray:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001571B0;
  v9[3] = &unk_100212758;
  v9[4] = &v10;
  [v3 enumerateObjectsUsingBlock:v9];
  v7 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)_cleanupSelectedOccurrenceCloneViews
{
  v3 = +[NSSet set];
  [(DayViewController *)self _cleanupSelectedOccurrenceCloneViewsSkipSet:v3];
}

- (void)_cleanupSelectedOccurrenceCloneViewsRespectingModelSelected
{
  v5 = [(MainViewController *)self model];
  v3 = [v5 selectedOccurrences];
  v4 = [NSSet setWithArray:v3];
  [(DayViewController *)self _cleanupSelectedOccurrenceCloneViewsSkipSet:v4];
}

- (void)_cleanupSelectedOccurrenceCloneViewsSkipSet:(id)a3
{
  v4 = a3;
  v5 = [(DayViewController *)self dayView];
  v6 = [v5 view];
  [(DayViewController *)self _recursiveRemoveSelectedClonedViewsFromViewTree:v6 skipSet:v4];

  selectedOccurrenceViews = self->_selectedOccurrenceViews;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10015744C;
  v10[3] = &unk_100212780;
  v11 = v4;
  v8 = v4;
  v9 = [NSPredicate predicateWithBlock:v10];
  [(NSMutableArray *)selectedOccurrenceViews filterUsingPredicate:v9];
}

- (void)_recursiveRemoveSelectedClonedViewsFromViewTree:(id)a3 skipSet:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [a3 subviews];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          [(DayViewController *)self _recursiveRemoveSelectedClonedViewsFromViewTree:v12 skipSet:v6];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            v14 = [v13 occurrence];
            v15 = [v6 containsObject:v14];

            if ((v15 & 1) == 0)
            {
              if ([v13 isSelectedCopyView])
              {
                [v13 setDelegate:0];
                [v13 removeFromSuperview];
              }

              else
              {
                [v13 setSelectedCopy:0];
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }
}

- (void)_selectedOccurrencesChanged:(id)a3
{
  v4 = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
  v5 = [NSSet setWithArray:v4];

  [(DayViewController *)self _cleanupSelectedOccurrenceCloneViewsRespectingModelSelected];
  v6 = [(DayViewController *)self gestureController];
  v7 = [v6 event];
  v8 = [v5 containsObject:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [(DayViewController *)self gestureController];
    [v9 endForcedStart:0];
  }

  v10 = [v5 mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = self->_selectedOccurrenceViews;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v16 occurrence];

        if (v17)
        {
          v18 = [v16 occurrence];
          [v10 removeObject:v18];
        }
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v19 = [(DayViewController *)self gestureController];
  v20 = [v19 event];

  if (v20)
  {
    v21 = [(DayViewController *)self gestureController];
    v22 = [v21 event];
    [v10 removeObject:v22];
  }

  v23 = [v10 allObjects];
  [(DayViewController *)self _setUpSelectedOccurrenceViewsWithEvents:v23 animated:1 autoScroll:0 resetSelection:0];
}

- (BOOL)allEventsIndividuallyRepresented:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [(EKDayViewController *)self->_dayViewController occurrenceViewForEvent:*(*(&v14 + 1) + 8 * v8), v14];
      v10 = v9;
      if (!v9)
      {
        break;
      }

      v11 = [v9 occurrences];
      v12 = [v11 count];

      if (v12 > 1)
      {
        LOBYTE(v10) = 0;
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        LOBYTE(v10) = 1;
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (int64_t)intendedSizeClass
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)cellFactory
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end