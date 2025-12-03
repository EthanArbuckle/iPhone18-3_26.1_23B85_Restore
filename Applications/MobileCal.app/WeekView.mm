@interface WeekView
+ (double)dayWidthForOrientation:(int64_t)orientation withViewInViewHierarchy:(id)hierarchy;
+ (double)windowSpaceForOrientation:(int64_t)orientation withViewInViewHierarchy:(id)hierarchy;
+ (unint64_t)displayedDaysForOrientation:(int64_t)orientation withViewInViewHierarchy:(id)hierarchy;
- (BOOL)containsDate:(id)date;
- (BOOL)dayViewContentShouldAnnotateAppEntities:(id)entities onDayStarting:(id)starting;
- (BOOL)isEventFullyVisible:(id)visible;
- (BOOL)scrollTowardPoint:(CGPoint)point;
- (BOOL)scrollerIsParentOfView:(id)view isAllDay:(BOOL)day;
- (BOOL)showsTimeMarker;
- (BOOL)weekAllDayViewShouldAnnotateAppEntities:(id)entities onDayStarting:(id)starting;
- (CGPoint)pointAtDate:(id)date isAllDay:(BOOL)day;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)occurrenceViews;
- (NSDate)lastSecondOfWeek;
- (WeekView)initWithFrame:(CGRect)frame sizeClass:(int64_t)class targetWindow:(id)window rightClickDelegate:(id)delegate;
- (WeekViewDataSource)dataSource;
- (WeekViewDelegate)delegate;
- (double)_positionOfSecond:(int64_t)second;
- (double)dayWidth;
- (double)yPositionPerhapsMatchingAllDayOccurrence:(id)occurrence atPoint:(CGPoint)point;
- (id)_verticalGridExtensionImage;
- (id)dateForXOffset:(double)offset;
- (id)occurrenceViewForEvent:(id)event occurrenceDate:(id)date forceMatchingContentSection:(BOOL)section;
- (id)presentationControllerForEditMenu;
- (id)selectedEventsForEditMenu;
- (id)weekAllDayViewForTimeframeAfter:(id)after;
- (id)weekAllDayViewForTimeframeBefore:(id)before;
- (int)_secondAtPosition:(double)position;
- (int64_t)daysToDisplay;
- (int64_t)firstVisibleSecond;
- (void)_updateCurtain;
- (void)_updateGridExtensionImageForScrollView:(id)view;
- (void)_updateHighlightedDay;
- (void)_updateTimeMarkerTodayDay;
- (void)addViewToScroller:(id)scroller isAllDay:(BOOL)day;
- (void)adjustForVisibleRect:(CGRect)rect;
- (void)attemptDisplayReviewPrompt;
- (void)dayViewContent:(id)content didSelectEvent:(id)event userInitiated:(BOOL)initiated dateSelected:(id)selected;
- (void)dayViewContent:(id)content didSelectEvents:(id)events userInitiated:(BOOL)initiated;
- (void)dayViewContent:(id)content didTapInEmptySpaceOnDay:(double)day;
- (void)dayViewContent:(id)content didTapPinnedOccurrence:(id)occurrence;
- (void)dayViewContent:(id)content pointerDidTargetOccurrences:(id)occurrences;
- (void)dayViewContentDidLayout:(id)layout;
- (void)firstVisibleSecondChanged;
- (void)hideNowDot:(BOOL)dot;
- (void)layoutSubviews;
- (void)loadDataAsyncWithCompletion:(id)completion reverse:(BOOL)reverse;
- (void)reloadData;
- (void)safeAreaInsetsDidChange;
- (void)scrollToEvent:(id)event animateWithDuration:(double)duration completion:(id)completion;
- (void)scrollToSecond:(int64_t)second animated:(BOOL)animated completion:(id)completion;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setCalendar:(id)calendar;
- (void)setFirstVisibleSecond:(int64_t)second;
- (void)setHighlightedDateComponents:(id)components;
- (void)setHourHeightScale:(double)scale;
- (void)setIsInUse:(BOOL)use;
- (void)setKnownSafeAreaInsetTop:(double)top;
- (void)setOrientation:(int64_t)orientation;
- (void)setShowsTimeMarker:(BOOL)marker;
- (void)setTimeZone:(id)zone;
- (void)setWeekStartDate:(id)date;
- (void)shouldAnnotateAppEntitiesChanged;
- (void)showOverlayMonthInCellAtOffset:(double)offset animated:(BOOL)animated;
- (void)updateDayWidth;
- (void)updateMarkerPosition;
- (void)weekAllDayView:(id)view didSelectEvent:(id)event userInitiated:(BOOL)initiated dateSelected:(id)selected;
- (void)weekAllDayView:(id)view pointerDidTargetOccurrences:(id)occurrences;
- (void)weekAllDayViewDidScroll:(id)scroll;
- (void)weekAllDayViewEmptySpaceClick:(id)click onDay:(double)day;
@end

@implementation WeekView

