@interface LargeMonthWeekView
+ (id)_opaqueWeekendBackgroundColor;
+ (void)clearCachedFonts;
+ (void)initialize;
- (BOOL)_showOccurrenceAtPoint:(CGPoint)a3 extendSelection:(BOOL)a4 source:(unint64_t)a5;
- (BOOL)containsCalendarDate:(id)a3;
- (BOOL)isBackgroundScene;
- (CGRect)circleFrame;
- (CGRect)frameForDate:(id)a3;
- (CGRect)frameForOccurrence:(id)a3 onDay:(id)a4;
- (CGRect)frameForOccurrenceAfterLastOnDay:(id)a3;
- (CGRect)frameForTodayHighlight;
- (LargeMonthWeekView)initWithFrame:(CGRect)a3;
- (LargeMonthWeekViewDataSource)dataSource;
- (LargeMonthWeekViewDelegate)delegate;
- (NSString)description;
- (_NSRange)highlightedDayRange;
- (double)topInset;
- (id)dateAtPoint:(CGPoint)a3;
- (id)dayFrames;
- (id)newFeedbackViewForDraggingOccurrence:(id)a3 atPoint:(CGPoint)a4;
- (id)occurrenceAtPoint:(CGPoint)a3;
- (id)presentationControllerForEditMenu;
- (id)selectedEventsForEditMenu;
- (int64_t)dayIndexForToday;
- (void)_rebuildDayNumberLabels;
- (void)_rebuildOverlayLabels;
- (void)_updateBadgeAtIndex:(unint64_t)a3;
- (void)_updateBadgeBackgroundColors;
- (void)_updateBadges;
- (void)_updateDayFrames;
- (void)_updateWeekNumber;
- (void)_updateWeekNumberFont;
- (void)_viewDoubleTapped:(id)a3;
- (void)_viewTapped:(id)a3;
- (void)attemptDisplayReviewPrompt;
- (void)contentSizeCategoryChanged;
- (void)didCompleteMonthWeekViewBackgroundRendering;
- (void)layoutSubviews;
- (void)monthWeekOccurrencesView:(id)a3 selectedEvent:(id)a4 source:(unint64_t)a5;
- (void)reloadData;
- (void)setHighlightedDayRange:(_NSRange)a3;
- (void)setShowsFirstDayOfMonthLabel:(BOOL)a3 animated:(BOOL)a4;
- (void)setShowsTopBorder:(BOOL)a3;
- (void)setShowsWeekNumber:(BOOL)a3;
- (void)setStartDate:(id)a3 endDate:(id)a4 dayCount:(int64_t)a5 todayDay:(int64_t)a6 reload:(BOOL)a7;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)updateToday;
@end

@implementation LargeMonthWeekView

+ (void)initialize
{
  if (qword_1002516A0 != -1)
  {
    sub_10016F7CC();
  }
}

+ (void)clearCachedFonts
{
  v2 = qword_100251690;
  qword_100251690 = 0;

  v3 = qword_100251698;
  qword_100251698 = 0;
}

- (LargeMonthWeekView)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = LargeMonthWeekView;
  v3 = [(LargeMonthWeekView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MonthWeekOccurrencesView);
    occurrencesView = v3->_occurrencesView;
    v3->_occurrencesView = v4;

    [(MonthWeekOccurrencesView *)v3->_occurrencesView setDelegate:v3];
    [(LargeMonthWeekView *)v3 addSubview:v3->_occurrencesView];
    v3->_showsTopBorder = 1;
    v6 = objc_alloc_init(CALayer);
    topBorderLine = v3->_topBorderLine;
    v3->_topBorderLine = v6;

    -[CALayer setBackgroundColor:](v3->_topBorderLine, "setBackgroundColor:", [qword_1002516A8 CGColor]);
    v8 = [(LargeMonthWeekView *)v3 layer];
    [v8 addSublayer:v3->_topBorderLine];

    v9 = objc_alloc_init(CALayer);
    paddingRowBorderLine = v3->_paddingRowBorderLine;
    v3->_paddingRowBorderLine = v9;

    -[CALayer setBackgroundColor:](v3->_paddingRowBorderLine, "setBackgroundColor:", [qword_1002516A8 CGColor]);
    v11 = [(LargeMonthWeekView *)v3 layer];
    [v11 addSublayer:v3->_paddingRowBorderLine];

    [(LargeMonthWeekView *)v3 bringSubviewToFront:v3->_occurrencesView];
    v12 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:"_viewTapped:"];
    [(LargeMonthWeekView *)v3 addGestureRecognizer:v12];
    v13 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:"_viewDoubleTapped:"];
    [v13 setNumberOfTapsRequired:2];
    [(LargeMonthWeekView *)v3 addGestureRecognizer:v13];
    objc_initWeak(&location, v3);
    v21 = objc_opt_class();
    v14 = [NSArray arrayWithObjects:&v21 count:1];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100014E40;
    v17[3] = &unk_10020E9E0;
    objc_copyWeak(&v18, &location);
    v15 = [(LargeMonthWeekView *)v3 registerForTraitChanges:v14 withHandler:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = LargeMonthWeekView;
  [(LargeMonthWeekView *)&v11 touchesBegan:v6 withEvent:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 largeMonthWeekView:self touchesBegan:v6 withEvent:v7];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = LargeMonthWeekView;
  [(LargeMonthWeekView *)&v11 touchesMoved:v6 withEvent:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 largeMonthWeekView:self touchesMoved:v6 withEvent:v7];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = LargeMonthWeekView;
  [(LargeMonthWeekView *)&v11 touchesEnded:v6 withEvent:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 largeMonthWeekView:self touchesEnded:v6 withEvent:v7];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = LargeMonthWeekView;
  [(LargeMonthWeekView *)&v11 touchesCancelled:v6 withEvent:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 largeMonthWeekView:self touchesCancelled:v6 withEvent:v7];
  }
}

