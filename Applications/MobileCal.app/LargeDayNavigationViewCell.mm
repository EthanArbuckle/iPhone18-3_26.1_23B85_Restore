@interface LargeDayNavigationViewCell
+ (double)heightRequiredWithSizeClass:(int64_t)class usesMultiDayStyle:(BOOL)style;
- (CGRect)circleFrame;
- (CGRect)contentFrame;
- (LargeDayNavigationViewCell)initWithFrame:(CGRect)frame;
- (double)baselineOffsetFromTop;
- (double)yCenterForDayNumbers;
- (id)badgeColor;
- (id)preferredPointerShape;
- (void)_createSubviews;
- (void)_updateBadge;
- (void)_updateDisplayedStrings;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)pulseToday;
- (void)setBackgroundColor:(id)color;
- (void)setBadgeColor:(id)color;
- (void)setBadgeLocale:(id)locale;
- (void)setBadgeType:(int64_t)type;
- (void)setCircled:(BOOL)circled animated:(BOOL)animated;
- (void)setDate:(id)date forceStringUpdate:(BOOL)update;
- (void)setDelegate:(id)delegate;
- (void)setIsToday:(BOOL)today;
- (void)setIsWeekend:(BOOL)weekend;
- (void)setLabelElementsVisible:(BOOL)visible;
- (void)setOverlayShowsMonth:(BOOL)month animated:(BOOL)animated;
- (void)stopPulsing;
- (void)touchUpOccurred:(id)occurred;
- (void)updateOverlay;
@end

@implementation LargeDayNavigationViewCell

