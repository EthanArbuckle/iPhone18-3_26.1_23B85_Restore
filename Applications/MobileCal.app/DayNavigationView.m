@interface DayNavigationView
+ (id)_weekNumberFont;
- (BOOL)dayNavigationWeekScrollViewAllowedToChangeSelectedDate;
- (BOOL)dayNavigationWeekScrollViewIsLoadingSpecialDayData:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (DayNavigationView)initWithCalendar:(id)a3 selectedDate:(id)a4 cellFactory:(id)a5 eventSpringLoadingEnabled:(BOOL)a6;
- (DayNavigationViewDelegate)delegate;
- (UIEdgeInsets)paletteSafeAreaInsets;
- (id)dayNavigationWeekScrollView:(id)a3 dayDataForDate:(id)a4;
- (void)_updateFontSizes;
- (void)_updateWeekNumberLabel;
- (void)contentSizeCategoryChanged;
- (void)dayNavigationWeekScrollView:(id)a3 didChangeCellWidth:(double)a4;
- (void)dayNavigationWeekScrollView:(id)a3 selectedDateChanged:(id)a4;
- (void)dayNavigationWeekScrollViewFailedToSelectDate:(id)a3;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setCalendar:(id)a3;
- (void)setOverlayMonthText:(id)a3;
- (void)setSelectedDate:(id)a3 animated:(BOOL)a4;
- (void)setShowWeekNumber:(BOOL)a3;
@end

@implementation DayNavigationView

- (void)_updateWeekNumberLabel
{
  if (self->_showWeekNumber)
  {
    calendar = self->_calendar;
    v4 = [(DayNavigationWeekScrollView *)self->_weekScrollView startDateOfSelectedWeek];
    [(NSCalendar *)calendar component:0x2000 fromDate:v4];

    v5 = WeekendTextColor();
    [(UILabel *)self->_weekNumberLabel setTextColor:v5];

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"W%@" value:&stru_1002133B8 table:0];
    v8 = CUIKLocalizedStringForInteger();
    v9 = [NSString localizedStringWithFormat:v7, v8];
    [(UILabel *)self->_weekNumberLabel setText:v9];

    [(UILabel *)self->_weekNumberLabel sizeToFit];
  }

  [(DayNavigationView *)self setNeedsLayout];
}