- (void)reloadData
{
  if (!self->_occurrencesHidden && self->_startDate && self->_endDate)
  {
    v3 = [(LargeMonthWeekView *)self dataSource];
    v4 = [(EKCalendarDate *)self->_startDate date];
    v5 = [(EKCalendarDate *)self->_endDate date];
    v12 = [v3 occurrencesForStartDate:v4 endDate:v5 waitForLoad:0];

    [(MonthWeekOccurrencesView *)self->_occurrencesView setOccurrences:v12];
    v6 = [(MonthWeekOccurrencesView *)self->_occurrencesView dayTypesFromOccurrences];
    specialDayTypes = self->_specialDayTypes;
    self->_specialDayTypes = v6;

    v8 = [(MonthWeekOccurrencesView *)self->_occurrencesView dayBadgeColorsFromOccurrences];
    dayBadgeColors = self->_dayBadgeColors;
    self->_dayBadgeColors = v8;

    v10 = [(MonthWeekOccurrencesView *)self->_occurrencesView dayBadgeLocalesFromOccurrences];
    dayBadgeLocales = self->_dayBadgeLocales;
    self->_dayBadgeLocales = v10;

    [(LargeMonthWeekView *)self _updateBadges];
  }
}

- (void)contentSizeCategoryChanged
{
  [(LargeMonthWeekView *)self _rebuildDayNumberLabels];
  [(LargeMonthWeekView *)self _rebuildOverlayLabels];
  [(LargeMonthWeekView *)self _updateWeekNumberFont];
  [(LargeMonthWeekView *)self reloadData];

  [(LargeMonthWeekView *)self setNeedsLayout];
}

- (void)updateToday
{
  v3 = CUIKTodayDate();
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  [(EKCalendarDate *)self->_startDate absoluteTime];
  if (v5 >= v6 && ([(EKCalendarDate *)self->_endDate absoluteTime], v5 <= v7))
  {
    v9 = CUIKTodayComponents();
    v8 = [v9 day];
  }

  else
  {
    v8 = 0;
  }

  if (v8 != self->_todayDay)
  {
    self->_todayDay = v8;
    [(LargeMonthWeekView *)self _rebuildDayNumberLabels];
    [(LargeMonthWeekView *)self setNeedsDisplay];

    [(LargeMonthWeekView *)self setNeedsLayout];
  }
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = LargeMonthWeekView;
  v3 = [(LargeMonthWeekView *)&v9 description];
  v4 = [(LargeMonthWeekView *)self calendarDate];
  v5 = [v4 date];
  v6 = CUIKStringForDate();
  v7 = [NSString stringWithFormat:@"%@ Week Represented: %@", v3, v6];;

  return v7;
}

