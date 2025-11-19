@interface WeekTimeView
- (BOOL)allDayHighlighted;
- (CGSize)sizeThatFits:(CGSize)a3;
- (WeekTimeView)initWithFrame:(CGRect)a3 targetSizeClass:(int64_t)a4 orientation:(int64_t)a5;
- (double)_yLocationForMonthLabel;
- (double)allDayBackgroundColorOriginY;
- (double)allDayLabelOriginY;
- (double)allDayOccurrenceInsetIntoScroller;
- (void)_updateCurtain;
- (void)_updateHeaderBackground;
- (void)_updateMonthFont;
- (void)_updateOverlayMonthFont;
- (void)_updateTrailingBorder;
- (void)_updateWeekNumberFont;
- (void)contentSizeCategoryChanged;
- (void)layoutSubviews;
- (void)reAdjustAllDayLabelLayout;
- (void)scrollViewDidScroll:(id)a3;
- (void)setAllDayAlpha:(double)a3;
- (void)setAllDayHighlighted:(BOOL)a3;
- (void)setDayTimeViewDelegate:(id)a3;
- (void)setHeaderHeight:(double)a3;
- (void)setHourHeightScale:(double)a3;
- (void)setMonthText:(id)a3 isCurrentMonth:(BOOL)a4;
- (void)setOrientation:(int64_t)a3;
- (void)setOverlayMonthText:(id)a3;
- (void)setUseMultiDayStyle:(BOOL)a3;
- (void)setWeekNumberText:(id)a3;
- (void)updateMonthLabel;
@end

@implementation WeekTimeView

