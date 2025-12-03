@interface EKDayViewWithGutters
+ (id)_normalWeekdayFont;
+ (id)_smallWeekdayFont;
+ (id)_weekNumberFont;
+ (id)_weekdayFont;
- (BOOL)isPointAllDay:(CGPoint)day requireAllDayRegionInsistence:(BOOL)insistence;
- (EKDayViewWithGutters)initWithFrame:(CGRect)frame dayView:(id)view sizeClass:(int64_t)class showWeekDayLabel:(BOOL)label showWeekNumberLabel:(BOOL)numberLabel;
- (id)_createAllDayView;
- (void)_updateTopLabelsContainerHeight;
- (void)_updateWeekNumberLabel;
- (void)layoutSubviews;
- (void)setAllDayHeight:(double)height;
- (void)setCurrentDate:(id)date;
- (void)setDayView:(id)view;
- (void)setGutterWidth:(double)width;
- (void)timeZoneChangedWithNewDate:(id)date;
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
  currentDate = [(EKDayViewWithGutters *)self currentDate];
  [(NSCalendar *)calendar component:0x2000 fromDate:currentDate];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"W%@" value:&stru_1F4EF6790 table:0];
  v15 = CUIKLocalizedStringForInteger();
  v16 = [v12 localizedStringWithFormat:v14, v15];
  [(UILabel *)self->_weekNumberLabel setText:v16];

  _weekNumberFont = [objc_opt_class() _weekNumberFont];
  [(UILabel *)self->_weekNumberLabel setFont:_weekNumberFont];
}

+ (id)_weekdayFont
{
  mEMORY[0x1E6993470] = [MEMORY[0x1E6993470] sharedPreferences];
  if ([mEMORY[0x1E6993470] showWeekNumbers])
  {
    v4 = CUIKGetOverlayCalendar();

    if (v4)
    {
      _smallWeekdayFont = [self _smallWeekdayFont];
      goto LABEL_6;
    }
  }

  else
  {
  }

  _smallWeekdayFont = [self _normalWeekdayFont];
LABEL_6:

  return _smallWeekdayFont;
}

+ (id)_normalWeekdayFont
{
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:15.0 shouldScaleForSmallerSizes:20.0];

  return [self _weekdayFontOfSize:?];
}

- (void)updateLabelTexts
{
  [(EKDayViewWithGutters *)self _updateWeekNumberLabel];
  v3 = CUIKGetOverlayCalendar();
  [(DayTwoPartLabel *)self->_weekDayLabel setShowOverlayDate:v3 != 0];

  currentDate = [(EKDayViewWithGutters *)self currentDate];
  [(DayTwoPartLabel *)self->_weekDayLabel setDate:currentDate];

  _weekdayFont = [objc_opt_class() _weekdayFont];
  [(DayTwoPartLabel *)self->_weekDayLabel setFont:_weekdayFont];

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

  return [self _weekdayFontOfSize:?];
}

