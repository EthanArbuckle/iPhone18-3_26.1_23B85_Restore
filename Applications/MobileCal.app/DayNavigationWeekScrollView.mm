@interface DayNavigationWeekScrollView
- (BOOL)_isDateWeekend:(id)a3;
- (BOOL)canAnimateToDate:(id)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGSize)cellSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (DayNavigationWeekScrollView)initWithFrame:(CGRect)a3 calendar:(id)a4 selectedDate:(id)a5 cellFactory:(id)a6 eventSpringLoadingEnabled:(BOOL)a7;
- (DayNavigationWeekScrollViewDelegate)navDelegate;
- (NSDate)today;
- (double)_alignXToPage:(double)a3;
- (double)_calculateCellWidth;
- (double)_offsetAllViews:(double)a3;
- (id)_badgeDataForDate:(id)a3 outIsLoading:(BOOL *)a4;
- (id)_selectedDateAsCalendarDate;
- (id)_weekStartForDate:(id)a3;
- (id)multiDayHighlightView;
- (id)selectedDateAfterScrollingToPoint:(CGPoint)a3;
- (id)visibleCellBadgeColors;
- (id)visibleCellBadgeLocales;
- (id)visibleCellDayTypes;
- (int64_t)_cellIndexForX:(double)a3;
- (int64_t)_firstVisibleIndex;
- (int64_t)_firstVisibleIndexInView;
- (int64_t)_indexForDate:(id)a3;
- (int64_t)_indexOfCellToScrollToForDateAndBuildIfNeeded:(id)a3;
- (int64_t)_lastVisibleIndex;
- (int64_t)firstVisibleDayOffsetFromSelectedDay;
- (void)_addNewCellToSide:(BOOL)a3;
- (void)_adjustCellsIfNeeded;
- (void)_adjustContentOffsetIfNeeded;
- (void)_createSubviewsWithFirstVisibleDate:(id)a3;
- (void)_didFinishDecelerating;
- (void)_layoutCells;
- (void)_setCell:(id)a3 highlight:(BOOL)a4 animated:(BOOL)a5;
- (void)_setCell:(id)a3 toDate:(id)a4;
- (void)_setOffscreenCellsHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateBadgeForCell:(id)a3 forDate:(id)a4;
- (void)_updateCellWidthIfNeeded;
- (void)cancelScrollingAnimation;
- (void)contentSizeCategoryChanged;
- (void)dayNavigationCellTouchUpOccurred:(id)a3;
- (void)didFinishScrolling;
- (void)layoutSubviews;
- (void)pulseToday;
- (void)setBackgroundColor:(id)a3;
- (void)setCalendar:(id)a3;
- (void)setEventSpringLoadingEnabled:(BOOL)a3;
- (void)setFirstVisibleDate:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setSelectedDate:(id)a3 animated:(BOOL)a4;
- (void)setSelectedDateWithoutScrolling:(id)a3;
- (void)setShowsMultiDay:(BOOL)a3;
- (void)setToSelectedDateAtLocation:(CGPoint)a3;
- (void)setToday:(id)a3;
- (void)significantTimeChangeOccurred;
- (void)sizeToFit;
- (void)stopPulsingToday;
- (void)updateDayBadges;
- (void)updateHighlightIfNeeded;
- (void)updateMultiDayHighlightViewAnimated:(BOOL)a3;
- (void)updateOverlays;
@end

@implementation DayNavigationWeekScrollView

- (void)_updateCellWidthIfNeeded
{
  [(DayNavigationWeekScrollView *)self _calculateCellWidth];
  v4 = v3;
  if (vabdd_f64(v3, self->_cellWidth) >= 2.22044605e-16)
  {
    self->_cellWidth = v3;
    v5 = [(DayNavigationWeekScrollView *)self navDelegate];

    if (v5)
    {
      v6 = [(DayNavigationWeekScrollView *)self navDelegate];
      [v6 dayNavigationWeekScrollView:self didChangeCellWidth:v4];
    }
  }
}

- (double)_calculateCellWidth
{
  [(DayNavigationWeekScrollView *)self bounds];
  if (fabs(v3) >= 2.22044605e-16)
  {
    [(DayNavigationWeekScrollView *)self bounds];

    CalRoundToScreenScale();
  }

  else
  {
    if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy())
    {
      if (qword_100251CE0 != -1)
      {
        sub_10000C754();
      }

      v4 = qword_100251CD8;
    }

    else
    {
      if (qword_100251CF0 != -1)
      {
        sub_100170BF0();
      }

      v4 = qword_100251CE8;
    }

    AnchoredValueCurrentWindowWidth(self);

    [v4 valueForSize:?];
  }

  return result;
}

- (DayNavigationWeekScrollViewDelegate)navDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navDelegate);

  return WeakRetained;
}

- (id)_selectedDateAsCalendarDate
{
  if (self->_selectedDate)
  {
    v3 = [(NSCalendar *)self->_calendar timeZone];
    if (v3)
    {
      v4 = [[EKCalendarDate alloc] initWithDate:self->_selectedDate timeZone:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)today
{
  today = self->_today;
  if (!today)
  {
    v4 = CUIKTodayDate();
    v5 = self->_today;
    self->_today = v4;

    today = self->_today;
  }

  return today;
}

- (int64_t)_firstVisibleIndex
{
  [(DayNavigationWeekScrollView *)self contentOffset];
  cellWidth = self->_cellWidth;
  if (cellWidth != 0.0)
  {
    return vcvtmd_u64_f64((v3 - self->_firstCellX + 0.5) / cellWidth);
  }

  v6 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "DayNavigationWeekScrollView _firstVisibleIndex: _cellWidth was 0 in division.", v7, 2u);
  }

  return 0;
}

- (int64_t)_lastVisibleIndex
{
  [(DayNavigationWeekScrollView *)self contentOffset];
  v4 = v3;
  firstCellX = self->_firstCellX;
  [(DayNavigationWeekScrollView *)self bounds];
  cellWidth = self->_cellWidth;
  if (cellWidth != 0.0)
  {
    return vcvtmd_u64_f64((v4 - firstCellX + v6 + cellWidth * -0.5) / cellWidth);
  }

  v9 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "DayNavigationWeekScrollView _lastVisibleIndex: _cellWidth was 0 in division.", v10, 2u);
  }

  return 0;
}

- (void)cancelScrollingAnimation
{
  [(DayNavigationWeekScrollView *)self _removeAllAnimations:0];
  if (self->_isScrolling)
  {

    [(DayNavigationWeekScrollView *)self didFinishScrolling];
  }
}

- (id)multiDayHighlightView
{
  multiDayHighlightView = self->_multiDayHighlightView;
  if (!multiDayHighlightView)
  {
    v4 = objc_alloc_init(UIView);
    v5 = self->_multiDayHighlightView;
    self->_multiDayHighlightView = v4;

    [(UIView *)self->_multiDayHighlightView setFrame:0.0, 0.0, 50.0, 50.0];
    v6 = [(UIView *)self->_multiDayHighlightView layer];
    [v6 setMasksToBounds:1];

    multiDayHighlightView = self->_multiDayHighlightView;
  }

  return multiDayHighlightView;
}