- (id)occurrenceAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(LargeMonthWeekView *)self layoutIfNeeded];
  [(MonthWeekOccurrencesView *)self->_occurrencesView frame];
  v10.x = x;
  v10.y = y;
  if (CGRectContainsPoint(v11, v10))
  {
    occurrencesView = self->_occurrencesView;
    [(MonthWeekOccurrencesView *)occurrencesView convertPoint:self fromView:x, y];
    v7 = [(MonthWeekOccurrencesView *)occurrencesView occurrenceAtPoint:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGRect)frameForTodayHighlight
{
  [(_CircleView *)self->_todayCircle frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)frameForDate:(id)a3
{
  v4 = [a3 differenceInDays:self->_startDate];
  if (v4 < 0 || v4 >= self->_dayCount)
  {
    v5 = &CGRectNull;
  }

  else
  {
    v5 = &self->_dayFrames[self->_firstDayIndex + v4];
  }

  width = v5->size.width;
  height = v5->size.height;
  x = v5->origin.x;
  y = v5->origin.y;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setShowsTopBorder:(BOOL)a3
{
  if (self->_showsTopBorder != a3)
  {
    self->_showsTopBorder = a3;
    topBorderLine = self->_topBorderLine;
    if (a3)
    {
      [(CALayer *)topBorderLine setHidden:0];

      [(LargeMonthWeekView *)self setNeedsLayout];
    }

    else
    {

      [(CALayer *)topBorderLine setHidden:1];
    }
  }
}

- (void)setShowsWeekNumber:(BOOL)a3
{
  if (self->_showsWeekNumber != a3)
  {
    self->_showsWeekNumber = a3;
    if (a3)
    {
      v4 = objc_opt_new();
      weekNumberLabel = self->_weekNumberLabel;
      self->_weekNumberLabel = v4;

      [(LargeMonthWeekView *)self _updateWeekNumberFont];
      [(LargeMonthWeekView *)self addSubview:self->_weekNumberLabel];

      [(LargeMonthWeekView *)self _updateWeekNumber];
    }

    else
    {
      [(UILabel *)self->_weekNumberLabel removeFromSuperview];
      v6 = self->_weekNumberLabel;
      self->_weekNumberLabel = 0;
    }
  }
}

- (void)_updateWeekNumberFont
{
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:13.0];
  v3 = [UIFont systemFontOfSize:?];
  [(UILabel *)self->_weekNumberLabel setFont:v3];
}

- (void)_updateWeekNumber
{
  if (self->_showsWeekNumber)
  {
    v16 = v6;
    v17 = v5;
    v18 = v4;
    v19 = v3;
    v20 = v2;
    v11 = CUIKCalendar();
    v12 = [(LargeMonthWeekView *)self calendarDate];
    v13 = [v12 date];
    [v11 component:0x2000 fromDate:v13];
    v14 = CUIKLocalizedStringForInteger();
    [(UILabel *)self->_weekNumberLabel setText:v14];

    if (self->_todayDay < 1)
    {
      +[UIColor secondaryLabelColor];
    }

    else
    {
      CalendarAppTintColor();
    }
    v15 = ;
    [(UILabel *)self->_weekNumberLabel setTextColor:v15, v7, v16, v17, v18, v19, v20, v8];

    [(LargeMonthWeekView *)self setNeedsLayout];
  }
}

- (void)setStartDate:(id)a3 endDate:(id)a4 dayCount:(int64_t)a5 todayDay:(int64_t)a6 reload:(BOOL)a7
{
  v7 = a7;
  v21 = a3;
  v12 = a4;
  if (![v21 isEqual:self->_startDate] || !objc_msgSend(v12, "isEqual:", self->_endDate) || self->_dayCount != a5)
  {
    [(LargeMonthWeekView *)self setShowsFirstDayOfMonthLabel:0 animated:0];
    v13 = [v21 copy];
    startDate = self->_startDate;
    self->_startDate = v13;

    v15 = [v12 copy];
    endDate = self->_endDate;
    self->_endDate = v15;

    self->_dayCount = a5;
    self->_todayDay = a6;
    v17 = [v21 day];
    v18 = 7 - a5;
    if (v17 != 1)
    {
      v18 = 0;
    }

    self->_firstDayIndex = v18;
    v19 = [v12 month];
    v20 = [v12 calendarDateByAddingDays:1];
    self->_isLastWeekOfMonth = v19 != [v20 month];

    [(MonthWeekOccurrencesView *)self->_occurrencesView setStartDate:self->_startDate endDate:self->_endDate dayCount:self->_dayCount];
    if (v7)
    {
      [(LargeMonthWeekView *)self reloadData];
    }

    [(LargeMonthWeekView *)self _rebuildDayNumberLabels];
    [(LargeMonthWeekView *)self _rebuildOverlayLabels];
    [(LargeMonthWeekView *)self _updateWeekNumber];
    [(LargeMonthWeekView *)self setNeedsLayout];
    [(LargeMonthWeekView *)self setNeedsDisplay];
  }
}

- (void)_rebuildOverlayLabels
{
  v3 = CUIKGetOverlayCalendar();
  overlayLabels = self->_overlayLabels;
  if (v3)
  {
    if (!overlayLabels)
    {
      v5 = 7;
      v6 = [[NSMutableArray alloc] initWithCapacity:7];
      do
      {
        v7 = objc_opt_new();
        [(LargeMonthWeekView *)self addSubview:v7];
        [(NSArray *)v6 addObject:v7];

        --v5;
      }

      while (v5);
      v8 = self->_overlayLabels;
      self->_overlayLabels = v6;
    }

    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:12.0];
    v9 = [UIFont systemFontOfSize:?];
    v10 = [(EKCalendarDate *)self->_startDate dayOfWeek];
    v11 = (v10 - CUIKZeroIndexedWeekStart() + 6) % 7;
    v12 = v11 + self->_dayCount;
    self->_isFirstOfOverlayYear = 0;
    v13 = objc_opt_new();
    v14 = self->_overlayLabels;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100016090;
    v37[3] = &unk_10020EA48;
    v42 = v11;
    v43 = v12;
    v31 = v3;
    v38 = v3;
    v39 = self;
    v15 = v13;
    v40 = v15;
    v30 = v9;
    v41 = v30;
    [(NSArray *)v14 enumerateObjectsUsingBlock:v37];
    v16 = [(NSMutableDictionary *)self->_firstOfOverlayMonthUnderlinesMap allValues];
    v17 = [v16 mutableCopy];

    v18 = objc_opt_new();
    firstOfOverlayMonthUnderlinesMap = self->_firstOfOverlayMonthUnderlinesMap;
    self->_firstOfOverlayMonthUnderlinesMap = v18;

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v15;
    v20 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = *v34;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v33 + 1) + 8 * i);
          if (v22 >= [v17 count])
          {
            v26 = objc_opt_new();
            v27 = CalendarAppTintColor();
            [v26 setBackgroundColor:v27];

            [(LargeMonthWeekView *)self addSubview:v26];
          }

          else
          {
            v26 = [v17 objectAtIndexedSubscript:v22];
          }

          [(NSMutableDictionary *)self->_firstOfOverlayMonthUnderlinesMap setObject:v26 forKeyedSubscript:v25];
          ++v22;
        }

        v21 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
      }

      while (v21);
    }

    else
    {
      v22 = 0;
    }

    while (v22 < [v17 count])
    {
      v29 = [v17 objectAtIndexedSubscript:v22];
      [v29 removeFromSuperview];

      ++v22;
    }

    v3 = v31;
  }

  else
  {
    [(NSArray *)overlayLabels enumerateObjectsUsingBlock:&stru_10020EA20];
    v28 = self->_overlayLabels;
    self->_overlayLabels = 0;
  }
}