+ (unint64_t)displayedDaysForOrientation:(int64_t)orientation withViewInViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  if (EKUICurrentHeightSizeClassIsCompact())
  {
    IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy();
  }

  else
  {
    IsCompactInViewHierarchy = 0;
  }

  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy())
  {
    traitCollection = [hierarchyCopy traitCollection];
    if (EKUIUsesLargeTextLayout())
    {
      v9 = +[UIDevice currentDevice];
      v10 = [v9 userInterfaceIdiom] == 0;

      LOBYTE(IsCompactInViewHierarchy) = v10 | IsCompactInViewHierarchy;
    }

    if ((IsCompactInViewHierarchy & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!IsCompactInViewHierarchy)
  {
LABEL_8:
    traitCollection2 = [hierarchyCopy traitCollection];
    v12 = EKUIPreferredSizeCategory();

    v13 = 7;
    if (v12 == UIContentSizeCategoryAccessibilityExtraExtraExtraLarge)
    {
      v13 = 4;
    }

    if (v12 == UIContentSizeCategoryAccessibilityExtraExtraLarge)
    {
      v13 = 5;
    }

    if (v12 == UIContentSizeCategoryAccessibilityExtraLarge)
    {
      v14 = 6;
    }

    else
    {
      v14 = v13;
    }

LABEL_23:

    goto LABEL_24;
  }

  if ((CalSolariumEnabled() & 1) == 0)
  {
    [self windowSpaceForOrientation:orientation withViewInViewHierarchy:hierarchyCopy];
    v16 = v15;
    v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
    [(NSString *)v12 _scaledValueForValue:v16 / 5.0];
    v18 = vcvtad_u64_f64(v16 / v17);
    if (v18 >= 5)
    {
      v18 = 5;
    }

    if (v18 <= 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = v18;
    }

    goto LABEL_23;
  }

  v14 = 5;
LABEL_24:

  return v14;
}

- (WeekView)initWithFrame:(CGRect)frame sizeClass:(int64_t)class targetWindow:(id)window rightClickDelegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  windowCopy = window;
  delegateCopy = delegate;
  v63.receiver = self;
  v63.super_class = WeekView;
  height = [(WeekView *)&v63 initWithFrame:x, y, width, height];
  if (height)
  {
    v16 = EKUIInterfaceOrientationForViewHierarchy();
    daysToDisplay = [(WeekView *)height daysToDisplay];
    objc_storeWeak(&height->_targetWindow, windowCopy);
    height->_daysToDisplay = daysToDisplay;
    if (CalSystemSolariumEnabled())
    {
      +[UIColor clearColor];
    }

    else
    {
      [UIColor colorNamed:@"weekHeaderBGColor"];
    }
    v59 = ;
    v18 = [WeekAllDayView alloc];
    v19 = CGRectZero.origin.y;
    v20 = CGRectZero.size.width;
    v21 = CGRectZero.size.height;
    v22 = [(WeekAllDayView *)v18 initWithFrame:v16 orientation:daysToDisplay numberOfDaysToDisplay:1 opaque:v59 backgroundColor:delegateCopy rightClickDelegate:CGRectZero.origin.x, v19, v20, v21];
    allDayView = height->_allDayView;
    height->_allDayView = v22;

    [(WeekAllDayView *)height->_allDayView setDelegate:height];
    [(WeekAllDayView *)height->_allDayView setOrientation:v16];
    [(WeekAllDayView *)height->_allDayView setShowsHalfOfScrolledEvents:1];
    -[WeekAllDayView setUsesSmallText:](height->_allDayView, "setUsesSmallText:", [objc_opt_class() usesSmallTextForIsCompact:class == 1]);
    [(WeekAllDayView *)height->_allDayView setShowSeparatorLines:1];
    [(WeekView *)height addSubview:height->_allDayView];
    v24 = [EKDayViewContent alloc];
    v25 = +[UIColor systemBackgroundColor];
    v26 = [v24 initWithFrame:class sizeClass:v16 orientation:v25 backgroundColor:0 opaque:0 isMiniPreviewInEventDetail:daysToDisplay numberOfDaysToDisplay:{CGRectZero.origin.x, v19, v20, v21}];
    content = height->_content;
    height->_content = v26;

    v28 = height->_content;
    v29 = [[EKUIRightClickEmptySpaceInteraction alloc] initWithDelegate:delegateCopy];
    [(EKDayViewContent *)v28 addInteraction:v29];

    [(EKDayViewContent *)height->_content setEventsFillGrid:1];
    grid = [(EKDayViewContent *)height->_content grid];
    [grid setShowsLeftBorder:0];

    grid2 = [(EKDayViewContent *)height->_content grid];
    [grid2 setShowsRightBorder:0];

    grid3 = [(EKDayViewContent *)height->_content grid];
    [grid3 setRightBorderInsetsOccurrences:0];

    grid4 = [(EKDayViewContent *)height->_content grid];
    [grid4 setEventHorizontalInset:-6.0];

    [(EKDayViewContent *)height->_content setOrientation:v16];
    -[EKDayViewContent setUsesSmallText:](height->_content, "setUsesSmallText:", [objc_opt_class() usesSmallTextForIsCompact:class == 1]);
    [(EKDayViewContent *)height->_content setDelegate:height];
    [(EKDayViewContent *)height->_content sizeToFit];
    if ((CalSolariumEnabled() & 1) == 0)
    {
      [objc_opt_class() dayWidthForOrientation:v16 withViewInViewHierarchy:windowCopy];
      v35 = v34;
      [(WeekAllDayView *)height->_allDayView setFixedDayWidth:?];
      [(EKDayViewContent *)height->_content setFixedDayWidth:v35];
    }

    if (CalCanvasPocketEnabled())
    {
      v36 = objc_opt_new();
      emptyViewForPocket = height->_emptyViewForPocket;
      height->_emptyViewForPocket = v36;

      [(WeekView *)height addSubview:height->_emptyViewForPocket];
      if ([(WeekView *)height daysToDisplay]== 2)
      {
        v38 = objc_opt_new();
        emptyViewForBottomPocket = height->_emptyViewForBottomPocket;
        height->_emptyViewForBottomPocket = v38;

        [(WeekView *)height addSubview:height->_emptyViewForBottomPocket];
      }
    }

    if (class != 1)
    {
      +[EKDayOccurrenceView defaultPadding];
      [(EKDayViewContent *)height->_content setOccurrencePadding:0.5, 2.0];
    }

    v40 = objc_alloc_init(UIScrollView);
    scrollView = height->_scrollView;
    height->_scrollView = v40;

    v42 = +[UIColor systemBackgroundColor];
    [(UIScrollView *)height->_scrollView setBackgroundColor:v42];

    v43 = height->_scrollView;
    [(EKDayViewContent *)height->_content frame];
    [(UIScrollView *)v43 setContentSize:v44, v45];
    [(UIScrollView *)height->_scrollView addSubview:height->_content];
    [(UIScrollView *)height->_scrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)height->_scrollView setScrollsToTop:0];
    [(UIScrollView *)height->_scrollView setAutoresizingMask:18];
    [(UIScrollView *)height->_scrollView setDelegate:height];
    if (CalCanvasPocketEnabled())
    {
      [(UIScrollView *)height->_scrollView setContentInsetAdjustmentBehavior:2];
      [(UIScrollView *)height->_scrollView _setPocketStyle:1 forEdge:1];
      v46 = height->_emptyViewForPocket;
      v47 = [[_UIScrollPocketInteraction alloc] initWithScrollView:height->_scrollView edge:1 style:0];
      [(UIView *)v46 addInteraction:v47];

      v48 = height->_allDayView;
      v49 = [[_UIScrollPocketInteraction alloc] initWithScrollView:height->_scrollView edge:1 style:0];
      [(WeekAllDayView *)v48 addInteraction:v49];

      if ([(WeekView *)height daysToDisplay]== 2)
      {
        v50 = height->_emptyViewForBottomPocket;
        v51 = [[_UIScrollPocketInteraction alloc] initWithScrollView:height->_scrollView edge:4 style:0];
        [(UIView *)v50 addInteraction:v51];
      }
    }

    [(WeekView *)height addSubview:height->_scrollView];
    [(WeekView *)height setAutoresizingMask:16];
    height->_hourHeightScale = 1.0;
    height->_knownSafeAreaInsetTop = 0.0;
    [(WeekView *)height bringSubviewToFront:height->_allDayView];
    v52 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, v19, v20, v21}];
    gridExtensionView = height->_gridExtensionView;
    height->_gridExtensionView = v52;

    [(UIImageView *)height->_gridExtensionView setOpaque:0];
    [(UIScrollView *)height->_scrollView insertSubview:height->_gridExtensionView atIndex:0];
    height->_selectedSecond = -1;
    [(WeekView *)height setOrientation:v16];
    v54 = dispatch_queue_create("weekReload", 0);
    reloadQueue = height->_reloadQueue;
    height->_reloadQueue = v54;

    objc_initWeak(&location, height);
    v64 = objc_opt_class();
    v56 = [NSArray arrayWithObjects:&v64 count:1];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_10006A934;
    v60[3] = &unk_10020E9E0;
    objc_copyWeak(&v61, &location);
    v57 = [(WeekView *)height registerForTraitChanges:v56 withHandler:v60];

    objc_destroyWeak(&v61);
    objc_destroyWeak(&location);
  }

  return height;
}