- (DayNavigationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)layoutSubviews
{
  v59.receiver = self;
  v59.super_class = DayNavigationView;
  [(DayNavigationView *)&v59 layoutSubviews];
  [(DayNavigationView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy();
  v13 = 0.0;
  v14 = 0.0;
  if (IsRegularInViewHierarchy)
  {
    [(DayNavigationWeekScrollView *)self->_weekScrollView cellsDisplayed];
    CalFloorToScreenScale();
    v13 = -6.0;
  }

  v15 = v4 + v13 + v14;
  [(DayNavigationWeekScrollView *)self->_weekScrollView sizeThatFits:v8 + v14 * -2.0, v10];
  v51 = 0;
  v52 = &v51;
  v53 = 0x4010000000;
  v54 = &unk_1001EBD39;
  v55 = v15;
  v56 = v6;
  v57 = v16;
  v58 = v17 + 4.0;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10010EAF8;
  v49[3] = &unk_100211910;
  v50 = IsLeftToRight;
  v49[4] = self;
  v49[5] = &v51;
  v18 = objc_retainBlock(v49);
  v19 = [(DayNavigationView *)self showWeekNumber];
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  v22 = 0.0;
  v23 = height;
  v24 = CGSizeZero.width;
  if (v19)
  {
    [(UILabel *)self->_weekNumberLabel sizeThatFits:10.0, 10.0];
    v24 = v25;
    v23 = v26;
    v22 = 36.0;
  }

  v27 = [(UILabel *)self->_overlayMonthLabel text];
  v28 = [v27 length];

  if (v28 && ([(UILabel *)self->_overlayMonthLabel sizeThatFits:1.79769313e308, 10.0], width = v29.n128_f64[0], height = v30.n128_f64[0], v22 < 20.0) || v22 > 0.0)
  {
    if (v24 >= width)
    {
      v29.n128_f64[0] = v24;
    }

    else
    {
      v29.n128_f64[0] = width;
    }

    if (v23 >= height)
    {
      v30.n128_f64[0] = v23;
    }

    else
    {
      v30.n128_f64[0] = height;
    }

    (v18[2])(v18, v29, v30);
  }

  if ([(DayNavigationView *)self showWeekNumber])
  {
    [WeekAllDayView baselineForWeekdayLabelsWithSizeClass:EKUIWidthSizeClassForViewHierarchy()];
    [(UILabel *)self->_weekNumberLabel _firstLineBaselineOffsetFromBoundsTop];
    CalRoundToScreenScale();
    v32 = v31;
    if (IsLeftToRight)
    {
      [(DayNavigationView *)self bounds];
      MinX = CGRectGetMinX(v60);
      [(DayNavigationView *)self paletteSafeAreaInsets];
      v35 = v34;
      v36 = CGRectGetMinX(v52[1]) - v24;
      if (MinX + v35 + 20.0 < v36)
      {
        v36 = MinX + v35 + 20.0;
      }
    }

    else
    {
      [(DayNavigationView *)self bounds];
      MaxX = CGRectGetMaxX(v61);
      [(DayNavigationView *)self paletteSafeAreaInsets];
      v39 = v38;
      v36 = CGRectGetMaxX(v52[1]);
      if (MaxX - v39 + -20.0 - v24 >= v36)
      {
        v36 = MaxX - v39 + -20.0 - v24;
      }
    }

    [(UILabel *)self->_weekNumberLabel setFrame:v36, v32, v24, v23];
  }

  overlayMonthLabel = self->_overlayMonthLabel;
  if (overlayMonthLabel)
  {
    [(UILabel *)overlayMonthLabel sizeToFit];
    [(UILabel *)self->_overlayMonthLabel frame];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    if (CalInterfaceIsLeftToRight())
    {
      [(DayNavigationView *)self bounds];
      CGRectGetMinX(v62);
      [(DayNavigationView *)self paletteSafeAreaInsets];
    }

    else
    {
      [(DayNavigationView *)self bounds];
      CGRectGetMaxX(v63);
      [(DayNavigationView *)self paletteSafeAreaInsets];
      v64.origin.x = v42;
      v64.origin.y = v44;
      v64.size.width = v46;
      v64.size.height = v48;
      CGRectGetWidth(v64);
    }

    [(DayNavigationView *)self frame];
    CGRectGetHeight(v65);
    [(UILabel *)self->_overlayMonthLabel frame];
    CGRectGetHeight(v66);
    CalRoundToScreenScale();
    CalRoundRectToScreenScale();
    [(UILabel *)self->_overlayMonthLabel setFrame:?];
  }

  [(DayNavigationWeekScrollView *)self->_weekScrollView setFrame:v52[1].origin.x, v52[1].origin.y, v52[1].size.width, v52[1].size.height];

  _Block_object_dispose(&v51, 8);
}

- (DayNavigationView)initWithCalendar:(id)a3 selectedDate:(id)a4 cellFactory:(id)a5 eventSpringLoadingEnabled:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v28.receiver = self;
  v28.super_class = DayNavigationView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v17 = [(DayNavigationView *)&v28 initWithFrame:CGRectZero.origin.x, y, width, height];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_calendar, a3);
    v19 = [v11 timeZone];
    timeZone = v18->_timeZone;
    v18->_timeZone = v19;

    v21 = [[DayNavigationWeekScrollView alloc] initWithFrame:v11 calendar:v12 selectedDate:v13 cellFactory:v6 eventSpringLoadingEnabled:CGRectZero.origin.x, y, width, height];
    weekScrollView = v18->_weekScrollView;
    v18->_weekScrollView = v21;

    [(DayNavigationWeekScrollView *)v18->_weekScrollView setDelegate:v18];
    [(DayNavigationWeekScrollView *)v18->_weekScrollView setNavDelegate:v18];
    if (CalSystemSolariumEnabled())
    {
      [(DayNavigationWeekScrollView *)v18->_weekScrollView _setHiddenPocketEdges:15];
    }

    [(DayNavigationView *)v18 addSubview:v18->_weekScrollView];
    v23 = objc_alloc_init(ScrollSpringFactory);
    springFactory = v18->_springFactory;
    v18->_springFactory = v23;

    v25 = +[UIColor clearColor];
    [(DayNavigationView *)v18 setBackgroundColor:v25];

    [(DayNavigationView *)v18 setSelectedDate:v12 animated:0];
    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v18 selector:"_dayTimeViewHourWidthChanged" name:EKDayTimeViewHourWidthChangedNotification object:0];
  }

  return v18;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy();
  v7 = [(DayNavigationView *)self traitCollection];
  v8 = EKUIUsesRoundedRectsInsteadOfCircles();

  if (IsCompactInViewHierarchy)
  {
    if (v8)
    {
      [(DayNavigationWeekScrollView *)self->_weekScrollView sizeThatFits:width, height];
      v10 = v9 + 10.0;
    }

    else
    {
      v10 = 50.0;
    }
  }

  else
  {
    weekScrollView = self->_weekScrollView;
    if (v8)
    {
      [(DayNavigationWeekScrollView *)weekScrollView sizeThatFits:width, height];
    }

    else
    {
      v12 = [(DayNavigationWeekScrollView *)weekScrollView cellFactory];
      [objc_msgSend(v12 "cellClass")];
      v14 = v13 + 4.0;

      v15 = fmax(v14, 41.0);
      v16 = CUIKGetOverlayCalendar();

      if (v16)
      {
        v10 = v15 + 17.0;
      }

      else
      {
        v10 = v15;
      }
    }
  }

  v17 = width;
  result.height = v10;
  result.width = v17;
  return result;
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = DayNavigationView;
  [(DayNavigationView *)&v3 layoutMarginsDidChange];
  [(DayNavigationView *)self setNeedsLayout];
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = DayNavigationView;
  [(DayNavigationView *)&v5 setBackgroundColor:v4];
  [(DayNavigationWeekScrollView *)self->_weekScrollView setBackgroundColor:v4];
  if ([(DayNavigationView *)self showWeekNumber])
  {
    [(UILabel *)self->_weekNumberLabel setBackgroundColor:v4];
  }
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  v4 = a3;
  [(DayNavigationWeekScrollView *)self->_weekScrollView _pageDecelerationTarget];
  v6 = v5;
  v8 = v7;
  v9 = [(DayNavigationWeekScrollView *)self->_weekScrollView selectedDateAfterScrollingToPoint:?];
  objc_storeStrong(&self->_selectedDate, v9);
  [(DayNavigationWeekScrollView *)self->_weekScrollView setSelectedDateWithoutScrolling:v9];
  [(DayNavigationView *)self _updateWeekNumberLabel];
  v10 = [(DayNavigationView *)self delegate];

  if (v10)
  {
    CalAnalyticsSendEventLazy();
    v11 = [(DayNavigationView *)self delegate];
    [v11 dayNavigationView:self selectedDateChanged:v9];
  }

  [v4 contentOffset];
  v13 = v12;
  v15 = v14;
  [v4 _horizontalVelocity];
  if (v16 < 0.0)
  {
    v16 = -v16;
  }

  v17 = v13 - v6;
  if (v13 - v6 < 0.0)
  {
    v17 = -(v13 - v6);
  }

  v18 = v16 / v17;
  EKUIScaleFactor();
  [(ScrollSpringFactory *)self->_springFactory setInitialVelocity:v19 * v18 * 1000.0];
  [v4 stopScrollingAndZooming];
  [v4 setContentOffset:0 animated:{v13, v15}];
  springAnimationDuration();
  v21 = v20;
  springFactory = self->_springFactory;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10010EFC8;
  v26[3] = &unk_10020EDD8;
  v26[4] = self;
  *&v26[5] = v6;
  v26[6] = v8;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10010EFE4;
  v24[3] = &unk_10020F7A8;
  v24[4] = self;
  v25 = v4;
  v23 = v4;
  [UIView _animateWithDuration:393222 delay:springFactory options:v26 factory:v24 animations:v21 completion:0.0];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  [(DayNavigationWeekScrollView *)self->_weekScrollView setNeedsLayout];
  [(DayNavigationWeekScrollView *)self->_weekScrollView didFinishScrolling];
  weekScrollView = self->_weekScrollView;

  [(DayNavigationWeekScrollView *)weekScrollView updateHighlightIfNeeded];
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  [(DayNavigationWeekScrollView *)self->_weekScrollView setNeedsLayout];
  [(DayNavigationWeekScrollView *)self->_weekScrollView didFinishScrolling];
  weekScrollView = self->_weekScrollView;

  [(DayNavigationWeekScrollView *)weekScrollView updateHighlightIfNeeded];
}