- (LargeDayNavigationViewCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = LargeDayNavigationViewCell;
  v3 = [(DayNavigationViewCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(LargeDayNavigationViewCell *)v3 _createSubviews];
    [(LargeDayNavigationViewCell *)v4 setCircled:0];
    objc_initWeak(&location, v4);
    v12 = objc_opt_class();
    v5 = [NSArray arrayWithObjects:&v12 count:1];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000E1640;
    v8[3] = &unk_10020E9E0;
    objc_copyWeak(&v9, &location);
    v6 = [(LargeDayNavigationViewCell *)v4 registerForTraitChanges:v5 withHandler:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v4;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = LargeDayNavigationViewCell;
  [(DayNavigationViewCell *)&v21 setDelegate:delegateCopy];
  if (delegateCopy)
  {
    dayNavigationCellShouldEnableSpringLoading = [delegateCopy dayNavigationCellShouldEnableSpringLoading];
    p_springLoadInteraction = &self->_springLoadInteraction;
    springLoadInteraction = self->_springLoadInteraction;
    if (dayNavigationCellShouldEnableSpringLoading == (springLoadInteraction != 0))
    {
      goto LABEL_8;
    }

    if (dayNavigationCellShouldEnableSpringLoading)
    {
      delegate = [(DayNavigationViewCell *)self delegate];
      objc_initWeak(&location, delegate);

      objc_initWeak(&from, self);
      v9 = [UISpringLoadedInteraction alloc];
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_1000E1854;
      v16 = &unk_100211400;
      objc_copyWeak(&v17, &location);
      objc_copyWeak(&v18, &from);
      v10 = [v9 initWithActivationHandler:&v13];
      v11 = *p_springLoadInteraction;
      *p_springLoadInteraction = v10;

      [(LargeDayNavigationViewCell *)self addInteraction:*p_springLoadInteraction, v13, v14, v15, v16];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&v17);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
      goto LABEL_8;
    }
  }

  else
  {
    p_springLoadInteraction = &self->_springLoadInteraction;
    springLoadInteraction = self->_springLoadInteraction;
  }

  if (springLoadInteraction)
  {
    [(LargeDayNavigationViewCell *)self removeInteraction:?];
    v12 = *p_springLoadInteraction;
    *p_springLoadInteraction = 0;
  }

LABEL_8:
}

- (void)prepareForReuse
{
  [(LargeDayNavigationViewCell *)self setCircled:0];
  [(LargeDayNavigationViewCell *)self setIsToday:0];
  [(LargeDayNavigationViewCell *)self setIsWeekend:0];
  self->_hasOverlay = 0;
  self->_overlayShowsMonth = 0;

  [(LargeDayNavigationViewCell *)self setBadgeType:0];
}

- (CGRect)circleFrame
{
  [(TappableDayNumber *)self->_dayNumber frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_createSubviews
{
  if (!self->_dayNumber)
  {
    v3 = [[TappableDayNumber alloc] initWithSizeClass:2];
    dayNumber = self->_dayNumber;
    self->_dayNumber = v3;

    backgroundColor = [(LargeDayNavigationViewCell *)self backgroundColor];
    [(TappableDayNumber *)self->_dayNumber setBackgroundColor:backgroundColor];

    [(TappableDayNumber *)self->_dayNumber setIsToday:[(DayNavigationViewCell *)self isToday]];
    [(TappableDayNumber *)self->_dayNumber setUserInteractionEnabled:0];
    [objc_opt_class() _fontSize];
    [(TappableDayNumber *)self->_dayNumber setFontSize:?];
    [(LargeDayNavigationViewCell *)self addTarget:self action:"touchDownOccurred:" forControlEvents:1];
    [(LargeDayNavigationViewCell *)self addTarget:self action:"touchUpOccurred:" forControlEvents:64];
    [(LargeDayNavigationViewCell *)self addTarget:self action:"touchCancelled:" forControlEvents:128];
    [(LargeDayNavigationViewCell *)self addTarget:self action:"touchCancelled:" forControlEvents:256];
    [(LargeDayNavigationViewCell *)self addSubview:self->_dayNumber];
    [(LargeDayNavigationViewCell *)self setNeedsLayout];
    v6 = objc_alloc_init(UIImageView);
    dayBadge = self->_dayBadge;
    self->_dayBadge = v6;

    [(UIImageView *)self->_dayBadge setClipsToBounds:1];
    [(UIImageView *)self->_dayBadge setHidden:1];
    v8 = self->_dayBadge;

    [(LargeDayNavigationViewCell *)self addSubview:v8];
  }
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

      _overlayFont = [objc_opt_class() _overlayFont];
      [(UILabel *)self->_overlayLabel setFont:_overlayFont];

      [(LargeDayNavigationViewCell *)self addSubview:self->_overlayLabel];
    }
  }

  else if (overlayLabel)
  {
    [(UILabel *)overlayLabel removeFromSuperview];
    [(UIView *)self->_overlayUnderline removeFromSuperview];
    v8 = self->_overlayLabel;
    self->_overlayLabel = 0;

    overlayUnderline = self->_overlayUnderline;
    self->_overlayUnderline = 0;
  }

  if (self->_hasOverlay)
  {
    v25 = CUIKGetOverlayCalendar();
    date = [(DayNavigationViewCell *)self date];
    if (!v25)
    {
      [(UILabel *)self->_overlayLabel setText:0];
      v11 = self->_overlayUnderline;
      self->_overlayUnderline = 0;
LABEL_28:

      return;
    }

    v11 = [v25 components:3221225496 fromDate:date];
    v12 = [v11 day];
    isRepeatedDay = [v11 isRepeatedDay];
    v14 = v25;
    v15 = 1.0;
    if (v12 == 1)
    {
      v16 = isRepeatedDay;
      if ([v11 month] == 1)
      {
        if ([v11 isLeapMonth])
        {
          v15 = 1.0;
        }

        else
        {
          v15 = 1.5;
        }
      }

      if (((self->_overlayShowsMonth | v16) & 1) == 0)
      {
        v17 = [CUIKDateStrings monthStringForDate:date inCalendar:v25];
LABEL_19:
        v18 = v17;
        [(UILabel *)self->_overlayLabel setText:v17];

        if ([(DayNavigationViewCell *)self isWeekend])
        {
          WeekendTextColor();
        }

        else
        {
          +[UIColor labelColor];
        }
        v19 = ;
        [(UILabel *)self->_overlayLabel setTextColor:v19];

        v20 = self->_overlayUnderline;
        if (v12 == 1)
        {
          if (!v20)
          {
            v21 = objc_opt_new();
            v22 = self->_overlayUnderline;
            self->_overlayUnderline = v21;

            v23 = CalendarAppTintColor();
            [(UIView *)self->_overlayUnderline setBackgroundColor:v23];

            [(LargeDayNavigationViewCell *)self addSubview:self->_overlayUnderline];
          }

          self->_overlayUnderlineThickness = v15;
        }

        else if (v20)
        {
          [(UIView *)v20 removeFromSuperview];
          v24 = self->_overlayUnderline;
          self->_overlayUnderline = 0;
        }

        goto LABEL_28;
      }

      v14 = v25;
    }

    v17 = [CUIKDateStrings overlayDayNumberStringForDate:date inCalendar:v14];
    goto LABEL_19;
  }
}

+ (double)heightRequiredWithSizeClass:(int64_t)class usesMultiDayStyle:(BOOL)style
{
  styleCopy = style;
  v7 = CUIKGetOverlayCalendar();

  v8 = +[CUIKPreferences sharedPreferences];
  showWeekNumbers = [v8 showWeekNumbers];

  v10 = EKUIUsesRoundedRectsInsteadOfCircles();
  if (styleCopy)
  {
    _normalFont = [objc_opt_class() _normalFont];
    _overlayFont = [self _overlayFont];
    [_normalFont pointSize];
    v14 = v13 + 32.0;
    if (v7)
    {
      [_overlayFont pointSize];
      v14 = v14 + v15;
    }

    return v14;
  }

  if (class != 2)
  {
    v17 = v7 != 0;
    _normalFont2 = [objc_opt_class() _normalFont];
    _overlayFont2 = [self _overlayFont];
    [_normalFont2 pointSize];
    v14 = v20 + 32.0;
    if ((v17 | showWeekNumbers))
    {
      [_overlayFont2 pointSize];
      v14 = v14 + v21;
    }

    return v14;
  }

  if (!v10)
  {
    +[LargeDayNavigationViewCell dayLabelBaseHeight];
    v23 = v22;
    +[LargeDayNavigationViewCell circleDiameter];
    if (v24 > v23)
    {
      +[LargeDayNavigationViewCell circleDiameter];
      v26 = v25;
      +[LargeDayNavigationViewCell dayLabelYMargin];
      v23 = v26 + v27;
    }

    +[LargeDayNavigationViewCell dayLabelYMargin];
    v14 = v23 + v28;
    v29 = CUIKGetOverlayCalendar();

    if (v29)
    {
      return v14 + 15.5;
    }

    return v14;
  }

  +[LargeDayNavigationViewCell roundedRectHeight];
  return result;
}

- (void)setOverlayShowsMonth:(BOOL)month animated:(BOOL)animated
{
  if (self->_overlayShowsMonth == month)
  {
    return;
  }

  self->_overlayShowsMonth = month;
  if (!self->_overlayLabel)
  {
LABEL_18:
    [(LargeDayNavigationViewCell *)self setNeedsLayout];
    return;
  }

  animatedCopy = animated;
  v19 = CUIKGetOverlayCalendar();
  date = [(DayNavigationViewCell *)self date];
  v8 = [v19 components:24 fromDate:date];

  v9 = [v8 day];
  if (v19)
  {
    date2 = [(DayNavigationViewCell *)self date];
    v11 = CUIKGetOverlayCalendar();
    if (v9 != 1 || month)
    {
      v12 = [CUIKDateStrings overlayDayNumberStringForDate:date2 inCalendar:v11];
    }

    else
    {
      v12 = [CUIKDateStrings monthStringForDate:date2 inCalendar:v11];
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  text = [(UILabel *)self->_overlayLabel text];
  v15 = [v13 isEqualToString:text];

  if ((v15 & 1) == 0)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000E224C;
    v22[3] = &unk_10020EC68;
    v22[4] = self;
    v16 = v13;
    v23 = v16;
    v17 = objc_retainBlock(v22);
    v18 = v17;
    if (animatedCopy)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000E22AC;
      v20[3] = &unk_10020F680;
      v21 = v17;
      [UIView animateWithDuration:v20 animations:0.3];
    }

    else
    {
      (v17[2])(v17);
    }

    goto LABEL_18;
  }
}

- (void)setIsToday:(BOOL)today
{
  v4.receiver = self;
  v4.super_class = LargeDayNavigationViewCell;
  [(DayNavigationViewCell *)&v4 setIsToday:today];
  [(TappableDayNumber *)self->_dayNumber setIsToday:[(DayNavigationViewCell *)self isToday]];
  [(LargeDayNavigationViewCell *)self _updateDisplayedStrings];
  [(LargeDayNavigationViewCell *)self setNeedsLayout];
}

- (void)setIsWeekend:(BOOL)weekend
{
  v6.receiver = self;
  v6.super_class = LargeDayNavigationViewCell;
  [(DayNavigationViewCell *)&v6 setIsWeekend:weekend];
  [(TappableDayNumber *)self->_dayNumber setIsWeekend:[(DayNavigationViewCell *)self isWeekend]];
  if ([(DayNavigationViewCell *)self isWeekend])
  {
    WeekendTextColor();
  }

  else
  {
    +[UIColor labelColor];
  }
  v4 = ;
  [(UILabel *)self->_leftLabel setTextColor:v4];

  if ([(DayNavigationViewCell *)self isWeekend])
  {
    WeekendTextColor();
  }

  else
  {
    +[UIColor labelColor];
  }
  v5 = ;
  [(UILabel *)self->_rightLabel setTextColor:v5];

  [(LargeDayNavigationViewCell *)self _updateDisplayedStrings];
  [(LargeDayNavigationViewCell *)self setNeedsLayout];
}

- (void)setCircled:(BOOL)circled animated:(BOOL)animated
{
  animatedCopy = animated;
  circledCopy = circled;
  if ([(DayNavigationViewCell *)self circled]!= circled)
  {
    v7.receiver = self;
    v7.super_class = LargeDayNavigationViewCell;
    [(DayNavigationViewCell *)&v7 setCircled:circledCopy];
    [(TappableDayNumber *)self->_dayNumber setCircled:circledCopy animated:animatedCopy];
    [(LargeDayNavigationViewCell *)self setNeedsLayout];
  }
}

- (void)setDate:(id)date forceStringUpdate:(BOOL)update
{
  updateCopy = update;
  dateCopy = date;
  date = [(DayNavigationViewCell *)self date];
  v8 = [dateCopy isEqualToDate:date];

  if (!v8 || updateCopy)
  {
    v15.receiver = self;
    v15.super_class = LargeDayNavigationViewCell;
    [(DayNavigationViewCell *)&v15 setDate:dateCopy];
    v9 = [objc_opt_class() leftStringForDate:dateCopy];
    leftString = self->_leftString;
    self->_leftString = v9;

    v11 = [objc_opt_class() centerStringForDate:dateCopy];
    centerString = self->_centerString;
    self->_centerString = v11;

    v13 = [objc_opt_class() rightStringForDate:dateCopy];
    rightString = self->_rightString;
    self->_rightString = v13;

    [(LargeDayNavigationViewCell *)self setBadgeType:0];
    [(LargeDayNavigationViewCell *)self _updateDisplayedStrings];
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  v7.receiver = self;
  v7.super_class = LargeDayNavigationViewCell;
  [(LargeDayNavigationViewCell *)&v7 setBackgroundColor:colorCopy];
  [(TappableDayNumber *)self->_dayNumber setBackgroundColor:colorCopy];
  [(UILabel *)self->_leftLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_rightLabel setBackgroundColor:colorCopy];
  v5 = +[UIColor clearColor];
  if ([colorCopy isEqual:v5])
  {
    v6 = +[UIColor systemBackgroundColor];
    [(UIImageView *)self->_dayBadge setBackgroundColor:v6];
  }

  else
  {
    [(UIImageView *)self->_dayBadge setBackgroundColor:colorCopy];
  }
}

- (void)pulseToday
{
  if ([(DayNavigationViewCell *)self isToday]&& !self->_pulseView)
  {
    [(TappableDayNumber *)self->_dayNumber frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    superview = [(LargeDayNavigationViewCell *)self superview];
    v11Superview = [superview superview];

    superview2 = [(TappableDayNumber *)self->_dayNumber superview];
    [v11Superview convertRect:superview2 fromView:{v4, v6, v8, v10}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = [[EKUITodayCirclePulseView alloc] initWithFrame:{v15, v17, v19, v21}];
    pulseView = self->_pulseView;
    self->_pulseView = v22;

    if ([(LargeDayNavigationViewCell *)self usesRoundedRectInsteadOfCircle])
    {
      [(EKUITodayCirclePulseView *)self->_pulseView setCircleShouldFillFrame:1];
      [(EKUITodayCirclePulseView *)self->_pulseView setUsesRoundedRectInsteadOfCircle:1];
    }

    else
    {
      [objc_opt_class() circleDiameter];
      [(EKUITodayCirclePulseView *)self->_pulseView setCircleDiameter:?];
    }

    [(EKUITodayCirclePulseView *)self->_pulseView setString:self->_centerString];
    _boldFont = [objc_opt_class() _boldFont];
    [(EKUITodayCirclePulseView *)self->_pulseView setFont:_boldFont];

    traitCollection = [(LargeDayNavigationViewCell *)self traitCollection];
    v26 = EKUIUsesRoundedRectsInsteadOfCircles();

    if (v26)
    {
      [(TappableDayNumber *)self->_dayNumber numberFrame];
      [(EKUITodayCirclePulseView *)self->_pulseView setTextYOffset:CGRectGetMinY(v32)];
    }

    else
    {
      [(EKUITodayCirclePulseView *)self->_pulseView circleDiameter];
      [objc_opt_class() defaultCircleDiameter];
      CalRoundToScreenScale();
      [(EKUITodayCirclePulseView *)self->_pulseView setTextYOffset:v27 + 3.5];
      EKUIScaleFactor();
      if (v28 <= 1.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = 0.5;
      }

      [(EKUITodayCirclePulseView *)self->_pulseView setTextOffsetFromCircle:0.0, v29];
    }

    [(EKUITodayCirclePulseView *)self->_pulseView layoutIfNeeded];
    [v11Superview addSubview:self->_pulseView];
    [(TappableDayNumber *)self->_dayNumber setHidden:1];
    v30 = self->_pulseView;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000E2980;
    v31[3] = &unk_10020EB00;
    v31[4] = self;
    [(EKUITodayCirclePulseView *)v30 pulse:v31];
  }
}

- (void)stopPulsing
{
  pulseView = self->_pulseView;
  if (pulseView)
  {
    [(EKUITodayCirclePulseView *)pulseView removeFromSuperview];
    v4 = self->_pulseView;
    self->_pulseView = 0;
  }
}

- (double)baselineOffsetFromTop
{
  [(TappableDayNumber *)self->_dayNumber firstLineBaselineOffsetFromBoundsTop];
  v4 = v3;
  [(TappableDayNumber *)self->_dayNumber frame];
  v6 = v5;
  v8 = v7;
  superview = [(TappableDayNumber *)self->_dayNumber superview];
  [(LargeDayNavigationViewCell *)self convertPoint:superview fromView:v6, v8];
  v11 = v10;

  return v4 + v11;
}

- (CGRect)contentFrame
{
  [(TappableDayNumber *)self->_dayNumber numberFrame];
  [(LargeDayNavigationViewCell *)self convertRect:self->_dayNumber fromView:?];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  MinX = CGRectGetMinX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MinY = CGRectGetMinY(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MaxX = CGRectGetMaxX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MaxY = CGRectGetMaxY(v20);
  superview = [(UILabel *)self->_leftLabel superview];

  if (superview)
  {
    [(UILabel *)self->_leftLabel frame];
    MinX = fmin(MinX, CGRectGetMinX(v21));
    [(UILabel *)self->_leftLabel frame];
    MinY = fmin(MinY, CGRectGetMinY(v22));
    [(UILabel *)self->_leftLabel frame];
    MaxX = fmax(MaxX, CGRectGetMaxX(v23));
    [(UILabel *)self->_leftLabel frame];
    MaxY = fmax(MaxY, CGRectGetMaxY(v24));
  }

  superview2 = [(UILabel *)self->_rightLabel superview];

  if (superview2)
  {
    [(UILabel *)self->_rightLabel frame];
    MinX = fmin(MinX, CGRectGetMinX(v25));
    [(UILabel *)self->_rightLabel frame];
    MinY = fmin(MinY, CGRectGetMinY(v26));
    [(UILabel *)self->_rightLabel frame];
    MaxX = fmax(MaxX, CGRectGetMaxX(v27));
    [(UILabel *)self->_rightLabel frame];
    MaxY = fmax(MaxY, CGRectGetMaxY(v28));
  }

  v13 = MaxX - MinX;
  v14 = MaxY - MinY;
  v15 = MinX;
  v16 = MinY;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)setLabelElementsVisible:(BOOL)visible
{
  visibleCopy = visible;
  v5.receiver = self;
  v5.super_class = LargeDayNavigationViewCell;
  [(DayNavigationViewCell *)&v5 setLabelElementsVisible:?];
  [(TappableDayNumber *)self->_dayNumber setHidden:!visibleCopy];
  [(UILabel *)self->_leftLabel setHidden:!visibleCopy];
  [(UILabel *)self->_rightLabel setHidden:!visibleCopy];
}

- (id)preferredPointerShape
{
  [(LargeDayNavigationViewCell *)self contentFrame];
  UIRectInset();

  return [UIPointerShape shapeWithRoundedRect:?];
}

- (void)layoutSubviews
{
  usesRoundedRectInsteadOfCircle = [(LargeDayNavigationViewCell *)self usesRoundedRectInsteadOfCircle];
  dayNumber = self->_dayNumber;
  if (usesRoundedRectInsteadOfCircle)
  {
    [(TappableDayNumber *)dayNumber numberFrame];
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    v9 = CGRectGetHeight(v39);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v10 = CGRectGetWidth(v40);
    if (v9 >= v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    [objc_opt_class() roundedRectHorizontalPadding];
    v13 = v11 + v12 * 2.0;
    [objc_opt_class() roundedRectVerticalPadding];
    v15 = height + v14 * 2.0;
    [(LargeDayNavigationViewCell *)self yCenterForDayNumbers];
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = v13;
    v41.size.height = v15;
    CGRectGetHeight(v41);
    CalRoundToScreenScale();
    v17 = v16;
  }

  else
  {
    [(TappableDayNumber *)dayNumber frame];
    x = v18;
    v20 = v19;
    [objc_opt_class() circleDiameter];
    v15 = v21;
    [(LargeDayNavigationViewCell *)self yCenterForDayNumbers];
    v42.origin.x = x;
    v42.origin.y = v20;
    v42.size.width = v15;
    v42.size.height = v15;
    CGRectGetHeight(v42);
    CalRoundToScreenScale();
    v23 = v22;
    [objc_opt_class() defaultCircleDiameter];
    v17 = v23 + 1.0;
    if (v15 <= v24)
    {
      v17 = v23;
    }

    v13 = v15;
  }

  [(TappableDayNumber *)self->_dayNumber setFrame:x, v17, v13, v15];
  [(LargeDayNavigationViewCell *)self _updateDisplayedStrings];
  [(LargeDayNavigationViewCell *)self bounds];
  MidX = CGRectGetMidX(v43);
  [(UILabel *)self->_leftLabel frame];
  CGRectGetWidth(v44);
  [(TappableDayNumber *)self->_dayNumber contentFrame];
  CGRectGetWidth(v45);
  [(UILabel *)self->_rightLabel frame];
  CGRectGetWidth(v46);
  [(TappableDayNumber *)self->_dayNumber frame];
  CGRectGetMinY(v47);
  [(TappableDayNumber *)self->_dayNumber firstLineBaselineOffsetFromBoundsTop];
  circled = [(TappableDayNumber *)self->_dayNumber circled];
  v27 = objc_opt_class();
  if (circled)
  {
    [v27 interTextSpacingCircled];
  }

  else
  {
    [v27 interTextSpacing];
  }

  if ([objc_opt_class() _stringsIncludeSpacing])
  {
    [objc_opt_class() _widthOfSpace];
    CalCeilToScreenScale();
  }

  v28 = 0.0;
  if ([(TappableDayNumber *)self->_dayNumber circled])
  {
    if (CalInterfaceIsLeftToRight())
    {
      v28 = 2.0;
    }

    else
    {
      v28 = -2.0;
    }
  }

  CalRoundToScreenScale();
  if (self->_leftString)
  {
    [(UILabel *)self->_leftLabel frame];
    [(UILabel *)self->_leftLabel _firstLineBaselineOffsetFromBoundsTop];
    CalRoundPointToScreenScale();
    [(UILabel *)self->_leftLabel setFrame:?];
    [(UILabel *)self->_leftLabel frame];
  }

  [(TappableDayNumber *)self->_dayNumber frame];
  [(TappableDayNumber *)self->_dayNumber contentFrame];
  CGRectGetMinX(v48);
  CalRoundToScreenScale();
  [(TappableDayNumber *)self->_dayNumber setFrame:?];
  [(TappableDayNumber *)self->_dayNumber contentFrame];
  if (self->_rightString)
  {
    [(UILabel *)self->_rightLabel frame];
    [(UILabel *)self->_rightLabel _firstLineBaselineOffsetFromBoundsTop];
    CalRoundPointToScreenScale();
    [(UILabel *)self->_rightLabel setFrame:?];
  }

  overlayLabel = self->_overlayLabel;
  if (overlayLabel)
  {
    [(UILabel *)overlayLabel sizeToFit];
    [(UILabel *)self->_overlayLabel frame];
    v30 = v49.size.width;
    v31 = v49.size.height;
    v32 = v28 + MidX + CGRectGetWidth(v49) * -0.5;
    [(TappableDayNumber *)self->_dayNumber frame];
    MaxY = CGRectGetMaxY(v50);
    CalRoundRectToScreenScale();
    [(UILabel *)self->_overlayLabel setFrame:?];
    if (self->_overlayUnderline)
    {
      v51.origin.x = v32;
      v51.origin.y = MaxY;
      v51.size.width = v30;
      v51.size.height = v31;
      CGRectGetMaxY(v51);
      CalRoundToScreenScale();
      CalRoundToScreenScale();
      CalRoundRectToScreenScale();
      [(UIView *)self->_overlayUnderline setFrame:?];
    }
  }

  if (self->_badgeType)
  {
    [objc_opt_class() badgeDiameter];
    v35 = v34 * 0.5;
    v36 = objc_opt_class();
    [(TappableDayNumber *)self->_dayNumber frame];
    [v36 badgeFrameFromDayNumberFrame:self->_rightLabel != 0 isRightToLeft:?];
    CalRoundRectToScreenScale();
    [(UIImageView *)self->_dayBadge setFrame:?];
    layer = [(UIImageView *)self->_dayBadge layer];
    [layer setCornerRadius:v35];
  }
}

- (void)_updateDisplayedStrings
{
  [(TappableDayNumber *)self->_dayNumber setText:self->_centerString];
  if (!self->_leftLabel && self->_leftString)
  {
    v3 = objc_opt_new();
    leftLabel = self->_leftLabel;
    self->_leftLabel = v3;

    backgroundColor = [(LargeDayNavigationViewCell *)self backgroundColor];
    [(UILabel *)self->_leftLabel setBackgroundColor:backgroundColor];

    if ([(DayNavigationViewCell *)self isWeekend])
    {
      WeekendTextColor();
    }

    else
    {
      +[UIColor labelColor];
    }
    v6 = ;
    [(UILabel *)self->_leftLabel setTextColor:v6];

    if (CUIKLocaleIsRightToLeft())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    [(UILabel *)self->_leftLabel setTextAlignment:v7];
    [(LargeDayNavigationViewCell *)self addSubview:self->_leftLabel];
  }

  if (!self->_rightLabel && self->_rightString)
  {
    v8 = objc_opt_new();
    rightLabel = self->_rightLabel;
    self->_rightLabel = v8;

    backgroundColor2 = [(LargeDayNavigationViewCell *)self backgroundColor];
    [(UILabel *)self->_rightLabel setBackgroundColor:backgroundColor2];

    if ([(DayNavigationViewCell *)self isWeekend])
    {
      WeekendTextColor();
    }

    else
    {
      +[UIColor labelColor];
    }
    v11 = ;
    [(UILabel *)self->_rightLabel setTextColor:v11];

    if (CUIKLocaleIsRightToLeft())
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    [(UILabel *)self->_rightLabel setTextAlignment:v12];
    [(LargeDayNavigationViewCell *)self addSubview:self->_rightLabel];
  }

  [(UILabel *)self->_leftLabel setText:self->_leftString];
  _normalFont = [objc_opt_class() _normalFont];
  [(UILabel *)self->_leftLabel setFont:_normalFont];

  [(UILabel *)self->_leftLabel sizeToFit];
  [(UILabel *)self->_rightLabel setText:self->_rightString];
  _normalFont2 = [objc_opt_class() _normalFont];
  [(UILabel *)self->_rightLabel setFont:_normalFont2];

  [(UILabel *)self->_rightLabel sizeToFit];

  [(LargeDayNavigationViewCell *)self updateOverlay];
}

- (double)yCenterForDayNumbers
{
  [objc_opt_class() yCenterForDayNumbers];

  CalRoundToScreenScale();
  return result;
}

- (void)setBadgeType:(int64_t)type
{
  badgeType = self->_badgeType;
  if (badgeType != type)
  {
    self->_badgeType = type;
    [(LargeDayNavigationViewCell *)self _updateBadge];
    if (!badgeType)
    {

      [(LargeDayNavigationViewCell *)self setNeedsLayout];
    }
  }
}

- (id)badgeColor
{
  badgeColor = self->_badgeColor;
  if (badgeColor)
  {
    v3 = badgeColor;
  }

  else
  {
    v3 = +[UIColor clearColor];
  }

  return v3;
}

- (void)setBadgeColor:(id)color
{
  colorCopy = color;
  badgeColor = self->_badgeColor;
  if (colorCopy | badgeColor)
  {
    v7 = colorCopy;
    badgeColor = [(UIColor *)badgeColor isEqual:colorCopy];
    colorCopy = v7;
    if ((badgeColor & 1) == 0)
    {
      objc_storeStrong(&self->_badgeColor, color);
      badgeColor = [(LargeDayNavigationViewCell *)self _updateBadge];
      colorCopy = v7;
    }
  }

  _objc_release_x1(badgeColor, colorCopy);
}

- (void)setBadgeLocale:(id)locale
{
  localeCopy = locale;
  badgeLocale = self->_badgeLocale;
  if (localeCopy | badgeLocale)
  {
    v7 = localeCopy;
    badgeLocale = [(NSString *)badgeLocale isEqual:localeCopy];
    localeCopy = v7;
    if ((badgeLocale & 1) == 0)
    {
      objc_storeStrong(&self->_badgeLocale, locale);
      badgeLocale = [(LargeDayNavigationViewCell *)self _updateBadge];
      localeCopy = v7;
    }
  }

  _objc_release_x1(badgeLocale, localeCopy);
}

- (void)_updateBadge
{
  badgeColor = [(LargeDayNavigationViewCell *)self badgeColor];

  if (!badgeColor)
  {
    goto LABEL_10;
  }

  traitCollection = [(LargeDayNavigationViewCell *)self traitCollection];
  [traitCollection userInterfaceStyle];

  badgeType = self->_badgeType;
  if (badgeType == 3)
  {
    [objc_opt_class() badgeDiameter];
    badgeColor2 = [(LargeDayNavigationViewCell *)self badgeColor];
    v7 = BadgeImageForAlternateWorkday();
  }

  else
  {
    if (badgeType != 1)
    {
      goto LABEL_10;
    }

    [objc_opt_class() badgeDiameter];
    badgeColor2 = [(LargeDayNavigationViewCell *)self badgeColor];
    v7 = BadgeImageForHoliday();
  }

  v9 = v7;

  if (v9)
  {
    [(UIImageView *)self->_dayBadge setImage:v9];
    [(UIImageView *)self->_dayBadge setHidden:0];

    return;
  }

LABEL_10:
  dayBadge = self->_dayBadge;

  [(UIImageView *)dayBadge setHidden:1];
}

- (void)touchUpOccurred:(id)occurred
{
  [(TappableDayNumber *)self->_dayNumber setPressed:0];
  delegate = [(DayNavigationViewCell *)self delegate];

  if (delegate)
  {
    delegate2 = [(DayNavigationViewCell *)self delegate];
    [delegate2 dayNavigationCellTouchUpOccurred:self];
  }
}

@end