- (void)_rebuildDayNumberLabels
{
  if (!self->_dayNumberLabels)
  {
    v3 = 7;
    v4 = [[NSMutableArray alloc] initWithCapacity:7];
    do
    {
      v5 = objc_alloc_init(UILabel);
      [(LargeMonthWeekView *)self addSubview:v5];
      [(NSArray *)v4 addObject:v5];

      --v3;
    }

    while (v3);
    dayNumberLabels = self->_dayNumberLabels;
    self->_dayNumberLabels = v4;
    v7 = v4;

    v8 = objc_opt_new();
    firstOfMonthLabel = self->_firstOfMonthLabel;
    self->_firstOfMonthLabel = v8;

    [(UILabel *)self->_firstOfMonthLabel setAlpha:0.0];
    [(LargeMonthWeekView *)self addSubview:self->_firstOfMonthLabel];
  }

  if (!self->_dayBadgeViews)
  {
    v10 = 7;
    v11 = [[NSMutableArray alloc] initWithCapacity:7];
    do
    {
      v12 = objc_alloc_init(UIImageView);
      [v12 setHidden:1];
      [(LargeMonthWeekView *)self addSubview:v12];
      [(NSArray *)v11 addObject:v12];

      --v10;
    }

    while (v10);
    dayBadgeViews = self->_dayBadgeViews;
    self->_dayBadgeViews = v11;
  }

  if (!self->_dayBadgeViewBesideFirstOfMonthLabel)
  {
    v14 = objc_alloc_init(UIImageView);
    dayBadgeViewBesideFirstOfMonthLabel = self->_dayBadgeViewBesideFirstOfMonthLabel;
    self->_dayBadgeViewBesideFirstOfMonthLabel = v14;

    [(LargeMonthWeekView *)self addSubview:self->_dayBadgeViewBesideFirstOfMonthLabel];
  }

  if (self->_todayDay && !self->_firstOfMonthNoDayLabel)
  {
    v16 = objc_opt_new();
    firstOfMonthNoDayLabel = self->_firstOfMonthNoDayLabel;
    self->_firstOfMonthNoDayLabel = v16;

    [(UILabel *)self->_firstOfMonthNoDayLabel setAlpha:0.0];
    [(LargeMonthWeekView *)self addSubview:self->_firstOfMonthNoDayLabel];
  }

  v18 = [(EKCalendarDate *)self->_startDate dayOfWeek];
  v19 = [(EKCalendarDate *)self->_startDate daysInMonth];
  if (!qword_100251690)
  {
    v20 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:0 options:3];
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:17.0];
    v21 = [UIFont fontWithDescriptor:v20 size:?];
    v22 = qword_100251690;
    qword_100251690 = v21;

    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:17.0];
    v23 = [UIFont boldSystemFontOfSize:?];
    v24 = qword_100251698;
    qword_100251698 = v23;
  }

  v25 = v18 - CUIKZeroIndexedWeekStart() + 6;
  dayCount = self->_dayCount;
  self->_firstOfMonthIndex = -1;
  v27 = self->_dayNumberLabels;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100016750;
  v34[3] = &unk_10020EA70;
  v34[4] = self;
  v34[5] = v25 % 7;
  v34[6] = v25 % 7 + dayCount;
  v34[7] = v19;
  [(NSArray *)v27 enumerateObjectsUsingBlock:v34];
  [(NSArray *)self->_dayBadgeViews enumerateObjectsUsingBlock:&stru_10020EAB0];
  v28 = self->_firstOfMonthIndex >> 63;
  [(UILabel *)self->_firstOfMonthLabel setHidden:v28];
  [(UILabel *)self->_firstOfMonthNoDayLabel setHidden:v28];
  [(UIImageView *)self->_dayBadgeViewBesideFirstOfMonthLabel setHidden:v28];
  [(UIImageView *)self->_dayBadgeViewBesideFirstOfMonthLabel setAlpha:0.0];
  todayDay = self->_todayDay;
  if (todayDay >= 1)
  {
    if (!self->_todayCircle)
    {
      v30 = objc_alloc_init(_CircleView);
      todayCircle = self->_todayCircle;
      self->_todayCircle = v30;

      v32 = +[UIColor clearColor];
      [(_CircleView *)self->_todayCircle setBackgroundColor:v32];

      [(LargeMonthWeekView *)self insertSubview:self->_todayCircle belowSubview:self->_occurrencesView];
    }

    v33 = [(LargeMonthWeekView *)self traitCollection];
    [(_CircleView *)self->_todayCircle setUsesRoundedRectInsteadOfCircle:EKUIUsesRoundedRectsInsteadOfCircles()];
  }

  [(_CircleView *)self->_todayCircle setHidden:todayDay < 1];
  [(LargeMonthWeekView *)self _updateBadgeBackgroundColors];
  if (self->_specialDayTypes)
  {
    if (self->_dayBadgeColors)
    {
      [(LargeMonthWeekView *)self _updateBadges];
    }
  }
}

- (void)setShowsFirstDayOfMonthLabel:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showingFirstDayOfMonthLabel != a3)
  {
    v12 = v4;
    v13 = v5;
    if ((self->_firstOfMonthIndex & 0x8000000000000000) == 0)
    {
      v7 = a4;
      self->_showingFirstDayOfMonthLabel = a3;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100016B6C;
      v10[3] = &unk_10020EAD8;
      v10[4] = self;
      v11 = a3;
      v8 = objc_retainBlock(v10);
      v9 = v8;
      if (v7)
      {
        [UIView animateWithDuration:v8 animations:0.5];
      }

      else
      {
        (v8[2])(v8);
      }

      [(LargeMonthWeekView *)self setNeedsLayout];
    }
  }
}

- (void)_updateBadges
{
  if ([(NSArray *)self->_dayBadgeViews count])
  {
    v3 = 0;
    do
    {
      [(LargeMonthWeekView *)self _updateBadgeAtIndex:v3++];
    }

    while (v3 < [(NSArray *)self->_dayBadgeViews count]);
  }
}

- (void)_updateBadgeAtIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_dayBadgeViews count]<= a3)
  {
    return;
  }

  v14 = [(NSArray *)self->_dayBadgeViews objectAtIndex:a3];
  if ([(NSArray *)self->_specialDayTypes count]> a3 && [(NSArray *)self->_dayBadgeColors count]> a3 && [(NSArray *)self->_dayBadgeLocales count]> a3)
  {
    v5 = [(NSArray *)self->_specialDayTypes objectAtIndex:a3];
    v6 = [v5 integerValue];

    v7 = [(NSArray *)self->_dayBadgeColors objectAtIndex:a3];
    v8 = [(NSArray *)self->_dayBadgeLocales objectAtIndex:a3];
    if ([v8 isEqual:&stru_1002133B8])
    {

      v8 = 0;
    }

    v9 = [(LargeMonthWeekView *)self traitCollection];
    [v9 userInterfaceStyle];

    if (v6 == 3)
    {
      v10 = BadgeImageForAlternateWorkday();
    }

    else
    {
      if (v6 != 1)
      {
        goto LABEL_19;
      }

      v10 = BadgeImageForHoliday();
    }

    v11 = v10;
    if (v10)
    {
      [v14 setImage:v10];
      [v14 setHidden:0];
      if (self->_firstDayIndex != a3)
      {
LABEL_23:

        goto LABEL_12;
      }

      p_dayBadgeViewBesideFirstOfMonthLabel = &self->_dayBadgeViewBesideFirstOfMonthLabel;
      [(UIImageView *)*p_dayBadgeViewBesideFirstOfMonthLabel setImage:v11];
      v13 = 0;
LABEL_21:
      [(UIImageView *)*p_dayBadgeViewBesideFirstOfMonthLabel setHidden:v13];
      goto LABEL_23;
    }

LABEL_19:
    [v14 setHidden:1];
    if (self->_firstDayIndex != a3)
    {
      v11 = 0;
      goto LABEL_23;
    }

    v11 = 0;
    p_dayBadgeViewBesideFirstOfMonthLabel = &self->_dayBadgeViewBesideFirstOfMonthLabel;
    v13 = 1;
    goto LABEL_21;
  }

  [v14 setHidden:1];
