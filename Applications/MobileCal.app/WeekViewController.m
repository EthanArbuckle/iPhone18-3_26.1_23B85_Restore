@interface WeekViewController
- (BOOL)_isLeadingEdgeToday;
- (BOOL)_weekGroup:(id)a3 containsOccurrence:(id)a4;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)creationGestureController:(id)a3 canActivateAtPoint:(CGPoint)a4;
- (BOOL)dateIsVisible:(id)a3;
- (BOOL)didScrollWhenEventGestureController:(id)a3 scrollTimerFiredToMoveLeft:(BOOL)a4 right:(BOOL)a5 vertically:(BOOL)a6 towardPoint:(CGPoint)a7;
- (BOOL)eventGestureController:(id)a3 didCommitOccurrence:(id)a4 toDate:(double)a5 isAllDay:(BOOL)a6 span:(int64_t)a7;
- (BOOL)eventGestureController:(id)a3 isAllDayAtPoint:(CGPoint)a4 requireInsistence:(BOOL)a5;
- (BOOL)eventGestureControllerShouldAllowLongPress:(id)a3;
- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4;
- (BOOL)hasCorrectParentForDraggingView:(id)a3 isAllDay:(BOOL)a4;
- (BOOL)interaction:(id)a3 canCreateEventAtPoint:(CGPoint)a4 inView:(id)a5;
- (BOOL)interaction:(id)a3 canCreateReminderAtPoint:(CGPoint)a4 inView:(id)a5;
- (BOOL)interaction:(id)a3 canPasteEventAtPoint:(CGPoint)a4 inView:(id)a5;
- (BOOL)isDateVisible:(id)a3;
- (BOOL)isTodayVisible;
- (BOOL)provideExternalRepresentationsForEvent:(id)a3 withProvider:(id)a4;
- (BOOL)userInitiatedScroll;
- (BOOL)usesSmallTextForIsCompact:(BOOL)a3;
- (BOOL)weekGroupViewShouldAnnotateAppEntities:(id)a3 onDayStarting:(id)a4;
- (CGPoint)creationGestureController:(id)a3 requestsPointForDate:(id)a4;
- (CGPoint)eventGestureController:(id)a3 pointAtDate:(double)a4 isAllDay:(BOOL)a5;
- (CGPoint)pointAtDate:(double)a3 isAllDay:(BOOL)a4;
- (CGRect)_frameForWeek:(int64_t)a3;
- (CGRect)currentTimeRectInView:(id)a3;
- (CGRect)marginFrameForEventGestureController:(id)a3;
- (UIEdgeInsets)pageChangeMarginsForEventGestureController:(id)a3;
- (WeekViewController)initWithModel:(id)a3 window:(id)a4;
- (WeekViewControllerDelegate)delegate;
- (_NSRange)visibleRangeForOffset:(double)a3;
- (double)_xOffsetForDate:(id)a3;
- (double)creationGestureController:(id)a3 requestedXCoordinateForEventPreviewAtPoint:(CGPoint)a4;
- (double)dayWidth;
- (double)eventGestureController:(id)a3 convertXForMargin:(double)a4;
- (double)eventGestureController:(id)a3 dateAtPoint:(CGPoint)a4;
- (double)eventGestureController:(id)a3 heightForAllDayOccurrenceView:(id)a4;
- (double)eventGestureController:(id)a3 heightForOccurrenceViewOfDuration:(double)a4;
- (double)eventGestureController:(id)a3 widthForOccurrenceViewOfDays:(unint64_t)a4;
- (double)eventGestureController:(id)a3 yPositionPerhapsMatchingAllDayOccurrence:(id)a4 atPoint:(CGPoint)a5;
- (double)headerVerticalOffset;
- (double)minimumHourScale;
- (double)scrollToDisplayedDateAnimated:(BOOL)a3;
- (double)timedRegionOriginForEventGestureController:(id)a3;
- (double)trackingAreaMinimumYPosition;
- (double)weekWidth;
- (double)weekWidthForOrientation:(int64_t)a3;
- (id)_createPreparedViewForWeek:(int64_t)a3;
- (id)_daysToShiftFromSelectedDateToBeginningOfWeekIfShowingFullWeek:(id)a3;
- (id)_earliestVisibleWeekGroupView;
- (id)_earliestWeekGroup;
- (id)_eventsForCutOrCopy;
- (id)_latestDateComponents;
- (id)_latestVisibleWeekGroupView;
- (id)_latestWeekGroup;
- (id)_newEvent;
- (id)_snapDateForOffset:(CGPoint)a3 snapToWeeks:(BOOL)a4;
- (id)_visibleOccurrenceViewsWithOptions:(int64_t)a3;
- (id)_weekGroupForEvent:(id)a3 occurrenceDate:(id)a4;
- (id)_weekGroupForPoint:(CGPoint)a3;
- (id)bestDateForNewEvent;
- (id)centerDateComponents;
- (id)createEventForEventGestureController:(id)a3;
- (id)createOccurrenceViewForEventGestureController:(id)a3;
- (id)creationGestureController:(id)a3 dateForPoint:(CGPoint)a4;
- (id)creationGestureController:(id)a3 requestedPreviewForEvent:(id)a4;
- (id)dateAtPoint:(CGPoint)a3 isAllDay:(BOOL *)a4 requireAllDayRegionInsistence:(BOOL)a5;
- (id)dateForWeek:(int64_t)a3;
- (id)dayDateAtPoint:(CGPoint)a3;
- (id)earliestDateComponents;
- (id)eventGestureController:(id)a3 occurrenceViewForOccurrence:(id)a4 occurrenceDate:(id)a5;
- (id)firstDisplayedDate;
- (id)interaction:(id)a3 subtitleForPasteActionAtPoint:(CGPoint)a4 inView:(id)a5;
- (id)interaction:(id)a3 titleForPasteActionAtPoint:(CGPoint)a4 inView:(id)a5;
- (id)occurrenceViewAtPoint:(CGPoint)a3 ignoreSelectedCopyView:(BOOL)a4;
- (id)occurrenceViewForEvent:(id)a3 occurrenceDate:(id)a4 forceMatchingContentSection:(BOOL)a5;
- (id)pasteboardManager;
- (id)preferredPreSizeClassTransitionSelectedDate;
- (id)presentationControllerForEditMenu;
- (id)sceneTitle;
- (id)selectedEventsForEditMenu;
- (id)verticalScrollView;
- (id)weekGroupForWeekAfter:(id)a3;
- (id)weekGroupForWeekBefore:(id)a3;
- (id)weekView:(id)a3 allEventsForStartDate:(id)a4 endDate:(id)a5;
- (id)weekView:(id)a3 eventsForStartDate:(id)a4 endDate:(id)a5;
- (int64_t)firstVisibleSecond;
- (int64_t)intendedSizeClass;
- (int64_t)orientationForSize:(CGSize)a3;
- (int64_t)savedFirstVisibleSecond;
- (int64_t)viewInterfaceOrientation;
- (unint64_t)daysFromFirstToMiddleDay;
- (void)_calendarModelTimeZoneChanged:(id)a3;
- (void)_clearSelectedOccurrenceViewsUpdatingModel:(BOOL)a3;
- (void)_deselectOccurrenceView:(id)a3 updatingModel:(BOOL)a4;
- (void)_highlightEvent:(id)a3 dayViewDate:(double)a4 isAllDay:(BOOL)a5;
- (void)_invalidateMarkerTimer;
- (void)_localeChanged:(id)a3;
- (void)_logUserStateDiagnostics:(id)a3;
- (void)_reloadDataIfVisible;
- (void)_removeDateHighlight;
- (void)_reorderVisibleWeeksAsSubviews;
- (void)_reuseWeekView:(id)a3;
- (void)_sceneEnteredForeground:(id)a3;
- (void)_scrollEventIntoView:(id)a3 animated:(BOOL)a4 durationOverride:(double)a5 completion:(id)a6;
- (void)_scrollToSecond:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_selectEvents:(id)a3 updatingModel:(BOOL)a4;
- (void)_selectOccurrenceView:(id)a3 updatingModel:(BOOL)a4;
- (void)_selectedDateChanged:(id)a3;
- (void)_setHeaderHeightForWeekGroupView:(id)a3 forceLayout:(BOOL)a4;
- (void)_setHourHeightScale:(double)a3;
- (void)_setReduceLayoutProcessingForAnimation:(BOOL)a3;
- (void)_showWeekNumbersPrefDidChange;
- (void)_significantTimeChanged:(id)a3;
- (void)_startMarkerTimer;
- (void)_timeBarDropScrollTimerFired:(id)a3;
- (void)_updateAllDayView;
- (void)_updateBackButtonOnBackViewControllerToDate:(id)a3;
- (void)_updateContentForSizeCategoryChange:(id)a3;
- (void)_updateForHeaderTodayRedCircle;
- (void)_updateHeaderHeightsAnimated:(BOOL)a3;
- (void)_updateMultiDayAllDaySectionScrollerContentSize;
- (void)_updateNavigationTitleControllerToDate:(id)a3;
- (void)_updateSelectedViewsToMatchModel;
- (void)_updateShouldAnnotateAppEntities;
- (void)_updateTimeMarker;
- (void)_updateTimeMarkerExtensionColor:(BOOL)a3;
- (void)_updateWeekViewContentHeight;
- (void)_weekScrollerDoubleTapped:(id)a3;
- (void)_weekScrollerPinched:(id)a3;
- (void)_weekViewStartsOnTodayPrefDidChange;
- (void)adjustVisibleAllDayOccurrenceLabelsAnimated:(BOOL)a3;
- (void)cancelTimeBarDropScrollTimerAndScrollToNearestDate;
- (void)cleanupSelectionState;
- (void)copy:(id)a3;
- (void)createEvent:(BOOL)a3 atPoint:(CGPoint)a4 inView:(id)a5;
- (void)creationGestureController:(id)a3 didCreateNewEvent:(id)a4;
- (void)creationGestureController:(id)a3 didResizeToDate:(id)a4;
- (void)currentlyVisibleDateRangeFromStartDate:(id *)a3 toEndDate:(id *)a4;
- (void)cut:(id)a3;
- (void)dayOccurrenceViewSelected:(id)a3 source:(unint64_t)a4;
- (void)dealloc;
- (void)didEditEvent:(id)a3 creationMethod:(unint64_t)a4;
- (void)dimOccurrence:(id)a3 occurrenceDate:(id)a4;
- (void)displayedDateChanged:(id)a3 userInitiated:(BOOL)a4;
- (void)draggingDone;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)editorDidCancelEditingEvent:(id)a3;
- (void)editorDidDeleteEvent:(id)a3;
- (void)emptySpaceClickedOnDate:(id)a3;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5;
- (void)eventGestureController:(id)a3 addViewToScroller:(id)a4 isAllDay:(BOOL)a5;
- (void)eventGestureController:(id)a3 didCancelEditingOccurrence:(id)a4 fadedOut:(BOOL)a5;
- (void)eventGestureController:(id)a3 didMoveToDate:(double)a4 isAllDay:(BOOL)a5;
- (void)eventGestureController:(id)a3 didSetUpAtDate:(double)a4 isAllDay:(BOOL)a5;
- (void)eventGestureController:(id)a3 didSingleTapOccurrence:(id)a4 shouldExtendSelection:(BOOL)a5;
- (void)eventGestureController:(id)a3 requestsPresentationOfViewController:(id)a4;
- (void)eventGestureControllerDidEndDragSession:(id)a3;
- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)eventViewController:(id)a3 requestsShowEvent:(id)a4;
- (void)eventViewControllerNextButtonWasTapped:(id)a3;
- (void)eventViewControllerPreviousButtonWasTapped:(id)a3;
- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4;
- (void)highlightDayViewCalendarDate:(id)a3 isAllDay:(BOOL)a4;
- (void)interaction:(id)a3 pasteEventAtPoint:(CGPoint)a4 inView:(id)a5;
- (void)layoutCellsAnimated:(BOOL)a3;
- (void)loadDataAsync;
- (void)loadView;
- (void)occurrencesChanged:(id)a3;
- (void)overlayCalendarDidChange;
- (void)paste:(id)a3;
- (void)pasteboardManager:(id)a3 didFinishPasteWithResult:(unint64_t)a4 willOpenEditor:(BOOL)a5;
- (void)pasteboardManager:(id)a3 presentAlert:(id)a4;
- (void)reloadData;
- (void)resizeWeekGroupsIfNeededForOrientation:(int64_t)a3;
- (void)saveFirstVisibleSecond:(int64_t)a3;
- (void)scrollToCurrentTimeOfDayAnimated:(BOOL)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)selectDate:(id)a3 animated:(BOOL)a4;
- (void)setDisplayedDate:(id)a3 forceScroll:(BOOL)a4 animated:(BOOL)a5;
- (void)setFirstVisibleSecond:(int64_t)a3;
- (void)setReceiveTapsInHeader:(BOOL)a3;
- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)showEvents:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)snapTargetScrollOffset:(CGPoint *)a3 withVelocity:(CGPoint)a4;
- (void)synchronizeWeekGroupScrollingToWeek:(id)a3;
- (void)tappedOnDate:(id)a3;
- (void)undimOccurrence:(id)a3 occurrenceDate:(id)a4;
- (void)updateDisplayedDateForCurrentScrollOffset;
- (void)updatePreferredReloadRange;
- (void)updateVisibleRects;
- (void)updateWeekNumber;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSwitcherSwitchedToViewWithDate:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)weekGroup:(id)a3 didSelectEvent:(id)a4 userInitiated:(BOOL)a5 dateSelected:(id)a6;
- (void)weekGroup:(id)a3 didSelectEvents:(id)a4 userInitiated:(BOOL)a5;
- (void)weekGroup:(id)a3 pointerDidTargetOccurrences:(id)a4;
- (void)weekGroupAllDaySectionDidScroll:(id)a3;
- (void)weekGroupViewDidLayout:(id)a3;
- (void)weekGroupViewFirstVisibleSecondChanged:(int64_t)a3;
- (void)weekGroupViewOccurrenceLayoutDidChange:(id)a3;
@end

@implementation WeekViewController