- (void)updateDayBadges
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_cells;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [v8 date];
        [(DayNavigationWeekScrollView *)self _updateBadgeForCell:v8 forDate:v9];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (CGSize)cellSize
{
  [(DayNavigationWeekScrollView *)self sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  cellWidth = self->_cellWidth;
  result.height = v3;
  result.width = cellWidth;
  return result;
}

- (void)layoutSubviews
{
  if (self->_needToLayoutCells)
  {
    [(DayNavigationWeekScrollView *)self _layoutCells];
  }

  [(DayNavigationWeekScrollView *)self _adjustCellsIfNeeded];

  [(DayNavigationWeekScrollView *)self updateMultiDayHighlightViewAnimated:0];
}

- (void)_layoutCells
{
  cellWidth = self->_cellWidth;
  [(DayNavigationWeekScrollView *)self _updateCellWidthIfNeeded];
  v4 = self->_cellWidth;
  self->_pageAlignment = v4 * ((2 * [(DayNavigationWeekScrollView *)self sideViews]) | 1);
  if (cellWidth == 0.0)
  {
    v7 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "DayNavigationWeekScrollView _layoutCells: oldCellWidth was 0 in division.", buf, 2u);
    }

    v5 = self->_cellWidth;
    v6 = 0.0;
  }

  else
  {
    v5 = self->_cellWidth;
    v6 = self->_firstCellX / cellWidth * v5;
  }

  [(DayNavigationWeekScrollView *)self bounds];
  v9 = v8;
  self->_firstCellX = v6;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_cells;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        [v15 setFrame:{v6, 0.0, v5, v9, v17}];
        [v15 setNeedsLayout];
        v6 = v6 + self->_cellWidth;
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v12);
  }

  self->_needToLayoutCells = 0;
  v16 = self->_firstCellX + self->_contentOffsetBeforeResizeInCellWidths * self->_cellWidth;
  self->_contentOffsetBeforeResizeInCellWidths = 0.0;
  [(DayNavigationWeekScrollView *)self setContentOffset:v16, 0.0];
  if (vabdd_f64(cellWidth, self->_cellWidth) >= 2.22044605e-16)
  {
    [(DayNavigationWeekScrollView *)self _adjustContentOffsetIfNeeded];
  }

  [(DayNavigationWeekScrollView *)self _setOffscreenCellsHidden:1 animated:0, v17];
}

- (void)stopPulsingToday
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_cells;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 isToday])
        {
          [v7 stopPulsing];
          goto LABEL_11;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_adjustContentOffsetIfNeeded
{
  [(DayNavigationWeekScrollView *)self contentSize];
  v4 = v3 * 0.5;
  [(DayNavigationWeekScrollView *)self bounds];
  v6 = v4 - v5 * 0.5;
  [(DayNavigationWeekScrollView *)self contentSize];
  v8 = v7 * 0.25;
  [(DayNavigationWeekScrollView *)self contentOffset];
  if (v8 < vabdd_f64(v6, v9))
  {
    self->_recentering = 1;
    [(DayNavigationWeekScrollView *)self _alignXToPage:v6 - v9];
    [(DayNavigationWeekScrollView *)self _offsetAllViews:?];
    [(DayNavigationWeekScrollView *)self _alignXToPage:v6 + v10];
    v12 = v11;
    v14 = [(NSMutableArray *)self->_cells objectAtIndex:0];
    [v14 frame];
    self->_firstCellX = v13;
    [(DayNavigationWeekScrollView *)self setContentOffset:v12, 0.0];
    self->_recentering = 0;
  }
}

- (void)_adjustCellsIfNeeded
{
  if (!self->_recentering && self->_cells)
  {
    [(DayNavigationWeekScrollView *)self contentOffset];
    v4 = v3;
    [(DayNavigationWeekScrollView *)self frame];
    v6 = v4 + v5;
    firstCellX = self->_firstCellX;
    v8 = [(NSMutableArray *)self->_cells lastObject];
    [v8 frame];
    MaxX = CGRectGetMaxX(v16);
    while (v4 < firstCellX)
    {
      [(DayNavigationWeekScrollView *)self _addNewCellToSide:1];
      v10 = [(NSMutableArray *)self->_cells firstObject];
      [v10 frame];
      firstCellX = v11;
    }

    if (v6 <= MaxX)
    {
      v14 = v8;
    }

    else
    {
      do
      {
        [(DayNavigationWeekScrollView *)self _addNewCellToSide:0];
        v14 = [(NSMutableArray *)self->_cells lastObject];

        [v14 frame];
        v8 = v14;
      }

      while (v6 > CGRectGetMaxX(v17));
    }

    v12 = [(NSMutableArray *)self->_cells firstObject];
    [v12 frame];
    self->_firstCellX = v13;
  }
}

- (DayNavigationWeekScrollView)initWithFrame:(CGRect)a3 calendar:(id)a4 selectedDate:(id)a5 cellFactory:(id)a6 eventSpringLoadingEnabled:(BOOL)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v26.receiver = self;
  v26.super_class = DayNavigationWeekScrollView;
  v19 = [(DayNavigationWeekScrollView *)&v26 initWithFrame:x, y, width, height];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_calendar, a4);
    [(NSCalendar *)v20->_calendar rangeOfUnit:512 inUnit:4096 forDate:v17];
    v20->_weekLength = v21;
    v20->_sideViews = v21 / 2;
    v20->_maxBufferViews = v20->_weekLength;
    objc_storeStrong(&v20->_cellFactory, a6);
    v20->_eventSpringLoadingEnabled = a7;
    [(DayNavigationWeekScrollView *)v20 setShowsHorizontalScrollIndicator:0];
    v22 = +[UIColor whiteColor];
    [(DayNavigationWeekScrollView *)v20 setBackgroundColor:v22];

    [(DayNavigationWeekScrollView *)v20 setPagingEnabled:1];
    v23 = [(DayNavigationWeekScrollView *)v20 panGestureRecognizer];
    [v23 setDelaysTouchesBegan:1];

    [(DayNavigationWeekScrollView *)v20 setContentInsetAdjustmentBehavior:2];
    v24 = [(DayNavigationWeekScrollView *)v20 _weekStartForDate:v17];
    [(DayNavigationWeekScrollView *)v20 _createSubviewsWithFirstVisibleDate:v24];
    [(DayNavigationWeekScrollView *)v20 setFrame:x, y, v20->_cellWidth * ((2 * [(DayNavigationWeekScrollView *)v20 sideViews]) | 1), height];
    [(DayNavigationWeekScrollView *)v20 setSelectedDate:v17 animated:0];
  }

  return v20;
}

