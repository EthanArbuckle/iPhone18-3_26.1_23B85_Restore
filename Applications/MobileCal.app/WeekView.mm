@interface WeekView
+ (double)dayWidthForOrientation:(int64_t)a3 withViewInViewHierarchy:(id)a4;
+ (double)windowSpaceForOrientation:(int64_t)a3 withViewInViewHierarchy:(id)a4;
+ (unint64_t)displayedDaysForOrientation:(int64_t)a3 withViewInViewHierarchy:(id)a4;
- (BOOL)containsDate:(id)a3;
- (BOOL)dayViewContentShouldAnnotateAppEntities:(id)a3 onDayStarting:(id)a4;
- (BOOL)isEventFullyVisible:(id)a3;
- (BOOL)scrollTowardPoint:(CGPoint)a3;
- (BOOL)scrollerIsParentOfView:(id)a3 isAllDay:(BOOL)a4;
- (BOOL)showsTimeMarker;
- (BOOL)weekAllDayViewShouldAnnotateAppEntities:(id)a3 onDayStarting:(id)a4;
- (CGPoint)pointAtDate:(id)a3 isAllDay:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)occurrenceViews;
- (NSDate)lastSecondOfWeek;
- (WeekView)initWithFrame:(CGRect)a3 sizeClass:(int64_t)a4 targetWindow:(id)a5 rightClickDelegate:(id)a6;
- (WeekViewDataSource)dataSource;
- (WeekViewDelegate)delegate;
- (double)_positionOfSecond:(int64_t)a3;
- (double)dayWidth;
- (double)yPositionPerhapsMatchingAllDayOccurrence:(id)a3 atPoint:(CGPoint)a4;
- (id)_verticalGridExtensionImage;
- (id)dateForXOffset:(double)a3;
- (id)occurrenceViewForEvent:(id)a3 occurrenceDate:(id)a4 forceMatchingContentSection:(BOOL)a5;
- (id)presentationControllerForEditMenu;
- (id)selectedEventsForEditMenu;
- (id)weekAllDayViewForTimeframeAfter:(id)a3;
- (id)weekAllDayViewForTimeframeBefore:(id)a3;
- (int)_secondAtPosition:(double)a3;
- (int64_t)daysToDisplay;
- (int64_t)firstVisibleSecond;
- (void)_updateCurtain;
- (void)_updateGridExtensionImageForScrollView:(id)a3;
- (void)_updateHighlightedDay;
- (void)_updateTimeMarkerTodayDay;
- (void)addViewToScroller:(id)a3 isAllDay:(BOOL)a4;
- (void)adjustForVisibleRect:(CGRect)a3;
- (void)attemptDisplayReviewPrompt;
- (void)dayViewContent:(id)a3 didSelectEvent:(id)a4 userInitiated:(BOOL)a5 dateSelected:(id)a6;
- (void)dayViewContent:(id)a3 didSelectEvents:(id)a4 userInitiated:(BOOL)a5;
- (void)dayViewContent:(id)a3 didTapInEmptySpaceOnDay:(double)a4;
- (void)dayViewContent:(id)a3 didTapPinnedOccurrence:(id)a4;
- (void)dayViewContent:(id)a3 pointerDidTargetOccurrences:(id)a4;
- (void)dayViewContentDidLayout:(id)a3;
- (void)firstVisibleSecondChanged;
- (void)hideNowDot:(BOOL)a3;
- (void)layoutSubviews;
- (void)loadDataAsyncWithCompletion:(id)a3 reverse:(BOOL)a4;
- (void)reloadData;
- (void)safeAreaInsetsDidChange;
- (void)scrollToEvent:(id)a3 animateWithDuration:(double)a4 completion:(id)a5;
- (void)scrollToSecond:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setCalendar:(id)a3;
- (void)setFirstVisibleSecond:(int64_t)a3;
- (void)setHighlightedDateComponents:(id)a3;
- (void)setHourHeightScale:(double)a3;
- (void)setIsInUse:(BOOL)a3;
- (void)setKnownSafeAreaInsetTop:(double)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setShowsTimeMarker:(BOOL)a3;
- (void)setTimeZone:(id)a3;
- (void)setWeekStartDate:(id)a3;
- (void)shouldAnnotateAppEntitiesChanged;
- (void)showOverlayMonthInCellAtOffset:(double)a3 animated:(BOOL)a4;
- (void)updateDayWidth;
- (void)updateMarkerPosition;
- (void)weekAllDayView:(id)a3 didSelectEvent:(id)a4 userInitiated:(BOOL)a5 dateSelected:(id)a6;
- (void)weekAllDayView:(id)a3 pointerDidTargetOccurrences:(id)a4;
- (void)weekAllDayViewDidScroll:(id)a3;
- (void)weekAllDayViewEmptySpaceClick:(id)a3 onDay:(double)a4;
@end

