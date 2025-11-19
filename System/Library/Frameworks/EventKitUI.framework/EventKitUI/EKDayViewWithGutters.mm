@interface EKDayViewWithGutters
+ (id)_normalWeekdayFont;
+ (id)_smallWeekdayFont;
+ (id)_weekNumberFont;
+ (id)_weekdayFont;
- (BOOL)isPointAllDay:(CGPoint)a3 requireAllDayRegionInsistence:(BOOL)a4;
- (EKDayViewWithGutters)initWithFrame:(CGRect)a3 dayView:(id)a4 sizeClass:(int64_t)a5 showWeekDayLabel:(BOOL)a6 showWeekNumberLabel:(BOOL)a7;
- (id)_createAllDayView;
- (void)_updateTopLabelsContainerHeight;
- (void)_updateWeekNumberLabel;
- (void)layoutSubviews;
- (void)setAllDayHeight:(double)a3;
- (void)setCurrentDate:(id)a3;
- (void)setDayView:(id)a3;
- (void)setGutterWidth:(double)a3;
- (void)timeZoneChangedWithNewDate:(id)a3;
- (void)updateDividerLineVisibility;
- (void)updateLabelTexts;
@end

@implementation EKDayViewWithGutters

+ (id)_weekNumberFont
{
  v2 = MEMORY[0x1E69DB878];
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:14.0 shouldScaleForSmallerSizes:16.0];

  return [v2 systemFontOfSize:?];
}

- (void)_updateWeekNumberLabel
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v3 _scaledValueForValue:15.0];
  v5 = v4;

  v6 = 16.0;
  if (v5 > 18.0)
  {
    v6 = 8.0;
  }

  if (v5 <= 21.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  [(UILabel *)self->_weekNumberLabel bounds];
  v9 = v8;
  [(UILabel *)self->_weekNumberLabel bounds];
  [(UILabel *)self->_weekNumberLabel setFrame:v7, 8.0, v9];
  calendar = self->_calendar;
  v11 = [(EKDayViewWithGutters *)self currentDate];
  [(NSCalendar *)calendar component:0x2000 fromDate:v11];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"W%@" value:&stru_1F4EF6790 table:0];
  v15 = CUIKLocalizedStringForInteger();
  v16 = [v12 localizedStringWithFormat:v14, v15];
  [(UILabel *)self->_weekNumberLabel setText:v16];

  v17 = [objc_opt_class() _weekNumberFont];
  [(UILabel *)self->_weekNumberLabel setFont:v17];
}

+ (id)_weekdayFont
{
  v3 = [MEMORY[0x1E6993470] sharedPreferences];
  if ([v3 showWeekNumbers])
  {
    v4 = CUIKGetOverlayCalendar();

    if (v4)
    {
      v5 = [a1 _smallWeekdayFont];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = [a1 _normalWeekdayFont];
LABEL_6:

  return v5;
}

+ (id)_normalWeekdayFont
{
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:15.0 shouldScaleForSmallerSizes:20.0];

  return [a1 _weekdayFontOfSize:?];
}

- (void)updateLabelTexts
{
  [(EKDayViewWithGutters *)self _updateWeekNumberLabel];
  v3 = CUIKGetOverlayCalendar();
  [(DayTwoPartLabel *)self->_weekDayLabel setShowOverlayDate:v3 != 0];

  v4 = [(EKDayViewWithGutters *)self currentDate];
  [(DayTwoPartLabel *)self->_weekDayLabel setDate:v4];

  v5 = [objc_opt_class() _weekdayFont];
  [(DayTwoPartLabel *)self->_weekDayLabel setFont:v5];

  [(DayTwoPartLabel *)self->_weekDayLabel sizeToFit];
  [(EKDayViewWithGutters *)self _updateTopLabelsContainerHeight];
  if ((CalSolariumEnabled() & 1) == 0)
  {
    [(UIView *)self->_topLabelsContainer center];
    [(DayTwoPartLabel *)self->_weekDayLabel setCenter:?];
  }

  [(EKDayViewWithGutters *)self sizeToFit];

  [(EKDayViewWithGutters *)self setNeedsLayout];
}

- (void)updateDividerLineVisibility
{
  v3 = [(EKDayView *)self->_dayView hasAllDaySection]^ 1;

  [(EKDayViewWithGutters *)self setShowDividerLine:v3];
}

- (id)_createAllDayView
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  [(EKDayViewWithGutters *)self gutterWidth];
  v6 = [[EKDayAllDayView alloc] initWithFrame:self->_targetSizeClass sizeClass:v3, v4, v5 + v5, self->_allDayHeight];
  [(EKDayAllDayView *)v6 setShowsLabel:0];
  [(EKDayAllDayView *)v6 setShowsBorderLines:1];
  [(EKDayAllDayView *)v6 setAutoresizingMask:32];

  return v6;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = EKDayViewWithGutters;
  [(EKDayViewWithGutters *)&v10 layoutSubviews];
  if (CalCanvasPocketEnabled())
  {
    [(EKDayViewWithGutters *)self safeAreaInsets];
    v4 = v3;
    [(EKDayViewWithGutters *)self bounds];
    [(EKDayView *)self->_dayView setFrame:?];
    if (![(UIView *)self->_topLabelsContainer isHidden])
    {
      [(EKDayViewWithGutters *)self _updateTopLabelsContainerHeight];
      [(UIView *)self->_topLabelsContainer frame];
      v6 = v5;
      v8 = v7;
      [(UIView *)self->_topLabelsContainer setFrame:?];
      [(DayTwoPartLabel *)self->_weekDayLabel setCenter:v6 * 0.5, v8 * 0.5];
      [(UIView *)self->_topLabelsContainer frame];
      v4 = v4 + v9;
    }

    [(EKDayView *)self->_dayView setTopContentInset:v4];
  }
}