- (EKDayViewWithGutters)initWithFrame:(CGRect)frame dayView:(id)view sizeClass:(int64_t)class showWeekDayLabel:(BOOL)label showWeekNumberLabel:(BOOL)numberLabel
{
  numberLabelCopy = numberLabel;
  labelCopy = label;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v58.receiver = self;
  v58.super_class = EKDayViewWithGutters;
  height = [(EKDayViewWithGutters *)&v58 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = CUIKCalendar();
    calendar = height->_calendar;
    height->_calendar = v17;

    height->_showWeekDayLabel = labelCopy;
    height->_showWeekNumberLabel = numberLabelCopy;
    [(EKDayViewWithGutters *)height addSubview:viewCopy];
    v19 = objc_alloc(MEMORY[0x1E69DD250]);
    +[EKDayViewWithGutters defaultTopLabelContainerHeight];
    v21 = [v19 initWithFrame:{0.0, 0.0, width, v20}];
    topLabelsContainer = height->_topLabelsContainer;
    height->_topLabelsContainer = v21;

    [(UIView *)height->_topLabelsContainer setClipsToBounds:1];
    [(UIView *)height->_topLabelsContainer setAutoresizingMask:2];
    [(UIView *)height->_topLabelsContainer setHidden:!labelCopy];
    [(EKDayViewWithGutters *)height addSubview:height->_topLabelsContainer];
    if (CalSolariumEnabled())
    {
      [viewCopy addViewToScollerTopPocket:height->_topLabelsContainer];
    }

    v23 = height->_calendar;
    displayDate = [viewCopy displayDate];
    v25 = [(NSCalendar *)v23 dateFromComponents:displayDate];

    objc_storeStrong(&height->_currentDate, v25);
    v26 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{16.0, 8.0, 50.0, 20.0}];
    weekNumberLabel = height->_weekNumberLabel;
    height->_weekNumberLabel = v26;

    [(UILabel *)height->_weekNumberLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)height->_weekNumberLabel setMinimumScaleFactor:0.75];
    [(UILabel *)height->_weekNumberLabel setAutoresizingMask:38];
    _weekNumberFont = [objc_opt_class() _weekNumberFont];
    [(UILabel *)height->_weekNumberLabel setFont:_weekNumberFont];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)height->_weekNumberLabel setTextColor:secondaryLabelColor];

    [(EKDayViewWithGutters *)height _updateWeekNumberLabel];
    [(UILabel *)height->_weekNumberLabel setHidden:!numberLabelCopy];
    [(UIView *)height->_topLabelsContainer addSubview:height->_weekNumberLabel];
    v30 = [DayTwoPartLabel alloc];
    +[EKDayViewWithGutters defaultTopLabelContainerHeight];
    v32 = [(DayTwoPartLabel *)v30 initWithFrame:0 useSeparateFormat:0.0, 0.0, width, v31];
    weekDayLabel = height->_weekDayLabel;
    height->_weekDayLabel = v32;

    [(DayTwoPartLabel *)height->_weekDayLabel setAccessibilityIdentifier:@"current-day"];
    [(DayTwoPartLabel *)height->_weekDayLabel setUseEmDashFormat:1];
    [(UIView *)height->_topLabelsContainer center];
    [(DayTwoPartLabel *)height->_weekDayLabel setCenter:?];
    [(DayTwoPartLabel *)height->_weekDayLabel setDate:v25];
    [(DayTwoPartLabel *)height->_weekDayLabel sizeToFit];
    [(DayTwoPartLabel *)height->_weekDayLabel setAutoresizingMask:5];
    _weekdayFont = [objc_opt_class() _weekdayFont];
    [(DayTwoPartLabel *)height->_weekDayLabel setFont:_weekdayFont];

    [(UIView *)height->_topLabelsContainer addSubview:height->_weekDayLabel];
    [(EKDayViewWithGutters *)height _updateTopLabelsContainerHeight];
    CalRoundToScreenScale(0.5);
    v36 = v35;
    v37 = objc_alloc(MEMORY[0x1E69DD250]);
    +[EKDayViewWithGutters defaultTopLabelContainerHeight];
    v39 = [v37 initWithFrame:{0.0, v38 - v36, width, v36}];
    dividerLine = height->_dividerLine;
    height->_dividerLine = v39;

    [(UIView *)height->_dividerLine setAutoresizingMask:42];
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)height->_dividerLine setBackgroundColor:separatorColor];

    [(UIView *)height->_dividerLine setHidden:1];
    [(UIView *)height->_topLabelsContainer addSubview:height->_dividerLine];
    objc_initWeak(&location, height);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __93__EKDayViewWithGutters_initWithFrame_dayView_sizeClass_showWeekDayLabel_showWeekNumberLabel___block_invoke;
    v55[3] = &unk_1E84429A0;
    objc_copyWeak(&v56, &location);
    [viewCopy setDisplayDateDidChangeCallback:v55];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __93__EKDayViewWithGutters_initWithFrame_dayView_sizeClass_showWeekDayLabel_showWeekNumberLabel___block_invoke_2;
    v53[3] = &unk_1E843F058;
    objc_copyWeak(&v54, &location);
    [viewCopy setContentDidChangeCallback:v53];
    [viewCopy setAutoresizingMask:18];
    [viewCopy frame];
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
    v48 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, v43, height->_gutterWidth, v47}];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v48 setBackgroundColor:systemBackgroundColor];

    [v48 setClipsToBounds:0];
    v50 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v42 + v46, v43, height->_gutterWidth, v47}];
    [v50 setAutoresizingMask:1];
    systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v50 setBackgroundColor:systemBackgroundColor2];

    [v50 setClipsToBounds:0];
    [(EKDayViewWithGutters *)height setAutoresizingMask:18];
    [(EKDayViewWithGutters *)height addSubview:v48];
    [(EKDayViewWithGutters *)height addSubview:v50];
    objc_storeStrong(&height->_leftGutter, v48);
    objc_storeStrong(&height->_rightGutter, v50);
    height->_targetSizeClass = class;
    [(EKDayViewWithGutters *)height setDayView:viewCopy];
    [(EKDayViewWithGutters *)height setClipsToBounds:0];

    objc_destroyWeak(&v54);
    objc_destroyWeak(&v56);
    objc_destroyWeak(&location);
  }

  return height;
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