- (int64_t)daysToDisplay
{
  v2 = objc_opt_class();

  return [v2 numMultiDays];
}

- (double)dayWidth
{
  if (CalSolariumEnabled())
  {
    [(WeekView *)self frame];
    return v3 / [(WeekView *)self daysToDisplay];
  }

  else
  {
    v5 = objc_opt_class();
    orientation = self->_orientation;

    [v5 dayWidthForOrientation:orientation withViewInViewHierarchy:self];
  }

  return result;
}

- (void)setOrientation:(int64_t)orientation
{
  self->_orientation = orientation;
  verticalGridExtensionImage = self->_verticalGridExtensionImage;
  self->_verticalGridExtensionImage = 0;

  [(EKDayViewContent *)self->_content setOrientation:orientation];
  if ((CalSolariumEnabled() & 1) == 0)
  {
    [(WeekView *)self dayWidth];
    v7 = v6;
    [(EKDayViewContent *)self->_content setFixedDayWidth:?];
    [(WeekAllDayView *)self->_allDayView setFixedDayWidth:v7];
  }

  [(EKDayViewContent *)self->_content sizeToFit];
  grid = [(EKDayViewContent *)self->_content grid];
  [grid updateMarkerPosition];

  scrollView = self->_scrollView;
  [(EKDayViewContent *)self->_content frame];
  [(UIScrollView *)scrollView setContentSize:v10, v11];

  [(WeekView *)self setNeedsLayout];
}

- (void)setKnownSafeAreaInsetTop:(double)top
{
  if (self->_knownSafeAreaInsetTop != top)
  {
    self->_knownSafeAreaInsetTop = top;
    [(WeekAllDayView *)self->_allDayView frame];
    v6 = v5 + top;
    [(WeekView *)self safeAreaInsets];
    scrollView = self->_scrollView;

    [(UIScrollView *)scrollView setContentInset:v6, 0.0];
  }
}