@implementation WeekView

+ (unint64_t)displayedDaysForOrientation:(int64_t)a3 withViewInViewHierarchy:(id)a4
{
  v6 = a4;
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
    v8 = [v6 traitCollection];
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
    v11 = [v6 traitCollection];
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
    [a1 windowSpaceForOrientation:a3 withViewInViewHierarchy:v6];
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

- (WeekView)initWithFrame:(CGRect)a3 sizeClass:(int64_t)a4 targetWindow:(id)a5 rightClickDelegate:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a5;
  v14 = a6;
  v63.receiver = self;
  v63.super_class = WeekView;
  v15 = [(WeekView *)&v63 initWithFrame:x, y, width, height];
  if (v15)
  {
    v16 = EKUIInterfaceOrientationForViewHierarchy();
    v17 = [(WeekView *)v15 daysToDisplay];
    objc_storeWeak(&v15->_targetWindow, v13);
    v15->_daysToDisplay = v17;
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
    v22 = [(WeekAllDayView *)v18 initWithFrame:v16 orientation:v17 numberOfDaysToDisplay:1 opaque:v59 backgroundColor:v14 rightClickDelegate:CGRectZero.origin.x, v19, v20, v21];
    allDayView = v15->_allDayView;
    v15->_allDayView = v22;

    [(WeekAllDayView *)v15->_allDayView setDelegate:v15];
    [(WeekAllDayView *)v15->_allDayView setOrientation:v16];
    [(WeekAllDayView *)v15->_allDayView setShowsHalfOfScrolledEvents:1];
    -[WeekAllDayView setUsesSmallText:](v15->_allDayView, "setUsesSmallText:", [objc_opt_class() usesSmallTextForIsCompact:a4 == 1]);
    [(WeekAllDayView *)v15->_allDayView setShowSeparatorLines:1];
    [(WeekView *)v15 addSubview:v15->_allDayView];
    v24 = [EKDayViewContent alloc];
    v25 = +[UIColor systemBackgroundColor];
    v26 = [v24 initWithFrame:a4 sizeClass:v16 orientation:v25 backgroundColor:0 opaque:0 isMiniPreviewInEventDetail:v17 numberOfDaysToDisplay:{CGRectZero.origin.x, v19, v20, v21}];
    content = v15->_content;
    v15->_content = v26;

    v28 = v15->_content;
    v29 = [[EKUIRightClickEmptySpaceInteraction alloc] initWithDelegate:v14];
    [(EKDayViewContent *)v28 addInteraction:v29];

    [(EKDayViewContent *)v15->_content setEventsFillGrid:1];
    v30 = [(EKDayViewContent *)v15->_content grid];
    [v30 setShowsLeftBorder:0];

    v31 = [(EKDayViewContent *)v15->_content grid];
    [v31 setShowsRightBorder:0];

    v32 = [(EKDayViewContent *)v15->_content grid];
    [v32 setRightBorderInsetsOccurrences:0];

    v33 = [(EKDayViewContent *)v15->_content grid];
    [v33 setEventHorizontalInset:-6.0];

    [(EKDayViewContent *)v15->_content setOrientation:v16];
    -[EKDayViewContent setUsesSmallText:](v15->_content, "setUsesSmallText:", [objc_opt_class() usesSmallTextForIsCompact:a4 == 1]);
    [(EKDayViewContent *)v15->_content setDelegate:v15];
    [(EKDayViewContent *)v15->_content sizeToFit];
    if ((CalSolariumEnabled() & 1) == 0)
    {
      [objc_opt_class() dayWidthForOrientation:v16 withViewInViewHierarchy:v13];
      v35 = v34;
      [(WeekAllDayView *)v15->_allDayView setFixedDayWidth:?];
      [(EKDayViewContent *)v15->_content setFixedDayWidth:v35];
    }

    if (CalCanvasPocketEnabled())
    {
      v36 = objc_opt_new();
      emptyViewForPocket = v15->_emptyViewForPocket;
      v15->_emptyViewForPocket = v36;

      [(WeekView *)v15 addSubview:v15->_emptyViewForPocket];
      if ([(WeekView *)v15 daysToDisplay]== 2)
      {
        v38 = objc_opt_new();
        emptyViewForBottomPocket = v15->_emptyViewForBottomPocket;
        v15->_emptyViewForBottomPocket = v38;

        [(WeekView *)v15 addSubview:v15->_emptyViewForBottomPocket];
      }
    }

    if (a4 != 1)
    {
      +[EKDayOccurrenceView defaultPadding];
      [(EKDayViewContent *)v15->_content setOccurrencePadding:0.5, 2.0];
    }

    v40 = objc_alloc_init(UIScrollView);
    scrollView = v15->_scrollView;
    v15->_scrollView = v40;

    v42 = +[UIColor systemBackgroundColor];
    [(UIScrollView *)v15->_scrollView setBackgroundColor:v42];

    v43 = v15->_scrollView;
    [(EKDayViewContent *)v15->_content frame];
    [(UIScrollView *)v43 setContentSize:v44, v45];
    [(UIScrollView *)v15->_scrollView addSubview:v15->_content];
    [(UIScrollView *)v15->_scrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v15->_scrollView setScrollsToTop:0];
    [(UIScrollView *)v15->_scrollView setAutoresizingMask:18];
    [(UIScrollView *)v15->_scrollView setDelegate:v15];
    if (CalCanvasPocketEnabled())
    {
      [(UIScrollView *)v15->_scrollView setContentInsetAdjustmentBehavior:2];
      [(UIScrollView *)v15->_scrollView _setPocketStyle:1 forEdge:1];
      v46 = v15->_emptyViewForPocket;
      v47 = [[_UIScrollPocketInteraction alloc] initWithScrollView:v15->_scrollView edge:1 style:0];
      [(UIView *)v46 addInteraction:v47];

      v48 = v15->_allDayView;
      v49 = [[_UIScrollPocketInteraction alloc] initWithScrollView:v15->_scrollView edge:1 style:0];
      [(WeekAllDayView *)v48 addInteraction:v49];

      if ([(WeekView *)v15 daysToDisplay]== 2)
      {
        v50 = v15->_emptyViewForBottomPocket;
        v51 = [[_UIScrollPocketInteraction alloc] initWithScrollView:v15->_scrollView edge:4 style:0];
        [(UIView *)v50 addInteraction:v51];
      }
    }

    [(WeekView *)v15 addSubview:v15->_scrollView];
    [(WeekView *)v15 setAutoresizingMask:16];
    v15->_hourHeightScale = 1.0;
    v15->_knownSafeAreaInsetTop = 0.0;
    [(WeekView *)v15 bringSubviewToFront:v15->_allDayView];
    v52 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, v19, v20, v21}];
    gridExtensionView = v15->_gridExtensionView;
    v15->_gridExtensionView = v52;

    [(UIImageView *)v15->_gridExtensionView setOpaque:0];
    [(UIScrollView *)v15->_scrollView insertSubview:v15->_gridExtensionView atIndex:0];
    v15->_selectedSecond = -1;
    [(WeekView *)v15 setOrientation:v16];
    v54 = dispatch_queue_create("weekReload", 0);
    reloadQueue = v15->_reloadQueue;
    v15->_reloadQueue = v54;

    objc_initWeak(&location, v15);
    v64 = objc_opt_class();
    v56 = [NSArray arrayWithObjects:&v64 count:1];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_10006A934;
    v60[3] = &unk_10020E9E0;
    objc_copyWeak(&v61, &location);
    v57 = [(WeekView *)v15 registerForTraitChanges:v56 withHandler:v60];

    objc_destroyWeak(&v61);
    objc_destroyWeak(&location);
  }

  return v15;
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