- (WeekViewController)initWithModel:(id)a3 window:(id)a4
{
  v12.receiver = self;
  v12.super_class = WeekViewController;
  v4 = [(MainViewController *)&v12 initWithWindow:a4 model:a3];
  if (v4)
  {
    v4->_lastScrollPositionSecond = CUIKNumberOfSecondsForCurrentTime();
    +[EKDayTimeView defaultHourScale];
    v4->_weekViewHourHeightScale = v5;
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = CUIKCalendarModelDisplayedOccurrencesChangedNotification;
    v8 = [(WeekViewController *)v4 model];
    [v6 addObserver:v4 selector:"occurrencesChanged:" name:v7 object:v8];

    v9 = CUIKCalendarModelSelectedOccurrencesChangedNotification;
    v10 = [(WeekViewController *)v4 model];
    [v6 addObserver:v4 selector:"selectedOccurrencesChanged:" name:v9 object:v10];

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
  v3 = [(EKEventGestureController *)self->_eventGestureController event];

  if (v3)
  {
    v4 = [(EKEventGestureController *)self->_eventGestureController event];
    v5 = [NSSet setWithObject:v4];
LABEL_5:
    v8 = v5;

    goto LABEL_6;
  }

  v6 = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
  v7 = [v6 count];

  if (v7)
  {
    v4 = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
    v5 = [NSSet setWithArray:v4];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (void)copy:(id)a3
{
  v5 = [(WeekViewController *)self _eventsForCutOrCopy];
  if ([v5 count])
  {
    v4 = [(CUIKCalendarModel *)self->super._model pasteboardManager];
    [v4 copyEvents:v5 delegate:self];

    [(WeekViewController *)self cleanupSelectionState];
  }
}

- (void)cut:(id)a3
{
  v5 = [(WeekViewController *)self _eventsForCutOrCopy];
  if ([v5 count])
  {
    v4 = [(CUIKCalendarModel *)self->super._model pasteboardManager];
    [v4 cutEvents:v5 delegate:self];

    [(WeekViewController *)self cleanupSelectionState];
  }
}

- (void)paste:(id)a3
{
  v8 = [(WeekViewController *)self _eventsForCutOrCopy];
  if ([v8 count] == 1)
  {
    v4 = [(CUIKCalendarModel *)self->super._model pasteboardManager];
    v5 = [v8 anyObject];
    v6 = [v5 startDate];
    [v4 setDateForPaste:v6];
  }

  v7 = [(CUIKCalendarModel *)self->super._model pasteboardManager];
  [v7 pasteEventsWithDateMode:0 delegate:self];

  [(WeekViewController *)self cleanupSelectionState];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (([CUIKPasteboardUtilities declinesToPerformCutCopyPasteAction:a3 withSender:v6]& 1) == 0)
  {
    if ("paste:" == a3)
    {
      v8 = [(WeekViewController *)self model];
      v9 = [v8 pasteboardManager];
      v7 = [v9 canPerformPaste];
    }

    else
    {
      if ("copy:" == a3)
      {
        v8 = [(WeekViewController *)self _eventsForCutOrCopy];
        v10 = 1;
      }

      else
      {
        if ("cut:" != a3)
        {
          v12.receiver = self;
          v12.super_class = WeekViewController;
          v7 = [(WeekViewController *)&v12 canPerformAction:a3 withSender:v6];
          goto LABEL_12;
        }

        v8 = [(WeekViewController *)self _eventsForCutOrCopy];
        v10 = 0;
      }

      v7 = [CUIKPasteboardUtilities allEventsValidForAction:v10 fromEvents:v8];
    }

    goto LABEL_12;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (void)loadView
{
  v137.receiver = self;
  v137.super_class = WeekViewController;
  [(WeekViewController *)&v137 loadView];
  v3 = [(WeekViewController *)self view];
  [v3 setOpaque:1];

  if ((CalCanvasPocketEnabled() & 1) == 0)
  {
    [(WeekViewController *)self setEdgesForExtendedLayout:0];
  }

  v4 = +[UIColor systemBackgroundColor];
  v5 = [(WeekViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = UIView_ptr;
  v7 = +[CUIKPreferences sharedPreferences];
  self->_showWeekNumber = [v7 showWeekNumbers];

  v8 = +[CUIKPreferences sharedPreferences];
  self->_weekViewStartsOnToday = [v8 weekViewStartsOnToday];

  v9 = CUIKGetOverlayCalendar();
  self->_showOverlayCalendar = v9 != 0;

  v10 = [(MainViewController *)self window];
  v11 = EKUIInterfaceOrientationForViewHierarchy();

  [(WeekViewController *)self headerVerticalOffset];
  v13 = v12;
  v14 = 0.0;
  if ((CalInterfaceIsLeftToRight() & 1) == 0)
  {
    v15 = [(WeekViewController *)self view];
    [v15 bounds];
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
  v23 = [(WeekViewController *)self view];
  [v23 addSubview:self->_timeView];

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

  v27 = [(WeekViewController *)self view];
  [v27 addSubview:self->_weekScroller];

  v28 = [(WeekViewController *)self view];
  [v28 bringSubviewToFront:self->_timeView];

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

    v44 = [(WeekViewController *)self view];
    [v44 addSubview:self->_allDayDividerLineView];

    [(WeekTimeView *)self->_timeView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)self->_weekScroller setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_allDayDividerLineView setTranslatesAutoresizingMaskIntoConstraints:0];
    v135 = [(WeekTimeView *)self->_timeView topAnchor];
    v136 = [(WeekViewController *)self view];
    v134 = [v136 topAnchor];
    [(WeekViewController *)self headerVerticalOffset];
    v133 = [v135 constraintEqualToAnchor:v134 constant:?];
    v138[0] = v133;
    v131 = [(WeekTimeView *)self->_timeView leadingAnchor];
    v132 = [(WeekViewController *)self view];
    v130 = [v132 leadingAnchor];
    v129 = [v131 constraintEqualToAnchor:v130];
    v138[1] = v129;
    v128 = [(WeekTimeView *)self->_timeView widthAnchor];
    v127 = [v128 constraintEqualToConstant:v20];
    v138[2] = v127;
    v125 = [(WeekTimeView *)self->_timeView bottomAnchor];
    v126 = [(WeekViewController *)self view];
    v124 = [v126 bottomAnchor];
    v123 = [v125 constraintEqualToAnchor:v124];
    v138[3] = v123;
    v121 = [(UIScrollView *)self->_weekScroller topAnchor];
    v122 = [(WeekViewController *)self view];
    v120 = [v122 topAnchor];
    [(WeekViewController *)self headerVerticalOffset];
    v119 = [v121 constraintEqualToAnchor:v120 constant:?];
    v138[4] = v119;
    v118 = [(UIScrollView *)self->_weekScroller leadingAnchor];
    v117 = [(WeekTimeView *)self->_timeView trailingAnchor];
    v116 = [v118 constraintEqualToAnchor:v117];
    v138[5] = v116;
    v114 = [(UIScrollView *)self->_weekScroller bottomAnchor];
    v115 = [(WeekViewController *)self view];
    v113 = [v115 bottomAnchor];
    v112 = [v114 constraintEqualToAnchor:v113];
    v138[6] = v112;
    v110 = [(UIScrollView *)self->_weekScroller trailingAnchor];
    v111 = [(WeekViewController *)self view];
    v109 = [v111 trailingAnchor];
    v108 = [v110 constraintEqualToAnchor:v109];
    v138[7] = v108;
    v106 = [(UIView *)self->_allDayDividerLineView leadingAnchor];
    v107 = [(WeekViewController *)self view];
    v105 = [v107 leadingAnchor];
    v104 = [v106 constraintEqualToAnchor:v105];
    v138[8] = v104;
    v102 = [(UIView *)self->_allDayDividerLineView topAnchor];
    v103 = [(WeekViewController *)self view];
    v45 = [v103 topAnchor];
    [(WeekViewController *)self headerVerticalOffset];
    v46 = [v102 constraintEqualToAnchor:v45 constant:?];
    v138[9] = v46;
    v47 = [(UIView *)self->_allDayDividerLineView heightAnchor];
    v48 = [v47 constraintEqualToConstant:v40];
    v138[10] = v48;
    v49 = [(UIView *)self->_allDayDividerLineView trailingAnchor];
    v50 = [(WeekViewController *)self view];
    v51 = [v50 trailingAnchor];
    v52 = [v49 constraintEqualToAnchor:v51];
    v138[11] = v52;
    v53 = [NSArray arrayWithObjects:v138 count:12];
    [NSLayoutConstraint activateConstraints:v53];

    v6 = UIView_ptr;
  }

  else
  {
    v54 = [(WeekViewController *)self view];
    [v54 setAutoresizingMask:18];

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
    v66 = [(WeekViewController *)self intendedSizeClass];
    v67 = [(MainViewController *)self window];
    v68 = [(WeekGroupView *)v57 initWithFrame:v66 sizeClass:v67 targetWindow:self rightClickDelegate:[(WeekViewController *)self usesMultiDayWeekView] isMultiDayView:v59, v61, v63, v65];
    [(NSMutableArray *)v56 addObject:v68];

    v69 = self->_reusableViews;
    v70 = [WeekGroupView alloc];
    [(UIScrollView *)self->_weekScroller bounds];
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v79 = [(WeekViewController *)self intendedSizeClass];
    v80 = [(MainViewController *)self window];
    v81 = [(WeekGroupView *)v70 initWithFrame:v79 sizeClass:v80 targetWindow:self rightClickDelegate:[(WeekViewController *)self usesMultiDayWeekView] isMultiDayView:v72, v74, v76, v78];
    [(NSMutableArray *)v69 addObject:v81];

    EKUISeparatorLineThickness();
    v83 = v82;
    v84 = objc_alloc_init(UIView);
    v85 = self->_allDayDividerLineView;
    self->_allDayDividerLineView = v84;

    v86 = +[UIColor separatorColor];
    [(UIView *)self->_allDayDividerLineView setBackgroundColor:v86];

    v87 = [(WeekViewController *)self view];
    [v87 bounds];
    [(UIView *)self->_allDayDividerLineView setFrame:0.0, v13 - v83];

    [(UIView *)self->_allDayDividerLineView setHidden:1];
    [(UIView *)self->_allDayDividerLineView setAutoresizingMask:2];
    v88 = [(WeekViewController *)self view];
    [v88 addSubview:self->_allDayDividerLineView];

    v89 = [(WeekViewController *)self displayedDate];

    if (v89)
    {
      [(WeekViewController *)self scrollToDisplayedDateAnimated:0];
    }
  }

  self->_initialShow = 1;
  v90 = [(CUIKCalendarModel *)self->super._model persistedSceneState];
  if (v90)
  {
    v91 = v90;
    v92 = [(CUIKCalendarModel *)self->super._model persistedSceneState];
    [v92 weekViewHourScale];
    v94 = v93;

    if (v94 > 0.0)
    {
      v95 = [(CUIKCalendarModel *)self->super._model persistedSceneState];
      [v95 weekViewHourScale];
LABEL_25:
      self->_weekViewHourHeightScale = v96;
      goto LABEL_26;
    }
  }

  v97 = [v6[132] sharedPreferences];
  v95 = [v97 weekViewHourScale];

  if (v95)
  {
    [v95 floatValue];
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
  v5 = [(WeekViewController *)self model];
  [v3 addObserver:self selector:"_selectedDateChanged:" name:v4 object:v5];

  v6 = CUIKCalendarModelSignificantTimeChangeNotification;
  v7 = [(WeekViewController *)self model];
  [v3 addObserver:self selector:"_significantTimeChanged:" name:v6 object:v7];

  [v3 addObserver:self selector:"_localeChanged:" name:CUIKLocaleChangedNotification object:0];
  [v3 addObserver:self selector:"_calendarModelTimeZoneChanged:" name:CUIKCalendarModelTimeZoneChangedNotification object:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = WeekViewController;
  [(WeekViewController *)&v12 viewWillAppear:a3];
  self->_viewWillAppearCalled = 1;
  [(WeekViewController *)self resizeWeekGroupsIfNeededForOrientation:[(WeekViewController *)self viewInterfaceOrientation]];
  if (![(WeekViewController *)self suppressInitialScrollToCurrentTime])
  {
    v4 = [(WeekViewController *)self model];
    v5 = [v4 selectedDate];
    [(WeekViewController *)self setDisplayedDate:v5];
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
      v9 = [v8 weekView];
      v10 = [v9 content];
      [v10 firstEventSecond];
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
    v4 = [(MainViewController *)self window];
    [v4 safeAreaInsets];
    v6 = v5;
    v8 = v7;

    if (!IsLeftToRight)
    {
      v6 = v8;
    }

    [(UIScrollView *)self->_weekScroller frame];
    self->_weekWidth = v9 - v6;
    v10 = [(WeekViewController *)self weekViewClass];
    v11 = [(WeekViewController *)self viewInterfaceOrientation];
    v12 = [(WeekViewController *)self view];
    v13 = [(objc_class *)v10 displayedDaysForOrientation:v11 withViewInViewHierarchy:v12];

    v14 = [(WeekViewController *)self daysInWeek];
    weekWidth = self->_weekWidth;
    if (v13 != v14)
    {
      weekWidth = weekWidth / v13 * v14;
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
      v26 = [(WeekViewController *)self intendedSizeClass];
      v27 = [(MainViewController *)self window];
      v28 = [(WeekGroupView *)v17 initWithFrame:v26 sizeClass:v27 targetWindow:self rightClickDelegate:[(WeekViewController *)self usesMultiDayWeekView] isMultiDayView:v19, v21, v23, v25];
      [(NSMutableArray *)reusableViews addObject:v28];

      v29 = self->_reusableViews;
      v30 = [WeekGroupView alloc];
      [(UIScrollView *)self->_weekScroller bounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v39 = [(WeekViewController *)self intendedSizeClass];
      v40 = [(MainViewController *)self window];
      v41 = [(WeekGroupView *)v30 initWithFrame:v39 sizeClass:v40 targetWindow:self rightClickDelegate:[(WeekViewController *)self usesMultiDayWeekView] isMultiDayView:v32, v34, v36, v38];
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

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = WeekViewController;
  [(MainViewController *)&v6 viewDidAppear:a3];
  self->_viewIsVisible = 1;
  if (self->_needsHourHeightUpdate)
  {
    +[EKDayTimeView defaultHourScale];
LABEL_5:
    [(WeekViewController *)self _setHourHeightScale:weekViewHourHeightScale];
    [(WeekViewController *)self viewWillLayoutSubviews];
    v5 = [(WeekViewController *)self view];
    [v5 layoutSubviews];

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

- (void)viewWillDisappear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = WeekViewController;
  [(WeekViewController *)&v12 viewWillDisappear:a3];
  v4 = [(EKEventGestureController *)self->_eventGestureController event];
  v5 = [(EKEventGestureController *)self->_eventGestureController occurrenceDate];
  [(WeekViewController *)self undimOccurrence:v4 occurrenceDate:v5];

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
      v7 = [(WeekViewController *)self model];
      v8 = [v7 eventStore];
      v9 = [v8 timeZone];
      v10 = [EKCalendarDate calendarDateWithDate:v6 timeZone:v9];

      v11 = [(WeekViewController *)self model];
      [v11 setSelectedDate:v10];
    }
  }
}

- (int64_t)orientationForSize:(CGSize)a3
{
  if ([(WeekViewController *)self usePortraitLayoutForSize:a3.width, a3.height])
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
  v3 = [(WeekViewController *)self view];
  [v3 frame];
  v6 = [(WeekViewController *)self orientationForSize:v4, v5];

  return v6;
}

- (id)_visibleOccurrenceViewsWithOptions:(int64_t)a3
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
    v23 = a3;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v25 + 1) + 8 * i) weekView];
        v12 = [v5[264] array];
        if (!a3)
        {
          v15 = v8;
          v16 = v9;
          v17 = v6;
          v18 = v5;
          v14 = [v11 occurrenceViews];
          if (v14)
          {
            [v12 addObjectsFromArray:v14];
          }

          v19 = [v11 allDayView];
          v20 = [v19 occurrenceViews];

          [v12 addObjectsFromArray:v20];
          v5 = v18;
          v6 = v17;
          v9 = v16;
          v8 = v15;
          a3 = v23;
          goto LABEL_15;
        }

        if ((a3 & 1) == 0)
        {
          if ((a3 & 2) == 0)
          {
            goto LABEL_16;
          }

          v13 = [v11 allDayView];
          v14 = [v13 occurrenceViews];

LABEL_14:
          [v12 addObjectsFromArray:v14];
          goto LABEL_15;
        }

        v14 = [v11 occurrenceViews];
        if (v14)
        {
          goto LABEL_14;
        }

LABEL_15:

LABEL_16:
        [v6 addObjectsFromArray:v12];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v13.receiver = self;
  v13.super_class = WeekViewController;
  v7 = a4;
  [(MainViewController *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = self->_eventGestureController;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100082ADC;
  v10[3] = &unk_10020F1F0;
  v11 = v8;
  v12 = self;
  v9 = v8;
  [v7 animateAlongsideTransition:0 completion:v10];
}

- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  [(WeekViewController *)self scrollEventIntoView:v10 animated:v8 completion:0];
  v12 = [v10 isNew];
  if (a5 == 3 || v12)
  {
    v14 = [AddEventViewController editOrAddViewControllerForEventOrIntegrationWithEvent:v10 model:self->super._model creationMethod:0 viewStart:1 eventEditViewDelegate:self];
  }

  else
  {
    v13 = [(MainViewController *)self augmentEventDetailsContext:v11];
    v14 = [EKEventViewController eventDetailViewControllerWithEvent:v10 delegate:self context:v13 canvasView:1];
    [(WeekViewController *)self ekui_adjustToolBarToTransparentStyle];
    if ((CalSystemSolariumEnabled() & 1) == 0)
    {
      [v14 ekui_adjustNavBarToTransparentStyle];
    }
  }

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"Week" value:&stru_1002133B8 table:0];
  v17 = [(WeekViewController *)self navigationItem];
  [v17 setBackButtonTitle:v16];

  [(CUIKCalendarModel *)self->super._model setSelectedOccurrence:v10];
  if (a5)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100082E2C;
    v18[3] = &unk_10020EE00;
    v19 = v14;
    v20 = a5;
    [(MainViewController *)self showViewController:v19 sender:self animated:v8 completion:v18];
  }
}

- (void)showEvents:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  v6 = a4;
  v8 = a3;
  v12 = [[EKExpandedReminderStackViewController alloc] initWithEvents:v8 delegate:self];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"Week" value:&stru_1002133B8 table:0];
  v11 = [(WeekViewController *)self navigationItem];
  [v11 setBackButtonTitle:v10];

  [(CUIKCalendarModel *)self->super._model setSelectedOccurrences:v8];
  [(MainViewController *)self showViewController:v12 sender:self animated:v6 completion:0];
}

- (void)selectDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [(WeekViewController *)self model];
  [v6 setSelectedDate:v7];

  [(WeekViewController *)self setDisplayedDate:v7 animated:v4];
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
    v4 = [(WeekViewController *)self model];
    v5 = [v4 eventStore];
    v6 = [v5 timeZone];
    v7 = [EKCalendarDate calendarDateWithDate:v3 timeZone:v6];
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
    v3 = [(CUIKCalendarModel *)self->super._model calendar];
    v4 = [(WeekViewController *)self displayedDate];
    v5 = [v4 date];
    if (v5)
    {
      v6 = CUIKTodayDate();
      v7 = [(WeekViewController *)self isDateVisible:v6];

      if (v7)
      {
        v8 = [NSBundle bundleForClass:objc_opt_class()];
        v9 = [v8 localizedStringForKey:@"This Week" value:&stru_1002133B8 table:0];
      }

      else
      {
        if (!self->_titleIntervalDateFormatter)
        {
          v10 = objc_alloc_init(NSDateIntervalFormatter);
          titleIntervalDateFormatter = self->_titleIntervalDateFormatter;
          self->_titleIntervalDateFormatter = v10;

          v12 = [(CUIKCalendarModel *)self->super._model calendar];
          [(NSDateIntervalFormatter *)self->_titleIntervalDateFormatter setCalendar:v12];

          v13 = [(CUIKCalendarModel *)self->super._model calendar];
          v14 = [v13 timeZone];
          [(NSDateIntervalFormatter *)self->_titleIntervalDateFormatter setTimeZone:v14];
        }

        v8 = [(WeekViewController *)self earliestDateComponents];
        v15 = [(WeekViewController *)self _latestDateComponents];
        v16 = v15;
        v9 = 0;
        if (v8 && v15)
        {
          v17 = [v3 dateFromComponents:v8];
          v18 = [v3 dateFromComponents:v16];
          v19 = [v8 month];
          if (v19 == [v16 month])
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

- (BOOL)isDateVisible:(id)a3
{
  v4 = a3;
  v5 = [(CUIKCalendarModel *)self->super._model calendar];
  v6 = [(WeekViewController *)self earliestDateComponents];
  v7 = [(WeekViewController *)self _latestDateComponents];
  v8 = [v5 timeZone];
  v9 = [EKCalendarDate calendarDateWithDateComponents:v7 timeZone:v8];

  v10 = [v9 calendarDateForEndOfDay];

  v11 = [v5 dateFromComponents:v6];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;
  [v10 absoluteTime];
  v15 = v14;
  [v4 timeIntervalSinceReferenceDate];
  v17 = v16;
  v18 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v19 = v18;
    v20 = [v10 date];
    v23 = 138412802;
    v24 = v4;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Week view determining if date %@ is visible. Onscreen dates: %@ - %@", &v23, 0x20u);
  }

  v21 = v17 <= v15 && v13 <= v17;

  return v21;
}

- (void)currentlyVisibleDateRangeFromStartDate:(id *)a3 toEndDate:(id *)a4
{
  v12 = [(CUIKCalendarModel *)self->super._model calendar];
  v7 = [(WeekViewController *)self earliestDateComponents];
  v8 = [(WeekViewController *)self _latestDateComponents];
  v9 = [v12 timeZone];
  v10 = [EKCalendarDate calendarDateWithDateComponents:v8 timeZone:v9];

  v11 = [v10 calendarDateForEndOfDay];

  if (a3)
  {
    *a3 = [v12 dateFromComponents:v7];
  }

  if (a4)
  {
    *a4 = [v11 date];
  }
}

- (id)preferredPreSizeClassTransitionSelectedDate
{
  v3 = [(MainViewController *)self shownEventEditViewController];

  if (v3)
  {
    v4 = [(MainViewController *)self shownEventEditViewController];
    v5 = [v4 event];
    v6 = [v5 startDate];
    v7 = [(WeekViewController *)self model];
    v8 = [v7 eventStore];
    v9 = [v8 timeZone];
    v10 = [EKCalendarDate calendarDateWithDate:v6 timeZone:v9];
  }

  else if ([(WeekViewController *)self isTodayVisible])
  {
    v11 = CUIKTodayDate();
    v12 = [(WeekViewController *)self model];
    v13 = [v12 eventStore];
    v14 = [v13 timeZone];
    v10 = [EKCalendarDate calendarDateWithDate:v11 timeZone:v14];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = WeekViewController;
    v10 = [(MainViewController *)&v16 preferredPreSizeClassTransitionSelectedDate];
  }

  return v10;
}

- (void)_selectedDateChanged:(id)a3
{
  v4 = [(WeekViewController *)self model];
  v5 = [v4 selectedDate];
  [(WeekViewController *)self _updateBackButtonOnBackViewControllerToDate:v5];

  if (CalSolariumEnabled())
  {
    v7 = [(WeekViewController *)self model];
    v6 = [v7 selectedDate];
    [(WeekViewController *)self _updateNavigationTitleControllerToDate:v6];
  }
}

- (void)_localeChanged:(id)a3
{
  [(WeekViewController *)self resizeWeekGroupsIfNeededForOrientation:[(WeekViewController *)self viewInterfaceOrientation]];

  [(WeekViewController *)self overlayCalendarDidChange];
}

- (void)_significantTimeChanged:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 objectForKeyedSubscript:CUIKCalendarModelSignificantTimeChangeNotificationDayChangedKey];

  v5 = [v7 BOOLValue];
  v6 = v7;
  if ((v5 & 1) != 0 || !v7)
  {
    [(WeekViewController *)self _updateTimeMarker];
    v5 = [(WeekViewController *)self _updateForHeaderTodayRedCircle];
    v6 = v7;
  }

  _objc_release_x1(v5, v6);
}

- (void)_calendarModelTimeZoneChanged:(id)a3
{
  v4 = [(WeekViewController *)self model];
  v5 = [v4 calendar];

  v6 = [(WeekViewController *)self model];
  v7 = [v6 eventStore];
  v8 = [v7 timeZone];

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
        [v14 setCalendar:{v5, v18}];
        [v14 setTimeZone:v8];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_reusableViews removeAllObjects];
  v15 = [(EKCalendarDate *)self->_displayedDate dayComponents];
  v16 = [v5 dateFromComponents:v15];
  v17 = [EKCalendarDate calendarDateWithDate:v16 timeZone:v8];
  [(WeekViewController *)self setDisplayedDate:v17 forceScroll:1 animated:0];
}

- (void)_updateBackButtonOnBackViewControllerToDate:(id)a3
{
  v5 = a3;
  v4 = [(WeekViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [v4 updateBackButtonToDate:v5];
  }
}

- (void)_updateNavigationTitleControllerToDate:(id)a3
{
  v5 = a3;
  v4 = [(WeekViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [v4 updateTitleToDate:v5];
  }
}

- (void)_updateContentForSizeCategoryChange:(id)a3
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
  v9 = [(CUIKCalendarModel *)self->super._model persistedSceneState];
  [v9 setWeekViewHourScale:v8];

  [(WeekTimeView *)self->_timeView contentSizeCategoryChanged];
  [(WeekTimeView *)self->_timeView sizeToFit];
  [(WeekViewController *)self resizeWeekGroupsIfNeededForOrientation:[(WeekViewController *)self viewInterfaceOrientation]];
  if ([(NSMutableArray *)self->_visibleWeeks count])
  {
    v10 = [(NSMutableArray *)self->_visibleWeeks objectAtIndex:0];
    v11 = [v10 weekView];
    self->_lastScrollPositionSecond = [v11 firstVisibleSecond];
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

- (CGRect)_frameForWeek:(int64_t)a3
{
  weekWidth = self->_weekWidth;
  v4 = weekWidth * a3;
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

- (id)dateForWeek:(int64_t)a3
{
  if (CalTimeDirectionIsLeftToRight())
  {
    v5 = a3 - 27040;
  }

  else
  {
    v5 = 27040 - a3;
  }

  referenceWeekStart = self->_referenceWeekStart;

  return [(EKCalendarDate *)referenceWeekStart calendarDateByAddingWeeks:v5];
}

- (id)_createPreparedViewForWeek:(int64_t)a3
{
  v5 = [(WeekViewController *)self view];
  v6 = [v5 window];

  if (v6)
  {
    v7 = [(WeekViewController *)self view];
    v8 = [v7 window];
    EKUIPushFallbackSizingContextWithViewHierarchy();
  }

  if ([(NSMutableArray *)self->_reusableViews count])
  {
    v9 = [(NSMutableArray *)self->_reusableViews firstObject];
    [(WeekViewController *)self _frameForWeek:a3];
    [(WeekGroupView *)v9 setFrame:?];
    [(NSMutableArray *)self->_reusableViews removeObjectAtIndex:0];
  }

  else
  {
    v10 = [WeekGroupView alloc];
    [(WeekViewController *)self _frameForWeek:a3];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(WeekViewController *)self intendedSizeClass];
    v20 = [(MainViewController *)self window];
    v9 = [(WeekGroupView *)v10 initWithFrame:v19 sizeClass:v20 targetWindow:self rightClickDelegate:[(WeekViewController *)self usesMultiDayWeekView] isMultiDayView:v12, v14, v16, v18];
  }

  [(WeekGroupView *)v9 setDelegate:self];
  [(WeekGroupView *)v9 setIsInUse:1];
  [(WeekGroupView *)v9 setWeek:a3];
  [(WeekGroupView *)v9 setAccessibilityIdentifier:@"weekGroupView"];
  v21 = [(WeekViewController *)self dateForWeek:a3];
  v22 = [(WeekViewController *)self model];
  v23 = [v22 calendar];
  [(WeekGroupView *)v9 setCalendar:v23];

  v24 = [(WeekViewController *)self model];
  v25 = [v24 eventStore];
  v26 = [v25 timeZone];
  [(WeekGroupView *)v9 setTimeZone:v26];

  v27 = [(WeekGroupView *)v9 weekView];
  [v27 setDataSource:self];

  v28 = [(WeekViewController *)self receiveTapsInHeader];
  v29 = [(WeekGroupView *)v9 weekView];
  v30 = [v29 allDayView];
  [v30 setReceiveTapsInHeader:v28];

  v31 = [v21 allComponents];
  [(WeekGroupView *)v9 setWeekStartDate:v31];

  [(WeekViewController *)self _setHeaderHeightForWeekGroupView:v9 forceLayout:0];
  [(WeekGroupView *)v9 setHourHeightScale:self->_weekViewHourHeightScale];
  if ((CalSolariumEnabled() & 1) == 0)
  {
    v32 = [(WeekViewController *)self view];
    [EKDayTimeView defaultHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:[(WeekViewController *)self viewInterfaceOrientation]];
    v34 = v33 * self->_weekViewHourHeightScale;

    v35 = [(WeekGroupView *)v9 weekView];
    v36 = [v35 scrollView];
    [v36 contentSize];
    v38 = v37;

    v39 = [(WeekGroupView *)v9 weekView];
    v40 = [v39 scrollView];
    [v40 setContentSize:{v38, v34}];

    v41 = [(WeekGroupView *)v9 weekView];
    v42 = [v41 content];
    [v42 frame];
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v49 = [(WeekGroupView *)v9 weekView];
    v50 = [v49 content];
    [v50 setFrame:{v44, v46, v48, v34}];
  }

  v51 = [(WeekGroupView *)v9 weekView];
  v52 = [v51 content];
  [v52 setNeedsLayout];

  [(UIScrollView *)self->_weekScroller addSubview:v9];
  if ([(NSMutableArray *)self->_visibleWeeks count])
  {
    v53 = [(NSMutableArray *)self->_visibleWeeks objectAtIndex:0];
    v54 = [(WeekGroupView *)v9 weekView];
    v55 = [v53 weekView];
    [v55 safeAreaInsets];
    [v54 setKnownSafeAreaInsetTop:?];

    v56 = [v53 weekView];
    v57 = [v56 firstVisibleSecond];
    v58 = [(WeekGroupView *)v9 weekView];
    [v58 setFirstVisibleSecond:v57];
  }

  if (v6)
  {
    v59 = [(WeekViewController *)self view];
    v60 = [v59 window];
    EKUIPopFallbackSizingContextWithViewHierarchy();
  }

  return v9;
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

  v22 = [v21 weekView];
  v23 = [v22 scrollView];

  return v23;
}

- (void)_reuseWeekView:(id)a3
{
  v28 = a3;
  v4 = [(EKEventGestureController *)self->_eventGestureController draggingView];

  if (v4)
  {
    v5 = [(EKEventGestureController *)self->_eventGestureController draggingView];
    [v5 frame];
    v7 = v6;
    v9 = v8;

    [(EKEventGestureController *)self->_eventGestureController touchOffset];
    v11 = v7 + v10;
    [(EKEventGestureController *)self->_eventGestureController touchOffset];
    v13 = v9 + v12;
    weekScroller = self->_weekScroller;
    v15 = [(EKEventGestureController *)self->_eventGestureController draggingView];
    v16 = [v15 superview];
    [(UIScrollView *)weekScroller convertPoint:v16 fromView:v11, v13];
    v18 = v17;
    v20 = v19;

    v21 = [(WeekViewController *)self dateAtPoint:0 isAllDay:v18, v20];
    v22 = [v28 weekStartDate];
    v23 = [v28 timeZone];
    v24 = [EKCalendarDate calendarDateWithDateComponents:v22 timeZone:v23];

    if ([v24 compare:v21] == -1)
    {
      v25 = [v24 calendarDateByAddingDays:{-[WeekViewController daysInWeek](self, "daysInWeek")}];
      if ([v25 compare:v21] == 1)
      {
        v26 = [(EKEventGestureController *)self->_eventGestureController event];
        v27 = [(EKEventGestureController *)self->_eventGestureController occurrenceDate];
        [(WeekViewController *)self undimOccurrence:v26 occurrenceDate:v27];

        [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
      }
    }
  }

  [v28 setIsInUse:0];
  [(NSMutableArray *)self->_reusableViews addObject:v28];
}

- (_NSRange)visibleRangeForOffset:(double)a3
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
  v9 = (a3 / weekWidth);
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

- (void)layoutCellsAnimated:(BOOL)a3
{
  v85 = a3;
  [(UIScrollView *)self->_weekScroller contentOffset];
  v4 = [(WeekViewController *)self visibleRangeForOffset:?];
  v6 = v5;
  [(UIScrollView *)self->_weekScroller bounds];
  v8 = v7;
  [(UIScrollView *)self->_weekScroller bounds];
  v10 = v9;
  v11 = [(WeekViewController *)self view];
  v12 = [v11 window];
  [v12 frame];
  v14 = v13;

  v15 = [(WeekViewController *)self view];
  v16 = [v15 window];
  [v16 frame];
  v18 = v17;

  if ([(WeekViewController *)self rotatingToPortrait]|| [(WeekViewController *)self rotatingToLandscape])
  {
    if ([(WeekViewController *)self rotatingToPortrait])
    {
      v19 = v14 > v18 || v8 > v10;
    }

    else
    {
      v20 = [(WeekViewController *)self rotatingToLandscape];
      v21 = v8 < v10;
      if (v14 < v18)
      {
        v21 = 1;
      }

      if (v20)
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
    v34 = [v33 weekView];
    v35 = [v34 firstVisibleSecond];
  }

  else
  {
    v35 = -1;
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
    v41 = v35 == -1;
  }

  if (!v41)
  {
    self->_lastScrollPositionSecond = v35;
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
  v91 = v85;
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
          v49 = [v46 weekView];
          [v49 setFirstVisibleSecond:lastScrollPositionSecond];
        }

        [(NSMutableArray *)self->_visibleWeeks insertObject:v47 atIndex:0];
        if ([(UIScrollView *)self->_weekScroller isTracking])
        {
          v50 = 1;
        }

        else
        {
          v50 = [(UIScrollView *)self->_weekScroller isScrollAnimating];
        }

        [v47 setAsyncLoading:v50];
        if ([v47 asyncLoading])
        {
          [v47 loadDataAsyncWithCompletion:v88 reverse:1];
        }

        else
        {
          v51 = [(WeekViewController *)self dateForWeek:v45];
          v52 = [(WeekViewController *)self displayedDate];
          v53 = [v51 differenceInDays:v52];

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
              v84 = [(WeekViewController *)self displayedDate];
              v57 = [v84 date];
              [v57 timeIntervalSince1970];
              v59 = v58;
              v60 = [v51 date];
              [v60 timeIntervalSince1970];
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
        v66 = [v63 weekView];
        [v66 setFirstVisibleSecond:v65];
      }

      [(NSMutableArray *)self->_visibleWeeks addObject:v64];
      if ([(UIScrollView *)self->_weekScroller isTracking])
      {
        v67 = 1;
      }

      else
      {
        v67 = [(UIScrollView *)self->_weekScroller isScrollAnimating];
      }

      [v64 setAsyncLoading:v67];
      if ([v64 asyncLoading])
      {
        [v64 loadDataAsyncWithCompletion:v88 reverse:0];
      }

      else
      {
        v68 = [(WeekViewController *)self dateForWeek:v28];
        v69 = [(WeekViewController *)self displayedDate];
        v70 = [v68 differenceInDays:v69];

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
            v87 = [(WeekViewController *)self displayedDate];
            v74 = [v87 date];
            [v74 timeIntervalSince1970];
            v75 = v62;
            v77 = v76;
            v78 = [v68 date];
            [v78 timeIntervalSince1970];
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
  [(WeekViewController *)self _updateHeaderHeightsAnimated:v85];
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
        v5 = [v3 superview];
        v6 = [v8 superview];

        if (v5 != v6)
        {
          break;
        }

        v7 = [v3 superview];
        [v7 insertSubview:v8 belowSubview:v3];

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
        v8 = [v7 weekView];
        v9 = [v8 hasAllDayEvents];

        if (v9)
        {
          v10 = [v7 weekView];
          v11 = [v10 allDayView];
          [v11 setNeedsLayout];
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (void)_updateTimeMarker
{
  v3 = [(WeekViewController *)self isTodayVisible];
  [(WeekTimeView *)self->_timeView setShowsTimeMarker:v3];
  [(WeekTimeView *)self->_timeView updateMarkerPosition];
  v4 = [(WeekViewController *)self _isLeadingEdgeToday];
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
        v11 = [v10 weekView];
        [v11 hideNowDot:v4];

        v12 = [v10 weekView];
        [v12 updateMarkerPosition];

        if (v3 & [v10 showsTimeMarker])
        {
          v13 = [v10 weekView];
          [v13 updateTimeMarkerForDayChange];
        }

        else
        {
          [v10 setShowsTimeMarker:v3];
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
        v20 = [v19 weekView];
        [v20 hideNowDot:v4];

        if (v3 & [v19 showsTimeMarker])
        {
          v21 = [v19 weekView];
          [v21 updateTimeMarkerForDayChange];
        }

        else
        {
          [v19 setShowsTimeMarker:v3];
        }
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  [(WeekViewController *)self _updateTimeMarkerExtensionColor:v4];
  if (v3)
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

        v7 = [*(*(&v9 + 1) + 8 * v6) weekView];
        v8 = [v7 allDayView];
        [v8 layoutIfNeeded];

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
  v2 = [(WeekViewController *)self earliestDateComponents];
  v3 = CUIKCalendar();
  v4 = [v3 dateFromComponents:v2];

  v5 = CUIKTodayDate();
  v6 = [v4 isEqualToDate:v5];

  return v6;
}

- (void)_updateTimeMarkerExtensionColor:(BOOL)a3
{
  if (a3)
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

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"EmptySearchBarNeedsResignFirstResponderNotification" object:self];

  self->_isUserScrolling = 1;
}

- (void)scrollViewDidScroll:(id)a3
{
  if (!self->_preventScrollUpdates)
  {
    [(WeekViewController *)self layoutCellsAnimated:[(WeekViewController *)self userInitiatedScroll]];
    if ([(WeekViewController *)self userInitiatedScroll])
    {
      [(WeekViewController *)self updateDisplayedDateForCurrentScrollOffset];
    }

    v4 = [(WeekViewController *)self _isLeadingEdgeToday];
    [(WeekViewController *)self _updateTimeMarkerExtensionColor:v4];
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

          v10 = [*(*(&v21 + 1) + 8 * v9) weekView];
          [v10 hideNowDot:v4];

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

          v16 = [*(*(&v17 + 1) + 8 * v15) weekView];
          [v16 hideNowDot:v4];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }
  }
}

- (void)snapTargetScrollOffset:(CGPoint *)a3 withVelocity:(CGPoint)a4
{
  x = a4.x;
  v7 = [(WeekViewController *)self displaysDatesSnappedToWeekBoundaries:a4.x];
  [(UIScrollView *)self->_weekScroller contentOffset];
  v8 = [(WeekViewController *)self dayDateAtPoint:?];
  v9 = [(WeekViewController *)self dayDateAtPoint:a3->x, a3->y];
  if (v7)
  {
    v22 = [v8 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];

    [v9 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];
  }

  else
  {
    v22 = [v8 calendarDateForDay];

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
        [v22 calendarDateByAddingWeeks:-1];
      }

      else
      {
        [v22 calendarDateByAddingDays:-1];
      }
      v19 = ;
      if ([v19 compare:v10] == 1)
      {
        v20 = [(WeekViewController *)self _snapDateForOffset:v7 snapToWeeks:a3->x, a3->y];
      }

      else
      {
        v20 = v10;
      }

      v18 = v20;

      goto LABEL_24;
    }

    v14 = a3->x;
    y = a3->y;
    v16 = self;
    v17 = 0;
  }

  else
  {
    if ([v22 compare:v10] != -1)
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

    v14 = a3->x;
    y = a3->y;
    v16 = self;
    v17 = v7;
  }

  v13 = [(WeekViewController *)v16 _snapDateForOffset:v17 snapToWeeks:v14, y];
LABEL_18:
  v18 = v13;
LABEL_24:
  [(WeekViewController *)self _xOffsetForDate:v18];
  a3->x = v21;
}

- (id)_snapDateForOffset:(CGPoint)a3 snapToWeeks:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(WeekViewController *)self dayDateAtPoint:?];
  if (a4)
  {
    v9 = [v8 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];

    [(WeekViewController *)self weekWidth];
    v11 = [(WeekViewController *)self dayDateAtPoint:x + v10 * 0.5, y];
    v12 = [v11 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];
    v8 = v9;
  }

  else
  {
    v11 = [(WeekViewController *)self dayDateAtPoint:x + 0.0, y];
    v12 = [v11 calendarDateForDay];
  }

  if ([v12 isEqual:v8])
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13;

  return v13;
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(WeekViewController *)self draggingDone];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  [(WeekViewController *)self draggingDone];
  self->_isUserScrolling = 0;

  [(WeekViewController *)self _updateHeaderHeightsAnimated:1];
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  [(WeekViewController *)self draggingDone];
  v4 = [(WeekViewController *)self earliestDateComponents];
  if (v4 || ([(WeekViewController *)self layoutCellsAnimated:0], [(WeekViewController *)self earliestDateComponents], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v4;
  }

  else
  {
    sub_100170224();
    v15 = 0;
  }

  v5 = CUIKCalendar();
  v6 = [v5 dateFromComponents:v15];

  v7 = [(WeekViewController *)self model];
  v8 = [v7 eventStore];
  v9 = [v8 timeZone];
  v10 = [EKCalendarDate calendarDateWithDate:v6 timeZone:v9];
  v11 = [v10 calendarDateByAddingDays:{-[WeekViewController daysInWeek](self, "daysInWeek")}];
  v12 = [v11 date];

  v13 = [NSDictionary dictionaryWithObjectsAndKeys:v6, @"WeekViewController_ScrollDidEndAnimationRangeStartKey", v12, @"WeekViewController_ScrollDidEndAnimationRangeEndKey", 0];
  v14 = +[NSNotificationCenter defaultCenter];
  [v14 postNotificationName:@"WeekViewController_ScrollDidEndAnimationNotification" object:self userInfo:v13];
}

- (void)draggingDone
{
  [(WeekViewController *)self updatePreferredReloadRange];
  [(WeekViewController *)self adjustVisibleAllDayOccurrenceLabelsAnimated:1];
  [(WeekViewController *)self _updateTimeMarker];
  v8 = [(WeekViewController *)self centerDateComponents];
  if (v8)
  {
    v3 = [(WeekViewController *)self model];
    v4 = [v3 calendar];
    v5 = [v4 timeZone];
    v6 = [EKCalendarDate calendarDateWithDateComponents:v8 timeZone:v5];

    CalAnalyticsSendEventLazy();
    v7 = [(WeekViewController *)self model];
    [v7 setSelectedDate:v6];
  }

  [(WeekViewController *)self updateDisplayedDateForCurrentScrollOffset];
  [(MainViewController *)self setSceneTitleNeedsUpdate];
  [(WeekViewController *)self _updateShouldAnnotateAppEntities];
}

- (void)_updateShouldAnnotateAppEntities
{
  v3 = [(CUIKCalendarModel *)self->super._model calendar];
  v4 = [(WeekViewController *)self earliestDateComponents];
  v5 = [v3 dateFromComponents:v4];
  cachedEarliestDate = self->_cachedEarliestDate;
  self->_cachedEarliestDate = v5;

  v7 = [(WeekViewController *)self _latestDateComponents];
  v8 = [v3 dateFromComponents:v7];
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
    v3 = [**(&v6[0] + 1) weekView];
    v4 = [v3 firstVisibleSecond];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFirstVisibleSecond:(int64_t)a3
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

        v9 = [*(*(&v10 + 1) + 8 * v8) weekView];
        [v9 setFirstVisibleSecond:a3];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)occurrencesChanged:(id)a3
{
  v15 = a3;
  v4 = [(NSMutableArray *)self->_visibleWeeks count];
  v5 = v15;
  if (v4)
  {
    v6 = [v15 userInfo];
    v7 = [v6 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeStartKey];
    v8 = [v6 objectForKey:CUIKCalendarModelDisplayedOccurrencesChangedRangeEndKey];
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

    v5 = v15;
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

  v9 = [(WeekViewController *)self view];
  v10 = [v9 window];
  v11 = [v10 windowScene];

  if (v11 && (![v11 activationState] || objc_msgSend(v11, "activationState") == 1) && self->_viewWillAppearCalled && (-[WeekViewController view](self, "view"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "window"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isRotating") | v6, v13, v12, (v14 & 1) == 0))
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
          v11 = [(WeekViewController *)self model];
          v12 = [v11 calendar];
          v13 = [v8 weekStartDate];
          v14 = [v12 dateFromComponents:v13];

          v15 = [v8 lastSecondOfWeek];
          v16 = [(NSDate *)self->_reloadDateRangeEnd compare:v14];
          v17 = [*(&self->super.super.super.super.isa + v9) compare:v15];
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
  v3 = [(WeekViewController *)self centerDateComponents];
  if (v3)
  {
    v14 = v3;
    v4 = [(WeekViewController *)self model];
    v5 = [v4 calendar];
    v6 = [v5 timeZone];
    v7 = [EKCalendarDate calendarDateWithDateComponents:v14 timeZone:v6];

    v8 = CUIKOneIndexedWeekStart();
    v9 = [v7 calendarDateForWeekWithWeekStart:v8];
    v10 = [v9 calendarDateForEndOfWeekWithWeekStart:v8];
    v11 = [(WeekViewController *)self model];
    v12 = [v9 date];
    v13 = [v10 date];
    [v11 setPreferredReloadStartDate:v12 endDate:v13];

    v3 = v14;
  }
}

- (id)weekView:(id)a3 allEventsForStartDate:(id)a4 endDate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(WeekViewController *)self model];
  v10 = [v9 occurrencesForStartDate:v8 endDate:v7 preSorted:1 waitForLoad:1];

  return v10;
}

- (id)weekView:(id)a3 eventsForStartDate:(id)a4 endDate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(WeekViewController *)self model];
  v10 = [v9 occurrencesForStartDate:v8 endDate:v7 preSorted:1 waitForLoad:0];

  return v10;
}

- (id)presentationControllerForEditMenu
{
  v2 = [(WeekViewController *)self currentPresentationController];
  v3 = [v2 presentedViewController];

  if (v3)
  {
    v4 = [v2 presentedViewController];
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  return v5;
}

- (id)selectedEventsForEditMenu
{
  v2 = [(WeekViewController *)self model];
  v3 = [v2 selectedOccurrences];

  return v3;
}

- (void)weekGroupAllDaySectionDidScroll:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_updatingAllDayContentOffset)
  {
    self->_updatingAllDayContentOffset = 1;
    v6 = [v4 weekView];
    v7 = [v6 allDayView];
    [v7 contentOffset];
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
            v18 = [v17 weekView];
            v19 = [v18 allDayView];
            [v19 setContentOffset:{v9, v11}];
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

- (id)weekGroupForWeekBefore:(id)a3
{
  if ([(NSMutableArray *)self->_visibleWeeks indexOfObject:a3]- 1 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_visibleWeeks objectAtIndex:?];
  }

  return v4;
}

- (id)weekGroupForWeekAfter:(id)a3
{
  v4 = [(NSMutableArray *)self->_visibleWeeks indexOfObject:a3];
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

- (void)weekGroup:(id)a3 didSelectEvent:(id)a4 userInitiated:(BOOL)a5 dateSelected:(id)a6
{
  v7 = a5;
  v9 = a4;
  v10 = a6;
  v11 = [(WeekViewController *)self model];
  v12 = [v11 pasteboardManager];
  v13 = [v9 startDate];
  [v12 setDateForPaste:v13];

  if (([(EKEventGestureController *)self->_eventGestureController dragGestureInProgress]& 1) == 0)
  {
    [(WeekViewController *)self _removeDateHighlight];
    v14 = [(EKEventGestureController *)self->_eventGestureController event];

    if (v14)
    {
      v15 = [(EKEventGestureController *)self->_eventGestureController event];
      v16 = [(EKEventGestureController *)self->_eventGestureController occurrenceDate];
      [(WeekViewController *)self undimOccurrence:v15 occurrenceDate:v16];

      [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
    }

    else if (v9)
    {
      if (v7)
      {
        v17 = [(WeekViewController *)self presentedViewController];
        v18 = [v17 isBeingDismissed];

        if (v18)
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
          if (v10)
          {
            v24 = @"Context_DateSelected";
            v25 = v10;
            v22 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
          }

          else
          {
            v22 = 0;
          }

          [(WeekViewController *)self showEvent:v9 animated:1 showMode:1 context:v22];
        }
      }

      else
      {
        v20 = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
        v21 = [v20 containsObject:v9];

        if ((v21 & 1) == 0)
        {
          [(CUIKCalendarModel *)self->super._model setSelectedOccurrence:v9];
        }
      }
    }
  }
}

- (void)weekGroup:(id)a3 didSelectEvents:(id)a4 userInitiated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  if (([(EKEventGestureController *)self->_eventGestureController dragGestureInProgress]& 1) == 0)
  {
    [(WeekViewController *)self _removeDateHighlight];
    v8 = [(EKEventGestureController *)self->_eventGestureController event];

    if (v8)
    {
      v9 = [(EKEventGestureController *)self->_eventGestureController event];
      v10 = [(EKEventGestureController *)self->_eventGestureController occurrenceDate];
      [(WeekViewController *)self undimOccurrence:v9 occurrenceDate:v10];

      [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
    }

    else if (v7)
    {
      if (v5)
      {
        v11 = [(WeekViewController *)self presentedViewController];
        v12 = [v11 isBeingDismissed];

        if (v12)
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
          [(WeekViewController *)self showEvents:v7 animated:1 showMode:1 context:0];
        }
      }

      else
      {
        v14 = [(CUIKCalendarModel *)self->super._model selectedOccurrences];
        v15 = [v14 isEqualToArray:v7];

        if ((v15 & 1) == 0)
        {
          [(CUIKCalendarModel *)self->super._model setSelectedOccurrences:v7];
        }
      }
    }
  }
}

- (void)weekGroup:(id)a3 pointerDidTargetOccurrences:(id)a4
{
  v9 = a4;
  if (([(EKEventGestureController *)self->_eventGestureController dragGestureInProgress]& 1) == 0)
  {
    [(WeekViewController *)self _removeDateHighlight];
    v5 = [(EKEventGestureController *)self->_eventGestureController event];

    if (v5)
    {
      v6 = [(EKEventGestureController *)self->_eventGestureController event];
      v7 = [(EKEventGestureController *)self->_eventGestureController occurrenceDate];
      [(WeekViewController *)self undimOccurrence:v6 occurrenceDate:v7];

      [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
    }

    else if (v9)
    {
      v8 = [(WeekViewController *)self model];
      [v8 setPointerTargetedOccurrences:v9];
    }
  }
}

- (void)didEditEvent:(id)a3 creationMethod:(unint64_t)a4
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 weekViewController:self didEditEvent:v9 creationMethod:a4];
  }
}

- (void)synchronizeWeekGroupScrollingToWeek:(id)a3
{
  v4 = a3;
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
          if (v10 != v4)
          {
            v11 = [v10 weekView];
            v12 = [v4 weekView];
            v13 = [v12 scrollView];
            [v13 contentOffset];
            [v11 setScrollerContentOffset:?];
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
  v14 = [v4 weekView];
  v15 = [v14 scrollView];
  [v15 contentOffset];
  v17 = v16;
  v19 = v18;
  v20 = [(WeekTimeView *)self->_timeView scrollView];
  [v20 setContentOffset:{v17, v19}];
}

- (void)weekGroupViewDidLayout:(id)a3
{
  v10 = a3;
  v4 = [(EKEventGestureController *)self->_eventGestureController event];
  if (v4 && [(WeekViewController *)self _weekGroup:v10 containsOccurrence:v4])
  {
    v5 = [v4 eventIdentifier];
    if (v5)
    {

LABEL_6:
      v6 = [(EKEventGestureController *)self->_eventGestureController draggingView];
      v7 = [v6 editContextMenuPresented];

      eventGestureController = self->_eventGestureController;
      v9 = [(EKEventGestureController *)eventGestureController occurrenceDate];
      [(EKEventGestureController *)eventGestureController forceStartWithOccurrence:v4 occurrenceDate:v9 shouldUpdateViewSource:1 shouldUpdateOrigin:1 shouldPresentEditMenu:v7];

      goto LABEL_7;
    }

    if ([v4 isNew])
    {
      goto LABEL_6;
    }

    [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  }

LABEL_7:
}

- (void)weekGroupViewOccurrenceLayoutDidChange:(id)a3
{
  [(EKEventGestureController *)self->_eventGestureController updateDraggingOccurrenceFrame];

  [(WeekViewController *)self _updateSelectedViewsToMatchModel];
}

- (BOOL)weekGroupViewShouldAnnotateAppEntities:(id)a3 onDayStarting:(id)a4
{
  v6 = a4;
  if ([a3 isInUse])
  {
    v7 = [v6 date];
    if ([v7 CalIsBeforeDate:self->_cachedEarliestDate])
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v8 = [v7 CalIsAfterDate:self->_cachedLatestDate] ^ 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)_weekGroup:(id)a3 containsOccurrence:(id)a4
{
  v5 = a3;
  v6 = [a4 startDate];
  v7 = [v5 containsDate:v6];

  return v7;
}

- (void)_setReduceLayoutProcessingForAnimation:(BOOL)a3
{
  v3 = a3;
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

        v9 = [*(*(&v11 + 1) + 8 * v8) weekView];
        v10 = [v9 content];
        [v10 setReduceLayoutProcessingForAnimation:v3];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_setHourHeightScale:(double)a3
{
  [(WeekViewController *)self maximumHourScale];
  if (v5 <= a3)
  {
    a3 = v5;
  }

  [(WeekViewController *)self minimumHourScale];
  if (a3 >= v6)
  {
    v6 = a3;
  }

  self->_weekViewHourHeightScale = v6;
  v7 = [(WeekViewController *)self view];
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
        v18 = [v17 weekView];
        v19 = [v18 scrollView];
        [v19 contentSize];
        v21 = v20;

        v22 = [v17 weekView];
        v23 = [v22 scrollView];
        [v23 setContentSize:{v21, v14}];

        if ((CalSolariumEnabled() & 1) == 0)
        {
          v24 = [v17 weekView];
          v25 = [v24 content];
          [v25 frame];
          v27 = v26;
          v29 = v28;

          v30 = [v17 weekView];
          v31 = [v30 content];
          [v31 bounds];
          Width = CGRectGetWidth(v46);

          v33 = [v17 weekView];
          v34 = [v33 content];
          [v34 setFrame:{v27, v29, Width, v14}];
        }

        v35 = [v17 weekView];
        v36 = [v35 content];
        [v36 setNeedsLayout];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v13);
  }

  [(WeekViewController *)self _updateTimeMarker];
  v37 = [(WeekViewController *)self visibleWeeks];
  v38 = [v37 count];

  if (v38)
  {
    v39 = [(WeekViewController *)self visibleWeeks];
    v40 = [v39 objectAtIndex:0];
    [(WeekViewController *)self synchronizeWeekGroupScrollingToWeek:v40];
  }
}

- (void)_weekScrollerDoubleTapped:(id)a3
{
  visibleWeeks = self->_visibleWeeks;
  v5 = a3;
  v44 = [(NSMutableArray *)visibleWeeks objectAtIndex:0];
  v6 = [v44 weekView];
  v7 = [v6 content];
  v8 = [v7 grid];

  v9 = [(WeekViewController *)self view];
  [v5 locationInView:v9];
  v11 = v10;

  [v5 locationInView:v8];
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
  v22 = [(CUIKCalendarModel *)self->super._model persistedSceneState];
  [v22 setWeekViewHourScale:v21];

  v23 = [(WeekViewController *)self view];
  [v23 convertPoint:v8 fromView:{v13, v15 * v17}];
  v25 = v24;

  v26 = v25 - v11;
  v27 = [v44 weekView];
  v28 = [v27 scrollView];
  [v28 contentOffset];
  v30 = v29;
  v32 = v31;

  v33 = v26 + v32;
  v34 = [(WeekViewController *)self view];
  [EKDayTimeView defaultHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:[(WeekViewController *)self viewInterfaceOrientation] withHourScale:self->_weekViewHourHeightScale];
  v36 = v35;

  v37 = [v44 weekView];
  v38 = [v37 scrollView];
  [v38 frame];
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

  v42 = [v44 weekView];
  v43 = [v42 scrollView];
  [v43 setContentOffset:0 animated:{v30, v40}];
}

- (double)minimumHourScale
{
  [(UIScrollView *)self->_weekScroller frame];
  v4 = v3;
  v5 = [(WeekViewController *)self view];
  [EKDayTimeView defaultHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:[(WeekViewController *)self viewInterfaceOrientation]];
  v7 = v6;

  return fmax(v4 / v7, 0.62);
}

- (void)_updateWeekViewContentHeight
{
  v3 = [(WeekViewController *)self view];
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
        v12 = [v11 weekView];
        v13 = [v12 scrollView];
        [v13 contentSize];
        v15 = v14;

        v16 = [v11 weekView];
        v17 = [v16 scrollView];
        [v17 setContentSize:{v15, v5}];

        v18 = [v11 weekView];
        v19 = [v18 content];
        [v19 frame];
        v21 = v20;
        v23 = v22;

        v24 = [v11 weekView];
        v25 = [v24 content];
        [v25 bounds];
        Width = CGRectGetWidth(v34);

        v27 = [v11 weekView];
        v28 = [v27 content];
        [v28 setFrame:{v21, v23, Width, v5}];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }
}

- (void)_weekScrollerPinched:(id)a3
{
  v72 = a3;
  v4 = [v72 state];
  if ((v4 - 3) <= 2)
  {
    v5 = [(WeekViewController *)self visibleWeeks];
    v6 = [v5 objectAtIndex:0];
    [(WeekViewController *)self synchronizeWeekGroupScrollingToWeek:v6];

    [(WeekViewController *)self _setReduceLayoutProcessingForAnimation:0];
    v7 = +[CUIKPreferences sharedPreferences];
    weekViewHourHeightScale = self->_weekViewHourHeightScale;
    *&weekViewHourHeightScale = weekViewHourHeightScale;
    v9 = [NSNumber numberWithFloat:weekViewHourHeightScale];
    [v7 setWeekViewHourScale:v9];

    v10 = self->_weekViewHourHeightScale;
    v11 = [(CUIKCalendarModel *)self->super._model persistedSceneState];
    [v11 setWeekViewHourScale:v10];

    [(WeekViewController *)self reloadData];
    v12 = [(WeekViewController *)self view];
    [v12 setNeedsLayout];
  }

  v13 = [v72 numberOfTouches];
  if ((v13 | 2) == 2)
  {
    v14 = v13;
    x = self->_lastPinchPoint1.x;
    y = self->_lastPinchPoint1.y;
    if (v13)
    {
      v17 = [(WeekViewController *)self view];
      [v72 locationOfTouch:0 inView:v17];
      self->_lastPinchPoint1.x = v18;
      self->_lastPinchPoint1.y = v19;
    }

    if (v4 == 2)
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
        [v72 scale];
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
      v41 = [v40 weekView];
      v42 = [v41 content];

      if (v14)
      {
        v43 = [(WeekViewController *)self view];
        [v42 convertPoint:v43 fromView:{x, y}];
        v45 = v44;
        v47 = v46;
      }

      else
      {
        [v72 locationInView:v42];
        v45 = v48;
        v47 = v49;
      }

      v50 = [(WeekViewController *)self view];
      [EKDayTimeView defaultHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:[(WeekViewController *)self viewInterfaceOrientation] withHourScale:self->_weekViewHourHeightScale];
      v52 = v51;

      [(WeekTimeView *)self->_timeView setHourHeightScale:self->_weekViewHourHeightScale];
      [(WeekViewController *)self _updateWeekViewContentHeight];
      v53 = [v40 weekView];
      v54 = [v53 scrollView];
      [v54 contentOffset];
      v56 = v55;
      v58 = v57;

      if (v14)
      {
        v59 = [(WeekViewController *)self view];
        [v59 convertPoint:v42 fromView:{v45, v28 * v47}];
        v61 = v60;

        v62 = v61 - self->_lastPinchPoint1.y;
      }

      else
      {
        [v72 locationInView:v42];
        v62 = v28 * v47 - v63;
      }

      v64 = v58 + v62;
      v65 = [v40 weekView];
      v66 = [v65 scrollView];
      [v66 frame];
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

      v71 = [v40 weekView];
      [v71 setScrollerContentOffset:{v56, v70}];

      [(WeekViewController *)self _updateTimeMarker];
      [(EKEventGestureController *)self->_eventGestureController updateDraggingOccurrenceFrame];
    }

    else if (v4 == 1)
    {
      if (v14)
      {
        pinchDistanceForGestureRecognizer();
        self->_lastPinchDistance.x = v20;
        self->_lastPinchDistance.y = v21;
      }

      else
      {
        [v72 scale];
        self->_lastPinchScale = v29;
      }

      [(WeekViewController *)self _setReduceLayoutProcessingForAnimation:1];
    }
  }

LABEL_49:
}

- (void)tappedOnDate:(id)a3
{
  v4 = a3;
  v7 = [(WeekViewController *)self model];
  v5 = [v7 pasteboardManager];
  v6 = [v4 date];

  [v5 setDateForPaste:v6];
}

- (void)adjustVisibleAllDayOccurrenceLabelsAnimated:(BOOL)a3
{
  v84 = a3;
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
        v9 = [v8 weekView];
        v10 = [v9 allDayView];

        [(UIScrollView *)self->_weekScroller bounds];
        [v10 convertRect:self->_weekScroller fromView:?];
        v87 = v12;
        v88 = v11;
        v85 = v14;
        v86 = v13;
        v15 = [(WeekViewController *)self model];
        v16 = [v15 calendar];
        v17 = [v8 weekStartDate];
        v18 = [v16 dateFromComponents:v17];

        v81 = v6;
        if (v6 < 1)
        {
          width = -1.0;
        }

        else
        {
          v19 = [(NSMutableArray *)self->_visibleWeeks objectAtIndex:v6 - 1];
          v20 = [(WeekViewController *)self view];
          [v19 frame];
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v29 = [v19 superview];
          [v20 convertRect:v29 fromView:{v22, v24, v26, v28}];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;

          v38 = [(WeekViewController *)self view];
          [(UIScrollView *)self->_weekScroller bounds];
          [v38 convertRect:self->_weekScroller fromView:?];
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
        v79 = v10;
        v47 = [v10 occurrenceViews];
        v48 = [v47 countByEnumeratingWithState:&v91 objects:v99 count:16];
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
                objc_enumerationMutation(v47);
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
              v68 = [v52 occurrence];
              v69 = [v68 startDate];
              v70 = [v69 compare:v18];

              if (v70 != -1)
              {
                goto LABEL_18;
              }

              if (width >= v89)
              {
                [v52 setHideText:{1, v89, width}];
LABEL_18:
                v71 = 0;
                goto LABEL_19;
              }

              v71 = [v52 hideText];
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
                v73 = [(WeekViewController *)self view];
                [v52 convertPoint:v73 fromView:{v83, 0.0}];
                v75 = v74;

                [v52 fadeInContentViewAt:v84 minWidth:v75 animated:v89];
              }

              if (v71)
              {
                [v52 setHideText:0 animate:0];
              }
            }

            v49 = [v47 countByEnumeratingWithState:&v91 objects:v99 count:16];
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

  v4 = [(WeekViewController *)self weekViewClass];
  v5 = [(WeekViewController *)self viewInterfaceOrientation];
  v6 = [(MainViewController *)self window];
  [(objc_class *)v4 dayWidthForOrientation:v5 withViewInViewHierarchy:v6];
  v8 = v7;

  return v8;
}

- (double)_xOffsetForDate:(id)a3
{
  v4 = a3;
  [(WeekViewController *)self loadViewIfNeeded];
  weekWidth = self->_weekWidth;
  [(WeekViewController *)self dayWidth];
  v7 = v6;
  v8 = [v4 calendarDateForDay];
  v9 = [(EKCalendarDate *)self->_referenceWeekStart calendarDateForDay];
  v10 = [v8 differenceInDays:v9];
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
    v14 = [(WeekViewController *)self daysInWeek];
    v15 = 0.0;
    while (v12 > v14)
    {
      v15 = v13 + v15;
      v12 -= [(WeekViewController *)self daysInWeek];
      v14 = [(WeekViewController *)self daysInWeek];
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

    v19 = [(WeekViewController *)self weekViewClass];
    v20 = [(WeekViewController *)self viewInterfaceOrientation];
    v21 = [(WeekViewController *)self view];
    v22 = [(objc_class *)v19 displayedDaysForOrientation:v20 withViewInViewHierarchy:v21];

    if (v22 != [(WeekViewController *)self daysInWeek])
    {
      v16 = v16 + ([(WeekViewController *)self daysInWeek]- v22) * v7;
    }
  }

  return weekWidth * 27040.0 + v16;
}

- (double)scrollToDisplayedDateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(WeekViewController *)self displaysDatesSnappedToWeekBoundaries];
  v6 = self->_displayedDate;
  v7 = v6;
  if (self->_weekViewStartsOnToday)
  {
    goto LABEL_2;
  }

  if (!v5)
  {
    v8 = [(EKCalendarDate *)v6 calendarDateByAddingDays:[(WeekViewController *)self]];

    goto LABEL_8;
  }

  v9 = [(EKCalendarDate *)v6 dayOfWeek];
  if (v9 == CUIKOneIndexedWeekStart())
  {
LABEL_2:
    v8 = v7;
  }

  else
  {
    do
    {
      v8 = [(EKCalendarDate *)v7 calendarDateByAddingDays:-1];

      v10 = [v8 dayOfWeek];
      v7 = v8;
    }

    while (v10 != CUIKOneIndexedWeekStart());
  }

LABEL_8:
  [(WeekViewController *)self _xOffsetForDate:v8];
  v12 = v11;
  [(UIScrollView *)self->_weekScroller setContentOffset:v3 animated:?];
  if (!v3 && self->_viewIsVisible)
  {
    [(WeekViewController *)self scrollViewDidEndScrollingAnimation:self->_weekScroller];
  }

  return v12;
}