- (void)updateOverlays
{
  v3 = [(DayNavigationWeekScrollView *)self superview];
  [v3 setNeedsLayout];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_cells;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) updateOverlay];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(DayNavigationWeekScrollView *)self traitCollection:a3.width];
  v6 = EKUIUsesRoundedRectsInsteadOfCircles();

  if (v6)
  {
    [(DayNavigationViewCellFactory *)self->_cellFactory roundedRectHeight];
    v8 = v7;
  }

  else
  {
    IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy();
    v10 = CUIKGetOverlayCalendar();

    if (IsCompactInViewHierarchy)
    {
      v11 = &unk_1001F8640;
    }

    else
    {
      v11 = &unk_1001F8630;
    }

    v8 = v11[v10 == 0];
  }

  v12 = width;
  result.height = v8;
  result.width = v12;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = ((2 * [(DayNavigationWeekScrollView *)self sideViews]) | 1);
  [(DayNavigationWeekScrollView *)self sideViews];
  CalRoundToScreenScale();
  v9 = v8 * v7;
  [(DayNavigationWeekScrollView *)self frame];
  if (vabdd_f64(v9, v10) >= 2.22044605e-16 || ([(DayNavigationWeekScrollView *)self frame], vabdd_f64(height, v11) >= 2.22044605e-16))
  {
    if (!self->_needToLayoutCells)
    {
      if (self->_cellWidth == 0.0)
      {
        v13 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "DayNavigationWeekScrollView setFrame: _cellWidth was 0 in division.", buf, 2u);
        }
      }

      else
      {
        [(DayNavigationWeekScrollView *)self contentOffset];
        self->_contentOffsetBeforeResizeInCellWidths = (v12 - self->_firstCellX) / self->_cellWidth;
      }

      self->_needToLayoutCells = 1;
      [(DayNavigationWeekScrollView *)self setNeedsLayout];
    }
  }

  [(DayNavigationWeekScrollView *)self frame];
  if (vabdd_f64(height, v14) >= 2.22044605e-16)
  {
    [(DayNavigationWeekScrollView *)self contentSize];
    [(DayNavigationWeekScrollView *)self setContentSize:?];
  }

  v15.receiver = self;
  v15.super_class = DayNavigationWeekScrollView;
  [(DayNavigationWeekScrollView *)&v15 setFrame:x, y, v9, height];
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DayNavigationWeekScrollView;
  [(DayNavigationWeekScrollView *)&v14 setBackgroundColor:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_cells;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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

        [*(*(&v10 + 1) + 8 * v9) setBackgroundColor:{v4, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (int64_t)_indexOfCellToScrollToForDateAndBuildIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_cells firstObject];
  v6 = [(NSMutableArray *)self->_cells lastObject];
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  if (IsLeftToRight)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  if (IsLeftToRight)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  v10 = [v8 date];
  v11 = [v9 date];
  if ([v4 compare:v10] == -1 || objc_msgSend(v4, "compare:", v11) == 1)
  {
    v12 = [(DayNavigationWeekScrollView *)self _firstVisibleIndex];
    v13 = [(DayNavigationWeekScrollView *)self _lastVisibleIndex];
    if (v12 < 0 || v12 >= [(NSMutableArray *)self->_cells count])
    {
      v14 = 0;
      if (v13 < 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v14 = [(NSMutableArray *)self->_cells objectAtIndex:v12];
      if (v13 < 0)
      {
        goto LABEL_16;
      }
    }

    if (v13 < [(NSMutableArray *)self->_cells count])
    {
      v15 = [(NSMutableArray *)self->_cells objectAtIndex:v13];
      goto LABEL_17;
    }

LABEL_16:
    v15 = 0;
LABEL_17:
    if (IsLeftToRight)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    v39 = v15;
    v40 = v14;
    if (IsLeftToRight)
    {
      v14 = v15;
    }

    v17 = [v16 date];
    v18 = [v14 date];
    if (!v17 || v18)
    {
      v41 = v18;
      if (!v17 && v18)
      {
        v20 = objc_alloc_init(NSDateComponents);
        [v20 setDay:1 - self->_weekLength];
        v17 = [(NSCalendar *)self->_calendar dateByAddingComponents:v20 toDate:v41 options:0];
      }

      if (!v17)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = objc_alloc_init(NSDateComponents);
      [v19 setDay:self->_weekLength - 1];
      v41 = [(NSCalendar *)self->_calendar dateByAddingComponents:v19 toDate:v17 options:0];
    }

    if ([v4 compare:v17] == -1)
    {
      v38 = v17;
      v26 = [(NSCalendar *)self->_calendar components:16 fromDate:v4 toDate:v17 options:0];
      v27 = [v26 day];

      v25 = v39;
      v28 = v41;
      goto LABEL_36;
    }

LABEL_30:
    v38 = v17;
    if (v41)
    {
      v21 = [(NSCalendar *)self->_calendar components:16 fromDate:v41 toDate:v4 options:0, v17];
      v22 = [v21 day];

      if (v22 > self->_weekLength)
      {
        v23 = -1;
        v25 = v39;
        v24 = v40;
LABEL_53:
        v28 = v41;
        goto LABEL_54;
      }

      if ([v4 compare:v11] == 1)
      {
        v25 = v39;
        do
        {
          if (IsLeftToRight)
          {
            [(DayNavigationWeekScrollView *)self _addNewCellToSide:0];
            v32 = [(NSMutableArray *)self->_cells lastObject];
            v33 = v6;
            v6 = v32;
          }

          else
          {
            [(DayNavigationWeekScrollView *)self _addNewCellToSide:1];
            v32 = [(NSMutableArray *)self->_cells firstObject];
            v33 = v5;
            v5 = v32;
          }

          v34 = [v32 date];

          v11 = v34;
        }

        while ([v4 compare:v34] == 1);
        v11 = v34;
      }

      else
      {
        v25 = v39;
      }

LABEL_52:
      v35 = [(NSMutableArray *)self->_cells firstObject];

      [v35 frame];
      self->_firstCellX = v36;
      v23 = [(DayNavigationWeekScrollView *)self _indexForDate:v4];
      v5 = v35;
      v24 = v40;
      goto LABEL_53;
    }

    v28 = 0;
    v27 = 0;
    v25 = v39;
LABEL_36:
    if (v27 > self->_weekLength)
    {
      v23 = -1;
      v24 = v40;
LABEL_54:

      goto LABEL_55;
    }

    v41 = v28;
    if ([v4 compare:v10] == -1)
    {
      do
      {
        if (IsLeftToRight)
        {
          [(DayNavigationWeekScrollView *)self _addNewCellToSide:1];
          v29 = [(NSMutableArray *)self->_cells firstObject];
          v30 = v5;
          v5 = v29;
        }

        else
        {
          [(DayNavigationWeekScrollView *)self _addNewCellToSide:0];
          v29 = [(NSMutableArray *)self->_cells lastObject];
          v30 = v6;
          v6 = v29;
        }

        v31 = [v29 date];

        v10 = v31;
      }

      while ([v4 compare:v31] == -1);
      v10 = v31;
    }

    goto LABEL_52;
  }

  v23 = [(DayNavigationWeekScrollView *)self _indexForDate:v4];
LABEL_55:

  return v23;
}

- (void)setSelectedDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  self->_decelerationWasLastInput = 0;
  if (v6)
  {
    v7 = v6;
    v8 = [(NSCalendar *)self->_calendar components:30 fromDate:v6];
    v9 = [(NSCalendar *)self->_calendar dateFromComponents:v8];
  }

  else
  {
    v9 = 0;
  }

  selectedDate = self->_selectedDate;
  if (([(NSDate *)selectedDate isEqual:v9]& 1) == 0)
  {
    objc_storeStrong(&self->_selectedDate, v9);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = self->_cells;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(DayNavigationWeekScrollView *)self _setCell:*(*(&v28 + 1) + 8 * i) highlight:0 animated:v4];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    if (self->_selectedDate)
    {
      v16 = [(DayNavigationWeekScrollView *)self _indexOfCellToScrollToForDateAndBuildIfNeeded:v9];
      if (v16 < 0 || (v17 = v16, v16 >= [(NSMutableArray *)self->_cells count]) || ([(NSMutableArray *)self->_cells objectAtIndex:v17], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        self->_isScrolling = 0;
        v25 = [(DayNavigationWeekScrollView *)self _weekStartForDate:v9];
        [(DayNavigationWeekScrollView *)self _createSubviewsWithFirstVisibleDate:v25];
        v26 = self->_selectedDate;
        self->_selectedDate = 0;

        [(DayNavigationWeekScrollView *)self setSelectedDate:v9 animated:0];
        v19 = 0;
        goto LABEL_21;
      }

      v19 = v18;
      if (v17 < [(DayNavigationWeekScrollView *)self _firstVisibleIndex]|| v17 > [(DayNavigationWeekScrollView *)self _lastVisibleIndex])
      {
        [v19 frame];
        [(DayNavigationWeekScrollView *)self _alignXToPage:CGRectGetMidX(v33)];
        self->_targetX = v20;
        if (v4)
        {
          self->_isScrolling = 1;
          [(DayNavigationWeekScrollView *)self _setOffscreenCellsHidden:1 animated:1];
          springAnimationDuration();
          v22 = v21;
          v23 = +[SpringFactory sharedFactory];
          v27[5] = _NSConcreteStackBlock;
          v27[6] = 3221225472;
          v27[7] = sub_100115964;
          v27[8] = &unk_10020EB00;
          v27[9] = self;
          v24 = dayViewScrollAnimationsPreferringFRR();
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1001159C0;
          v27[3] = &unk_10020EB98;
          v27[4] = self;
          [UIView _animateWithDuration:393216 delay:v23 options:v24 factory:v27 animations:v22 completion:0.0];

          self->_needToHighlightCellAfterScrolling = 1;
          [(DayNavigationWeekScrollView *)self updateHighlightIfNeeded];
LABEL_26:
          self->_selectedIndex = v17;
          [(DayNavigationWeekScrollView *)self updateMultiDayHighlightViewAnimated:1];
          if (!selectedDate)
          {
            goto LABEL_22;
          }

          v25 = [UIImpactFeedbackGenerator feedbackGeneratorWithStyle:0 forView:v19];
          [v25 impactOccurred];
LABEL_21:

LABEL_22:
          goto LABEL_23;
        }

        [(DayNavigationWeekScrollView *)self setContentOffset:?];
        [(DayNavigationWeekScrollView *)self _setOffscreenCellsHidden:1 animated:0];
      }

      [(DayNavigationWeekScrollView *)self _setCell:v19 highlight:1 animated:v4];
      [(DayNavigationWeekScrollView *)self _setOffscreenCellsHidden:1 animated:0];
      goto LABEL_26;
    }
  }

LABEL_23:
}

- (void)setSelectedDateWithoutScrolling:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_selectedDate, a3);
  v6 = [(DayNavigationWeekScrollView *)self _indexOfCellToScrollToForDateAndBuildIfNeeded:v5];
  if (v6 < 0 || (v7 = v6, v6 >= [(NSMutableArray *)self->_cells count]))
  {
    v15 = [(DayNavigationWeekScrollView *)self _weekStartForDate:v5];
    [(DayNavigationWeekScrollView *)self _createSubviewsWithFirstVisibleDate:v15];
    selectedDate = self->_selectedDate;
    self->_selectedDate = 0;

    [(DayNavigationWeekScrollView *)self setSelectedDate:v5 animated:0];
  }

  else
  {
    v8 = [(NSMutableArray *)self->_cells objectAtIndex:v7];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = self->_cells;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          if (v14 != v8 || ([v8 circled] & 1) == 0)
          {
            [(DayNavigationWeekScrollView *)self _setCell:v14 highlight:0 animated:1, v17];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [(DayNavigationWeekScrollView *)self _setCell:v8 highlight:1 animated:1];
    self->_selectedIndex = v7;
  }
}