- (void)layoutSubviews
{
  v48.receiver = self;
  v48.super_class = WeekView;
  [(WeekView *)&v48 layoutSubviews];
  [(WeekView *)self bounds];
  v47 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (CalSolariumEnabled())
  {
    content = self->_content;
    [(WeekView *)self dayWidth];
    [(EKDayViewContent *)content setFixedDayWidth:?];
    allDayView = self->_allDayView;
    [(WeekView *)self dayWidth];
    [(WeekAllDayView *)allDayView setFixedDayWidth:?];
    [(EKDayViewContent *)self->_content sizeToFit];
    grid = [(EKDayViewContent *)self->_content grid];
    [grid updateMarkerPosition];

    scrollView = self->_scrollView;
    [(EKDayViewContent *)self->_content frame];
    [(UIScrollView *)scrollView setContentSize:v14, v15];
  }

  [(WeekAllDayView *)self->_allDayView sizeThatFits:v7, v9];
  v17 = v16;
  if (CalCanvasPocketEnabled())
  {
    [(WeekView *)self safeAreaInsets];
    v19 = v18;
    [(WeekView *)self bounds];
    v21 = v20;
  }

  else
  {
    [(WeekView *)self bounds];
    v21 = v22;
    v19 = 0.0;
  }

  [(WeekAllDayView *)self->_allDayView setFrame:0.0, v19, v21, v17];
  if (CalCanvasPocketEnabled())
  {
    hasAllDayEvents = [(WeekView *)self hasAllDayEvents];
    [(WeekView *)self bounds];
    v25 = v24;
    v49.origin.x = 0.0;
    v49.origin.y = v19;
    v49.size.width = v21;
    v49.size.height = v17;
    MaxY = CGRectGetMaxY(v49);
    if ((hasAllDayEvents & 1) == 0)
    {
      EKUISeparatorLineThickness();
      MaxY = MaxY + v27;
    }

    [(UIView *)self->_emptyViewForPocket setFrame:0.0, 0.0, v25, MaxY];
  }

  if (CalCanvasPocketEnabled())
  {
    v28 = v17 + self->_knownSafeAreaInsetTop;
    [(WeekView *)self safeAreaInsets];
    [(UIScrollView *)self->_scrollView setContentInset:v28, 0.0];
    [(WeekView *)self bounds];
    v30 = v29;
    [(WeekView *)self bounds];
    v32 = v31;
    v17 = 0.0;
  }

  else
  {
    [(WeekView *)self bounds];
    v30 = v33;
    [(WeekView *)self bounds];
    v32 = v34 - v17;
  }

  [(UIScrollView *)self->_scrollView frame];
  v51.origin.x = v35;
  v51.origin.y = v36;
  v51.size.width = v37;
  v51.size.height = v38;
  v50.origin.x = 0.0;
  v50.origin.y = v17;
  v50.size.width = v30;
  v50.size.height = v32;
  if (!CGRectEqualToRect(v50, v51))
  {
    [(UIScrollView *)self->_scrollView setFrame:0.0, v17, v30, v32];
  }

  if ([(WeekView *)self daysToDisplay]== 2)
  {
    [(WeekView *)self safeAreaInsets];
    v40 = v39;
    [(WeekView *)self bounds];
    v42 = v41 - v40;
    [(WeekView *)self bounds];
    [(UIView *)self->_emptyViewForBottomPocket setFrame:0.0, v42];
  }

  selectedSecond = self->_selectedSecond;
  if (selectedSecond != -1)
  {
    [(WeekView *)self scrollToSecond:selectedSecond animated:0 completion:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v45 = objc_opt_respondsToSelector();

  if (v45)
  {
    v46 = objc_loadWeakRetained(&self->_delegate);
    [v46 weekViewDidLayout:self];
  }

  [(WeekView *)self adjustForVisibleRect:v47, v5, v7, v9];
  if (CalCanvasPocketEnabled())
  {
    [(WeekView *)self _updateCurtain];
  }
}

- (void)safeAreaInsetsDidChange
{
  if (CalCanvasPocketEnabled())
  {
    [(WeekView *)self safeAreaInsets];
    self->_knownSafeAreaInsetTop = v3;
  }
}

- (void)hideNowDot:(BOOL)dot
{
  dotCopy = dot;
  grid = [(EKDayViewContent *)self->_content grid];
  [grid hideNowDot:dotCopy];
}

- (void)setWeekStartDate:(id)date
{
  dateCopy = date;
  if (([dateCopy isEqual:self->_weekStartDate] & 1) == 0)
  {
    dateComponentsForDateOnly = [dateCopy dateComponentsForDateOnly];
    weekStartDate = self->_weekStartDate;
    self->_weekStartDate = dateComponentsForDateOnly;

    [(WeekAllDayView *)self->_allDayView setStartDate:self->_weekStartDate];
    [(EKDayViewContent *)self->_content setStartDateWithDateComponents:self->_weekStartDate];
    [(WeekView *)self _updateTimeMarkerTodayDay];
  }
}

- (void)setCalendar:(id)calendar
{
  calendarCopy = calendar;
  if (([calendarCopy isEqual:self->_calendar] & 1) == 0)
  {
    v4 = [calendarCopy copy];
    calendar = self->_calendar;
    self->_calendar = v4;

    [(EKDayViewContent *)self->_content setCalendar:calendarCopy];
    [(WeekAllDayView *)self->_allDayView setCalendar:calendarCopy];
    [(WeekView *)self _updateTimeMarkerTodayDay];
  }
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  timeZone = [(NSCalendar *)self->_calendar timeZone];
  if (([zoneCopy isEqualToTimeZone:timeZone] & 1) == 0)
  {

    goto LABEL_5;
  }

  timeZone2 = [(EKDayViewContent *)self->_content timeZone];
  v6 = [zoneCopy isEqualToTimeZone:timeZone2];

  if ((v6 & 1) == 0)
  {
LABEL_5:
    [(NSCalendar *)self->_calendar setTimeZone:zoneCopy];
    [(EKDayViewContent *)self->_content setTimeZone:zoneCopy];
    [(WeekAllDayView *)self->_allDayView setTimeZone:zoneCopy];
  }
}

- (void)setHighlightedDateComponents:(id)components
{
  objc_storeStrong(&self->_highlightedDateComponents, components);

  [(WeekView *)self _updateHighlightedDay];
}

- (NSDate)lastSecondOfWeek
{
  lastDisplayedSecond = [(EKDayViewContent *)self->_content lastDisplayedSecond];
  date = [lastDisplayedSecond date];

  return date;
}

- (void)adjustForVisibleRect:(CGRect)rect
{
  width = rect.size.width;
  [(WeekView *)self frame:rect.origin.x];
  if (v5 != 0.0)
  {
    [(UIScrollView *)self->_scrollView frame];
    if (v6 != 0.0)
    {
      [(WeekAllDayView *)self->_allDayView bounds];
      [(WeekAllDayView *)self->_allDayView rectBecameVisible:0.0, 0.0, width, CGRectGetHeight(v15)];
      [(WeekAllDayView *)self->_allDayView frame];
      MaxY = CGRectGetMaxY(v16);
      [(UIScrollView *)self->_scrollView frame];
      v8 = MaxY - CGRectGetMinY(v17);
      [(UIScrollView *)self->_scrollView contentOffset];
      v10 = v8 + v9;
      [(UIScrollView *)self->_scrollView frame];
      content = self->_content;
      v13 = v12 - v8;

      [(EKDayViewContent *)content rectBecameVisible:0.0, v10, width, v13];
    }
  }
}

- (id)dateForXOffset:(double)offset
{
  [(WeekView *)self dayWidth];
  v6 = (offset / v5);
  if ((CalTimeDirectionIsLeftToRight() & 1) == 0)
  {
    v7 = [WeekView displayedDaysForOrientation:self->_orientation withViewInViewHierarchy:self];
    daysToDisplay = self->_daysToDisplay;
    if (v7 == 7)
    {
      v6 = ~v6 + daysToDisplay;
    }

    else
    {
      v6 = ~v6 + (daysToDisplay - [WeekView displayedDaysForOrientation:self->_orientation withViewInViewHierarchy:self]);
    }
  }

  startDate = [(EKDayViewContent *)self->_content startDate];
  v10 = [startDate calendarDateByAddingDays:v6];
  allComponents = [v10 allComponents];

  return allComponents;
}

- (void)setShowsTimeMarker:(BOOL)marker
{
  markerCopy = marker;
  grid = [(EKDayViewContent *)self->_content grid];
  [grid setShowsTimeLine:markerCopy];

  [(WeekView *)self _updateTimeMarkerTodayDay];
}

- (void)_updateTimeMarkerTodayDay
{
  grid = [(EKDayViewContent *)self->_content grid];
  showsTimeLine = [grid showsTimeLine];

  if (showsTimeLine)
  {
    weekStartDate = [(WeekView *)self weekStartDate];

    if (weekStartDate)
    {
      grid3 = CUIKTodayDate();
      calendar = self->_calendar;
      weekStartDate2 = [(WeekView *)self weekStartDate];
      v8 = [(NSCalendar *)calendar dateFromComponents:weekStartDate2];

      v9 = [(NSCalendar *)self->_calendar components:16 fromDate:v8 toDate:grid3 options:0];
      numMultiDays = [objc_opt_class() numMultiDays];
      if (-[WeekView containsDate:](self, "containsDate:", grid3) && [v9 day] <= numMultiDays)
      {
        v11 = [v9 day] + 1;
      }

      else
      {
        v11 = -1;
      }

      grid2 = [(EKDayViewContent *)self->_content grid];
      [grid2 setTimeMarkerTodayDay:v11];
    }

    else
    {
      grid3 = [(EKDayViewContent *)self->_content grid];
      [grid3 setTimeMarkerTodayDay:-1];
    }
  }
}

- (void)_updateHighlightedDay
{
  if (self->_highlightedDateComponents)
  {
    grid3 = [(NSCalendar *)self->_calendar dateFromComponents:?];
    weekStartDate = [(WeekView *)self weekStartDate];

    if (weekStartDate)
    {
      calendar = self->_calendar;
      weekStartDate2 = [(WeekView *)self weekStartDate];
      grid2 = [(NSCalendar *)calendar dateFromComponents:weekStartDate2];

      v7 = [(NSCalendar *)self->_calendar components:16 fromDate:grid2 toDate:grid3 options:0];
      [(NSCalendar *)self->_calendar rangeOfUnit:512 inUnit:0x2000 forDate:grid2];
      v9 = v8;
      if (-[WeekView containsDate:](self, "containsDate:", grid3) && ([v7 day] & 0x8000000000000000) == 0 && objc_msgSend(v7, "day") <= v9)
      {
        IsLeftToRight = CalTimeDirectionIsLeftToRight();
        v13 = [v7 day];
        if (IsLeftToRight)
        {
          v10 = v13 + 1;
        }

        else
        {
          v10 = v9 - v13;
        }
      }

      else
      {
        v10 = -1;
      }

      grid = [(EKDayViewContent *)self->_content grid];
      [grid setHighlightedDayIndex:v10];
    }

    else
    {
      grid2 = [(EKDayViewContent *)self->_content grid];
      [grid2 setHighlightedDayIndex:-1];
    }
  }

  else
  {
    grid3 = [(EKDayViewContent *)self->_content grid];
    [grid3 setHighlightedDayIndex:-1];
  }
}

- (BOOL)showsTimeMarker
{
  grid = [(EKDayViewContent *)self->_content grid];
  showsTimeLine = [grid showsTimeLine];

  return showsTimeLine;
}

- (void)setIsInUse:(BOOL)use
{
  self->_isInUse = use;
  if (!use)
  {
    [(EKDayViewContent *)self->_content stopRenderingEvents];
    allDayView = self->_allDayView;

    [(WeekAllDayView *)allDayView stopRenderingEvents];
  }
}

- (void)loadDataAsyncWithCompletion:(id)completion reverse:(BOOL)reverse
{
  completionCopy = completion;
  [(EKDayViewContent *)self->_content prepareForReuseIsReload:0];
  reloadQueue = self->_reloadQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006BA24;
  block[3] = &unk_10020F550;
  reverseCopy = reverse;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(reloadQueue, block);
}

- (void)reloadData
{
  v12 = [(NSCalendar *)self->_calendar dateFromComponents:self->_weekStartDate];
  lastSecondOfWeek = [(WeekView *)self lastSecondOfWeek];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [WeakRetained weekView:self allEventsForStartDate:v12 endDate:lastSecondOfWeek];

  if (v5)
  {
    v6 = [v5 copy];
    events = self->_events;
    self->_events = v6;

    content = self->_content;
    timedOccurrences = [v5 timedOccurrences];
    [(EKDayViewContent *)content setOccurrences:timedOccurrences];

    [(WeekAllDayView *)self->_allDayView saveTemporaryViews];
    [(WeekAllDayView *)self->_allDayView prepareForReuse];
    allDayView = self->_allDayView;
    allDayOccurrences = [v5 allDayOccurrences];
    [(WeekAllDayView *)allDayView setOccurrences:allDayOccurrences animated:0];

    [(WeekAllDayView *)self->_allDayView clearTemporaryViews];
    [(WeekView *)self setNeedsLayout];
  }
}

- (double)_positionOfSecond:(int64_t)second
{
  grid = [(EKDayViewContent *)self->_content grid];
  [grid positionOfSecond:second];
  v6 = v5;

  return v6;
}

- (int)_secondAtPosition:(double)position
{
  grid = [(EKDayViewContent *)self->_content grid];
  v5 = [grid secondAtPosition:position];

  return v5;
}

- (int64_t)firstVisibleSecond
{
  v3 = CalCanvasPocketEnabled();
  [(UIScrollView *)self->_scrollView contentOffset];
  v5 = v4;
  if (v3)
  {
    [(UIScrollView *)self->_scrollView contentInset];
    v5 = v5 + v6;
  }

  return [(WeekView *)self _secondAtPosition:v5];
}

- (void)setFirstVisibleSecond:(int64_t)second
{
  if ([(WeekView *)self firstVisibleSecond]!= second)
  {
    v5 = 0.0;
    if (CalCanvasPocketEnabled())
    {
      [(UIScrollView *)self->_scrollView contentInset];
      v5 = v6;
    }

    [(WeekView *)self _positionOfSecond:second];
    [(UIScrollView *)self->_scrollView setContentOffset:0.0, v7 - v5];
    [(WeekView *)self firstVisibleSecondChanged];
  }

  self->_selectedSecond = -1;
}

- (void)scrollToSecond:(int64_t)second animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  self->_selectedSecond = second;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10006C1C8;
  v28[3] = &unk_10020F308;
  v28[4] = self;
  v9 = completionCopy;
  v29 = v9;
  v10 = objc_retainBlock(v28);
  [(WeekView *)self _positionOfSecond:second];
  v12 = v11;
  [(UIScrollView *)self->_scrollView bounds];
  v14 = v13;
  [(EKDayViewContent *)self->_content bounds];
  v16 = v15;
  [(UIScrollView *)self->_scrollView contentInset];
  v18 = v17;
  [(UIScrollView *)self->_scrollView contentInset];
  v20 = v19;
  [(UIScrollView *)self->_scrollView contentOffset];
  v22 = v21;
  [(UIScrollView *)self->_scrollView contentInset];
  if (v12 > v22 + v23)
  {
    [(UIScrollView *)self->_scrollView contentOffset];
    if (v12 < v14 + v24)
    {
      goto LABEL_8;
    }
  }

  v25 = fmax(v12 + (v14 - v18) * -0.25 - v20, 0.0);
  v26 = v16 - v14;
  if (v16 - v14 >= v25)
  {
    v26 = v25;
  }

  if (!animatedCopy)
  {
    [(UIScrollView *)self->_scrollView setContentOffset:0.0, v26];
LABEL_8:
    (v10[2])(v10, 1);
    goto LABEL_9;
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10006C238;
  v27[3] = &unk_10020EDD8;
  v27[4] = self;
  v27[5] = 0;
  *&v27[6] = v26;
  [UIView animateWithDuration:v27 animations:v10 completion:0.4];
LABEL_9:
}

- (BOOL)scrollTowardPoint:(CGPoint)point
{
  y = point.y;
  self->_selectedSecond = -1;
  [(WeekAllDayView *)self->_allDayView frame];
  v5 = CGRectGetMaxY(v31) + 5.0;
  [(UIScrollView *)self->_scrollView frame];
  MaxY = CGRectGetMaxY(v32);
  [(UIScrollView *)self->_scrollView contentInset];
  if (y >= v5)
  {
    v15 = MaxY - v7 + -50.0;
    if (y > v15)
    {
      [(UIScrollView *)self->_scrollView contentOffset];
      v9 = v16;
      v18 = v17;
      [(UIScrollView *)self->_scrollView bounds];
      v20 = v18 + v19;
      [(UIScrollView *)self->_scrollView contentInset];
      v22 = v20 - v21;
      [(UIScrollView *)self->_scrollView contentSize];
      if (v22 < v23)
      {
        v24 = (y - v15) * 0.4 + v18;
        [(UIScrollView *)self->_scrollView contentSize];
        v26 = v25;
        [(UIScrollView *)self->_scrollView contentInset];
        v28 = v26 + v27;
        [(UIScrollView *)self->_scrollView bounds];
        v14 = fmin(v24, v28 - v29);
        goto LABEL_7;
      }
    }
  }

  else
  {
    [(UIScrollView *)self->_scrollView contentOffset];
    v9 = v8;
    v11 = v10;
    [(UIScrollView *)self->_scrollView contentInset];
    if (v11 + v12 > 0.0)
    {
      [(UIScrollView *)self->_scrollView contentInset];
      v14 = fmax(v11 + (v5 - y) * -0.4, -v13);
LABEL_7:
      [(UIScrollView *)self->_scrollView setContentOffset:v9, v14];
      return 1;
    }
  }

  return 0;
}

- (BOOL)isEventFullyVisible:(id)visible
{
  visibleCopy = visible;
  v5 = [(WeekView *)self occurrenceViewForEvent:visibleCopy occurrenceDate:0 forceMatchingContentSection:0];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  [v5 frame];
  v8 = v7;
  if (![visibleCopy isAllDay])
  {
    scrollView = self->_scrollView;
    [v6 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    superview = [v6 superview];
    [(UIScrollView *)scrollView convertRect:superview fromView:v11, v13, v15, v17];

    [(UIScrollView *)self->_scrollView frame];
    startDate = [visibleCopy startDate];
    timeZone = [(WeekView *)self timeZone];
    v21 = [EKCalendarDate calendarDateWithDate:startDate timeZone:timeZone];

    -[WeekView _positionOfSecond:](self, "_positionOfSecond:", 3600 * [v21 hour] + 60 * objc_msgSend(v21, "minute") + objc_msgSend(v21, "second"));
    v8 = v22;
  }

  [(UIScrollView *)self->_scrollView contentOffset];
  v24 = v23;
  [(UIScrollView *)self->_scrollView bounds];
  v26 = v25;
  [(UIScrollView *)self->_scrollView bounds];
  height = v30.size.height;
  v30.origin.x = 0.0;
  v30.origin.y = v24;
  v30.size.width = v26;
  if (v8 >= CGRectGetMinY(v30) && (v31.origin.x = 0.0, v31.origin.y = v24, v31.size.width = v26, v31.size.height = height, v8 < CGRectGetMaxY(v31)))
  {
    v28 = 1;
  }

  else
  {
LABEL_7:
    v28 = 0;
  }

  return v28;
}

- (void)scrollToEvent:(id)event animateWithDuration:(double)duration completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  v10 = [(WeekView *)self occurrenceViewForEvent:eventCopy occurrenceDate:0 forceMatchingContentSection:0];
  v11 = v10;
  if (v10)
  {
    [v10 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    if (([eventCopy isAllDay] & 1) == 0)
    {
      scrollView = self->_scrollView;
      [v11 frame];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      superview = [v11 superview];
      [(UIScrollView *)scrollView convertRect:superview fromView:v22, v24, v26, v28];
      v13 = v30;
      v17 = v31;
      v19 = v32;

      [(UIScrollView *)self->_scrollView frame];
      if (v19 >= v33)
      {
        v19 = v33;
      }

      startDate = [eventCopy startDate];
      timeZone = [(WeekView *)self timeZone];
      v36 = [EKCalendarDate calendarDateWithDate:startDate timeZone:timeZone];

      -[WeekView _positionOfSecond:](self, "_positionOfSecond:", 3600 * [v36 hour] + 60 * objc_msgSend(v36, "minute") + objc_msgSend(v36, "second"));
      v15 = v37;
    }

    if (duration <= 0.0)
    {
      [(UIScrollView *)self->_scrollView scrollRectToVisible:0 animated:v13, v15, v17, v19];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }

    else
    {
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10006C838;
      v38[3] = &unk_10020ED88;
      v38[4] = self;
      *&v38[5] = v13;
      *&v38[6] = v15;
      *&v38[7] = v17;
      *&v38[8] = v19;
      [UIView animateWithDuration:v38 animations:completionCopy completion:duration];
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  [(WeekView *)self firstVisibleSecondChanged];
}

- (void)setHourHeightScale:(double)scale
{
  if (self->_hourHeightScale != scale)
  {
    self->_hourHeightScale = scale;
    grid = [(EKDayViewContent *)self->_content grid];
    [grid setGridHeightScale:scale];

    content = self->_content;

    [(EKDayViewContent *)content setNeedsLayout];
  }
}

- (NSArray)occurrenceViews
{
  content = [(WeekView *)self content];
  occurrenceViews = [content occurrenceViews];

  return occurrenceViews;
}

- (void)_updateGridExtensionImageForScrollView:(id)view
{
  viewCopy = view;
  [viewCopy contentOffset];
  v5 = v4;
  [viewCopy contentSize];
  v7 = v6;
  [viewCopy bounds];
  if (v5 < 0.0)
  {
    _verticalGridExtensionImage = [(WeekView *)self _verticalGridExtensionImage];
    [(UIImageView *)self->_gridExtensionView setImage:_verticalGridExtensionImage];
    [(EKDayViewContent *)self->_content frame];
    v11 = v10;
    [_verticalGridExtensionImage size];
    v13 = v12;
    v14 = -v5;
    gridExtensionView = self->_gridExtensionView;
    v16 = v11;
    v17 = v5;
LABEL_5:
    [(UIImageView *)gridExtensionView setFrame:v16, v17, v13, v14];

    goto LABEL_6;
  }

  v18 = v5 - (v7 - v8);
  if (v18 > 0.0)
  {
    _verticalGridExtensionImage = [(WeekView *)self _verticalGridExtensionImage];
    [(UIImageView *)self->_gridExtensionView setImage:_verticalGridExtensionImage];
    [(EKDayViewContent *)self->_content frame];
    v20 = v19;
    [viewCopy contentSize];
    v22 = v21;
    [_verticalGridExtensionImage size];
    v13 = v23;
    gridExtensionView = self->_gridExtensionView;
    v16 = v20;
    v17 = v22;
    v14 = v18;
    goto LABEL_5;
  }

  if (CalCanvasPocketEnabled())
  {
    [(UIImageView *)self->_gridExtensionView setImage:0];
  }

LABEL_6:
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"EmptySearchBarNeedsResignFirstResponderNotification" object:self];

  self->_selectedSecond = -1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 weekViewDidBeginDragging:self];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  if (CalCanvasPocketEnabled())
  {
    [(WeekView *)self safeAreaInsets];
    [(WeekAllDayView *)self->_allDayView frame];
    [(WeekView *)self _updateCurtain];
  }

  [(WeekView *)self _updateGridExtensionImageForScrollView:scrollCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekViewDidScroll:self];
  }
}

- (void)_updateCurtain
{
  [(UIScrollView *)self->_scrollView contentOffset];
  v4 = v3;
  [(WeekAllDayView *)self->_allDayView frame];
  v5 = v4 + CGRectGetMaxY(v8);
  grid = [(EKDayViewContent *)self->_content grid];
  [grid setCurtainHeight:v5];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  [(WeekView *)self firstVisibleSecondChanged];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 weekViewDidEndDragging:self willDecelerate:decelerateCopy];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [(WeekView *)self firstVisibleSecondChanged];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekViewDidEndDecelerating:self];
  }
}