LABEL_12:
}

- (void)_updateBadgeBackgroundColors
{
  CUIKGetWeekendDays();
  v3 = CUIKZeroIndexedWeekStart();
  v4 = CUIKZeroIndexedWeekStart();
  v5 = +[UIColor systemBackgroundColor];
  v6 = [objc_opt_class() _opaqueWeekendBackgroundColor];
  if ([(NSArray *)self->_dayBadgeViews count]>= 1)
  {
    v7 = 0;
    v8 = (7 - v3) % 7;
    v9 = (7 - v4) % 7;
    do
    {
      if (v9 == v7 || v8 == v7)
      {
        v11 = v6;
      }

      else
      {
        v11 = v5;
      }

      v12 = v11;
      v13 = [(NSArray *)self->_dayBadgeViews objectAtIndex:v7];
      [v13 setBackgroundColor:v12];
      if (v7 == self->_firstOfMonthIndex)
      {
        [(UIImageView *)self->_dayBadgeViewBesideFirstOfMonthLabel setBackgroundColor:v12];
      }

      ++v7;
    }

    while (v7 < [(NSArray *)self->_dayBadgeViews count]);
  }
}

+ (id)_opaqueWeekendBackgroundColor
{
  v2 = [a1 weekendColor];
  v3 = +[UIColor systemBackgroundColor];
  v13 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v10 = 0.0;
  [v2 getRed:&v13 green:&v12 blue:&v11 alpha:&v10];
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0;
  v7 = 0.0;
  [v3 getRed:&v9 green:&v8 blue:&v7 alpha:&v6];
  v4 = [UIColor colorWithRed:v9 * (1.0 - v10) + v13 * v10 green:(1.0 - v10) * v8 + v12 * v10 blue:(1.0 - v10) * v7 + v11 * v10 alpha:1.0];

  return v4;
}

- (void)_viewTapped:(id)a3
{
  v14 = a3;
  [v14 locationInView:self];
  v5 = v4;
  v7 = v6;
  v8 = [v14 modifierFlags];
  v9 = [v14 touches];
  v10 = [v9 count];

  if (v10 == 1)
  {
    v11 = [v14 touches];
    v12 = [v11 firstObject];

    v13 = [v12 type] == 3 || objc_msgSend(v12, "type") == 1;
  }

  else
  {
    v13 = 0;
  }

  [(LargeMonthWeekView *)self _showOccurrenceAtPoint:(*&v8 & 0x120000) != 0 extendSelection:v13 source:v5, v7];
}

- (BOOL)_showOccurrenceAtPoint:(CGPoint)a3 extendSelection:(BOOL)a4 source:(unint64_t)a5
{
  v6 = a4;
  y = a3.y;
  x = a3.x;
  v10 = [(LargeMonthWeekView *)self dateAtPoint:?];
  [(MonthWeekOccurrencesView *)self->_occurrencesView frameForLastOccurrenceOnDay:v10];
  [(LargeMonthWeekView *)self convertRect:self->_occurrencesView fromView:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(MonthWeekOccurrencesView *)self->_occurrencesView frame];
  if (y >= CGRectGetMinY(v29))
  {
    v30.origin.x = v12;
    v30.origin.y = v14;
    v30.size.width = v16;
    v30.size.height = v18;
    if (y <= CGRectGetMaxY(v30))
    {
      goto LABEL_6;
    }

    v19 = -8.0;
  }

  else
  {
    v19 = 8.0;
  }

  y = y + v19;
LABEL_6:
  [(MonthWeekOccurrencesView *)self->_occurrencesView frame];
  v28.x = x;
  v28.y = y;
  if (CGRectContainsPoint(v31, v28))
  {
    [(MonthWeekOccurrencesView *)self->_occurrencesView convertPoint:self fromView:x, y];
    v21 = v20;
    v23 = v22;
    v24 = [(MonthWeekOccurrencesView *)self->_occurrencesView occurrenceAtPoint:?];
    if (v24)
    {
      v25 = [(MonthWeekOccurrencesView *)self->_occurrencesView occurrence:v24 hasSymbolAtPoint:v21, v23];
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained largeMonthWeekView:self didTapOccurrence:v24 onDay:v10 extendSelection:v6 source:a5 tappedSymbol:v25];

  return v24 != 0;
}

- (void)_viewDoubleTapped:(id)a3
{
  v4 = a3;
  [v4 locationInView:self];
  v6 = v5;
  v8 = v7;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [v4 touches];
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v10)
  {

    goto LABEL_13;
  }

  v11 = v10;
  v12 = *v28;
  v13 = 1;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v27 + 1) + 8 * i);
      if ([v15 type] != 1)
      {
        v13 &= [v15 type] == 3;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v11);

  if (v13)
  {
LABEL_13:
    if ([(LargeMonthWeekView *)self _showOccurrenceAtPoint:0 extendSelection:0 source:v6, v8])
    {
      goto LABEL_17;
    }
  }

  v16 = [(LargeMonthWeekView *)self dateAtPoint:v6, v8];
  if (v16)
  {
    v17 = [UIView alloc];
    [(LargeMonthWeekView *)self frameForDate:v16];
    v18 = [v17 initWithFrame:?];
    v19 = +[UIColor blackColor];
    [v18 setBackgroundColor:v19];

    [v18 setAlpha:0.0];
    [(LargeMonthWeekView *)self addSubview:v18];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100017988;
    v25[3] = &unk_10020EB00;
    v26 = v18;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100017998;
    v21[3] = &unk_10020EB28;
    v22 = v26;
    v23 = self;
    v24 = v16;
    v20 = v26;
    [UIView animateWithDuration:v25 animations:v21 completion:0.3];
  }