+ (id)_smallWeekdayFont
{
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:13.0 shouldScaleForSmallerSizes:18.0];

  return [a1 _weekdayFontOfSize:?];
}

- (EKDayViewWithGutters)initWithFrame:(CGRect)a3 dayView:(id)a4 sizeClass:(int64_t)a5 showWeekDayLabel:(BOOL)a6 showWeekNumberLabel:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a4;
  v58.receiver = self;
  v58.super_class = EKDayViewWithGutters;
  v16 = [(EKDayViewWithGutters *)&v58 initWithFrame:x, y, width, height];
  if (v16)
  {
    v17 = CUIKCalendar();
    calendar = v16->_calendar;
    v16->_calendar = v17;

    v16->_showWeekDayLabel = v8;
    v16->_showWeekNumberLabel = v7;
    [(EKDayViewWithGutters *)v16 addSubview:v15];
    v19 = objc_alloc(MEMORY[0x1E69DD250]);
    +[EKDayViewWithGutters defaultTopLabelContainerHeight];
    v21 = [v19 initWithFrame:{0.0, 0.0, width, v20}];
    topLabelsContainer = v16->_topLabelsContainer;
    v16->_topLabelsContainer = v21;

    [(UIView *)v16->_topLabelsContainer setClipsToBounds:1];
    [(UIView *)v16->_topLabelsContainer setAutoresizingMask:2];
    [(UIView *)v16->_topLabelsContainer setHidden:!v8];
    [(EKDayViewWithGutters *)v16 addSubview:v16->_topLabelsContainer];
    if (CalSolariumEnabled())
    {
      [v15 addViewToScollerTopPocket:v16->_topLabelsContainer];
    }

    v23 = v16->_calendar;
    v24 = [v15 displayDate];
    v25 = [(NSCalendar *)v23 dateFromComponents:v24];

    objc_storeStrong(&v16->_currentDate, v25);
    v26 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{16.0, 8.0, 50.0, 20.0}];
    weekNumberLabel = v16->_weekNumberLabel;
    v16->_weekNumberLabel = v26;

    [(UILabel *)v16->_weekNumberLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v16->_weekNumberLabel setMinimumScaleFactor:0.75];
    [(UILabel *)v16->_weekNumberLabel setAutoresizingMask:38];
    v28 = [objc_opt_class() _weekNumberFont];
    [(UILabel *)v16->_weekNumberLabel setFont:v28];

    v29 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v16->_weekNumberLabel setTextColor:v29];

    [(EKDayViewWithGutters *)v16 _updateWeekNumberLabel];
    [(UILabel *)v16->_weekNumberLabel setHidden:!v7];
    [(UIView *)v16->_topLabelsContainer addSubview:v16->_weekNumberLabel];
    v30 = [DayTwoPartLabel alloc];
    +[EKDayViewWithGutters defaultTopLabelContainerHeight];
    v32 = [(DayTwoPartLabel *)v30 initWithFrame:0 useSeparateFormat:0.0, 0.0, width, v31];
    weekDayLabel = v16->_weekDayLabel;
    v16->_weekDayLabel = v32;

    [(DayTwoPartLabel *)v16->_weekDayLabel setAccessibilityIdentifier:@"current-day"];
    [(DayTwoPartLabel *)v16->_weekDayLabel setUseEmDashFormat:1];
    [(UIView *)v16->_topLabelsContainer center];
    [(DayTwoPartLabel *)v16->_weekDayLabel setCenter:?];
    [(DayTwoPartLabel *)v16->_weekDayLabel setDate:v25];
    [(DayTwoPartLabel *)v16->_weekDayLabel sizeToFit];
    [(DayTwoPartLabel *)v16->_weekDayLabel setAutoresizingMask:5];
    v34 = [objc_opt_class() _weekdayFont];
    [(DayTwoPartLabel *)v16->_weekDayLabel setFont:v34];

    [(UIView *)v16->_topLabelsContainer addSubview:v16->_weekDayLabel];
    [(EKDayViewWithGutters *)v16 _updateTopLabelsContainerHeight];
    CalRoundToScreenScale(0.5);
    v36 = v35;
    v37 = objc_alloc(MEMORY[0x1E69DD250]);
    +[EKDayViewWithGutters defaultTopLabelContainerHeight];
    v39 = [v37 initWithFrame:{0.0, v38 - v36, width, v36}];
    dividerLine = v16->_dividerLine;
    v16->_dividerLine = v39;

    [(UIView *)v16->_dividerLine setAutoresizingMask:42];
    v41 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v16->_dividerLine setBackgroundColor:v41];

    [(UIView *)v16->_dividerLine setHidden:1];
    [(UIView *)v16->_topLabelsContainer addSubview:v16->_dividerLine];
    objc_initWeak(&location, v16);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __93__EKDayViewWithGutters_initWithFrame_dayView_sizeClass_showWeekDayLabel_showWeekNumberLabel___block_invoke;
    v55[3] = &unk_1E84429A0;
    objc_copyWeak(&v56, &location);
    [v15 setDisplayDateDidChangeCallback:v55];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __93__EKDayViewWithGutters_initWithFrame_dayView_sizeClass_showWeekDayLabel_showWeekNumberLabel___block_invoke_2;
    v53[3] = &unk_1E843F058;
    objc_copyWeak(&v54, &location);
    [v15 setContentDidChangeCallback:v53];
    [v15 setAutoresizingMask:18];
    [v15 frame];
    v42 = v59.origin.x;
    v43 = v59.origin.y;
    v44 = v59.size.width;
    v45 = v59.size.height;
    v46 = CGRectGetWidth(v59);
    v60.origin.x = v42;
    v60.origin.y = v43;
    v60.size.width = v44;
    v60.size.height = v45;
    v47 = CGRectGetHeight(v60) - v43;
    v48 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, v43, v16->_gutterWidth, v47}];
    v49 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v48 setBackgroundColor:v49];

    [v48 setClipsToBounds:0];
    v50 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v42 + v46, v43, v16->_gutterWidth, v47}];
    [v50 setAutoresizingMask:1];
    v51 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v50 setBackgroundColor:v51];

    [v50 setClipsToBounds:0];
    [(EKDayViewWithGutters *)v16 setAutoresizingMask:18];
    [(EKDayViewWithGutters *)v16 addSubview:v48];
    [(EKDayViewWithGutters *)v16 addSubview:v50];
    objc_storeStrong(&v16->_leftGutter, v48);
    objc_storeStrong(&v16->_rightGutter, v50);
    v16->_targetSizeClass = a5;
    [(EKDayViewWithGutters *)v16 setDayView:v15];
    [(EKDayViewWithGutters *)v16 setClipsToBounds:0];

    objc_destroyWeak(&v54);
    objc_destroyWeak(&v56);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __93__EKDayViewWithGutters_initWithFrame_dayView_sizeClass_showWeekDayLabel_showWeekNumberLabel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained[51] dateFromComponents:v3];

  [WeakRetained setCurrentDate:v4];
}

