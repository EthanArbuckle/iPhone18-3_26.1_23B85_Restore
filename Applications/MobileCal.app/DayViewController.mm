@interface DayViewController
- (BOOL)allEventsIndividuallyRepresented:(id)represented;
- (BOOL)creationGestureController:(id)controller canActivateAtPoint:(CGPoint)point;
- (BOOL)currentlyEditingEventsWithGestures;
- (BOOL)dayViewController:(id)controller willDuplicateOccurrence:(id)occurrence;
- (BOOL)dayViewControllerShouldAllowLongPress:(id)press;
- (BOOL)didSelectEvent:(id)event userInitiated:(BOOL)initiated;
- (BOOL)didSelectEvents:(id)events userInitiated:(BOOL)initiated;
- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward;
- (BOOL)isDateVisible:(id)visible;
- (BOOL)provideExternalRepresentationsForEvent:(id)event withProvider:(id)provider;
- (CGPoint)creationGestureController:(id)controller requestsPointForDate:(id)date;
- (CGRect)scrubberFrameWithPaletteView:(id)view;
- (CGSize)cellSize;
- (DayViewController)initWithDay:(id)day model:(id)model window:(id)window;
- (double)creationGestureController:(id)controller requestedWidthForEventPreview:(id)preview atPoint:(CGPoint)point;
- (double)creationGestureController:(id)controller requestedXCoordinateForEventPreviewAtPoint:(CGPoint)point;
- (double)dayViewControllerPersistedHourScalePreference:(id)preference;
- (double)firstCellInset;
- (id)_parentViewForCreationGesture;
- (id)_selectedOccurrenceFrontmostClonedViews;
- (id)cellFactory;
- (id)creationGestureController:(id)controller dateForPoint:(CGPoint)point;
- (id)creationGestureController:(id)controller requestedPreviewForEvent:(id)event;
- (id)creationGestureControllerRequestsNewEvent:(id)event;
- (id)dayViewController:(id)controller createEventAtDate:(id)date allDay:(BOOL)day;
- (id)dayViewController:(id)controller createReminderAtDate:(id)date allDay:(BOOL)day;
- (id)pasteboardManager;
- (id)pasteboardManagerForEventEditViewController:(id)controller;
- (id)sceneTitle;
- (id)showDetailViewControllerForEvent:(id)event context:(id)context animated:(BOOL)animated;
- (id)showDetailViewControllerForEvents:(id)events animated:(BOOL)animated;
- (int)savedFirstVisibleSecond;
- (int64_t)intendedSizeClass;
- (int64_t)scrubberFirstVisibleDayOffsetFromSelectedDay;
- (void)_cleanupSelectedOccurrenceCloneViews;
- (void)_cleanupSelectedOccurrenceCloneViewsRespectingModelSelected;
- (void)_cleanupSelectedOccurrenceCloneViewsSkipSet:(id)set;
- (void)_occurrencesChanged:(id)changed;
- (void)_receivedSelectedDateChangeNotification:(id)notification;
- (void)_recursiveRemoveSelectedClonedViewsFromViewTree:(id)tree skipSet:(id)set;
- (void)_sceneEnteredForeground:(id)foreground;
- (void)_scrollToEvent:(id)event animated:(BOOL)animated;
- (void)_selectedOccurrencesChanged:(id)changed;
- (void)_setUpSelectedOccurrenceViewsWithEvents:(id)events animated:(BOOL)animated autoScroll:(BOOL)scroll resetSelection:(BOOL)selection;
- (void)_showDetailForEvent:(id)event animated:(BOOL)animated showComments:(BOOL)comments context:(id)context;
- (void)_showDetailForEvent:(id)event animated:(BOOL)animated userInitiated:(BOOL)initiated;
- (void)_showDetailForEvents:(id)events animated:(BOOL)animated;
- (void)_showDetailForEvents:(id)events animated:(BOOL)animated userInitiated:(BOOL)initiated;
- (void)_showNowWhenSameDaySelected;
- (void)_showWeekdayLabelPreferenceChanged;
- (void)_significantTimeChanged:(id)changed;
- (void)_timeZoneChanged:(id)changed;
- (void)_updateNavigationTitleToDate:(id)date;
- (void)addEventToSelection:(id)selection;
- (void)beginEditingOccurrence:(id)occurrence creationMethod:(unint64_t)method;
- (void)creationGestureController:(id)controller didCreateNewEvent:(id)event;
- (void)creationGestureController:(id)controller didResizeToDate:(id)date;
- (void)creationGestureControllerDidCancel:(id)cancel;
- (void)currentlyVisibleDateRangeFromStartDate:(id *)date toEndDate:(id *)endDate;
- (void)dataReloadedWithTrigger:(int)trigger;
- (void)dayNavigationViewController:(id)controller didSelectDate:(id)date;
- (void)dayOccurrenceViewSelected:(id)selected source:(unint64_t)source;
- (void)dayViewController:(id)controller didChangeDisplayDate:(id)date;
- (void)dayViewController:(id)controller didChangeDisplayedOccurrencesDueToTrigger:(int)trigger;
- (void)dayViewController:(id)controller didSelectEvent:(id)event animated:(BOOL)animated userInitiated:(BOOL)initiated;
- (void)dayViewController:(id)controller didSelectEvents:(id)events animated:(BOOL)animated userInitiated:(BOOL)initiated;
- (void)dayViewController:(id)controller didStartDeceleratingTargettingDate:(id)date;
- (void)dayViewController:(id)controller modifySelection:(id)selection;
- (void)dayViewController:(id)controller pointerDidTargetOccurrences:(id)occurrences;
- (void)dayViewController:(id)controller requestsPresentationOfViewControllerForGestures:(id)gestures;
- (void)dayViewController:(id)controller requestsSaveFirstVisibleSecondPreference:(int)preference;
- (void)dayViewController:(id)controller requestsSaveHourScalePreference:(double)preference;
- (void)dayViewControllerDidBeginMovingEventWithGesture:(id)gesture;
- (void)dayViewControllerDidEndScrolling:(id)scrolling;
- (void)dayViewControllerDidTapEmptySpace:(id)space onDate:(id)date;
- (void)dayViewDidChangeSelectedDate:(id)date;
- (void)dealloc;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action dismissController:(BOOL)dismissController completionHandler:(id)handler;
- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action;
- (void)eventViewController:(id)controller requestsShowEvent:(id)event;
- (void)eventViewControllerNextButtonWasTapped:(id)tapped;
- (void)eventViewControllerPreviousButtonWasTapped:(id)tapped;
- (void)eventViewControllerWillDisappear:(id)disappear;
- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward;
- (void)extendedLaunchCompletedByViewType:(int)type;
- (void)finishedPinchingDayView;
- (void)loadView;
- (void)presentDetailsForEvents:(id)events animated:(BOOL)animated showComments:(BOOL)comments context:(id)context;
- (void)removeEventFromSelection:(id)selection;
- (void)saveFirstVisibleSecond:(int)second;
- (void)scrubberDidChangeSelectedDate:(id)date;
- (void)selectDate:(id)date andTime:(BOOL)time animated:(BOOL)animated;
- (void)setVisible:(BOOL)visible;
- (void)showEditViewController:(id)controller;
- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)showNowAnimated:(BOOL)animated;
- (void)showReminderDetail:(id)detail;
- (void)updatePalette:(id)palette;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation DayViewController