- (void)setOrientation:(int64_t)a3
{
  self->_orientation = a3;
  verticalGridExtensionImage = self->_verticalGridExtensionImage;
  self->_verticalGridExtensionImage = 0;

  [(EKDayViewContent *)self->_content setOrientation:a3];
  if ((CalSolariumEnabled() & 1) == 0)
  {
    [(WeekView *)self dayWidth];
    v7 = v6;
    [(EKDayViewContent *)self->_content setFixedDayWidth:?];
    [(WeekAllDayView *)self->_allDayView setFixedDayWidth:v7];
  }

  [(EKDayViewContent *)self->_content sizeToFit];
  v8 = [(EKDayViewContent *)self->_content grid];
  [v8 updateMarkerPosition];

  scrollView = self->_scrollView;
  [(EKDayViewContent *)self->_content frame];
  [(UIScrollView *)scrollView setContentSize:v10, v11];

  [(WeekView *)self setNeedsLayout];
}

- (void)setKnownSafeAreaInsetTop:(double)a3
{
  if (self->_knownSafeAreaInsetTop != a3)
  {
    self->_knownSafeAreaInsetTop = a3;
    [(WeekAllDayView *)self->_allDayView frame];
    v6 = v5 + a3;
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
    v12 = [(EKDayViewContent *)self->_content grid];
    [v12 updateMarkerPosition];

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
    v23 = [(WeekView *)self hasAllDayEvents];
    [(WeekView *)self bounds];
    v25 = v24;
    v49.origin.x = 0.0;
    v49.origin.y = v19;
    v49.size.width = v21;
    v49.size.height = v17;
    MaxY = CGRectGetMaxY(v49);
    if ((v23 & 1) == 0)
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

- (void)hideNowDot:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKDayViewContent *)self->_content grid];
  [v4 hideNowDot:v3];
}

