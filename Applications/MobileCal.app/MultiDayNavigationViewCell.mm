@interface MultiDayNavigationViewCell
+ (double)heightRequiredWithSizeClass:(int64_t)class;
+ (id)_dayOfWeekLabelFont;
+ (id)_overlayFont;
- (CGRect)contentFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MultiDayNavigationViewCell)initWithFrame:(CGRect)frame;
- (double)_heightIncludingAscenderDescenderForLabel:(id)label outAscenderYOffset:(double *)offset;
- (id)preferredPointerShape;
- (void)_createSubviews;
- (void)_updateDisplayedStrings;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDate:(id)date forceStringUpdate:(BOOL)update;
- (void)setIsToday:(BOOL)today;
- (void)setIsWeekend:(BOOL)weekend;
- (void)setLabelElementsVisible:(BOOL)visible;
- (void)updateOverlay;
@end

@implementation MultiDayNavigationViewCell

- (MultiDayNavigationViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MultiDayNavigationViewCell;
  v3 = [(DayNavigationViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MultiDayNavigationViewCell *)v3 _createSubviews];
  }

  return v4;
}

- (void)_createSubviews
{
  v3 = [UIView alloc];
  [(MultiDayNavigationViewCell *)self bounds];
  v4 = [v3 initWithFrame:?];
  cardBackgroundView = self->_cardBackgroundView;
  self->_cardBackgroundView = v4;

  if (CalCanvasPocketEnabled())
  {
    +[UIColor clearColor];
  }

  else
  {
    +[UIColor systemBackgroundColor];
  }
  v6 = ;
  [(UIView *)self->_cardBackgroundView setBackgroundColor:v6];

  [(MultiDayNavigationViewCell *)self addSubview:self->_cardBackgroundView];
  v7 = objc_opt_new();
  dayOfWeekLabel = self->_dayOfWeekLabel;
  self->_dayOfWeekLabel = v7;

  v9 = +[UIColor clearColor];
  [(UILabel *)self->_dayOfWeekLabel setBackgroundColor:v9];

  _dayOfWeekLabelFont = [objc_opt_class() _dayOfWeekLabelFont];
  [(UILabel *)self->_dayOfWeekLabel setFont:_dayOfWeekLabelFont];

  [(UILabel *)self->_dayOfWeekLabel setTextAlignment:1];
  [(UILabel *)self->_dayOfWeekLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_dayOfWeekLabel setMinimumScaleFactor:0.5];
  v11 = self->_dayOfWeekLabel;

  [(MultiDayNavigationViewCell *)self addSubview:v11];
}

+ (id)_overlayFont
{
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:15.0 shouldScaleForSmallerSizes:16.0];

  return [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
}

+ (id)_dayOfWeekLabelFont
{
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:15.0 shouldScaleForSmallerSizes:20.0];

  return [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
}