- (void)scrollViewDidScroll:(id)a3
{
  [(DayNavigationView *)self _stopPulsingToday];
  weekScrollView = self->_weekScrollView;

  [(DayNavigationWeekScrollView *)weekScrollView didScroll];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  [(DayNavigationWeekScrollView *)self->_weekScrollView cancelScrollingAnimation];
  weekScrollView = self->_weekScrollView;

  [(DayNavigationWeekScrollView *)weekScrollView willBeginDragging];
}

- (BOOL)dayNavigationWeekScrollViewAllowedToChangeSelectedDate
{
  v3 = [(DayNavigationView *)self delegate];

  if (!v3)
  {
    return 1;
  }

  v4 = [(DayNavigationView *)self delegate];
  v5 = [v4 dayNavigationViewAllowedToChangeSelectedDate];

  return v5;
}

- (void)dayNavigationWeekScrollViewFailedToSelectDate:(id)a3
{
  v6 = a3;
  v4 = [(DayNavigationView *)self delegate];

  if (v4)
  {
    v5 = [(DayNavigationView *)self delegate];
    [v5 dayNavigationViewFailedToSelectDate:v6];
  }
}

- (void)dayNavigationWeekScrollView:(id)a3 selectedDateChanged:(id)a4
{
  v7 = a4;
  [DayNavigationView setSelectedDate:"setSelectedDate:animated:" animated:?];
  v5 = [(DayNavigationView *)self delegate];

  if (v5)
  {
    v6 = [(DayNavigationView *)self delegate];
    [v6 dayNavigationView:self selectedDateChanged:v7];
  }
}

