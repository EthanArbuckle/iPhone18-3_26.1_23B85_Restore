@interface WeekViewController
- (BOOL)_isLeadingEdgeToday;
- (BOOL)_weekGroup:(id)group containsOccurrence:(id)occurrence;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)creationGestureController:(id)controller canActivateAtPoint:(CGPoint)point;
- (BOOL)dateIsVisible:(id)visible;
- (BOOL)didScrollWhenEventGestureController:(id)controller scrollTimerFiredToMoveLeft:(BOOL)left right:(BOOL)right vertically:(BOOL)vertically towardPoint:(CGPoint)point;
- (BOOL)eventGestureController:(id)controller didCommitOccurrence:(id)occurrence toDate:(double)date isAllDay:(BOOL)day span:(int64_t)span;
- (BOOL)eventGestureController:(id)controller isAllDayAtPoint:(CGPoint)point requireInsistence:(BOOL)insistence;
- (BOOL)eventGestureControllerShouldAllowLongPress:(id)press;
- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward;
- (BOOL)hasCorrectParentForDraggingView:(id)view isAllDay:(BOOL)day;
- (BOOL)interaction:(id)interaction canCreateEventAtPoint:(CGPoint)point inView:(id)view;
- (BOOL)interaction:(id)interaction canCreateReminderAtPoint:(CGPoint)point inView:(id)view;
- (BOOL)interaction:(id)interaction canPasteEventAtPoint:(CGPoint)point inView:(id)view;
- (BOOL)isDateVisible:(id)visible;
- (BOOL)isTodayVisible;
- (BOOL)provideExternalRepresentationsForEvent:(id)event withProvider:(id)provider;
- (BOOL)userInitiatedScroll;
- (BOOL)usesSmallTextForIsCompact:(BOOL)compact;
- (BOOL)weekGroupViewShouldAnnotateAppEntities:(id)entities onDayStarting:(id)starting;
- (CGPoint)creationGestureController:(id)controller requestsPointForDate:(id)date;
- (CGPoint)eventGestureController:(id)controller pointAtDate:(double)date isAllDay:(BOOL)day;
- (CGPoint)pointAtDate:(double)date isAllDay:(BOOL)day;
- (CGRect)_frameForWeek:(int64_t)week;
- (CGRect)currentTimeRectInView:(id)view;
- (CGRect)marginFrameForEventGestureController:(id)controller;
- (UIEdgeInsets)pageChangeMarginsForEventGestureController:(id)controller;
- (WeekViewController)initWithModel:(id)model window:(id)window;
- (WeekViewControllerDelegate)delegate;
- (_NSRange)visibleRangeForOffset:(double)offset;
- (double)_xOffsetForDate:(id)date;
- (double)creationGestureController:(id)controller requestedXCoordinateForEventPreviewAtPoint:(CGPoint)point;
- (double)dayWidth;
- (double)eventGestureController:(id)controller convertXForMargin:(double)margin;
- (double)eventGestureController:(id)controller dateAtPoint:(CGPoint)point;
- (double)eventGestureController:(id)controller heightForAllDayOccurrenceView:(id)view;
- (double)eventGestureController:(id)controller heightForOccurrenceViewOfDuration:(double)duration;
- (double)eventGestureController:(id)controller widthForOccurrenceViewOfDays:(unint64_t)days;
- (double)eventGestureController:(id)controller yPositionPerhapsMatchingAllDayOccurrence:(id)occurrence atPoint:(CGPoint)point;
- (double)headerVerticalOffset;
- (double)minimumHourScale;
- (double)scrollToDisplayedDateAnimated:(BOOL)animated;
- (double)timedRegionOriginForEventGestureController:(id)controller;
- (double)trackingAreaMinimumYPosition;
- (double)weekWidth;
- (double)weekWidthForOrientation:(int64_t)orientation;
- (id)_createPreparedViewForWeek:(int64_t)week;
- (id)_daysToShiftFromSelectedDateToBeginningOfWeekIfShowingFullWeek:(id)week;
- (id)_earliestVisibleWeekGroupView;
- (id)_earliestWeekGroup;
- (id)_eventsForCutOrCopy;
- (id)_latestDateComponents;
- (id)_latestVisibleWeekGroupView;
- (id)_latestWeekGroup;
- (id)_newEvent;
- (id)_snapDateForOffset:(CGPoint)offset snapToWeeks:(BOOL)weeks;
- (id)_visibleOccurrenceViewsWithOptions:(int64_t)options;
- (id)_weekGroupForEvent:(id)event occurrenceDate:(id)date;
- (id)_weekGroupForPoint:(CGPoint)point;
- (id)bestDateForNewEvent;
- (id)centerDateComponents;
- (id)createEventForEventGestureController:(id)controller;
- (id)createOccurrenceViewForEventGestureController:(id)controller;
- (id)creationGestureController:(id)controller dateForPoint:(CGPoint)point;
- (id)creationGestureController:(id)controller requestedPreviewForEvent:(id)event;
- (id)dateAtPoint:(CGPoint)point isAllDay:(BOOL *)day requireAllDayRegionInsistence:(BOOL)insistence;
- (id)dateForWeek:(int64_t)week;
- (id)dayDateAtPoint:(CGPoint)point;
- (id)earliestDateComponents;
- (id)eventGestureController:(id)controller occurrenceViewForOccurrence:(id)occurrence occurrenceDate:(id)date;
- (id)firstDisplayedDate;
- (id)interaction:(id)interaction subtitleForPasteActionAtPoint:(CGPoint)point inView:(id)view;
- (id)interaction:(id)interaction titleForPasteActionAtPoint:(CGPoint)point inView:(id)view;
- (id)occurrenceViewAtPoint:(CGPoint)point ignoreSelectedCopyView:(BOOL)view;
- (id)occurrenceViewForEvent:(id)event occurrenceDate:(id)date forceMatchingContentSection:(BOOL)section;
- (id)pasteboardManager;
- (id)preferredPreSizeClassTransitionSelectedDate;
- (id)presentationControllerForEditMenu;
- (id)sceneTitle;
- (id)selectedEventsForEditMenu;
- (id)verticalScrollView;
- (id)weekGroupForWeekAfter:(id)after;
- (id)weekGroupForWeekBefore:(id)before;
- (id)weekView:(id)view allEventsForStartDate:(id)date endDate:(id)endDate;
- (id)weekView:(id)view eventsForStartDate:(id)date endDate:(id)endDate;
- (int64_t)firstVisibleSecond;
- (int64_t)intendedSizeClass;
- (int64_t)orientationForSize:(CGSize)size;
- (int64_t)savedFirstVisibleSecond;
- (int64_t)viewInterfaceOrientation;
- (unint64_t)daysFromFirstToMiddleDay;
- (void)_calendarModelTimeZoneChanged:(id)changed;
- (void)_clearSelectedOccurrenceViewsUpdatingModel:(BOOL)model;
- (void)_deselectOccurrenceView:(id)view updatingModel:(BOOL)model;
- (void)_highlightEvent:(id)event dayViewDate:(double)date isAllDay:(BOOL)day;
- (void)_invalidateMarkerTimer;
- (void)_localeChanged:(id)changed;
- (void)_logUserStateDiagnostics:(id)diagnostics;
- (void)_reloadDataIfVisible;
- (void)_removeDateHighlight;
- (void)_reorderVisibleWeeksAsSubviews;
- (void)_reuseWeekView:(id)view;
- (void)_sceneEnteredForeground:(id)foreground;
- (void)_scrollEventIntoView:(id)view animated:(BOOL)animated durationOverride:(double)override completion:(id)completion;
- (void)_scrollToSecond:(int64_t)second animated:(BOOL)animated completion:(id)completion;
- (void)_selectEvents:(id)events updatingModel:(BOOL)model;
- (void)_selectOccurrenceView:(id)view updatingModel:(BOOL)model;
- (void)_selectedDateChanged:(id)changed;
- (void)_setHeaderHeightForWeekGroupView:(id)view forceLayout:(BOOL)layout;
- (void)_setHourHeightScale:(double)scale;
- (void)_setReduceLayoutProcessingForAnimation:(BOOL)animation;
- (void)_showWeekNumbersPrefDidChange;
- (void)_significantTimeChanged:(id)changed;
- (void)_startMarkerTimer;
- (void)_timeBarDropScrollTimerFired:(id)fired;
- (void)_updateAllDayView;
- (void)_updateBackButtonOnBackViewControllerToDate:(id)date;
- (void)_updateContentForSizeCategoryChange:(id)change;
- (void)_updateForHeaderTodayRedCircle;
- (void)_updateHeaderHeightsAnimated:(BOOL)animated;
- (void)_updateMultiDayAllDaySectionScrollerContentSize;
- (void)_updateNavigationTitleControllerToDate:(id)date;
- (void)_updateSelectedViewsToMatchModel;
- (void)_updateShouldAnnotateAppEntities;
- (void)_updateTimeMarker;
- (void)_updateTimeMarkerExtensionColor:(BOOL)color;
- (void)_updateWeekViewContentHeight;
- (void)_weekScrollerDoubleTapped:(id)tapped;
- (void)_weekScrollerPinched:(id)pinched;
- (void)_weekViewStartsOnTodayPrefDidChange;
- (void)adjustVisibleAllDayOccurrenceLabelsAnimated:(BOOL)animated;
- (void)cancelTimeBarDropScrollTimerAndScrollToNearestDate;
- (void)cleanupSelectionState;
- (void)copy:(id)copy;
- (void)createEvent:(BOOL)event atPoint:(CGPoint)point inView:(id)view;
- (void)creationGestureController:(id)controller didCreateNewEvent:(id)event;
- (void)creationGestureController:(id)controller didResizeToDate:(id)date;
- (void)currentlyVisibleDateRangeFromStartDate:(id *)date toEndDate:(id *)endDate;
- (void)cut:(id)cut;
- (void)dayOccurrenceViewSelected:(id)selected source:(unint64_t)source;
- (void)dealloc;
- (void)didEditEvent:(id)event creationMethod:(unint64_t)method;
- (void)dimOccurrence:(id)occurrence occurrenceDate:(id)date;
- (void)displayedDateChanged:(id)changed userInitiated:(BOOL)initiated;
- (void)draggingDone;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
- (void)editorDidCancelEditingEvent:(id)event;
- (void)editorDidDeleteEvent:(id)event;
- (void)emptySpaceClickedOnDate:(id)date;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler;
- (void)eventGestureController:(id)controller addViewToScroller:(id)scroller isAllDay:(BOOL)day;
- (void)eventGestureController:(id)controller didCancelEditingOccurrence:(id)occurrence fadedOut:(BOOL)out;
- (void)eventGestureController:(id)controller didMoveToDate:(double)date isAllDay:(BOOL)day;
- (void)eventGestureController:(id)controller didSetUpAtDate:(double)date isAllDay:(BOOL)day;
- (void)eventGestureController:(id)controller didSingleTapOccurrence:(id)occurrence shouldExtendSelection:(BOOL)selection;
- (void)eventGestureController:(id)controller requestsPresentationOfViewController:(id)viewController;
- (void)eventGestureControllerDidEndDragSession:(id)session;
- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action;
- (void)eventViewController:(id)controller requestsShowEvent:(id)event;
- (void)eventViewControllerNextButtonWasTapped:(id)tapped;
- (void)eventViewControllerPreviousButtonWasTapped:(id)tapped;
- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward;
- (void)highlightDayViewCalendarDate:(id)date isAllDay:(BOOL)day;
- (void)interaction:(id)interaction pasteEventAtPoint:(CGPoint)point inView:(id)view;
- (void)layoutCellsAnimated:(BOOL)animated;
- (void)loadDataAsync;
- (void)loadView;
- (void)occurrencesChanged:(id)changed;
- (void)overlayCalendarDidChange;
- (void)paste:(id)paste;
- (void)pasteboardManager:(id)manager didFinishPasteWithResult:(unint64_t)result willOpenEditor:(BOOL)editor;
- (void)pasteboardManager:(id)manager presentAlert:(id)alert;
- (void)reloadData;
- (void)resizeWeekGroupsIfNeededForOrientation:(int64_t)orientation;
- (void)saveFirstVisibleSecond:(int64_t)second;
- (void)scrollToCurrentTimeOfDayAnimated:(BOOL)animated;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)selectDate:(id)date animated:(BOOL)animated;
- (void)setDisplayedDate:(id)date forceScroll:(BOOL)scroll animated:(BOOL)animated;
- (void)setFirstVisibleSecond:(int64_t)second;
- (void)setReceiveTapsInHeader:(BOOL)header;
- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)showEvents:(id)events animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)snapTargetScrollOffset:(CGPoint *)offset withVelocity:(CGPoint)velocity;
- (void)synchronizeWeekGroupScrollingToWeek:(id)week;
- (void)tappedOnDate:(id)date;
- (void)undimOccurrence:(id)occurrence occurrenceDate:(id)date;
- (void)updateDisplayedDateForCurrentScrollOffset;
- (void)updatePreferredReloadRange;
- (void)updateVisibleRects;
- (void)updateWeekNumber;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSwitcherSwitchedToViewWithDate:(id)date;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)weekGroup:(id)group didSelectEvent:(id)event userInitiated:(BOOL)initiated dateSelected:(id)selected;
- (void)weekGroup:(id)group didSelectEvents:(id)events userInitiated:(BOOL)initiated;
- (void)weekGroup:(id)group pointerDidTargetOccurrences:(id)occurrences;
- (void)weekGroupAllDaySectionDidScroll:(id)scroll;
- (void)weekGroupViewDidLayout:(id)layout;
- (void)weekGroupViewFirstVisibleSecondChanged:(int64_t)changed;
- (void)weekGroupViewOccurrenceLayoutDidChange:(id)change;
@end

@implementation WeekViewController

- (WeekViewController)initWithModel:(id)model window:(id)window
{
  v12.receiver = self;
  v12.super_class = WeekViewController;
  v4 = [(MainViewController *)&v12 initWithWindow:window model:model];
  if (v4)
  {
    v4->_lastScrollPositionSecond = CUIKNumberOfSecondsForCurrentTime();
    +[EKDayTimeView defaultHourScale];
    v4->_weekViewHourHeightScale = v5;
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = CUIKCalendarModelDisplayedOccurrencesChangedNotification;
    model = [(WeekViewController *)v4 model];
    [v6 addObserver:v4 selector:"occurrencesChanged:" name:v7 object:model];

    v9 = CUIKCalendarModelSelectedOccurrencesChangedNotification;
    model2 = [(WeekViewController *)v4 model];
    [v6 addObserver:v4 selector:"selectedOccurrencesChanged:" name:v9 object:model2];

    [v6 addObserver:v4 selector:"virtualConferenceAppChanged:" name:EKConferenceUtilsAppRecordChangedNotification object:0];
  }

  return v4;
}

- (void)dealloc
{
  [(UIScrollView *)self->_weekScroller setDelegate:0];
  weekScroller = self->_weekScroller;
  self->_weekScroller = 0;

  [(EKEventGestureController *)self->_eventGestureController invalidate];
  [(WeekViewController *)self _invalidateMarkerTimer];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = WeekViewController;
  [(MainViewController *)&v5 dealloc];
}

- (id)_eventsForCutOrCopy
{
  event = [(EKEventGestureController *)self->_eventGestureController event];

  if (event)
  {
    event2 = [(EKEventGestureController *)self->_eventGestureController event];
    v5 = [NSSet setWithObject:event2];
LABEL_5:
    v8 = v5;

    goto LABEL_6;
  }

  selectedOccurrences = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
  v7 = [selectedOccurrences count];

  if (v7)
  {
    event2 = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
    v5 = [NSSet setWithArray:event2];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (void)copy:(id)copy
{
  _eventsForCutOrCopy = [(WeekViewController *)self _eventsForCutOrCopy];
  if ([_eventsForCutOrCopy count])
  {
    pasteboardManager = [(CUIKCalendarModel *)self->super._model pasteboardManager];
    [pasteboardManager copyEvents:_eventsForCutOrCopy delegate:self];

    [(WeekViewController *)self cleanupSelectionState];
  }
}

- (void)cut:(id)cut
{
  _eventsForCutOrCopy = [(WeekViewController *)self _eventsForCutOrCopy];
  if ([_eventsForCutOrCopy count])
  {
    pasteboardManager = [(CUIKCalendarModel *)self->super._model pasteboardManager];
    [pasteboardManager cutEvents:_eventsForCutOrCopy delegate:self];

    [(WeekViewController *)self cleanupSelectionState];
  }
}

- (void)paste:(id)paste
{
  _eventsForCutOrCopy = [(WeekViewController *)self _eventsForCutOrCopy];
  if ([_eventsForCutOrCopy count] == 1)
  {
    pasteboardManager = [(CUIKCalendarModel *)self->super._model pasteboardManager];
    anyObject = [_eventsForCutOrCopy anyObject];
    startDate = [anyObject startDate];
    [pasteboardManager setDateForPaste:startDate];
  }

  pasteboardManager2 = [(CUIKCalendarModel *)self->super._model pasteboardManager];
  [pasteboardManager2 pasteEventsWithDateMode:0 delegate:self];

  [(WeekViewController *)self cleanupSelectionState];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (([CUIKPasteboardUtilities declinesToPerformCutCopyPasteAction:action withSender:senderCopy]& 1) == 0)
  {
    if ("paste:" == action)
    {
      model = [(WeekViewController *)self model];
      pasteboardManager = [model pasteboardManager];
      canPerformPaste = [pasteboardManager canPerformPaste];
    }

    else
    {
      if ("copy:" == action)
      {
        model = [(WeekViewController *)self _eventsForCutOrCopy];
        v10 = 1;
      }

      else
      {
        if ("cut:" != action)
        {
          v12.receiver = self;
          v12.super_class = WeekViewController;
          canPerformPaste = [(WeekViewController *)&v12 canPerformAction:action withSender:senderCopy];
          goto LABEL_12;
        }

        model = [(WeekViewController *)self _eventsForCutOrCopy];
        v10 = 0;
      }

      canPerformPaste = [CUIKPasteboardUtilities allEventsValidForAction:v10 fromEvents:model];
    }

    goto LABEL_12;
  }

  canPerformPaste = 0;
LABEL_12:

  return canPerformPaste;
}

- (void)loadView
{
  v137.receiver = self;
  v137.super_class = WeekViewController;
  [(WeekViewController *)&v137 loadView];
  view = [(WeekViewController *)self view];
  [view setOpaque:1];

  if ((CalCanvasPocketEnabled() & 1) == 0)
  {
    [(WeekViewController *)self setEdgesForExtendedLayout:0];
  }

  v4 = +[UIColor systemBackgroundColor];
  view2 = [(WeekViewController *)self view];
  [view2 setBackgroundColor:v4];

  v6 = UIView_ptr;
  v7 = +[CUIKPreferences sharedPreferences];
  self->_showWeekNumber = [v7 showWeekNumbers];

  v8 = +[CUIKPreferences sharedPreferences];
  self->_weekViewStartsOnToday = [v8 weekViewStartsOnToday];

  v9 = CUIKGetOverlayCalendar();
  self->_showOverlayCalendar = v9 != 0;

  window = [(MainViewController *)self window];
  v11 = EKUIInterfaceOrientationForViewHierarchy();

  [(WeekViewController *)self headerVerticalOffset];
  v13 = v12;
  v14 = 0.0;
  if ((CalInterfaceIsLeftToRight() & 1) == 0)
  {
    view3 = [(WeekViewController *)self view];
    [view3 bounds];
    v14 = v16;
  }

  v17 = [[WeekTimeView alloc] initWithFrame:[(WeekViewController *)self intendedSizeClass] targetSizeClass:v11 orientation:v14, v13, 0.0, 100.0];
  timeView = self->_timeView;
  self->_timeView = v17;

  [(WeekTimeView *)self->_timeView sizeToFit];
  [(WeekTimeView *)self->_timeView bounds];
  v20 = v19;
  [(WeekTimeView *)self->_timeView setUseMultiDayStyle:[(WeekViewController *)self usesMultiDayWeekView]];
  [(WeekTimeView *)self->_timeView setHeaderHeight:40.0];
  [(WeekTimeView *)self->_timeView setDayTimeViewDelegate:self];
  v21 = [[UIDropInteraction alloc] initWithDelegate:self];
  timeBarDropInteraction = self->_timeBarDropInteraction;
  self->_timeBarDropInteraction = v21;

  [(WeekTimeView *)self->_timeView addInteraction:self->_timeBarDropInteraction];
  view4 = [(WeekViewController *)self view];
  [view4 addSubview:self->_timeView];

  self->_currentlyDisplayedWeekNumber = -1;
  v24 = objc_alloc_init(UIScrollView);
  weekScroller = self->_weekScroller;
  self->_weekScroller = v24;

  v26 = +[UIColor systemBackgroundColor];
  [(UIScrollView *)self->_weekScroller setBackgroundColor:v26];

  [(UIScrollView *)self->_weekScroller setOpaque:1];
  [(UIScrollView *)self->_weekScroller setDelegate:self];
  [(UIScrollView *)self->_weekScroller setScrollsToTop:0];
  [(UIScrollView *)self->_weekScroller setDelaysContentTouches:0];
  [(UIScrollView *)self->_weekScroller setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_weekScroller setDecelerationRate:UIScrollViewDecelerationRateFast];
  if (CalSolariumEnabled())
  {
    [(UIScrollView *)self->_weekScroller setContentInsetAdjustmentBehavior:2];
    [(UIScrollView *)self->_weekScroller _setHiddenPocketEdges:1];
  }

  else
  {
    if (CalCanvasPocketEnabled())
    {
      [(UIScrollView *)self->_weekScroller _setHiddenPocketEdges:1];
    }

    [(UIScrollView *)self->_weekScroller setContentInsetAdjustmentBehavior:1];
  }

  view5 = [(WeekViewController *)self view];
  [view5 addSubview:self->_weekScroller];

  view6 = [(WeekViewController *)self view];
  [view6 bringSubviewToFront:self->_timeView];

  v29 = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:"_weekScrollerPinched:"];
  [(UIScrollView *)self->_weekScroller addGestureRecognizer:v29];
  v30 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_weekScrollerDoubleTapped:"];
  [v30 setNumberOfTapsRequired:2];
  [(UIScrollView *)self->_weekScroller addGestureRecognizer:v30];

  v31 = [[NSMutableArray alloc] initWithCapacity:2];
  reusableViews = self->_reusableViews;
  self->_reusableViews = v31;

  v33 = [[NSMutableArray alloc] initWithCapacity:2];
  visibleWeeks = self->_visibleWeeks;
  self->_visibleWeeks = v33;

  if ((EKUIHasFallbackSizingContext() & 1) == 0)
  {
    sub_1001701C8();
  }

  if (!self->_eventGestureController)
  {
    v35 = [[EKEventGestureController alloc] initWithView:self->_weekScroller];
    eventGestureController = self->_eventGestureController;
    self->_eventGestureController = v35;

    [(EKEventGestureController *)self->_eventGestureController setDelegate:self];
    [(EKEventGestureController *)self->_eventGestureController setUsesHorizontalDragLocking:1];
    [(EKEventGestureController *)self->_eventGestureController setUsesXDragOffsetInCancelRegion:1];
  }

  if ([(WeekViewController *)self enableEventCreationGesture])
  {
    v37 = [[EKEventCreationGestureController alloc] initWithView:self->_weekScroller delegate:self];
    eventCreationController = self->_eventCreationController;
    self->_eventCreationController = v37;
  }

  if (CalSolariumEnabled())
  {
    EKUISeparatorLineThickness();
    v40 = v39;
    v41 = objc_alloc_init(UIView);
    allDayDividerLineView = self->_allDayDividerLineView;
    self->_allDayDividerLineView = v41;

    v43 = +[UIColor separatorColor];
    [(UIView *)self->_allDayDividerLineView setBackgroundColor:v43];

    view7 = [(WeekViewController *)self view];
    [view7 addSubview:self->_allDayDividerLineView];

    [(WeekTimeView *)self->_timeView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)self->_weekScroller setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_allDayDividerLineView setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [(WeekTimeView *)self->_timeView topAnchor];
    view8 = [(WeekViewController *)self view];
    topAnchor2 = [view8 topAnchor];
    [(WeekViewController *)self headerVerticalOffset];
    v133 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    v138[0] = v133;
    leadingAnchor = [(WeekTimeView *)self->_timeView leadingAnchor];
    view9 = [(WeekViewController *)self view];
    leadingAnchor2 = [view9 leadingAnchor];
    v129 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v138[1] = v129;
    widthAnchor = [(WeekTimeView *)self->_timeView widthAnchor];
    v127 = [widthAnchor constraintEqualToConstant:v20];
    v138[2] = v127;
    bottomAnchor = [(WeekTimeView *)self->_timeView bottomAnchor];
    view10 = [(WeekViewController *)self view];
    bottomAnchor2 = [view10 bottomAnchor];
    v123 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v138[3] = v123;
    topAnchor3 = [(UIScrollView *)self->_weekScroller topAnchor];
    view11 = [(WeekViewController *)self view];
    topAnchor4 = [view11 topAnchor];
    [(WeekViewController *)self headerVerticalOffset];
    v119 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];
    v138[4] = v119;
    leadingAnchor3 = [(UIScrollView *)self->_weekScroller leadingAnchor];
    trailingAnchor = [(WeekTimeView *)self->_timeView trailingAnchor];
    v116 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor];
    v138[5] = v116;
    bottomAnchor3 = [(UIScrollView *)self->_weekScroller bottomAnchor];
    view12 = [(WeekViewController *)self view];
    bottomAnchor4 = [view12 bottomAnchor];
    v112 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v138[6] = v112;
    trailingAnchor2 = [(UIScrollView *)self->_weekScroller trailingAnchor];
    view13 = [(WeekViewController *)self view];
    trailingAnchor3 = [view13 trailingAnchor];
    v108 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v138[7] = v108;
    leadingAnchor4 = [(UIView *)self->_allDayDividerLineView leadingAnchor];
    view14 = [(WeekViewController *)self view];
    leadingAnchor5 = [view14 leadingAnchor];
    v104 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v138[8] = v104;
    topAnchor5 = [(UIView *)self->_allDayDividerLineView topAnchor];
    view15 = [(WeekViewController *)self view];
    topAnchor6 = [view15 topAnchor];
    [(WeekViewController *)self headerVerticalOffset];
    v46 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:?];
    v138[9] = v46;
    heightAnchor = [(UIView *)self->_allDayDividerLineView heightAnchor];
    v48 = [heightAnchor constraintEqualToConstant:v40];
    v138[10] = v48;
    trailingAnchor4 = [(UIView *)self->_allDayDividerLineView trailingAnchor];
    view16 = [(WeekViewController *)self view];
    trailingAnchor5 = [view16 trailingAnchor];
    v52 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v138[11] = v52;
    v53 = [NSArray arrayWithObjects:v138 count:12];
    [NSLayoutConstraint activateConstraints:v53];

    v6 = UIView_ptr;
  }

  else
  {
    view17 = [(WeekViewController *)self view];
    [view17 setAutoresizingMask:18];

    [(WeekTimeView *)self->_timeView setAutoresizingMask:16];
    [(WeekViewController *)self weekWidth];
    self->_weekWidth = v55;
    [(UIScrollView *)self->_weekScroller setContentSize:v55 * 54080.0, 0.0];
    v56 = self->_reusableViews;
    v57 = [WeekGroupView alloc];
    [(UIScrollView *)self->_weekScroller bounds];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    intendedSizeClass = [(WeekViewController *)self intendedSizeClass];
    window2 = [(MainViewController *)self window];
    v68 = [(WeekGroupView *)v57 initWithFrame:intendedSizeClass sizeClass:window2 targetWindow:self rightClickDelegate:[(WeekViewController *)self usesMultiDayWeekView] isMultiDayView:v59, v61, v63, v65];
    [(NSMutableArray *)v56 addObject:v68];

    v69 = self->_reusableViews;
    v70 = [WeekGroupView alloc];
    [(UIScrollView *)self->_weekScroller bounds];
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    intendedSizeClass2 = [(WeekViewController *)self intendedSizeClass];
    window3 = [(MainViewController *)self window];
    v81 = [(WeekGroupView *)v70 initWithFrame:intendedSizeClass2 sizeClass:window3 targetWindow:self rightClickDelegate:[(WeekViewController *)self usesMultiDayWeekView] isMultiDayView:v72, v74, v76, v78];
    [(NSMutableArray *)v69 addObject:v81];

    EKUISeparatorLineThickness();
    v83 = v82;
    v84 = objc_alloc_init(UIView);
    v85 = self->_allDayDividerLineView;
    self->_allDayDividerLineView = v84;

    v86 = +[UIColor separatorColor];
    [(UIView *)self->_allDayDividerLineView setBackgroundColor:v86];

    view18 = [(WeekViewController *)self view];
    [view18 bounds];
    [(UIView *)self->_allDayDividerLineView setFrame:0.0, v13 - v83];

    [(UIView *)self->_allDayDividerLineView setHidden:1];
    [(UIView *)self->_allDayDividerLineView setAutoresizingMask:2];
    view19 = [(WeekViewController *)self view];
    [view19 addSubview:self->_allDayDividerLineView];

    displayedDate = [(WeekViewController *)self displayedDate];

    if (displayedDate)
    {
      [(WeekViewController *)self scrollToDisplayedDateAnimated:0];
    }
  }

  self->_initialShow = 1;
  persistedSceneState = [(CUIKCalendarModel *)self->super._model persistedSceneState];
  if (persistedSceneState)
  {
    v91 = persistedSceneState;
    persistedSceneState2 = [(CUIKCalendarModel *)self->super._model persistedSceneState];
    [persistedSceneState2 weekViewHourScale];
    v94 = v93;

    if (v94 > 0.0)
    {
      persistedSceneState3 = [(CUIKCalendarModel *)self->super._model persistedSceneState];
      [persistedSceneState3 weekViewHourScale];
LABEL_25:
      self->_weekViewHourHeightScale = v96;
      goto LABEL_26;
    }
  }

  sharedPreferences = [v6[132] sharedPreferences];
  persistedSceneState3 = [sharedPreferences weekViewHourScale];

  if (persistedSceneState3)
  {
    [persistedSceneState3 floatValue];
    v96 = v98;
    goto LABEL_25;
  }