- (void)setWeekStartDate:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_weekStartDate] & 1) == 0)
  {
    v4 = [v6 dateComponentsForDateOnly];
    weekStartDate = self->_weekStartDate;
    self->_weekStartDate = v4;

    [(WeekAllDayView *)self->_allDayView setStartDate:self->_weekStartDate];
    [(EKDayViewContent *)self->_content setStartDateWithDateComponents:self->_weekStartDate];
    [(WeekView *)self _updateTimeMarkerTodayDay];
  }
}

- (void)setCalendar:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_calendar] & 1) == 0)
  {
    v4 = [v6 copy];
    calendar = self->_calendar;
    self->_calendar = v4;

    [(EKDayViewContent *)self->_content setCalendar:v6];
    [(WeekAllDayView *)self->_allDayView setCalendar:v6];
    [(WeekView *)self _updateTimeMarkerTodayDay];
  }
}

- (void)setTimeZone:(id)a3
{
  v7 = a3;
  v4 = [(NSCalendar *)self->_calendar timeZone];
  if (([v7 isEqualToTimeZone:v4] & 1) == 0)
  {

    goto LABEL_5;
  }

  v5 = [(EKDayViewContent *)self->_content timeZone];
  v6 = [v7 isEqualToTimeZone:v5];

  if ((v6 & 1) == 0)
  {
LABEL_5:
    [(NSCalendar *)self->_calendar setTimeZone:v7];
    [(EKDayViewContent *)self->_content setTimeZone:v7];
    [(WeekAllDayView *)self->_allDayView setTimeZone:v7];
  }
}

- (void)setHighlightedDateComponents:(id)a3
{
  objc_storeStrong(&self->_highlightedDateComponents, a3);

  [(WeekView *)self _updateHighlightedDay];
}

- (NSDate)lastSecondOfWeek
{
  v2 = [(EKDayViewContent *)self->_content lastDisplayedSecond];
  v3 = [v2 date];

  return v3;
}