- (void)_scrollEventIntoView:(id)a3 animated:(BOOL)a4 durationOverride:(double)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100089A34;
  v23[3] = &unk_10020EDB0;
  v11 = a6;
  v24 = v11;
  v12 = objc_retainBlock(v23);
  v13 = v12;
  if (v10)
  {
    v14 = [(WeekViewController *)self _weekGroupForEvent:v10 occurrenceDate:0];
    if (!v14)
    {
      [v10 startDate];
      v15 = v22 = v8;
      v16 = [(WeekViewController *)self model];
      v17 = [v16 eventStore];
      v18 = [v17 timeZone];
      v19 = [EKCalendarDate calendarDateWithDate:v15 timeZone:v18];

      v8 = v22;
      [(WeekViewController *)self setDisplayedDate:v19 animated:v22];
      v14 = [(WeekViewController *)self _weekGroupForEvent:v10 occurrenceDate:0];
    }

    if (([v10 isAllDay] & 1) != 0 || !v14)
    {
      v13[2](v13, 0);
    }

    else
    {
      v20 = [v14 weekView];
      v21 = v20;
      if (a5 > 0.0 && v8)
      {
        [v20 scrollToEvent:v10 animateWithDuration:v11 completion:a5];
      }

      else
      {
        [v20 scrollToEvent:v10 animated:v8 completion:v11];
      }
    }
  }

  else
  {
    (v12[2])(v12, 0);
  }
}

- (void)scrollToCurrentTimeOfDayAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = CUIKNowComponents();
  -[WeekViewController _scrollToSecond:animated:completion:](self, "_scrollToSecond:animated:completion:", [v5 second] + 3600 * objc_msgSend(v5, "hour") + 60 * objc_msgSend(v5, "minute"), v3, 0);
}

- (void)_scrollToSecond:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
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

        v14 = [*(*(&v15 + 1) + 8 * v13) weekView];
        [v14 scrollToSecond:a3 animated:v5 completion:v8];

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
  v3 = [(WeekViewController *)self weekViewClass];
  v4 = [(WeekViewController *)self viewInterfaceOrientation];
  v5 = [(WeekViewController *)self view];
  v6 = vcvtmd_u64_f64([(objc_class *)v3 displayedDaysForOrientation:v4 withViewInViewHierarchy:v5]/ 2.001);

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
    v10 = [(EKCalendarDate *)self->_displayedDate date];
    v4 = CUIKCalendar();
    v5 = [v4 component:0x2000 fromDate:v10];

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

- (void)setDisplayedDate:(id)a3 forceScroll:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v14 = v8;
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

    v8 = v14;
  }

  v11 = [v8 copy];
  displayedDate = self->_displayedDate;
  self->_displayedDate = v11;

  [(WeekViewController *)self updateWeekNumber];
  v13 = [v14 date];
  if (![(WeekViewController *)self dateIsVisible:v13]|| self->_weekViewStartsOnToday)
  {

LABEL_9:
    [(WeekViewController *)self scrollToDisplayedDateAnimated:v5];
    goto LABEL_10;
  }

  if (a4)
  {
    goto LABEL_9;
  }