- (void)updateHighlightIfNeeded
{
  if (self->_needToHighlightCellAfterScrolling)
  {
    self->_needToHighlightCellAfterScrolling = 0;
    v3 = [(DayNavigationWeekScrollView *)self _indexForDate:self->_selectedDate];
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = v3;
      if (v3 < [(NSMutableArray *)self->_cells count])
      {
        v5 = [(NSMutableArray *)self->_cells objectAtIndex:v4];
        if (v5)
        {
          v6 = v5;
          [(DayNavigationWeekScrollView *)self _setCell:v5 highlight:1 animated:1];
        }
      }
    }
  }
}

- (void)pulseToday
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_cells;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 isToday])
        {
          [v7 pulseToday];
          goto LABEL_11;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)setCalendar:(id)a3
{
  objc_storeStrong(&self->_calendar, a3);
  v5 = a3;
  today = self->_today;
  self->_today = 0;

  v7 = [(DayNavigationWeekScrollView *)self _weekStartForDate:self->_selectedDate];

  [(DayNavigationWeekScrollView *)self _createSubviewsWithFirstVisibleDate:v7];
}

- (void)_setCell:(id)a3 highlight:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  [v7 setCircled:v6 animated:v5];
  [v7 setUserInteractionEnabled:v6 ^ 1];
}

- (void)setFirstVisibleDate:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_cells;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9) removeFromSuperview];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  cells = self->_cells;
  self->_cells = 0;

  [(DayNavigationWeekScrollView *)self _createSubviewsWithFirstVisibleDate:v4];
}

- (void)setToSelectedDateAtLocation:(CGPoint)a3
{
  v4 = [(DayNavigationWeekScrollView *)self _cellIndexForX:a3.x, a3.y];
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v4;
    if (v4 < [(NSMutableArray *)self->_cells count])
    {
      v7 = [(NSMutableArray *)self->_cells objectAtIndex:v5];
      v6 = [v7 date];
      [(DayNavigationWeekScrollView *)self setSelectedDate:v6 animated:1];
    }
  }
}