- (void)adjustForVisibleRect:(CGRect)a3
{
  width = a3.size.width;
  [(WeekView *)self frame:a3.origin.x];
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

- (id)dateForXOffset:(double)a3
{
  [(WeekView *)self dayWidth];
  v6 = (a3 / v5);
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

  v9 = [(EKDayViewContent *)self->_content startDate];
  v10 = [v9 calendarDateByAddingDays:v6];
  v11 = [v10 allComponents];

  return v11;
}

- (void)setShowsTimeMarker:(BOOL)a3
{
  v3 = a3;
  v5 = [(EKDayViewContent *)self->_content grid];
  [v5 setShowsTimeLine:v3];

  [(WeekView *)self _updateTimeMarkerTodayDay];
}

- (void)_updateTimeMarkerTodayDay
{
  v3 = [(EKDayViewContent *)self->_content grid];
  v4 = [v3 showsTimeLine];

  if (v4)
  {
    v5 = [(WeekView *)self weekStartDate];

    if (v5)
    {
      v13 = CUIKTodayDate();
      calendar = self->_calendar;
      v7 = [(WeekView *)self weekStartDate];
      v8 = [(NSCalendar *)calendar dateFromComponents:v7];

      v9 = [(NSCalendar *)self->_calendar components:16 fromDate:v8 toDate:v13 options:0];
      v10 = [objc_opt_class() numMultiDays];
      if (-[WeekView containsDate:](self, "containsDate:", v13) && [v9 day] <= v10)
      {
        v11 = [v9 day] + 1;
      }

      else
      {
        v11 = -1;
      }

      v12 = [(EKDayViewContent *)self->_content grid];
      [v12 setTimeMarkerTodayDay:v11];
    }

    else
    {
      v13 = [(EKDayViewContent *)self->_content grid];
      [v13 setTimeMarkerTodayDay:-1];
    }
  }
}

- (void)_updateHighlightedDay
{
  if (self->_highlightedDateComponents)
  {
    v14 = [(NSCalendar *)self->_calendar dateFromComponents:?];
    v3 = [(WeekView *)self weekStartDate];

    if (v3)
    {
      calendar = self->_calendar;
      v5 = [(WeekView *)self weekStartDate];
      v6 = [(NSCalendar *)calendar dateFromComponents:v5];

      v7 = [(NSCalendar *)self->_calendar components:16 fromDate:v6 toDate:v14 options:0];
      [(NSCalendar *)self->_calendar rangeOfUnit:512 inUnit:0x2000 forDate:v6];
      v9 = v8;
      if (-[WeekView containsDate:](self, "containsDate:", v14) && ([v7 day] & 0x8000000000000000) == 0 && objc_msgSend(v7, "day") <= v9)
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

      v11 = [(EKDayViewContent *)self->_content grid];
      [v11 setHighlightedDayIndex:v10];
    }

    else
    {
      v6 = [(EKDayViewContent *)self->_content grid];
      [v6 setHighlightedDayIndex:-1];
    }
  }

  else
  {
    v14 = [(EKDayViewContent *)self->_content grid];
    [v14 setHighlightedDayIndex:-1];
  }
}

- (BOOL)showsTimeMarker
{
  v2 = [(EKDayViewContent *)self->_content grid];
  v3 = [v2 showsTimeLine];

  return v3;
}

- (void)setIsInUse:(BOOL)a3
{
  self->_isInUse = a3;
  if (!a3)
  {
    [(EKDayViewContent *)self->_content stopRenderingEvents];
    allDayView = self->_allDayView;

    [(WeekAllDayView *)allDayView stopRenderingEvents];
  }
}

- (void)loadDataAsyncWithCompletion:(id)a3 reverse:(BOOL)a4
{
  v6 = a3;
  [(EKDayViewContent *)self->_content prepareForReuseIsReload:0];
  reloadQueue = self->_reloadQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006BA24;
  block[3] = &unk_10020F550;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(reloadQueue, block);
}

- (void)reloadData
{
  v12 = [(NSCalendar *)self->_calendar dateFromComponents:self->_weekStartDate];
  v3 = [(WeekView *)self lastSecondOfWeek];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [WeakRetained weekView:self allEventsForStartDate:v12 endDate:v3];

  if (v5)
  {
    v6 = [v5 copy];
    events = self->_events;
    self->_events = v6;

    content = self->_content;
    v9 = [v5 timedOccurrences];
    [(EKDayViewContent *)content setOccurrences:v9];

    [(WeekAllDayView *)self->_allDayView saveTemporaryViews];
    [(WeekAllDayView *)self->_allDayView prepareForReuse];
    allDayView = self->_allDayView;
    v11 = [v5 allDayOccurrences];
    [(WeekAllDayView *)allDayView setOccurrences:v11 animated:0];

    [(WeekAllDayView *)self->_allDayView clearTemporaryViews];
    [(WeekView *)self setNeedsLayout];
  }
}

- (double)_positionOfSecond:(int64_t)a3
{
  v4 = [(EKDayViewContent *)self->_content grid];
  [v4 positionOfSecond:a3];
  v6 = v5;

  return v6;
}

- (int)_secondAtPosition:(double)a3
{
  v4 = [(EKDayViewContent *)self->_content grid];
  v5 = [v4 secondAtPosition:a3];

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

- (void)setFirstVisibleSecond:(int64_t)a3
{
  if ([(WeekView *)self firstVisibleSecond]!= a3)
  {
    v5 = 0.0;
    if (CalCanvasPocketEnabled())
    {
      [(UIScrollView *)self->_scrollView contentInset];
      v5 = v6;
    }

    [(WeekView *)self _positionOfSecond:a3];
    [(UIScrollView *)self->_scrollView setContentOffset:0.0, v7 - v5];
    [(WeekView *)self firstVisibleSecondChanged];
  }

  self->_selectedSecond = -1;
}

- (void)scrollToSecond:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  self->_selectedSecond = a3;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10006C1C8;
  v28[3] = &unk_10020F308;
  v28[4] = self;
  v9 = v8;
  v29 = v9;
  v10 = objc_retainBlock(v28);
  [(WeekView *)self _positionOfSecond:a3];
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

  if (!v5)
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

- (BOOL)scrollTowardPoint:(CGPoint)a3
{
  y = a3.y;
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

- (BOOL)isEventFullyVisible:(id)a3
{
  v4 = a3;
  v5 = [(WeekView *)self occurrenceViewForEvent:v4 occurrenceDate:0 forceMatchingContentSection:0];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  [v5 frame];
  v8 = v7;
  if (![v4 isAllDay])
  {
    scrollView = self->_scrollView;
    [v6 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v6 superview];
    [(UIScrollView *)scrollView convertRect:v18 fromView:v11, v13, v15, v17];

    [(UIScrollView *)self->_scrollView frame];
    v19 = [v4 startDate];
    v20 = [(WeekView *)self timeZone];
    v21 = [EKCalendarDate calendarDateWithDate:v19 timeZone:v20];

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

- (void)scrollToEvent:(id)a3 animateWithDuration:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(WeekView *)self occurrenceViewForEvent:v8 occurrenceDate:0 forceMatchingContentSection:0];
  v11 = v10;
  if (v10)
  {
    [v10 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    if (([v8 isAllDay] & 1) == 0)
    {
      scrollView = self->_scrollView;
      [v11 frame];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = [v11 superview];
      [(UIScrollView *)scrollView convertRect:v29 fromView:v22, v24, v26, v28];
      v13 = v30;
      v17 = v31;
      v19 = v32;

      [(UIScrollView *)self->_scrollView frame];
      if (v19 >= v33)
      {
        v19 = v33;
      }

      v34 = [v8 startDate];
      v35 = [(WeekView *)self timeZone];
      v36 = [EKCalendarDate calendarDateWithDate:v34 timeZone:v35];

      -[WeekView _positionOfSecond:](self, "_positionOfSecond:", 3600 * [v36 hour] + 60 * objc_msgSend(v36, "minute") + objc_msgSend(v36, "second"));
      v15 = v37;
    }

    if (a4 <= 0.0)
    {
      [(UIScrollView *)self->_scrollView scrollRectToVisible:0 animated:v13, v15, v17, v19];
      if (v9)
      {
        v9[2](v9, 1);
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
      [UIView animateWithDuration:v38 animations:v9 completion:a4];
    }
  }

  else if (v9)
  {
    v9[2](v9, 0);
  }

  [(WeekView *)self firstVisibleSecondChanged];
}

- (void)setHourHeightScale:(double)a3
{
  if (self->_hourHeightScale != a3)
  {
    self->_hourHeightScale = a3;
    v5 = [(EKDayViewContent *)self->_content grid];
    [v5 setGridHeightScale:a3];

    content = self->_content;

    [(EKDayViewContent *)content setNeedsLayout];
  }
}

- (NSArray)occurrenceViews
{
  v2 = [(WeekView *)self content];
  v3 = [v2 occurrenceViews];

  return v3;
}

- (void)_updateGridExtensionImageForScrollView:(id)a3
{
  v24 = a3;
  [v24 contentOffset];
  v5 = v4;
  [v24 contentSize];
  v7 = v6;
  [v24 bounds];
  if (v5 < 0.0)
  {
    v9 = [(WeekView *)self _verticalGridExtensionImage];
    [(UIImageView *)self->_gridExtensionView setImage:v9];
    [(EKDayViewContent *)self->_content frame];
    v11 = v10;
    [v9 size];
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
    v9 = [(WeekView *)self _verticalGridExtensionImage];
    [(UIImageView *)self->_gridExtensionView setImage:v9];
    [(EKDayViewContent *)self->_content frame];
    v20 = v19;
    [v24 contentSize];
    v22 = v21;
    [v9 size];
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

- (void)scrollViewWillBeginDragging:(id)a3
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

- (void)scrollViewDidScroll:(id)a3
{
  v7 = a3;
  [v7 contentOffset];
  if (CalCanvasPocketEnabled())
  {
    [(WeekView *)self safeAreaInsets];
    [(WeekAllDayView *)self->_allDayView frame];
    [(WeekView *)self _updateCurtain];
  }

  [(WeekView *)self _updateGridExtensionImageForScrollView:v7];
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
  v6 = [(EKDayViewContent *)self->_content grid];
  [v6 setCurtainHeight:v5];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  [(WeekView *)self firstVisibleSecondChanged];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 weekViewDidEndDragging:self willDecelerate:v4];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
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
    v6 = [(WeekView *)self traitCollection];
    [UITraitCollection _setCurrentTraitCollection:v6];

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
  v2 = [(EKDayViewContent *)self->_content grid];
  [v2 updateMarkerPosition];
}

- (void)dayViewContent:(id)a3 didSelectEvent:(id)a4 userInitiated:(BOOL)a5 dateSelected:(id)a6
{
  v7 = a5;
  v13 = a4;
  v9 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 weekView:self didSelectEvent:v13 userInitiated:v7 dateSelected:v9];
  }
}

- (void)dayViewContent:(id)a3 didSelectEvents:(id)a4 userInitiated:(BOOL)a5
{
  v5 = a5;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 weekView:self didSelectEvents:v10 userInitiated:v5];
  }
}

- (void)dayViewContent:(id)a3 pointerDidTargetOccurrences:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 weekView:self pointerDidTargetOccurrences:v8];
  }
}