- (void)firstVisibleSecondChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 weekViewFirstVisibleSecondChanged:{-[WeekView firstVisibleSecond](self, "firstVisibleSecond")}];
    }
  }
}

- (id)_verticalGridExtensionImage
{
  if (!self->_verticalGridExtensionImage || (gridExtensionImageWidth = self->_gridExtensionImageWidth, [(WeekView *)self dayWidth], gridExtensionImageWidth != v4))
  {
    v5 = +[UITraitCollection _currentTraitCollection];
    traitCollection = [(WeekView *)self traitCollection];
    [UITraitCollection _setCurrentTraitCollection:traitCollection];

    daysToDisplay = self->_daysToDisplay;
    [(WeekView *)self dayWidth];
    v9 = v8 * daysToDisplay;
    v10 = [[UIGraphicsImageRenderer alloc] initWithSize:{v9, 1.0}];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10006D080;
    v17[3] = &unk_10020FB60;
    *&v17[5] = v9;
    v17[6] = 0x3FF0000000000000;
    v17[4] = self;
    v11 = [v10 imageWithActions:v17];
    verticalGridExtensionImage = self->_verticalGridExtensionImage;
    self->_verticalGridExtensionImage = v11;
    v13 = v11;

    [(WeekView *)self dayWidth];
    self->_gridExtensionImageWidth = v14;
    [UITraitCollection _setCurrentTraitCollection:v5];
  }

  v15 = self->_verticalGridExtensionImage;

  return v15;
}