LABEL_10:
  [(WeekViewController *)self updateBannerDateStrings:v14];
  [(WeekViewController *)self updatePreferredReloadRange];
}

- (void)updateDisplayedDateForCurrentScrollOffset
{
  v3 = [(WeekViewController *)self centerDateComponents];
  if (v3)
  {
    v9 = v3;
    v4 = [(WeekViewController *)self model];
    v5 = [v4 calendar];
    v6 = [v5 timeZone];
    v7 = [EKCalendarDate calendarDateWithDateComponents:v9 timeZone:v6];

    if (![(EKCalendarDate *)self->_displayedDate isEqual:v7]|| (!self->_displayedDate ? (v8 = v7 == 0) : (v8 = 1), !v8))
    {
      objc_storeStrong(&self->_displayedDate, v7);
      [(WeekViewController *)self displayedDateChanged:self->_displayedDate userInitiated:[(WeekViewController *)self userInitiatedScroll]];
    }

    v3 = v9;
  }
}

- (void)displayedDateChanged:(id)a3 userInitiated:(BOOL)a4
{
  v5 = a3;
  [(WeekViewController *)self updateWeekNumber];
  [(WeekViewController *)self updateBannerDateStrings:v5];

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

- (id)_weekGroupForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (id)dateAtPoint:(CGPoint)a3 isAllDay:(BOOL *)a4 requireAllDayRegionInsistence:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  v10 = [(WeekViewController *)self _weekGroupForPoint:?];
  [(UIScrollView *)self->_weekScroller convertPoint:v10 toView:x, y];
  v11 = [v10 dateAtPoint:a4 isAllDay:v5 requireAllDayRegionInsistence:?];

  return v11;
}