- (WeekTimeView)initWithFrame:(CGRect)a3 targetSizeClass:(int64_t)a4 orientation:(int64_t)a5
{
  v44.receiver = self;
  v44.super_class = WeekTimeView;
  v7 = [(WeekTimeView *)&v44 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_preferredMonthLabelBaselineOffsetFromTop = -1.0;
    [(WeekTimeView *)v7 setOrientation:a5];
    v9 = [EKDayTimeView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v13 = [v9 initWithFrame:a4 sizeClass:{CGRectZero.origin.x, y, width, height}];
    timeView = v8->_timeView;
    v8->_timeView = v13;

    [(EKDayTimeView *)v8->_timeView setOpaque:0];
    [(EKDayTimeView *)v8->_timeView setOrientation:a5];
    [(EKDayTimeView *)v8->_timeView setShowsTimeMarkerExtension:1];
    v15 = [[UIScrollView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    timeScroller = v8->_timeScroller;
    v8->_timeScroller = v15;

    [(UIScrollView *)v8->_timeScroller addSubview:v8->_timeView];
    v17 = v8->_timeScroller;
    [(EKDayTimeView *)v8->_timeView bounds];
    [(UIScrollView *)v17 setContentSize:v18, v19];
    [(UIScrollView *)v8->_timeScroller setScrollEnabled:0];
    [(UIScrollView *)v8->_timeScroller setDelegate:v8];
    if (CalCanvasPocketEnabled())
    {
      [(UIScrollView *)v8->_timeScroller setContentInsetAdjustmentBehavior:2];
      [(UIScrollView *)v8->_timeScroller _setHiddenPocketEdges:1];
    }

    [(WeekTimeView *)v8 addSubview:v8->_timeScroller];
    [(WeekTimeView *)v8 _updateHeaderBackground];
    v20 = objc_alloc_init(UIView);
    allDayBackgroundColorView = v8->_allDayBackgroundColorView;
    v8->_allDayBackgroundColorView = v20;

    if (CalCanvasPocketEnabled())
    {
      +[UIColor systemBackgroundColor];
    }

    else
    {
      CUIKAllDayBackgroundColor();
    }
    v22 = ;
    [(UIView *)v8->_allDayBackgroundColorView setBackgroundColor:v22];

    [(UIView *)v8->_allDayBackgroundColorView setClipsToBounds:1];
    [(WeekTimeView *)v8 addSubview:v8->_allDayBackgroundColorView];
    v23 = objc_alloc_init(UIView);
    topAllDaySeparatorView = v8->_topAllDaySeparatorView;
    v8->_topAllDaySeparatorView = v23;

    v25 = +[UIColor separatorColor];
    [(UIView *)v8->_topAllDaySeparatorView setBackgroundColor:v25];

    [(WeekTimeView *)v8 addSubview:v8->_topAllDaySeparatorView];
    v26 = objc_alloc_init(UIView);
    bottomAllDaySeparatorView = v8->_bottomAllDaySeparatorView;
    v8->_bottomAllDaySeparatorView = v26;

    v28 = +[UIColor separatorColor];
    [(UIView *)v8->_bottomAllDaySeparatorView setBackgroundColor:v28];

    [(WeekTimeView *)v8 addSubview:v8->_bottomAllDaySeparatorView];
    v29 = objc_alloc_init(UILabel);
    allDayLabel = v8->_allDayLabel;
    v8->_allDayLabel = v29;

    v31 = v8->_allDayLabel;
    v32 = [NSBundle bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"all-day" value:&stru_1002133B8 table:0];
    [(UILabel *)v31 setText:v33];

    [(UILabel *)v8->_allDayLabel setMinimumScaleFactor:0.727272727];
    v34 = v8->_allDayLabel;
    v35 = +[UIColor secondaryLabelColor];
    [(UILabel *)v34 setTextColor:v35];

    [(UILabel *)v8->_allDayLabel setTextAlignment:2];
    v36 = v8->_allDayLabel;
    v37 = +[EKDayTimeView allDayLabelFont];
    [(UILabel *)v36 setFont:v37];

    [(WeekTimeView *)v8 reAdjustAllDayLabelLayout];
    [(UIView *)v8->_allDayBackgroundColorView addSubview:v8->_allDayLabel];
    v38 = objc_alloc_init(UIView);
    trailingBorderView = v8->_trailingBorderView;
    v8->_trailingBorderView = v38;

    v40 = +[UIColor separatorColor];
    [(UIView *)v8->_trailingBorderView setBackgroundColor:v40];

    [(WeekTimeView *)v8 addSubview:v8->_trailingBorderView];
    [(WeekTimeView *)v8 _updateTrailingBorder];
    [(WeekTimeView *)v8 bringSubviewToFront:v8->_timeScroller];
    [(WeekTimeView *)v8 bringSubviewToFront:v8->_headerBackground];
    [(WeekTimeView *)v8 bringSubviewToFront:v8->_allDayBackgroundColorView];
    [(UIView *)v8->_allDayBackgroundColorView bringSubviewToFront:v8->_allDayLabel];
    [(WeekTimeView *)v8 bringSubviewToFront:v8->_trailingBorderView];
    [(WeekTimeView *)v8 bringSubviewToFront:v8->_topAllDaySeparatorView];
    [(WeekTimeView *)v8 bringSubviewToFront:v8->_bottomAllDaySeparatorView];
    v41 = +[UIColor systemBackgroundColor];
    [(WeekTimeView *)v8 setBackgroundColor:v41];

    v42 = +[NSNotificationCenter defaultCenter];
    [v42 addObserver:v8 selector:"_localeChanged:" name:NSCurrentLocaleDidChangeNotification object:0];
  }

  return v8;
}

- (void)scrollViewDidScroll:(id)a3
{
  if (CalCanvasPocketEnabled())
  {

    [(WeekTimeView *)self _updateCurtain];
  }
}

- (void)reAdjustAllDayLabelLayout
{
  if (+[EKDayAllDayView shouldAllDayTextUseTwoLines])
  {
    +[EKDayAllDayView maxAllowableAllDayTextWidth];
    +[EKDayAllDayView maxAllowableAllDayTextTwoLineHeight];
    [(UILabel *)self->_allDayLabel frame];
    v4 = v3;
    [(UILabel *)self->_allDayLabel frame];
    [(UILabel *)self->_allDayLabel setFrame:v4];
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [(UILabel *)self->_allDayLabel setNumberOfLines:v5];
  allDayLabel = self->_allDayLabel;

  [(UILabel *)allDayLabel sizeToFit];
}

- (void)setUseMultiDayStyle:(BOOL)a3
{
  if (self->_useMultiDayStyle != a3)
  {
    self->_useMultiDayStyle = a3;
    [(WeekTimeView *)self _updateHeaderBackground];

    [(WeekTimeView *)self _updateTrailingBorder];
  }
}

- (void)_updateHeaderBackground
{
  headerBackground = self->_headerBackground;
  if (headerBackground)
  {
    [(UIView *)headerBackground removeFromSuperview];
    v4 = self->_headerBackground;
    self->_headerBackground = 0;
  }

  v5 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v10 = self->_headerBackground;
  self->_headerBackground = v9;

  if (self->_useMultiDayStyle)
  {
    [(UIView *)self->_topAllDaySeparatorView setHidden:1];
    if (CalCanvasPocketEnabled())
    {
      +[UIColor systemBackgroundColor];
    }

    else
    {
      CUIKAllDayBackgroundColor();
    }
    v11 = ;
    [(UIView *)self->_headerBackground setBackgroundColor:v11];
  }

  else
  {
    if (CalCanvasPocketEnabled())
    {
      +[UIColor systemBackgroundColor];
    }

    else
    {
      v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      v13 = self->_headerBackground;
      self->_headerBackground = v12;

      [UIColor colorNamed:@"weekHeaderBGColor"];
    }
    v14 = ;
    [(UIView *)self->_headerBackground setBackgroundColor:v14];

    [(UIView *)self->_topAllDaySeparatorView setHidden:0];
  }

  if (self->_headerBackground)
  {

    [WeekTimeView insertSubview:"insertSubview:aboveSubview:" aboveSubview:?];
  }
}

- (void)_updateTrailingBorder
{
  if (CalTimeDirectionIsLeftToRight())
  {
    [(EKDayTimeView *)self->_timeView setShowsLeftBorder:0];
    timeView = self->_timeView;
    v4 = [(WeekTimeView *)self _showTrailingBorder];
    v5 = timeView;
  }

  else
  {
    [(EKDayTimeView *)self->_timeView setShowsLeftBorder:[(WeekTimeView *)self _showTrailingBorder]];
    v5 = self->_timeView;
    v4 = 0;
  }

  [(EKDayTimeView *)v5 setShowsRightBorder:v4];
  v6 = [(WeekTimeView *)self _showTrailingBorder]^ 1;
  trailingBorderView = self->_trailingBorderView;

  [(UIView *)trailingBorderView setHidden:v6];
}

- (void)setOrientation:(int64_t)a3
{
  self->_orientation = a3;
  [(EKDayTimeView *)self->_timeView setOrientation:?];

  [(WeekTimeView *)self setNeedsLayout];
}

- (void)setHeaderHeight:(double)a3
{
  if (self->_headerHeight != a3)
  {
    v8 = v3;
    if (a3 <= 0.0)
    {
      a3 = 0.0;
    }

    self->_headerHeight = a3;
    [(WeekTimeView *)self setNeedsLayout:v4];

    [(WeekTimeView *)self setNeedsDisplay];
  }
}

- (void)setAllDayHighlighted:(BOOL)a3
{
  allDayLabel = self->_allDayLabel;
  if (a3)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v4 = ;
  [(UILabel *)allDayLabel setTextColor:v4];
}

- (BOOL)allDayHighlighted
{
  v3 = +[UIColor labelColor];
  v4 = [(UILabel *)self->_allDayLabel textColor];
  LOBYTE(self) = v3 == v4;

  return self;
}

- (void)setDayTimeViewDelegate:(id)a3
{
  [(EKDayTimeView *)self->_timeView setDelegate:a3];
  timeView = self->_timeView;

  [(EKDayTimeView *)timeView setNeedsDisplay];
}

- (void)setHourHeightScale:(double)a3
{
  [(EKDayTimeView *)self->_timeView setHourHeightScale:?];
  [(UIScrollView *)self->_timeScroller contentSize];
  v6 = v5;
  [EKDayTimeView defaultHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:self->_orientation withHourScale:a3];
  [(UIScrollView *)self->_timeScroller setContentSize:v6, v7];
  [(WeekTimeView *)self setNeedsLayout];

  [(WeekTimeView *)self setNeedsDisplay];
}

- (void)contentSizeCategoryChanged
{
  allDayLabel = self->_allDayLabel;
  v4 = +[EKDayTimeView allDayLabelFont];
  [(UILabel *)allDayLabel setFont:v4];

  [(UILabel *)self->_allDayLabel sizeToFit];
  [(WeekTimeView *)self _updateMonthFont];
  [(WeekTimeView *)self _updateWeekNumberFont];
  [(WeekTimeView *)self _updateOverlayMonthFont];
  v5 = [(EKDayTimeView *)self->_timeView timeMarker];
  [v5 invalidateFonts];

  [(WeekTimeView *)self setNeedsLayout];
}

- (void)setAllDayAlpha:(double)a3
{
  [(UIView *)self->_topAllDaySeparatorView setAlpha:?];
  allDayLabel = self->_allDayLabel;

  [(UILabel *)allDayLabel setAlpha:a3];
}

- (void)_updateMonthFont
{
  v11 = UIFontTextStyleTitle3;
  if (EKUICurrentWindowSizeParadigmForViewHierarchy() == 4)
  {
    v3 = UIFontTextStyleHeadline;

    v4 = v3;
  }

  else
  {
    v4 = v11;
  }

  v12 = v4;
  v5 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:"preferredFontDescriptorWithTextStyle:addingSymbolicTraits:options:" addingSymbolicTraits:? options:?];
  v6 = [UIFont fontWithDescriptor:v5 size:0.0];
  [(UILabel *)self->_monthLabel setFont:v6];

  v7 = [(UILabel *)self->_monthLabel font];
  [v7 pointSize];
  v9 = v8;

  if (v9 > 25.0)
  {
    v10 = [UIFont fontWithDescriptor:v5 size:?];
    [(UILabel *)self->_monthLabel setFont:v10];
  }
}

- (void)_updateWeekNumberFont
{
  v3 = [(WeekTimeView *)self traitCollection];
  v4 = EKUIUsesRoundedRectsInsteadOfCircles();

  v5 = 14.0;
  if (v4)
  {
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:14.0 shouldScaleForSmallerSizes:16.0];
  }

  v6 = [UIFont systemFontOfSize:v5];
  [(UILabel *)self->_weekNumberLabel setFont:v6];
}

- (void)_updateOverlayMonthFont
{
  v3 = [(WeekTimeView *)self traitCollection];
  v4 = EKUIUsesRoundedRectsInsteadOfCircles();

  v5 = 10.0;
  if (v4)
  {
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:10.0 shouldScaleForSmallerSizes:12.5];
  }

  v6 = [UIFont systemFontOfSize:v5];
  [(UILabel *)self->_overlayMonthLabel setFont:v6];
}

- (void)setMonthText:(id)a3 isCurrentMonth:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  monthLabel = self->_monthLabel;
  v11 = v6;
  if (!monthLabel)
  {
    v8 = objc_alloc_init(UILabel);
    v9 = self->_monthLabel;
    self->_monthLabel = v8;

    [(UILabel *)self->_monthLabel setText:@" "];
    [(WeekTimeView *)self _updateMonthFont];
    [(WeekTimeView *)self addSubview:self->_monthLabel];
    [(WeekTimeView *)self bringSubviewToFront:self->_monthLabel];
    v6 = v11;
    monthLabel = self->_monthLabel;
  }

  [(UILabel *)monthLabel setText:v6];
  if (v4)
  {
    CalendarAppTintColor();
  }

  else
  {
    +[UIColor labelColor];
  }
  v10 = ;
  [(UILabel *)self->_monthLabel setTextColor:v10];

  [(WeekTimeView *)self setNeedsLayout];
}