- (void)updateMarkerPosition
{
  grid = [(EKDayViewContent *)self->_content grid];
  [grid updateMarkerPosition];
}

- (void)dayViewContent:(id)content didSelectEvent:(id)event userInitiated:(BOOL)initiated dateSelected:(id)selected
{
  initiatedCopy = initiated;
  eventCopy = event;
  selectedCopy = selected;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 weekView:self didSelectEvent:eventCopy userInitiated:initiatedCopy dateSelected:selectedCopy];
  }
}

- (void)dayViewContent:(id)content didSelectEvents:(id)events userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  eventsCopy = events;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 weekView:self didSelectEvents:eventsCopy userInitiated:initiatedCopy];
  }
}

- (void)dayViewContent:(id)content pointerDidTargetOccurrences:(id)occurrences
{
  occurrencesCopy = occurrences;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 weekView:self pointerDidTargetOccurrences:occurrencesCopy];
  }
}

- (void)dayViewContentDidLayout:(id)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekViewOccurrenceLayoutDidChange:self];
  }

  gridExtensionImageWidth = self->_gridExtensionImageWidth;
  [(WeekView *)self dayWidth];
  if (gridExtensionImageWidth != v8)
  {
    scrollView = self->_scrollView;

    [(WeekView *)self scrollViewDidScroll:scrollView];
  }
}