- (void)dayNavigationWeekScrollView:(id)a3 didChangeCellWidth:(double)a4
{
  v6 = [(DayNavigationView *)self delegate];

  if (v6)
  {
    v7 = [(DayNavigationView *)self delegate];
    [v7 dayNavigationView:self didChangeCellWidth:a4];
  }
}

- (BOOL)dayNavigationWeekScrollViewIsLoadingSpecialDayData:(id)a3
{
  v4 = [(DayNavigationView *)self delegate];

  if (v4)
  {
    v5 = [(DayNavigationView *)self delegate];
    [v5 dayNavigationViewIsLoadingSpecialDayData:self];
  }

  return 0;
}

- (id)dayNavigationWeekScrollView:(id)a3 dayDataForDate:(id)a4
{
  v5 = a4;
  v6 = [(DayNavigationView *)self delegate];

  if (v6)
  {
    v7 = [(DayNavigationView *)self delegate];
    v8 = [v7 dayNavigationView:self dayDataForDate:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setShowWeekNumber:(BOOL)a3
{
  if (self->_showWeekNumber != a3)
  {
    v15 = v4;
    v16 = v3;
    self->_showWeekNumber = a3;
    if (a3)
    {
      v10 = objc_opt_new();
      weekNumberLabel = self->_weekNumberLabel;
      self->_weekNumberLabel = v10;

      v12 = [objc_opt_class() _weekNumberFont];
      [(UILabel *)self->_weekNumberLabel setFont:v12];

      v13 = [(DayNavigationView *)self backgroundColor];
      [(UILabel *)self->_weekNumberLabel setBackgroundColor:v13];

      [(DayNavigationView *)self addSubview:self->_weekNumberLabel];
      [(DayNavigationView *)self _updateWeekNumberLabel];
    }

    else
    {
      [(UILabel *)self->_weekNumberLabel removeFromSuperview];
      v14 = self->_weekNumberLabel;
      self->_weekNumberLabel = 0;
    }

    [(DayNavigationView *)self _updateFontSizes:v6];

    [(DayNavigationView *)self setNeedsLayout];
  }
}

- (void)setOverlayMonthText:(id)a3
{
  v4 = a3;
  overlayMonthLabel = self->_overlayMonthLabel;
  v11 = v4;
  if (v4)
  {
    if (!overlayMonthLabel)
    {
      v6 = objc_opt_new();
      v7 = self->_overlayMonthLabel;
      self->_overlayMonthLabel = v6;

      v8 = [UIFont systemFontOfSize:10.0];
      [(UILabel *)self->_overlayMonthLabel setFont:v8];

      v9 = WeekendTextColor();
      [(UILabel *)self->_overlayMonthLabel setTextColor:v9];

      [(DayNavigationView *)self addSubview:self->_overlayMonthLabel];
      v4 = v11;
      overlayMonthLabel = self->_overlayMonthLabel;
    }

    [(UILabel *)overlayMonthLabel setText:v4];
    [(DayNavigationView *)self setNeedsLayout];
  }

  else if (overlayMonthLabel)
  {
    [(UILabel *)overlayMonthLabel removeFromSuperview];
    v10 = self->_overlayMonthLabel;
    self->_overlayMonthLabel = 0;
  }

  [(DayNavigationView *)self sizeToFit];
}

- (void)_updateFontSizes
{
  v3 = [objc_opt_class() _weekNumberFont];
  [(UILabel *)self->_weekNumberLabel setFont:v3];

  [(DayNavigationView *)self setNeedsLayout];
}

- (void)setSelectedDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (v7)
  {
    selectedDate = self->_selectedDate;
    if (!selectedDate || ![(NSDate *)selectedDate isEqualToDate:v7])
    {
      objc_storeStrong(&self->_selectedDate, a3);
      [(DayNavigationWeekScrollView *)self->_weekScrollView cancelScrollingAnimation];
      [(DayNavigationWeekScrollView *)self->_weekScrollView setSelectedDate:v7 animated:v4];
      [(DayNavigationView *)self _updateWeekNumberLabel];
    }
  }

  else
  {
    v9 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "nil selected date provided.  Will not update [%@]", &v13, 0xCu);
    }
  }
}

- (void)setCalendar:(id)a3
{
  objc_storeStrong(&self->_calendar, a3);
  v7 = a3;
  [(DayNavigationWeekScrollView *)self->_weekScrollView setSelectedDate:self->_selectedDate animated:0];
  [(DayNavigationWeekScrollView *)self->_weekScrollView setCalendar:v7];
  v5 = [v7 timeZone];
  timeZone = self->_timeZone;
  self->_timeZone = v5;
}

- (void)contentSizeCategoryChanged
{
  [(DayNavigationWeekScrollView *)self->_weekScrollView contentSizeCategoryChanged];

  [(DayNavigationView *)self _updateFontSizes];
}

+ (id)_weekNumberFont
{
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:16.0 shouldScaleForSmallerSizes:23.0];

  return [UIFont systemFontOfSize:?];
}

- (UIEdgeInsets)paletteSafeAreaInsets
{
  top = self->_paletteSafeAreaInsets.top;
  left = self->_paletteSafeAreaInsets.left;
  bottom = self->_paletteSafeAreaInsets.bottom;
  right = self->_paletteSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end