- (double)_heightIncludingAscenderDescenderForLabel:(id)label outAscenderYOffset:(double *)offset
{
  labelCopy = label;
  [labelCopy sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v7 = v6;
  v8 = [NSMutableAttributedString alloc];
  text = [labelCopy text];
  v10 = [v8 initWithString:text];

  font = [labelCopy font];

  [v10 addAttribute:NSFontAttributeName value:font range:{0, objc_msgSend(v10, "length")}];
  [v10 boundingRectWithSize:8 options:0 context:{1.79769313e308, 1.79769313e308}];
  if (offset)
  {
    *offset = v12;
  }

  v14 = fmax(v7, v13 - v12);

  return v14;
}

- (void)layoutSubviews
{
  [(MultiDayNavigationViewCell *)self bounds];
  [(UIView *)self->_cardBackgroundView setFrame:?];
  [(UILabel *)self->_dayOfWeekLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  v4 = v3;
  v6 = v5;
  v23 = 0.0;
  [(MultiDayNavigationViewCell *)self _heightIncludingAscenderDescenderForLabel:self->_dayOfWeekLabel outAscenderYOffset:&v23];
  v8 = v7;
  v22 = 0.0;
  overlayLabel = self->_overlayLabel;
  if (overlayLabel)
  {
    [(UILabel *)overlayLabel sizeThatFits:1.79769313e308, 1.79769313e308];
    v11 = v10;
    v13 = v12;
    [(MultiDayNavigationViewCell *)self _heightIncludingAscenderDescenderForLabel:self->_overlayLabel outAscenderYOffset:&v22];
    v15 = v14;
  }

  else
  {
    v13 = 0.0;
    v15 = 0.0;
    v11 = 0.0;
  }

  [(MultiDayNavigationViewCell *)self bounds];
  v17 = (v16 - (v13 + v6 - v23 + 4.0)) * 0.5;
  [(MultiDayNavigationViewCell *)self frame];
  [(UILabel *)self->_dayOfWeekLabel setFrame:(v18 - v4) * 0.5, v17, v4, v8];
  if (self->_overlayLabel)
  {
    [(MultiDayNavigationViewCell *)self frame];
    v20 = (v19 - v11) * 0.5;
    [(UILabel *)self->_dayOfWeekLabel frame];
    [(UILabel *)self->_overlayLabel setFrame:v20, v22 + v6 + v21 + 4.0, v11, v15];
    if (self->_overlayUnderline)
    {
      [(UILabel *)self->_overlayLabel frame];
      [(UIView *)self->_overlayUnderline setFrame:v20, CGRectGetMaxY(v24), v11, self->_overlayUnderlineThickness];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UILabel *)self->_dayOfWeekLabel sizeThatFits:?];
  v7 = v6;
  [(UILabel *)self->_overlayLabel sizeThatFits:width, height];
  v9 = v8;
  [(MultiDayNavigationViewCell *)self _heightIncludingAscenderDescenderForLabel:self->_dayOfWeekLabel outAscenderYOffset:0];
  v11 = v10;
  [(MultiDayNavigationViewCell *)self _heightIncludingAscenderDescenderForLabel:self->_overlayLabel outAscenderYOffset:0];
  v13 = v11 + 4.0 + v12;
  if (v7 >= v9)
  {
    v14 = v7;
  }

  else
  {
    v14 = v9;
  }

  result.height = v13;
  result.width = v14;
  return result;
}

- (void)prepareForReuse
{
  [(MultiDayNavigationViewCell *)self setIsToday:0];
  [(MultiDayNavigationViewCell *)self setIsWeekend:0];
  self->_hasOverlay = 0;
}

- (void)updateOverlay
{
  v3 = CUIKGetOverlayCalendar();
  self->_hasOverlay = v3 != 0;

  overlayLabel = self->_overlayLabel;
  if (self->_hasOverlay)
  {
    if (!overlayLabel)
    {
      v5 = objc_opt_new();
      v6 = self->_overlayLabel;
      self->_overlayLabel = v5;

      layer = [(UILabel *)self->_overlayLabel layer];
      [layer setMasksToBounds:0];

      _overlayFont = [objc_opt_class() _overlayFont];
      [(UILabel *)self->_overlayLabel setFont:_overlayFont];

      [(MultiDayNavigationViewCell *)self addSubview:self->_overlayLabel];
    }
  }

  else if (overlayLabel)
  {
    [(UILabel *)overlayLabel removeFromSuperview];
    [(UIView *)self->_overlayUnderline removeFromSuperview];
    v9 = self->_overlayLabel;
    self->_overlayLabel = 0;

    overlayUnderline = self->_overlayUnderline;
    self->_overlayUnderline = 0;
  }

  if (self->_hasOverlay)
  {
    v21 = CUIKGetOverlayCalendar();
    date = [(DayNavigationViewCell *)self date];
    v12 = [CUIKDateStrings monthDayStringForDate:date inCalendar:v21];
    [(UILabel *)self->_overlayLabel setText:v12];

    v13 = WeekendTextColor();
    [(UILabel *)self->_overlayLabel setTextColor:v13];

    v14 = [v21 components:24 fromDate:date];
    if ([v14 day] == 1)
    {
      v15 = 1.0;
      if ([v14 month] == 1)
      {
        if ([v14 isLeapMonth])
        {
          v15 = 1.0;
        }

        else
        {
          v15 = 1.5;
        }
      }

      if (!self->_overlayUnderline)
      {
        v16 = objc_opt_new();
        v17 = self->_overlayUnderline;
        self->_overlayUnderline = v16;

        v18 = CalendarAppTintColor();
        [(UIView *)self->_overlayUnderline setBackgroundColor:v18];

        [(MultiDayNavigationViewCell *)self addSubview:self->_overlayUnderline];
      }

      self->_overlayUnderlineThickness = v15;
    }

    else
    {
      v19 = self->_overlayUnderline;
      if (v19)
      {
        [(UIView *)v19 removeFromSuperview];
        v20 = self->_overlayUnderline;
        self->_overlayUnderline = 0;
      }
    }
  }
}

- (void)setIsToday:(BOOL)today
{
  v4.receiver = self;
  v4.super_class = MultiDayNavigationViewCell;
  [(DayNavigationViewCell *)&v4 setIsToday:today];
  [(MultiDayNavigationViewCell *)self _updateDisplayedStrings];
}

- (void)setIsWeekend:(BOOL)weekend
{
  v4.receiver = self;
  v4.super_class = MultiDayNavigationViewCell;
  [(DayNavigationViewCell *)&v4 setIsWeekend:weekend];
  [(MultiDayNavigationViewCell *)self _updateDisplayedStrings];
}

- (void)setDate:(id)date forceStringUpdate:(BOOL)update
{
  updateCopy = update;
  dateCopy = date;
  date = [(DayNavigationViewCell *)self date];
  v8 = [dateCopy isEqualToDate:date];

  if (!v8 || updateCopy)
  {
    v11.receiver = self;
    v11.super_class = MultiDayNavigationViewCell;
    [(DayNavigationViewCell *)&v11 setDate:dateCopy];
    v9 = [(MultiDayNavigationViewCell *)self dayOfWeekStringForDate:dateCopy];
    dayOfWeekString = self->_dayOfWeekString;
    self->_dayOfWeekString = v9;

    [(MultiDayNavigationViewCell *)self _updateDisplayedStrings];
  }
}

- (CGRect)contentFrame
{
  [(UILabel *)self->_dayOfWeekLabel frame];
  rect = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(UILabel *)self->_overlayLabel frame];
  v14 = v10;
  v15 = v11;
  if (self->_overlayLabel)
  {
    v16 = v12;
    v17 = v13;
    MinX = CGRectGetMinX(*&v10);
    v37.origin.x = rect;
    v37.origin.y = v5;
    v37.size.width = v7;
    v37.size.height = v9;
    v19 = CGRectGetMinX(v37);
    if (MinX < v19)
    {
      v19 = MinX;
    }
  }

  else
  {
    v17 = v13;
    v16 = v12;
    v38.origin.x = rect;
    v38.origin.y = v5;
    v38.size.width = v7;
    v38.size.height = v9;
    v19 = CGRectGetMinX(v38);
  }

  v35 = v19;
  v39.origin.x = rect;
  v39.origin.y = v5;
  v39.size.width = v7;
  v39.size.height = v9;
  MinY = CGRectGetMinY(v39);
  if (self->_overlayLabel)
  {
    v40.origin.x = v14;
    v40.origin.y = v15;
    v40.size.width = v16;
    v40.size.height = v17;
    v20 = v15;
    v21 = v14;
    MaxX = CGRectGetMaxX(v40);
    v41.origin.x = rect;
    v41.origin.y = v5;
    v41.size.width = v7;
    v41.size.height = v9;
    v23 = CGRectGetMaxX(v41);
    if (MaxX < v23)
    {
      MaxX = v23;
    }
  }

  else
  {
    v42.origin.x = rect;
    v42.origin.y = v5;
    v42.size.width = v7;
    v42.size.height = v9;
    v20 = v15;
    v21 = v14;
    MaxX = CGRectGetMaxX(v42);
  }

  overlayLabel = self->_overlayLabel;
  v25 = rect;
  if (overlayLabel)
  {
    v25 = v21;
    v26 = v20;
  }

  else
  {
    v26 = v5;
  }

  if (overlayLabel)
  {
    v27 = v16;
  }

  else
  {
    v27 = v7;
  }

  if (overlayLabel)
  {
    v28 = v17;
  }

  else
  {
    v28 = v9;
  }

  MaxY = CGRectGetMaxY(*&v25);
  v30 = MinY;
  v31 = MaxX - v35;
  v32 = MaxY - MinY;
  v33 = v35;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v33;
  return result;
}

- (void)setLabelElementsVisible:(BOOL)visible
{
  visibleCopy = visible;
  v5.receiver = self;
  v5.super_class = MultiDayNavigationViewCell;
  [(DayNavigationViewCell *)&v5 setLabelElementsVisible:?];
  [(UILabel *)self->_dayOfWeekLabel setHidden:!visibleCopy];
  [(UILabel *)self->_overlayLabel setHidden:!visibleCopy];
  [(UIView *)self->_overlayUnderline setHidden:!visibleCopy];
}

- (id)preferredPointerShape
{
  [(MultiDayNavigationViewCell *)self contentFrame];
  UIRectInset();

  return [UIPointerShape shapeWithRoundedRect:?];
}

- (void)_updateDisplayedStrings
{
  [(UILabel *)self->_dayOfWeekLabel setText:self->_dayOfWeekString];
  if ([(DayNavigationViewCell *)self isToday])
  {
    v3 = TodayTimelineColor();
  }

  else
  {
    if ([(DayNavigationViewCell *)self isWeekend])
    {
      WeekendTextColor();
    }

    else
    {
      +[UIColor labelColor];
    }
    v3 = ;
  }

  v4 = v3;
  [(UILabel *)self->_dayOfWeekLabel setTextColor:v3];

  [(MultiDayNavigationViewCell *)self updateOverlay];

  [(MultiDayNavigationViewCell *)self setNeedsLayout];
}

+ (double)heightRequiredWithSizeClass:(int64_t)class
{
  _normalFont = [objc_opt_class() _normalFont];
  [_normalFont pointSize];
  v5 = v4;
  v6 = CUIKGetOverlayCalendar();

  if (v6)
  {
    [_normalFont pointSize];
    v8 = v7 * 2.0 + 20.0 + 4.0;
  }

  else
  {
    v8 = v5 + 20.0;
  }

  return v8;
}

@end