void __93__EKDayViewWithGutters_initWithFrame_dayView_sizeClass_showWeekDayLabel_showWeekNumberLabel___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShowDividerLine:a2 == 0];
}

- (void)setDayView:(id)a3
{
  objc_storeStrong(&self->_dayView, a3);
  v5 = a3;
  calendar = self->_calendar;
  v7 = [v5 displayDate];
  v8 = [(NSCalendar *)calendar dateFromComponents:v7];

  [(EKDayViewWithGutters *)self setCurrentDate:v8];

  [(EKDayViewWithGutters *)self updateDividerLineVisibility];
}

- (void)setCurrentDate:(id)a3
{
  objc_storeStrong(&self->_currentDate, a3);

  [(EKDayViewWithGutters *)self updateLabelTexts];
}

- (void)timeZoneChangedWithNewDate:(id)a3
{
  v4 = a3;
  v5 = CUIKCalendar();
  calendar = self->_calendar;
  self->_calendar = v5;

  currentDate = self->_currentDate;
  self->_currentDate = v4;

  [(EKDayViewWithGutters *)self updateLabelTexts];
}

- (void)_updateTopLabelsContainerHeight
{
  weekDayLabel = self->_weekDayLabel;
  [(DayTwoPartLabel *)weekDayLabel frame];
  [(DayTwoPartLabel *)weekDayLabel sizeThatFits:v4, 1.79769313e308];
  v6 = v5 + 16.0;
  +[EKDayViewWithGutters defaultTopLabelContainerHeight];
  v8 = fmax(v6, v7);
  [(UIView *)self->_topLabelsContainer frame];
  if (v9 != v8)
  {
    [(UIView *)self->_topLabelsContainer setFrame:?];
    EKUISeparatorLineThickness();
    [(UIView *)self->_dividerLine frame];
    [(UIView *)self->_dividerLine setFrame:?];
    if ((CalSolariumEnabled() & 1) == 0)
    {
      [(UIView *)self->_topLabelsContainer center];
      v10 = self->_weekDayLabel;

      [(DayTwoPartLabel *)v10 setCenter:?];
    }
  }
}