LABEL_26:

  v99 = +[NSNotificationCenter defaultCenter];
  [v99 addObserver:self selector:"_updateContentForSizeCategoryChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v100 = +[NSNotificationCenter defaultCenter];
  [v100 addObserver:self selector:"_showWeekNumbersPrefDidChange" name:CUIKPreferencesNotification_ShowWeekNumbers object:0];

  v101 = +[NSNotificationCenter defaultCenter];
  [v101 addObserver:self selector:"_weekViewStartsOnTodayPrefDidChange" name:CUIKPreferencesNotification_WeekViewStartsOnToday object:0];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = WeekViewController;
  [(WeekViewController *)&v8 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_sceneEnteredForeground:" name:UISceneWillEnterForegroundNotification object:0];
  [v3 addObserver:self selector:"_logUserStateDiagnostics:" name:CUIKStateCaptureNotification object:0];
  v4 = CUIKCalendarModelSelectedDateChangedNotification;
  model = [(WeekViewController *)self model];
  [v3 addObserver:self selector:"_selectedDateChanged:" name:v4 object:model];

  v6 = CUIKCalendarModelSignificantTimeChangeNotification;
  model2 = [(WeekViewController *)self model];
  [v3 addObserver:self selector:"_significantTimeChanged:" name:v6 object:model2];

  [v3 addObserver:self selector:"_localeChanged:" name:CUIKLocaleChangedNotification object:0];
  [v3 addObserver:self selector:"_calendarModelTimeZoneChanged:" name:CUIKCalendarModelTimeZoneChangedNotification object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = WeekViewController;
  [(WeekViewController *)&v12 viewWillAppear:appear];
  self->_viewWillAppearCalled = 1;
  [(WeekViewController *)self resizeWeekGroupsIfNeededForOrientation:[(WeekViewController *)self viewInterfaceOrientation]];
  if (![(WeekViewController *)self suppressInitialScrollToCurrentTime])
  {
    model = [(WeekViewController *)self model];
    selectedDate = [model selectedDate];
    [(WeekViewController *)self setDisplayedDate:selectedDate];
  }

  [(WeekViewController *)self _updateTimeMarker];
  [(WeekViewController *)self overlayCalendarDidChange];
  if ([(MainViewController *)self updateModelPreferredReloadRangeAndReturnWhetherLoadingNeeded])
  {
    self->_needsReload = 1;
    reloadDateRangeStart = self->_reloadDateRangeStart;
    self->_reloadDateRangeStart = 0;

    reloadDateRangeEnd = self->_reloadDateRangeEnd;
    self->_reloadDateRangeEnd = 0;
  }

  if (CalSolariumEnabled())
  {
    [(WeekViewController *)self updateNavigationTitle];
  }

  if (self->_needsReload)
  {
    [(WeekViewController *)self reloadData];
  }

  if (self->_initialShow && ![(WeekViewController *)self suppressInitialScrollToCurrentTime])
  {
    if ([(NSMutableArray *)self->_visibleWeeks count])
    {
      v8 = [(NSMutableArray *)self->_visibleWeeks objectAtIndex:0];
      weekView = [v8 weekView];
      content = [weekView content];
      [content firstEventSecond];
      [(WeekViewController *)self _scrollToSecond:v11 animated:0 completion:0];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v43.receiver = self;
  v43.super_class = WeekViewController;
  [(WeekViewController *)&v43 viewDidLayoutSubviews];
  if (CalSolariumEnabled())
  {
    IsLeftToRight = CalInterfaceIsLeftToRight();
    window = [(MainViewController *)self window];
    [window safeAreaInsets];
    v6 = v5;
    v8 = v7;

    if (!IsLeftToRight)
    {
      v6 = v8;
    }

    [(UIScrollView *)self->_weekScroller frame];
    self->_weekWidth = v9 - v6;
    weekViewClass = [(WeekViewController *)self weekViewClass];
    viewInterfaceOrientation = [(WeekViewController *)self viewInterfaceOrientation];
    view = [(WeekViewController *)self view];
    v13 = [(objc_class *)weekViewClass displayedDaysForOrientation:viewInterfaceOrientation withViewInViewHierarchy:view];

    daysInWeek = [(WeekViewController *)self daysInWeek];
    weekWidth = self->_weekWidth;
    if (v13 != daysInWeek)
    {
      weekWidth = weekWidth / v13 * daysInWeek;
      self->_weekWidth = weekWidth;
    }

    [(UIScrollView *)self->_weekScroller setContentSize:weekWidth * 54080.0, 0.0];
    [(WeekViewController *)self resizeWeekGroupsIfNeededForOrientation:[(WeekViewController *)self viewInterfaceOrientation]];
    if (![(NSMutableArray *)self->_reusableViews count])
    {
      reusableViews = self->_reusableViews;
      v17 = [WeekGroupView alloc];
      [(UIScrollView *)self->_weekScroller bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      intendedSizeClass = [(WeekViewController *)self intendedSizeClass];
      window2 = [(MainViewController *)self window];
      v28 = [(WeekGroupView *)v17 initWithFrame:intendedSizeClass sizeClass:window2 targetWindow:self rightClickDelegate:[(WeekViewController *)self usesMultiDayWeekView] isMultiDayView:v19, v21, v23, v25];
      [(NSMutableArray *)reusableViews addObject:v28];

      v29 = self->_reusableViews;
      v30 = [WeekGroupView alloc];
      [(UIScrollView *)self->_weekScroller bounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      intendedSizeClass2 = [(WeekViewController *)self intendedSizeClass];
      window3 = [(MainViewController *)self window];
      v41 = [(WeekGroupView *)v30 initWithFrame:intendedSizeClass2 sizeClass:window3 targetWindow:self rightClickDelegate:[(WeekViewController *)self usesMultiDayWeekView] isMultiDayView:v32, v34, v36, v38];
      [(NSMutableArray *)v29 addObject:v41];
    }

    [(WeekViewController *)self layoutCellsAnimated:0];
    [(WeekViewController *)self _updateWeekViewContentHeight];
    [(WeekViewController *)self _updateShouldAnnotateAppEntities];
  }

  [(WeekViewController *)self _updateTimeMarker];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008226C;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = WeekViewController;
  [(MainViewController *)&v6 viewDidAppear:appear];
  self->_viewIsVisible = 1;
  if (self->_needsHourHeightUpdate)
  {
    +[EKDayTimeView defaultHourScale];
LABEL_5:
    [(WeekViewController *)self _setHourHeightScale:weekViewHourHeightScale];
    [(WeekViewController *)self viewWillLayoutSubviews];
    view = [(WeekViewController *)self view];
    [view layoutSubviews];

    [(WeekViewController *)self viewDidLayoutSubviews];
    [(WeekViewController *)self _updateTimeMarker];
    self->_needsHourHeightUpdate = 0;
    goto LABEL_6;
  }

  if (self->_initialShow)
  {
    weekViewHourHeightScale = self->_weekViewHourHeightScale;
    goto LABEL_5;
  }

LABEL_6:
  [(WeekViewController *)self adjustVisibleAllDayOccurrenceLabelsAnimated:0];
  if (self->_initialShow && ![(WeekViewController *)self suppressInitialScrollToCurrentTime]&& [(WeekViewController *)self isTodayVisible])
  {
    [(WeekViewController *)self scrollToCurrentTimeOfDayAnimated:0];
  }

  self->_initialShow = 0;
  [(CUIKCalendarModel *)self->super._model setDesiredPaddingDays:7];
  [(CUIKCalendarModel *)self->super._model setComponentForExpandingPadding:16];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v12.receiver = self;
  v12.super_class = WeekViewController;
  [(WeekViewController *)&v12 viewWillDisappear:disappear];
  event = [(EKEventGestureController *)self->_eventGestureController event];
  occurrenceDate = [(EKEventGestureController *)self->_eventGestureController occurrenceDate];
  [(WeekViewController *)self undimOccurrence:event occurrenceDate:occurrenceDate];

  if (([(EKEventGestureController *)self->_eventGestureController dragGestureInProgress]& 1) == 0)
  {
    [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  }

  self->_viewIsVisible = 0;
  self->_viewWillAppearCalled = 0;
  [(WeekViewController *)self _invalidateMarkerTimer];
  if ([(WeekViewController *)self isTodayVisible])
  {
    if (![(WeekViewController *)self usesMultiDayWeekView])
    {
      v6 = CUIKTodayDate();
      model = [(WeekViewController *)self model];
      eventStore = [model eventStore];
      timeZone = [eventStore timeZone];
      v10 = [EKCalendarDate calendarDateWithDate:v6 timeZone:timeZone];

      model2 = [(WeekViewController *)self model];
      [model2 setSelectedDate:v10];
    }
  }
}

- (int64_t)orientationForSize:(CGSize)size
{
  if ([(WeekViewController *)self usePortraitLayoutForSize:size.width, size.height])
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (int64_t)viewInterfaceOrientation
{
  view = [(WeekViewController *)self view];
  [view frame];
  v6 = [(WeekViewController *)self orientationForSize:v4, v5];

  return v6;
}

- (id)_visibleOccurrenceViewsWithOptions:(int64_t)options
{
  v5 = &_s19RemindersAppIntents0A40InCalendarReminderEditingModuleInterfaceP036requiresUserConfirmationForCancelingG0SbvgTj_ptr;
  v6 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(WeekViewController *)self visibleWeeks];
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    optionsCopy = options;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        weekView = [*(*(&v25 + 1) + 8 * i) weekView];
        array = [v5[264] array];
        if (!options)
        {
          v15 = v8;
          v16 = v9;
          v17 = v6;
          v18 = v5;
          occurrenceViews = [weekView occurrenceViews];
          if (occurrenceViews)
          {
            [array addObjectsFromArray:occurrenceViews];
          }

          allDayView = [weekView allDayView];
          occurrenceViews2 = [allDayView occurrenceViews];

          [array addObjectsFromArray:occurrenceViews2];
          v5 = v18;
          v6 = v17;
          v9 = v16;
          v8 = v15;
          options = optionsCopy;
          goto LABEL_15;
        }

        if ((options & 1) == 0)
        {
          if ((options & 2) == 0)
          {
            goto LABEL_16;
          }

          allDayView2 = [weekView allDayView];
          occurrenceViews = [allDayView2 occurrenceViews];

LABEL_14:
          [array addObjectsFromArray:occurrenceViews];
          goto LABEL_15;
        }

        occurrenceViews = [weekView occurrenceViews];
        if (occurrenceViews)
        {
          goto LABEL_14;
        }

LABEL_15:

LABEL_16:
        [v6 addObjectsFromArray:array];
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v21 = [v6 copy];

  return v21;
}

- (void)_showWeekNumbersPrefDidChange
{
  v3 = +[CUIKPreferences sharedPreferences];
  self->_showWeekNumber = [v3 showWeekNumbers];

  if (self->_showWeekNumber)
  {

    [(WeekViewController *)self updateWeekNumber];
  }

  else
  {
    [(WeekTimeView *)self->_timeView setWeekNumberText:0];
    self->_currentlyDisplayedWeekNumber = -1;
  }
}

- (void)_weekViewStartsOnTodayPrefDidChange
{
  v3 = +[CUIKPreferences sharedPreferences];
  self->_weekViewStartsOnToday = [v3 weekViewStartsOnToday];
}

- (void)overlayCalendarDidChange
{
  v3 = CUIKGetOverlayCalendar();
  self->_showOverlayCalendar = v3 != 0;

  [(WeekViewController *)self _updateHeaderHeightsAnimated:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v13.receiver = self;
  v13.super_class = WeekViewController;
  coordinatorCopy = coordinator;
  [(MainViewController *)&v13 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8 = self->_eventGestureController;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100082ADC;
  v10[3] = &unk_10020F1F0;
  v11 = v8;
  selfCopy = self;
  v9 = v8;
  [coordinatorCopy animateAlongsideTransition:0 completion:v10];
}

- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  animatedCopy = animated;
  eventCopy = event;
  contextCopy = context;
  [(WeekViewController *)self scrollEventIntoView:eventCopy animated:animatedCopy completion:0];
  isNew = [eventCopy isNew];
  if (mode == 3 || isNew)
  {
    v14 = [AddEventViewController editOrAddViewControllerForEventOrIntegrationWithEvent:eventCopy model:self->super._model creationMethod:0 viewStart:1 eventEditViewDelegate:self];
  }

  else
  {
    v13 = [(MainViewController *)self augmentEventDetailsContext:contextCopy];
    v14 = [EKEventViewController eventDetailViewControllerWithEvent:eventCopy delegate:self context:v13 canvasView:1];
    [(WeekViewController *)self ekui_adjustToolBarToTransparentStyle];
    if ((CalSystemSolariumEnabled() & 1) == 0)
    {
      [v14 ekui_adjustNavBarToTransparentStyle];
    }
  }

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"Week" value:&stru_1002133B8 table:0];
  navigationItem = [(WeekViewController *)self navigationItem];
  [navigationItem setBackButtonTitle:v16];

  [(CUIKCalendarModel *)self->super._model setSelectedOccurrence:eventCopy];
  if (mode)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100082E2C;
    v18[3] = &unk_10020EE00;
    v19 = v14;
    modeCopy = mode;
    [(MainViewController *)self showViewController:v19 sender:self animated:animatedCopy completion:v18];
  }
}

- (void)showEvents:(id)events animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  animatedCopy = animated;
  eventsCopy = events;
  v12 = [[EKExpandedReminderStackViewController alloc] initWithEvents:eventsCopy delegate:self];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"Week" value:&stru_1002133B8 table:0];
  navigationItem = [(WeekViewController *)self navigationItem];
  [navigationItem setBackButtonTitle:v10];

  [(CUIKCalendarModel *)self->super._model setSelectedOccurrences:eventsCopy];
  [(MainViewController *)self showViewController:v12 sender:self animated:animatedCopy completion:0];
}

- (void)selectDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  model = [(WeekViewController *)self model];
  [model setSelectedDate:dateCopy];

  [(WeekViewController *)self setDisplayedDate:dateCopy animated:animatedCopy];
}

- (BOOL)isTodayVisible
{
  v3 = CUIKTodayDate();
  LOBYTE(self) = [(WeekViewController *)self dateIsVisible:v3];

  return self;
}

- (id)bestDateForNewEvent
{
  if ([(WeekViewController *)self isTodayVisible])
  {
    v3 = CUIKTodayDate();
    model = [(WeekViewController *)self model];
    eventStore = [model eventStore];
    timeZone = [eventStore timeZone];
    v7 = [EKCalendarDate calendarDateWithDate:v3 timeZone:timeZone];
  }

  else
  {
    v7 = self->_displayedDate;
  }

  return v7;
}

- (id)sceneTitle
{
  if ([(WeekViewController *)self isViewLoaded])
  {
    calendar = [(CUIKCalendarModel *)self->super._model calendar];
    displayedDate = [(WeekViewController *)self displayedDate];
    date = [displayedDate date];
    if (date)
    {
      v6 = CUIKTodayDate();
      v7 = [(WeekViewController *)self isDateVisible:v6];

      if (v7)
      {
        earliestDateComponents = [NSBundle bundleForClass:objc_opt_class()];
        v9 = [earliestDateComponents localizedStringForKey:@"This Week" value:&stru_1002133B8 table:0];
      }

      else
      {
        if (!self->_titleIntervalDateFormatter)
        {
          v10 = objc_alloc_init(NSDateIntervalFormatter);
          titleIntervalDateFormatter = self->_titleIntervalDateFormatter;
          self->_titleIntervalDateFormatter = v10;

          calendar2 = [(CUIKCalendarModel *)self->super._model calendar];
          [(NSDateIntervalFormatter *)self->_titleIntervalDateFormatter setCalendar:calendar2];

          calendar3 = [(CUIKCalendarModel *)self->super._model calendar];
          timeZone = [calendar3 timeZone];
          [(NSDateIntervalFormatter *)self->_titleIntervalDateFormatter setTimeZone:timeZone];
        }

        earliestDateComponents = [(WeekViewController *)self earliestDateComponents];
        _latestDateComponents = [(WeekViewController *)self _latestDateComponents];
        v16 = _latestDateComponents;
        v9 = 0;
        if (earliestDateComponents && _latestDateComponents)
        {
          v17 = [calendar dateFromComponents:earliestDateComponents];
          v18 = [calendar dateFromComponents:v16];
          month = [earliestDateComponents month];
          if (month == [v16 month])
          {
            v20 = @"MMMMdy";
          }

          else
          {
            v20 = @"MMMdy";
          }

          [(NSDateIntervalFormatter *)self->_titleIntervalDateFormatter setDateTemplate:v20];
          v9 = [(NSDateIntervalFormatter *)self->_titleIntervalDateFormatter stringFromDate:v17 toDate:v18];
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isDateVisible:(id)visible
{
  visibleCopy = visible;
  calendar = [(CUIKCalendarModel *)self->super._model calendar];
  earliestDateComponents = [(WeekViewController *)self earliestDateComponents];
  _latestDateComponents = [(WeekViewController *)self _latestDateComponents];
  timeZone = [calendar timeZone];
  v9 = [EKCalendarDate calendarDateWithDateComponents:_latestDateComponents timeZone:timeZone];

  calendarDateForEndOfDay = [v9 calendarDateForEndOfDay];

  v11 = [calendar dateFromComponents:earliestDateComponents];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;
  [calendarDateForEndOfDay absoluteTime];
  v15 = v14;
  [visibleCopy timeIntervalSinceReferenceDate];
  v17 = v16;
  v18 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v19 = v18;
    date = [calendarDateForEndOfDay date];
    v23 = 138412802;
    v24 = visibleCopy;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = date;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Week view determining if date %@ is visible. Onscreen dates: %@ - %@", &v23, 0x20u);
  }

  v21 = v17 <= v15 && v13 <= v17;

  return v21;
}

- (void)currentlyVisibleDateRangeFromStartDate:(id *)date toEndDate:(id *)endDate
{
  calendar = [(CUIKCalendarModel *)self->super._model calendar];
  earliestDateComponents = [(WeekViewController *)self earliestDateComponents];
  _latestDateComponents = [(WeekViewController *)self _latestDateComponents];
  timeZone = [calendar timeZone];
  v10 = [EKCalendarDate calendarDateWithDateComponents:_latestDateComponents timeZone:timeZone];

  calendarDateForEndOfDay = [v10 calendarDateForEndOfDay];

  if (date)
  {
    *date = [calendar dateFromComponents:earliestDateComponents];
  }

  if (endDate)
  {
    *endDate = [calendarDateForEndOfDay date];
  }
}

- (id)preferredPreSizeClassTransitionSelectedDate
{
  shownEventEditViewController = [(MainViewController *)self shownEventEditViewController];

  if (shownEventEditViewController)
  {
    shownEventEditViewController2 = [(MainViewController *)self shownEventEditViewController];
    event = [shownEventEditViewController2 event];
    startDate = [event startDate];
    model = [(WeekViewController *)self model];
    eventStore = [model eventStore];
    timeZone = [eventStore timeZone];
    preferredPreSizeClassTransitionSelectedDate = [EKCalendarDate calendarDateWithDate:startDate timeZone:timeZone];
  }

  else if ([(WeekViewController *)self isTodayVisible])
  {
    v11 = CUIKTodayDate();
    model2 = [(WeekViewController *)self model];
    eventStore2 = [model2 eventStore];
    timeZone2 = [eventStore2 timeZone];
    preferredPreSizeClassTransitionSelectedDate = [EKCalendarDate calendarDateWithDate:v11 timeZone:timeZone2];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = WeekViewController;
    preferredPreSizeClassTransitionSelectedDate = [(MainViewController *)&v16 preferredPreSizeClassTransitionSelectedDate];
  }

  return preferredPreSizeClassTransitionSelectedDate;
}

- (void)_selectedDateChanged:(id)changed
{
  model = [(WeekViewController *)self model];
  selectedDate = [model selectedDate];
  [(WeekViewController *)self _updateBackButtonOnBackViewControllerToDate:selectedDate];

  if (CalSolariumEnabled())
  {
    model2 = [(WeekViewController *)self model];
    selectedDate2 = [model2 selectedDate];
    [(WeekViewController *)self _updateNavigationTitleControllerToDate:selectedDate2];
  }
}

- (void)_localeChanged:(id)changed
{
  [(WeekViewController *)self resizeWeekGroupsIfNeededForOrientation:[(WeekViewController *)self viewInterfaceOrientation]];

  [(WeekViewController *)self overlayCalendarDidChange];
}

- (void)_significantTimeChanged:(id)changed
{
  userInfo = [changed userInfo];
  v7 = [userInfo objectForKeyedSubscript:CUIKCalendarModelSignificantTimeChangeNotificationDayChangedKey];

  bOOLValue = [v7 BOOLValue];
  v6 = v7;
  if ((bOOLValue & 1) != 0 || !v7)
  {
    [(WeekViewController *)self _updateTimeMarker];
    bOOLValue = [(WeekViewController *)self _updateForHeaderTodayRedCircle];
    v6 = v7;
  }

  _objc_release_x1(bOOLValue, v6);
}

- (void)_calendarModelTimeZoneChanged:(id)changed
{
  model = [(WeekViewController *)self model];
  calendar = [model calendar];

  model2 = [(WeekViewController *)self model];
  eventStore = [model2 eventStore];
  timeZone = [eventStore timeZone];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_visibleWeeks;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        [v14 setCalendar:{calendar, v18}];
        [v14 setTimeZone:timeZone];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_reusableViews removeAllObjects];
  dayComponents = [(EKCalendarDate *)self->_displayedDate dayComponents];
  v16 = [calendar dateFromComponents:dayComponents];
  v17 = [EKCalendarDate calendarDateWithDate:v16 timeZone:timeZone];
  [(WeekViewController *)self setDisplayedDate:v17 forceScroll:1 animated:0];
}

- (void)_updateBackButtonOnBackViewControllerToDate:(id)date
{
  dateCopy = date;
  navigationController = [(WeekViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [navigationController updateBackButtonToDate:dateCopy];
  }
}

- (void)_updateNavigationTitleControllerToDate:(id)date
{
  dateCopy = date;
  navigationController = [(WeekViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [navigationController updateTitleToDate:dateCopy];
  }
}

- (void)_updateContentForSizeCategoryChange:(id)change
{
  +[EKUILargeTextUtilities clearCache];
  if (self->_viewWillAppearCalled)
  {
    +[EKDayTimeView defaultHourScale];
    [(WeekViewController *)self _setHourHeightScale:?];
  }

  else
  {
    self->_needsHourHeightUpdate = 1;
  }

  v4 = +[CUIKPreferences sharedPreferences];
  +[EKDayTimeView defaultHourScale];
  *&v5 = v5;
  v6 = [NSNumber numberWithFloat:v5];
  [v4 setWeekViewHourScale:v6];

  +[EKDayTimeView defaultHourScale];
  v8 = v7;
  persistedSceneState = [(CUIKCalendarModel *)self->super._model persistedSceneState];
  [persistedSceneState setWeekViewHourScale:v8];

  [(WeekTimeView *)self->_timeView contentSizeCategoryChanged];
  [(WeekTimeView *)self->_timeView sizeToFit];
  [(WeekViewController *)self resizeWeekGroupsIfNeededForOrientation:[(WeekViewController *)self viewInterfaceOrientation]];
  if ([(NSMutableArray *)self->_visibleWeeks count])
  {
    v10 = [(NSMutableArray *)self->_visibleWeeks objectAtIndex:0];
    weekView = [v10 weekView];
    self->_lastScrollPositionSecond = [weekView firstVisibleSecond];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = self->_visibleWeeks;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        [v17 removeFromSuperview];
        [(WeekViewController *)self _reuseWeekView:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v14);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = self->_reusableViews;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v23 + 1) + 8 * j) removeFromSuperview];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v20);
  }

  [(NSMutableArray *)self->_visibleWeeks removeAllObjects];
  self->_visibleRange.location = 0;
  self->_visibleRange.length = 0;
  [(NSMutableArray *)self->_reusableViews removeAllObjects];
}

- (CGRect)_frameForWeek:(int64_t)week
{
  weekWidth = self->_weekWidth;
  v4 = weekWidth * week;
  [(UIScrollView *)self->_weekScroller bounds];
  v6 = 0.0;
  v7 = v4;
  v8 = weekWidth;
  result.size.height = v5;
  result.size.width = v8;
  result.origin.y = v6;
  result.origin.x = v7;
  return result;
}

- (id)dateForWeek:(int64_t)week
{
  if (CalTimeDirectionIsLeftToRight())
  {
    v5 = week - 27040;
  }

  else
  {
    v5 = 27040 - week;
  }

  referenceWeekStart = self->_referenceWeekStart;

  return [(EKCalendarDate *)referenceWeekStart calendarDateByAddingWeeks:v5];
}

- (id)_createPreparedViewForWeek:(int64_t)week
{
  view = [(WeekViewController *)self view];
  window = [view window];

  if (window)
  {
    view2 = [(WeekViewController *)self view];
    window2 = [view2 window];
    EKUIPushFallbackSizingContextWithViewHierarchy();
  }

  if ([(NSMutableArray *)self->_reusableViews count])
  {
    firstObject = [(NSMutableArray *)self->_reusableViews firstObject];
    [(WeekViewController *)self _frameForWeek:week];
    [(WeekGroupView *)firstObject setFrame:?];
    [(NSMutableArray *)self->_reusableViews removeObjectAtIndex:0];
  }

  else
  {
    v10 = [WeekGroupView alloc];
    [(WeekViewController *)self _frameForWeek:week];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    intendedSizeClass = [(WeekViewController *)self intendedSizeClass];
    window3 = [(MainViewController *)self window];
    firstObject = [(WeekGroupView *)v10 initWithFrame:intendedSizeClass sizeClass:window3 targetWindow:self rightClickDelegate:[(WeekViewController *)self usesMultiDayWeekView] isMultiDayView:v12, v14, v16, v18];
  }

  [(WeekGroupView *)firstObject setDelegate:self];
  [(WeekGroupView *)firstObject setIsInUse:1];
  [(WeekGroupView *)firstObject setWeek:week];
  [(WeekGroupView *)firstObject setAccessibilityIdentifier:@"weekGroupView"];
  v21 = [(WeekViewController *)self dateForWeek:week];
  model = [(WeekViewController *)self model];
  calendar = [model calendar];
  [(WeekGroupView *)firstObject setCalendar:calendar];

  model2 = [(WeekViewController *)self model];
  eventStore = [model2 eventStore];
  timeZone = [eventStore timeZone];
  [(WeekGroupView *)firstObject setTimeZone:timeZone];

  weekView = [(WeekGroupView *)firstObject weekView];
  [weekView setDataSource:self];

  receiveTapsInHeader = [(WeekViewController *)self receiveTapsInHeader];
  weekView2 = [(WeekGroupView *)firstObject weekView];
  allDayView = [weekView2 allDayView];
  [allDayView setReceiveTapsInHeader:receiveTapsInHeader];

  allComponents = [v21 allComponents];
  [(WeekGroupView *)firstObject setWeekStartDate:allComponents];

  [(WeekViewController *)self _setHeaderHeightForWeekGroupView:firstObject forceLayout:0];
  [(WeekGroupView *)firstObject setHourHeightScale:self->_weekViewHourHeightScale];
  if ((CalSolariumEnabled() & 1) == 0)
  {
    view3 = [(WeekViewController *)self view];
    [EKDayTimeView defaultHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:[(WeekViewController *)self viewInterfaceOrientation]];
    v34 = v33 * self->_weekViewHourHeightScale;

    weekView3 = [(WeekGroupView *)firstObject weekView];
    scrollView = [weekView3 scrollView];
    [scrollView contentSize];
    v38 = v37;

    weekView4 = [(WeekGroupView *)firstObject weekView];
    scrollView2 = [weekView4 scrollView];
    [scrollView2 setContentSize:{v38, v34}];

    weekView5 = [(WeekGroupView *)firstObject weekView];
    content = [weekView5 content];
    [content frame];
    v44 = v43;
    v46 = v45;
    v48 = v47;

    weekView6 = [(WeekGroupView *)firstObject weekView];
    content2 = [weekView6 content];
    [content2 setFrame:{v44, v46, v48, v34}];
  }

  weekView7 = [(WeekGroupView *)firstObject weekView];
  content3 = [weekView7 content];
  [content3 setNeedsLayout];

  [(UIScrollView *)self->_weekScroller addSubview:firstObject];
  if ([(NSMutableArray *)self->_visibleWeeks count])
  {
    v53 = [(NSMutableArray *)self->_visibleWeeks objectAtIndex:0];
    weekView8 = [(WeekGroupView *)firstObject weekView];
    weekView9 = [v53 weekView];
    [weekView9 safeAreaInsets];
    [weekView8 setKnownSafeAreaInsetTop:?];

    weekView10 = [v53 weekView];
    firstVisibleSecond = [weekView10 firstVisibleSecond];
    weekView11 = [(WeekGroupView *)firstObject weekView];
    [weekView11 setFirstVisibleSecond:firstVisibleSecond];
  }

  if (window)
  {
    view4 = [(WeekViewController *)self view];
    window4 = [view4 window];
    EKUIPopFallbackSizingContextWithViewHierarchy();
  }

  return firstObject;
}

- (id)verticalScrollView
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = self->_visibleWeeks;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        [v8 frame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        [(UIScrollView *)self->_weekScroller bounds];
        v33.origin.x = v17;
        v33.origin.y = v18;
        v33.size.width = v19;
        v33.size.height = v20;
        v31.origin.x = v10;
        v31.origin.y = v12;
        v31.size.width = v14;
        v31.size.height = v16;
        v32 = CGRectIntersection(v31, v33);
        if (!CGRectIsEmpty(v32))
        {
          v21 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_11:

  weekView = [v21 weekView];
  scrollView = [weekView scrollView];

  return scrollView;
}

- (void)_reuseWeekView:(id)view
{
  viewCopy = view;
  draggingView = [(EKEventGestureController *)self->_eventGestureController draggingView];

  if (draggingView)
  {
    draggingView2 = [(EKEventGestureController *)self->_eventGestureController draggingView];
    [draggingView2 frame];
    v7 = v6;
    v9 = v8;

    [(EKEventGestureController *)self->_eventGestureController touchOffset];
    v11 = v7 + v10;
    [(EKEventGestureController *)self->_eventGestureController touchOffset];
    v13 = v9 + v12;
    weekScroller = self->_weekScroller;
    draggingView3 = [(EKEventGestureController *)self->_eventGestureController draggingView];
    superview = [draggingView3 superview];
    [(UIScrollView *)weekScroller convertPoint:superview fromView:v11, v13];
    v18 = v17;
    v20 = v19;

    v21 = [(WeekViewController *)self dateAtPoint:0 isAllDay:v18, v20];
    weekStartDate = [viewCopy weekStartDate];
    timeZone = [viewCopy timeZone];
    v24 = [EKCalendarDate calendarDateWithDateComponents:weekStartDate timeZone:timeZone];

    if ([v24 compare:v21] == -1)
    {
      v25 = [v24 calendarDateByAddingDays:{-[WeekViewController daysInWeek](self, "daysInWeek")}];
      if ([v25 compare:v21] == 1)
      {
        event = [(EKEventGestureController *)self->_eventGestureController event];
        occurrenceDate = [(EKEventGestureController *)self->_eventGestureController occurrenceDate];
        [(WeekViewController *)self undimOccurrence:event occurrenceDate:occurrenceDate];

        [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
      }
    }
  }

  [viewCopy setIsInUse:0];
  [(NSMutableArray *)self->_reusableViews addObject:viewCopy];
}

- (_NSRange)visibleRangeForOffset:(double)offset
{
  weekWidth = self->_weekWidth;
  if (weekWidth == 0.0)
  {
    if (CalSolariumEnabled())
    {
      v6 = 0;
      v7 = 0;
      goto LABEL_12;
    }

    weekWidth = self->_weekWidth;
  }

  v8 = 0;
  v9 = (offset / weekWidth);
  v10 = v9 - 1;
  do
  {
    [(WeekViewController *)self _frameForWeek:v10];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(UIScrollView *)self->_weekScroller bounds];
    v42.origin.x = v19;
    v42.origin.y = v20;
    v42.size.width = v21;
    v42.size.height = v22;
    v40.origin.x = v12;
    v40.origin.y = v14;
    v40.size.width = v16;
    v40.size.height = v18;
    if (!CGRectIntersectsRect(v40, v42))
    {
      break;
    }

    ++v8;
    --v10;
  }

  while (v8 != 2);
  v23 = 0;
  v7 = v9 - v8;
  v24 = v8 + 1;
  v25 = v9 + 1;
  do
  {
    [(WeekViewController *)self _frameForWeek:v25];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    [(UIScrollView *)self->_weekScroller bounds];
    v43.origin.x = v34;
    v43.origin.y = v35;
    v43.size.width = v36;
    v43.size.height = v37;
    v41.origin.x = v27;
    v41.origin.y = v29;
    v41.size.width = v31;
    v41.size.height = v33;
    if (!CGRectIntersectsRect(v41, v43))
    {
      break;
    }

    ++v23;
    ++v25;
  }

  while (v23 != 2);
  v6 = v24 + v23;
LABEL_12:
  v38 = v7;
  result.length = v6;
  result.location = v38;
  return result;
}

- (void)updateVisibleRects
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = self->_visibleWeeks;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        [(UIScrollView *)self->_weekScroller bounds];
        v10 = v9;
        [(UIScrollView *)self->_weekScroller bounds];
        v12 = v10 - v11;
        [(UIScrollView *)self->_weekScroller bounds];
        v14 = v13;
        [(UIScrollView *)self->_weekScroller bounds];
        v16 = v15 * 3.0;
        [(UIScrollView *)self->_weekScroller bounds];
        v18 = v17;
        [v8 frame];
        v30.origin.x = v12;
        v30.origin.y = v14;
        v30.size.width = v16;
        v30.size.height = v18;
        v29 = CGRectIntersection(v28, v30);
        x = v29.origin.x;
        y = v29.origin.y;
        width = v29.size.width;
        height = v29.size.height;
        if (!CGRectIsEmpty(v29))
        {
          [v8 convertRect:self->_weekScroller fromView:{x, y, width, height}];
          [v8 adjustForVisibleRect:?];
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }
}

- (void)layoutCellsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(UIScrollView *)self->_weekScroller contentOffset];
  v4 = [(WeekViewController *)self visibleRangeForOffset:?];
  v6 = v5;
  [(UIScrollView *)self->_weekScroller bounds];
  v8 = v7;
  [(UIScrollView *)self->_weekScroller bounds];
  v10 = v9;
  view = [(WeekViewController *)self view];
  window = [view window];
  [window frame];
  v14 = v13;

  view2 = [(WeekViewController *)self view];
  window2 = [view2 window];
  [window2 frame];
  v18 = v17;

  if ([(WeekViewController *)self rotatingToPortrait]|| [(WeekViewController *)self rotatingToLandscape])
  {
    if ([(WeekViewController *)self rotatingToPortrait])
    {
      v19 = v14 > v18 || v8 > v10;
    }

    else
    {
      rotatingToLandscape = [(WeekViewController *)self rotatingToLandscape];
      v21 = v8 < v10;
      if (v14 < v18)
      {
        v21 = 1;
      }

      if (rotatingToLandscape)
      {
        v19 = v21;
      }

      else
      {
        v19 = 0;
      }
    }

    if (self->_prevLayoutScrollerSize.width == v8 && self->_prevLayoutScrollerSize.height == v10)
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  [(UIScrollView *)self->_weekScroller bounds];
  self->_prevLayoutScrollerSize.width = v22;
  self->_prevLayoutScrollerSize.height = v23;
  length = self->_visibleRange.length;
  if (length)
  {
    location = self->_visibleRange.location;
    if (v19)
    {
      v26 = 0;
      v27 = 0;
      v83 = 0;
      v86 = 0;
      v6 = 0;
      v28 = 0;
      v82 = self->_visibleRange.length;
      v4 = self->_visibleRange.location;
    }

    else
    {
      if (v4 >= location)
      {
        if (v4 > location)
        {
          v83 = 0;
          v86 = 0;
          if (length >= v4 - location)
          {
            v27 = v4 - location;
          }

          else
          {
            v27 = self->_visibleRange.length;
          }
        }

        else
        {
          v27 = 0;
          v83 = 0;
          v86 = 0;
        }
      }

      else
      {
        v27 = 0;
        v29 = location - v4;
        if (v6 < location - v4)
        {
          v29 = v6;
        }

        v83 = v29;
        v86 = v4;
      }

      v30 = &v6[v4];
      v31 = location + length;
      v82 = v6;
      if (&v6[v4] <= v31)
      {
        if (&v6[v4] >= v31)
        {
          v26 = 0;
          v6 = 0;
          v28 = 0;
        }

        else
        {
          v6 = 0;
          v28 = 0;
          v32 = v31 - v30;
          if (v32 >= length)
          {
            v26 = self->_visibleRange.length;
          }

          else
          {
            v26 = v32;
          }
        }
      }

      else
      {
        v26 = 0;
        if (v4 <= v31)
        {
          v28 = v31;
        }

        else
        {
          v28 = v4;
        }

        if (v6 >= &v6[v4 - v31])
        {
          v6 = &v6[v4 - v31];
        }
      }
    }
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v83 = 0;
    v86 = 0;
    v82 = v6;
    v28 = v4;
  }

  v81 = v4;
  if ([(NSMutableArray *)self->_visibleWeeks count])
  {
    v33 = [(NSMutableArray *)self->_visibleWeeks objectAtIndex:0];
    weekView = [v33 weekView];
    firstVisibleSecond = [weekView firstVisibleSecond];
  }

  else
  {
    firstVisibleSecond = -1;
  }

  if (v26 && [(NSMutableArray *)self->_visibleWeeks count])
  {
    v36 = self->_visibleRange.length;
    if (v36 >= v26)
    {
      v37 = v36 - v26;
      do
      {
        v38 = [(NSMutableArray *)self->_visibleWeeks objectAtIndex:v37];
        [v38 removeFromSuperview];
        [(WeekViewController *)self _reuseWeekView:v38];

        ++v37;
      }

      while (v37 < v36);
    }

    [(NSMutableArray *)self->_visibleWeeks removeObjectsInRange:v36 - v26, v26];
  }

  if (v27 && [(NSMutableArray *)self->_visibleWeeks count])
  {
    for (i = 0; i != v27; ++i)
    {
      v40 = [(NSMutableArray *)self->_visibleWeeks objectAtIndex:i];
      [v40 removeFromSuperview];
      [(WeekViewController *)self _reuseWeekView:v40];
    }

    [(NSMutableArray *)self->_visibleWeeks removeObjectsInRange:0, v27];
  }

  if ([(NSMutableArray *)self->_visibleWeeks count])
  {
    v41 = 1;
  }

  else
  {
    v41 = firstVisibleSecond == -1;
  }

  if (!v41)
  {
    self->_lastScrollPositionSecond = firstVisibleSecond;
  }

  v42 = v86;
  if ([(NSMutableArray *)self->_visibleWeeks count])
  {
    v89 = 0;
  }

  else
  {
    v89 = self->_lastScrollPositionSecond != -1;
  }

  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_1000854D0;
  v90[3] = &unk_10020FF00;
  v90[4] = self;
  v91 = animatedCopy;
  v88 = objc_retainBlock(v90);
  v44 = v83;
  if (v83)
  {
    v45 = v86 + v83 - 1;
    if (v45 >= v86)
    {
      *&v43 = 134218240;
      v80 = v43;
      do
      {
        v46 = [(WeekViewController *)self _createPreparedViewForWeek:v45, v80];
        v47 = v46;
        if (v89)
        {
          lastScrollPositionSecond = self->_lastScrollPositionSecond;
          weekView2 = [v46 weekView];
          [weekView2 setFirstVisibleSecond:lastScrollPositionSecond];
        }

        [(NSMutableArray *)self->_visibleWeeks insertObject:v47 atIndex:0];
        if ([(UIScrollView *)self->_weekScroller isTracking])
        {
          isScrollAnimating = 1;
        }

        else
        {
          isScrollAnimating = [(UIScrollView *)self->_weekScroller isScrollAnimating];
        }

        [v47 setAsyncLoading:isScrollAnimating];
        if ([v47 asyncLoading])
        {
          [v47 loadDataAsyncWithCompletion:v88 reverse:1];
        }

        else
        {
          v51 = [(WeekViewController *)self dateForWeek:v45];
          displayedDate = [(WeekViewController *)self displayedDate];
          v53 = [v51 differenceInDays:displayedDate];

          if (v53 >= 0)
          {
            v54 = v53;
          }

          else
          {
            v54 = -v53;
          }

          if (v54 >= 0xF)
          {
            v55 = kCalUILogHandle;
            if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_FAULT))
            {
              v56 = v55;
              displayedDate2 = [(WeekViewController *)self displayedDate];
              date = [displayedDate2 date];
              [date timeIntervalSince1970];
              v59 = v58;
              date2 = [v51 date];
              [date2 timeIntervalSince1970];
              *buf = v80;
              v93 = v59;
              v94 = 2048;
              v95 = v61;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_FAULT, "The current date is %{time_t}ld but we're prepending a week view for %{time_t}ld.", buf, 0x16u);

              v42 = v86;
            }
          }

          [v47 reloadData];
        }

        v44 = 1;
        if (!v45)
        {
          break;
        }

        --v45;
      }

      while (v45 >= v42);
    }

    else
    {
      v44 = 0;
    }
  }

  if (v6 && v28 < &v6[v28])
  {
    v62 = &selRef__splitViewController_didEndResizingColumn_;
    do
    {
      v63 = [(WeekViewController *)self _createPreparedViewForWeek:v28];
      v64 = v63;
      if (v89)
      {
        v65 = *(&self->super.super.super.super.isa + *(v62 + 650));
        weekView3 = [v63 weekView];
        [weekView3 setFirstVisibleSecond:v65];
      }

      [(NSMutableArray *)self->_visibleWeeks addObject:v64];
      if ([(UIScrollView *)self->_weekScroller isTracking])
      {
        isScrollAnimating2 = 1;
      }

      else
      {
        isScrollAnimating2 = [(UIScrollView *)self->_weekScroller isScrollAnimating];
      }

      [v64 setAsyncLoading:isScrollAnimating2];
      if ([v64 asyncLoading])
      {
        [v64 loadDataAsyncWithCompletion:v88 reverse:0];
      }

      else
      {
        v68 = [(WeekViewController *)self dateForWeek:v28];
        displayedDate3 = [(WeekViewController *)self displayedDate];
        v70 = [v68 differenceInDays:displayedDate3];

        if (v70 >= 0)
        {
          v71 = v70;
        }

        else
        {
          v71 = -v70;
        }

        if (v71 >= 0xF)
        {
          v72 = kCalUILogHandle;
          if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_FAULT))
          {
            v73 = v72;
            displayedDate4 = [(WeekViewController *)self displayedDate];
            date3 = [displayedDate4 date];
            [date3 timeIntervalSince1970];
            v75 = v62;
            v77 = v76;
            date4 = [v68 date];
            [date4 timeIntervalSince1970];
            *buf = 134218240;
            v93 = v77;
            v62 = v75;
            v94 = 2048;
            v95 = v79;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_FAULT, "The current date is %{time_t}ld but we're appending a week view for %{time_t}ld.", buf, 0x16u);
          }
        }

        [v64 reloadData];
      }

      ++v28;
      --v6;
    }

    while (v6);
  }

  else if (!v44)
  {
    goto LABEL_105;
  }

  if (CalSolariumEnabled())
  {
    [(WeekViewController *)self _reorderVisibleWeeksAsSubviews];
  }