- (BOOL)dayViewContentShouldAnnotateAppEntities:(id)entities onDayStarting:(id)starting
{
  startingCopy = starting;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 weekViewShouldAnnotateAppEntities:self onDayStarting:startingCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)presentationControllerForEditMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  presentationControllerForEditMenu = [WeakRetained presentationControllerForEditMenu];

  return presentationControllerForEditMenu;
}

- (id)selectedEventsForEditMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  selectedEventsForEditMenu = [WeakRetained selectedEventsForEditMenu];

  return selectedEventsForEditMenu;
}

- (void)attemptDisplayReviewPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 attemptDisplayReviewPrompt];
  }
}

- (void)weekAllDayView:(id)view didSelectEvent:(id)event userInitiated:(BOOL)initiated dateSelected:(id)selected
{
  initiatedCopy = initiated;
  eventCopy = event;
  selectedCopy = selected;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 weekView:self didSelectEvent:eventCopy userInitiated:initiatedCopy dateSelected:selectedCopy];
  }
}

- (void)weekAllDayView:(id)view pointerDidTargetOccurrences:(id)occurrences
{
  occurrencesCopy = occurrences;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 weekView:self pointerDidTargetOccurrences:occurrencesCopy];
  }
}

- (void)weekAllDayViewEmptySpaceClick:(id)click onDay:(double)day
{
  [(WeekView *)self dayViewContent:0 didTapInEmptySpaceOnDay:?];
  delegate = [(WeekView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    timeZone = [(NSCalendar *)self->_calendar timeZone];
    v10 = [EKCalendarDate calendarDateWithAbsoluteTime:timeZone timeZone:day];

    delegate2 = [(WeekView *)self delegate];
    [delegate2 weekView:self receivedTapInAllDayAreaOnDate:v10];
  }
}

- (void)weekAllDayViewDidScroll:(id)scroll
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekViewAllDaySectionDidScroll:self];
  }
}

- (id)weekAllDayViewForTimeframeBefore:(id)before
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) != 0 && (v7 = objc_loadWeakRetained(&self->_delegate), [v7 weekViewForWeekBefore:self], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
    {
      WeakRetained = [v8 allDayView];
    }

    else
    {
      WeakRetained = 0;
    }
  }

  return WeakRetained;
}

- (id)weekAllDayViewForTimeframeAfter:(id)after
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) != 0 && (v7 = objc_loadWeakRetained(&self->_delegate), [v7 weekViewForWeekAfter:self], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
    {
      WeakRetained = [v8 allDayView];
    }

    else
    {
      WeakRetained = 0;
    }
  }

  return WeakRetained;
}

- (void)shouldAnnotateAppEntitiesChanged
{
  [(WeekAllDayView *)self->_allDayView shouldAnnotateAppEntitiesChanged];
  content = self->_content;

  [(EKDayViewContent *)content shouldAnnotateAppEntitiesChanged];
}

- (BOOL)weekAllDayViewShouldAnnotateAppEntities:(id)entities onDayStarting:(id)starting
{
  startingCopy = starting;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 weekViewShouldAnnotateAppEntities:self onDayStarting:startingCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)showOverlayMonthInCellAtOffset:(double)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  [(WeekAllDayView *)self->_allDayView frame];
  v7 = offset - CGRectGetMinX(v10);
  allDayView = self->_allDayView;

  [(WeekAllDayView *)allDayView showOverlayMonthInCellAtOffset:animatedCopy animated:v7];
}

- (BOOL)containsDate:(id)date
{
  dateCopy = date;
  startDate = [(EKDayViewContent *)self->_content startDate];
  [startDate absoluteTime];
  v7 = v6;

  lastDisplayedSecond = [(EKDayViewContent *)self->_content lastDisplayedSecond];
  [lastDisplayedSecond absoluteTime];
  v10 = v9;

  [dateCopy timeIntervalSinceReferenceDate];
  if (v11 >= v7)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    v12 = v13 <= v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGPoint)pointAtDate:(id)date isAllDay:(BOOL)day
{
  dayCopy = day;
  calendar = self->_calendar;
  dateCopy = date;
  timeZone = [(NSCalendar *)calendar timeZone];
  v9 = [EKCalendarDate calendarDateWithDate:dateCopy timeZone:timeZone];

  weekStartDate = self->_weekStartDate;
  timeZone2 = [(NSCalendar *)self->_calendar timeZone];
  v12 = [EKCalendarDate calendarDateWithDateComponents:weekStartDate timeZone:timeZone2];

  v13 = [v9 day];
  v14 = v13 - [v12 day];
  [v9 absoluteTime];
  v16 = v15;
  [v12 absoluteTime];
  if (v16 > v17 && v14 < 0)
  {
    v14 += [v12 daysInMonth];
  }

  [(WeekView *)self dayWidth];
  v19 = v18;
  if (CalTimeDirectionIsLeftToRight())
  {
    v20 = v19 * v14;
  }

  else
  {
    v21 = (self->_daysToDisplay + ~v14);
    [(WeekView *)self dayWidth];
    v20 = v22 * v21;
  }

  CalTimeDirectionIsLeftToRight();
  if (dayCopy)
  {
    allDayView = [(WeekView *)self allDayView];
    [allDayView firstEventYOffset];
    v25 = v24;
  }

  else
  {
    [(UIScrollView *)self->_scrollView frame];
    v27 = v26;
    [(UIScrollView *)self->_scrollView contentOffset];
    v29 = v27 - v28;
    -[WeekView _positionOfSecond:](self, "_positionOfSecond:", 3600 * [v9 hour] + 60 * objc_msgSend(v9, "minute") + objc_msgSend(v9, "second"));
    v25 = v29 + v30;
  }

  v31 = v20 + 2.0;
  v32 = v25;
  result.y = v32;
  result.x = v31;
  return result;
}