- (void)dayViewContentDidLayout:(id)a3
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

- (BOOL)dayViewContentShouldAnnotateAppEntities:(id)a3 onDayStarting:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 weekViewShouldAnnotateAppEntities:self onDayStarting:v5];
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
  v3 = [WeakRetained presentationControllerForEditMenu];

  return v3;
}

- (id)selectedEventsForEditMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained selectedEventsForEditMenu];

  return v3;
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

- (void)weekAllDayView:(id)a3 didSelectEvent:(id)a4 userInitiated:(BOOL)a5 dateSelected:(id)a6
{
  v7 = a5;
  v13 = a4;
  v9 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 weekView:self didSelectEvent:v13 userInitiated:v7 dateSelected:v9];
  }
}

- (void)weekAllDayView:(id)a3 pointerDidTargetOccurrences:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 weekView:self pointerDidTargetOccurrences:v8];
  }
}

- (void)weekAllDayViewEmptySpaceClick:(id)a3 onDay:(double)a4
{
  [(WeekView *)self dayViewContent:0 didTapInEmptySpaceOnDay:?];
  v6 = [(WeekView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(NSCalendar *)self->_calendar timeZone];
    v10 = [EKCalendarDate calendarDateWithAbsoluteTime:v8 timeZone:a4];

    v9 = [(WeekView *)self delegate];
    [v9 weekView:self receivedTapInAllDayAreaOnDate:v10];
  }
}