- (BOOL)canAnimateToDate:(id)a3
{
  v4 = a3;
  v5 = [(DayNavigationWeekScrollView *)self _firstVisibleIndex];
  v6 = [(DayNavigationWeekScrollView *)self _lastVisibleIndex];
  if (v5 < 0 || v5 >= [(NSMutableArray *)self->_cells count])
  {
    v7 = 0;
    if (v6 < 0)
    {
LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v7 = [(NSMutableArray *)self->_cells objectAtIndex:v5];
    if (v6 < 0)
    {
      goto LABEL_8;
    }
  }

  if (v6 >= [(NSMutableArray *)self->_cells count])
  {
    goto LABEL_8;
  }

  v8 = [(NSMutableArray *)self->_cells objectAtIndex:v6];
LABEL_9:
  v9 = [v7 date];
  v10 = [v8 date];
  v11 = v10;
  if (!v9 || v10)
  {
    if (v9 || !v10)
    {
      goto LABEL_16;
    }

    v12 = objc_alloc_init(NSDateComponents);
    [v12 setDay:1 - self->_weekLength];
    v9 = [(NSCalendar *)self->_calendar dateByAddingComponents:v12 toDate:v11 options:0];
  }

  else
  {
    v12 = objc_alloc_init(NSDateComponents);
    [v12 setDay:self->_weekLength - 1];
    v11 = [(NSCalendar *)self->_calendar dateByAddingComponents:v12 toDate:v9 options:0];
  }

LABEL_16:
  v17 = 0;
  if (v9 && v11)
  {
    if ([v9 compare:v4] != 1 && objc_msgSend(v11, "compare:", v4) != -1 || (objc_msgSend(v4, "compare:", v9) == -1 ? (v13 = v4, v14 = v9) : (v13 = v11, v14 = v4), -[NSCalendar components:fromDate:toDate:options:](self->_calendar, "components:fromDate:toDate:options:", 16, v13, v14, 0), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "day"), v15, v16 <= self->_weekLength))
    {
      v17 = 1;
    }
  }

  return v17;
}

- (void)significantTimeChangeOccurred
{
  v3 = CUIKTodayDate();
  v4 = self->_calendar;
  v5 = [(NSCalendar *)v4 components:30 fromDate:v3];
  v6 = [(NSCalendar *)v4 dateFromComponents:v5];

  if (self->_today != v6)
  {
    v14 = v5;
    objc_storeStrong(&self->_today, v6);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_cells;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v12 date];
          [v12 setIsToday:{objc_msgSend(v13, "isEqualToDate:", self->_today)}];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v5 = v14;
  }
}

- (void)contentSizeCategoryChanged
{
  v3 = [(DayNavigationWeekScrollView *)self _weekStartForDate:self->_selectedDate];
  [(DayNavigationWeekScrollView *)self _createSubviewsWithFirstVisibleDate:v3];
}

- (void)setShowsMultiDay:(BOOL)a3
{
  v3 = a3;
  self->_showsMultiDay = a3;
  v5 = [(DayNavigationWeekScrollView *)self multiDayHighlightView];
  v7 = v5;
  if (v3)
  {
    [(DayNavigationWeekScrollView *)self addSubview:v5];

    v6 = [(DayNavigationWeekScrollView *)self multiDayHighlightView];
    [(DayNavigationWeekScrollView *)self sendSubviewToBack:v6];

    [(DayNavigationWeekScrollView *)self updateMultiDayHighlightViewAnimated:0];
  }

  else
  {
    [v5 removeFromSuperview];
  }
}

- (void)updateMultiDayHighlightViewAnimated:(BOOL)a3
{
  v3 = a3;
  selectedIndex = self->_selectedIndex;
  if (selectedIndex < [(NSMutableArray *)self->_cells count])
  {
    v6 = [(NSMutableArray *)self->_cells objectAtIndexedSubscript:self->_selectedIndex];
    [v6 dayCircleFrame];
    v8 = v7;
    cellWidth = self->_cellWidth;
    v11 = (cellWidth - v10) * 0.5;
    firstCellX = self->_firstCellX;
    v13 = self->_selectedIndex;
    v14 = cellWidth + cellWidth + v11 * -2.0 + 2.0;
    v16 = v15 + 2.0;
    if (CalTimeDirectionIsLeftToRight())
    {
      v17 = v11 + firstCellX + v13 * cellWidth + -1.0;
    }

    else
    {
      v17 = fmax(v11 + self->_firstCellX + (self->_selectedIndex - 1) * self->_cellWidth + -5.0 + -1.0, 0.0);
    }

    v18 = v8 + -1.0;
    v19 = v14 + 5.0;
    v20 = [(DayNavigationWeekScrollView *)self traitCollection];
    v21 = EKUIUsesRoundedRectsInsteadOfCircles();

    if (v21)
    {
      v22 = 8.0;
    }

    else
    {
      v22 = v16 * 0.5 + 1.0;
    }

    v23 = [(UIView *)self->_multiDayHighlightView layer];
    [v23 setCornerRadius:v22];

    v24 = [(DayNavigationWeekScrollView *)self traitCollection];
    if ([v24 userInterfaceStyle] == 2)
    {
      v25 = 0.5;
    }

    else
    {
      v25 = 0.12;
    }

    v26 = +[UIColor tertiarySystemFillColor];
    v27 = [v26 colorWithAlphaComponent:v25];
    [(UIView *)self->_multiDayHighlightView setBackgroundColor:v27];

    if (v3)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100116854;
      v28[3] = &unk_10020ED88;
      v28[4] = self;
      *&v28[5] = v17;
      *&v28[6] = v18;
      *&v28[7] = v19;
      *&v28[8] = v16;
      [UIView animateWithDuration:0 delay:v28 usingSpringWithDamping:0 initialSpringVelocity:0.8 options:0.0 animations:0.6 completion:0.0];
    }

    else
    {
      [(UIView *)self->_multiDayHighlightView setFrame:v17, v18, v19, v16];
    }
  }
}

- (id)selectedDateAfterScrollingToPoint:(CGPoint)a3
{
  x = a3.x;
  weekLength = self->_weekLength;
  [(DayNavigationWeekScrollView *)self cellSize];
  v7 = v6 * weekLength;
  selectedIndex = self->_selectedIndex;
  if (selectedIndex < 0 || selectedIndex >= [(NSMutableArray *)self->_cells count])
  {
    v9 = 0;
  }

  else
  {
    v9 = [(NSMutableArray *)self->_cells objectAtIndexedSubscript:self->_selectedIndex];
  }

  [v9 frame];
  v11 = v10;
  [v9 bounds];
  [(DayNavigationWeekScrollView *)self _alignXToPage:v11 + CGRectGetWidth(v23) * 0.5];
  v13 = v7 + v12 + -0.0001;
  if (x >= v12 + -0.0001 && x < v13)
  {
    v19 = self->_selectedDate;
  }

  else
  {
    if (x >= v13)
    {
      v12 = v7 + v12;
    }

    v15 = x - v12;
    if (v15 < 0.0)
    {
      v15 = -v15;
    }

    v16 = llround(v15 / v7);
    if (x < v13)
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 + 1;
    }

    if (CalTimeDirectionIsLeftToRight() != x < v13)
    {
      v18 = v17;
    }

    else
    {
      v18 = -v17;
    }

    v19 = [(NSCalendar *)self->_calendar dateByAddingUnit:0x2000 value:v18 toDate:self->_selectedDate options:0];
  }

  v20 = v19;

  return v20;
}