- (void)addViewToScroller:(id)scroller isAllDay:(BOOL)day
{
  dayCopy = day;
  scrollerCopy = scroller;
  superview = [scrollerCopy superview];
  scrollView = self->_scrollView;

  if (superview != scrollView)
  {
    if (dayCopy)
    {
      [(WeekAllDayView *)self->_allDayView addViewToScroller:scrollerCopy];
    }

    else
    {
      superview2 = [scrollerCopy superview];
      [scrollerCopy frame];
      [superview2 convertRect:self->_scrollView toView:?];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      [(UIScrollView *)self->_scrollView insertSubview:scrollerCopy aboveSubview:self->_content];
      [scrollerCopy setFrame:{v10, v12, v14, v16}];
    }
  }
}

- (BOOL)scrollerIsParentOfView:(id)view isAllDay:(BOOL)day
{
  if (day)
  {
    allDayView = self->_allDayView;

    return [(WeekAllDayView *)allDayView scrollerIsParentOfView:view];
  }

  else
  {
    scrollView = self->_scrollView;
    superview = [view superview];
    LOBYTE(scrollView) = scrollView == superview;

    return scrollView;
  }
}

- (id)occurrenceViewForEvent:(id)event occurrenceDate:(id)date forceMatchingContentSection:(BOOL)section
{
  sectionCopy = section;
  eventCopy = event;
  dateCopy = date;
  if (sectionCopy)
  {
    if ([eventCopy isAllDay])
    {
      [(WeekAllDayView *)self->_allDayView occurrenceViewForEvent:eventCopy occurrenceDate:dateCopy];
    }

    else
    {
      [(EKDayViewContent *)self->_content occurrenceViewForEvent:eventCopy];
    }
    v13 = ;
  }

  else
  {
    v10 = [(EKDayViewContent *)self->_content occurrenceViewForEvent:eventCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [(WeekAllDayView *)self->_allDayView occurrenceViewForEvent:eventCopy occurrenceDate:dateCopy];
    }

    v13 = v12;
  }

  return v13;
}

- (double)yPositionPerhapsMatchingAllDayOccurrence:(id)occurrence atPoint:(CGPoint)point
{
  x = point.x;
  occurrenceCopy = occurrence;
  v7 = [(WeekView *)self dateForXOffset:x];
  timeZone = [occurrenceCopy timeZone];
  v9 = [EKCalendarDate calendarDateWithDateComponents:v7 timeZone:timeZone];

  v10 = [(WeekAllDayView *)self->_allDayView occurrenceViewForEvent:occurrenceCopy occurrenceDate:v9];

  if (v10)
  {
    [(WeekAllDayView *)v10 bounds];
    selfCopy2 = self;
    allDayView = v10;
  }

  else
  {
    [(WeekAllDayView *)self->_allDayView nextAvailableOccurrenceViewYOriginForDay:v9];
    v12 = v15;
    allDayView = self->_allDayView;
    v11 = 0.0;
    selfCopy2 = self;
  }

  [(WeekView *)selfCopy2 convertPoint:allDayView fromView:v11, v12];
  v17 = v16;

  return v17;
}

- (void)dayViewContent:(id)content didTapInEmptySpaceOnDay:(double)day
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    timeZone = [(NSCalendar *)self->_calendar timeZone];
    v10 = [EKCalendarDate calendarDateWithAbsoluteTime:timeZone timeZone:day];

    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 emptySpaceClickedOnDate:v10];
  }
}

- (void)dayViewContent:(id)content didTapPinnedOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  startCalendarDate = [occurrenceCopy startCalendarDate];
  [startCalendarDate absoluteTime];
  v8 = v7;
  startCalendarDate2 = [occurrenceCopy startCalendarDate];

  calendarDateForDay = [startCalendarDate2 calendarDateForDay];
  [calendarDateForDay absoluteTime];
  v12 = (v8 - v11);

  [(WeekView *)self scrollToSecond:v12 animated:1 completion:0];
}

+ (double)windowSpaceForOrientation:(int64_t)orientation withViewInViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = hierarchyCopy;
  }

  else
  {
    window = [hierarchyCopy window];
  }

  v7 = window;
  EKUICurrentWindowWidthWithViewHierarchy();
  v9 = v8;
  if (EKUICurrentHeightSizeClassIsCompact() && EKUICurrentWidthSizeClassIsCompactInViewHierarchy())
  {
    EKUICurrentWindowHeightWithViewHierarchy();
    if (v9 < v10)
    {
      v9 = v10;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 mainContentSize];
      v9 = v11;
    }
  }

  if (EKUIIsExtended())
  {
    IsLeftToRight = CalTimeDirectionIsLeftToRight();
    [v7 safeAreaInsets];
    if (IsLeftToRight)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    v9 = v9 - v15;
  }

  [WeekTimeView widthForOrientation:orientation inViewHierarchy:hierarchyCopy];
  v17 = v9 - v16;

  return v17;
}

+ (double)dayWidthForOrientation:(int64_t)orientation withViewInViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  EKUICurrentWindowWidthWithViewHierarchy();
  v8 = v7;
  EKUICurrentWindowHeightWithViewHierarchy();
  v10 = v8 / v9;
  if (v10 < 1.0)
  {
    EKUICurrentWindowHeightWithViewHierarchy();
    v12 = v11;
    EKUICurrentWindowWidthWithViewHierarchy();
    v10 = v12 / v13;
  }

  if (EKUICurrentHeightSizeClassIsCompact() && EKUICurrentWidthSizeClassIsCompactInViewHierarchy() && v10 < 1.7)
  {
    v14 = 130.0;
  }

  else
  {
    [self windowSpaceForOrientation:orientation withViewInViewHierarchy:hierarchyCopy];
    [self displayedDaysForOrientation:orientation withViewInViewHierarchy:hierarchyCopy];
    CalCeilToScreenScale();
    v14 = v15;
  }

  return v14;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(WeekView *)self updateDayWidth];
  [(WeekAllDayView *)self->_allDayView sizeThatFits:width, height];
  v7 = height;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)updateDayWidth
{
  v3 = objc_opt_class();
  orientation = self->_orientation;
  WeakRetained = objc_loadWeakRetained(&self->_targetWindow);
  [v3 dayWidthForOrientation:orientation withViewInViewHierarchy:WeakRetained];
  v7 = v6;

  [(EKDayViewContent *)self->_content fixedDayWidth];
  if (v7 != v8)
  {
    [(EKDayViewContent *)self->_content setFixedDayWidth:v7];
    [(EKDayViewContent *)self->_content sizeToFit];
    scrollView = self->_scrollView;
    [(EKDayViewContent *)self->_content frame];
    [(UIScrollView *)scrollView setContentSize:v10, v11];
    [(WeekAllDayView *)self->_allDayView setFixedDayWidth:v7];

    [(WeekView *)self setNeedsLayout];
  }
}

- (WeekViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (WeekViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end