LABEL_105:
  self->_visibleRange.location = v81;
  self->_visibleRange.length = v82;
  [(WeekViewController *)self updateVisibleRects];
  [(WeekViewController *)self _updateAllDayView];
  [(WeekViewController *)self _updateHeaderHeightsAnimated:animatedCopy];
  [(WeekViewController *)self _updateMultiDayAllDaySectionScrollerContentSize];
}

- (void)_reorderVisibleWeeksAsSubviews
{
  if ([(NSMutableArray *)self->_visibleWeeks count]>= 2)
  {
    v3 = [(NSMutableArray *)self->_visibleWeeks objectAtIndexedSubscript:0];
    if ([(NSMutableArray *)self->_visibleWeeks count]>= 2)
    {
      v4 = 1;
      while (1)
      {
        v8 = [(NSMutableArray *)self->_visibleWeeks objectAtIndexedSubscript:v4];
        superview = [v3 superview];
        superview2 = [v8 superview];

        if (superview != superview2)
        {
          break;
        }

        superview3 = [v3 superview];
        [superview3 insertSubview:v8 belowSubview:v3];

        ++v4;
        v3 = v8;
        if (v4 >= [(NSMutableArray *)self->_visibleWeeks count])
        {
          goto LABEL_10;
        }
      }
    }

    v8 = v3;
LABEL_10:
  }
}