- (int64_t)_indexForDate:(id)a3
{
  v5 = self->_calendar;
  v6 = [(NSCalendar *)v5 components:30 fromDate:a3];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_cells;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
    while (2)
    {
      v12 = 0;
      v13 = v10;
      v10 += v9;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = [*(*(&v21 + 1) + 8 * v12) date];
        v15 = [(NSCalendar *)v5 components:30 fromDate:v14];

        v16 = [v6 day];
        if (v16 == [v15 day])
        {
          v17 = [v6 month];
          if (v17 == [v15 month])
          {
            v18 = [v6 year];
            if (v18 == [v15 year])
            {
              v19 = [v6 era];
              if (v19 == [v15 era])
              {

                goto LABEL_14;
              }
            }
          }
        }

        ++v13;

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = -1;
LABEL_14:

  return v13;
}

- (int64_t)_cellIndexForX:(double)a3
{
  cellWidth = self->_cellWidth;
  if (cellWidth != 0.0)
  {
    return vcvtmd_s64_f64((a3 - self->_firstCellX) / cellWidth);
  }

  v9 = v3;
  v10 = v4;
  v7 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "DayNavigationWeekScrollView _cellIndexForX: _cellWidth was 0 in division.", v8, 2u);
  }

  return 0;
}

- (void)_createSubviewsWithFirstVisibleDate:(id)a3
{
  v4 = a3;
  cells = self->_cells;
  if (cells)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v6 = cells;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v48;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v48 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v47 + 1) + 8 * i) removeFromSuperview];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v8);
    }

    v11 = self->_cells;
    self->_cells = 0;
  }

  [(DayNavigationWeekScrollView *)self _updateCellWidthIfNeeded];
  v42 = 2 * [(DayNavigationWeekScrollView *)self sideViews];
  v12 = v42 + 3;
  [(DayNavigationWeekScrollView *)self bounds];
  [(DayNavigationWeekScrollView *)self setContentSize:40000.0, v13];
  cellWidth = self->_cellWidth;
  v15 = 1;
  self->_pageAlignment = cellWidth * ((2 * [(DayNavigationWeekScrollView *)self sideViews]) | 1);
  [(DayNavigationWeekScrollView *)self bounds];
  [(DayNavigationWeekScrollView *)self setBounds:?];
  v16 = self->_calendar;
  v45 = [(NSCalendar *)v16 components:30 fromDate:v4];
  v17 = [(NSCalendar *)v16 dateFromComponents:?];

  v18 = objc_alloc_init(NSDateComponents);
  [v18 setHour:4];
  v19 = [(NSCalendar *)v16 dateByAddingComponents:v18 toDate:v17 options:0];

  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  [v18 setHour:0];
  [v18 setDay:-1];
  v43 = v19;
  v44 = v18;
  v21 = [(NSCalendar *)v16 dateByAddingComponents:v18 toDate:v19 options:0];
  v46 = v16;
  v22 = [(NSCalendar *)v16 timeZone];
  v23 = [EKCalendarDate calendarDateWithDate:v21 timeZone:v22];

  if ((IsLeftToRight & 1) == 0)
  {
    v24 = [v23 calendarDateByAddingDays:v42 + 2];

    v15 = -1;
    v23 = v24;
  }

  v25 = [[NSMutableArray alloc] initWithCapacity:v12];
  v26 = self->_cells;
  self->_cells = v25;

  [(DayNavigationWeekScrollView *)self contentSize];
  v28 = v27 * 0.5;
  v29 = [(DayNavigationWeekScrollView *)self sideViews];
  v30 = self->_cellWidth;
  v31 = v28 - v29 * v30 - v30 * 0.5;
  [(DayNavigationWeekScrollView *)self bounds];
  v33 = v32;
  [(DayNavigationWeekScrollView *)self _alignXToPage:v31];
  v35 = v34 - self->_cellWidth;
  self->_firstCellX = v35;
  if (v12 < 1)
  {
    v40 = v23;
  }

  else
  {
    do
    {
      v36 = [(DayNavigationViewCellFactory *)self->_cellFactory createCellWithFrame:v35, 0.0, v30, v33];
      v37 = [(DayNavigationWeekScrollView *)self backgroundColor];
      [v36 setBackgroundColor:v37];

      v38 = [v23 calendarDateForDay];
      v39 = [v38 date];
      [(DayNavigationWeekScrollView *)self _setCell:v36 toDate:v39];

      [v36 setDelegate:self];
      [(DayNavigationWeekScrollView *)self addSubview:v36];
      [(NSMutableArray *)self->_cells addObject:v36];
      v40 = [v23 calendarDateByAddingDays:v15];

      v35 = v35 + self->_cellWidth;
      [v36 layoutSubviews];

      v23 = v40;
      --v12;
    }

    while (v12);
  }

  v41 = [(NSMutableArray *)self->_cells objectAtIndex:1];
  self->_needToLayoutCells = 0;
  self->_contentOffsetBeforeResizeInCellWidths = 0.0;
  [v41 frame];
  [(DayNavigationWeekScrollView *)self setContentOffset:?];
  [(DayNavigationWeekScrollView *)self _setOffscreenCellsHidden:1 animated:0];
}

- (void)sizeToFit
{
  [(DayNavigationWeekScrollView *)self _updateCellWidthIfNeeded];
  cellWidth = self->_cellWidth;
  self->_pageAlignment = cellWidth * ((2 * [(DayNavigationWeekScrollView *)self sideViews]) | 1);
  [(DayNavigationWeekScrollView *)self bounds];

  [(DayNavigationWeekScrollView *)self setBounds:?];
}

- (id)_weekStartForDate:(id)a3
{
  calendar = self->_calendar;
  v5 = a3;
  [(NSCalendar *)calendar setFirstWeekday:CUIKOneIndexedWeekStart()];
  v6 = [(NSCalendar *)self->_calendar components:24578 fromDate:v5];

  v7 = [(NSCalendar *)self->_calendar dateFromComponents:v6];

  return v7;
}

- (void)setEventSpringLoadingEnabled:(BOOL)a3
{
  if (self->_eventSpringLoadingEnabled != a3)
  {
    self->_eventSpringLoadingEnabled = a3;
    v6 = [(NSMutableArray *)self->_cells objectAtIndexedSubscript:[(DayNavigationWeekScrollView *)self _firstVisibleIndex]];
    v5 = [v6 date];
    [(DayNavigationWeekScrollView *)self _createSubviewsWithFirstVisibleDate:v5];
  }
}

- (int64_t)firstVisibleDayOffsetFromSelectedDay
{
  v3 = [(DayNavigationWeekScrollView *)self selectedDate];
  v4 = [(DayNavigationWeekScrollView *)self _indexForDate:v3];

  return [(DayNavigationWeekScrollView *)self _firstVisibleIndexInView]- v4;
}

- (id)visibleCellDayTypes
{
  v3 = +[NSMutableArray array];
  v4 = [(DayNavigationWeekScrollView *)self _firstVisibleIndex];
  if (v4 <= [(DayNavigationWeekScrollView *)self _lastVisibleIndex])
  {
    do
    {
      v5 = [(NSMutableArray *)self->_cells objectAtIndexedSubscript:v4];
      v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 badgeType]);
      [v3 addObject:v6];
    }

    while (v4++ < [(DayNavigationWeekScrollView *)self _lastVisibleIndex]);
  }

  return v3;
}