LABEL_17:
}

- (double)topInset
{
  v2 = objc_opt_class();

  [v2 topInset];
  return result;
}

- (void)_updateDayFrames
{
  v3 = [(LargeMonthWeekView *)self window];
  v4 = [v3 screen];
  [v4 scale];
  v6 = v5;

  v7 = [(LargeMonthWeekView *)self window];
  v8 = [v7 interfaceOrientation] - 1;

  if (v6 <= 1.0)
  {
    self->_gridlineThickness = 1.0;
    if (v8 >= 2)
    {
      v10 = qword_100251728;
    }

    else
    {
      v10 = qword_100251760;
    }

    if (v8 >= 2)
    {
      v11 = qword_1001F7FD0;
    }

    else
    {
      v11 = qword_1001F8008;
    }
  }

  else
  {
    EKUISeparatorLineThickness();
    self->_gridlineThickness = v9;
    if (v8 >= 2)
    {
      v10 = qword_1002516B8;
    }

    else
    {
      v10 = qword_1002516F0;
    }

    if (v8 >= 2)
    {
      v11 = qword_1001F7F60;
    }

    else
    {
      v11 = qword_1001F7F98;
    }
  }

  [(LargeMonthWeekView *)self bounds];
  v13 = v12;
  v15 = v14;
  if ([(LargeMonthWeekView *)self _hasPaddingRow])
  {
    CalRoundToScreenScale();
    v15 = v16;
  }

  v17 = 0;
  gridlineThickness = self->_gridlineThickness;
  v19 = v15 - gridlineThickness;
  v20 = v13 + gridlineThickness;
  if (v8 >= 2)
  {
    v21 = 1024.0;
  }

  else
  {
    v21 = 768.0;
  }

  v22 = 6;
  v23 = self;
  do
  {
    if (CalTimeDirectionIsLeftToRight())
    {
      v24 = v17;
    }

    else
    {
      v24 = v22;
    }

    [(LargeMonthWeekView *)self bounds];
    if (v25 == 0.0)
    {
      EKUICurrentWindowWidthWithViewHierarchy();
      v25 = v26;
    }

    v27 = v25 * *&v11[v24] / v21;
    v23->_dayFrames[0].origin.x = v25 * *&v10[v24] / v21;
    v23->_dayFrames[0].origin.y = v20;
    v23->_dayFrames[0].size.width = v27;
    v23->_dayFrames[0].size.height = v19;
    ++v17;
    v23 = (v23 + 32);
    --v22;
  }

  while (v17 != 7);
}