- (void)_updateAllDayView
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_visibleWeeks;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        weekView = [v7 weekView];
        hasAllDayEvents = [weekView hasAllDayEvents];

        if (hasAllDayEvents)
        {
          weekView2 = [v7 weekView];
          allDayView = [weekView2 allDayView];
          [allDayView setNeedsLayout];
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (void)_updateTimeMarker
{
  isTodayVisible = [(WeekViewController *)self isTodayVisible];
  [(WeekTimeView *)self->_timeView setShowsTimeMarker:isTodayVisible];
  [(WeekTimeView *)self->_timeView updateMarkerPosition];
  _isLeadingEdgeToday = [(WeekViewController *)self _isLeadingEdgeToday];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_visibleWeeks;
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
        weekView = [v10 weekView];
        [weekView hideNowDot:_isLeadingEdgeToday];

        weekView2 = [v10 weekView];
        [weekView2 updateMarkerPosition];

        if (isTodayVisible & [v10 showsTimeMarker])
        {
          weekView3 = [v10 weekView];
          [weekView3 updateTimeMarkerForDayChange];
        }

        else
        {
          [v10 setShowsTimeMarker:isTodayVisible];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_reusableViews;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * j);
        weekView4 = [v19 weekView];
        [weekView4 hideNowDot:_isLeadingEdgeToday];

        if (isTodayVisible & [v19 showsTimeMarker])
        {
          weekView5 = [v19 weekView];
          [weekView5 updateTimeMarkerForDayChange];
        }

        else
        {
          [v19 setShowsTimeMarker:isTodayVisible];
        }
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  [(WeekViewController *)self _updateTimeMarkerExtensionColor:_isLeadingEdgeToday];
  if (isTodayVisible)
  {
    [(WeekViewController *)self _startMarkerTimer];
  }

  else
  {
    [(WeekViewController *)self _invalidateMarkerTimer];
  }
}

- (void)_updateForHeaderTodayRedCircle
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_visibleWeeks;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        weekView = [*(*(&v9 + 1) + 8 * v6) weekView];
        allDayView = [weekView allDayView];
        [allDayView layoutIfNeeded];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (BOOL)_isLeadingEdgeToday
{
  earliestDateComponents = [(WeekViewController *)self earliestDateComponents];
  v3 = CUIKCalendar();
  v4 = [v3 dateFromComponents:earliestDateComponents];

  v5 = CUIKTodayDate();
  v6 = [v4 isEqualToDate:v5];

  return v6;
}

- (void)_updateTimeMarkerExtensionColor:(BOOL)color
{
  if (color)
  {
    +[UIColor cuik_todayTimelineColor];
  }

  else
  {
    +[UIColor cuik_nonTodayTimelineColor];
  }
  v4 = ;
  [(WeekTimeView *)self->_timeView setTimeMarkerExtensionColor:v4];
}

- (BOOL)userInitiatedScroll
{
  if ([(WeekViewController *)self userIsScrolling])
  {
    return 1;
  }

  return [(WeekViewController *)self userIsDragging];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"EmptySearchBarNeedsResignFirstResponderNotification" object:self];

  self->_isUserScrolling = 1;
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (!self->_preventScrollUpdates)
  {
    [(WeekViewController *)self layoutCellsAnimated:[(WeekViewController *)self userInitiatedScroll]];
    if ([(WeekViewController *)self userInitiatedScroll])
    {
      [(WeekViewController *)self updateDisplayedDateForCurrentScrollOffset];
    }

    _isLeadingEdgeToday = [(WeekViewController *)self _isLeadingEdgeToday];
    [(WeekViewController *)self _updateTimeMarkerExtensionColor:_isLeadingEdgeToday];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_visibleWeeks;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          weekView = [*(*(&v21 + 1) + 8 * v9) weekView];
          [weekView hideNowDot:_isLeadingEdgeToday];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = self->_reusableViews;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          weekView2 = [*(*(&v17 + 1) + 8 * v15) weekView];
          [weekView2 hideNowDot:_isLeadingEdgeToday];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }
  }
}

- (void)snapTargetScrollOffset:(CGPoint *)offset withVelocity:(CGPoint)velocity
{
  x = velocity.x;
  v7 = [(WeekViewController *)self displaysDatesSnappedToWeekBoundaries:velocity.x];
  [(UIScrollView *)self->_weekScroller contentOffset];
  v8 = [(WeekViewController *)self dayDateAtPoint:?];
  v9 = [(WeekViewController *)self dayDateAtPoint:offset->x, offset->y];
  if (v7)
  {
    calendarDateForDay = [v8 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];

    [v9 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];
  }

  else
  {
    calendarDateForDay = [v8 calendarDateForDay];

    [v9 calendarDateForDay];
  }
  v10 = ;

  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  v12 = -x;
  if (IsLeftToRight)
  {
    v12 = x;
  }

  if (v12 <= 0.5)
  {
    if (v12 < -0.5)
    {
      if (v7)
      {
        [calendarDateForDay calendarDateByAddingWeeks:-1];
      }

      else
      {
        [calendarDateForDay calendarDateByAddingDays:-1];
      }
      v19 = ;
      if ([v19 compare:v10] == 1)
      {
        v20 = [(WeekViewController *)self _snapDateForOffset:v7 snapToWeeks:offset->x, offset->y];
      }

      else
      {
        v20 = v10;
      }

      v18 = v20;

      goto LABEL_24;
    }

    v14 = offset->x;
    y = offset->y;
    selfCopy2 = self;
    v17 = 0;
  }

  else
  {
    if ([calendarDateForDay compare:v10] != -1)
    {
      if (v7)
      {
        [v10 calendarDateByAddingWeeks:1];
      }

      else
      {
        [v10 calendarDateByAddingDays:1];
      }
      v13 = ;
      goto LABEL_18;
    }

    v14 = offset->x;
    y = offset->y;
    selfCopy2 = self;
    v17 = v7;
  }

  v13 = [(WeekViewController *)selfCopy2 _snapDateForOffset:v17 snapToWeeks:v14, y];
LABEL_18:
  v18 = v13;
LABEL_24:
  [(WeekViewController *)self _xOffsetForDate:v18];
  offset->x = v21;
}

- (id)_snapDateForOffset:(CGPoint)offset snapToWeeks:(BOOL)weeks
{
  y = offset.y;
  x = offset.x;
  v8 = [(WeekViewController *)self dayDateAtPoint:?];
  if (weeks)
  {
    v9 = [v8 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];

    [(WeekViewController *)self weekWidth];
    v11 = [(WeekViewController *)self dayDateAtPoint:x + v10 * 0.5, y];
    calendarDateForDay = [v11 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];
    v8 = v9;
  }

  else
  {
    v11 = [(WeekViewController *)self dayDateAtPoint:x + 0.0, y];
    calendarDateForDay = [v11 calendarDateForDay];
  }

  if ([calendarDateForDay isEqual:v8])
  {
    v13 = v8;
  }

  else
  {
    v13 = calendarDateForDay;
  }

  v14 = v13;

  return v13;
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(WeekViewController *)self draggingDone];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [(WeekViewController *)self draggingDone];
  self->_isUserScrolling = 0;

  [(WeekViewController *)self _updateHeaderHeightsAnimated:1];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  [(WeekViewController *)self draggingDone];
  earliestDateComponents = [(WeekViewController *)self earliestDateComponents];
  if (earliestDateComponents || ([(WeekViewController *)self layoutCellsAnimated:0], [(WeekViewController *)self earliestDateComponents], (earliestDateComponents = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = earliestDateComponents;
  }

  else
  {
    sub_100170224();
    v15 = 0;
  }

  v5 = CUIKCalendar();
  v6 = [v5 dateFromComponents:v15];

  model = [(WeekViewController *)self model];
  eventStore = [model eventStore];
  timeZone = [eventStore timeZone];
  v10 = [EKCalendarDate calendarDateWithDate:v6 timeZone:timeZone];
  v11 = [v10 calendarDateByAddingDays:{-[WeekViewController daysInWeek](self, "daysInWeek")}];
  date = [v11 date];

  v13 = [NSDictionary dictionaryWithObjectsAndKeys:v6, @"WeekViewController_ScrollDidEndAnimationRangeStartKey", date, @"WeekViewController_ScrollDidEndAnimationRangeEndKey", 0];
  v14 = +[NSNotificationCenter defaultCenter];
  [v14 postNotificationName:@"WeekViewController_ScrollDidEndAnimationNotification" object:self userInfo:v13];
}

- (void)draggingDone
{
  [(WeekViewController *)self updatePreferredReloadRange];
  [(WeekViewController *)self adjustVisibleAllDayOccurrenceLabelsAnimated:1];
  [(WeekViewController *)self _updateTimeMarker];
  centerDateComponents = [(WeekViewController *)self centerDateComponents];
  if (centerDateComponents)
  {
    model = [(WeekViewController *)self model];
    calendar = [model calendar];
    timeZone = [calendar timeZone];
    v6 = [EKCalendarDate calendarDateWithDateComponents:centerDateComponents timeZone:timeZone];

    CalAnalyticsSendEventLazy();
    model2 = [(WeekViewController *)self model];
    [model2 setSelectedDate:v6];
  }

  [(WeekViewController *)self updateDisplayedDateForCurrentScrollOffset];
  [(MainViewController *)self setSceneTitleNeedsUpdate];
  [(WeekViewController *)self _updateShouldAnnotateAppEntities];
}

- (void)_updateShouldAnnotateAppEntities
{
  calendar = [(CUIKCalendarModel *)self->super._model calendar];
  earliestDateComponents = [(WeekViewController *)self earliestDateComponents];
  v5 = [calendar dateFromComponents:earliestDateComponents];
  cachedEarliestDate = self->_cachedEarliestDate;
  self->_cachedEarliestDate = v5;

  _latestDateComponents = [(WeekViewController *)self _latestDateComponents];
  v8 = [calendar dateFromComponents:_latestDateComponents];
  cachedLatestDate = self->_cachedLatestDate;
  self->_cachedLatestDate = v8;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_visibleWeeks;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v24 + 1) + 8 * v14) shouldAnnotateAppEntitiesChanged];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self->_reusableViews;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * v19) shouldAnnotateAppEntitiesChanged];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

- (int64_t)firstVisibleSecond
{
  memset(v6, 0, sizeof(v6));
  v2 = self->_visibleWeeks;
  if ([(NSMutableArray *)v2 countByEnumeratingWithState:v6 objects:v7 count:16])
  {
    weekView = [**(&v6[0] + 1) weekView];
    firstVisibleSecond = [weekView firstVisibleSecond];
  }

  else
  {
    firstVisibleSecond = 0;
  }

  return firstVisibleSecond;
}

- (void)setFirstVisibleSecond:(int64_t)second
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_visibleWeeks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        weekView = [*(*(&v10 + 1) + 8 * v8) weekView];
        [weekView setFirstVisibleSecond:second];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)occurrencesChanged:(id)changed
{
  changedCopy = changed;
  v4 = [(NSMutableArray *)self->_visibleWeeks count];
  v5 = changedCopy;
  if (v4)
  {
    userInfo = [changedCopy userInfo];
    v7 = [userInfo objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeStartKey];
    v8 = [userInfo objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeEndKey];
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      reloadDateRangeStart = self->_reloadDateRangeStart;
      if (!reloadDateRangeStart || ([(NSDate *)reloadDateRangeStart earlierDate:v7], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 == v7))
      {
        objc_storeStrong(&self->_reloadDateRangeStart, v7);
      }

      reloadDateRangeEnd = self->_reloadDateRangeEnd;
      if (!reloadDateRangeEnd || ([(NSDate *)reloadDateRangeEnd laterDate:v9], v14 = objc_claimAutoreleasedReturnValue(), v14, v14 == v9))
      {
        objc_storeStrong(&self->_reloadDateRangeEnd, v9);
      }
    }

    [(WeekViewController *)self _reloadDataIfVisible];
    [(WeekViewController *)self _updateSelectedViewsToMatchModel];

    v5 = changedCopy;
  }

  _objc_release_x1(v4, v5);
}

- (void)_reloadDataIfVisible
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_visibleWeeks;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 |= [*(*(&v15 + 1) + 8 * i) asyncLoading];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  view = [(WeekViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene && (![windowScene activationState] || objc_msgSend(windowScene, "activationState") == 1) && self->_viewWillAppearCalled && (-[WeekViewController view](self, "view"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "window"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isRotating") | v6, v13, v12, (v14 & 1) == 0))
  {
    [(WeekViewController *)self reloadData];
  }

  else
  {
    self->_needsReload = 1;
  }
}

- (void)loadDataAsync
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_visibleWeeks;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v8 setAsyncLoading:1];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100086E18;
        v11[3] = &unk_10020FF68;
        v11[4] = self;
        [v8 loadDataAsyncWithCompletion:v11 reverse:0];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  reloadDateRangeStart = self->_reloadDateRangeStart;
  self->_reloadDateRangeStart = 0;

  reloadDateRangeEnd = self->_reloadDateRangeEnd;
  self->_reloadDateRangeEnd = 0;

  self->_needsReload = 0;
}

- (void)reloadData
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_visibleWeeks;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  v4 = &selRef__splitViewController_didEndResizingColumn_;
  if (v3)
  {
    v5 = v3;
    v6 = *v26;
    v22 = *v26;
    do
    {
      v7 = 0;
      v23 = v5;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        v9 = *(v4 + 668);
        if (*(&self->super.super.super.super.isa + v9) && self->_reloadDateRangeEnd)
        {
          v10 = v4;
          model = [(WeekViewController *)self model];
          calendar = [model calendar];
          weekStartDate = [v8 weekStartDate];
          v14 = [calendar dateFromComponents:weekStartDate];

          lastSecondOfWeek = [v8 lastSecondOfWeek];
          v16 = [(NSDate *)self->_reloadDateRangeEnd compare:v14];
          v17 = [*(&self->super.super.super.super.isa + v9) compare:lastSecondOfWeek];
          if (v16 != NSOrderedAscending && v17 != 1)
          {
            [v8 reloadData];
          }

          v4 = v10;
          v6 = v22;
          v5 = v23;
        }

        else
        {
          [*(*(&v25 + 1) + 8 * v7) reloadData];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  [(WeekViewController *)self _updateHeaderHeightsAnimated:0];
  v19 = *(v4 + 668);
  v20 = *(&self->super.super.super.super.isa + v19);
  *(&self->super.super.super.super.isa + v19) = 0;

  reloadDateRangeEnd = self->_reloadDateRangeEnd;
  self->_reloadDateRangeEnd = 0;

  self->_needsReload = 0;
}

- (void)updatePreferredReloadRange
{
  centerDateComponents = [(WeekViewController *)self centerDateComponents];
  if (centerDateComponents)
  {
    v14 = centerDateComponents;
    model = [(WeekViewController *)self model];
    calendar = [model calendar];
    timeZone = [calendar timeZone];
    v7 = [EKCalendarDate calendarDateWithDateComponents:v14 timeZone:timeZone];

    v8 = CUIKOneIndexedWeekStart();
    v9 = [v7 calendarDateForWeekWithWeekStart:v8];
    v10 = [v9 calendarDateForEndOfWeekWithWeekStart:v8];
    model2 = [(WeekViewController *)self model];
    date = [v9 date];
    date2 = [v10 date];
    [model2 setPreferredReloadStartDate:date endDate:date2];

    centerDateComponents = v14;
  }
}

- (id)weekView:(id)view allEventsForStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  model = [(WeekViewController *)self model];
  v10 = [model occurrencesForStartDate:dateCopy endDate:endDateCopy preSorted:1 waitForLoad:1];

  return v10;
}

- (id)weekView:(id)view eventsForStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  model = [(WeekViewController *)self model];
  v10 = [model occurrencesForStartDate:dateCopy endDate:endDateCopy preSorted:1 waitForLoad:0];

  return v10;
}

- (id)presentationControllerForEditMenu
{
  currentPresentationController = [(WeekViewController *)self currentPresentationController];
  presentedViewController = [currentPresentationController presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [currentPresentationController presentedViewController];
  }

  else
  {
    presentedViewController2 = currentPresentationController;
  }

  v5 = presentedViewController2;

  return v5;
}

- (id)selectedEventsForEditMenu
{
  model = [(WeekViewController *)self model];
  selectedOccurrences = [model selectedOccurrences];

  return selectedOccurrences;
}

- (void)weekGroupAllDaySectionDidScroll:(id)scroll
{
  scrollCopy = scroll;
  v5 = scrollCopy;
  if (!self->_updatingAllDayContentOffset)
  {
    self->_updatingAllDayContentOffset = 1;
    weekView = [scrollCopy weekView];
    allDayView = [weekView allDayView];
    [allDayView contentOffset];
    v9 = v8;
    v11 = v10;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = self->_visibleWeeks;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * v16);
          if (v17 != v5)
          {
            weekView2 = [v17 weekView];
            allDayView2 = [weekView2 allDayView];
            [allDayView2 setContentOffset:{v9, v11}];
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    self->_updatingAllDayContentOffset = 0;
  }
}

- (id)weekGroupForWeekBefore:(id)before
{
  if ([(NSMutableArray *)self->_visibleWeeks indexOfObject:before]- 1 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_visibleWeeks objectAtIndex:?];
  }

  return v4;
}

- (id)weekGroupForWeekAfter:(id)after
{
  v4 = [(NSMutableArray *)self->_visibleWeeks indexOfObject:after];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4 + 1, v4 + 1 >= [(NSMutableArray *)self->_visibleWeeks count]))
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_visibleWeeks objectAtIndex:v5];
  }

  return v6;
}

- (void)weekGroup:(id)group didSelectEvent:(id)event userInitiated:(BOOL)initiated dateSelected:(id)selected
{
  initiatedCopy = initiated;
  eventCopy = event;
  selectedCopy = selected;
  model = [(WeekViewController *)self model];
  pasteboardManager = [model pasteboardManager];
  startDate = [eventCopy startDate];
  [pasteboardManager setDateForPaste:startDate];

  if (([(EKEventGestureController *)self->_eventGestureController dragGestureInProgress]& 1) == 0)
  {
    [(WeekViewController *)self _removeDateHighlight];
    event = [(EKEventGestureController *)self->_eventGestureController event];

    if (event)
    {
      event2 = [(EKEventGestureController *)self->_eventGestureController event];
      occurrenceDate = [(EKEventGestureController *)self->_eventGestureController occurrenceDate];
      [(WeekViewController *)self undimOccurrence:event2 occurrenceDate:occurrenceDate];

      [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
    }

    else if (eventCopy)
    {
      if (initiatedCopy)
      {
        presentedViewController = [(WeekViewController *)self presentedViewController];
        isBeingDismissed = [presentedViewController isBeingDismissed];

        if (isBeingDismissed)
        {
          v19 = kCalUILogHandle;
          if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
          {
            *v23 = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Week view cannot present event details: presentation is currently dismissing", v23, 2u);
          }
        }

        else
        {
          if (selectedCopy)
          {
            v24 = @"Context_DateSelected";
            v25 = selectedCopy;
            v22 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
          }

          else
          {
            v22 = 0;
          }

          [(WeekViewController *)self showEvent:eventCopy animated:1 showMode:1 context:v22];
        }
      }

      else
      {
        selectedOccurrences = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
        v21 = [selectedOccurrences containsObject:eventCopy];

        if ((v21 & 1) == 0)
        {
          [(CUIKCalendarModel *)self->super._model setSelectedOccurrence:eventCopy];
        }
      }
    }
  }
}

- (void)weekGroup:(id)group didSelectEvents:(id)events userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  eventsCopy = events;
  if (([(EKEventGestureController *)self->_eventGestureController dragGestureInProgress]& 1) == 0)
  {
    [(WeekViewController *)self _removeDateHighlight];
    event = [(EKEventGestureController *)self->_eventGestureController event];

    if (event)
    {
      event2 = [(EKEventGestureController *)self->_eventGestureController event];
      occurrenceDate = [(EKEventGestureController *)self->_eventGestureController occurrenceDate];
      [(WeekViewController *)self undimOccurrence:event2 occurrenceDate:occurrenceDate];

      [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
    }

    else if (eventsCopy)
    {
      if (initiatedCopy)
      {
        presentedViewController = [(WeekViewController *)self presentedViewController];
        isBeingDismissed = [presentedViewController isBeingDismissed];

        if (isBeingDismissed)
        {
          v13 = kCalUILogHandle;
          if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
          {
            *v16 = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Week view cannot present event details: presentation is currently dismissing", v16, 2u);
          }
        }

        else
        {
          [(WeekViewController *)self showEvents:eventsCopy animated:1 showMode:1 context:0];
        }
      }

      else
      {
        selectedOccurrences = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
        v15 = [selectedOccurrences isEqualToArray:eventsCopy];

        if ((v15 & 1) == 0)
        {
          [(CUIKCalendarModel *)self->super._model setSelectedOccurrences:eventsCopy];
        }
      }
    }
  }
}

- (void)weekGroup:(id)group pointerDidTargetOccurrences:(id)occurrences
{
  occurrencesCopy = occurrences;
  if (([(EKEventGestureController *)self->_eventGestureController dragGestureInProgress]& 1) == 0)
  {
    [(WeekViewController *)self _removeDateHighlight];
    event = [(EKEventGestureController *)self->_eventGestureController event];

    if (event)
    {
      event2 = [(EKEventGestureController *)self->_eventGestureController event];
      occurrenceDate = [(EKEventGestureController *)self->_eventGestureController occurrenceDate];
      [(WeekViewController *)self undimOccurrence:event2 occurrenceDate:occurrenceDate];

      [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
    }

    else if (occurrencesCopy)
    {
      model = [(WeekViewController *)self model];
      [model setPointerTargetedOccurrences:occurrencesCopy];
    }
  }
}

- (void)didEditEvent:(id)event creationMethod:(unint64_t)method
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 weekViewController:self didEditEvent:eventCopy creationMethod:method];
  }
}

- (void)synchronizeWeekGroupScrollingToWeek:(id)week
{
  weekCopy = week;
  if ([(NSMutableArray *)self->_visibleWeeks count]>= 2)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_visibleWeeks;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * v9);
          if (v10 != weekCopy)
          {
            weekView = [v10 weekView];
            weekView2 = [weekCopy weekView];
            scrollView = [weekView2 scrollView];
            [scrollView contentOffset];
            [weekView setScrollerContentOffset:?];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }
  }

  [(WeekViewController *)self updateVisibleRects];
  weekView3 = [weekCopy weekView];
  scrollView2 = [weekView3 scrollView];
  [scrollView2 contentOffset];
  v17 = v16;
  v19 = v18;
  scrollView3 = [(WeekTimeView *)self->_timeView scrollView];
  [scrollView3 setContentOffset:{v17, v19}];
}