- (id)dayDateAtPoint:(CGPoint)a3
{
  x = a3.x;
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
      v11 = [(WeekViewController *)self weekViewClass];
      v12 = [(WeekViewController *)self viewInterfaceOrientation];
      v13 = [(WeekViewController *)self view];
      v14 = [(objc_class *)v11 displayedDaysForOrientation:v12 withViewInViewHierarchy:v13];
      v15 = [(WeekViewController *)self daysInWeek];

      if (v14 != v15)
      {
        v16 = [(WeekViewController *)self daysInWeek];
        v17 = [(WeekViewController *)self weekViewClass];
        v18 = [(WeekViewController *)self viewInterfaceOrientation];
        v19 = [(WeekViewController *)self view];
        v10 += v16 + ~[(objc_class *)v17 displayedDaysForOrientation:v18 withViewInViewHierarchy:v19];
      }
    }

    v7 = [(EKCalendarDate *)self->_referenceWeekStart calendarDateByAddingDays:v10];
  }

  return v7;
}

- (CGPoint)pointAtDate:(double)a3 isAllDay:(BOOL)a4
{
  v4 = a4;
  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:a3];
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
          [v12 pointAtDate:v6 isAllDay:v4];
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

- (id)_weekGroupForEvent:(id)a3 occurrenceDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
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
          v13 = [v12 occurrenceViewForEvent:v6 occurrenceDate:v7 forceMatchingContentSection:{0, v15}];

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

- (id)occurrenceViewAtPoint:(CGPoint)a3 ignoreSelectedCopyView:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(WeekViewController *)self _weekGroupForPoint:?];
  [(UIScrollView *)self->_weekScroller convertPoint:v8 toView:x, y];
  v9 = [v8 occurrenceViewAtPoint:v4 ignoreSelectedCopyView:?];

  return v9;
}

- (void)editorDidDeleteEvent:(id)a3
{
  eventGestureController = self->_eventGestureController;
  v5 = a3;
  v6 = [(EKEventGestureController *)eventGestureController occurrenceDate];
  [(WeekViewController *)self undimOccurrence:v5 occurrenceDate:v6];

  v7 = self->_eventGestureController;

  [(EKEventGestureController *)v7 endForcedStart:0];
}

- (void)editorDidCancelEditingEvent:(id)a3
{
  eventGestureController = self->_eventGestureController;
  v5 = a3;
  v6 = [(EKEventGestureController *)eventGestureController occurrenceDate];
  [(WeekViewController *)self undimOccurrence:v5 occurrenceDate:v6];

  v7 = self->_eventGestureController;

  [(EKEventGestureController *)v7 endForcedStart:0];
}

- (void)eventGestureController:(id)a3 addViewToScroller:(id)a4 isAllDay:(BOOL)a5
{
  v5 = a5;
  v12 = a4;
  v7 = [(UIScrollView *)v12 superview];
  weekScroller = v12;
  if (!v7)
  {
    weekScroller = self->_weekScroller;
  }

  v9 = [(UIScrollView *)weekScroller superview];

  [(UIScrollView *)v12 frame];
  MidX = CGRectGetMidX(v14);
  [(UIScrollView *)v12 frame];
  [v9 convertPoint:self->_weekScroller toView:{MidX, CGRectGetMidY(v15)}];
  v11 = [(WeekViewController *)self _weekGroupForPoint:?];
  [v11 addViewToScroller:v12 isAllDay:v5];
}

- (BOOL)hasCorrectParentForDraggingView:(id)a3 isAllDay:(BOOL)a4
{
  v4 = a4;
  weekScroller = self->_weekScroller;
  v7 = a3;
  v8 = [(UIScrollView *)weekScroller superview];
  [v7 frame];
  [v8 convertPoint:self->_weekScroller toView:?];
  v10 = v9;
  v12 = v11;

  v13 = [(WeekViewController *)self _weekGroupForPoint:v10, v12];
  LOBYTE(v4) = [v13 scrollerIsParentOfView:v7 isAllDay:v4];

  return v4;
}

- (void)highlightDayViewCalendarDate:(id)a3 isAllDay:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = [(WeekTimeView *)self->_timeView timeView];
    [v8 setHighlightedHour:-1.0];

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
    v14 = [v6 hour];
    v15 = ([v7 minute] + 60 * v14) / 60.0;
    v16 = [(WeekTimeView *)self->_timeView timeView];
    [v16 setHighlightedHour:v15];

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
          v22 = [v7 date];
          v23 = [v21 containsDate:v22];

          if (v23)
          {
            v24 = [v7 allComponents];
            [v21 setHighlightedDateComponents:v24];
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

- (void)_highlightEvent:(id)a3 dayViewDate:(double)a4 isAllDay:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v12 = +[NSTimeZone defaultTimeZone];
  v8 = [(WeekViewController *)self eventGestureController];
  [v8 currentDragSnappingType];

  CalSnapDateTo15MinuteOr5MinuteInterval();
  v10 = v9;

  v11 = [EKCalendarDate calendarDateWithAbsoluteTime:v12 timeZone:v10];
  [(WeekViewController *)self highlightDayViewCalendarDate:v11 isAllDay:v5];
}

- (void)_removeDateHighlight
{
  v3 = [EKCalendarDate calendarDateWithAbsoluteTime:0 timeZone:0.0];
  [(WeekViewController *)self highlightDayViewCalendarDate:v3 isAllDay:0];
}

- (void)dimOccurrence:(id)a3 occurrenceDate:(id)a4
{
  v6 = a3;
  v9 = [(WeekViewController *)self _weekGroupForEvent:v6 occurrenceDate:a4];
  v7 = [v9 weekView];
  v8 = [v7 content];
  [v8 setDimmedOccurrence:v6];
}

- (void)undimOccurrence:(id)a3 occurrenceDate:(id)a4
{
  v6 = [(WeekViewController *)self _weekGroupForEvent:a3 occurrenceDate:a4];
  v4 = [v6 weekView];
  v5 = [v4 content];
  [v5 setDimmedOccurrence:0];
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

        v8 = [*(*(&v13 + 1) + 8 * i) weekView];
        v9 = [v8 scrollView];
        [v9 adjustedContentInset];
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

- (double)eventGestureController:(id)a3 convertXForMargin:(double)a4
{
  weekScroller = self->_weekScroller;
  v6 = [(UIScrollView *)weekScroller superview];
  [(UIScrollView *)weekScroller convertPoint:v6 toView:a4, 0.0];
  v8 = v7;

  return v8;
}

- (CGRect)marginFrameForEventGestureController:(id)a3
{
  v3 = [(UIScrollView *)self->_weekScroller superview];
  [v3 frame];
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

- (double)timedRegionOriginForEventGestureController:(id)a3
{
  v4 = [(WeekViewController *)self touchTrackingViewForEventGestureController:a3];
  v5 = [(WeekViewController *)self _earliestWeekGroup];
  v6 = [v5 weekView];
  v7 = [v6 allDayView];

  [v7 bounds];
  [v4 convertRect:v7 fromView:?];
  v8 = CGRectGetMaxY(v10) + 1.0;

  return v8;
}

- (void)eventGestureController:(id)a3 requestsPresentationOfViewController:(id)a4
{
  v5 = a4;
  v7 = [[UnadaptableNavigationController alloc] initWithRootViewController:v5];

  [(UnadaptableNavigationController *)v7 setModalPresentationStyle:2];
  v6 = [(WeekViewController *)self currentPresentationController];
  [v6 presentViewController:v7 animated:1 completion:0];
}

- (UIEdgeInsets)pageChangeMarginsForEventGestureController:(id)a3
{
  v4 = kLongPressPageChangeDelayMargin;
  v5 = [(WeekViewController *)self timeView];

  v6 = v4;
  if (v5)
  {
    v7 = [(WeekViewController *)self timeView];
    [v7 frame];
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

- (BOOL)usesSmallTextForIsCompact:(BOOL)a3
{
  v3 = a3;
  v4 = [(WeekViewController *)self weekViewClass];

  return [(objc_class *)v4 usesSmallTextForIsCompact:v3];
}

- (id)createOccurrenceViewForEventGestureController:(id)a3
{
  v4 = [[EKDayOccurrenceView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v4 setDelegate:self];
  [v4 setUsesSmallText:{-[WeekViewController usesSmallTextForIsCompact:](self, "usesSmallTextForIsCompact:", 1)}];
  return v4;
}

- (id)createEventForEventGestureController:(id)a3
{
  CalAnalyticsSendEvent();

  return [(WeekViewController *)self _newEvent];
}

- (double)eventGestureController:(id)a3 yPositionPerhapsMatchingAllDayOccurrence:(id)a4 atPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v10 = [(WeekViewController *)self touchTrackingViewForEventGestureController:a3];
  v11 = [(WeekViewController *)self _earliestWeekGroup];
  v12 = [v11 weekView];

  [v12 convertPoint:v10 fromView:{x, y}];
  v14 = v13;
  v16 = v15;
  v17 = [(WeekViewController *)self _latestWeekGroup];
  v18 = [v17 weekView];

  [v18 convertPoint:v10 fromView:{x, y}];
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
    v27 = v12;
  }

  else
  {
    v27 = v18;
  }

  [v27 yPositionPerhapsMatchingAllDayOccurrence:v9 atPoint:{v25, v26}];
  v29 = v28;

  [v10 convertPoint:v27 fromView:{0.0, v29}];
  v31 = v30;

  return v31;
}

- (id)eventGestureController:(id)a3 occurrenceViewForOccurrence:(id)a4 occurrenceDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v12 = v9;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  [(NSMutableArray *)visibleWeeks enumerateObjectsUsingBlock:v16];
  v14 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v14;
}

- (BOOL)eventGestureController:(id)a3 isAllDayAtPoint:(CGPoint)a4 requireInsistence:(BOOL)a5
{
  v7 = 0;
  v5 = [(WeekViewController *)self dateAtPoint:&v7 isAllDay:a5 requireAllDayRegionInsistence:a4.x, a4.y];
  return v7;
}

- (double)eventGestureController:(id)a3 dateAtPoint:(CGPoint)a4
{
  v4 = [(WeekViewController *)self dateAtPoint:0 isAllDay:a4.x, a4.y];
  [v4 absoluteTime];
  v6 = v5;

  return v6;
}

- (CGPoint)eventGestureController:(id)a3 pointAtDate:(double)a4 isAllDay:(BOOL)a5
{
  [(WeekViewController *)self pointAtDate:a5 isAllDay:a4];
  result.y = v6;
  result.x = v5;
  return result;
}

- (double)eventGestureController:(id)a3 widthForOccurrenceViewOfDays:(unint64_t)a4
{
  v5 = [(WeekViewController *)self _earliestWeekGroup];
  v6 = [v5 weekView];
  v7 = [v6 content];
  [v7 fixedDayWidth];
  v9 = v8 * a4;

  return v9 + -4.0;
}

- (double)eventGestureController:(id)a3 heightForOccurrenceViewOfDuration:(double)a4
{
  v5 = [(WeekViewController *)self view];
  [EKDayTimeView hourHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:[(WeekViewController *)self viewInterfaceOrientation]];

  +[EKDayOccurrenceView bottomShadowMargin];
  CalRoundToScreenScale();
  v7 = v6;
  v8 = [(WeekViewController *)self view];
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

- (double)eventGestureController:(id)a3 heightForAllDayOccurrenceView:(id)a4
{
  v5 = a4;
  v6 = [(WeekViewController *)self view];
  [EKDayOccurrenceView minimumHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:[(WeekViewController *)self viewInterfaceOrientation] isAllDay:1 usesSmallText:[(WeekViewController *)self usesSmallTextForIsCompact:1]];
  v8 = v7;

  v9 = [v5 currentImageState];
  v10 = [v9 requiresLanguageAwarePadding];

  if (v10)
  {
    v11 = [v5 currentImageState];
    [v11 totalLanguageAwareHeightPadding];
    v8 = v8 + v12;
  }

  return v8;
}

- (BOOL)eventGestureControllerShouldAllowLongPress:(id)a3
{
  v4 = [(WeekViewController *)self model];
  v5 = [v4 defaultCalendarForNewEvents];

  if (v5)
  {
    return [(EKEventCreationGestureController *)self->_eventCreationController currentlyCreatingEvent]^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)eventGestureController:(id)a3 didSetUpAtDate:(double)a4 isAllDay:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [v8 event];
  [(WeekViewController *)self _highlightEvent:v9 dayViewDate:v5 isAllDay:a4];

  v10 = [v8 draggingView];

  v11 = [(UIScrollView *)self->_weekScroller superview];
  CalSwitchViewToSuperview();

  previousGestureDate = self->_previousGestureDate;
  self->_previousGestureDate = 0;
}

- (void)eventGestureController:(id)a3 didMoveToDate:(double)a4 isAllDay:(BOOL)a5
{
  v5 = a5;
  v17 = a3;
  v8 = +[NSTimeZone defaultTimeZone];
  v9 = [EKCalendarDate calendarDateWithAbsoluteTime:v8 timeZone:a4];
  v10 = [v9 allComponents];
  previousGestureDate = self->_previousGestureDate;
  if (!previousGestureDate || (v12 = [(NSDateComponents *)previousGestureDate era], v12 != [(NSDateComponents *)v10 era]) || (v13 = [(NSDateComponents *)self->_previousGestureDate month], v13 != [(NSDateComponents *)v10 month]) || (v14 = [(NSDateComponents *)self->_previousGestureDate day], v14 != [(NSDateComponents *)v10 day]))
  {
    [v17 didCrossDragBoundary:2];
  }

  v15 = [v17 event];
  [(WeekViewController *)self _highlightEvent:v15 dayViewDate:v5 isAllDay:a4];

  v16 = self->_previousGestureDate;
  self->_previousGestureDate = v10;
}

- (BOOL)eventGestureController:(id)a3 didCommitOccurrence:(id)a4 toDate:(double)a5 isAllDay:(BOOL)a6 span:(int64_t)a7
{
  v9 = a4;
  [(WeekViewController *)self updatePreferredReloadRange];
  if (![v9 isNew])
  {
    CalAnalyticsSendEvent();
    v11 = +[UIApplication sharedApplication];
    if ([v11 optionKeyIsDown] && (v32 = v9, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v32, 1), v14 = objc_claimAutoreleasedReturnValue(), v15 = +[CUIKPasteboardUtilities allEventsValidForAction:fromEvents:](CUIKPasteboardUtilities, "allEventsValidForAction:fromEvents:", 2, v14), v14, v15))
    {
      v16 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "duplicating event(s) in week view because option key is down", buf, 2u);
      }

      v17 = [(WeekViewController *)self model];
      v18 = [v17 pasteboardManager];
      v19 = [v9 startDate];
      [v18 setDateForPaste:v19];

      v20 = [(WeekViewController *)self model];
      v21 = [v20 pasteboardManager];
      [v21 setCalendarForPaste:0];

      v22 = [(WeekViewController *)self pasteboardManager];
      v23 = [NSSet setWithObject:v9];
      [v22 duplicateEvents:v23 withDateMode:1 delegate:self];
    }

    else
    {
      v24 = [(WeekViewController *)self EKUI_editor];
      v29 = 0;
      v25 = [v24 saveEvent:v9 span:a7 error:&v29];
      v22 = v29;

      if ((v25 & 1) == 0)
      {
        v26 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v31 = v22;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Error moving event: %@", buf, 0xCu);
        }
      }
    }

    goto LABEL_15;
  }

  v10 = [(WeekViewController *)self presentedViewController];

  if (!v10)
  {
    v11 = +[EKEventEditor defaultTitleForCalendarItem];
    v12 = [v9 title];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      [v9 setTitle:&stru_1002133B8];
    }

    [(WeekViewController *)self didEditEvent:v9 creationMethod:1];