- (id)visibleCellBadgeColors
{
  v3 = +[NSMutableArray array];
  v4 = [(DayNavigationWeekScrollView *)self _firstVisibleIndex];
  if (v4 <= [(DayNavigationWeekScrollView *)self _lastVisibleIndex])
  {
    do
    {
      v5 = [(NSMutableArray *)self->_cells objectAtIndexedSubscript:v4];
      v6 = [v5 badgeColor];
      if (v6)
      {
        [v5 badgeColor];
      }

      else
      {
        +[UIColor clearColor];
      }
      v7 = ;
      [v3 addObject:v7];
    }

    while (v4++ < [(DayNavigationWeekScrollView *)self _lastVisibleIndex]);
  }

  return v3;
}

- (id)visibleCellBadgeLocales
{
  v3 = +[NSLocale currentLocale];
  v4 = [v3 localeIdentifier];

  v5 = +[NSMutableArray array];
  v6 = [(DayNavigationWeekScrollView *)self _firstVisibleIndex];
  if (v6 <= [(DayNavigationWeekScrollView *)self _lastVisibleIndex])
  {
    do
    {
      v7 = [(NSMutableArray *)self->_cells objectAtIndexedSubscript:v6];
      v8 = [v7 badgeLocale];
      if (v8)
      {
        v9 = [v7 badgeLocale];
        [v5 addObject:v9];
      }

      else
      {
        [v5 addObject:v4];
      }
    }

    while (v6++ < [(DayNavigationWeekScrollView *)self _lastVisibleIndex]);
  }

  return v5;
}

- (void)_didFinishDecelerating
{
  if (self->_decelerationWasLastInput || self->_rotatedDuringAnimation)
  {
    [(DayNavigationWeekScrollView *)self didFinishScrolling];
  }
}

- (void)didFinishScrolling
{
  self->_isScrolling = 0;
  [(DayNavigationWeekScrollView *)self _adjustContentOffsetIfNeeded];
  weekLength = self->_weekLength;
  if (weekLength >= 1)
  {
    selectedIndex = self->_selectedIndex;
    v5 = selectedIndex + weekLength;
    v6 = selectedIndex - weekLength;
    do
    {
      v7 = v5;
      v8 = [(DayNavigationWeekScrollView *)self _firstVisibleIndex];
      v5 = v7 + weekLength;
      v6 += weekLength;
    }

    while (v6 < v8);
    do
    {
      v7 -= weekLength;
    }

    while (v7 > [(DayNavigationWeekScrollView *)self _lastVisibleIndex]);
    if ((v7 & 0x8000000000000000) == 0 && self->_selectedIndex != v7 && v7 < [(NSMutableArray *)self->_cells count])
    {
      v9 = [(NSMutableArray *)self->_cells objectAtIndex:v7];
      v10 = [v9 date];
      [(DayNavigationWeekScrollView *)self setSelectedDate:v10 animated:1];

      v11 = [(DayNavigationWeekScrollView *)self navDelegate];

      if (v11)
      {
        v12 = [(DayNavigationWeekScrollView *)self navDelegate];
        v13 = [v9 date];
        [v12 dayNavigationWeekScrollView:self selectedDateChanged:v13];
      }
    }

    [(DayNavigationWeekScrollView *)self _setOffscreenCellsHidden:1 animated:1];
  }
}

- (void)_addNewCellToSide:(BOOL)a3
{
  v3 = a3;
  cells = self->_cells;
  if (a3)
  {
    v38 = [(NSMutableArray *)cells objectAtIndex:0];
    [v38 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v38 frame];
    v15 = v7 - v14;
    v16 = [(DayNavigationWeekScrollView *)self _loadedBufferViewsRight];
    v17 = [(NSMutableArray *)self->_cells count]- 1;
  }

  else
  {
    v38 = [(NSMutableArray *)cells lastObject];
    [v38 frame];
    v19 = v18;
    v9 = v20;
    v11 = v21;
    v13 = v22;
    [v38 frame];
    v15 = v19 + v23;
    v16 = [(DayNavigationWeekScrollView *)self _loadedBufferViewsLeft];
    v17 = 0;
  }

  v24 = objc_alloc_init(NSDateComponents);
  v25 = [v38 date];
  [v24 setHour:4];
  v26 = [(NSCalendar *)self->_calendar dateByAddingComponents:v24 toDate:v25 options:0];

  if (!CalTimeDirectionIsLeftToRight() || v3)
  {
    if ((v3 & ~CalTimeDirectionIsLeftToRight()) != 0)
    {
      v27 = 1;
    }

    else
    {
      v27 = -1;
    }
  }

  else
  {
    v27 = 1;
  }

  v28 = [(NSCalendar *)self->_calendar timeZone];
  v37 = v26;
  v29 = [EKCalendarDate calendarDateWithDate:v26 timeZone:v28];

  v30 = [v29 calendarDateByAddingDays:v27];

  v31 = [v30 calendarDateForDay];

  v32 = [v31 date];
  if (v16 < [(DayNavigationWeekScrollView *)self maxBufferViews]|| self->_selectedIndex == v17)
  {
    v33 = [(DayNavigationViewCellFactory *)self->_cellFactory createCellWithFrame:v15, v9, v11, v13];
    v34 = [(DayNavigationWeekScrollView *)self backgroundColor];
    [v33 setBackgroundColor:v34];

    [v33 setDelegate:self];
    [(DayNavigationWeekScrollView *)self addSubview:v33];
  }

  else
  {
    v33 = [(NSMutableArray *)self->_cells objectAtIndex:v17];
    [(NSMutableArray *)self->_cells removeObjectAtIndex:v17];
    [v33 prepareForReuse];
    [v33 setFrame:{v15, v9, v11, v13}];
    selectedIndex = self->_selectedIndex;
    if (selectedIndex > v17)
    {
      self->_selectedIndex = selectedIndex - 1;
    }
  }

  [(DayNavigationWeekScrollView *)self _setCell:v33 toDate:v32];
  v35 = self->_cells;
  if (v3)
  {
    [(NSMutableArray *)v35 insertObject:v33 atIndex:0];
    ++self->_selectedIndex;
  }

  else
  {
    [(NSMutableArray *)v35 addObject:v33];
  }
}

- (void)_setOffscreenCellsHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (self->_isScrolling)
  {
    targetX = self->_targetX;
  }

  else
  {
    [(DayNavigationWeekScrollView *)self contentOffset];
    targetX = v8;
  }

  [(DayNavigationWeekScrollView *)self bounds];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100117D4C;
  v13[3] = &unk_100211AC8;
  v13[4] = self;
  v14 = a3;
  *&v13[5] = targetX;
  *&v13[6] = targetX + CGRectGetWidth(v15);
  v9 = objc_retainBlock(v13);
  v10 = v9;
  if (v4)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100117E78;
    v11[3] = &unk_10020F680;
    v12 = v9;
    [UIView animateWithDuration:v11 animations:0.3];
  }

  else
  {
    (v9[2])(v9);
  }
}