- (void)weekGroupViewDidLayout:(id)layout
{
  layoutCopy = layout;
  event = [(EKEventGestureController *)self->_eventGestureController event];
  if (event && [(WeekViewController *)self _weekGroup:layoutCopy containsOccurrence:event])
  {
    eventIdentifier = [event eventIdentifier];
    if (eventIdentifier)
    {

LABEL_6:
      draggingView = [(EKEventGestureController *)self->_eventGestureController draggingView];
      editContextMenuPresented = [draggingView editContextMenuPresented];

      eventGestureController = self->_eventGestureController;
      occurrenceDate = [(EKEventGestureController *)eventGestureController occurrenceDate];
      [(EKEventGestureController *)eventGestureController forceStartWithOccurrence:event occurrenceDate:occurrenceDate shouldUpdateViewSource:1 shouldUpdateOrigin:1 shouldPresentEditMenu:editContextMenuPresented];

      goto LABEL_7;
    }

    if ([event isNew])
    {
      goto LABEL_6;
    }

    [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  }

LABEL_7:
}

- (void)weekGroupViewOccurrenceLayoutDidChange:(id)change
{
  [(EKEventGestureController *)self->_eventGestureController updateDraggingOccurrenceFrame];

  [(WeekViewController *)self _updateSelectedViewsToMatchModel];
}

- (BOOL)weekGroupViewShouldAnnotateAppEntities:(id)entities onDayStarting:(id)starting
{
  startingCopy = starting;
  if ([entities isInUse])
  {
    date = [startingCopy date];
    if ([date CalIsBeforeDate:self->_cachedEarliestDate])
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v8 = [date CalIsAfterDate:self->_cachedLatestDate] ^ 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)_weekGroup:(id)group containsOccurrence:(id)occurrence
{
  groupCopy = group;
  startDate = [occurrence startDate];
  v7 = [groupCopy containsDate:startDate];

  return v7;
}

- (void)_setReduceLayoutProcessingForAnimation:(BOOL)animation
{
  animationCopy = animation;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_visibleWeeks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        weekView = [*(*(&v11 + 1) + 8 * v8) weekView];
        content = [weekView content];
        [content setReduceLayoutProcessingForAnimation:animationCopy];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_setHourHeightScale:(double)scale
{
  [(WeekViewController *)self maximumHourScale];
  if (v5 <= scale)
  {
    scale = v5;
  }

  [(WeekViewController *)self minimumHourScale];
  if (scale >= scaleCopy)
  {
    scaleCopy = scale;
  }

  self->_weekViewHourHeightScale = scaleCopy;
  view = [(WeekViewController *)self view];
  [EKDayTimeView defaultHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:[(WeekViewController *)self viewInterfaceOrientation]];
  v9 = v8;
  weekViewHourHeightScale = self->_weekViewHourHeightScale;

  [(WeekTimeView *)self->_timeView setHourHeightScale:self->_weekViewHourHeightScale];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = self->_visibleWeeks;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = v9 * weekViewHourHeightScale;
    v15 = *v42;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        [v17 setHourHeightScale:{self->_weekViewHourHeightScale, v41}];
        weekView = [v17 weekView];
        scrollView = [weekView scrollView];
        [scrollView contentSize];
        v21 = v20;

        weekView2 = [v17 weekView];
        scrollView2 = [weekView2 scrollView];
        [scrollView2 setContentSize:{v21, v14}];

        if ((CalSolariumEnabled() & 1) == 0)
        {
          weekView3 = [v17 weekView];
          content = [weekView3 content];
          [content frame];
          v27 = v26;
          v29 = v28;

          weekView4 = [v17 weekView];
          content2 = [weekView4 content];
          [content2 bounds];
          Width = CGRectGetWidth(v46);

          weekView5 = [v17 weekView];
          content3 = [weekView5 content];
          [content3 setFrame:{v27, v29, Width, v14}];
        }

        weekView6 = [v17 weekView];
        content4 = [weekView6 content];
        [content4 setNeedsLayout];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v13);
  }

  [(WeekViewController *)self _updateTimeMarker];
  visibleWeeks = [(WeekViewController *)self visibleWeeks];
  v38 = [visibleWeeks count];

  if (v38)
  {
    visibleWeeks2 = [(WeekViewController *)self visibleWeeks];
    v40 = [visibleWeeks2 objectAtIndex:0];
    [(WeekViewController *)self synchronizeWeekGroupScrollingToWeek:v40];
  }
}

- (void)_weekScrollerDoubleTapped:(id)tapped
{
  visibleWeeks = self->_visibleWeeks;
  tappedCopy = tapped;
  v44 = [(NSMutableArray *)visibleWeeks objectAtIndex:0];
  weekView = [v44 weekView];
  content = [weekView content];
  grid = [content grid];

  view = [(WeekViewController *)self view];
  [tappedCopy locationInView:view];
  v11 = v10;

  [tappedCopy locationInView:grid];
  v13 = v12;
  v15 = v14;

  +[EKDayTimeView defaultHourScale];
  v17 = v16 / self->_weekViewHourHeightScale;
  [(WeekViewController *)self _setHourHeightScale:?];
  v18 = +[CUIKPreferences sharedPreferences];
  weekViewHourHeightScale = self->_weekViewHourHeightScale;
  *&weekViewHourHeightScale = weekViewHourHeightScale;
  v20 = [NSNumber numberWithFloat:weekViewHourHeightScale];
  [v18 setWeekViewHourScale:v20];

  v21 = self->_weekViewHourHeightScale;
  persistedSceneState = [(CUIKCalendarModel *)self->super._model persistedSceneState];
  [persistedSceneState setWeekViewHourScale:v21];

  view2 = [(WeekViewController *)self view];
  [view2 convertPoint:grid fromView:{v13, v15 * v17}];
  v25 = v24;

  v26 = v25 - v11;
  weekView2 = [v44 weekView];
  scrollView = [weekView2 scrollView];
  [scrollView contentOffset];
  v30 = v29;
  v32 = v31;

  v33 = v26 + v32;
  view3 = [(WeekViewController *)self view];
  [EKDayTimeView defaultHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:[(WeekViewController *)self viewInterfaceOrientation] withHourScale:self->_weekViewHourHeightScale];
  v36 = v35;

  weekView3 = [v44 weekView];
  scrollView2 = [weekView3 scrollView];
  [scrollView2 frame];
  v40 = v36 - v39;

  v41 = 0.0;
  if (v33 >= 0.0)
  {
    v41 = v33;
  }

  if (v41 < v40)
  {
    v40 = v41;
  }

  weekView4 = [v44 weekView];
  scrollView3 = [weekView4 scrollView];
  [scrollView3 setContentOffset:0 animated:{v30, v40}];
}

- (double)minimumHourScale
{
  [(UIScrollView *)self->_weekScroller frame];
  v4 = v3;
  view = [(WeekViewController *)self view];
  [EKDayTimeView defaultHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:[(WeekViewController *)self viewInterfaceOrientation]];
  v7 = v6;

  return fmax(v4 / v7, 0.62);
}

- (void)_updateWeekViewContentHeight
{
  view = [(WeekViewController *)self view];
  [EKDayTimeView defaultHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:[(WeekViewController *)self viewInterfaceOrientation] withHourScale:self->_weekViewHourHeightScale];
  v5 = v4;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_visibleWeeks;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        [v11 setHourHeightScale:{self->_weekViewHourHeightScale, v29}];
        weekView = [v11 weekView];
        scrollView = [weekView scrollView];
        [scrollView contentSize];
        v15 = v14;

        weekView2 = [v11 weekView];
        scrollView2 = [weekView2 scrollView];
        [scrollView2 setContentSize:{v15, v5}];

        weekView3 = [v11 weekView];
        content = [weekView3 content];
        [content frame];
        v21 = v20;
        v23 = v22;

        weekView4 = [v11 weekView];
        content2 = [weekView4 content];
        [content2 bounds];
        Width = CGRectGetWidth(v34);

        weekView5 = [v11 weekView];
        content3 = [weekView5 content];
        [content3 setFrame:{v21, v23, Width, v5}];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }
}

- (void)_weekScrollerPinched:(id)pinched
{
  pinchedCopy = pinched;
  state = [pinchedCopy state];
  if ((state - 3) <= 2)
  {
    visibleWeeks = [(WeekViewController *)self visibleWeeks];
    v6 = [visibleWeeks objectAtIndex:0];
    [(WeekViewController *)self synchronizeWeekGroupScrollingToWeek:v6];

    [(WeekViewController *)self _setReduceLayoutProcessingForAnimation:0];
    v7 = +[CUIKPreferences sharedPreferences];
    weekViewHourHeightScale = self->_weekViewHourHeightScale;
    *&weekViewHourHeightScale = weekViewHourHeightScale;
    v9 = [NSNumber numberWithFloat:weekViewHourHeightScale];
    [v7 setWeekViewHourScale:v9];

    v10 = self->_weekViewHourHeightScale;
    persistedSceneState = [(CUIKCalendarModel *)self->super._model persistedSceneState];
    [persistedSceneState setWeekViewHourScale:v10];

    [(WeekViewController *)self reloadData];
    view = [(WeekViewController *)self view];
    [view setNeedsLayout];
  }

  numberOfTouches = [pinchedCopy numberOfTouches];
  if ((numberOfTouches | 2) == 2)
  {
    v14 = numberOfTouches;
    x = self->_lastPinchPoint1.x;
    y = self->_lastPinchPoint1.y;
    if (numberOfTouches)
    {
      view2 = [(WeekViewController *)self view];
      [pinchedCopy locationOfTouch:0 inView:view2];
      self->_lastPinchPoint1.x = v18;
      self->_lastPinchPoint1.y = v19;
    }

    if (state == 2)
    {
      if (v14)
      {
        pinchDistanceForGestureRecognizer();
        v24 = self->_lastPinchDistance.y;
        v25 = v23 / v24;
        v26 = v22 - self->_lastPinchDistance.x;
        if (v26 < 0.0)
        {
          v26 = -v26;
        }

        v27 = v23 - v24;
        if (v27 < 0.0)
        {
          v27 = -v27;
        }

        if (v26 <= v27)
        {
          v28 = v25;
        }

        else
        {
          v28 = 1.0;
        }

        self->_lastPinchDistance.x = v22;
        self->_lastPinchDistance.y = v23;
      }

      else
      {
        [pinchedCopy scale];
        v28 = fabs(v30 / self->_lastPinchScale);
        self->_lastPinchScale = v30;
      }

      v31 = v28 * self->_weekViewHourHeightScale;
      [(WeekViewController *)self minimumHourScale];
      v33 = v28 <= 1.0 && v31 < v32;
      if (v33 || ([(WeekViewController *)self maximumHourScale], v31 > v34))
      {
        [(WeekViewController *)self minimumHourScale];
        if (1.0 - v28 > 0.01 && v31 < v35)
        {
          goto LABEL_49;
        }

        [(WeekViewController *)self maximumHourScale];
        v38 = v28 + -1.0;
        v28 = 1.0;
        if (v38 > 0.01 && v31 > v37)
        {
          goto LABEL_49;
        }
      }

      else
      {
        self->_weekViewHourHeightScale = v31;
      }

      v40 = [(NSMutableArray *)self->_visibleWeeks objectAtIndex:0];
      weekView = [v40 weekView];
      content = [weekView content];

      if (v14)
      {
        view3 = [(WeekViewController *)self view];
        [content convertPoint:view3 fromView:{x, y}];
        v45 = v44;
        v47 = v46;
      }

      else
      {
        [pinchedCopy locationInView:content];
        v45 = v48;
        v47 = v49;
      }

      view4 = [(WeekViewController *)self view];
      [EKDayTimeView defaultHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:[(WeekViewController *)self viewInterfaceOrientation] withHourScale:self->_weekViewHourHeightScale];
      v52 = v51;

      [(WeekTimeView *)self->_timeView setHourHeightScale:self->_weekViewHourHeightScale];
      [(WeekViewController *)self _updateWeekViewContentHeight];
      weekView2 = [v40 weekView];
      scrollView = [weekView2 scrollView];
      [scrollView contentOffset];
      v56 = v55;
      v58 = v57;

      if (v14)
      {
        view5 = [(WeekViewController *)self view];
        [view5 convertPoint:content fromView:{v45, v28 * v47}];
        v61 = v60;

        v62 = v61 - self->_lastPinchPoint1.y;
      }

      else
      {
        [pinchedCopy locationInView:content];
        v62 = v28 * v47 - v63;
      }

      v64 = v58 + v62;
      weekView3 = [v40 weekView];
      scrollView2 = [weekView3 scrollView];
      [scrollView2 frame];
      v68 = v52 - v67;

      v69 = 0.0;
      if (v64 >= 0.0)
      {
        v69 = v64;
      }

      if (v69 >= v68)
      {
        v70 = v68;
      }

      else
      {
        v70 = v69;
      }

      weekView4 = [v40 weekView];
      [weekView4 setScrollerContentOffset:{v56, v70}];

      [(WeekViewController *)self _updateTimeMarker];
      [(EKEventGestureController *)self->_eventGestureController updateDraggingOccurrenceFrame];
    }

    else if (state == 1)
    {
      if (v14)
      {
        pinchDistanceForGestureRecognizer();
        self->_lastPinchDistance.x = v20;
        self->_lastPinchDistance.y = v21;
      }

      else
      {
        [pinchedCopy scale];
        self->_lastPinchScale = v29;
      }

      [(WeekViewController *)self _setReduceLayoutProcessingForAnimation:1];
    }
  }

LABEL_49:
}

- (void)tappedOnDate:(id)date
{
  dateCopy = date;
  model = [(WeekViewController *)self model];
  pasteboardManager = [model pasteboardManager];
  date = [dateCopy date];

  [pasteboardManager setDateForPaste:date];
}

- (void)adjustVisibleAllDayOccurrenceLabelsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(WeekViewController *)self dayWidth];
  v89 = v4;
  [(WeekTimeView *)self->_timeView bounds];
  CalRoundToScreenScale();
  v83 = v5;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = self->_visibleWeeks;
  v78 = [(NSMutableArray *)obj countByEnumeratingWithState:&v95 objects:v100 count:16];
  if (v78)
  {
    v6 = 0;
    v77 = *v96;
    do
    {
      v7 = 0;
      do
      {
        if (*v96 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v80 = v7;
        v8 = *(*(&v95 + 1) + 8 * v7);
        weekView = [v8 weekView];
        allDayView = [weekView allDayView];

        [(UIScrollView *)self->_weekScroller bounds];
        [allDayView convertRect:self->_weekScroller fromView:?];
        v87 = v12;
        v88 = v11;
        v85 = v14;
        v86 = v13;
        model = [(WeekViewController *)self model];
        calendar = [model calendar];
        weekStartDate = [v8 weekStartDate];
        v18 = [calendar dateFromComponents:weekStartDate];

        v81 = v6;
        if (v6 < 1)
        {
          width = -1.0;
        }

        else
        {
          v19 = [(NSMutableArray *)self->_visibleWeeks objectAtIndex:v6 - 1];
          view = [(WeekViewController *)self view];
          [v19 frame];
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v28 = v27;
          superview = [v19 superview];
          [view convertRect:superview fromView:{v22, v24, v26, v28}];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;

          view2 = [(WeekViewController *)self view];
          [(UIScrollView *)self->_weekScroller bounds];
          [view2 convertRect:self->_weekScroller fromView:?];
          v40 = v39;
          v42 = v41;
          v44 = v43;
          v46 = v45;

          v101.origin.x = v31;
          v101.origin.y = v33;
          v101.size.width = v35;
          v101.size.height = v37;
          v105.origin.x = v40;
          v105.origin.y = v42;
          v105.size.width = v44;
          v105.size.height = v46;
          v102 = CGRectIntersection(v101, v105);
          width = v102.size.width;
        }

        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v79 = allDayView;
        occurrenceViews = [allDayView occurrenceViews];
        v48 = [occurrenceViews countByEnumeratingWithState:&v91 objects:v99 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v92;
          do
          {
            for (i = 0; i != v49; i = i + 1)
            {
              if (*v92 != v50)
              {
                objc_enumerationMutation(occurrenceViews);
              }

              v52 = *(*(&v91 + 1) + 8 * i);
              [v52 frame];
              v54 = v53;
              v56 = v55;
              v58 = v57;
              rect1 = v59;
              [v52 frame];
              v61 = v60;
              v63 = v62;
              v65 = v64;
              v67 = v66;
              occurrence = [v52 occurrence];
              startDate = [occurrence startDate];
              v70 = [startDate compare:v18];

              if (v70 != -1)
              {
                goto LABEL_18;
              }

              if (width >= v89)
              {
                [v52 setHideText:{1, v89, width}];
LABEL_18:
                hideText = 0;
                goto LABEL_19;
              }

              hideText = [v52 hideText];
LABEL_19:
              v103.origin.x = v61;
              v103.origin.y = v63;
              v103.size.width = v65;
              v103.size.height = v67;
              v106.origin.x = v88;
              v106.origin.y = v87;
              v106.size.width = v86;
              v106.size.height = v85;
              v104 = CGRectIntersection(v103, v106);
              v72 = v104.size.width;
              v104.origin.x = v54;
              v104.origin.y = v56;
              v104.size.width = v58;
              v104.size.height = rect1;
              v107.origin.x = v88;
              v107.origin.y = v87;
              v107.size.width = v86;
              v107.size.height = v85;
              if (!CGRectIntersectsRect(v104, v107) && v72 >= v89)
              {
                view3 = [(WeekViewController *)self view];
                [v52 convertPoint:view3 fromView:{v83, 0.0}];
                v75 = v74;

                [v52 fadeInContentViewAt:animatedCopy minWidth:v75 animated:v89];
              }

              if (hideText)
              {
                [v52 setHideText:0 animate:0];
              }
            }

            v49 = [occurrenceViews countByEnumeratingWithState:&v91 objects:v99 count:16];
          }

          while (v49);
        }

        v6 = v81 + 1;

        v7 = v80 + 1;
      }

      while ((v80 + 1) != v78);
      v78 = [(NSMutableArray *)obj countByEnumeratingWithState:&v95 objects:v100 count:16];
    }

    while (v78);
  }
}

- (double)dayWidth
{
  if (CalSolariumEnabled())
  {
    return fmax(self->_weekWidth / [(WeekViewController *)self daysInWeek], 130.0);
  }

  weekViewClass = [(WeekViewController *)self weekViewClass];
  viewInterfaceOrientation = [(WeekViewController *)self viewInterfaceOrientation];
  window = [(MainViewController *)self window];
  [(objc_class *)weekViewClass dayWidthForOrientation:viewInterfaceOrientation withViewInViewHierarchy:window];
  v8 = v7;

  return v8;
}

- (double)_xOffsetForDate:(id)date
{
  dateCopy = date;
  [(WeekViewController *)self loadViewIfNeeded];
  weekWidth = self->_weekWidth;
  [(WeekViewController *)self dayWidth];
  v7 = v6;
  calendarDateForDay = [dateCopy calendarDateForDay];
  calendarDateForDay2 = [(EKCalendarDate *)self->_referenceWeekStart calendarDateForDay];
  v10 = [calendarDateForDay differenceInDays:calendarDateForDay2];
  v11 = v10;
  if (v10 >= 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = -v10;
  }

  v13 = self->_weekWidth;
  if (v12 % [(WeekViewController *)self daysInWeek])
  {
    daysInWeek = [(WeekViewController *)self daysInWeek];
    v15 = 0.0;
    while (v12 > daysInWeek)
    {
      v15 = v13 + v15;
      v12 -= [(WeekViewController *)self daysInWeek];
      daysInWeek = [(WeekViewController *)self daysInWeek];
    }

    v16 = v15 + v12 * v7;
    if (v11 >= 1)
    {
      EKUISeparatorLineThickness();
      v16 = v16 + v17;
    }
  }

  else
  {
    v16 = v13 * (v12 / [(WeekViewController *)self daysInWeek]) + 0.0;
  }

  if (v11 <= 0)
  {
    v16 = -v16;
  }

  if ((CalTimeDirectionIsLeftToRight() & 1) == 0)
  {
    v16 = -v16;
    if ([(WeekViewController *)self daysInWeek]== 7)
    {
      [(UIScrollView *)self->_weekScroller adjustedContentInset];
      v16 = v16 - v18;
    }

    weekViewClass = [(WeekViewController *)self weekViewClass];
    viewInterfaceOrientation = [(WeekViewController *)self viewInterfaceOrientation];
    view = [(WeekViewController *)self view];
    v22 = [(objc_class *)weekViewClass displayedDaysForOrientation:viewInterfaceOrientation withViewInViewHierarchy:view];

    if (v22 != [(WeekViewController *)self daysInWeek])
    {
      v16 = v16 + ([(WeekViewController *)self daysInWeek]- v22) * v7;
    }
  }

  return weekWidth * 27040.0 + v16;
}

- (double)scrollToDisplayedDateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  displaysDatesSnappedToWeekBoundaries = [(WeekViewController *)self displaysDatesSnappedToWeekBoundaries];
  v6 = self->_displayedDate;
  v7 = v6;
  if (self->_weekViewStartsOnToday)
  {
    goto LABEL_2;
  }

  if (!displaysDatesSnappedToWeekBoundaries)
  {
    v8 = [(EKCalendarDate *)v6 calendarDateByAddingDays:[(WeekViewController *)self]];

    goto LABEL_8;
  }

  dayOfWeek = [(EKCalendarDate *)v6 dayOfWeek];
  if (dayOfWeek == CUIKOneIndexedWeekStart())
  {
LABEL_2:
    v8 = v7;
  }

  else
  {
    do
    {
      v8 = [(EKCalendarDate *)v7 calendarDateByAddingDays:-1];

      dayOfWeek2 = [v8 dayOfWeek];
      v7 = v8;
    }

    while (dayOfWeek2 != CUIKOneIndexedWeekStart());
  }

LABEL_8:
  [(WeekViewController *)self _xOffsetForDate:v8];
  v12 = v11;
  [(UIScrollView *)self->_weekScroller setContentOffset:animatedCopy animated:?];
  if (!animatedCopy && self->_viewIsVisible)
  {
    [(WeekViewController *)self scrollViewDidEndScrollingAnimation:self->_weekScroller];
  }

  return v12;
}

- (void)_scrollEventIntoView:(id)view animated:(BOOL)animated durationOverride:(double)override completion:(id)completion
{
  animatedCopy = animated;
  viewCopy = view;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100089A34;
  v23[3] = &unk_10020EDB0;
  completionCopy = completion;
  v24 = completionCopy;
  v12 = objc_retainBlock(v23);
  v13 = v12;
  if (viewCopy)
  {
    v14 = [(WeekViewController *)self _weekGroupForEvent:viewCopy occurrenceDate:0];
    if (!v14)
    {
      [viewCopy startDate];
      v15 = v22 = animatedCopy;
      model = [(WeekViewController *)self model];
      eventStore = [model eventStore];
      timeZone = [eventStore timeZone];
      v19 = [EKCalendarDate calendarDateWithDate:v15 timeZone:timeZone];

      animatedCopy = v22;
      [(WeekViewController *)self setDisplayedDate:v19 animated:v22];
      v14 = [(WeekViewController *)self _weekGroupForEvent:viewCopy occurrenceDate:0];
    }

    if (([viewCopy isAllDay] & 1) != 0 || !v14)
    {
      v13[2](v13, 0);
    }

    else
    {
      weekView = [v14 weekView];
      v21 = weekView;
      if (override > 0.0 && animatedCopy)
      {
        [weekView scrollToEvent:viewCopy animateWithDuration:completionCopy completion:override];
      }

      else
      {
        [weekView scrollToEvent:viewCopy animated:animatedCopy completion:completionCopy];
      }
    }
  }

  else
  {
    (v12[2])(v12, 0);
  }
}

- (void)scrollToCurrentTimeOfDayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = CUIKNowComponents();
  -[WeekViewController _scrollToSecond:animated:completion:](self, "_scrollToSecond:animated:completion:", [v5 second] + 3600 * objc_msgSend(v5, "hour") + 60 * objc_msgSend(v5, "minute"), animatedCopy, 0);
}

- (void)_scrollToSecond:(int64_t)second animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_visibleWeeks;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        weekView = [*(*(&v15 + 1) + 8 * v13) weekView];
        [weekView scrollToSecond:second animated:animatedCopy completion:completionCopy];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (unint64_t)daysFromFirstToMiddleDay
{
  weekViewClass = [(WeekViewController *)self weekViewClass];
  viewInterfaceOrientation = [(WeekViewController *)self viewInterfaceOrientation];
  view = [(WeekViewController *)self view];
  v6 = vcvtmd_u64_f64([(objc_class *)weekViewClass displayedDaysForOrientation:viewInterfaceOrientation withViewInViewHierarchy:view]/ 2.001);

  return v6;
}

- (id)firstDisplayedDate
{
  v3 = [(WeekViewController *)self];
  displayedDate = self->_displayedDate;

  return [(EKCalendarDate *)displayedDate calendarDateByAddingDays:v3];
}

- (void)updateWeekNumber
{
  if (self->_showWeekNumber)
  {
    date = [(EKCalendarDate *)self->_displayedDate date];
    v4 = CUIKCalendar();
    v5 = [v4 component:0x2000 fromDate:date];

    if (v5 != self->_currentlyDisplayedWeekNumber)
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"W%@" value:&stru_1002133B8 table:0];
      v8 = CUIKLocalizedStringForInteger();
      v9 = [NSString localizedStringWithFormat:v7, v8];

      [(WeekTimeView *)self->_timeView setWeekNumberText:v9];
      self->_currentlyDisplayedWeekNumber = v5;
    }
  }
}

- (void)setDisplayedDate:(id)date forceScroll:(BOOL)scroll animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  v14 = dateCopy;
  if (!self->_referenceWeekStart)
  {
    if ([(WeekViewController *)self daysInWeek]== 2)
    {
      v9 = v14;
    }

    else
    {
      v9 = [v14 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];
    }

    referenceWeekStart = self->_referenceWeekStart;
    self->_referenceWeekStart = v9;

    dateCopy = v14;
  }

  v11 = [dateCopy copy];
  displayedDate = self->_displayedDate;
  self->_displayedDate = v11;

  [(WeekViewController *)self updateWeekNumber];
  date = [v14 date];
  if (![(WeekViewController *)self dateIsVisible:date]|| self->_weekViewStartsOnToday)
  {

LABEL_9:
    [(WeekViewController *)self scrollToDisplayedDateAnimated:animatedCopy];
    goto LABEL_10;
  }

  if (scroll)
  {
    goto LABEL_9;
  }