- (CGSize)cellSize
{
  weekScrollView = [(DayNavigationViewController *)self->_scrubberControllerNeue weekScrollView];
  [weekScrollView cellSize];
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

  cellFactory = [(DayViewController *)self cellFactory];
  [(DayNavigationViewController *)self->_scrubberControllerNeue setCellFactory:cellFactory];

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
  navigationController = [(DayViewController *)self navigationController];
  -[EKDayViewController setPreloadExtraDays:](self->_dayViewController, "setPreloadExtraDays:", [navigationController extendedLaunchFinished]);

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
  savedFirstVisibleSecond = [(DayViewController *)self savedFirstVisibleSecond];
  dayView = [(DayViewController *)self dayView];
  [dayView setStartingFirstVisibleSecond:savedFirstVisibleSecond];

  v6 = [EKEventCreationGestureController alloc];
  dayView2 = [(DayViewController *)self dayView];
  view = [dayView2 view];
  v9 = [v6 initWithView:view delegate:self];
  eventCreationGestureController = self->_eventCreationGestureController;
  self->_eventCreationGestureController = v9;

  window = [(MainViewController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  view2 = [(DayViewController *)self view];
  view3 = [(EKDayViewController *)self->_dayViewController view];
  [view2 addSubview:view3];

  window2 = [(MainViewController *)self window];
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
    model = [(MainViewController *)self model];
    persistedSceneState = [model persistedSceneState];

    if (persistedSceneState)
    {
      model2 = [(MainViewController *)self model];
      persistedSceneState2 = [model2 persistedSceneState];
      dayViewFirstVisibleSecond = [persistedSceneState2 dayViewFirstVisibleSecond];
      goto LABEL_6;
    }

    return -1;
  }

  v3 = +[CUIKPreferences sharedPreferences];
  dayViewFirstVisibleSecond2 = [v3 dayViewFirstVisibleSecond];

  if (!dayViewFirstVisibleSecond2)
  {
    return -1;
  }

  model2 = +[CUIKPreferences sharedPreferences];
  persistedSceneState2 = [model2 dayViewFirstVisibleSecond];
  dayViewFirstVisibleSecond = [persistedSceneState2 intValue];
LABEL_6:
  v10 = dayViewFirstVisibleSecond;

  return v10;
}

- (void)viewWillLayoutSubviews
{
  if (!self->_hasSetUpDayViewInitialLayout)
  {
    window = [(MainViewController *)self window];
    EKUIPushFallbackSizingContextWithViewHierarchy();

    view = [(EKDayViewController *)self->_dayViewController view];
    [view setAutoresizingMask:18];

    view2 = [(DayViewController *)self view];
    [view2 bounds];
    v7 = v6;

    view3 = [(DayViewController *)self view];
    [view3 bounds];
    v10 = v9;

    dayViewController = self->_dayViewController;
    [(EKDayViewController *)dayViewController gutterWidth];
    [(EKDayViewController *)dayViewController setFrame:0.0 gutterWidth:0.0, v7, v10, v12];
    window2 = [(MainViewController *)self window];
    EKUIPopFallbackSizingContextWithViewHierarchy();

    self->_hasSetUpDayViewInitialLayout = 1;
  }

  v14.receiver = self;
  v14.super_class = DayViewController;
  [(DayViewController *)&v14 viewWillLayoutSubviews];
}

- (DayViewController)initWithDay:(id)day model:(id)model window:(id)window
{
  dayCopy = day;
  v22.receiver = self;
  v22.super_class = DayViewController;
  v9 = [(MainViewController *)&v22 initWithWindow:window model:model];
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
    calendarDateForDay = [dayCopy calendarDateForDay];
    day = v9->_day;
    v9->_day = calendarDateForDay;

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
    date = [(EKCalendarDate *)v9->_day date];
    calendarDateForEndOfDay = [(EKCalendarDate *)v9->_day calendarDateForEndOfDay];
    date2 = [calendarDateForEndOfDay date];
    [(CUIKCalendarModel *)model setPreferredReloadStartDate:date endDate:date2];
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

- (void)viewWillAppear:(BOOL)appear
{
  v28.receiver = self;
  v28.super_class = DayViewController;
  [(DayViewController *)&v28 viewWillAppear:appear];
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

  navigationItem = [(DayViewController *)self navigationItem];
  title = [navigationItem title];
  previousNavigationTitle = self->_previousNavigationTitle;
  self->_previousNavigationTitle = title;

  navigationItem2 = [(DayViewController *)self navigationItem];
  [navigationItem2 setTitle:&stru_1002133B8];

  window = [(MainViewController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  view = [(EKDayViewController *)self->_dayViewController view];
  window2 = [(MainViewController *)self window];
  EKUIPopFallbackSizingContextWithViewHierarchy();

  displayDate = [(EKDayViewController *)self->_dayViewController displayDate];
  calendar = [(CUIKCalendarModel *)self->super._model calendar];
  timeZone = [calendar timeZone];
  v15 = [EKCalendarDate calendarDateWithDateComponents:displayDate timeZone:timeZone];

  calendar2 = [(CUIKCalendarModel *)self->super._model calendar];
  date = [v15 date];
  selectedDate = [(CUIKCalendarModel *)self->super._model selectedDate];
  date2 = [selectedDate date];
  v20 = [calendar2 isDate:date inSameDayAsDate:date2];

  if ((v20 & 1) == 0)
  {
    model = [(MainViewController *)self model];
    selectedDate2 = [model selectedDate];
    [(DayViewController *)self selectDate:selectedDate2 animated:0];

    model2 = [(MainViewController *)self model];
    selectedDate3 = [model2 selectedDate];

    v15 = selectedDate3;
  }

  if (CalSolariumEnabled())
  {
    selectedDay = [(CUIKCalendarModel *)self->super._model selectedDay];
    [(DayViewController *)self _updateNavigationTitleToDate:selectedDay];
  }

  scrubberControllerNeue = self->_scrubberControllerNeue;
  date3 = [v15 date];
  [(DayNavigationViewController *)scrubberControllerNeue setSelectedDate:date3 animated:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  previousNavigationTitle = self->_previousNavigationTitle;
  self->_previousNavigationTitle = 0;

  navigationController = [(DayViewController *)self navigationController];
  extendedLaunchFinished = [navigationController extendedLaunchFinished];

  if (extendedLaunchFinished)
  {
    [(CUIKCalendarModel *)self->super._model setDesiredPaddingDays:1];
    [(CUIKCalendarModel *)self->super._model setComponentForExpandingPadding:16];
  }

  v8.receiver = self;
  v8.super_class = DayViewController;
  [(MainViewController *)&v8 viewDidAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  previousNavigationTitle = self->_previousNavigationTitle;
  if (previousNavigationTitle)
  {
    navigationItem = [(DayViewController *)self navigationItem];
    [navigationItem setTitle:previousNavigationTitle];

    v7 = self->_previousNavigationTitle;
    self->_previousNavigationTitle = 0;
  }

  v8.receiver = self;
  v8.super_class = DayViewController;
  [(DayViewController *)&v8 viewDidDisappear:disappearCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  if ([(DayViewController *)self isViewLoaded])
  {
    view = [(DayViewController *)self view];
    window = [view window];

    if (window)
    {
      v12.receiver = self;
      v12.super_class = DayViewController;
      [(MainViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
      dayView = [(DayViewController *)self dayView];
      [dayView viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];

      dayScrubberController = [(DayViewController *)self dayScrubberController];
      [dayScrubberController viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];
    }
  }
}

- (void)updatePalette:(id)palette
{
  paletteCopy = palette;
  [paletteCopy setWeekdayHeaderVisible:1];
  [paletteCopy setWeekdayHeaderFillsHalfWidth:0];
  dayScrubberController = [(DayViewController *)self dayScrubberController];
  ekui_futureTraitCollection = [(DayViewController *)self ekui_futureTraitCollection];
  [dayScrubberController setShowsWeekNumberWhenEnabled:{objc_msgSend(ekui_futureTraitCollection, "horizontalSizeClass") == 2}];

  [paletteCopy setDayScrubberController:dayScrubberController];
  view = [dayScrubberController view];
  [view setNeedsLayout];

  [paletteCopy setUseCustomDayFrames:0];
  if (CalSolariumEnabled())
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  [paletteCopy setFocusBannerPlacement:v7];
  [paletteCopy sizeToFit];
  [paletteCopy frame];
  v9 = v8;
  containingPalette = [paletteCopy containingPalette];

  [containingPalette setPreferredHeight:v9];
}

- (void)_updateNavigationTitleToDate:(id)date
{
  dateCopy = date;
  navigationController = [(DayViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [navigationController updateTitleToDate:dateCopy];
  }
}

- (void)selectDate:(id)date andTime:(BOOL)time animated:(BOOL)animated
{
  animatedCopy = animated;
  timeCopy = time;
  dateCopy = date;
  if (dateCopy)
  {
    shownEventEditViewController = [(MainViewController *)self shownEventEditViewController];

    if (!shownEventEditViewController)
    {
      eventStore = [(CUIKCalendarModel *)self->super._model eventStore];
      timeZone = [eventStore timeZone];

      v12 = [dateCopy calendarDateInTimeZone:timeZone];
      calendarDateForDay = [v12 calendarDateForDay];
      day = self->_day;
      self->_day = calendarDateForDay;

      if (!self->_scrubberControllerNeue || !self->_dayViewController)
      {
LABEL_24:

        goto LABEL_25;
      }

      v37 = v12;
      v38 = timeCopy;
      v15 = self->_day;
      v16 = +[NSCalendar currentCalendar];
      displayDate = [(EKDayViewController *)self->_dayViewController displayDate];
      v18 = [v16 dateFromComponents:displayDate];
      v36 = timeZone;
      v19 = [EKCalendarDate calendarDateWithDate:v18 timeZone:timeZone];
      v20 = [(EKCalendarDate *)v15 differenceInDays:v19];

      if (v20)
      {
        v21 = animatedCopy;
      }

      else
      {
        v21 = 0;
      }

      date = [(EKCalendarDate *)self->_day date];
      model = [(MainViewController *)self model];
      [model setSelectedDate:dateCopy];

      model2 = [(MainViewController *)self model];
      calendarDateForEndOfDay = [(EKCalendarDate *)self->_day calendarDateForEndOfDay];
      date2 = [calendarDateForEndOfDay date];
      [model2 setPreferredReloadStartDate:date endDate:date2];

      if (v21)
      {
        if ([(DayNavigationViewController *)self->_scrubberControllerNeue canAnimateToDate:date])
        {
          [(DayNavigationViewController *)self->_scrubberControllerNeue setSelectedDate:date animated:1];
          calendar = [(CUIKCalendarModel *)self->super._model calendar];
          v28 = [calendar components:30 fromDate:date];
          [(EKDayViewController *)self->_dayViewController setDisplayDate:v28];
        }

        else
        {
          calendar = [(CUIKCalendarModel *)self->super._model calendar];
          alwaysAnimate = [(EKDayViewController *)self->_dayViewController alwaysAnimate];
          [(EKDayViewController *)self->_dayViewController setAlwaysAnimate:0];
          v34 = [calendar components:30 fromDate:date];
          [(EKDayViewController *)self->_dayViewController setDisplayDate:v34];

          [(EKDayViewController *)self->_dayViewController setAlwaysAnimate:alwaysAnimate];
          [(DayNavigationViewController *)self->_scrubberControllerNeue setSelectedDate:date animated:0];
        }

        timeZone = v36;

        [(DayViewController *)self dayViewDidChangeSelectedDate:date];
        v12 = v37;
      }

      else
      {
        [(DayNavigationViewController *)self->_scrubberControllerNeue setSelectedDate:date animated:0];
        v30 = v20;
        if (!v20 && animatedCopy)
        {
          [(DayNavigationViewController *)self->_scrubberControllerNeue pulseToday];
        }

        calendar2 = [(CUIKCalendarModel *)self->super._model calendar];
        v32 = [calendar2 components:30 fromDate:date];
        [(EKDayViewController *)self->_dayViewController setDisplayDate:v32];

        [(DayViewController *)self dayViewDidChangeSelectedDate:date];
        timeZone = v36;
        v12 = v37;
        if (!v30)
        {
          [(DayViewController *)self _showNowWhenSameDaySelected];
LABEL_21:
          if (v38)
          {
            dayView = [(DayViewController *)self dayView];
            [dayView scrollToDate:dateCopy animated:v21];
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

- (BOOL)isDateVisible:(id)visible
{
  visibleCopy = visible;
  calendar = [(CUIKCalendarModel *)self->super._model calendar];
  displayDate = [(EKDayViewController *)self->_dayViewController displayDate];
  v7 = [calendar dateFromComponents:displayDate];

  v8 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = visibleCopy;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Day view determining if date %@ is visible. Onscreen date: %@", &v11, 0x16u);
  }

  v9 = [calendar isDate:visibleCopy inSameDayAsDate:v7];

  return v9;
}

- (void)currentlyVisibleDateRangeFromStartDate:(id *)date toEndDate:(id *)endDate
{
  calendar = [(CUIKCalendarModel *)self->super._model calendar];
  displayDate = [(EKDayViewController *)self->_dayViewController displayDate];
  v8 = [calendar dateFromComponents:displayDate];

  if (date)
  {
    calendar2 = [(CUIKCalendarModel *)self->super._model calendar];
    timeZone = [calendar2 timeZone];
    *date = [v8 dateForStartOfDayInTimeZone:timeZone];
  }

  if (endDate)
  {
    v11 = [v8 dateByAddingHours:1 inCalendar:calendar];
    calendar3 = [(CUIKCalendarModel *)self->super._model calendar];
    timeZone2 = [calendar3 timeZone];
    *endDate = [v11 dateForEndOfDayInTimeZone:timeZone2];
  }
}

- (void)showNowAnimated:(BOOL)animated
{
  animatedCopy = animated;
  dayView = [(DayViewController *)self dayView];
  [dayView scrollToNow:animatedCopy];
}

- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  animatedCopy = animated;
  eventCopy = event;
  contextCopy = context;
  if (mode)
  {
    if (mode == 3)
    {
      [(DayViewController *)self beginEditingOccurrence:eventCopy creationMethod:3];
    }

    else
    {
      [(DayViewController *)self _showDetailForEvent:eventCopy animated:animatedCopy showComments:mode == 2 context:contextCopy];
    }
  }

  else
  {
    startCalendarDate = [eventCopy startCalendarDate];
    [(DayViewController *)self selectDate:startCalendarDate animated:animatedCopy];

    [(DayViewController *)self clearSelection];
    [(DayViewController *)self addEventToSelection:eventCopy];
    [(DayViewController *)self didShowEventWithoutShowingDetails:eventCopy];
  }

  [(DayViewController *)self _scrollToEvent:eventCopy animated:animatedCopy];
}

- (void)addEventToSelection:(id)selection
{
  model = self->super._model;
  selectionCopy = selection;
  [(CUIKCalendarModel *)model selectOccurrence:selectionCopy];
  v7 = selectionCopy;
  v6 = [NSArray arrayWithObjects:&v7 count:1];

  [(DayViewController *)self _setUpSelectedOccurrenceViewsWithEvents:v6 animated:1 autoScroll:0 resetSelection:0];
}

- (void)removeEventFromSelection:(id)selection
{
  selectionCopy = selection;
  [(CUIKCalendarModel *)self->super._model deselectOccurrence:selectionCopy];
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
        occurrence = [v10 occurrence];
        v12 = [occurrence isEqual:selectionCopy];

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
  selfCopy = self;
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
        occurrence2 = [v18 occurrence];
        v20 = [occurrence2 isEqual:selectionCopy];

        if (v20)
        {
          [(NSMutableArray *)selfCopy->_selectedOccurrenceViews removeObject:v18];
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
  gestureController = [(EKDayViewController *)self->_dayViewController gestureController];
  dragGestureInProgress = [gestureController dragGestureInProgress];

  return dragGestureInProgress;
}

- (void)extendedLaunchCompletedByViewType:(int)type
{
  v6.receiver = self;
  v6.super_class = DayViewController;
  [(MainViewController *)&v6 extendedLaunchCompletedByViewType:*&type];
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
  displayDate = [(EKDayViewController *)self->_dayViewController displayDate];
  model = [(MainViewController *)self model];
  calendar = [model calendar];

  v6 = [calendar dateFromComponents:displayDate];
  if (v6)
  {
    if ([calendar isDateInToday:v6])
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

- (void)setVisible:(BOOL)visible
{
  visibleCopy = visible;
  self->_visible = visible;
  [(DayNavigationViewController *)self->_scrubberControllerNeue setVisible:?];
  view = [(EKDayViewController *)self->_dayViewController view];
  [view setHidden:!visibleCopy];
}

- (double)firstCellInset
{
  weekScrollView = [(DayNavigationViewController *)self->_scrubberControllerNeue weekScrollView];
  [weekScrollView frame];
  v4 = v3;

  return v4;
}

- (CGRect)scrubberFrameWithPaletteView:(id)view
{
  viewCopy = view;
  view = [(DayViewController *)self view];
  view2 = [(DayNavigationViewController *)self->_scrubberControllerNeue view];
  [view2 frame];
  [view convertRect:viewCopy fromView:?];
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
  weekScrollView = [(DayNavigationViewController *)self->_scrubberControllerNeue weekScrollView];
  firstVisibleDayOffsetFromSelectedDay = [weekScrollView firstVisibleDayOffsetFromSelectedDay];

  return firstVisibleDayOffsetFromSelectedDay;
}

- (void)_showWeekdayLabelPreferenceChanged
{
  showWeekdayLabel = [(DayViewController *)self showWeekdayLabel];
  dayViewController = self->_dayViewController;

  [(EKDayViewController *)dayViewController setShowWeekdayLabel:showWeekdayLabel];
}

- (void)presentDetailsForEvents:(id)events animated:(BOOL)animated showComments:(BOOL)comments context:(id)context
{
  commentsCopy = comments;
  animatedCopy = animated;
  contextCopy = context;
  eventsCopy = events;
  if ([eventsCopy count] < 2)
  {
    firstObject = [eventsCopy firstObject];
    [(DayViewController *)self _showDetailForEvent:firstObject animated:animatedCopy showComments:commentsCopy context:contextCopy];
  }

  else
  {
    [(DayViewController *)self _showDetailForEvents:eventsCopy animated:animatedCopy];
  }

  firstObject2 = [eventsCopy firstObject];

  [(DayViewController *)self _scrollToEvent:firstObject2 animated:animatedCopy];
}

- (void)beginEditingOccurrence:(id)occurrence creationMethod:(unint64_t)method
{
  v5 = [AddEventViewController editOrAddViewControllerForEventOrIntegrationWithEvent:occurrence model:self->super._model creationMethod:method viewStart:0 eventEditViewDelegate:self];
  [(DayViewController *)self showEditViewController:v5];
}

- (void)_showDetailForEvent:(id)event animated:(BOOL)animated userInitiated:(BOOL)initiated
{
  eventCopy = event;
  objc_initWeak(&location, self);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1001536D0;
  v15 = &unk_1002126F0;
  objc_copyWeak(&v17, &location);
  v9 = eventCopy;
  v16 = v9;
  initiatedCopy = initiated;
  animatedCopy = animated;
  v10 = objc_retainBlock(&v12);
  v11 = [CalendarTipsManager sharedManager:v12];
  [v11 dismissTipDueToUserNavigationWithCompletionBlock:v10];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_showDetailForEvents:(id)events animated:(BOOL)animated userInitiated:(BOOL)initiated
{
  eventsCopy = events;
  objc_initWeak(&location, self);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1001538B0;
  v15 = &unk_1002126F0;
  objc_copyWeak(&v17, &location);
  v9 = eventsCopy;
  v16 = v9;
  initiatedCopy = initiated;
  animatedCopy = animated;
  v10 = objc_retainBlock(&v12);
  v11 = [CalendarTipsManager sharedManager:v12];
  [v11 dismissTipDueToUserNavigationWithCompletionBlock:v10];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)dayNavigationViewController:(id)controller didSelectDate:(id)date
{
  model = self->super._model;
  dateCopy = date;
  calendar = [(CUIKCalendarModel *)model calendar];
  v15 = [calendar components:30 fromDate:dateCopy];

  calendar2 = [(CUIKCalendarModel *)self->super._model calendar];
  timeZone = [calendar2 timeZone];
  v10 = [EKCalendarDate calendarDateWithDateComponents:v15 timeZone:timeZone];

  [(CUIKCalendarModel *)self->super._model setSelectedDate:v10];
  calendarDateForDay = [v10 calendarDateForDay];
  date = [calendarDateForDay date];

  calendarDateForEndOfDay = [v10 calendarDateForEndOfDay];
  date2 = [calendarDateForEndOfDay date];

  [(CUIKCalendarModel *)self->super._model setPreferredReloadStartDate:date endDate:date2];
  [(EKDayViewController *)self->_dayViewController setDisplayDate:v15];
  [(DayViewController *)self scrubberDidChangeSelectedDate:dateCopy];

  [(MainViewController *)self setSceneTitleNeedsUpdate];
  [(DayViewController *)self wasAllowedToChangeDate];
}

- (void)_showDetailForEvent:(id)event animated:(BOOL)animated showComments:(BOOL)comments context:(id)context
{
  if (event)
  {
    commentsCopy = comments;
    animatedCopy = animated;
    model = self->super._model;
    contextCopy = context;
    eventCopy = event;
    [(CUIKCalendarModel *)model setSelectedOccurrence:eventCopy];
    v13 = [(DayViewController *)self showDetailViewControllerForEvent:eventCopy context:contextCopy animated:animatedCopy];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && commentsCopy)
    {
      [v13 openAttendeesDetailItem];
    }
  }
}

- (void)_showDetailForEvents:(id)events animated:(BOOL)animated
{
  animatedCopy = animated;
  eventsCopy = events;
  [(CUIKCalendarModel *)self->super._model setSelectedOccurrences:eventsCopy];
  v6 = [(DayViewController *)self showDetailViewControllerForEvents:eventsCopy animated:animatedCopy];
}

- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  controllerCopy = controller;
  [controllerCopy setDelegate:0];
  [(CUIKCalendarModel *)self->super._model setSelectedOccurrence:0];
  presentingViewController = [controllerCopy presentingViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    presentingViewController2 = [controllerCopy presentingViewController];
    v9 = presentingViewController2;
    if (action == 2)
    {
      event = [controllerCopy event];
      [v9 reminderDetailDismissedWithDeletedEvent:event];
    }

    else
    {
      [presentingViewController2 reminderDetailDismissedWithDeletedEvent:0];
    }
  }

  else
  {
    navigationController = [(DayViewController *)self navigationController];
    presentedViewController = [navigationController presentedViewController];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    navigationController2 = [(DayViewController *)self navigationController];
    v15 = navigationController2;
    if (v13)
    {
      presentedViewController2 = [navigationController2 presentedViewController];
      v17 = presentedViewController2;
      if (action == 2)
      {
        event2 = [controllerCopy event];
        [v17 reminderDetailDismissedWithDeletedEvent:event2];
      }

      else
      {
        [presentedViewController2 reminderDetailDismissedWithDeletedEvent:0];
      }
    }

    else
    {

      if (v15)
      {
        navigationController3 = [(DayViewController *)self navigationController];
        [navigationController3 popViewControllersAfterAndIncluding:controllerCopy animated:!self->_editorDismissedFromDelete];

        self->_editorDismissedFromDelete = 0;
        goto LABEL_14;
      }
    }
  }

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
LABEL_14:
}

- (void)eventViewControllerWillDisappear:(id)disappear
{
  navigationController = [(DayViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    navigationController2 = [(DayViewController *)self navigationController];
    v6 = [navigationController2 performSelector:"isTransitioningTraitCollection"];

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

- (void)dayViewController:(id)controller didSelectEvent:(id)event animated:(BOOL)animated userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  animatedCopy = animated;
  eventCopy = event;
  model = [(MainViewController *)self model];
  pasteboardManager = [model pasteboardManager];
  startDate = [eventCopy startDate];
  [pasteboardManager setDateForPaste:startDate];

  [(DayViewController *)self _showDetailForEvent:eventCopy animated:animatedCopy userInitiated:initiatedCopy];
}

- (void)dayViewController:(id)controller didSelectEvents:(id)events animated:(BOOL)animated userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  animatedCopy = animated;
  eventsCopy = events;
  model = [(MainViewController *)self model];
  pasteboardManager = [model pasteboardManager];
  firstObject = [eventsCopy firstObject];
  startDate = [firstObject startDate];
  [pasteboardManager setDateForPaste:startDate];

  [(DayViewController *)self _showDetailForEvents:eventsCopy animated:animatedCopy userInitiated:initiatedCopy];
}

- (void)dayViewController:(id)controller pointerDidTargetOccurrences:(id)occurrences
{
  controllerCopy = controller;
  occurrencesCopy = occurrences;
  if ([occurrencesCopy count] == 1)
  {
    firstObject = [occurrencesCopy firstObject];

    [(DayViewController *)self dayViewController:controllerCopy didSelectEvent:firstObject animated:1 userInitiated:1];
    occurrencesCopy = firstObject;
  }

  else
  {
    [(DayViewController *)self dayViewController:controllerCopy didSelectEvents:occurrencesCopy animated:1 userInitiated:1];
  }
}

- (void)dayViewController:(id)controller modifySelection:(id)selection
{
  controllerCopy = controller;
  selectionCopy = selection;
  if (selectionCopy)
  {
    selectedOccurrences = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
    v8 = [selectedOccurrences containsObject:selectionCopy];

    if (v8)
    {
      [(DayViewController *)self removeEventFromSelection:selectionCopy];
    }

    else
    {
      [(DayViewController *)self addEventToSelection:selectionCopy];
    }
  }
}

- (void)dayViewController:(id)controller didChangeDisplayDate:(id)date
{
  model = self->super._model;
  dateCopy = date;
  eventStore = [(CUIKCalendarModel *)model eventStore];
  timeZone = [eventStore timeZone];
  v9 = [EKCalendarDate calendarDateWithDateComponents:dateCopy timeZone:timeZone];

  day = self->_day;
  self->_day = v9;
  v11 = v9;

  [(CUIKCalendarModel *)self->super._model setSelectedDate:v11];

  [(MainViewController *)self setSceneTitleNeedsUpdate];
}

- (void)dayViewControllerDidEndScrolling:(id)scrolling
{
  model = self->super._model;
  scrollingCopy = scrolling;
  calendar = [(CUIKCalendarModel *)model calendar];
  displayDate = [scrollingCopy displayDate];

  v9 = [calendar dateFromComponents:displayDate];

  [(DayNavigationViewController *)self->_scrubberControllerNeue setSelectedDate:v9 animated:1];
  if ([UIApp isRunningTest])
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"NSString *const DayViewController_DayScrollDidEndAnimationNotification" object:self userInfo:0];
  }
}

- (void)dayViewController:(id)controller didStartDeceleratingTargettingDate:(id)date
{
  dateCopy = date;
  CalAnalyticsSendEvent();
  [(DayViewController *)self beganHorizontalDeceleration];
  calendar = [(CUIKCalendarModel *)self->super._model calendar];
  timeZone = [calendar timeZone];
  obj = [EKCalendarDate calendarDateWithDateComponents:dateCopy timeZone:timeZone];

  scrubberControllerNeue = self->_scrubberControllerNeue;
  date = [obj date];
  [(DayNavigationViewController *)scrubberControllerNeue setSelectedDate:date animated:1];

  if ([obj isEqual:self->_day])
  {
    [(CUIKCalendarModel *)self->super._model setSelectedDate:obj];
  }

  else
  {
    objc_storeStrong(&self->_day, obj);
    [(CUIKCalendarModel *)self->super._model setSelectedDate:obj];
    date2 = [obj date];
    [(DayViewController *)self dayViewDidChangeSelectedDate:date2];
  }
}

- (id)dayViewController:(id)controller createEventAtDate:(id)date allDay:(BOOL)day
{
  dayCopy = day;
  dateCopy = date;
  CalAnalyticsSendEvent();
  eventStore = [(CUIKCalendarModel *)self->super._model eventStore];
  v9 = [EKEvent eventWithEventStore:eventStore];

  [v9 setStartDate:dateCopy];
  if (dayCopy)
  {
    v10 = 1.0;
  }

  else
  {
    eventStore = +[CalFoundationPreferences shared];
    [eventStore defaultEventDuration];
  }

  v11 = [dateCopy dateByAddingTimeInterval:v10];
  [v9 setEndDate:v11];

  if (!dayCopy)
  {
  }

  [v9 setAllDay:dayCopy];
  v12 = +[EKEventEditor defaultTitleForCalendarItem];
  [v9 setTitle:v12];

  defaultCalendarForNewEvents = [(CUIKCalendarModel *)self->super._model defaultCalendarForNewEvents];
  [v9 setCalendar:defaultCalendarForNewEvents];

  return v9;
}

- (id)dayViewController:(id)controller createReminderAtDate:(id)date allDay:(BOOL)day
{
  dayCopy = day;
  model = self->super._model;
  dateCopy = date;
  eventStore = [(CUIKCalendarModel *)model eventStore];
  v10 = [EKEvent eventWithEventStore:eventStore];

  [v10 setStartDate:dateCopy];
  [v10 setEndDate:dateCopy];

  [v10 setAllDay:dayCopy];
  reminderCalendar = [(CUIKCalendarModel *)self->super._model reminderCalendar];
  [v10 setCalendar:reminderCalendar];

  return v10;
}

- (BOOL)dayViewControllerShouldAllowLongPress:(id)press
{
  if (![(DayViewController *)self shouldAllowLongPress])
  {
    return 0;
  }

  defaultCalendarForNewEvents = [(CUIKCalendarModel *)self->super._model defaultCalendarForNewEvents];
  v5 = defaultCalendarForNewEvents != 0;

  return v5;
}

- (void)dayViewControllerDidTapEmptySpace:(id)space onDate:(id)date
{
  dateCopy = date;
  [(DayViewController *)self didSelectEvent:0 userInitiated:1];
  [(DayViewController *)self _cleanupSelectedOccurrenceCloneViews];
  if (dateCopy)
  {
    model = [(MainViewController *)self model];
    pasteboardManager = [model pasteboardManager];
    date = [dateCopy date];
    [pasteboardManager setDateForPaste:date];
  }
}

- (void)dayViewController:(id)controller didChangeDisplayedOccurrencesDueToTrigger:(int)trigger
{
  [(DayViewController *)self displayedOccurrencesChangedWithTrigger:*&trigger];
  if (self->_hasReloadedWithData && !self->_hasEndedExtendedLaunch)
  {
    self->_hasEndedExtendedLaunch = 1;

    [(DayViewController *)self extendedLaunchCompletedByViewType:3];
  }
}

- (BOOL)dayViewController:(id)controller willDuplicateOccurrence:(id)occurrence
{
  controllerCopy = controller;
  occurrenceCopy = occurrence;
  v8 = +[UIApplication sharedApplication];
  if ([v8 optionKeyIsDown] && (v22 = occurrenceCopy, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v22, 1), v9 = objc_claimAutoreleasedReturnValue(), v10 = +[CUIKPasteboardUtilities allEventsValidForAction:fromEvents:](CUIKPasteboardUtilities, "allEventsValidForAction:fromEvents:", 2, v9), v9, v10))
  {
    v11 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "duplicating event(s) in day view because option key is down", v21, 2u);
    }

    model = [(MainViewController *)self model];
    pasteboardManager = [model pasteboardManager];
    startDate = [occurrenceCopy startDate];
    [pasteboardManager setDateForPaste:startDate];

    model2 = [(MainViewController *)self model];
    pasteboardManager2 = [model2 pasteboardManager];
    [pasteboardManager2 setCalendarForPaste:0];

    pasteboardManager3 = [(DayViewController *)self pasteboardManager];
    v18 = [NSSet setWithObject:occurrenceCopy];
    v19 = 1;
    [pasteboardManager3 duplicateEvents:v18 withDateMode:1 delegate:controllerCopy];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)dayViewControllerDidBeginMovingEventWithGesture:(id)gesture
{
  gestureController = [gesture gestureController];
  event = [gestureController event];
  isNew = [event isNew];

  if ((isNew & 1) == 0)
  {
    CalAnalyticsSendEvent();
  }

  [(DayViewController *)self didBeginMovingOccurrenceWithGesture];
}

- (void)dayViewController:(id)controller requestsPresentationOfViewControllerForGestures:(id)gestures
{
  gesturesCopy = gestures;
  v7 = [[UnadaptableNavigationController alloc] initWithRootViewController:gesturesCopy];

  [(UnadaptableNavigationController *)v7 setModalPresentationStyle:2];
  navigationController = [(DayViewController *)self navigationController];
  [navigationController presentViewController:v7 animated:1 completion:0];
}

- (double)dayViewControllerPersistedHourScalePreference:(id)preference
{
  persistedSceneState = [(CUIKCalendarModel *)self->super._model persistedSceneState];

  if (!persistedSceneState)
  {
    return -1.0;
  }

  persistedSceneState2 = [(CUIKCalendarModel *)self->super._model persistedSceneState];
  [persistedSceneState2 dayViewHourScale];
  v7 = v6;

  return v7;
}

- (void)dayViewController:(id)controller requestsSaveHourScalePreference:(double)preference
{
  persistedSceneState = [(CUIKCalendarModel *)self->super._model persistedSceneState];
  [persistedSceneState setDayViewHourScale:preference];
}

- (void)dayOccurrenceViewSelected:(id)selected source:(unint64_t)source
{
  selectedCopy = selected;
  if (source == 2)
  {
    v11 = selectedCopy;
    selectedOccurrences = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
    occurrence = [v11 occurrence];
    v9 = [selectedOccurrences containsObject:occurrence];

    selectedCopy = v11;
    if ((v9 & 1) == 0)
    {
      occurrence2 = [v11 occurrence];
      [(CUIKCalendarModel *)self->super._model setSelectedOccurrence:occurrence2];

      selectedCopy = v11;
    }
  }
}

- (BOOL)provideExternalRepresentationsForEvent:(id)event withProvider:(id)provider
{
  eventCopy = event;
  providerCopy = provider;
  if ([eventCopy isReminderIntegrationEvent])
  {
    v7 = [CUIKIReminderDragProvider itemProviderWriterForReminderEvent:eventCopy];
    if (v7)
    {
      [providerCopy registerObject:v7 visibility:0];

      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_occurrencesChanged:(id)changed
{
  changedCopy = changed;
  view = [(DayViewController *)self view];
  superview = [view superview];

  if (superview)
  {
    userInfo = [changedCopy userInfo];

    if (userInfo)
    {
      userInfo2 = [changedCopy userInfo];
      v8 = [userInfo2 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeStartKey];

      userInfo3 = [changedCopy userInfo];
      v10 = [userInfo3 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeEndKey];

      userInfo4 = [changedCopy userInfo];
      v12 = [userInfo4 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedFilteredAllKey];

      userInfo5 = [changedCopy userInfo];
      v14 = [userInfo5 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedGenerationKey];

      if (([v12 BOOLValue] & 1) == 0)
      {
        self->_hasReloadedWithData = 1;
      }

      if (self->_viewHasDoneFirstAppearance)
      {
        intValue = [v14 intValue];
        dayViewController = self->_dayViewController;
        if (v8 && v10)
        {
          [(EKDayViewController *)dayViewController loadDataBetweenStart:v8 end:v10 withTrigger:1 generation:intValue completionForCurrentDayReload:0];
        }

        else
        {
          [(EKDayViewController *)dayViewController reloadDataForOccurrenceChangeWithGeneration:intValue];
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

- (void)_significantTimeChanged:(id)changed
{
  dayView = [(DayViewController *)self dayView];
  [(DayNavigationViewController *)self->_scrubberControllerNeue significantTimeChangeOccurred];
  [dayView significantTimeChangeOccurred];
}

- (void)_timeZoneChanged:(id)changed
{
  dayView = [(DayViewController *)self dayView];
  model = [(MainViewController *)self model];
  selectedDate = [model selectedDate];
  [selectedDate absoluteTime];
  v7 = v6;

  model2 = [(MainViewController *)self model];
  calendar = [model2 calendar];
  timeZone = [calendar timeZone];

  [dayView setTimeZone:timeZone];
  model3 = [(MainViewController *)self model];
  calendar2 = [model3 calendar];
  [dayView setCalendar:calendar2];

  v13 = [[EKCalendarDate alloc] initWithAbsoluteTime:timeZone timeZone:v7];
  dayComponents = [v13 dayComponents];
  [dayView setDisplayDate:dayComponents];
  [(DayNavigationViewController *)self->_scrubberControllerNeue timeZoneChanged];
  [dayView timeZoneChanged];
}

- (void)_receivedSelectedDateChangeNotification:(id)notification
{
  view = [(DayViewController *)self view];
  window = [view window];

  if (window)
  {
    model = [(MainViewController *)self model];
    date = [(EKCalendarDate *)self->_day date];
    calendarDateForEndOfDay = [(EKCalendarDate *)self->_day calendarDateForEndOfDay];
    date2 = [calendarDateForEndOfDay date];
    [model setPreferredReloadStartDate:date endDate:date2];
  }
}

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action dismissController:(BOOL)dismissController completionHandler:(id)handler
{
  dismissControllerCopy = dismissController;
  controllerCopy = controller;
  handlerCopy = handler;
  event = [controllerCopy event];
  if (event)
  {
    if (action)
    {
      if (action == 2)
      {
        [(EKDayViewController *)self->_dayViewController editorDidDeleteEvent:event];
      }

      else if (action == 1)
      {
        calendarToMakeVisibleOnSave = [controllerCopy calendarToMakeVisibleOnSave];
        objectID = [calendarToMakeVisibleOnSave objectID];
        if (objectID)
        {
          [(CUIKCalendarModel *)self->super._model ensureCalendarVisibleWithId:objectID];
        }

        [(CUIKCalendarModel *)self->super._model setSelectedOccurrence:event];
        [(EKDayViewController *)self->_dayViewController editorDidSaveEvent:event];
        if ([calendarToMakeVisibleOnSave sharingStatus])
        {
          [(MainViewController *)self attemptDisplayReviewPrompt];
        }
      }
    }

    else
    {
      [(EKDayViewController *)self->_dayViewController editorDidCancelEditingEvent:event];
    }

    internalEditViewDelegate = [controllerCopy internalEditViewDelegate];

    if (internalEditViewDelegate == self && dismissControllerCopy)
    {
      presentingViewController = [controllerCopy presentingViewController];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10015551C;
      v18[3] = &unk_10020EBC8;
      v18[4] = self;
      v19 = handlerCopy;
      [presentingViewController dismissViewControllerAnimated:1 completion:v18];
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

- (id)pasteboardManagerForEventEditViewController:(id)controller
{
  model = [(MainViewController *)self model];
  pasteboardManager = [model pasteboardManager];

  return pasteboardManager;
}

- (id)pasteboardManager
{
  model = [(MainViewController *)self model];
  pasteboardManager = [model pasteboardManager];

  return pasteboardManager;
}

- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward
{
  if (forward)
  {
    [event nextOccurrence];
  }

  else
  {
    [event previousOccurrence];
  }
  v4 = ;
  reminderOccurrenceType = [v4 reminderOccurrenceType];
  if (v4)
  {
    v6 = reminderOccurrenceType == 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;

  return v7;
}

- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward
{
  forwardCopy = forward;
  eventCopy = event;
  v10 = eventCopy;
  if (forwardCopy)
  {
    [eventCopy nextOccurrence];
  }

  else
  {
    [eventCopy previousOccurrence];
  }
  v7 = ;
  v8 = v7;
  if (v7)
  {
    startCalendarDate = [v7 startCalendarDate];
    [(DayViewController *)self selectDate:startCalendarDate animated:1];

    [(DayViewController *)self showEvent:v8 animated:1 showMode:0 context:0];
  }
}

- (void)eventViewControllerNextButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  event = [tappedCopy event];
  nextOccurrence = [event nextOccurrence];

  if (nextOccurrence)
  {
    [(DayViewController *)self eventViewController:tappedCopy didCompleteWithAction:0];
    startCalendarDate = [nextOccurrence startCalendarDate];
    [(DayViewController *)self selectDate:startCalendarDate animated:0];

    context = [tappedCopy context];
    [(DayViewController *)self showEvent:nextOccurrence animated:1 showMode:1 context:context];
  }
}

- (void)eventViewControllerPreviousButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  event = [tappedCopy event];
  previousOccurrence = [event previousOccurrence];

  if (previousOccurrence)
  {
    [(DayViewController *)self eventViewController:tappedCopy didCompleteWithAction:0];
    startCalendarDate = [previousOccurrence startCalendarDate];
    [(DayViewController *)self selectDate:startCalendarDate animated:0];

    context = [tappedCopy context];
    [(DayViewController *)self showEvent:previousOccurrence animated:1 showMode:1 context:context];
  }
}

- (void)eventViewController:(id)controller requestsShowEvent:(id)event
{
  eventCopy = event;
  controllerCopy = controller;
  [(DayViewController *)self eventViewController:controllerCopy didCompleteWithAction:0];
  context = [controllerCopy context];

  [(DayViewController *)self showEvent:eventCopy animated:1 showMode:1 context:context];
}

- (void)_scrollToEvent:(id)event animated:(BOOL)animated
{
  animatedCopy = animated;
  eventCopy = event;
  v6 = [(EKDayViewController *)self->_dayViewController occurrenceViewForEvent:?];
  if (-[DayViewController isViewLoaded](self, "isViewLoaded") && (-[DayViewController view](self, "view"), v7 = objc_claimAutoreleasedReturnValue(), [v7 window], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8) && v6)
  {
    [(EKDayViewController *)self->_dayViewController scrollEventIntoView:eventCopy animated:animatedCopy];
    eventIdentifier = 0;
  }

  else
  {
    eventIdentifier = [eventCopy eventIdentifier];
  }

  scrollToEventIdentifier = self->_scrollToEventIdentifier;
  self->_scrollToEventIdentifier = eventIdentifier;
}

- (BOOL)didSelectEvent:(id)event userInitiated:(BOOL)initiated
{
  eventCopy = event;
  if (!eventCopy)
  {
    [(CUIKCalendarModel *)self->super._model setSelectedOccurrences:&__NSArray0__struct];
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (!initiated)
  {
    selectedOccurrences = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
    v9 = [selectedOccurrences containsObject:eventCopy];

    if ((v9 & 1) == 0)
    {
      [(CUIKCalendarModel *)self->super._model setSelectedOccurrence:eventCopy];
      v12 = eventCopy;
      v10 = [NSArray arrayWithObjects:&v12 count:1];
      [(DayViewController *)self _setUpSelectedOccurrenceViewsWithEvents:v10 animated:1 autoScroll:0 resetSelection:1];
    }

    goto LABEL_7;
  }

  v7 = 1;
LABEL_8:

  return v7;
}

- (BOOL)didSelectEvents:(id)events userInitiated:(BOOL)initiated
{
  eventsCopy = events;
  v7 = eventsCopy;
  if (!eventsCopy || ![eventsCopy count])
  {
    [(CUIKCalendarModel *)self->super._model setSelectedOccurrences:&__NSArray0__struct];
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  if (!initiated)
  {
    selectedOccurrences = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
    v11 = [NSSet setWithArray:selectedOccurrences];
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

- (void)scrubberDidChangeSelectedDate:(id)date
{
  model = self->super._model;
  dateCopy = date;
  calendar = [(CUIKCalendarModel *)model calendar];
  timeZone = [calendar timeZone];
  v8 = [EKCalendarDate calendarDateWithDate:dateCopy timeZone:timeZone];

  day = self->_day;
  self->_day = v8;

  v10 = self->_day;

  [(DayViewController *)self _updateNavigationTitleToDate:v10];
}

- (void)dayViewDidChangeSelectedDate:(id)date
{
  model = self->super._model;
  dateCopy = date;
  calendar = [(CUIKCalendarModel *)model calendar];
  timeZone = [calendar timeZone];
  v8 = [EKCalendarDate calendarDateWithDate:dateCopy timeZone:timeZone];

  day = self->_day;
  self->_day = v8;

  v10 = self->_day;

  [(DayViewController *)self _updateNavigationTitleToDate:v10];
}

- (id)showDetailViewControllerForEvent:(id)event context:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  contextCopy = context;
  eventCopy = event;
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"Day" value:&stru_1002133B8 table:0];
  navigationItem = [(DayViewController *)self navigationItem];
  [navigationItem setTitle:v11];

  v13 = [(MainViewController *)self augmentEventDetailsContext:contextCopy];

  v14 = [EKEventViewController eventDetailViewControllerWithEvent:eventCopy delegate:self context:v13 canvasView:0];

  [(MainViewController *)self showViewController:v14 sender:self animated:animatedCopy completion:0];

  return v14;
}

- (id)showDetailViewControllerForEvents:(id)events animated:(BOOL)animated
{
  animatedCopy = animated;
  eventsCopy = events;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Day" value:&stru_1002133B8 table:0];
  navigationItem = [(DayViewController *)self navigationItem];
  [navigationItem setTitle:v8];

  v10 = [[EKExpandedReminderStackViewController alloc] initWithEvents:eventsCopy delegate:self];
  [v10 setPreferModalPresentation:0];
  [(MainViewController *)self showViewController:v10 sender:self animated:animatedCopy completion:0];

  return v10;
}

- (void)showReminderDetail:(id)detail
{
  detailCopy = detail;
  v7 = [(MainViewController *)self augmentEventDetailsContext:0];
  v5 = objc_alloc_init(UINavigationController);
  v6 = [EKEventViewController eventDetailViewControllerWithEvent:detailCopy delegate:self context:v7 canvasView:0];

  [v5 pushViewController:v6 animated:0];
  [(MainViewController *)self showViewController:v5 sender:self animated:1 completion:0];
}

- (void)showEditViewController:(id)controller
{
  controllerCopy = controller;
  navigationController = [(DayViewController *)self navigationController];
  [navigationController presentModalViewController:controllerCopy withTransition:8];
}

- (void)dataReloadedWithTrigger:(int)trigger
{
  view = [(DayViewController *)self view];
  window = [view window];

  if (window)
  {
    eventStore = [(CUIKCalendarModel *)self->super._model eventStore];
    v7 = [eventStore eventWithIdentifier:self->_scrollToEventIdentifier];

    [(DayViewController *)self _scrollToEvent:v7 animated:1];
  }
}

- (void)finishedPinchingDayView
{
  model = [(MainViewController *)self model];
  selectedOccurrences = [model selectedOccurrences];
  [(DayViewController *)self _setUpSelectedOccurrenceViewsWithEvents:selectedOccurrences animated:0 autoScroll:1 resetSelection:1];
}

- (void)_sceneEnteredForeground:(id)foreground
{
  object = [foreground object];
  model = [(MainViewController *)self model];
  sceneIdentifier = [model sceneIdentifier];
  _sceneIdentifier = [object _sceneIdentifier];
  if ([sceneIdentifier isEqualToString:_sceneIdentifier])
  {
    savedFirstVisibleSecond = [(DayViewController *)self savedFirstVisibleSecond];

    if ((savedFirstVisibleSecond & 0x80000000) != 0)
    {
      goto LABEL_6;
    }

    savedFirstVisibleSecond2 = [(DayViewController *)self savedFirstVisibleSecond];
    model = [(DayViewController *)self dayView];
    sceneIdentifier = [model currentDayView];
    [sceneIdentifier setFirstVisibleSecond:savedFirstVisibleSecond2];
  }

  else
  {
  }

LABEL_6:
}

- (void)dayViewController:(id)controller requestsSaveFirstVisibleSecondPreference:(int)preference
{
  v4 = *&preference;
  window = [(MainViewController *)self window];
  windowScene = [window windowScene];
  activationState = [windowScene activationState];

  if (!activationState)
  {

    [(DayViewController *)self saveFirstVisibleSecond:v4];
  }
}

- (void)saveFirstVisibleSecond:(int)second
{
  v3 = *&second;
  if (EKUIShouldSaveStateInPreferences())
  {
    model = [NSNumber numberWithInt:v3];
    persistedSceneState = +[CUIKPreferences sharedPreferences];
    [persistedSceneState setDayViewFirstVisibleSecond:model];
  }

  else
  {
    model = [(MainViewController *)self model];
    persistedSceneState = [model persistedSceneState];
    [persistedSceneState setDayViewFirstVisibleSecond:v3];
  }
}

- (BOOL)creationGestureController:(id)controller canActivateAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  gestureController = [(DayViewController *)self gestureController];
  if ([gestureController dragGestureInProgress])
  {
    v8 = 0;
LABEL_6:

    return v8;
  }

  gestureController2 = [(DayViewController *)self gestureController];
  draggingView = [gestureController2 draggingView];

  if (!draggingView)
  {
    _parentViewForCreationGesture = [(DayViewController *)self _parentViewForCreationGesture];
    dayView = [(DayViewController *)self dayView];
    currentDayView = [dayView currentDayView];
    [_parentViewForCreationGesture convertPoint:currentDayView toView:{x, y}];
    v15 = v14;
    v17 = v16;

    gestureController = [(DayViewController *)self dayView];
    currentDayView2 = [gestureController currentDayView];
    v19 = [currentDayView2 occurrenceViewAtPoint:{v15, v17}];
    v8 = v19 == 0;

    goto LABEL_6;
  }

  return 0;
}

- (id)_parentViewForCreationGesture
{
  dayView = [(DayViewController *)self dayView];
  effectiveEventGestureSuperview = [dayView effectiveEventGestureSuperview];

  return effectiveEventGestureSuperview;
}

- (id)creationGestureController:(id)controller requestedPreviewForEvent:(id)event
{
  eventCopy = event;
  dayView = [(DayViewController *)self dayView];
  createOccurrenceViewForEventGestures = [dayView createOccurrenceViewForEventGestures];

  [createOccurrenceViewForEventGestures setOccurrence:eventCopy];
  [createOccurrenceViewForEventGestures setSelected:1];
  return createOccurrenceViewForEventGestures;
}

- (double)creationGestureController:(id)controller requestedWidthForEventPreview:(id)preview atPoint:(CGPoint)point
{
  v6 = [(DayViewController *)self dayView:controller];
  currentDayView = [v6 currentDayView];
  [currentDayView frame];
  v9 = v8;
  dayView = [(DayViewController *)self dayView];
  currentDayView2 = [dayView currentDayView];
  [currentDayView2 leftContentInset];
  v13 = v9 - v12;

  return v13;
}

- (double)creationGestureController:(id)controller requestedXCoordinateForEventPreviewAtPoint:(CGPoint)point
{
  v5 = [(DayViewController *)self dayView:controller];
  currentDayView = [v5 currentDayView];

  _parentViewForCreationGesture = [(DayViewController *)self _parentViewForCreationGesture];
  dayView = [(DayViewController *)self dayView];
  currentDayView2 = [dayView currentDayView];
  [currentDayView2 leftContentInset];
  [_parentViewForCreationGesture convertPoint:currentDayView fromView:?];
  v11 = v10;

  return v11;
}

- (CGPoint)creationGestureController:(id)controller requestsPointForDate:(id)date
{
  dateCopy = date;
  dayView = [(DayViewController *)self dayView];
  [dateCopy timeIntervalSinceReferenceDate];
  v8 = v7;

  [dayView pointAtDate:0 isAllDay:v8];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)creationGestureController:(id)controller didResizeToDate:(id)date
{
  dateCopy = date;
  dayView = [(DayViewController *)self dayView];
  [dayView showTimelineHighlightForTime:dateCopy];
}

- (id)creationGestureController:(id)controller dateForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  dayView = [(DayViewController *)self dayView];
  currentDayView = [dayView currentDayView];
  [currentDayView dateAtPoint:0 isAllDay:{x, y}];
  v9 = v8;

  return [NSDate dateWithTimeIntervalSinceReferenceDate:v9];
}

- (id)creationGestureControllerRequestsNewEvent:(id)event
{
  model = [(MainViewController *)self model];
  calendar = [model calendar];
  dayView = [(DayViewController *)self dayView];
  displayDate = [dayView displayDate];
  v8 = [calendar dateFromComponents:displayDate];

  dayView2 = [(DayViewController *)self dayView];
  v10 = [(DayViewController *)self dayViewController:dayView2 createEventAtDate:v8 allDay:0];

  return v10;
}

- (void)creationGestureController:(id)controller didCreateNewEvent:(id)event
{
  eventCopy = event;
  dayView = [(DayViewController *)self dayView];
  currentEditor = [dayView currentEditor];

  if (!currentEditor)
  {
    v7 = +[EKEventEditor defaultTitleForCalendarItem];
    title = [eventCopy title];
    v9 = [v7 isEqualToString:title];

    if (v9)
    {
      [eventCopy setTitle:&stru_1002133B8];
    }

    [(DayViewController *)self beginEditingOccurrence:eventCopy creationMethod:4];
  }

  gestureController = [(DayViewController *)self gestureController];
  [gestureController liftUpOccurrenceForEditingEvent:eventCopy];
}

- (void)creationGestureControllerDidCancel:(id)cancel
{
  dayView = [(DayViewController *)self dayView];
  [dayView hideTimelineHighlight];
}

- (void)_setUpSelectedOccurrenceViewsWithEvents:(id)events animated:(BOOL)animated autoScroll:(BOOL)scroll resetSelection:(BOOL)selection
{
  animatedCopy = animated;
  selectionCopy = selection;
  scrollCopy = scroll;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = events;
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
        gestureController = [(DayViewController *)self gestureController];
        draggingView = [gestureController draggingView];
        occurrence = [draggingView occurrence];
        v16 = [occurrence isEqual:v12];

        if (v16)
        {
          v17 = 0;
        }

        else
        {
          dayView = [(DayViewController *)self dayView];
          v17 = [dayView occurrenceViewForEvent:v12 includeNextAndPreviousDays:1];

          if (v17)
          {
            if (v9)
            {
              v19 = v37;
            }

            else
            {
              if (selectionCopy)
              {
                _selectedOccurrenceFrontmostClonedViews = [(DayViewController *)self _selectedOccurrenceFrontmostClonedViews];
                v21 = [_selectedOccurrenceFrontmostClonedViews count];

                if (v21)
                {
                  [(DayViewController *)self _cleanupSelectedOccurrenceCloneViews];
                }
              }

              if (scrollCopy)
              {
                dayView2 = [(DayViewController *)self dayView];
                [dayView2 scrollEventIntoView:v12 animated:animatedCopy];
              }

              selectedOccurrenceViews = self->_selectedOccurrenceViews;
              if (selectedOccurrenceViews)
              {
                if (selectionCopy)
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

              _selectedOccurrenceViews = [(DayViewController *)self _selectedOccurrenceViews];
              v27 = [_selectedOccurrenceViews CalMap:&stru_100212730];
              v28 = [NSMutableSet setWithArray:v27];

              v19 = v28;
            }

            v37 = v19;
            if (([v19 containsObject:v12] & 1) == 0)
            {
              occurrences = [v17 occurrences];
              [v19 addObjectsFromArray:occurrences];

              [(NSMutableArray *)self->_selectedOccurrenceViews addObject:v17];
              superview = [v17 superview];
              v31 = [v17 copy];
              [v31 setDelegate:0];
              [v31 setIsSelectedCopyView:1];
              [v31 setSelectedCopy:0];
              [v31 setSelected:1];
              [v31 setUserInteractionEnabled:0];
              [v31 requestContentIfNeeded:16 completion:0];
              [v17 setSelectedCopy:v31];
              [superview addSubview:v31];
              [superview bringSubviewToFront:v31];
              if (animatedCopy)
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
  timedDayViewContentGridSubviews = [(DayViewController *)self timedDayViewContentGridSubviews];
  [v3 addObjectsFromArray:timedDayViewContentGridSubviews];

  allDayView = [(DayViewController *)self allDayView];
  subviews = [allDayView subviews];
  [v3 addObjectsFromArray:subviews];

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
  model = [(MainViewController *)self model];
  selectedOccurrences = [model selectedOccurrences];
  v4 = [NSSet setWithArray:selectedOccurrences];
  [(DayViewController *)self _cleanupSelectedOccurrenceCloneViewsSkipSet:v4];
}

- (void)_cleanupSelectedOccurrenceCloneViewsSkipSet:(id)set
{
  setCopy = set;
  dayView = [(DayViewController *)self dayView];
  view = [dayView view];
  [(DayViewController *)self _recursiveRemoveSelectedClonedViewsFromViewTree:view skipSet:setCopy];

  selectedOccurrenceViews = self->_selectedOccurrenceViews;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10015744C;
  v10[3] = &unk_100212780;
  v11 = setCopy;
  v8 = setCopy;
  v9 = [NSPredicate predicateWithBlock:v10];
  [(NSMutableArray *)selectedOccurrenceViews filterUsingPredicate:v9];
}

- (void)_recursiveRemoveSelectedClonedViewsFromViewTree:(id)tree skipSet:(id)set
{
  setCopy = set;
  if (tree)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    subviews = [tree subviews];
    v8 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          [(DayViewController *)self _recursiveRemoveSelectedClonedViewsFromViewTree:v12 skipSet:setCopy];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            occurrence = [v13 occurrence];
            v15 = [setCopy containsObject:occurrence];

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

        v9 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }
}

- (void)_selectedOccurrencesChanged:(id)changed
{
  selectedOccurrences = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
  v5 = [NSSet setWithArray:selectedOccurrences];

  [(DayViewController *)self _cleanupSelectedOccurrenceCloneViewsRespectingModelSelected];
  gestureController = [(DayViewController *)self gestureController];
  event = [gestureController event];
  v8 = [v5 containsObject:event];

  if ((v8 & 1) == 0)
  {
    gestureController2 = [(DayViewController *)self gestureController];
    [gestureController2 endForcedStart:0];
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
        occurrence = [v16 occurrence];

        if (occurrence)
        {
          occurrence2 = [v16 occurrence];
          [v10 removeObject:occurrence2];
        }
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  gestureController3 = [(DayViewController *)self gestureController];
  event2 = [gestureController3 event];

  if (event2)
  {
    gestureController4 = [(DayViewController *)self gestureController];
    event3 = [gestureController4 event];
    [v10 removeObject:event3];
  }

  allObjects = [v10 allObjects];
  [(DayViewController *)self _setUpSelectedOccurrenceViewsWithEvents:allObjects animated:1 autoScroll:0 resetSelection:0];
}

- (BOOL)allEventsIndividuallyRepresented:(id)represented
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  representedCopy = represented;
  v5 = [representedCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(representedCopy);
      }

      v9 = [(EKDayViewController *)self->_dayViewController occurrenceViewForEvent:*(*(&v14 + 1) + 8 * v8), v14];
      v10 = v9;
      if (!v9)
      {
        break;
      }

      occurrences = [v9 occurrences];
      v12 = [occurrences count];

      if (v12 > 1)
      {
        LOBYTE(v10) = 0;
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [representedCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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