- (void)setDayView:(id)view
{
  objc_storeStrong(&self->_dayView, view);
  viewCopy = view;
  calendar = self->_calendar;
  displayDate = [viewCopy displayDate];
  v8 = [(NSCalendar *)calendar dateFromComponents:displayDate];

  [(EKDayViewWithGutters *)self setCurrentDate:v8];

  [(EKDayViewWithGutters *)self updateDividerLineVisibility];
}

- (void)setCurrentDate:(id)date
{
  objc_storeStrong(&self->_currentDate, date);

  [(EKDayViewWithGutters *)self updateLabelTexts];
}

- (void)timeZoneChangedWithNewDate:(id)date
{
  dateCopy = date;
  v5 = CUIKCalendar();
  calendar = self->_calendar;
  self->_calendar = v5;

  currentDate = self->_currentDate;
  self->_currentDate = dateCopy;

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

- (void)setGutterWidth:(double)width
{
  self->_gutterWidth = width;
  leftGutter = [(EKDayViewWithGutters *)self leftGutter];
  [leftGutter frame];
  v27 = v6;
  v28 = v7;
  v9 = v8;

  dayView = [(EKDayViewWithGutters *)self dayView];
  [dayView frame];
  v12 = v11;
  v14 = v13;

  rightGutter = [(EKDayViewWithGutters *)self rightGutter];
  [rightGutter frame];
  v17 = v16;
  v19 = v18;

  [(EKDayViewWithGutters *)self bounds];
  v21 = v20 + width * -2.0;
  dayView2 = [(EKDayViewWithGutters *)self dayView];
  [dayView2 setFrame:{width, v12, v21, v14}];

  leftGutter2 = [(EKDayViewWithGutters *)self leftGutter];
  [leftGutter2 setFrame:{v27, v9, width, v28}];

  rightGutter2 = [(EKDayViewWithGutters *)self rightGutter];
  [rightGutter2 setFrame:{v21 + width, v17, width, v19}];

  dayView3 = [(EKDayViewWithGutters *)self dayView];
  [dayView3 setNeedsLayout];

  allDayHeight = self->_allDayHeight;

  [(EKDayViewWithGutters *)self setAllDayHeight:allDayHeight];
}

- (void)setAllDayHeight:(double)height
{
  self->_allDayHeight = height;
  if (!self->_leftAllDayView)
  {
    _createAllDayView = [(EKDayViewWithGutters *)self _createAllDayView];
    leftAllDayView = self->_leftAllDayView;
    self->_leftAllDayView = _createAllDayView;

    leftGutter = [(EKDayViewWithGutters *)self leftGutter];
    [leftGutter addSubview:self->_leftAllDayView];
  }

  if (!self->_rightAllDayView)
  {
    _createAllDayView2 = [(EKDayViewWithGutters *)self _createAllDayView];
    rightAllDayView = self->_rightAllDayView;
    self->_rightAllDayView = _createAllDayView2;

    rightGutter = [(EKDayViewWithGutters *)self rightGutter];
    [rightGutter addSubview:self->_rightAllDayView];
  }

  gutterWidth = self->_gutterWidth;
  v11 = gutterWidth + gutterWidth;
  allDayHeight = self->_allDayHeight;
  [(EKDayAllDayView *)self->_leftAllDayView setFrame:-gutterWidth, 0.0, gutterWidth + gutterWidth, allDayHeight];
  v13 = self->_rightAllDayView;

  [(EKDayAllDayView *)v13 setFrame:0.0, 0.0, v11, allDayHeight];
}

- (BOOL)isPointAllDay:(CGPoint)day requireAllDayRegionInsistence:(BOOL)insistence
{
  insistenceCopy = insistence;
  y = day.y;
  x = day.x;
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
    [(EKDayView *)dayView dateAtPoint:&v11 isAllDay:insistenceCopy requireAllDayRegionInsistence:?];
    v8 = v11;
  }

  return v8 & 1;
}

@end