LABEL_10:
  [(WeekViewController *)self updateBannerDateStrings:v14];
  [(WeekViewController *)self updatePreferredReloadRange];
}

- (void)updateDisplayedDateForCurrentScrollOffset
{
  centerDateComponents = [(WeekViewController *)self centerDateComponents];
  if (centerDateComponents)
  {
    v9 = centerDateComponents;
    model = [(WeekViewController *)self model];
    calendar = [model calendar];
    timeZone = [calendar timeZone];
    v7 = [EKCalendarDate calendarDateWithDateComponents:v9 timeZone:timeZone];

    if (![(EKCalendarDate *)self->_displayedDate isEqual:v7]|| (!self->_displayedDate ? (v8 = v7 == 0) : (v8 = 1), !v8))
    {
      objc_storeStrong(&self->_displayedDate, v7);
      [(WeekViewController *)self displayedDateChanged:self->_displayedDate userInitiated:[(WeekViewController *)self userInitiatedScroll]];
    }

    centerDateComponents = v9;
  }
}

- (void)displayedDateChanged:(id)changed userInitiated:(BOOL)initiated
{
  changedCopy = changed;
  [(WeekViewController *)self updateWeekNumber];
  [(WeekViewController *)self updateBannerDateStrings:changedCopy];

  if (CalSolariumEnabled())
  {

    [(WeekViewController *)self updateNavigationTitle];
  }

  else
  {

    [(WeekViewController *)self updateBackButtonTitle];
  }
}

- (id)_earliestWeekGroup
{
  v3 = [(NSMutableArray *)self->_visibleWeeks count];
  if (v3)
  {
    IsLeftToRight = CalTimeDirectionIsLeftToRight();
    visibleWeeks = self->_visibleWeeks;
    if (IsLeftToRight)
    {
      [(NSMutableArray *)visibleWeeks firstObject];
    }

    else
    {
      [(NSMutableArray *)visibleWeeks lastObject];
    }
    v3 = ;
  }

  return v3;
}

- (id)_latestWeekGroup
{
  v3 = [(NSMutableArray *)self->_visibleWeeks count];
  if (v3)
  {
    IsLeftToRight = CalTimeDirectionIsLeftToRight();
    visibleWeeks = self->_visibleWeeks;
    if (IsLeftToRight)
    {
      [(NSMutableArray *)visibleWeeks lastObject];
    }

    else
    {
      [(NSMutableArray *)visibleWeeks firstObject];
    }
    v3 = ;
  }

  return v3;
}

- (id)_weekGroupForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10008A380;
  v30 = sub_10008A390;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v6 = CalTimeDirectionIsLeftToRight() == 0;
  visibleWeeks = self->_visibleWeeks;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10008A398;
  v17 = &unk_10020FF90;
  if (v6)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v20 = x;
  v21 = y;
  v18 = &v22;
  v19 = &v26;
  [(NSMutableArray *)visibleWeeks enumerateObjectsWithOptions:v8 usingBlock:&v14];
  v9 = v27[5];
  if (!v9)
  {
    v10 = [(WeekViewController *)self _createPreparedViewForWeek:v23[3], v14, v15, v16, v17];
    v11 = v27[5];
    v27[5] = v10;

    [(NSMutableArray *)self->_reusableViews addObject:v27[5]];
    v9 = v27[5];
  }

  v12 = v9;
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v12;
}

- (id)dateAtPoint:(CGPoint)point isAllDay:(BOOL *)day requireAllDayRegionInsistence:(BOOL)insistence
{
  insistenceCopy = insistence;
  y = point.y;
  x = point.x;
  v10 = [(WeekViewController *)self _weekGroupForPoint:?];
  [(UIScrollView *)self->_weekScroller convertPoint:v10 toView:x, y];
  v11 = [v10 dateAtPoint:day isAllDay:insistenceCopy requireAllDayRegionInsistence:?];

  return v11;
}

- (id)dayDateAtPoint:(CGPoint)point
{
  x = point.x;
  v5 = CalSolariumEnabled();
  weekWidth = self->_weekWidth;
  if (v5 && weekWidth == 0.0)
  {
    v7 = self->_referenceWeekStart;
  }

  else
  {
    v8 = x + weekWidth * -27040.0;
    [(WeekViewController *)self weekWidth];
    v10 = llround(v8 / v9 * [(WeekViewController *)self daysInWeek]);
    if (!CalTimeDirectionIsLeftToRight())
    {
      v10 = -v10;
    }

    if ((CalTimeDirectionIsLeftToRight() & 1) == 0)
    {
      weekViewClass = [(WeekViewController *)self weekViewClass];
      viewInterfaceOrientation = [(WeekViewController *)self viewInterfaceOrientation];
      view = [(WeekViewController *)self view];
      v14 = [(objc_class *)weekViewClass displayedDaysForOrientation:viewInterfaceOrientation withViewInViewHierarchy:view];
      daysInWeek = [(WeekViewController *)self daysInWeek];

      if (v14 != daysInWeek)
      {
        daysInWeek2 = [(WeekViewController *)self daysInWeek];
        weekViewClass2 = [(WeekViewController *)self weekViewClass];
        viewInterfaceOrientation2 = [(WeekViewController *)self viewInterfaceOrientation];
        view2 = [(WeekViewController *)self view];
        v10 += daysInWeek2 + ~[(objc_class *)weekViewClass2 displayedDaysForOrientation:viewInterfaceOrientation2 withViewInViewHierarchy:view2];
      }
    }

    v7 = [(EKCalendarDate *)self->_referenceWeekStart calendarDateByAddingDays:v10];
  }

  return v7;
}

- (CGPoint)pointAtDate:(double)date isAllDay:(BOOL)day
{
  dayCopy = day;
  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:date];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_visibleWeeks;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([v12 containsDate:{v6, v19}])
        {
          [v12 pointAtDate:v6 isAllDay:dayCopy];
          [v12 convertPoint:self->_weekScroller toView:?];
          x = v15;
          y = v16;

          goto LABEL_11;
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  x = CGPointZero.x;
  y = CGPointZero.y;
LABEL_11:

  v17 = x;
  v18 = y;
  result.y = v18;
  result.x = v17;
  return result;
}

- (id)_weekGroupForEvent:(id)event occurrenceDate:(id)date
{
  eventCopy = event;
  dateCopy = date;
  if (eventCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->_visibleWeeks;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v12 occurrenceViewForEvent:eventCopy occurrenceDate:dateCopy forceMatchingContentSection:{0, v15}];

          if (v13)
          {
            v9 = v12;
            goto LABEL_12;
          }
        }

        v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)occurrenceViewAtPoint:(CGPoint)point ignoreSelectedCopyView:(BOOL)view
{
  viewCopy = view;
  y = point.y;
  x = point.x;
  v8 = [(WeekViewController *)self _weekGroupForPoint:?];
  [(UIScrollView *)self->_weekScroller convertPoint:v8 toView:x, y];
  v9 = [v8 occurrenceViewAtPoint:viewCopy ignoreSelectedCopyView:?];

  return v9;
}

- (void)editorDidDeleteEvent:(id)event
{
  eventGestureController = self->_eventGestureController;
  eventCopy = event;
  occurrenceDate = [(EKEventGestureController *)eventGestureController occurrenceDate];
  [(WeekViewController *)self undimOccurrence:eventCopy occurrenceDate:occurrenceDate];

  v7 = self->_eventGestureController;

  [(EKEventGestureController *)v7 endForcedStart:0];
}

- (void)editorDidCancelEditingEvent:(id)event
{
  eventGestureController = self->_eventGestureController;
  eventCopy = event;
  occurrenceDate = [(EKEventGestureController *)eventGestureController occurrenceDate];
  [(WeekViewController *)self undimOccurrence:eventCopy occurrenceDate:occurrenceDate];

  v7 = self->_eventGestureController;

  [(EKEventGestureController *)v7 endForcedStart:0];
}

- (void)eventGestureController:(id)controller addViewToScroller:(id)scroller isAllDay:(BOOL)day
{
  dayCopy = day;
  scrollerCopy = scroller;
  superview = [(UIScrollView *)scrollerCopy superview];
  weekScroller = scrollerCopy;
  if (!superview)
  {
    weekScroller = self->_weekScroller;
  }

  superview2 = [(UIScrollView *)weekScroller superview];

  [(UIScrollView *)scrollerCopy frame];
  MidX = CGRectGetMidX(v14);
  [(UIScrollView *)scrollerCopy frame];
  [superview2 convertPoint:self->_weekScroller toView:{MidX, CGRectGetMidY(v15)}];
  v11 = [(WeekViewController *)self _weekGroupForPoint:?];
  [v11 addViewToScroller:scrollerCopy isAllDay:dayCopy];
}

- (BOOL)hasCorrectParentForDraggingView:(id)view isAllDay:(BOOL)day
{
  dayCopy = day;
  weekScroller = self->_weekScroller;
  viewCopy = view;
  superview = [(UIScrollView *)weekScroller superview];
  [viewCopy frame];
  [superview convertPoint:self->_weekScroller toView:?];
  v10 = v9;
  v12 = v11;

  v13 = [(WeekViewController *)self _weekGroupForPoint:v10, v12];
  LOBYTE(dayCopy) = [v13 scrollerIsParentOfView:viewCopy isAllDay:dayCopy];

  return dayCopy;
}

- (void)highlightDayViewCalendarDate:(id)date isAllDay:(BOOL)day
{
  dayCopy = day;
  dateCopy = date;
  v7 = dateCopy;
  if (dayCopy)
  {
    timeView = [(WeekTimeView *)self->_timeView timeView];
    [timeView setHighlightedHour:-1.0];

    [(WeekTimeView *)self->_timeView setAllDayHighlighted:1];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = self->_visibleWeeks;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v29 + 1) + 8 * i) setHighlightedDateComponents:0];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }
  }

  else
  {
    hour = [dateCopy hour];
    v15 = ([v7 minute] + 60 * hour) / 60.0;
    timeView2 = [(WeekTimeView *)self->_timeView timeView];
    [timeView2 setHighlightedHour:v15];

    [(WeekTimeView *)self->_timeView setAllDayHighlighted:0];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = self->_visibleWeeks;
    v17 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v9);
          }

          v21 = *(*(&v25 + 1) + 8 * j);
          date = [v7 date];
          v23 = [v21 containsDate:date];

          if (v23)
          {
            allComponents = [v7 allComponents];
            [v21 setHighlightedDateComponents:allComponents];
          }

          else
          {
            [v21 setHighlightedDateComponents:0];
          }
        }

        v18 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v18);
    }
  }
}

- (void)_highlightEvent:(id)event dayViewDate:(double)date isAllDay:(BOOL)day
{
  dayCopy = day;
  eventCopy = event;
  v12 = +[NSTimeZone defaultTimeZone];
  eventGestureController = [(WeekViewController *)self eventGestureController];
  [eventGestureController currentDragSnappingType];

  CalSnapDateTo15MinuteOr5MinuteInterval();
  v10 = v9;

  v11 = [EKCalendarDate calendarDateWithAbsoluteTime:v12 timeZone:v10];
  [(WeekViewController *)self highlightDayViewCalendarDate:v11 isAllDay:dayCopy];
}

- (void)_removeDateHighlight
{
  v3 = [EKCalendarDate calendarDateWithAbsoluteTime:0 timeZone:0.0];
  [(WeekViewController *)self highlightDayViewCalendarDate:v3 isAllDay:0];
}

- (void)dimOccurrence:(id)occurrence occurrenceDate:(id)date
{
  occurrenceCopy = occurrence;
  v9 = [(WeekViewController *)self _weekGroupForEvent:occurrenceCopy occurrenceDate:date];
  weekView = [v9 weekView];
  content = [weekView content];
  [content setDimmedOccurrence:occurrenceCopy];
}

- (void)undimOccurrence:(id)occurrence occurrenceDate:(id)date
{
  v6 = [(WeekViewController *)self _weekGroupForEvent:occurrence occurrenceDate:date];
  weekView = [v6 weekView];
  content = [weekView content];
  [content setDimmedOccurrence:0];
}

- (double)trackingAreaMinimumYPosition
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_visibleWeeks;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        weekView = [*(*(&v13 + 1) + 8 * i) weekView];
        scrollView = [weekView scrollView];
        [scrollView adjustedContentInset];
        v11 = v10;

        if (v11 >= v6)
        {
          v6 = v11;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)eventGestureController:(id)controller convertXForMargin:(double)margin
{
  weekScroller = self->_weekScroller;
  superview = [(UIScrollView *)weekScroller superview];
  [(UIScrollView *)weekScroller convertPoint:superview toView:margin, 0.0];
  v8 = v7;

  return v8;
}