- (void)weekAllDayViewDidScroll:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 weekViewAllDaySectionDidScroll:self];
  }
}

- (id)weekAllDayViewForTimeframeBefore:(id)a3
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

- (id)weekAllDayViewForTimeframeAfter:(id)a3
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

- (BOOL)weekAllDayViewShouldAnnotateAppEntities:(id)a3 onDayStarting:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 weekViewShouldAnnotateAppEntities:self onDayStarting:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)showOverlayMonthInCellAtOffset:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(WeekAllDayView *)self->_allDayView frame];
  v7 = a3 - CGRectGetMinX(v10);
  allDayView = self->_allDayView;

  [(WeekAllDayView *)allDayView showOverlayMonthInCellAtOffset:v4 animated:v7];
}

- (BOOL)containsDate:(id)a3
{
  v4 = a3;
  v5 = [(EKDayViewContent *)self->_content startDate];
  [v5 absoluteTime];
  v7 = v6;

  v8 = [(EKDayViewContent *)self->_content lastDisplayedSecond];
  [v8 absoluteTime];
  v10 = v9;

  [v4 timeIntervalSinceReferenceDate];
  if (v11 >= v7)
  {
    [v4 timeIntervalSinceReferenceDate];
    v12 = v13 <= v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGPoint)pointAtDate:(id)a3 isAllDay:(BOOL)a4
{
  v4 = a4;
  calendar = self->_calendar;
  v7 = a3;
  v8 = [(NSCalendar *)calendar timeZone];
  v9 = [EKCalendarDate calendarDateWithDate:v7 timeZone:v8];

  weekStartDate = self->_weekStartDate;
  v11 = [(NSCalendar *)self->_calendar timeZone];
  v12 = [EKCalendarDate calendarDateWithDateComponents:weekStartDate timeZone:v11];

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
  if (v4)
  {
    v23 = [(WeekView *)self allDayView];
    [v23 firstEventYOffset];
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

- (void)addViewToScroller:(id)a3 isAllDay:(BOOL)a4
{
  v4 = a4;
  v17 = a3;
  v6 = [v17 superview];
  scrollView = self->_scrollView;

  if (v6 != scrollView)
  {
    if (v4)
    {
      [(WeekAllDayView *)self->_allDayView addViewToScroller:v17];
    }

    else
    {
      v8 = [v17 superview];
      [v17 frame];
      [v8 convertRect:self->_scrollView toView:?];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      [(UIScrollView *)self->_scrollView insertSubview:v17 aboveSubview:self->_content];
      [v17 setFrame:{v10, v12, v14, v16}];
    }
  }
}

- (BOOL)scrollerIsParentOfView:(id)a3 isAllDay:(BOOL)a4
{
  if (a4)
  {
    allDayView = self->_allDayView;

    return [(WeekAllDayView *)allDayView scrollerIsParentOfView:a3];
  }

  else
  {
    scrollView = self->_scrollView;
    v7 = [a3 superview];
    LOBYTE(scrollView) = scrollView == v7;

    return scrollView;
  }
}

- (id)occurrenceViewForEvent:(id)a3 occurrenceDate:(id)a4 forceMatchingContentSection:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    if ([v8 isAllDay])
    {
      [(WeekAllDayView *)self->_allDayView occurrenceViewForEvent:v8 occurrenceDate:v9];
    }

    else
    {
      [(EKDayViewContent *)self->_content occurrenceViewForEvent:v8];
    }
    v13 = ;
  }

  else
  {
    v10 = [(EKDayViewContent *)self->_content occurrenceViewForEvent:v8];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [(WeekAllDayView *)self->_allDayView occurrenceViewForEvent:v8 occurrenceDate:v9];
    }

    v13 = v12;
  }

  return v13;
}

