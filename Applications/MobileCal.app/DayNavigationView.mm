@interface DayNavigationView
+ (id)_weekNumberFont;
- (BOOL)dayNavigationWeekScrollViewAllowedToChangeSelectedDate;
- (BOOL)dayNavigationWeekScrollViewIsLoadingSpecialDayData:(id)data;
- (CGSize)sizeThatFits:(CGSize)fits;
- (DayNavigationView)initWithCalendar:(id)calendar selectedDate:(id)date cellFactory:(id)factory eventSpringLoadingEnabled:(BOOL)enabled;
- (DayNavigationViewDelegate)delegate;
- (UIEdgeInsets)paletteSafeAreaInsets;
- (id)dayNavigationWeekScrollView:(id)view dayDataForDate:(id)date;
- (void)_updateFontSizes;
- (void)_updateWeekNumberLabel;
- (void)contentSizeCategoryChanged;
- (void)dayNavigationWeekScrollView:(id)view didChangeCellWidth:(double)width;
- (void)dayNavigationWeekScrollView:(id)view selectedDateChanged:(id)changed;
- (void)dayNavigationWeekScrollViewFailedToSelectDate:(id)date;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setBackgroundColor:(id)color;
- (void)setCalendar:(id)calendar;
- (void)setOverlayMonthText:(id)text;
- (void)setSelectedDate:(id)date animated:(BOOL)animated;
- (void)setShowWeekNumber:(BOOL)number;
@end

@implementation DayNavigationView

- (void)_updateWeekNumberLabel
{
  if (self->_showWeekNumber)
  {
    calendar = self->_calendar;
    startDateOfSelectedWeek = [(DayNavigationWeekScrollView *)self->_weekScrollView startDateOfSelectedWeek];
    [(NSCalendar *)calendar component:0x2000 fromDate:startDateOfSelectedWeek];

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
  showWeekNumber = [(DayNavigationView *)self showWeekNumber];
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  v22 = 0.0;
  v23 = height;
  v24 = CGSizeZero.width;
  if (showWeekNumber)
  {
    [(UILabel *)self->_weekNumberLabel sizeThatFits:10.0, 10.0];
    v24 = v25;
    v23 = v26;
    v22 = 36.0;
  }

  text = [(UILabel *)self->_overlayMonthLabel text];
  v28 = [text length];

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

- (DayNavigationView)initWithCalendar:(id)calendar selectedDate:(id)date cellFactory:(id)factory eventSpringLoadingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  calendarCopy = calendar;
  dateCopy = date;
  factoryCopy = factory;
  v28.receiver = self;
  v28.super_class = DayNavigationView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(DayNavigationView *)&v28 initWithFrame:CGRectZero.origin.x, y, width, height];
  v18 = height;
  if (height)
  {
    objc_storeStrong(&height->_calendar, calendar);
    timeZone = [calendarCopy timeZone];
    timeZone = v18->_timeZone;
    v18->_timeZone = timeZone;

    height2 = [[DayNavigationWeekScrollView alloc] initWithFrame:calendarCopy calendar:dateCopy selectedDate:factoryCopy cellFactory:enabledCopy eventSpringLoadingEnabled:CGRectZero.origin.x, y, width, height];
    weekScrollView = v18->_weekScrollView;
    v18->_weekScrollView = height2;

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

    [(DayNavigationView *)v18 setSelectedDate:dateCopy animated:0];
    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v18 selector:"_dayTimeViewHourWidthChanged" name:EKDayTimeViewHourWidthChangedNotification object:0];
  }

  return v18;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy();
  traitCollection = [(DayNavigationView *)self traitCollection];
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
      cellFactory = [(DayNavigationWeekScrollView *)weekScrollView cellFactory];
      [objc_msgSend(cellFactory "cellClass")];
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

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  v5.receiver = self;
  v5.super_class = DayNavigationView;
  [(DayNavigationView *)&v5 setBackgroundColor:colorCopy];
  [(DayNavigationWeekScrollView *)self->_weekScrollView setBackgroundColor:colorCopy];
  if ([(DayNavigationView *)self showWeekNumber])
  {
    [(UILabel *)self->_weekNumberLabel setBackgroundColor:colorCopy];
  }
}

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  [(DayNavigationWeekScrollView *)self->_weekScrollView _pageDecelerationTarget];
  v6 = v5;
  v8 = v7;
  v9 = [(DayNavigationWeekScrollView *)self->_weekScrollView selectedDateAfterScrollingToPoint:?];
  objc_storeStrong(&self->_selectedDate, v9);
  [(DayNavigationWeekScrollView *)self->_weekScrollView setSelectedDateWithoutScrolling:v9];
  [(DayNavigationView *)self _updateWeekNumberLabel];
  delegate = [(DayNavigationView *)self delegate];

  if (delegate)
  {
    CalAnalyticsSendEventLazy();
    delegate2 = [(DayNavigationView *)self delegate];
    [delegate2 dayNavigationView:self selectedDateChanged:v9];
  }

  [deceleratingCopy contentOffset];
  v13 = v12;
  v15 = v14;
  [deceleratingCopy _horizontalVelocity];
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
  [deceleratingCopy stopScrollingAndZooming];
  [deceleratingCopy setContentOffset:0 animated:{v13, v15}];
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
  v25 = deceleratingCopy;
  v23 = deceleratingCopy;
  [UIView _animateWithDuration:393222 delay:springFactory options:v26 factory:v24 animations:v21 completion:0.0];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [(DayNavigationWeekScrollView *)self->_weekScrollView setNeedsLayout];
  [(DayNavigationWeekScrollView *)self->_weekScrollView didFinishScrolling];
  weekScrollView = self->_weekScrollView;

  [(DayNavigationWeekScrollView *)weekScrollView updateHighlightIfNeeded];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  [(DayNavigationWeekScrollView *)self->_weekScrollView setNeedsLayout];
  [(DayNavigationWeekScrollView *)self->_weekScrollView didFinishScrolling];
  weekScrollView = self->_weekScrollView;

  [(DayNavigationWeekScrollView *)weekScrollView updateHighlightIfNeeded];
}