LABEL_15:
  }

  [(WeekViewController *)self scrollToDisplayedDateAnimated:1];
  [(WeekViewController *)self _removeDateHighlight];
  previousGestureDate = self->_previousGestureDate;
  self->_previousGestureDate = 0;

  return 1;
}

- (void)eventGestureControllerDidEndDragSession:(id)a3
{
  previousGestureDate = self->_previousGestureDate;
  self->_previousGestureDate = 0;

  [(WeekViewController *)self _removeDateHighlight];
}

- (void)eventGestureController:(id)a3 didCancelEditingOccurrence:(id)a4 fadedOut:(BOOL)a5
{
  v17 = a3;
  v8 = a4;
  [(WeekViewController *)self _removeDateHighlight];
  previousGestureDate = self->_previousGestureDate;
  self->_previousGestureDate = 0;

  v10 = [(WeekViewController *)self view];
  [v10 alpha];
  v12 = v11;

  if (v12 > 0.0)
  {
    if (a5)
    {
      if (([v8 isNew] & 1) == 0)
      {
        v13 = [v17 occurrenceDate];
        [(WeekViewController *)self undimOccurrence:v8 occurrenceDate:v13];

        [v17 endForcedStart:0];
      }
    }

    else
    {
      v14 = [v17 occurrenceDate];
      [v17 forceStartWithOccurrence:v8 occurrenceDate:v14 shouldUpdateViewSource:0 shouldUpdateOrigin:1 shouldPresentEditMenu:1];

      v15 = [v17 event];
      v16 = [v17 occurrenceDate];
      [(WeekViewController *)self dimOccurrence:v15 occurrenceDate:v16];
    }
  }
}

- (void)eventGestureController:(id)a3 didSingleTapOccurrence:(id)a4 shouldExtendSelection:(BOOL)a5
{
  v17 = a4;
  v8 = a3;
  [(WeekViewController *)self _removeDateHighlight];
  if (a5)
  {
    v9 = [v8 event];
    v10 = [v8 occurrenceDate];
    [(WeekViewController *)self undimOccurrence:v9 occurrenceDate:v10];

    [v8 endForcedStart:0];
    v8 = [(WeekViewController *)self occurrenceViewForEvent:v17 occurrenceDate:0 forceMatchingContentSection:0];
    if ([(NSMutableArray *)self->_selectedOccurrenceViews containsObject:v8])
    {
      [(WeekViewController *)self _deselectOccurrenceView:v8];
    }

    else
    {
      [(WeekViewController *)self _selectOccurrenceView:v8];
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      v14 = [(EKEventGestureController *)self->_eventGestureController event];
      [v13 performSelector:"weekViewController:didSelectEvent:" withObject:self withObject:v14];
    }

    v15 = [v8 event];
    v16 = [v8 occurrenceDate];
    [(WeekViewController *)self undimOccurrence:v15 occurrenceDate:v16];

    [v8 endForcedStart:0];
  }
}

- (BOOL)didScrollWhenEventGestureController:(id)a3 scrollTimerFiredToMoveLeft:(BOOL)a4 right:(BOOL)a5 vertically:(BOOL)a6 towardPoint:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  v9 = a6;
  v10 = a5;
  v13 = a3;
  if (a4 || v10)
  {
    [(UIScrollView *)self->_weekScroller contentOffset];
    v27 = v26;
    v29 = v28;
    [(WeekViewController *)self dayWidth];
    if (!v10)
    {
      v30 = -v30;
    }

    weekScroller = self->_weekScroller;
    v25 = 1;
    [(UIScrollView *)weekScroller setContentOffset:1 animated:v27 + v30, v29];
  }

  else if (v9)
  {
    v14 = [(WeekViewController *)self _weekGroupForPoint:x, y];
    [(UIScrollView *)self->_weekScroller convertPoint:v14 toView:x, y];
    v16 = v15;
    v18 = v17;
    v19 = [v14 weekView];
    [v14 convertPoint:v19 toView:{v16, v18}];
    v21 = v20;
    v23 = v22;

    v24 = [v14 weekView];
    v25 = [v24 scrollTowardPoint:{v21, v23}];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)emptySpaceClickedOnDate:(id)a3
{
  v4 = a3;
  if (([(EKEventGestureController *)self->_eventGestureController dragGestureInProgress]& 1) == 0)
  {
    [(WeekViewController *)self _removeDateHighlight];
    [(WeekViewController *)self tappedOnDate:v4];
    [(WeekViewController *)self cleanupSelectionState];
  }
}

- (void)setReceiveTapsInHeader:(BOOL)a3
{
  if (self->_receiveTapsInHeader != a3)
  {
    v3 = a3;
    self->_receiveTapsInHeader = a3;
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

          v9 = [*(*(&v11 + 1) + 8 * v8) weekView];
          v10 = [v9 allDayView];
          [v10 setReceiveTapsInHeader:v3];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
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

- (BOOL)creationGestureController:(id)a3 canActivateAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if (([(EKEventGestureController *)self->_eventGestureController dragGestureInProgress]& 1) != 0)
  {
    return 0;
  }

  v7 = [(EKEventGestureController *)self->_eventGestureController draggingView];

  if (v7)
  {
    return 0;
  }

  v10 = [(MainViewController *)self shownEventViewController];
  if (v10)
  {
    v8 = 0;
LABEL_7:

    return v8;
  }

  v11 = [(MainViewController *)self shownEventEditViewController];

  if (!v11)
  {
    v12 = [(WeekViewController *)self _parentViewForCreationGesturePreview];
    [v12 convertPoint:self->_weekScroller toView:{x, y}];
    v14 = v13;
    v16 = v15;

    v10 = [(WeekViewController *)self occurrenceViewAtPoint:0 ignoreSelectedCopyView:v14, v16];
    v8 = v10 == 0;
    goto LABEL_7;
  }

  return 0;
}

- (id)creationGestureController:(id)a3 requestedPreviewForEvent:(id)a4
{
  v5 = a4;
  v6 = [[EKDayOccurrenceView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v6 setOccurrence:v5];

  [v6 setUsesSmallText:{-[WeekViewController usesSmallTextForIsCompact:](self, "usesSmallTextForIsCompact:", 1)}];
  [v6 setSelected:1];
  return v6;
}

- (double)creationGestureController:(id)a3 requestedXCoordinateForEventPreviewAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(WeekViewController *)self _parentViewForCreationGesturePreview];
  [(UIScrollView *)self->_weekScroller convertPoint:v7 fromView:x, y];
  v8 = [(WeekViewController *)self dateAtPoint:0 isAllDay:0 requireAllDayRegionInsistence:?];
  [(WeekViewController *)self _xOffsetForDate:v8];
  [v7 convertPoint:self->_weekScroller fromView:?];
  v10 = v9;

  return v10;
}

- (CGPoint)creationGestureController:(id)a3 requestsPointForDate:(id)a4
{
  [a4 timeIntervalSinceReferenceDate];
  [(WeekViewController *)self pointAtDate:0 isAllDay:?];
  v6 = v5;
  v8 = v7;
  v9 = [(WeekViewController *)self _parentViewForCreationGesturePreview];
  [v9 convertPoint:self->_weekScroller fromView:{v6, v8}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)creationGestureController:(id)a3 didResizeToDate:(id)a4
{
  [a4 timeIntervalSinceReferenceDate];

  [(WeekViewController *)self _highlightEvent:0 dayViewDate:0 isAllDay:?];
}

- (id)creationGestureController:(id)a3 dateForPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  weekScroller = self->_weekScroller;
  v8 = [(WeekViewController *)self _parentViewForCreationGesturePreview];
  [(UIScrollView *)weekScroller convertPoint:v8 fromView:x, y];
  v10 = v9;
  v12 = v11;

  v13 = [(WeekViewController *)self dateAtPoint:0 isAllDay:v10, v12];
  v14 = [v13 date];

  return v14;
}

- (id)_newEvent
{
  v3 = [(WeekViewController *)self model];
  v4 = [v3 eventStore];
  v5 = [EKEvent eventWithEventStore:v4];

  v6 = +[EKEventEditor defaultTitleForCalendarItem];
  [v5 setTitle:v6];

  v7 = [(WeekViewController *)self model];
  v8 = [v7 defaultCalendarForNewEvents];
  [v5 setCalendar:v8];

  return v5;
}

- (void)creationGestureController:(id)a3 didCreateNewEvent:(id)a4
{
  v5 = a4;
  [(WeekViewController *)self _removeDateHighlight];
  [(WeekViewController *)self createdNewEventUsingCreationGesture:v5];
}

- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  v19 = a3;
  [v19 setDelegate:0];
  v5 = [v19 presentingViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v19 presentingViewController];
    v8 = v7;
    if (self->_editorDismissedFromDelete)
    {
      v9 = [v19 event];
      [v8 reminderDetailDismissedWithDeletedEvent:v9];
    }

    else
    {
      [v7 reminderDetailDismissedWithDeletedEvent:0];
    }

LABEL_12:

    goto LABEL_13;
  }

  v10 = [(WeekViewController *)self navigationController];
  v11 = [v10 presentedViewController];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  v13 = [(WeekViewController *)self navigationController];
  v8 = v13;
  if (v12)
  {
    v14 = [v13 presentedViewController];
    v15 = v14;
    if (self->_editorDismissedFromDelete)
    {
      v16 = [v19 event];
      [v15 reminderDetailDismissedWithDeletedEvent:v16];
    }

    else
    {
      [v14 reminderDetailDismissedWithDeletedEvent:0];
    }

    goto LABEL_12;
  }

  if (v8)
  {
    v17 = [(WeekViewController *)self navigationController];
    [v17 popViewControllersAfterAndIncluding:v19 animated:!self->_editorDismissedFromDelete];

    v18 = [(WeekViewController *)self model];
    [v18 setSelectedOccurrence:0];

    goto LABEL_14;
  }

LABEL_13:
  [v19 dismissViewControllerAnimated:1 completion:0];
LABEL_14:
}

- (CGRect)currentTimeRectInView:(id)a3
{
  v4 = a3;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v9 = [(WeekTimeView *)self->_timeView timeView];
  v10 = [v9 timeMarker];

  v11 = [v10 superview];
  if (!v11)
  {
    goto LABEL_5;
  }

  [v10 alpha];
  if (v12 != 1.0)
  {
    goto LABEL_5;
  }

  v13 = [v10 showsThumb];

  if (v13)
  {
    [v10 currentTimeFrame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v11 = [v10 superview];
    [v4 convertRect:v11 fromView:{v15, v17, v19, v21}];
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
    v3 = [(WeekViewController *)self earliestDateComponents];
    v4 = [(CUIKCalendarModel *)self->super._model calendar];
    v5 = [v4 timeZone];
    v42 = [EKCalendarDate calendarDateWithDateComponents:v3 timeZone:v5];

    v6 = [(WeekViewController *)self _latestDateComponents];
    v7 = [(CUIKCalendarModel *)self->super._model calendar];
    v8 = [v7 timeZone];
    v9 = [EKCalendarDate calendarDateWithDateComponents:v6 timeZone:v8];
    v40 = [v9 calendarDateForEndOfDay];

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
          v15 = [v14 weekStartDate];
          v16 = [(CUIKCalendarModel *)self->super._model calendar];
          v17 = [v16 timeZone];
          v18 = [EKCalendarDate calendarDateWithDateComponents:v15 timeZone:v17];

          v19 = [v14 lastSecondOfWeek];
          v20 = [(CUIKCalendarModel *)self->super._model calendar];
          v21 = [v20 timeZone];
          v22 = [EKCalendarDate calendarDateWithDate:v19 timeZone:v21];

          if ([v22 compare:v42] != -1 && objc_msgSend(v18, "compare:", v40) != 1)
          {
            v23 = [v14 weekView];
            v24 = [v23 allDayView];
            [v24 scrollerContentHeightWithUserVisibleEarliestDate:v42 latestDate:v40 withoutScroller:0];
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
          v33 = [v32 weekView];
          v34 = [v33 allDayView];
          [v34 scrollerContentSize];
          v36 = v35;

          v37 = [v32 weekView];
          v38 = [v37 allDayView];
          [v38 setScrollerContentSize:{v36, v12}];
        }

        v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v29);
    }
  }
}