- (void)setGutterWidth:(double)a3
{
  self->_gutterWidth = a3;
  v5 = [(EKDayViewWithGutters *)self leftGutter];
  [v5 frame];
  v27 = v6;
  v28 = v7;
  v9 = v8;

  v10 = [(EKDayViewWithGutters *)self dayView];
  [v10 frame];
  v12 = v11;
  v14 = v13;

  v15 = [(EKDayViewWithGutters *)self rightGutter];
  [v15 frame];
  v17 = v16;
  v19 = v18;

  [(EKDayViewWithGutters *)self bounds];
  v21 = v20 + a3 * -2.0;
  v22 = [(EKDayViewWithGutters *)self dayView];
  [v22 setFrame:{a3, v12, v21, v14}];

  v23 = [(EKDayViewWithGutters *)self leftGutter];
  [v23 setFrame:{v27, v9, a3, v28}];

  v24 = [(EKDayViewWithGutters *)self rightGutter];
  [v24 setFrame:{v21 + a3, v17, a3, v19}];

  v25 = [(EKDayViewWithGutters *)self dayView];
  [v25 setNeedsLayout];

  allDayHeight = self->_allDayHeight;

  [(EKDayViewWithGutters *)self setAllDayHeight:allDayHeight];
}

- (void)setAllDayHeight:(double)a3
{
  self->_allDayHeight = a3;
  if (!self->_leftAllDayView)
  {
    v4 = [(EKDayViewWithGutters *)self _createAllDayView];
    leftAllDayView = self->_leftAllDayView;
    self->_leftAllDayView = v4;

    v6 = [(EKDayViewWithGutters *)self leftGutter];
    [v6 addSubview:self->_leftAllDayView];
  }

  if (!self->_rightAllDayView)
  {
    v7 = [(EKDayViewWithGutters *)self _createAllDayView];
    rightAllDayView = self->_rightAllDayView;
    self->_rightAllDayView = v7;

    v9 = [(EKDayViewWithGutters *)self rightGutter];
    [v9 addSubview:self->_rightAllDayView];
  }

  gutterWidth = self->_gutterWidth;
  v11 = gutterWidth + gutterWidth;
  allDayHeight = self->_allDayHeight;
  [(EKDayAllDayView *)self->_leftAllDayView setFrame:-gutterWidth, 0.0, gutterWidth + gutterWidth, allDayHeight];
  v13 = self->_rightAllDayView;

  [(EKDayAllDayView *)v13 setFrame:0.0, 0.0, v11, allDayHeight];
}

- (BOOL)isPointAllDay:(CGPoint)a3 requireAllDayRegionInsistence:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  [(UIView *)self->_topLabelsContainer frame];
  v12.x = x;
  v12.y = y;
  if (CGRectContainsPoint(v13, v12))
  {
    v8 = 1;
  }

  else
  {
    v11 = 0;
    dayView = self->_dayView;
    [(EKDayView *)dayView convertPoint:self fromView:x, y];
    [(EKDayView *)dayView dateAtPoint:&v11 isAllDay:v4 requireAllDayRegionInsistence:?];
    v8 = v11;
  }

  return v8 & 1;
}

@end