- (void)scrollViewDidScroll:(id)scroll
{
  [(DayNavigationView *)self _stopPulsingToday];
  weekScrollView = self->_weekScrollView;

  [(DayNavigationWeekScrollView *)weekScrollView didScroll];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [(DayNavigationWeekScrollView *)self->_weekScrollView cancelScrollingAnimation];
  weekScrollView = self->_weekScrollView;

  [(DayNavigationWeekScrollView *)weekScrollView willBeginDragging];
}

- (BOOL)dayNavigationWeekScrollViewAllowedToChangeSelectedDate
{
  delegate = [(DayNavigationView *)self delegate];

  if (!delegate)
  {
    return 1;
  }

  delegate2 = [(DayNavigationView *)self delegate];
  dayNavigationViewAllowedToChangeSelectedDate = [delegate2 dayNavigationViewAllowedToChangeSelectedDate];

  return dayNavigationViewAllowedToChangeSelectedDate;
}

- (void)dayNavigationWeekScrollViewFailedToSelectDate:(id)date
{
  dateCopy = date;
  delegate = [(DayNavigationView *)self delegate];

  if (delegate)
  {
    delegate2 = [(DayNavigationView *)self delegate];
    [delegate2 dayNavigationViewFailedToSelectDate:dateCopy];
  }
}

- (void)dayNavigationWeekScrollView:(id)view selectedDateChanged:(id)changed
{
  changedCopy = changed;
  [DayNavigationView setSelectedDate:"setSelectedDate:animated:" animated:?];
  delegate = [(DayNavigationView *)self delegate];

  if (delegate)
  {
    delegate2 = [(DayNavigationView *)self delegate];
    [delegate2 dayNavigationView:self selectedDateChanged:changedCopy];
  }
}

- (void)dayNavigationWeekScrollView:(id)view didChangeCellWidth:(double)width
{
  delegate = [(DayNavigationView *)self delegate];

  if (delegate)
  {
    delegate2 = [(DayNavigationView *)self delegate];
    [delegate2 dayNavigationView:self didChangeCellWidth:width];
  }
}

- (BOOL)dayNavigationWeekScrollViewIsLoadingSpecialDayData:(id)data
{
  delegate = [(DayNavigationView *)self delegate];

  if (delegate)
  {
    delegate2 = [(DayNavigationView *)self delegate];
    [delegate2 dayNavigationViewIsLoadingSpecialDayData:self];
  }

  return 0;
}

- (id)dayNavigationWeekScrollView:(id)view dayDataForDate:(id)date
{
  dateCopy = date;
  delegate = [(DayNavigationView *)self delegate];

  if (delegate)
  {
    delegate2 = [(DayNavigationView *)self delegate];
    v8 = [delegate2 dayNavigationView:self dayDataForDate:dateCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setShowWeekNumber:(BOOL)number
{
  if (self->_showWeekNumber != number)
  {
    v15 = v4;
    v16 = v3;
    self->_showWeekNumber = number;
    if (number)
    {
      v10 = objc_opt_new();
      weekNumberLabel = self->_weekNumberLabel;
      self->_weekNumberLabel = v10;

      _weekNumberFont = [objc_opt_class() _weekNumberFont];
      [(UILabel *)self->_weekNumberLabel setFont:_weekNumberFont];

      backgroundColor = [(DayNavigationView *)self backgroundColor];
      [(UILabel *)self->_weekNumberLabel setBackgroundColor:backgroundColor];

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

- (void)setOverlayMonthText:(id)text
{
  textCopy = text;
  overlayMonthLabel = self->_overlayMonthLabel;
  v11 = textCopy;
  if (textCopy)
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
      textCopy = v11;
      overlayMonthLabel = self->_overlayMonthLabel;
    }

    [(UILabel *)overlayMonthLabel setText:textCopy];
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
  _weekNumberFont = [objc_opt_class() _weekNumberFont];
  [(UILabel *)self->_weekNumberLabel setFont:_weekNumberFont];

  [(DayNavigationView *)self setNeedsLayout];
}

- (void)setSelectedDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  if (dateCopy)
  {
    selectedDate = self->_selectedDate;
    if (!selectedDate || ![(NSDate *)selectedDate isEqualToDate:dateCopy])
    {
      objc_storeStrong(&self->_selectedDate, date);
      [(DayNavigationWeekScrollView *)self->_weekScrollView cancelScrollingAnimation];
      [(DayNavigationWeekScrollView *)self->_weekScrollView setSelectedDate:dateCopy animated:animatedCopy];
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

- (void)setCalendar:(id)calendar
{
  objc_storeStrong(&self->_calendar, calendar);
  calendarCopy = calendar;
  [(DayNavigationWeekScrollView *)self->_weekScrollView setSelectedDate:self->_selectedDate animated:0];
  [(DayNavigationWeekScrollView *)self->_weekScrollView setCalendar:calendarCopy];
  timeZone = [calendarCopy timeZone];
  timeZone = self->_timeZone;
  self->_timeZone = timeZone;
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