- (void)layoutSubviews
{
  v52.receiver = self;
  v52.super_class = LargeMonthWeekView;
  [(LargeMonthWeekView *)&v52 layoutSubviews];
  [(LargeMonthWeekView *)self _updateDayFrames];
  v3 = &self->_dayFrames[(13 - CUIKZeroIndexedWeekStart()) % 7];
  x = v3->origin.x;
  y = v3->origin.y;
  width = v3->size.width;
  height = v3->size.height;
  v8 = [(LargeMonthWeekView *)self _hasPaddingRow];
  if (v8)
  {
    [(LargeMonthWeekView *)self bounds];
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    CGRectGetMaxY(v54);
    CalRoundRectToScreenScale();
    p_paddingRowBorderLine = &self->_paddingRowBorderLine;
    [(CALayer *)self->_paddingRowBorderLine setFrame:?];
  }

  else
  {
    p_paddingRowBorderLine = &self->_paddingRowBorderLine;
  }

  [(CALayer *)*p_paddingRowBorderLine setHidden:v8 ^ 1];
  [(LargeMonthWeekView *)self bounds];
  v11 = v10;
  v13 = v12 + 0.0;
  gridlineThickness = self->_gridlineThickness;
  [(CALayer *)self->_topBorderLine setFrame:v10, v12 + 0.0];
  v15 = v13 + gridlineThickness + 7.0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3010000000;
  v51[3] = &unk_1001EBD39;
  *&v51[4] = v11;
  *&v51[5] = v15;
  v16 = [(LargeMonthWeekView *)self dayIndexForToday];
  v17 = [(EKCalendarDate *)self->_startDate dayOfWeek];
  v18 = (v17 - CUIKZeroIndexedWeekStart() + 6) % 7;
  weekNumberLabel = self->_weekNumberLabel;
  if (weekNumberLabel)
  {
    [(UILabel *)weekNumberLabel sizeToFit];
    [(UILabel *)self->_weekNumberLabel frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [(CALayer *)self->_topBorderLine frame];
    CGRectGetMaxY(v55);
    [(UILabel *)self->_weekNumberLabel _firstLineBaselineOffsetFromBoundsTop];
    CalRoundToScreenScale();
    v27 = v26;
    IsLeftToRight = CalTimeDirectionIsLeftToRight();
    v29 = v27 + 21.0;
    v30 = &self->_dayFrames[v18];
    v31 = v30->origin.x;
    v32 = v30->origin.y;
    v33 = v30->size.width;
    v34 = v30->size.height;
    if (IsLeftToRight)
    {
      CGRectGetMinX(*&v31);
    }

    else
    {
      CGRectGetMaxX(*&v31);
      v56.origin.x = v21;
      v56.origin.y = v29;
      v56.size.width = v23;
      v56.size.height = v25;
      CGRectGetWidth(v56);
    }

    CalRoundToScreenScale();
    [(UILabel *)self->_weekNumberLabel setFrame:?];
  }

  dayNumberLabels = self->_dayNumberLabels;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1000181DC;
  v50[3] = &unk_10020EB50;
  v50[4] = self;
  v50[5] = v51;
  v50[6] = v18;
  [(NSArray *)dayNumberLabels enumerateObjectsUsingBlock:v50];
  if (v16 < 0 || v16 >= self->_firstDayIndex + self->_dayCount)
  {
    [(_CircleView *)self->_todayCircle setHidden:1];
  }

  else
  {
    v36 = [(NSArray *)self->_dayNumberLabels objectAtIndexedSubscript:v16];
    [v36 frame];
    v37 = CGRectGetWidth(v57);
    v38 = [(_CircleView *)self->_todayCircle usesRoundedRectInsteadOfCircle];
    v39 = v37 + 10.0;
    if ((v38 & (v37 + 10.0 > 26.0)) != 0)
    {
      v40 = v37 + 10.0;
    }

    else
    {
      v40 = 26.0;
    }

    [v36 frame];
    CGRectGetMidX(v58);
    v59.size.height = 26.0;
    v59.origin.x = v11;
    v59.origin.y = v15;
    v59.size.width = v40;
    CGRectGetWidth(v59);
    CalRoundToScreenScale();
    v42 = v41;
    [v36 frame];
    CGRectGetMidY(v60);
    v61.size.height = 26.0;
    v61.origin.x = v42;
    v61.origin.y = v15;
    v61.size.width = v40;
    CGRectGetHeight(v61);
    CalRoundToScreenScale();
    CalRoundRectToScreenScale();
    [(_CircleView *)self->_todayCircle setFrame:?];
    [(_CircleView *)self->_todayCircle setHidden:0];
  }

  CalRoundToScreenScale();
  [(LargeMonthWeekView *)self bounds];
  CGRectGetWidth(v62);
  [(LargeMonthWeekView *)self bounds];
  if ([(LargeMonthWeekView *)self _hasPaddingRow])
  {
    [(LargeMonthWeekView *)self bounds];
    CalRoundToScreenScale();
  }

  CalRoundRectToScreenScale();
  [(MonthWeekOccurrencesView *)self->_occurrencesView setFrame:?];
  p_size = &self->_dayFrames[0].size;
  for (i = 24; i != 248; i += 32)
  {
    [(LargeMonthWeekView *)self convertRect:self->_occurrencesView toView:p_size[-1].width, p_size[-1].height, p_size->width, p_size->height];
    v45 = &v53[i];
    *(v45 - 3) = v46;
    *(v45 - 2) = v47;
    *(v45 - 1) = v48;
    *v45 = v49;
    p_size += 2;
  }

  [(MonthWeekOccurrencesView *)self->_occurrencesView setDayFrames:v53];
  _Block_object_dispose(v51, 8);
}

- (id)dayFrames
{
  [(LargeMonthWeekView *)self _updateDayFrames];
  v3 = 7;
  v4 = [[NSMutableArray alloc] initWithCapacity:7];
  p_size = &self->_dayFrames[0].size;
  do
  {
    width = p_size[-1].width;
    height = p_size[-1].height;
    v8 = p_size->width;
    v9 = p_size->height;
    p_size += 2;
    v10 = [NSValue valueWithCGRect:width, height, v8, v9];
    [v4 addObject:v10];

    --v3;
  }

  while (v3);

  return v4;
}

- (BOOL)containsCalendarDate:(id)a3
{
  v4 = a3;
  v5 = [(LargeMonthWeekView *)self calendarDate];
  v6 = [v5 compare:v4];

  if (v6 == 1)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(LargeMonthWeekView *)self endCalendarDate];
    v7 = [v8 compare:v4] != -1;
  }

  return v7;
}

- (id)dateAtPoint:(CGPoint)a3
{
  if (self->_dayCount < 1)
  {
LABEL_5:
    v9 = 0;
  }

  else
  {
    y = a3.y;
    x = a3.x;
    v6 = 0;
    dayFrames = self->_dayFrames;
    while (1)
    {
      p_x = &dayFrames[v6 + self->_firstDayIndex].origin.x;
      v13.origin.x = *p_x;
      v13.origin.y = p_x[1];
      v13.size.height = p_x[3];
      v13.size.width = p_x[2] + self->_gridlineThickness;
      v12.x = x;
      v12.y = y;
      if (CGRectContainsPoint(v13, v12))
      {
        break;
      }

      if (++v6 >= self->_dayCount)
      {
        goto LABEL_5;
      }
    }

    v9 = [(LargeMonthWeekView *)self dateForIndex:v6];
  }

  return v9;
}

- (CGRect)frameForOccurrence:(id)a3 onDay:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(LargeMonthWeekView *)self layoutIfNeeded];
  [(MonthWeekOccurrencesView *)self->_occurrencesView frameForOccurrence:v7 onDay:v6];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  if (CGRectIsNull(v20))
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  else
  {
    [(LargeMonthWeekView *)self convertRect:self->_occurrencesView fromView:v9, v11, v13, v15];
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)frameForOccurrenceAfterLastOnDay:(id)a3
{
  v4 = a3;
  [(LargeMonthWeekView *)self layoutIfNeeded];
  [(MonthWeekOccurrencesView *)self->_occurrencesView frameForOccurrenceAfterLastOnDay:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(LargeMonthWeekView *)self convertRect:self->_occurrencesView fromView:v6, v8, v10, v12];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(LargeMonthWeekView *)self bounds];
  v22 = v21;
  if ([(LargeMonthWeekView *)self _hasPaddingRow])
  {
    CalRoundToScreenScale();
    v22 = v23;
  }

  v29.origin.x = v14;
  v29.origin.y = v16;
  v29.size.width = v18;
  v29.size.height = v20;
  MaxY = CGRectGetMaxY(v29);
  v25 = v22 - v20;
  if (MaxY <= v22)
  {
    v25 = v16;
  }

  v26 = v14;
  v27 = v18;
  v28 = v20;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v25;
  result.origin.x = v26;
  return result;
}