- (void)_setCell:(id)a3 toDate:(id)a4
{
  v16 = a3;
  v6 = a4;
  [v16 setDate:v6];
  v7 = [(DayNavigationWeekScrollView *)self _selectedDateAsCalendarDate];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 calendarDateForDay];
    v10 = [v9 date];

    v11 = [v8 calendarDateForEndOfDay];
    v12 = [v11 date];

    v13 = [v10 compare:v6] != 1 && objc_msgSend(v12, "compare:", v6) != -1;
    [v16 setCircled:v13 animated:1];
  }

  v14 = [(DayNavigationWeekScrollView *)self today];
  v15 = [v6 isEqualToDate:v14];

  if (v15)
  {
    [v16 setIsToday:1];
  }

  if ([(DayNavigationWeekScrollView *)self _isDateWeekend:v6])
  {
    [v16 setIsWeekend:1];
  }

  [v16 setOverlayShowsMonth:-[NSCalendar component:fromDate:](self->_calendar animated:{"component:fromDate:", 512, v6) == CUIKOneIndexedWeekStart(), 0}];
  [(DayNavigationWeekScrollView *)self _updateBadgeForCell:v16 forDate:v6];
  [v16 setAlpha:1.0];
}

- (void)_updateBadgeForCell:(id)a3 forDate:(id)a4
{
  v6 = a3;
  v12 = 0;
  v7 = [(DayNavigationWeekScrollView *)self _badgeDataForDate:a4 outIsLoading:&v12];
  v8 = v7;
  if ((v12 & 1) == 0)
  {
    v9 = [v7 color];
    [v6 setBadgeColor:v9];

    if (v8)
    {
      v10 = [v8 dayType];
    }

    else
    {
      v10 = 0;
    }

    [v6 setBadgeType:v10];
    v11 = [v8 locale];
    [v6 setBadgeLocale:v11];
  }
}

- (void)setToday:(id)a3
{
  v5 = self->_calendar;
  v6 = [(NSCalendar *)v5 components:30 fromDate:a3];
  v7 = [(NSCalendar *)v5 dateFromComponents:v6];
  today = self->_today;
  self->_today = v7;
  v9 = v7;
}

- (BOOL)_isDateWeekend:(id)a3
{
  v4 = a3;
  v5 = +[CUIKPreferences sharedPreferences];
  v6 = [v5 overrideLocaleWeekends];

  calendar = self->_calendar;
  if (v6)
  {
    v8 = [(NSCalendar *)calendar components:512 fromDate:v4];

    v9 = [v8 weekday];
    v11 = v9 == 1 || v9 == 7;
    v4 = v8;
  }

  else
  {
    v11 = [(NSCalendar *)calendar isDateInWeekend:v4];
  }

  return v11;
}

- (double)_offsetAllViews:(double)a3
{
  cellWidth = self->_cellWidth;
  if (cellWidth == 0.0)
  {
    v7 = kCalUILogHandle;
    v6 = 0.0;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "DayNavigationWeekScrollView _offsetAllViews: _cellWidth was 0 in division.", buf, 2u);
    }
  }

  else
  {
    v6 = cellWidth * round(a3 / cellWidth);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_cells;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [v13 frame];
        [v13 setFrame:v6 + v14];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }

  return v6 - a3;
}

- (double)_alignXToPage:(double)a3
{
  CalRoundToScreenScale();
  v5 = v4;
  pageAlignment = self->_pageAlignment;
  if (pageAlignment != 0.0)
  {
    return pageAlignment * floor(v5 / pageAlignment);
  }

  v7 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "DayNavigationWeekScrollView _alignXToPage: _pageAlignment was 0 in division.", v9, 2u);
  }

  return v5;
}

- (int64_t)_firstVisibleIndexInView
{
  cellWidth = self->_cellWidth;
  if (cellWidth <= 0.0)
  {
    v8 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "DayNavigationWeekScrollView _firstVisibleIndexInView: _cellWidth was 0 in division.", v10, 2u);
    }

    return 0;
  }

  v4 = cellWidth + self->_firstCellX + -0.5;
  [(DayNavigationWeekScrollView *)self contentOffset];
  if (v4 >= v5)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v4 = v4 + self->_cellWidth;
    ++v6;
    [(DayNavigationWeekScrollView *)self contentOffset];
  }

  while (v4 < v7);
  return v6;
}

- (id)_badgeDataForDate:(id)a3 outIsLoading:(BOOL *)a4
{
  v6 = a3;
  v7 = [(DayNavigationWeekScrollView *)self navDelegate];

  if (v7)
  {
    v8 = [(DayNavigationWeekScrollView *)self navDelegate];
    v9 = [v8 dayNavigationWeekScrollViewIsLoadingSpecialDayData:self];

    if (a4)
    {
      *a4 = v9;
    }

    v10 = [(DayNavigationWeekScrollView *)self navDelegate];
    v11 = [v10 dayNavigationWeekScrollView:self dayDataForDate:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)dayNavigationCellTouchUpOccurred:(id)a3
{
  v4 = a3;
  v5 = [(DayNavigationWeekScrollView *)self navDelegate];

  if (v5)
  {
    v6 = [(DayNavigationWeekScrollView *)self navDelegate];
    v7 = [v6 dayNavigationWeekScrollViewAllowedToChangeSelectedDate];

    if (v7)
    {
      v8 = [v4 date];
      [(DayNavigationWeekScrollView *)self setSelectedDate:v8 animated:1];

      CalAnalyticsSendEventLazy();
      v9 = [(DayNavigationWeekScrollView *)self navDelegate];
      v10 = [v4 date];
      [v9 dayNavigationWeekScrollView:self selectedDateChanged:v10];
    }

    else
    {
      v11 = [(DayNavigationWeekScrollView *)self navDelegate];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100118790;
      v12[3] = &unk_10020EC68;
      v12[4] = self;
      v13 = v4;
      [v11 dayNavigationWeekScrollViewFailedToSelectDate:v12];
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(DayNavigationWeekScrollView *)self navDelegate];
  if (v5 && (v6 = v5, -[DayNavigationWeekScrollView navDelegate](self, "navDelegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 dayNavigationWeekScrollViewAllowedToChangeSelectedDate], v7, v6, (v8 & 1) == 0))
  {
    v10 = [(DayNavigationWeekScrollView *)self navDelegate];
    [v10 dayNavigationWeekScrollViewFailedToSelectDate:0];

    v9 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = DayNavigationWeekScrollView;
    if ([(DayNavigationWeekScrollView *)&v13 respondsToSelector:"gestureRecognizerShouldBegin:"])
    {
      v12.receiver = self;
      v12.super_class = DayNavigationWeekScrollView;
      v9 = [(DayNavigationWeekScrollView *)&v12 gestureRecognizerShouldBegin:v4];
    }

    else
    {
      v9 = 1;
    }
  }

  return v9;
}

@end