- (void)_updateHeaderHeightsAnimated:(BOOL)a3
{
  v59 = a3;
  v3 = self;
  [(UIScrollView *)self->_weekScroller frame];
  v65 = v5;
  v66 = v4;
  v63 = v7;
  v64 = v6;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v3->_visibleWeeks;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v75 objects:v79 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v62 = *v76;
    v11 = 0.0;
    v60 = v3;
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
        v14 = [(WeekViewController *)v3 view];
        v15 = [v13 weekView];
        [v15 frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v24 = [v13 weekView];
        v25 = [v24 superview];
        [v14 convertRect:v25 fromView:{v17, v19, v21, v23}];
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
          v37 = [v13 weekView];
          v38 = [v37 hasAllDayEvents];

          v39 = [v13 weekView];
          v40 = [v39 allDayView];
          v41 = v40;
          v11 = rect.origin.y;
          if (v38)
          {
            [v40 layoutIfNeeded];

            if ([(WeekViewController *)v3 usesMultiDayWeekView])
            {
              v42 = [(WeekViewController *)v3 earliestDateComponents];
              v43 = [(CUIKCalendarModel *)v3->super._model calendar];
              v44 = [v43 timeZone];
              v39 = [EKCalendarDate calendarDateWithDateComponents:v42 timeZone:v44];

              v45 = [(WeekViewController *)v3 _latestDateComponents];
              v46 = [(CUIKCalendarModel *)v3->super._model calendar];
              v47 = [v46 timeZone];
              v48 = [EKCalendarDate calendarDateWithDateComponents:v45 timeZone:v47];
              v41 = [v48 calendarDateForEndOfDay];

              v3 = v60;
              v49 = [v13 weekView];
              v50 = [v49 allDayView];
              [v50 multiDayAllDayHeightWithUserVisibleEarliestDate:v39 latestDate:v41];
              v52 = v51;
            }

            else
            {
              v39 = [v13 weekView];
              v41 = [v39 allDayView];
              [v41 naturalHeight];
              v52 = v54;
            }

            v10 = 1;
          }

          else
          {
            [v40 heightWithNoAllDayOccurrences];
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

  v55 = v3->_cachedHeaderHeight - v11;
  if (v55 < 0.0)
  {
    v55 = -v55;
  }

  if (v55 > 0.0001)
  {
    v3->_cachedHeaderHeight = v11;
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_10008DA80;
    v72[3] = &unk_10020FFE0;
    v72[4] = v3;
    v73 = v59;
    *&v72[5] = v11;
    v56 = v10 & 1;
    v74 = v56;
    v57 = objc_retainBlock(v72);
    *&rect.size.width = _NSConcreteStackBlock;
    *&rect.size.height = 3221225472;
    v68 = sub_10008DC4C;
    v69 = &unk_100210008;
    v70 = v3;
    v71 = v56;
    v58 = objc_retainBlock(&rect.size);
    if (v59)
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

- (void)_setHeaderHeightForWeekGroupView:(id)a3 forceLayout:(BOOL)a4
{
  v4 = a4;
  v17 = [a3 weekView];
  v6 = [v17 allDayView];
  [v6 setFixedDayHeight:self->_cachedHeaderHeight];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  cachedHeaderHeight = self->_cachedHeaderHeight;
  [v6 setFrame:?];
  v14 = [v17 allDayView];
  [v14 setFrame:{v8, v10, v12, cachedHeaderHeight}];

  [v17 setNeedsLayout];
  if (v4)
  {
    [v17 layoutIfNeeded];
  }

  v15 = [v17 content];
  v16 = [v15 layer];
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
  v3 = [(WeekViewController *)self _earliestVisibleWeekGroupView];
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
  [v3 frame];
  v11 = [v3 dateForXOffset:v9 - v10];

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

  v6 = [(WeekViewController *)self _latestVisibleWeekGroupView];
  [v6 frame];
  v8 = [v6 dateForXOffset:v4 + v5 - v7];

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

- (BOOL)dateIsVisible:(id)a3
{
  v4 = a3;
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

        v10 = [*(*(&v20 + 1) + 8 * i) weekView];
        if ([v10 containsDate:v4])
        {
          [v10 pointAtDate:v4 isAllDay:0];
          [(UIScrollView *)self->_weekScroller convertPoint:v10 fromView:?];
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

- (id)occurrenceViewForEvent:(id)a3 occurrenceDate:(id)a4 forceMatchingContentSection:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(EKEventGestureController *)self->_eventGestureController currentlySelectedOccurrenceViewSource];
  v11 = [v10 occurrence];
  v12 = [v11 isEqual:v8];

  if (v12)
  {
    v13 = v10;
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

          v19 = [*(*(&v21 + 1) + 8 * i) occurrenceViewForEvent:v8 occurrenceDate:v9 forceMatchingContentSection:{v5, v21}];
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

- (void)resizeWeekGroupsIfNeededForOrientation:(int64_t)a3
{
  if (CalSolariumEnabled())
  {
    if (CalSolariumEnabled())
    {
      lastCalculatedWeekWidth = self->_lastCalculatedWeekWidth;
    }

    else
    {
      [(WeekViewController *)self weekWidthForOrientation:a3];
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
          [(WeekViewController *)self weekWidthForOrientation:a3];
          *p_weekWidth = v50;
          v39 = self->_lastCalculatedWeekWidth;
        }

        p_lastCalculatedWeekWidth = &self->_lastCalculatedWeekWidth;
        if (v39 == 0.0 && (CalSolariumEnabled() & 1) != 0)
        {
          v51 = [(WeekViewController *)self displayedDate];
          if (v51)
          {
            v52 = v51;
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
          v55 = [(WeekViewController *)self visibleRangeForOffset:v54, p_visibleRange];
          if (v56 == p_visibleRange->length)
          {
            p_visibleRange->location = v55;
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

              v61 = [*(*(&v72 + 1) + 8 * j) weekView];
              v62 = [v61 content];
              [v62 setNeedsLayout];
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
      [(WeekViewController *)self weekWidthForOrientation:a3];
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
        [(WeekViewController *)self weekWidthForOrientation:a3];
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
          v41 = [(WeekViewController *)self displayedDate];

          if (v41)
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

        v42 = [(WeekViewController *)self view];
        [v42 setNeedsLayout];

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

              v48 = [*(*(&v64 + 1) + 8 * m) weekView];
              v49 = [v48 content];
              [v49 setNeedsLayout];
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

- (id)_daysToShiftFromSelectedDateToBeginningOfWeekIfShowingFullWeek:(id)a3
{
  v4 = a3;
  if ([(WeekViewController *)self daysInWeek]== 7)
  {
    v5 = [v4 calendarDateByAddingDays:{1 - objc_msgSend(v4, "dayOfWeek")}];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (void)viewSwitcherSwitchedToViewWithDate:(id)a3
{
  v4 = a3;
  v7 = [v4 calendarDateForWeekWithWeekStart:CUIKOneIndexedWeekStart()];

  v5 = [v7 calendarDateByAddingDays:{-[WeekViewController daysFromFirstToMiddleDay](self, "daysFromFirstToMiddleDay")}];
  v6 = [(WeekViewController *)self model];
  [v6 setSelectedDate:v5];
}

- (void)_sceneEnteredForeground:(id)a3
{
  v8 = [a3 object];
  v4 = [(WeekViewController *)self model];
  v5 = [v4 sceneIdentifier];
  v6 = [v8 _sceneIdentifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(WeekViewController *)self savedFirstVisibleSecond];

    if (v7 < 0)
    {
      goto LABEL_6;
    }

    [(WeekViewController *)self setFirstVisibleSecond:[(WeekViewController *)self savedFirstVisibleSecond]];
    v4 = [(NSMutableArray *)self->_visibleWeeks firstObject];
    [(WeekViewController *)self synchronizeWeekGroupScrollingToWeek:v4];
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

  v4 = [(WeekViewController *)self model];
  v5 = [v4 persistedSceneState];
  v6 = [v5 weekViewFirstVisibleSecond];

  return v6;
}

- (void)weekGroupViewFirstVisibleSecondChanged:(int64_t)a3
{
  v5 = [(MainViewController *)self window];
  v6 = [v5 windowScene];
  v7 = [v6 activationState];

  if (!v7)
  {

    [(WeekViewController *)self saveFirstVisibleSecond:a3];
  }
}

- (void)saveFirstVisibleSecond:(int64_t)a3
{
  if ((EKUIShouldSaveStateInPreferences() & 1) == 0)
  {
    v6 = [(WeekViewController *)self model];
    v5 = [v6 persistedSceneState];
    [v5 setWeekViewFirstVisibleSecond:a3];
  }
}

- (void)_updateSelectedViewsToMatchModel
{
  [(WeekViewController *)self _clearSelectedOccurrenceViewsUpdatingModel:0];
  v3 = [(WeekViewController *)self model];
  v4 = [v3 selectedOccurrences];
  v5 = [(EKEventGestureController *)self->_eventGestureController event];
  v6 = [v4 containsObject:v5];

  if ((v6 & 1) == 0)
  {
    [(EKEventGestureController *)self->_eventGestureController endForcedStart:0];
  }

  v8 = [(WeekViewController *)self model];
  v7 = [v8 selectedOccurrences];
  [(WeekViewController *)self _selectEvents:v7 updatingModel:0];
}

- (void)cleanupSelectionState
{
  v3 = [(EKEventGestureController *)self->_eventGestureController event];
  v4 = [(EKEventGestureController *)self->_eventGestureController occurrenceDate];
  [(WeekViewController *)self undimOccurrence:v3 occurrenceDate:v4];

  [(WeekViewController *)self _clearSelectedOccurrenceViews];
  v5 = [(WeekViewController *)self eventGestureController];
  [v5 endForcedStart:0];
}

- (void)_clearSelectedOccurrenceViewsUpdatingModel:(BOOL)a3
{
  v3 = a3;
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

        [(WeekViewController *)self _deselectOccurrenceView:*(*(&v10 + 1) + 8 * v9) updatingModel:v3];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_selectEvents:(id)a3 updatingModel:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
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
            [(WeekViewController *)self _selectOccurrenceView:v14 updatingModel:v4];
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

- (void)_selectOccurrenceView:(id)a3 updatingModel:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v18 = v6;
  if (!self->_selectedOccurrenceViews)
  {
    v7 = +[NSMutableArray array];
    selectedOccurrenceViews = self->_selectedOccurrenceViews;
    self->_selectedOccurrenceViews = v7;

    v6 = v18;
  }

  if (!self->_selectedOccurrencesFrontmostClonedViews)
  {
    v9 = +[NSMutableArray array];
    selectedOccurrencesFrontmostClonedViews = self->_selectedOccurrencesFrontmostClonedViews;
    self->_selectedOccurrencesFrontmostClonedViews = v9;

    v6 = v18;
  }

  if (v6)
  {
    v11 = [v18 selectedCopy];

    v6 = v18;
    if (!v11)
    {
      v12 = [v18 selectedCopy];

      if (v12)
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
      v14 = [v18 superview];
      [v14 addSubview:v13];

      v15 = [v18 superview];
      [v15 bringSubviewToFront:v13];

      [v18 setSelectedCopy:v13];
      [v18 setSelected:1];
      [v18 setHidden:1];
      [(NSMutableArray *)self->_selectedOccurrenceViews addObject:v18];
      if (v4)
      {
        v16 = [(WeekViewController *)self model];
        v17 = [v18 occurrences];
        [v16 selectOccurrences:v17];
      }

      v6 = v18;
    }
  }
}

- (void)_deselectOccurrenceView:(id)a3 updatingModel:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [v10 selectedCopy];
  [(NSMutableArray *)self->_selectedOccurrencesFrontmostClonedViews removeObject:v6];
  [v6 removeFromSuperview];
  [(NSMutableArray *)self->_selectedOccurrenceViews removeObject:v10];
  v7 = [v10 occurrence];

  if (v7)
  {
    [v10 setSelectedCopy:0];
    [v10 setSelected:0];
    [v10 requestContentIfNeeded:16 completion:0];
    [v10 setHidden:0];
  }

  if (v4)
  {
    v8 = [(WeekViewController *)self model];
    v9 = [v10 occurrences];
    [v8 deselectOccurrences:v9];
  }
}

- (id)pasteboardManager
{
  v2 = [(WeekViewController *)self model];
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
    [(WeekViewController *)self selectDate:v9 animated:1];

    [(WeekViewController *)self showEvent:v8 animated:1 showMode:0 context:0];
  }
}

- (void)eventViewControllerNextButtonWasTapped:(id)a3
{
  v7 = a3;
  v4 = [v7 event];
  v5 = [v4 nextOccurrence];

  if (v5)
  {
    [(WeekViewController *)self eventViewController:v7 didCompleteWithAction:0];
    v6 = [v7 context];
    [(WeekViewController *)self showEvent:v5 animated:1 showMode:1 context:v6];
  }
}

- (void)eventViewControllerPreviousButtonWasTapped:(id)a3
{
  v7 = a3;
  v4 = [v7 event];
  v5 = [v4 previousOccurrence];

  if (v5)
  {
    [(WeekViewController *)self eventViewController:v7 didCompleteWithAction:0];
    v6 = [v7 context];
    [(WeekViewController *)self showEvent:v5 animated:1 showMode:1 context:v6];
  }
}

- (void)eventViewController:(id)a3 requestsShowEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(WeekViewController *)self eventViewController:v7 didCompleteWithAction:0];
  v8 = [v7 context];

  [(WeekViewController *)self showEvent:v6 animated:1 showMode:1 context:v8];
}

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = v6;
  if (v6)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10008FF30;
    v13 = &unk_10020EBC8;
    v14 = self;
    v15 = v6;
    v8 = objc_retainBlock(&v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = [(WeekViewController *)self navigationController:v10];
  [v9 dismissViewControllerAnimated:1 completion:v8];
}

- (void)pasteboardManager:(id)a3 presentAlert:(id)a4
{
  v5 = a4;
  v6 = [(WeekViewController *)self currentPresentationController];
  [v5 presentFromSource:v6];
}

- (void)pasteboardManager:(id)a3 didFinishPasteWithResult:(unint64_t)a4 willOpenEditor:(BOOL)a5
{
  if (!a4 && !a5)
  {
    [(MainViewController *)self attemptDisplayReviewPrompt];
  }
}

- (void)_logUserStateDiagnostics:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100090050;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)interaction:(id)a3 canPasteEventAtPoint:(CGPoint)a4 inView:(id)a5
{
  v5 = [(WeekViewController *)self model:a3];
  v6 = [v5 pasteboardManager];
  v7 = [v6 canPerformPaste];

  return v7;
}

- (BOOL)interaction:(id)a3 canCreateEventAtPoint:(CGPoint)a4 inView:(id)a5
{
  v5 = [(WeekViewController *)self model:a3];
  v6 = [v5 defaultCalendarForNewEvents];
  v7 = v6 != 0;

  return v7;
}

- (BOOL)interaction:(id)a3 canCreateReminderAtPoint:(CGPoint)a4 inView:(id)a5
{
  v5 = [(WeekViewController *)self model:a3];
  v6 = [v5 reminderCalendar];
  v7 = v6 != 0;

  return v7;
}

- (void)createEvent:(BOOL)a3 atPoint:(CGPoint)a4 inView:(id)a5
{
  v5 = a3;
  [(UIScrollView *)self->_weekScroller convertPoint:a5 fromView:a4.x, a4.y];
  v21 = 0;
  v7 = [(WeekViewController *)self dateAtPoint:&v21 isAllDay:?];
  if (v5)
  {
    v8 = [(WeekViewController *)self _newEvent];
  }

  else
  {
    v9 = [(WeekViewController *)self model];
    v10 = [v9 eventStore];
    v8 = [EKEvent eventWithEventStore:v10];

    v11 = [(WeekViewController *)self model];
    v12 = [v11 reminderCalendar];
    [v8 setCalendar:v12];
  }

  v13 = [v7 date];
  [v13 timeIntervalSinceReferenceDate];
  CalSnapDateTo15MinuteInterval();
  v15 = v14;

  v16 = [NSDate dateWithTimeIntervalSinceReferenceDate:v15];
  [v8 setStartDate:v16];
  if (v5)
  {
    v17 = 3600.0;
    if (v21)
    {
      v17 = 1.0;
    }

    v18 = [v16 dateByAddingTimeInterval:v17];
    [v8 setEndDateUnadjustedForLegacyClients:v18];
  }

  else
  {
    [v8 setEndDateUnadjustedForLegacyClients:v16];
  }

  if (v21 == 1)
  {
    [v8 setAllDay:1];
  }

  [(EKEventGestureController *)self->_eventGestureController forceStartWithOccurrence:v8 occurrenceDate:v7 shouldUpdateViewSource:1 shouldUpdateOrigin:1 shouldPresentEditMenu:0];
  eventGestureController = self->_eventGestureController;
  v20 = [v7 date];
  [v20 timeIntervalSinceReferenceDate];
  [(WeekViewController *)self eventGestureController:eventGestureController didCommitOccurrence:v8 toDate:v21 isAllDay:0 span:?];
}

- (void)interaction:(id)a3 pasteEventAtPoint:(CGPoint)a4 inView:(id)a5
{
  [(UIScrollView *)self->_weekScroller convertPoint:a5 fromView:a4.x, a4.y];
  v10 = 0;
  v6 = [(WeekViewController *)self dateAtPoint:&v10 isAllDay:?];
  v7 = [(CUIKCalendarModel *)self->super._model pasteboardManager];
  v8 = [v6 date];
  [v7 setDateForPaste:v8];

  v9 = [(CUIKCalendarModel *)self->super._model pasteboardManager];
  [v9 pasteEventsWithDateMode:-[WeekViewController _dateModeForAllDay:](self delegate:{"_dateModeForAllDay:", v10), self}];
}

- (id)interaction:(id)a3 titleForPasteActionAtPoint:(CGPoint)a4 inView:(id)a5
{
  [(UIScrollView *)self->_weekScroller convertPoint:a5 fromView:a4.x, a4.y];
  v12 = 0;
  v6 = [(WeekViewController *)self dateAtPoint:&v12 isAllDay:?];
  v7 = [(WeekViewController *)self model];
  v8 = [v7 pasteboardManager];
  v9 = [v8 numberOfEventsToPaste];

  v10 = [EKUIRightClickEmptySpaceInteraction localizedPasteStringForEventCount:v9 includeHere:(v12 & 1) == 0];

  return v10;
}

- (id)interaction:(id)a3 subtitleForPasteActionAtPoint:(CGPoint)a4 inView:(id)a5
{
  [(UIScrollView *)self->_weekScroller convertPoint:a5 fromView:a4.x, a4.y];
  v15 = 0;
  v6 = [(WeekViewController *)self dateAtPoint:&v15 isAllDay:?];
  v7 = [v6 date];

  v8 = CUIKCalendar();
  v9 = [CUIKPasteboardUtilities roundedDateForDate:v7 dateMode:[(WeekViewController *)self _dateModeForAllDay:v15] calendar:v8];

  v10 = objc_alloc_init(NSDateFormatter);
  [v10 setCalendar:v8];
  v11 = [v8 timeZone];
  [v10 setTimeZone:v11];

  [v10 setDoesRelativeDateFormatting:1];
  v12 = v15;
  [v10 setDateStyle:1];
  [v10 setTimeStyle:v12 ^ 1];
  v13 = [v10 stringFromDate:v9];

  return v13;
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

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
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

- (void)_timeBarDropScrollTimerFired:(id)a3
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

  v4 = [(WeekViewController *)self viewInterfaceOrientation];

  [(WeekViewController *)self weekWidthForOrientation:v4];
  return result;
}

- (double)weekWidthForOrientation:(int64_t)a3
{
  v5 = [(WeekViewController *)self weekViewClass];
  v6 = [(MainViewController *)self window];
  [(objc_class *)v5 standardWidthForOrientation:a3 withViewInViewHierarchy:v6];
  v8 = v7;
  EKUISeparatorLineThickness();
  v10 = v8 + v9;

  return v10;
}

- (void)viewWillLayoutSubviews
{
  [(WeekViewController *)self headerVerticalOffset];
  v4 = v3;
  v5 = [(WeekViewController *)self view];
  [v5 bounds];
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
  v17 = [(WeekViewController *)self view];
  [v17 bounds];
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
  v22 = [(WeekViewController *)self view];
  [v22 bounds];
  self->_lastBoundsSize.width = v23;
  self->_lastBoundsSize.height = v24;

  v34 = [(MainViewController *)self window];
  [v34 bounds];
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