- (void)setWeekNumberText:(id)a3
{
  v4 = a3;
  weekNumberLabel = self->_weekNumberLabel;
  if (v4)
  {
    v10 = v4;
    if (!weekNumberLabel)
    {
      v6 = objc_opt_new();
      v7 = self->_weekNumberLabel;
      self->_weekNumberLabel = v6;

      v8 = WeekendTextColor();
      [(UILabel *)self->_weekNumberLabel setTextColor:v8];

      [(WeekTimeView *)self _updateWeekNumberFont];
      [(WeekTimeView *)self addSubview:self->_weekNumberLabel];
      weekNumberLabel = self->_weekNumberLabel;
    }

    [(UILabel *)weekNumberLabel setText:v10];
    [(UILabel *)self->_weekNumberLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_weekNumberLabel setMinimumScaleFactor:0.75];
    [(WeekTimeView *)self setNeedsLayout];
  }

  else if (weekNumberLabel)
  {
    [(UILabel *)weekNumberLabel removeFromSuperview];
    v9 = self->_weekNumberLabel;
    self->_weekNumberLabel = 0;
  }

  _objc_release_x1();
}

- (void)setOverlayMonthText:(id)a3
{
  v4 = a3;
  overlayMonthLabel = self->_overlayMonthLabel;
  v10 = v4;
  if (v4)
  {
    if (!overlayMonthLabel)
    {
      v6 = objc_opt_new();
      v7 = self->_overlayMonthLabel;
      self->_overlayMonthLabel = v6;

      [(WeekTimeView *)self _updateOverlayMonthFont];
      v8 = WeekendTextColor();
      [(UILabel *)self->_overlayMonthLabel setTextColor:v8];

      [(WeekTimeView *)self addSubview:self->_overlayMonthLabel];
      v4 = v10;
      overlayMonthLabel = self->_overlayMonthLabel;
    }

    [(UILabel *)overlayMonthLabel setText:v4];
    [(WeekTimeView *)self setNeedsLayout];
  }

  else if (overlayMonthLabel)
  {
    [(UILabel *)overlayMonthLabel removeFromSuperview];
    v9 = self->_overlayMonthLabel;
    self->_overlayMonthLabel = 0;
  }

  [(WeekTimeView *)self sizeToFit];
}