- (double)yPositionPerhapsMatchingAllDayOccurrence:(id)a3 atPoint:(CGPoint)a4
{
  x = a4.x;
  v6 = a3;
  v7 = [(WeekView *)self dateForXOffset:x];
  v8 = [v6 timeZone];
  v9 = [EKCalendarDate calendarDateWithDateComponents:v7 timeZone:v8];

  v10 = [(WeekAllDayView *)self->_allDayView occurrenceViewForEvent:v6 occurrenceDate:v9];

  if (v10)
  {
    [(WeekAllDayView *)v10 bounds];
    v13 = self;
    allDayView = v10;
  }

  else
  {
    [(WeekAllDayView *)self->_allDayView nextAvailableOccurrenceViewYOriginForDay:v9];
    v12 = v15;
    allDayView = self->_allDayView;
    v11 = 0.0;
    v13 = self;
  }

  [(WeekView *)v13 convertPoint:allDayView fromView:v11, v12];
  v17 = v16;

  return v17;
}

- (void)dayViewContent:(id)a3 didTapInEmptySpaceOnDay:(double)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(NSCalendar *)self->_calendar timeZone];
    v10 = [EKCalendarDate calendarDateWithAbsoluteTime:v8 timeZone:a4];

    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 emptySpaceClickedOnDate:v10];
  }
}

- (void)dayViewContent:(id)a3 didTapPinnedOccurrence:(id)a4
{
  v5 = a4;
  v6 = [v5 startCalendarDate];
  [v6 absoluteTime];
  v8 = v7;
  v9 = [v5 startCalendarDate];

  v10 = [v9 calendarDateForDay];
  [v10 absoluteTime];
  v12 = (v8 - v11);

  [(WeekView *)self scrollToSecond:v12 animated:1 completion:0];
}

+ (double)windowSpaceForOrientation:(int64_t)a3 withViewInViewHierarchy:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = [v5 window];
  }

  v7 = v6;
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

  [WeekTimeView widthForOrientation:a3 inViewHierarchy:v5];
  v17 = v9 - v16;

  return v17;
}

+ (double)dayWidthForOrientation:(int64_t)a3 withViewInViewHierarchy:(id)a4
{
  v6 = a4;
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
    [a1 windowSpaceForOrientation:a3 withViewInViewHierarchy:v6];
    [a1 displayedDaysForOrientation:a3 withViewInViewHierarchy:v6];
    CalCeilToScreenScale();
    v14 = v15;
  }

  return v14;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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