- (CGRect)marginFrameForEventGestureController:(id)controller
{
  superview = [(UIScrollView *)self->_weekScroller superview];
  [superview frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (double)timedRegionOriginForEventGestureController:(id)controller
{
  v4 = [(WeekViewController *)self touchTrackingViewForEventGestureController:controller];
  _earliestWeekGroup = [(WeekViewController *)self _earliestWeekGroup];
  weekView = [_earliestWeekGroup weekView];
  allDayView = [weekView allDayView];

  [allDayView bounds];
  [v4 convertRect:allDayView fromView:?];
  v8 = CGRectGetMaxY(v10) + 1.0;

  return v8;
}

- (void)eventGestureController:(id)controller requestsPresentationOfViewController:(id)viewController
{
  viewControllerCopy = viewController;
  v7 = [[UnadaptableNavigationController alloc] initWithRootViewController:viewControllerCopy];

  [(UnadaptableNavigationController *)v7 setModalPresentationStyle:2];
  currentPresentationController = [(WeekViewController *)self currentPresentationController];
  [currentPresentationController presentViewController:v7 animated:1 completion:0];
}

- (UIEdgeInsets)pageChangeMarginsForEventGestureController:(id)controller
{
  v4 = kLongPressPageChangeDelayMargin;
  timeView = [(WeekViewController *)self timeView];

  v6 = v4;
  if (timeView)
  {
    timeView2 = [(WeekViewController *)self timeView];
    [timeView2 frame];
    v6 = v4 + v8;
  }

  v9 = v4;
  v10 = v6;
  v11 = v4;
  v12 = v4;
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (BOOL)usesSmallTextForIsCompact:(BOOL)compact
{
  compactCopy = compact;
  weekViewClass = [(WeekViewController *)self weekViewClass];

  return [(objc_class *)weekViewClass usesSmallTextForIsCompact:compactCopy];
}

- (id)createOccurrenceViewForEventGestureController:(id)controller
{
  v4 = [[EKDayOccurrenceView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v4 setDelegate:self];
  [v4 setUsesSmallText:{-[WeekViewController usesSmallTextForIsCompact:](self, "usesSmallTextForIsCompact:", 1)}];
  return v4;
}

- (id)createEventForEventGestureController:(id)controller
{
  CalAnalyticsSendEvent();

  return [(WeekViewController *)self _newEvent];
}

- (double)eventGestureController:(id)controller yPositionPerhapsMatchingAllDayOccurrence:(id)occurrence atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  occurrenceCopy = occurrence;
  v10 = [(WeekViewController *)self touchTrackingViewForEventGestureController:controller];
  _earliestWeekGroup = [(WeekViewController *)self _earliestWeekGroup];
  weekView = [_earliestWeekGroup weekView];

  [weekView convertPoint:v10 fromView:{x, y}];
  v14 = v13;
  v16 = v15;
  _latestWeekGroup = [(WeekViewController *)self _latestWeekGroup];
  weekView2 = [_latestWeekGroup weekView];

  [weekView2 convertPoint:v10 fromView:{x, y}];
  v20 = v19;
  v22 = v21;
  if (CalTimeDirectionIsLeftToRight())
  {
    v23 = v20;
  }

  else
  {
    v23 = v14;
  }

  v24 = v23 < 0.0;
  if (v23 >= 0.0)
  {
    v25 = v20;
  }

  else
  {
    v25 = v14;
  }

  if (v24)
  {
    v26 = v16;
  }

  else
  {
    v26 = v22;
  }

  if (v24)
  {
    v27 = weekView;
  }

  else
  {
    v27 = weekView2;
  }

  [v27 yPositionPerhapsMatchingAllDayOccurrence:occurrenceCopy atPoint:{v25, v26}];
  v29 = v28;

  [v10 convertPoint:v27 fromView:{0.0, v29}];
  v31 = v30;

  return v31;
}

- (id)eventGestureController:(id)controller occurrenceViewForOccurrence:(id)occurrence occurrenceDate:(id)date
{
  controllerCopy = controller;
  occurrenceCopy = occurrence;
  dateCopy = date;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10008A380;
  v24 = sub_10008A390;
  v25 = 0;
  visibleWeeks = self->_visibleWeeks;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008B964;
  v16[3] = &unk_10020FFB8;
  v19 = &v20;
  v12 = occurrenceCopy;
  v17 = v12;
  v13 = dateCopy;
  v18 = v13;
  [(NSMutableArray *)visibleWeeks enumerateObjectsUsingBlock:v16];
  v14 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v14;
}

- (BOOL)eventGestureController:(id)controller isAllDayAtPoint:(CGPoint)point requireInsistence:(BOOL)insistence
{
  v7 = 0;
  v5 = [(WeekViewController *)self dateAtPoint:&v7 isAllDay:insistence requireAllDayRegionInsistence:point.x, point.y];
  return v7;
}

- (double)eventGestureController:(id)controller dateAtPoint:(CGPoint)point
{
  v4 = [(WeekViewController *)self dateAtPoint:0 isAllDay:point.x, point.y];
  [v4 absoluteTime];
  v6 = v5;

  return v6;
}

- (CGPoint)eventGestureController:(id)controller pointAtDate:(double)date isAllDay:(BOOL)day
{
  [(WeekViewController *)self pointAtDate:day isAllDay:date];
  result.y = v6;
  result.x = v5;
  return result;
}

- (double)eventGestureController:(id)controller widthForOccurrenceViewOfDays:(unint64_t)days
{
  _earliestWeekGroup = [(WeekViewController *)self _earliestWeekGroup];
  weekView = [_earliestWeekGroup weekView];
  content = [weekView content];
  [content fixedDayWidth];
  v9 = v8 * days;

  return v9 + -4.0;
}

- (double)eventGestureController:(id)controller heightForOccurrenceViewOfDuration:(double)duration
{
  view = [(WeekViewController *)self view];
  [EKDayTimeView hourHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:[(WeekViewController *)self viewInterfaceOrientation]];

  +[EKDayOccurrenceView bottomShadowMargin];
  CalRoundToScreenScale();
  v7 = v6;
  view2 = [(WeekViewController *)self view];
  [EKDayOccurrenceView minimumHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:[(WeekViewController *)self viewInterfaceOrientation]];
  v10 = v9;

  if (v7 >= v10)
  {
    return v7;
  }

  else
  {
    return v10;
  }
}

- (double)eventGestureController:(id)controller heightForAllDayOccurrenceView:(id)view
{
  viewCopy = view;
  view = [(WeekViewController *)self view];
  [EKDayOccurrenceView minimumHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:[(WeekViewController *)self viewInterfaceOrientation] isAllDay:1 usesSmallText:[(WeekViewController *)self usesSmallTextForIsCompact:1]];
  v8 = v7;

  currentImageState = [viewCopy currentImageState];
  requiresLanguageAwarePadding = [currentImageState requiresLanguageAwarePadding];

  if (requiresLanguageAwarePadding)
  {
    currentImageState2 = [viewCopy currentImageState];
    [currentImageState2 totalLanguageAwareHeightPadding];
    v8 = v8 + v12;
  }

  return v8;
}

- (BOOL)eventGestureControllerShouldAllowLongPress:(id)press
{
  model = [(WeekViewController *)self model];
  defaultCalendarForNewEvents = [model defaultCalendarForNewEvents];

  if (defaultCalendarForNewEvents)
  {
    return [(EKEventCreationGestureController *)self->_eventCreationController currentlyCreatingEvent]^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)eventGestureController:(id)controller didSetUpAtDate:(double)date isAllDay:(BOOL)day
{
  dayCopy = day;
  controllerCopy = controller;
  event = [controllerCopy event];
  [(WeekViewController *)self _highlightEvent:event dayViewDate:dayCopy isAllDay:date];

  draggingView = [controllerCopy draggingView];

  superview = [(UIScrollView *)self->_weekScroller superview];
  CalSwitchViewToSuperview();

  previousGestureDate = self->_previousGestureDate;
  self->_previousGestureDate = 0;
}

- (void)eventGestureController:(id)controller didMoveToDate:(double)date isAllDay:(BOOL)day
{
  dayCopy = day;
  controllerCopy = controller;
  v8 = +[NSTimeZone defaultTimeZone];
  v9 = [EKCalendarDate calendarDateWithAbsoluteTime:v8 timeZone:date];
  allComponents = [v9 allComponents];
  previousGestureDate = self->_previousGestureDate;
  if (!previousGestureDate || (v12 = [(NSDateComponents *)previousGestureDate era], v12 != [(NSDateComponents *)allComponents era]) || (v13 = [(NSDateComponents *)self->_previousGestureDate month], v13 != [(NSDateComponents *)allComponents month]) || (v14 = [(NSDateComponents *)self->_previousGestureDate day], v14 != [(NSDateComponents *)allComponents day]))
  {
    [controllerCopy didCrossDragBoundary:2];
  }

  event = [controllerCopy event];
  [(WeekViewController *)self _highlightEvent:event dayViewDate:dayCopy isAllDay:date];

  v16 = self->_previousGestureDate;
  self->_previousGestureDate = allComponents;
}

- (BOOL)eventGestureController:(id)controller didCommitOccurrence:(id)occurrence toDate:(double)date isAllDay:(BOOL)day span:(int64_t)span
{
  occurrenceCopy = occurrence;
  [(WeekViewController *)self updatePreferredReloadRange];
  if (![occurrenceCopy isNew])
  {
    CalAnalyticsSendEvent();
    v11 = +[UIApplication sharedApplication];
    if ([v11 optionKeyIsDown] && (v32 = occurrenceCopy, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v32, 1), v14 = objc_claimAutoreleasedReturnValue(), v15 = +[CUIKPasteboardUtilities allEventsValidForAction:fromEvents:](CUIKPasteboardUtilities, "allEventsValidForAction:fromEvents:", 2, v14), v14, v15))
    {
      v16 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "duplicating event(s) in week view because option key is down", buf, 2u);
      }

      model = [(WeekViewController *)self model];
      pasteboardManager = [model pasteboardManager];
      startDate = [occurrenceCopy startDate];
      [pasteboardManager setDateForPaste:startDate];

      model2 = [(WeekViewController *)self model];
      pasteboardManager2 = [model2 pasteboardManager];
      [pasteboardManager2 setCalendarForPaste:0];

      pasteboardManager3 = [(WeekViewController *)self pasteboardManager];
      v23 = [NSSet setWithObject:occurrenceCopy];
      [pasteboardManager3 duplicateEvents:v23 withDateMode:1 delegate:self];
    }

    else
    {
      eKUI_editor = [(WeekViewController *)self EKUI_editor];
      v29 = 0;
      v25 = [eKUI_editor saveEvent:occurrenceCopy span:span error:&v29];
      pasteboardManager3 = v29;

      if ((v25 & 1) == 0)
      {
        v26 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v31 = pasteboardManager3;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Error moving event: %@", buf, 0xCu);
        }
      }
    }

    goto LABEL_15;
  }

  presentedViewController = [(WeekViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    v11 = +[EKEventEditor defaultTitleForCalendarItem];
    title = [occurrenceCopy title];
    v13 = [v11 isEqualToString:title];

    if (v13)
    {
      [occurrenceCopy setTitle:&stru_1002133B8];
    }

    [(WeekViewController *)self didEditEvent:occurrenceCopy creationMethod:1];
LABEL_15:
  }

  [(WeekViewController *)self scrollToDisplayedDateAnimated:1];
  [(WeekViewController *)self _removeDateHighlight];
  previousGestureDate = self->_previousGestureDate;
  self->_previousGestureDate = 0;

  return 1;
}

- (void)eventGestureControllerDidEndDragSession:(id)session
{
  previousGestureDate = self->_previousGestureDate;
  self->_previousGestureDate = 0;

  [(WeekViewController *)self _removeDateHighlight];
}

- (void)eventGestureController:(id)controller didCancelEditingOccurrence:(id)occurrence fadedOut:(BOOL)out
{
  controllerCopy = controller;
  occurrenceCopy = occurrence;
  [(WeekViewController *)self _removeDateHighlight];
  previousGestureDate = self->_previousGestureDate;
  self->_previousGestureDate = 0;

  view = [(WeekViewController *)self view];
  [view alpha];
  v12 = v11;

  if (v12 > 0.0)
  {
    if (out)
    {
      if (([occurrenceCopy isNew] & 1) == 0)
      {
        occurrenceDate = [controllerCopy occurrenceDate];
        [(WeekViewController *)self undimOccurrence:occurrenceCopy occurrenceDate:occurrenceDate];

        [controllerCopy endForcedStart:0];
      }
    }

    else
    {
      occurrenceDate2 = [controllerCopy occurrenceDate];
      [controllerCopy forceStartWithOccurrence:occurrenceCopy occurrenceDate:occurrenceDate2 shouldUpdateViewSource:0 shouldUpdateOrigin:1 shouldPresentEditMenu:1];

      event = [controllerCopy event];
      occurrenceDate3 = [controllerCopy occurrenceDate];
      [(WeekViewController *)self dimOccurrence:event occurrenceDate:occurrenceDate3];
    }
  }
}

- (void)eventGestureController:(id)controller didSingleTapOccurrence:(id)occurrence shouldExtendSelection:(BOOL)selection
{
  occurrenceCopy = occurrence;
  controllerCopy = controller;
  [(WeekViewController *)self _removeDateHighlight];
  if (selection)
  {
    event = [controllerCopy event];
    occurrenceDate = [controllerCopy occurrenceDate];
    [(WeekViewController *)self undimOccurrence:event occurrenceDate:occurrenceDate];

    [controllerCopy endForcedStart:0];
    controllerCopy = [(WeekViewController *)self occurrenceViewForEvent:occurrenceCopy occurrenceDate:0 forceMatchingContentSection:0];
    if ([(NSMutableArray *)self->_selectedOccurrenceViews containsObject:controllerCopy])
    {
      [(WeekViewController *)self _deselectOccurrenceView:controllerCopy];
    }

    else
    {
      [(WeekViewController *)self _selectOccurrenceView:controllerCopy];
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      event2 = [(EKEventGestureController *)self->_eventGestureController event];
      [v13 performSelector:"weekViewController:didSelectEvent:" withObject:self withObject:event2];
    }

    event3 = [controllerCopy event];
    occurrenceDate2 = [controllerCopy occurrenceDate];
    [(WeekViewController *)self undimOccurrence:event3 occurrenceDate:occurrenceDate2];

    [controllerCopy endForcedStart:0];
  }
}

- (BOOL)didScrollWhenEventGestureController:(id)controller scrollTimerFiredToMoveLeft:(BOOL)left right:(BOOL)right vertically:(BOOL)vertically towardPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  verticallyCopy = vertically;
  rightCopy = right;
  controllerCopy = controller;
  if (left || rightCopy)
  {
    [(UIScrollView *)self->_weekScroller contentOffset];
    v27 = v26;
    v29 = v28;
    [(WeekViewController *)self dayWidth];
    if (!rightCopy)
    {
      v30 = -v30;
    }

    weekScroller = self->_weekScroller;
    v25 = 1;
    [(UIScrollView *)weekScroller setContentOffset:1 animated:v27 + v30, v29];
  }

  else if (verticallyCopy)
  {
    v14 = [(WeekViewController *)self _weekGroupForPoint:x, y];
    [(UIScrollView *)self->_weekScroller convertPoint:v14 toView:x, y];
    v16 = v15;
    v18 = v17;
    weekView = [v14 weekView];
    [v14 convertPoint:weekView toView:{v16, v18}];
    v21 = v20;
    v23 = v22;

    weekView2 = [v14 weekView];
    v25 = [weekView2 scrollTowardPoint:{v21, v23}];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)emptySpaceClickedOnDate:(id)date
{
  dateCopy = date;
  if (([(EKEventGestureController *)self->_eventGestureController dragGestureInProgress]& 1) == 0)
  {
    [(WeekViewController *)self _removeDateHighlight];
    [(WeekViewController *)self tappedOnDate:dateCopy];
    [(WeekViewController *)self cleanupSelectionState];
  }
}

- (void)setReceiveTapsInHeader:(BOOL)header
{
  if (self->_receiveTapsInHeader != header)
  {
    headerCopy = header;
    self->_receiveTapsInHeader = header;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = self->_visibleWeeks;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          weekView = [*(*(&v11 + 1) + 8 * v8) weekView];
          allDayView = [weekView allDayView];
          [allDayView setReceiveTapsInHeader:headerCopy];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
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

- (BOOL)creationGestureController:(id)controller canActivateAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (([(EKEventGestureController *)self->_eventGestureController dragGestureInProgress]& 1) != 0)
  {
    return 0;
  }

  draggingView = [(EKEventGestureController *)self->_eventGestureController draggingView];

  if (draggingView)
  {
    return 0;
  }

  shownEventViewController = [(MainViewController *)self shownEventViewController];
  if (shownEventViewController)
  {
    v8 = 0;
LABEL_7:

    return v8;
  }

  shownEventEditViewController = [(MainViewController *)self shownEventEditViewController];

  if (!shownEventEditViewController)
  {
    _parentViewForCreationGesturePreview = [(WeekViewController *)self _parentViewForCreationGesturePreview];
    [_parentViewForCreationGesturePreview convertPoint:self->_weekScroller toView:{x, y}];
    v14 = v13;
    v16 = v15;

    shownEventViewController = [(WeekViewController *)self occurrenceViewAtPoint:0 ignoreSelectedCopyView:v14, v16];
    v8 = shownEventViewController == 0;
    goto LABEL_7;
  }

  return 0;
}

- (id)creationGestureController:(id)controller requestedPreviewForEvent:(id)event
{
  eventCopy = event;
  v6 = [[EKDayOccurrenceView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v6 setOccurrence:eventCopy];

  [v6 setUsesSmallText:{-[WeekViewController usesSmallTextForIsCompact:](self, "usesSmallTextForIsCompact:", 1)}];
  [v6 setSelected:1];
  return v6;
}

- (double)creationGestureController:(id)controller requestedXCoordinateForEventPreviewAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _parentViewForCreationGesturePreview = [(WeekViewController *)self _parentViewForCreationGesturePreview];
  [(UIScrollView *)self->_weekScroller convertPoint:_parentViewForCreationGesturePreview fromView:x, y];
  v8 = [(WeekViewController *)self dateAtPoint:0 isAllDay:0 requireAllDayRegionInsistence:?];
  [(WeekViewController *)self _xOffsetForDate:v8];
  [_parentViewForCreationGesturePreview convertPoint:self->_weekScroller fromView:?];
  v10 = v9;

  return v10;
}

- (CGPoint)creationGestureController:(id)controller requestsPointForDate:(id)date
{
  [date timeIntervalSinceReferenceDate];
  [(WeekViewController *)self pointAtDate:0 isAllDay:?];
  v6 = v5;
  v8 = v7;
  _parentViewForCreationGesturePreview = [(WeekViewController *)self _parentViewForCreationGesturePreview];
  [_parentViewForCreationGesturePreview convertPoint:self->_weekScroller fromView:{v6, v8}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)creationGestureController:(id)controller didResizeToDate:(id)date
{
  [date timeIntervalSinceReferenceDate];

  [(WeekViewController *)self _highlightEvent:0 dayViewDate:0 isAllDay:?];
}

- (id)creationGestureController:(id)controller dateForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  weekScroller = self->_weekScroller;
  _parentViewForCreationGesturePreview = [(WeekViewController *)self _parentViewForCreationGesturePreview];
  [(UIScrollView *)weekScroller convertPoint:_parentViewForCreationGesturePreview fromView:x, y];
  v10 = v9;
  v12 = v11;

  v13 = [(WeekViewController *)self dateAtPoint:0 isAllDay:v10, v12];
  date = [v13 date];

  return date;
}

- (id)_newEvent
{
  model = [(WeekViewController *)self model];
  eventStore = [model eventStore];
  v5 = [EKEvent eventWithEventStore:eventStore];

  v6 = +[EKEventEditor defaultTitleForCalendarItem];
  [v5 setTitle:v6];

  model2 = [(WeekViewController *)self model];
  defaultCalendarForNewEvents = [model2 defaultCalendarForNewEvents];
  [v5 setCalendar:defaultCalendarForNewEvents];

  return v5;
}

- (void)creationGestureController:(id)controller didCreateNewEvent:(id)event
{
  eventCopy = event;
  [(WeekViewController *)self _removeDateHighlight];
  [(WeekViewController *)self createdNewEventUsingCreationGesture:eventCopy];
}

- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  controllerCopy = controller;
  [controllerCopy setDelegate:0];
  presentingViewController = [controllerCopy presentingViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    presentingViewController2 = [controllerCopy presentingViewController];
    v8 = presentingViewController2;
    if (self->_editorDismissedFromDelete)
    {
      event = [controllerCopy event];
      [v8 reminderDetailDismissedWithDeletedEvent:event];
    }

    else
    {
      [presentingViewController2 reminderDetailDismissedWithDeletedEvent:0];
    }

LABEL_12:

    goto LABEL_13;
  }

  navigationController = [(WeekViewController *)self navigationController];
  presentedViewController = [navigationController presentedViewController];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  navigationController2 = [(WeekViewController *)self navigationController];
  v8 = navigationController2;
  if (v12)
  {
    presentedViewController2 = [navigationController2 presentedViewController];
    v15 = presentedViewController2;
    if (self->_editorDismissedFromDelete)
    {
      event2 = [controllerCopy event];
      [v15 reminderDetailDismissedWithDeletedEvent:event2];
    }

    else
    {
      [presentedViewController2 reminderDetailDismissedWithDeletedEvent:0];
    }

    goto LABEL_12;
  }

  if (v8)
  {
    navigationController3 = [(WeekViewController *)self navigationController];
    [navigationController3 popViewControllersAfterAndIncluding:controllerCopy animated:!self->_editorDismissedFromDelete];

    model = [(WeekViewController *)self model];
    [model setSelectedOccurrence:0];

    goto LABEL_14;
  }

LABEL_13:
  [controllerCopy dismissViewControllerAnimated:1 completion:0];
LABEL_14:
}

- (CGRect)currentTimeRectInView:(id)view
{
  viewCopy = view;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  timeView = [(WeekTimeView *)self->_timeView timeView];
  timeMarker = [timeView timeMarker];

  superview = [timeMarker superview];
  if (!superview)
  {
    goto LABEL_5;
  }

  [timeMarker alpha];
  if (v12 != 1.0)
  {
    goto LABEL_5;
  }

  showsThumb = [timeMarker showsThumb];

  if (showsThumb)
  {
    [timeMarker currentTimeFrame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    superview = [timeMarker superview];
    [viewCopy convertRect:superview fromView:{v15, v17, v19, v21}];
    x = v22;
    y = v23;
    width = v24;
    height = v25;
LABEL_5:
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

- (void)_updateMultiDayAllDaySectionScrollerContentSize
{
  if ([(WeekViewController *)self usesMultiDayWeekView])
  {
    earliestDateComponents = [(WeekViewController *)self earliestDateComponents];
    calendar = [(CUIKCalendarModel *)self->super._model calendar];
    timeZone = [calendar timeZone];
    v42 = [EKCalendarDate calendarDateWithDateComponents:earliestDateComponents timeZone:timeZone];

    _latestDateComponents = [(WeekViewController *)self _latestDateComponents];
    calendar2 = [(CUIKCalendarModel *)self->super._model calendar];
    timeZone2 = [calendar2 timeZone];
    v9 = [EKCalendarDate calendarDateWithDateComponents:_latestDateComponents timeZone:timeZone2];
    calendarDateForEndOfDay = [v9 calendarDateForEndOfDay];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = self->_visibleWeeks;
    v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v10)
    {
      v11 = v10;
      v41 = *v48;
      v12 = 0.0;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v48 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v47 + 1) + 8 * i);
          weekStartDate = [v14 weekStartDate];
          calendar3 = [(CUIKCalendarModel *)self->super._model calendar];
          timeZone3 = [calendar3 timeZone];
          v18 = [EKCalendarDate calendarDateWithDateComponents:weekStartDate timeZone:timeZone3];

          lastSecondOfWeek = [v14 lastSecondOfWeek];
          calendar4 = [(CUIKCalendarModel *)self->super._model calendar];
          timeZone4 = [calendar4 timeZone];
          v22 = [EKCalendarDate calendarDateWithDate:lastSecondOfWeek timeZone:timeZone4];

          if ([v22 compare:v42] != -1 && objc_msgSend(v18, "compare:", calendarDateForEndOfDay) != 1)
          {
            weekView = [v14 weekView];
            allDayView = [weekView allDayView];
            [allDayView scrollerContentHeightWithUserVisibleEarliestDate:v42 latestDate:calendarDateForEndOfDay withoutScroller:0];
            v26 = v25;

            if (v26 > v12)
            {
              v12 = v26;
            }
          }
        }

        v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0.0;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v27 = self->_visibleWeeks;
    v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v44;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v44 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v43 + 1) + 8 * j);
          weekView2 = [v32 weekView];
          allDayView2 = [weekView2 allDayView];
          [allDayView2 scrollerContentSize];
          v36 = v35;

          weekView3 = [v32 weekView];
          allDayView3 = [weekView3 allDayView];
          [allDayView3 setScrollerContentSize:{v36, v12}];
        }

        v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v29);
    }
  }
}

- (void)_updateHeaderHeightsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  [(UIScrollView *)self->_weekScroller frame];
  v65 = v5;
  v66 = v4;
  v63 = v7;
  v64 = v6;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = selfCopy->_visibleWeeks;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v75 objects:v79 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v62 = *v76;
    v11 = 0.0;
    v60 = selfCopy;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        rect.origin.y = v11;
        if (*v76 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v75 + 1) + 8 * i);
        view = [(WeekViewController *)selfCopy view];
        weekView = [v13 weekView];
        [weekView frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        weekView2 = [v13 weekView];
        superview = [weekView2 superview];
        [view convertRect:superview fromView:{v17, v19, v21, v23}];
        rect.origin.x = v26;
        v28 = v27;
        v30 = v29;
        v32 = v31;

        v80.origin.y = v65;
        v80.origin.x = v66;
        v80.size.height = v63;
        v80.size.width = v64;
        v81 = CGRectInset(v80, -0.0001, -0.0001);
        x = v81.origin.x;
        y = v81.origin.y;
        width = v81.size.width;
        height = v81.size.height;
        v81.origin.x = rect.origin.x;
        v81.origin.y = v28;
        v81.size.width = v30;
        v81.size.height = v32;
        v83 = CGRectInset(v81, -0.0001, -0.0001);
        v82.origin.x = x;
        v82.origin.y = y;
        v82.size.width = width;
        v82.size.height = height;
        if (CGRectIntersectsRect(v82, v83))
        {
          weekView3 = [v13 weekView];
          hasAllDayEvents = [weekView3 hasAllDayEvents];

          weekView4 = [v13 weekView];
          allDayView = [weekView4 allDayView];
          calendarDateForEndOfDay = allDayView;
          v11 = rect.origin.y;
          if (hasAllDayEvents)
          {
            [allDayView layoutIfNeeded];

            if ([(WeekViewController *)selfCopy usesMultiDayWeekView])
            {
              earliestDateComponents = [(WeekViewController *)selfCopy earliestDateComponents];
              calendar = [(CUIKCalendarModel *)selfCopy->super._model calendar];
              timeZone = [calendar timeZone];
              weekView4 = [EKCalendarDate calendarDateWithDateComponents:earliestDateComponents timeZone:timeZone];

              _latestDateComponents = [(WeekViewController *)selfCopy _latestDateComponents];
              calendar2 = [(CUIKCalendarModel *)selfCopy->super._model calendar];
              timeZone2 = [calendar2 timeZone];
              v48 = [EKCalendarDate calendarDateWithDateComponents:_latestDateComponents timeZone:timeZone2];
              calendarDateForEndOfDay = [v48 calendarDateForEndOfDay];

              selfCopy = v60;
              weekView5 = [v13 weekView];
              allDayView2 = [weekView5 allDayView];
              [allDayView2 multiDayAllDayHeightWithUserVisibleEarliestDate:weekView4 latestDate:calendarDateForEndOfDay];
              v52 = v51;
            }

            else
            {
              weekView4 = [v13 weekView];
              calendarDateForEndOfDay = [weekView4 allDayView];
              [calendarDateForEndOfDay naturalHeight];
              v52 = v54;
            }

            v10 = 1;
          }

          else
          {
            [allDayView heightWithNoAllDayOccurrences];
            v52 = v53;
          }

          if (v52 > rect.origin.y)
          {
            v11 = v52;
          }
        }

        else
        {
          v11 = rect.origin.y;
        }
      }

      v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v75 objects:v79 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0.0;
  }

  v55 = selfCopy->_cachedHeaderHeight - v11;
  if (v55 < 0.0)
  {
    v55 = -v55;
  }

  if (v55 > 0.0001)
  {
    selfCopy->_cachedHeaderHeight = v11;
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_10008DA80;
    v72[3] = &unk_10020FFE0;
    v72[4] = selfCopy;
    v73 = animatedCopy;
    *&v72[5] = v11;
    v56 = v10 & 1;
    v74 = v56;
    v57 = objc_retainBlock(v72);
    *&rect.size.width = _NSConcreteStackBlock;
    *&rect.size.height = 3221225472;
    v68 = sub_10008DC4C;
    v69 = &unk_100210008;
    v70 = selfCopy;
    v71 = v56;
    v58 = objc_retainBlock(&rect.size);
    if (animatedCopy)
    {
      [UIView animateWithDuration:7 delay:v57 options:v58 animations:0.3 completion:0.0];
    }

    else
    {
      (v57[2])(v57);
      (*&v58[1].width)(v58, 1);
    }
  }
}

- (void)_setHeaderHeightForWeekGroupView:(id)view forceLayout:(BOOL)layout
{
  layoutCopy = layout;
  weekView = [view weekView];
  allDayView = [weekView allDayView];
  [allDayView setFixedDayHeight:self->_cachedHeaderHeight];
  [allDayView frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  cachedHeaderHeight = self->_cachedHeaderHeight;
  [allDayView setFrame:?];
  allDayView2 = [weekView allDayView];
  [allDayView2 setFrame:{v8, v10, v12, cachedHeaderHeight}];

  [weekView setNeedsLayout];
  if (layoutCopy)
  {
    [weekView layoutIfNeeded];
  }

  content = [weekView content];
  layer = [content layer];
  recursiveAnimationRemove();
}

- (id)_earliestVisibleWeekGroupView
{
  [(UIScrollView *)self->_weekScroller contentOffset];
  v4 = v3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10008A380;
  v15 = sub_10008A390;
  v16 = 0;
  v5 = CalTimeDirectionIsLeftToRight() == 0;
  visibleWeeks = self->_visibleWeeks;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008DF00;
  v10[3] = &unk_100210030;
  if (v5)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v10[5] = v4;
  v10[4] = &v11;
  [(NSMutableArray *)visibleWeeks enumerateObjectsWithOptions:v7 usingBlock:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)_latestVisibleWeekGroupView
{
  [(UIScrollView *)self->_weekScroller contentOffset];
  v4 = v3;
  weekWidth = self->_weekWidth;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10008A380;
  v16 = sub_10008A390;
  v17 = 0;
  v6 = CalTimeDirectionIsLeftToRight() == 0;
  visibleWeeks = self->_visibleWeeks;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008E100;
  v11[3] = &unk_100210030;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  *&v11[5] = v4 + weekWidth;
  v11[4] = &v12;
  [(NSMutableArray *)visibleWeeks enumerateObjectsWithOptions:v8 usingBlock:v11];
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)earliestDateComponents
{
  _earliestVisibleWeekGroupView = [(WeekViewController *)self _earliestVisibleWeekGroupView];
  if (CalTimeDirectionIsLeftToRight())
  {
    [(UIScrollView *)self->_weekScroller contentOffset];
    v5 = 1.0;
  }

  else
  {
    [(WeekTimeView *)self->_timeView frame];
    Width = CGRectGetWidth(v14);
    [(UIScrollView *)self->_weekScroller contentOffset];
    v8 = v7;
    [(UIScrollView *)self->_weekScroller bounds];
    v4 = v8 + CGRectGetWidth(v15) - Width;
    v5 = -1.0;
  }

  v9 = v4 + v5;
  [_earliestVisibleWeekGroupView frame];
  v11 = [_earliestVisibleWeekGroupView dateForXOffset:v9 - v10];

  return v11;
}

- (id)_latestDateComponents
{
  [(UIScrollView *)self->_weekScroller contentOffset];
  v4 = v3;
  v5 = 1.0;
  if (CalTimeDirectionIsLeftToRight())
  {
    [(UIScrollView *)self->_weekScroller bounds];
    v5 = CGRectGetWidth(v11) + -1.0;
  }

  _latestVisibleWeekGroupView = [(WeekViewController *)self _latestVisibleWeekGroupView];
  [_latestVisibleWeekGroupView frame];
  v8 = [_latestVisibleWeekGroupView dateForXOffset:v4 + v5 - v7];

  return v8;
}

- (id)centerDateComponents
{
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  v4 = [(WeekViewController *)self daysInWeek]== 2;
  v5 = &unk_1001F83A0;
  if (IsLeftToRight)
  {
    v5 = &unk_1001F83B0;
  }

  v6 = v5[v4];
  [(UIScrollView *)self->_weekScroller contentOffset];
  v8 = v7;
  [(UIScrollView *)self->_weekScroller bounds];
  v10 = v8 + v9 * v6;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = self->_visibleWeeks;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = *v21;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        [v15 frame];
        if (v16 <= v10)
        {
          [v15 frame];
          if (CGRectGetMaxX(v26) > v10)
          {
            v12 = v15;
            goto LABEL_14;
          }
        }
      }

      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  [v12 frame];
  v18 = [v12 dateForXOffset:v10 - v17];

  return v18;
}

- (void)_startMarkerTimer
{
  if (!self->_timeMarkerTimer)
  {
    v12 = CUIKCalendar();
    v3 = CUIKCalendar();
    v4 = +[NSDate date];
    v5 = [v3 components:126 fromDate:v4];

    v6 = [v12 dateFromComponents:v5];
    v7 = objc_alloc_init(NSDateComponents);
    [v7 setMinute:1];
    v8 = [v12 dateByAddingComponents:v7 toDate:v6 options:0];
    v9 = [[NSTimer alloc] initWithFireDate:v8 interval:self target:"_updateTimeMarker" selector:0 userInfo:1 repeats:60.0];
    timeMarkerTimer = self->_timeMarkerTimer;
    self->_timeMarkerTimer = v9;

    v11 = +[NSRunLoop currentRunLoop];
    [v11 addTimer:self->_timeMarkerTimer forMode:NSDefaultRunLoopMode];
  }
}

- (void)_invalidateMarkerTimer
{
  [(NSTimer *)self->_timeMarkerTimer invalidate];
  timeMarkerTimer = self->_timeMarkerTimer;
  self->_timeMarkerTimer = 0;
}

- (BOOL)dateIsVisible:(id)visible
{
  visibleCopy = visible;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_visibleWeeks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        weekView = [*(*(&v20 + 1) + 8 * i) weekView];
        if ([weekView containsDate:visibleCopy])
        {
          [weekView pointAtDate:visibleCopy isAllDay:0];
          [(UIScrollView *)self->_weekScroller convertPoint:weekView fromView:?];
          v12 = v11;
          [(UIScrollView *)self->_weekScroller contentOffset];
          v14 = v12 - v13;
          [(WeekViewController *)self dayWidth];
          v16 = v14 + v15 * 0.5;
          if (v16 >= 0.0)
          {
            [(UIScrollView *)self->_weekScroller bounds];
            if (v16 < v17)
            {

              v18 = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_13:

  return v18;
}

- (id)occurrenceViewForEvent:(id)event occurrenceDate:(id)date forceMatchingContentSection:(BOOL)section
{
  sectionCopy = section;
  eventCopy = event;
  dateCopy = date;
  currentlySelectedOccurrenceViewSource = [(EKEventGestureController *)self->_eventGestureController currentlySelectedOccurrenceViewSource];
  occurrence = [currentlySelectedOccurrenceViewSource occurrence];
  v12 = [occurrence isEqual:eventCopy];

  if (v12)
  {
    v13 = currentlySelectedOccurrenceViewSource;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = self->_visibleWeeks;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v21 + 1) + 8 * i) occurrenceViewForEvent:eventCopy occurrenceDate:dateCopy forceMatchingContentSection:{sectionCopy, v21}];
          if (v19)
          {
            v13 = v19;

            goto LABEL_13;
          }
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
  }

LABEL_13:

  return v13;
}

- (void)resizeWeekGroupsIfNeededForOrientation:(int64_t)orientation
{
  if (CalSolariumEnabled())
  {
    if (CalSolariumEnabled())
    {
      lastCalculatedWeekWidth = self->_lastCalculatedWeekWidth;
    }

    else
    {
      [(WeekViewController *)self weekWidthForOrientation:orientation];
    }

    p_weekWidth = &self->_weekWidth;
    weekWidth = self->_weekWidth;
    if (weekWidth != 0.0)
    {
      v27 = weekWidth - lastCalculatedWeekWidth;
      if (v27 < 0.0)
      {
        v27 = -v27;
      }

      if (v27 >= 0.00100000005)
      {
        self->_preventScrollUpdates = 1;
        v28 = weekWidth * 54080.0;
        [(UIScrollView *)self->_weekScroller contentSize];
        [(UIScrollView *)self->_weekScroller setContentSize:v28];
        self->_preventScrollUpdates = 0;
        p_visibleRange = &self->_visibleRange;
        location = self->_visibleRange.location;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v30 = self->_visibleWeeks;
        v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v76 objects:v83 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v77;
          do
          {
            for (i = 0; i != v32; i = i + 1)
            {
              if (*v77 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v76 + 1) + 8 * i);
              [(WeekViewController *)self _frameForWeek:location, p_visibleRange];
              [v35 setFrame:?];
              [v35 setNeedsLayout];
              ++location;
            }

            v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v76 objects:v83 count:16];
          }

          while (v32);
        }

        v36 = CalSolariumEnabled();
        [(UIScrollView *)self->_weekScroller contentOffset];
        v38 = v37;
        if (v36)
        {
          v39 = self->_lastCalculatedWeekWidth;
          v40 = v39;
        }

        else
        {
          v40 = *p_weekWidth;
          [(WeekViewController *)self weekWidthForOrientation:orientation];
          *p_weekWidth = v50;
          v39 = self->_lastCalculatedWeekWidth;
        }

        p_lastCalculatedWeekWidth = &self->_lastCalculatedWeekWidth;
        if (v39 == 0.0 && (CalSolariumEnabled() & 1) != 0)
        {
          displayedDate = [(WeekViewController *)self displayedDate];
          if (displayedDate)
          {
            v52 = displayedDate;
            v53 = CalSolariumEnabled();

            if ((v53 & 1) == 0)
            {
              [(WeekViewController *)self scrollToDisplayedDateAnimated:0];
              [(WeekViewController *)self updateDisplayedDateForCurrentScrollOffset];
            }
          }
        }

        else
        {
          v54 = v38 / v40 * *p_weekWidth;
          p_visibleRange = [(WeekViewController *)self visibleRangeForOffset:v54, p_visibleRange];
          if (v56 == p_visibleRange->length)
          {
            p_visibleRange->location = p_visibleRange;
          }

          [(UIScrollView *)self->_weekScroller contentOffset];
          [(UIScrollView *)self->_weekScroller setContentOffset:v54];
        }

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v43 = self->_visibleWeeks;
        v57 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v72 objects:v82 count:16];
        if (v57)
        {
          v58 = v57;
          v59 = *v73;
          do
          {
            for (j = 0; j != v58; j = j + 1)
            {
              if (*v73 != v59)
              {
                objc_enumerationMutation(v43);
              }

              weekView = [*(*(&v72 + 1) + 8 * j) weekView];
              content = [weekView content];
              [content setNeedsLayout];
            }

            v58 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v72 objects:v82 count:16];
          }

          while (v58);
        }