- (void)setHighlightedDayRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    dayCount = self->_dayCount;
    if (a3.location + a3.length > dayCount)
    {
      length = dayCount - a3.location;
    }
  }

  if (a3.location != self->_highlightedDayRange.location || length != self->_highlightedDayRange.length)
  {
    self->_highlightedDayRange.location = a3.location;
    self->_highlightedDayRange.length = length;
    highlightedDays = self->_highlightedDays;
    if (!highlightedDays)
    {
      v9 = [[NSMutableDictionary alloc] initWithCapacity:7];
      v10 = self->_highlightedDays;
      self->_highlightedDays = v9;

      highlightedDays = self->_highlightedDays;
    }

    v26 = [(NSMutableDictionary *)highlightedDays mutableCopy];
    if (length && location < length + location)
    {
      v11 = location;
      do
      {
        v12 = [NSNumber numberWithUnsignedInteger:v11];
        v13 = [(NSMutableDictionary *)self->_highlightedDays objectForKey:v12];
        if (v13)
        {
          v14 = v13;
          [v26 removeObjectForKey:v12];
        }

        else
        {
          if (qword_1002517A0 != -1)
          {
            sub_10016F7E0();
          }

          v15 = [UIView alloc];
          CalRoundRectToScreenScale();
          v16 = [v15 initWithFrame:?];
          [v16 setBackgroundColor:qword_100251798];
          [v16 setAlpha:0.0];
          [(LargeMonthWeekView *)self addSubview:v16];
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_1000191F0;
          v35[3] = &unk_10020EB00;
          v14 = v16;
          v36 = v14;
          [UIView animateWithDuration:2 delay:v35 options:0 animations:0.2 completion:0.0];
          [(NSMutableDictionary *)self->_highlightedDays setObject:v14 forKey:v12];
        }

        ++v11;
        --length;
      }

      while (length);
    }

    v17 = self;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [v26 allKeys];
    v18 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v32;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v31 + 1) + 8 * i);
          v23 = [v26 objectForKey:v22];
          [(NSMutableDictionary *)v17->_highlightedDays removeObjectForKey:v22];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_1000191FC;
          v29[3] = &unk_10020EB00;
          v30 = v23;
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_100019208;
          v27[3] = &unk_10020EB98;
          v28 = v30;
          v24 = v30;
          [UIView animateWithDuration:6 delay:v29 options:v27 animations:0.2 completion:0.0];
        }

        v19 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v19);
    }
  }
}

- (id)newFeedbackViewForDraggingOccurrence:(id)a3 atPoint:(CGPoint)a4
{
  x = a4.x;
  v6 = a3;
  if (x < 0.0)
  {
    x = 0.0;
  }

  [(LargeMonthWeekView *)self frame];
  MaxX = CGRectGetMaxX(v29);
  if (x > MaxX)
  {
    [(LargeMonthWeekView *)self frame];
    MaxX = CGRectGetMaxX(v30);
  }

  v8 = [v6 startCalendarDate];
  [v8 absoluteTime];
  v10 = v9;
  [(EKCalendarDate *)self->_startDate absoluteTime];
  v12 = v11;

  if (v10 >= v12)
  {
    v13 = [v6 startCalendarDate];
  }

  else
  {
    v13 = self->_startDate;
  }

  v14 = v13;
  v15 = [(MonthWeekOccurrencesView *)self->_occurrencesView occurrenceViewForOccurrence:v6 onDay:v13];
  [v15 setSelected:1];
  v16 = kDraggedEventShadowOpacity;
  v17 = [v15 layer];
  *&v18 = v16;
  [v17 setShadowOpacity:v18];

  DraggedEventShadowOffset();
  v20 = v19;
  v22 = v21;
  v23 = [v15 layer];
  [v23 setShadowOffset:{v20, v22}];

  v24 = kDraggedEventShadowRadius;
  v25 = [v15 layer];
  [v25 setShadowRadius:v24];

  v26 = DraggedEventShadowColor();
  v27 = [v15 layer];
  [v27 setShadowColor:v26];

  return v15;
}

- (void)didCompleteMonthWeekViewBackgroundRendering
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 didCompleteBackgroundOccurrenceRenderingForLargeMonthWeekView:self];
  }
}

- (BOOL)isBackgroundScene
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 isBackgroundScene];

  return v6;
}

- (void)monthWeekOccurrencesView:(id)a3 selectedEvent:(id)a4 source:(unint64_t)a5
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained largeMonthWeekView:self didTapOccurrence:v7 onDay:0 extendSelection:0 source:a5 tappedSymbol:0];
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

- (CGRect)circleFrame
{
  todayCircle = self->_todayCircle;
  if (todayCircle)
  {
    [(_CircleView *)todayCircle frame];
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int64_t)dayIndexForToday
{
  todayDay = self->_todayDay;
  if (todayDay)
  {
    return todayDay - [(EKCalendarDate *)self->_startDate day]+ self->_firstDayIndex;
  }

  else
  {
    return -1;
  }
}

- (_NSRange)highlightedDayRange
{
  p_highlightedDayRange = &self->_highlightedDayRange;
  location = self->_highlightedDayRange.location;
  length = p_highlightedDayRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (LargeMonthWeekViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (LargeMonthWeekViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end