- (double)allDayBackgroundColorOriginY
{
  v3 = EKUIWidthSizeClassForViewHierarchy();
  v4 = [(WeekTimeView *)self useMultiDayStyle];

  [WeekAllDayView dayLabelHeightWithSizeClass:v3 usesMultiDay:v4];
  return result;
}

- (double)allDayOccurrenceInsetIntoScroller
{
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy();

  [WeekAllDayView occurrenceInsetIntoScrollerWithSizeClassRegular:IsRegularInViewHierarchy];
  return result;
}

- (double)allDayLabelOriginY
{
  [EKDayOccurrenceView minimumHeightForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:self->_orientation isAllDay:1];
  v4 = v3;
  [(UILabel *)self->_allDayLabel frame];
  v6 = v5;
  [(WeekTimeView *)self allDayOccurrenceInsetIntoScroller];
  return v7 + (v4 - v6) * 0.5;
}

- (void)updateMonthLabel
{
  monthLabel = self->_monthLabel;
  if (monthLabel)
  {
    [(UILabel *)monthLabel sizeToFit];
    v4 = [(UILabel *)self->_monthLabel font];
    [v4 pointSize];
    v6 = v5;

    while (v6 > 8.0)
    {
      [(UILabel *)self->_monthLabel frame];
      v7 = CGRectGetWidth(v21) + 5.0;
      [(WeekTimeView *)self bounds];
      if (v7 <= CGRectGetWidth(v22))
      {
        break;
      }

      v6 = v6 + -1.0;
      v8 = [(UILabel *)self->_monthLabel font];
      v9 = [v8 fontDescriptor];
      v10 = [UIFont fontWithDescriptor:v9 size:v6];
      [(UILabel *)self->_monthLabel setFont:v10];

      [(UILabel *)self->_monthLabel sizeToFit];
    }

    [(UILabel *)self->_monthLabel frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    if (CalInterfaceIsLeftToRight())
    {
      [(WeekTimeView *)self bounds];
      CGRectGetMaxX(v23);
      v24.origin.x = v12;
      v24.origin.y = v14;
      v24.size.width = v16;
      v24.size.height = v18;
      CGRectGetWidth(v24);
      CalRoundToScreenScale();
    }

    [(WeekTimeView *)self _yLocationForMonthLabel];
    CalRoundRectToScreenScale();
    v19 = self->_monthLabel;

    [(UILabel *)v19 setFrame:?];
  }
}

- (void)layoutSubviews
{
  v79.receiver = self;
  v79.super_class = WeekTimeView;
  [(WeekTimeView *)&v79 layoutSubviews];
  [(WeekTimeView *)self bounds];
  v4 = v3;
  rect = v5;
  v7 = v6;
  v9 = v8;
  v10 = 0.0;
  if (CalCanvasPocketEnabled())
  {
    [(WeekTimeView *)self safeAreaInsets];
    v10 = v11;
  }

  [(EKDayTimeView *)self->_timeView sizeToFit];
  if (CalCanvasPocketEnabled())
  {
    v80.origin.x = v4;
    v80.origin.y = rect;
    v80.size.width = v7;
    v80.size.height = v9;
    [(UIScrollView *)self->_timeScroller setFrame:0.0, 0.0, v7, CGRectGetMaxY(v80)];
    [(UIScrollView *)self->_timeScroller setContentInset:v10 + self->_headerHeight, 0.0, 0.0, 0.0];
  }

  else
  {
    headerHeight = self->_headerHeight;
    [(WeekTimeView *)self bounds];
    v14 = v13;
    v81.origin.x = v4;
    v81.origin.y = rect;
    v81.size.width = v7;
    v81.size.height = v9;
    [(UIScrollView *)self->_timeScroller setFrame:0.0, headerHeight, v14, CGRectGetMaxY(v81) - self->_headerHeight];
  }

  [(EKDayTimeView *)self->_timeView bounds];
  [(UIScrollView *)self->_timeScroller setContentSize:v15, v16];
  v76 = v4;
  if (CalTimeDirectionIsLeftToRight())
  {
    [(WeekTimeView *)self bounds];
    v18 = v17;
    EKUISeparatorLineThickness();
    v20 = v18 - v19;
  }

  else
  {
    v20 = 0.0;
  }

  EKUISeparatorLineThickness();
  [(UIView *)self->_trailingBorderView setFrame:v20, v10, v21, self->_headerHeight];
  [(WeekTimeView *)self updateMonthLabel];
  weekNumberLabel = self->_weekNumberLabel;
  if (weekNumberLabel)
  {
    [(UILabel *)weekNumberLabel sizeToFit];
    [(UILabel *)self->_weekNumberLabel frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    if (CalInterfaceIsLeftToRight())
    {
      [(WeekTimeView *)self bounds];
      CGRectGetMaxX(v82);
      v83.origin.x = v24;
      v83.origin.y = v26;
      v83.size.width = v28;
      v83.size.height = v30;
      CGRectGetWidth(v83);
    }

    if ([(WeekTimeView *)self useMultiDayStyle])
    {
      [MultiDayWeekView centerYOffsetForTitleLabelWithSizeClass:EKUIWidthSizeClassForViewHierarchy()];
    }

    else
    {
      [WeekAllDayView baselineForWeekdayLabelsWithSizeClass:EKUIWidthSizeClassForViewHierarchy()];
      [(UILabel *)self->_weekNumberLabel _firstLineBaselineOffsetFromBoundsTop];
    }

    [(WeekTimeView *)self safeAreaInsets];
    if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy())
    {
      v31 = [(WeekTimeView *)self traitCollection];
      EKUIUsesRoundedRectsInsteadOfCircles();
    }

    CalRoundRectToScreenScale();
    [(UILabel *)self->_weekNumberLabel setFrame:?];
  }

  overlayMonthLabel = self->_overlayMonthLabel;
  if (overlayMonthLabel)
  {
    [(UILabel *)overlayMonthLabel sizeToFit];
    [(UILabel *)self->_overlayMonthLabel frame];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    if (CalInterfaceIsLeftToRight())
    {
      [(WeekTimeView *)self bounds];
      CGRectGetMaxX(v84);
      v85.origin.x = v34;
      v85.origin.y = v36;
      v85.size.width = v38;
      v85.size.height = v40;
      CGRectGetWidth(v85);
    }

    if ([(WeekTimeView *)self useCompactWidthStyle])
    {
      [(UILabel *)self->_monthLabel frame];
      CGRectGetMaxY(v86);
    }

    else
    {
      [(WeekTimeView *)self allDayBackgroundColorOriginY];
      [(UILabel *)self->_overlayMonthLabel frame];
      CGRectGetHeight(v87);
    }

    CalRoundToScreenScale();
    CalRoundRectToScreenScale();
    [(UILabel *)self->_overlayMonthLabel setFrame:?];
  }

  [(WeekTimeView *)self allDayBackgroundColorOriginY];
  v42 = v10 + v41;
  v43 = self->_headerHeight;
  [(WeekTimeView *)self allDayBackgroundColorOriginY];
  [(UIView *)self->_allDayBackgroundColorView setFrame:0.0, v42, v7, v43 - v44];
  EKUISeparatorLineThickness();
  v46 = v45;
  [(WeekTimeView *)self allDayBackgroundColorOriginY];
  [(UIView *)self->_topAllDaySeparatorView setFrame:0.0, v10 + v47, v7, v46];
  [(WeekTimeView *)self allDayAlpha];
  if (v48 <= 0.0)
  {
    [(WeekTimeView *)self allDayBackgroundColorOriginY];
    v49 = v10 + v50;
  }

  else
  {
    [(UIView *)self->_allDayBackgroundColorView frame];
    v49 = CGRectGetMaxY(v88) - v46;
  }

  [(UIView *)self->_bottomAllDaySeparatorView setFrame:0.0, v49, v7, v46];
  if (CalCanvasPocketEnabled())
  {
    [(UIView *)self->_bottomAllDaySeparatorView frame];
    MaxY = CGRectGetMaxY(v89);
  }

  else
  {
    MaxY = self->_headerHeight;
  }

  v52 = 0.0;
  [(UIView *)self->_headerBackground setFrame:0.0, 0.0, v7, MaxY];
  [(EKDayTimeView *)self->_timeView frame];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  if (CalInterfaceIsLeftToRight())
  {
    v90.origin.x = v77;
    v90.origin.y = rect;
    v90.size.width = v7;
    v90.size.height = v9;
    Width = CGRectGetWidth(v90);
    v91.origin.x = v54;
    v91.origin.y = v56;
    v91.size.width = v58;
    v91.size.height = v60;
    v52 = Width - CGRectGetWidth(v91);
  }

  [(EKDayTimeView *)self->_timeView setFrame:v52, v56, v58, v60];
  [(UILabel *)self->_allDayLabel frame];
  v63 = v62;
  v65 = v64;
  [(WeekTimeView *)self allDayLabelOriginY];
  CalRoundToScreenScale();
  v67 = v66;
  [EKDayTimeView timeInsetForSizeClass:EKUIWidthSizeClassForViewHierarchy() orientation:self->_orientation];
  v69 = v68;
  if (CalInterfaceIsLeftToRight())
  {
    [(WeekTimeView *)self frame];
    v71 = v70 - v63 - v69 + -1.0;
    if (v71 < 0.0)
    {
      v63 = v63 + v71;
      v71 = 0.0;
    }
  }

  else
  {
    v71 = v69 + 1.0;
    v92.origin.x = v69 + 1.0;
    v92.origin.y = v67;
    v92.size.width = v63;
    v92.size.height = v65;
    v72 = v69 + 1.0 + CGRectGetWidth(v92);
    [(WeekTimeView *)self frame];
    if (v72 > CGRectGetWidth(v93))
    {
      v94.origin.x = v69 + 1.0;
      v94.origin.y = v67;
      v94.size.width = v63;
      v94.size.height = v65;
      MinX = CGRectGetMinX(v94);
      v95.origin.x = v69 + 1.0;
      v95.origin.y = v67;
      v95.size.width = v63;
      v95.size.height = v65;
      v74 = MinX + CGRectGetWidth(v95);
      [(WeekTimeView *)self frame];
      v63 = v63 + v74 - CGRectGetWidth(v96);
      [(WeekTimeView *)self frame];
      v75 = CGRectGetWidth(v97);
      v98.origin.x = v69 + 1.0;
      v98.origin.y = v67;
      v98.size.width = v63;
      v98.size.height = v65;
      v71 = v75 - CGRectGetWidth(v98) - v69 + -1.0;
    }
  }

  [(UILabel *)self->_allDayLabel setFrame:v71, v67, v63, v65];
  [(WeekTimeView *)self reAdjustAllDayLabelLayout];
  if (CalCanvasPocketEnabled())
  {
    [(WeekTimeView *)self _updateCurtain];
  }
}

- (void)_updateCurtain
{
  [(UIScrollView *)self->_timeScroller contentOffset];
  v4 = v3;
  [(UIView *)self->_allDayBackgroundColorView frame];
  v5 = v4 + CGRectGetMaxY(v8);
  timeView = self->_timeView;

  [(EKDayTimeView *)timeView setCurtainHeight:v5];
}

- (double)_yLocationForMonthLabel
{
  result = 0.0;
  if (!self->_overlayMonthLabel)
  {
    preferredMonthLabelBaselineOffsetFromTop = self->_preferredMonthLabelBaselineOffsetFromTop;
    result = 5.0;
    if (preferredMonthLabelBaselineOffsetFromTop > 0.0)
    {
      [(UILabel *)self->_monthLabel _firstLineBaselineOffsetFromBoundsTop];
      return preferredMonthLabelBaselineOffsetFromTop - v4;
    }
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  CalRoundToScreenScale();
  v7 = v6;
  EKUISeparatorLineThickness();
  v9 = v8;
  [(EKDayTimeView *)self->_timeView sizeThatFits:width, height];
  if (v10 >= 51.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 51.0;
  }

  overlayMonthLabel = self->_overlayMonthLabel;
  if (overlayMonthLabel)
  {
    [(UILabel *)overlayMonthLabel sizeToFit];
    [(UILabel *)self->_overlayMonthLabel frame];
    v13 = CGRectGetWidth(v17) + 10.0;
    if (v11 < v13)
    {
      v11 = v13;
    }
  }

  if (height >= v7 + v9)
  {
    v14 = height;
  }

  else
  {
    v14 = v7 + v9;
  }

  v15 = v11;
  result.height = v14;
  result.width = v15;
  return result;
}

@end