LABEL_59:

        *p_lastCalculatedWeekWidth = *p_weekWidth;
      }
    }
  }

  else
  {
    p_weekWidth = &self->_weekWidth;
    v7 = self->_weekWidth;
    if (v7 >= 0.00100000005)
    {
      [(WeekViewController *)self weekWidthForOrientation:orientation];
      v9 = v7 - v8;
      if (v9 < 0.0)
      {
        v9 = -v9;
      }

      if (v9 >= 0.00100000005)
      {
        [(UIScrollView *)self->_weekScroller contentOffset];
        v11 = v10;
        v12 = *p_weekWidth;
        [(WeekViewController *)self weekWidthForOrientation:orientation];
        self->_preventScrollUpdates = 1;
        *p_weekWidth = v13;
        v14 = v13 * 54080.0;
        [(UIScrollView *)self->_weekScroller contentSize];
        [(UIScrollView *)self->_weekScroller setContentSize:v14];
        self->_preventScrollUpdates = 0;
        v15 = self->_visibleRange.location;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v16 = self->_visibleWeeks;
        v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v68 objects:v81 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v69;
          do
          {
            for (k = 0; k != v18; k = k + 1)
            {
              if (*v69 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v68 + 1) + 8 * k);
              [(WeekViewController *)self _frameForWeek:v15];
              [v21 setFrame:?];
              [v21 setNeedsLayout];
              ++v15;
            }

            v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v68 objects:v81 count:16];
          }

          while (v18);
        }

        p_lastCalculatedWeekWidth = &self->_lastCalculatedWeekWidth;
        if (self->_lastCalculatedWeekWidth == 0.0)
        {
          displayedDate2 = [(WeekViewController *)self displayedDate];

          if (displayedDate2)
          {
            [(WeekViewController *)self scrollToDisplayedDateAnimated:0];
          }
        }

        else
        {
          v23 = v11 / v12 * *p_weekWidth;
          v24 = [(WeekViewController *)self visibleRangeForOffset:v23];
          if (v25 == self->_visibleRange.length)
          {
            self->_visibleRange.location = v24;
          }

          [(UIScrollView *)self->_weekScroller contentOffset];
          [(UIScrollView *)self->_weekScroller setContentOffset:v23];
        }

        view = [(WeekViewController *)self view];
        [view setNeedsLayout];

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v43 = self->_visibleWeeks;
        v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v64 objects:v80 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v65;
          do
          {
            for (m = 0; m != v45; m = m + 1)
            {
              if (*v65 != v46)
              {
                objc_enumerationMutation(v43);
              }

              weekView2 = [*(*(&v64 + 1) + 8 * m) weekView];
              content2 = [weekView2 content];
              [content2 setNeedsLayout];
            }

            v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v64 objects:v80 count:16];
          }

          while (v45);
        }

        goto LABEL_59;
      }
    }
  }
}

- (id)_daysToShiftFromSelectedDateToBeginningOfWeekIfShowingFullWeek:(id)week
{
  weekCopy = week;
  if ([(WeekViewController *)self daysInWeek]== 7)
  {
    v5 = [weekCopy calendarDateByAddingDays:{1 - objc_msgSend(weekCopy, "dayOfWeek")}];
  }

  else
  {
    v5 = weekCopy;
  }

  v6 = v5;

  return v6;
}

- (void)viewSwitcherSwitchedToViewWithDate:(id)date
{
  dateCopy = date;
  v7 = [dateCopy calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];

  v5 = [v7 calendarDateByAddingDays:{-[WeekViewController daysFromFirstToMiddleDay](self, "daysFromFirstToMiddleDay")}];
  model = [(WeekViewController *)self model];
  [model setSelectedDate:v5];
}

- (void)_sceneEnteredForeground:(id)foreground
{
  object = [foreground object];
  model = [(WeekViewController *)self model];
  sceneIdentifier = [model sceneIdentifier];
  _sceneIdentifier = [object _sceneIdentifier];
  if ([sceneIdentifier isEqualToString:_sceneIdentifier])
  {
    savedFirstVisibleSecond = [(WeekViewController *)self savedFirstVisibleSecond];

    if (savedFirstVisibleSecond < 0)
    {
      goto LABEL_6;
    }

    [(WeekViewController *)self setFirstVisibleSecond:[(WeekViewController *)self savedFirstVisibleSecond]];
    model = [(NSMutableArray *)self->_visibleWeeks firstObject];
    [(WeekViewController *)self synchronizeWeekGroupScrollingToWeek:model];
  }

  else
  {
  }

LABEL_6:
  if (self->_needsReload)
  {
    [(WeekViewController *)self reloadData];
  }
}

- (int64_t)savedFirstVisibleSecond
{
  if (EKUIShouldSaveStateInPreferences())
  {
    return -1;
  }

  model = [(WeekViewController *)self model];
  persistedSceneState = [model persistedSceneState];
  weekViewFirstVisibleSecond = [persistedSceneState weekViewFirstVisibleSecond];

  return weekViewFirstVisibleSecond;
}

- (void)weekGroupViewFirstVisibleSecondChanged:(int64_t)changed
{
  window = [(MainViewController *)self window];
  windowScene = [window windowScene];
  activationState = [windowScene activationState];

  if (!activationState)
  {

    [(WeekViewController *)self saveFirstVisibleSecond:changed];
  }
}

- (void)saveFirstVisibleSecond:(int64_t)second
{
  if ((EKUIShouldSaveStateInPreferences() & 1) == 0)
  {
    model = [(WeekViewController *)self model];
    persistedSceneState = [model persistedSceneState];
    [persistedSceneState setWeekViewFirstVisibleSecond:second];
  }
}

- (void)_updateSelectedViewsToMatchModel
{
  [(WeekViewController *)self _clearSelectedOccurrenceViewsUpdatingModel:0];
  model = [(WeekViewController *)self model];
  selectedOccurrences = [model selectedOccurrences];
  event = [(EKEventGestureController *)self->_eventGestureController event];
  v6 = [selectedOccurrences containsObject:event];

  if ((v6 & 1) == 0)
  {
    [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  }

  model2 = [(WeekViewController *)self model];
  selectedOccurrences2 = [model2 selectedOccurrences];
  [(WeekViewController *)self _selectEvents:selectedOccurrences2 updatingModel:0];
}

- (void)cleanupSelectionState
{
  event = [(EKEventGestureController *)self->_eventGestureController event];
  occurrenceDate = [(EKEventGestureController *)self->_eventGestureController occurrenceDate];
  [(WeekViewController *)self undimOccurrence:event occurrenceDate:occurrenceDate];

  [(WeekViewController *)self _clearSelectedOccurrenceViews];
  eventGestureController = [(WeekViewController *)self eventGestureController];
  [eventGestureController endForcedStart:0];
}

- (void)_clearSelectedOccurrenceViewsUpdatingModel:(BOOL)model
{
  modelCopy = model;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableArray *)self->_selectedOccurrenceViews copy];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(WeekViewController *)self _deselectOccurrenceView:*(*(&v10 + 1) + 8 * v9) updatingModel:modelCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_selectEvents:(id)events updatingModel:(BOOL)model
{
  modelCopy = model;
  eventsCopy = events;
  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = eventsCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(WeekViewController *)self occurrenceViewForEvent:*(*(&v15 + 1) + 8 * v12) occurrenceDate:0 forceMatchingContentSection:1, v15];
        v14 = v13;
        if (v13 && ([v13 isSelectedCopyView] & 1) == 0)
        {
          if (([v7 containsObject:v14] & 1) == 0)
          {
            [(WeekViewController *)self _selectOccurrenceView:v14 updatingModel:modelCopy];
          }

          [v7 addObject:v14];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_selectOccurrenceView:(id)view updatingModel:(BOOL)model
{
  modelCopy = model;
  viewCopy = view;
  v18 = viewCopy;
  if (!self->_selectedOccurrenceViews)
  {
    v7 = +[NSMutableArray array];
    selectedOccurrenceViews = self->_selectedOccurrenceViews;
    self->_selectedOccurrenceViews = v7;

    viewCopy = v18;
  }

  if (!self->_selectedOccurrencesFrontmostClonedViews)
  {
    v9 = +[NSMutableArray array];
    selectedOccurrencesFrontmostClonedViews = self->_selectedOccurrencesFrontmostClonedViews;
    self->_selectedOccurrencesFrontmostClonedViews = v9;

    viewCopy = v18;
  }

  if (viewCopy)
  {
    selectedCopy = [v18 selectedCopy];

    viewCopy = v18;
    if (!selectedCopy)
    {
      selectedCopy2 = [v18 selectedCopy];

      if (selectedCopy2)
      {
        sub_100170290();
      }

      if ([v18 isSelectedCopyView])
      {
        sub_1001702FC();
      }

      v13 = [v18 copy];
      [v13 setSelected:1];
      [v13 requestContentIfNeeded:16 completion:0];
      [v13 setIsSelectedCopyView:1];
      [(NSMutableArray *)self->_selectedOccurrencesFrontmostClonedViews addObject:v13];
      superview = [v18 superview];
      [superview addSubview:v13];

      superview2 = [v18 superview];
      [superview2 bringSubviewToFront:v13];

      [v18 setSelectedCopy:v13];
      [v18 setSelected:1];
      [v18 setHidden:1];
      [(NSMutableArray *)self->_selectedOccurrenceViews addObject:v18];
      if (modelCopy)
      {
        model = [(WeekViewController *)self model];
        occurrences = [v18 occurrences];
        [model selectOccurrences:occurrences];
      }

      viewCopy = v18;
    }
  }
}

- (void)_deselectOccurrenceView:(id)view updatingModel:(BOOL)model
{
  modelCopy = model;
  viewCopy = view;
  selectedCopy = [viewCopy selectedCopy];
  [(NSMutableArray *)self->_selectedOccurrencesFrontmostClonedViews removeObject:selectedCopy];
  [selectedCopy removeFromSuperview];
  [(NSMutableArray *)self->_selectedOccurrenceViews removeObject:viewCopy];
  occurrence = [viewCopy occurrence];

  if (occurrence)
  {
    [viewCopy setSelectedCopy:0];
    [viewCopy setSelected:0];
    [viewCopy requestContentIfNeeded:16 completion:0];
    [viewCopy setHidden:0];
  }

  if (modelCopy)
  {
    model = [(WeekViewController *)self model];
    occurrences = [viewCopy occurrences];
    [model deselectOccurrences:occurrences];
  }
}

- (id)pasteboardManager
{
  model = [(WeekViewController *)self model];
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
    [(WeekViewController *)self selectDate:startCalendarDate animated:1];

    [(WeekViewController *)self showEvent:v8 animated:1 showMode:0 context:0];
  }
}

- (void)eventViewControllerNextButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  event = [tappedCopy event];
  nextOccurrence = [event nextOccurrence];

  if (nextOccurrence)
  {
    [(WeekViewController *)self eventViewController:tappedCopy didCompleteWithAction:0];
    context = [tappedCopy context];
    [(WeekViewController *)self showEvent:nextOccurrence animated:1 showMode:1 context:context];
  }
}

- (void)eventViewControllerPreviousButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  event = [tappedCopy event];
  previousOccurrence = [event previousOccurrence];

  if (previousOccurrence)
  {
    [(WeekViewController *)self eventViewController:tappedCopy didCompleteWithAction:0];
    context = [tappedCopy context];
    [(WeekViewController *)self showEvent:previousOccurrence animated:1 showMode:1 context:context];
  }
}

- (void)eventViewController:(id)controller requestsShowEvent:(id)event
{
  eventCopy = event;
  controllerCopy = controller;
  [(WeekViewController *)self eventViewController:controllerCopy didCompleteWithAction:0];
  context = [controllerCopy context];

  [(WeekViewController *)self showEvent:eventCopy animated:1 showMode:1 context:context];
}

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (handlerCopy)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10008FF30;
    v13 = &unk_10020EBC8;
    selfCopy = self;
    v15 = handlerCopy;
    v8 = objc_retainBlock(&v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = [(WeekViewController *)self navigationController:v10];
  [v9 dismissViewControllerAnimated:1 completion:v8];
}

- (void)pasteboardManager:(id)manager presentAlert:(id)alert
{
  alertCopy = alert;
  currentPresentationController = [(WeekViewController *)self currentPresentationController];
  [alertCopy presentFromSource:currentPresentationController];
}

- (void)pasteboardManager:(id)manager didFinishPasteWithResult:(unint64_t)result willOpenEditor:(BOOL)editor
{
  if (!result && !editor)
  {
    [(MainViewController *)self attemptDisplayReviewPrompt];
  }
}

- (void)_logUserStateDiagnostics:(id)diagnostics
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100090050;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)interaction:(id)interaction canPasteEventAtPoint:(CGPoint)point inView:(id)view
{
  v5 = [(WeekViewController *)self model:interaction];
  pasteboardManager = [v5 pasteboardManager];
  canPerformPaste = [pasteboardManager canPerformPaste];

  return canPerformPaste;
}

- (BOOL)interaction:(id)interaction canCreateEventAtPoint:(CGPoint)point inView:(id)view
{
  v5 = [(WeekViewController *)self model:interaction];
  defaultCalendarForNewEvents = [v5 defaultCalendarForNewEvents];
  v7 = defaultCalendarForNewEvents != 0;

  return v7;
}

- (BOOL)interaction:(id)interaction canCreateReminderAtPoint:(CGPoint)point inView:(id)view
{
  v5 = [(WeekViewController *)self model:interaction];
  reminderCalendar = [v5 reminderCalendar];
  v7 = reminderCalendar != 0;

  return v7;
}

- (void)createEvent:(BOOL)event atPoint:(CGPoint)point inView:(id)view
{
  eventCopy = event;
  [(UIScrollView *)self->_weekScroller convertPoint:view fromView:point.x, point.y];
  v21 = 0;
  v7 = [(WeekViewController *)self dateAtPoint:&v21 isAllDay:?];
  if (eventCopy)
  {
    _newEvent = [(WeekViewController *)self _newEvent];
  }

  else
  {
    model = [(WeekViewController *)self model];
    eventStore = [model eventStore];
    _newEvent = [EKEvent eventWithEventStore:eventStore];

    model2 = [(WeekViewController *)self model];
    reminderCalendar = [model2 reminderCalendar];
    [_newEvent setCalendar:reminderCalendar];
  }

  date = [v7 date];
  [date timeIntervalSinceReferenceDate];
  CalSnapDateTo15MinuteInterval();
  v15 = v14;

  v16 = [NSDate dateWithTimeIntervalSinceReferenceDate:v15];
  [_newEvent setStartDate:v16];
  if (eventCopy)
  {
    v17 = 3600.0;
    if (v21)
    {
      v17 = 1.0;
    }

    v18 = [v16 dateByAddingTimeInterval:v17];
    [_newEvent setEndDateUnadjustedForLegacyClients:v18];
  }

  else
  {
    [_newEvent setEndDateUnadjustedForLegacyClients:v16];
  }

  if (v21 == 1)
  {
    [_newEvent setAllDay:1];
  }

  [(EKEventGestureController *)self->_eventGestureController forceStartWithOccurrence:_newEvent occurrenceDate:v7 shouldUpdateViewSource:1 shouldUpdateOrigin:1 shouldPresentEditMenu:0];
  eventGestureController = self->_eventGestureController;
  date2 = [v7 date];
  [date2 timeIntervalSinceReferenceDate];
  [(WeekViewController *)self eventGestureController:eventGestureController didCommitOccurrence:_newEvent toDate:v21 isAllDay:0 span:?];
}

- (void)interaction:(id)interaction pasteEventAtPoint:(CGPoint)point inView:(id)view
{
  [(UIScrollView *)self->_weekScroller convertPoint:view fromView:point.x, point.y];
  v10 = 0;
  v6 = [(WeekViewController *)self dateAtPoint:&v10 isAllDay:?];
  pasteboardManager = [(CUIKCalendarModel *)self->super._model pasteboardManager];
  date = [v6 date];
  [pasteboardManager setDateForPaste:date];

  pasteboardManager2 = [(CUIKCalendarModel *)self->super._model pasteboardManager];
  [pasteboardManager2 pasteEventsWithDateMode:-[WeekViewController _dateModeForAllDay:](self delegate:{"_dateModeForAllDay:", v10), self}];
}

- (id)interaction:(id)interaction titleForPasteActionAtPoint:(CGPoint)point inView:(id)view
{
  [(UIScrollView *)self->_weekScroller convertPoint:view fromView:point.x, point.y];
  v12 = 0;
  v6 = [(WeekViewController *)self dateAtPoint:&v12 isAllDay:?];
  model = [(WeekViewController *)self model];
  pasteboardManager = [model pasteboardManager];
  numberOfEventsToPaste = [pasteboardManager numberOfEventsToPaste];

  v10 = [EKUIRightClickEmptySpaceInteraction localizedPasteStringForEventCount:numberOfEventsToPaste includeHere:(v12 & 1) == 0];

  return v10;
}

- (id)interaction:(id)interaction subtitleForPasteActionAtPoint:(CGPoint)point inView:(id)view
{
  [(UIScrollView *)self->_weekScroller convertPoint:view fromView:point.x, point.y];
  v15 = 0;
  v6 = [(WeekViewController *)self dateAtPoint:&v15 isAllDay:?];
  date = [v6 date];

  v8 = CUIKCalendar();
  v9 = [CUIKPasteboardUtilities roundedDateForDate:date dateMode:[(WeekViewController *)self _dateModeForAllDay:v15] calendar:v8];

  v10 = objc_alloc_init(NSDateFormatter);
  [v10 setCalendar:v8];
  timeZone = [v8 timeZone];
  [v10 setTimeZone:timeZone];

  [v10 setDoesRelativeDateFormatting:1];
  v12 = v15;
  [v10 setDateStyle:1];
  [v10 setTimeStyle:v12 ^ 1];
  v13 = [v10 stringFromDate:v9];

  return v13;
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

- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter
{
  if (!self->_timeBarDropScrollTimer)
  {
    v5 = [NSTimer timerWithTimeInterval:self target:"_timeBarDropScrollTimerFired:" selector:0 userInfo:1 repeats:0.003];
    timeBarDropScrollTimer = self->_timeBarDropScrollTimer;
    self->_timeBarDropScrollTimer = v5;

    v7 = +[NSRunLoop currentRunLoop];
    [v7 addTimer:self->_timeBarDropScrollTimer forMode:NSDefaultRunLoopMode];
  }
}

- (void)_timeBarDropScrollTimerFired:(id)fired
{
  [(UIScrollView *)self->_weekScroller contentOffset];
  v5 = v4;
  v7 = v6;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  v9 = 1.0;
  if (IsLeftToRight)
  {
    v9 = -1.0;
  }

  v10 = v5 + v9;
  weekScroller = self->_weekScroller;

  [(UIScrollView *)weekScroller setContentOffset:0 animated:v10, v7];
}

- (void)cancelTimeBarDropScrollTimerAndScrollToNearestDate
{
  [(NSTimer *)self->_timeBarDropScrollTimer invalidate];
  timeBarDropScrollTimer = self->_timeBarDropScrollTimer;
  self->_timeBarDropScrollTimer = 0;

  [(WeekViewController *)self updateDisplayedDateForCurrentScrollOffset];

  [(WeekViewController *)self scrollToDisplayedDateAnimated:1];
}

- (double)weekWidth
{
  if (CalSolariumEnabled())
  {
    return self->_weekWidth;
  }

  viewInterfaceOrientation = [(WeekViewController *)self viewInterfaceOrientation];

  [(WeekViewController *)self weekWidthForOrientation:viewInterfaceOrientation];
  return result;
}

- (double)weekWidthForOrientation:(int64_t)orientation
{
  weekViewClass = [(WeekViewController *)self weekViewClass];
  window = [(MainViewController *)self window];
  [(objc_class *)weekViewClass standardWidthForOrientation:orientation withViewInViewHierarchy:window];
  v8 = v7;
  EKUISeparatorLineThickness();
  v10 = v8 + v9;

  return v10;
}

- (void)viewWillLayoutSubviews
{
  [(WeekViewController *)self headerVerticalOffset];
  v4 = v3;
  view = [(WeekViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;

  v10 = v9 - v4;
  [(WeekTimeView *)self->_timeView sizeToFit];
  [(WeekTimeView *)self->_timeView frame];
  Width = CGRectGetWidth(v36);
  IsLeftToRight = CalInterfaceIsLeftToRight();
  v13 = v7 - Width;
  if (IsLeftToRight)
  {
    v13 = 0.0;
  }

  [(WeekTimeView *)self->_timeView setFrame:v13, v4, Width, v10];
  v14 = CalInterfaceIsLeftToRight();
  if (v14)
  {
    v15 = v7 - (Width + 1.0);
  }

  else
  {
    v15 = v7;
  }

  if (v14)
  {
    v16 = Width;
  }

  else
  {
    v16 = 0.0;
  }

  [(UIScrollView *)self->_weekScroller setFrame:v16, v4, v15, v10];
  [(WeekViewController *)self layoutCellsAnimated:0];
  [(WeekViewController *)self _updateWeekViewContentHeight];
  [(WeekViewController *)self _updateShouldAnnotateAppEntities];
  view2 = [(WeekViewController *)self view];
  [view2 bounds];
  height = self->_lastBoundsSize.height;
  if (self->_lastBoundsSize.width == v20 && height == v18)
  {
    v27 = [(MainViewController *)self window:self->_lastBoundsSize.width];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v33 = self->_lastWindowBoundsSize.width;
    v32 = self->_lastWindowBoundsSize.height;

    if (v33 == v29 && v32 == v31)
    {
      return;
    }
  }

  else
  {
  }

  [(WeekViewController *)self resizeWeekGroupsIfNeededForOrientation:[(WeekViewController *)self viewInterfaceOrientation]];
  view3 = [(WeekViewController *)self view];
  [view3 bounds];
  self->_lastBoundsSize.width = v23;
  self->_lastBoundsSize.height = v24;

  window = [(MainViewController *)self window];
  [window bounds];
  self->_lastWindowBoundsSize.width = v25;
  self->_lastWindowBoundsSize.height = v26;
}

- (WeekViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)intendedSizeClass
{
  sub_10007FD08();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (double)headerVerticalOffset
{
  sub_10007FD08();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0.0;
}

@end