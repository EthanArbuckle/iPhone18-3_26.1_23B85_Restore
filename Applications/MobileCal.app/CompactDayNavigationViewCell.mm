@interface CompactDayNavigationViewCell
+ (double)contentHeightForFontSize:(double)size overlayFontSize:(double)fontSize;
+ (double)largeOverlayCircleDiameterForSizeClass:(int64_t)class;
+ (double)roundedRectHeightToMatchMonthView;
+ (double)standardCircleDiameterForSizeClass:(int64_t)class;
- (CGRect)circleFrame;
- (CGRect)dayCircleFrame;
- (CompactDayNavigationViewCell)initWithFrame:(CGRect)frame;
- (CompactDayNavigationViewCell)initWithFrame:(CGRect)frame loadMonthAnimationState:(BOOL)state hasOverlay:(BOOL)overlay sizeClass:(int64_t)class;
- (UIColor)weekendColor;
- (double)_circleDiameter;
- (double)_circleXForDiameter:(double)diameter;
- (double)baselineOffsetFromTop;
- (double)contentWidth;
- (double)yCenterForDayNumbers;
- (id)badgeColor;
- (id)preferredPointerShape;
- (void)_createMonthAnimationStateModeSubviews;
- (void)_createSubviewsWithSizeClass:(int64_t)class;
- (void)_loadMonthAnimationStateBadgeIfNeeded;
- (void)_loadMonthAnimationStateOverlayIfNeeded;
- (void)_updateBadge;
- (void)_updateDisplayedString;
- (void)_updateMonthAnimationStateBadgeToState:(BOOL)state;
- (void)_updateTextColor;
- (void)_updateToMatchMonthViewIfNeeded;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)pulseToday;
- (void)setApplyMonthAnimationStateAdjustments:(BOOL)adjustments;
- (void)setBackgroundColor:(id)color;
- (void)setBadgeColor:(id)color;
- (void)setBadgeLocale:(id)locale;
- (void)setBadgeType:(int64_t)type;
- (void)setCircleDiameter:(double)diameter overlayDiameter:(double)overlayDiameter largeOverlayDiameter:(double)largeOverlayDiameter;
- (void)setCircled:(BOOL)circled animated:(BOOL)animated;
- (void)setDate:(id)date forceStringUpdate:(BOOL)update;
- (void)setDisplayedString:(id)string;
- (void)setFontSize:(double)size;
- (void)setIsToday:(BOOL)today;
- (void)setIsWeekend:(BOOL)weekend;
- (void)setLabelElementsVisible:(BOOL)visible;
- (void)setMatchesMonthView:(BOOL)view;
- (void)setMonthAnimationState:(BOOL)state;
- (void)setNeedsDisplay;
- (void)setOverlayFontSize:(double)size;
- (void)setOverlayString:(id)string;
- (void)setWeekendColor:(id)color;
- (void)stopPulsing;
- (void)touchUpOccurred:(id)occurred;
- (void)updateOverlay;
@end

@implementation CompactDayNavigationViewCell

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = CompactDayNavigationViewCell;
  [(CompactDayNavigationViewCell *)&v3 setNeedsDisplay];
  [(TappableDayNumber *)self->_dateNumber setNeedsDisplay];
}

- (void)layoutSubviews
{
  [(CompactDayNavigationViewCell *)self dayCircleFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TappableDayNumber *)self->_dateNumber setFrame:?];
  [objc_opt_class() badgeDiameter];
  v12 = v11;
  IsRightToLeft = CUIKLocaleIsRightToLeft();
  v14 = v4;
  v15 = v6;
  v16 = v8;
  v17 = v10;
  if (IsRightToLeft)
  {
    CGRectGetMinX(*&v14);
  }

  else
  {
    CGRectGetMaxX(*&v14);
  }

  v35.origin.x = v4;
  v35.origin.y = v6;
  v35.size.width = v8;
  v35.size.height = v10;
  CGRectGetMinY(v35);
  CalRoundRectToScreenScale();
  [(UIImageView *)self->_dayBadge setFrame:?];
  layer = [(UIImageView *)self->_dayBadge layer];
  [layer setCornerRadius:v12 * 0.5];

  monthAnimationStateDayNumber = self->_monthAnimationStateDayNumber;
  if (monthAnimationStateDayNumber)
  {
    [(UILabel *)monthAnimationStateDayNumber sizeToFit];
    [(UILabel *)self->_monthAnimationStateDayNumber frame];
    v21 = v20;
    v23 = v22;
    [(CompactDayNavigationViewCell *)self bounds];
    v25 = (v24 - v21) * 0.5;
    [CompactMonthWeekView dayNumberLayerYOffsetCompressed:[(CompactDayNavigationViewCell *)self verticallyCompressedState] containsFirstDayOfMonth:0];
    v27 = v26;
    monthAnimationStateOverlay = self->_monthAnimationStateOverlay;
    if (monthAnimationStateOverlay)
    {
      [(UILabel *)monthAnimationStateOverlay sizeToFit];
      [(UILabel *)self->_monthAnimationStateOverlay frame];
      CGRectGetHeight(v36);
      CalRoundToScreenScale();
      v30 = v27 - v29;
      [(CompactDayNavigationViewCell *)self bounds];
      v37.origin.x = v25;
      v37.origin.y = v30;
      v37.size.width = v21;
      v37.size.height = v23;
      CGRectGetMaxY(v37);
      CalRoundRectToScreenScale();
      [(UILabel *)self->_monthAnimationStateOverlay setFrame:?];
    }

    CalRoundRectToScreenScale();
    [(UILabel *)self->_monthAnimationStateDayNumber setFrame:?];
  }

  if (self->_badgeType && self->_monthAnimationStateDayBadge)
  {
    [CompactMonthWeekView dayTypeBadgeFrameFromDayNumberFrame:[(CompactDayNavigationViewCell *)self verticallyCompressedState] compressed:v4, v6, v8, v10];
    v32 = v31;
    [(UIImageView *)self->_monthAnimationStateDayBadge setFrame:?];
    layer2 = [(UIImageView *)self->_monthAnimationStateDayBadge layer];
    [layer2 setCornerRadius:v32 * 0.5];
  }
}

- (CGRect)dayCircleFrame
{
  [(TappableDayNumber *)self->_dateNumber frame];
  v4 = v3;
  v6 = v5;
  if ([(CompactDayNavigationViewCell *)self usesRoundedRectInsteadOfCircle])
  {
    [(DayNavigationViewCell *)self roundedRectSize];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    [(CompactDayNavigationViewCell *)self _circleDiameter];
    v8 = v11;
    v10 = v11;
  }

  [(CompactDayNavigationViewCell *)self bounds];
  CGRectGetMidX(v29);
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  CGRectGetWidth(v30);
  CalRoundToScreenScale();
  v13 = v12;
  if ([(CompactDayNavigationViewCell *)self monthAnimationState]|| [(CompactDayNavigationViewCell *)self applyMonthAnimationStateAdjustments])
  {
    [CompactMonthWeekView dayNumberLayerYOffsetCompressed:[(CompactDayNavigationViewCell *)self verticallyCompressedState] containsFirstDayOfMonth:0];
    titleLabel = [(TappableDayNumber *)self->_dateNumber titleLabel];
    [titleLabel bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    titleLabel2 = [(TappableDayNumber *)self->_dateNumber titleLabel];
    [(CompactDayNavigationViewCell *)self convertRect:titleLabel2 fromView:v16, v18, v20, v22];
  }

  else
  {
    [(CompactDayNavigationViewCell *)self yCenterForDayNumbers];
    v31.origin.x = v13;
    v31.origin.y = v6;
    v31.size.width = v8;
    v31.size.height = v10;
    CGRectGetHeight(v31);
  }

  CalRoundToScreenScale();
  v25 = v24;
  v26 = v13;
  v27 = v8;
  v28 = v10;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v25;
  result.origin.x = v26;
  return result;
}

- (double)_circleDiameter
{
  if ([(CompactDayNavigationViewCell *)self usesRoundedRectInsteadOfCircle])
  {
    sub_10016F808(a2, self);
  }

  if (self->_hasOverlay)
  {
    text = [(TappableDayNumber *)self->_dateNumber text];
    if ([text length] >= 2)
    {

      v7 = &OBJC_IVAR___CompactDayNavigationViewCell__circleDiameterOverlayLarge;
    }

    else
    {
      overlayText = [(TappableDayNumber *)self->_dateNumber overlayText];
      v6 = [overlayText length];

      v7 = &OBJC_IVAR___CompactDayNavigationViewCell__circleDiameterOverlay;
      if (v6 > 2)
      {
        v7 = &OBJC_IVAR___CompactDayNavigationViewCell__circleDiameterOverlayLarge;
      }
    }
  }

  else
  {
    v7 = &OBJC_IVAR___CompactDayNavigationViewCell__circleDiameter;
  }

  return *(&self->super.super.super.super.super.isa + *v7);
}

- (double)yCenterForDayNumbers
{
  usesRoundedRectInsteadOfCircle = [(CompactDayNavigationViewCell *)self usesRoundedRectInsteadOfCircle];
  result = 21.0;
  if (usesRoundedRectInsteadOfCircle)
  {
    [(DayNavigationViewCell *)self roundedRectSize];
    return v5 * 0.5;
  }

  return result;
}

- (void)_updateToMatchMonthViewIfNeeded
{
  [CompactMonthWeekView dayNumberFontSize:[(CompactDayNavigationViewCell *)self verticallyCompressedState]];
  v3 = [TappableDayNumber normalFontForSize:?];
  [(UILabel *)self->_monthAnimationStateDayNumber setFont:v3];

  [CompactMonthWeekView dayNumberOverlayFontSize:[(CompactDayNavigationViewCell *)self verticallyCompressedState]];
  v4 = [TappableDayNumber overlayFontForSize:?];
  [(UILabel *)self->_monthAnimationStateOverlay setFont:v4];

  if ([(CompactDayNavigationViewCell *)self matchesMonthView])
  {
    [CompactMonthWeekView dayNumberFontSize:[(CompactDayNavigationViewCell *)self verticallyCompressedState]];
    [(CompactDayNavigationViewCell *)self setFontSize:?];
    [(CompactDayNavigationViewCell *)self fontSize];
    v5 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    [(UILabel *)self->_monthAnimationStateDayNumber setFont:v5];

    [CompactMonthWeekView dayNumberOverlayFontSize:[(CompactDayNavigationViewCell *)self verticallyCompressedState]];
    [(CompactDayNavigationViewCell *)self setOverlayFontSize:?];
    traitCollection = [(CompactDayNavigationViewCell *)self traitCollection];
    [(CompactDayNavigationViewCell *)self setUsesRoundedRectInsteadOfCircle:EKUIUsesRoundedRectsInsteadOfCircles()];

    if ([(CompactDayNavigationViewCell *)self usesRoundedRectInsteadOfCircle])
    {
      displayString = self->_displayString;
      overlayString = self->_overlayString;
      [(CompactDayNavigationViewCell *)self fontSize];
      v10 = v9;
      [(CompactDayNavigationViewCell *)self overlayFontSize];
      [CompactMonthWeekTodayCircle roundedRectSizeForNumberString:displayString overlayString:overlayString fontSize:v10 overlayFontSize:v11];
      [(DayNavigationViewCell *)self setRoundedRectSize:?];
    }

    [(CompactDayNavigationViewCell *)self setNeedsLayout];
  }
}

- (void)_updateDisplayedString
{
  dateNumber = self->_dateNumber;
  if (dateNumber)
  {
    [(TappableDayNumber *)dateNumber setText:self->_displayString];
  }

  monthAnimationStateDayNumber = self->_monthAnimationStateDayNumber;
  if (monthAnimationStateDayNumber)
  {
    [(UILabel *)monthAnimationStateDayNumber setText:self->_displayString];
    [(CompactDayNavigationViewCell *)self _updateTextColor];
  }

  [(CompactDayNavigationViewCell *)self _updateToMatchMonthViewIfNeeded];

  [(CompactDayNavigationViewCell *)self setNeedsLayout];
}

- (void)updateOverlay
{
  v9 = CUIKGetOverlayCalendar();
  if (v9)
  {
    date = [(DayNavigationViewCell *)self date];
    v4 = [CUIKDateStrings overlayShortStringForDate:date inCalendar:v9];

    date2 = [(DayNavigationViewCell *)self date];
    v6 = [v9 components:1073741848 fromDate:date2];

    v7 = 0.0;
    if ([v6 day] != 1 || (v7 = 1.0, objc_msgSend(v6, "month") != 1) || (v8 = 1.5, objc_msgSend(v6, "isLeapMonth")))
    {
      v8 = v7;
    }
  }

  else
  {
    v4 = 0;
    v8 = 0.0;
  }

  [(CompactDayNavigationViewCell *)self setOverlayString:v4];
  [(CompactDayNavigationViewCell *)self setUnderlineThickness:v8];
  [(CompactDayNavigationViewCell *)self _updateToMatchMonthViewIfNeeded];
}

- (void)_updateTextColor
{
  if (self->_monthAnimationStateDayNumber)
  {
    if ([(DayNavigationViewCell *)self isWeekend])
    {
      weekendColor = self->_weekendColor;
      if (weekendColor)
      {
        v4 = weekendColor;
      }

      else
      {
        v4 = WeekendTextColor();
      }
    }

    else
    {
      v4 = +[UIColor labelColor];
    }

    v5 = v4;
    [(UILabel *)self->_monthAnimationStateDayNumber setTextColor:v4];
    [(UILabel *)self->_monthAnimationStateOverlay setTextColor:v5];
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

+ (double)standardCircleDiameterForSizeClass:(int64_t)class
{
  EKUIMultiwindowAssert();
  result = 35.0;
  if (class == 2)
  {
    return 28.0;
  }

  return result;
}

+ (double)largeOverlayCircleDiameterForSizeClass:(int64_t)class
{
  v3 = class == 2;
  EKUIMultiwindowAssert();
  return dbl_1001F8060[v3];
}

+ (double)roundedRectHeightToMatchMonthView
{
  [CompactMonthWeekView dayNumberFontSize:0];
  v3 = v2;
  [CompactMonthWeekView dayNumberOverlayFontSize:0];
  v5 = v4;
  v6 = CUIKGetOverlayCalendar();
  v7 = v6 != 0;

  [CompactMonthWeekTodayCircle roundedRectHeightWithOverlay:v7 fontSize:v3 overlayFontSize:v5];
  return result;
}

+ (double)contentHeightForFontSize:(double)size overlayFontSize:(double)fontSize
{
  v5 = [TappableDayNumber circledFontForSize:size];
  [v5 lineHeight];
  v7 = v6;

  if (fontSize > 0.0)
  {
    v8 = [TappableDayNumber overlayFontForSize:fontSize];
    [v8 lineHeight];
    v7 = v7 + v9;
  }

  return v7;
}

- (CompactDayNavigationViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = CUIKGetOverlayCalendar();
  v9 = v8 != 0;

  return [(CompactDayNavigationViewCell *)self initWithFrame:0 loadMonthAnimationState:v9 hasOverlay:1 sizeClass:x, y, width, height];
}

- (CompactDayNavigationViewCell)initWithFrame:(CGRect)frame loadMonthAnimationState:(BOOL)state hasOverlay:(BOOL)overlay sizeClass:(int64_t)class
{
  stateCopy = state;
  v20.receiver = self;
  v20.super_class = CompactDayNavigationViewCell;
  v9 = [(DayNavigationViewCell *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v10 = v9;
  if (v9)
  {
    v9->_monthAnimationState = 0;
    v9->_hasOverlay = overlay;
    [(CompactDayNavigationViewCell *)v9 _createSubviewsWithSizeClass:class];
    if (stateCopy)
    {
      [(CompactDayNavigationViewCell *)v10 _createMonthAnimationStateModeSubviews];
    }

    [(CompactDayNavigationViewCell *)v10 layoutSubviews];
    [(CompactDayNavigationViewCell *)v10 setCircled:0];
    [objc_opt_class() standardCircleDiameterForSizeClass:class];
    v10->_circleDiameter = v11;
    [objc_opt_class() overlayCircleDiameterForSizeClass:class];
    v10->_circleDiameterOverlay = v12;
    [objc_opt_class() largeOverlayCircleDiameterForSizeClass:class];
    v10->_circleDiameterOverlayLarge = v13;
    objc_initWeak(&location, v10);
    v21 = objc_opt_class();
    v14 = [NSArray arrayWithObjects:&v21 count:1];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001FA1C;
    v17[3] = &unk_10020E9E0;
    objc_copyWeak(&v18, &location);
    v15 = [(CompactDayNavigationViewCell *)v10 registerForTraitChanges:v14 withHandler:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)prepareForReuse
{
  [(CompactDayNavigationViewCell *)self setCircled:0];
  [(CompactDayNavigationViewCell *)self setIsToday:0];
  [(CompactDayNavigationViewCell *)self setIsWeekend:0];

  [(CompactDayNavigationViewCell *)self setBadgeType:0];
}

- (CGRect)circleFrame
{
  [(TappableDayNumber *)self->_dateNumber frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_createSubviewsWithSizeClass:(int64_t)class
{
  if (!self->_dateNumber)
  {
    v4 = [[TappableDayNumber alloc] initWithSizeClass:class];
    dateNumber = self->_dateNumber;
    self->_dateNumber = v4;

    backgroundColor = [(CompactDayNavigationViewCell *)self backgroundColor];
    [(TappableDayNumber *)self->_dateNumber setBackgroundColor:backgroundColor];

    [(TappableDayNumber *)self->_dateNumber setUserInteractionEnabled:0];
    [(TappableDayNumber *)self->_dateNumber setIsToday:[(DayNavigationViewCell *)self isToday]];
    [(CompactDayNavigationViewCell *)self addTarget:self action:"touchUpOccurred:" forControlEvents:64];
    [(CompactDayNavigationViewCell *)self addSubview:self->_dateNumber];
    v7 = objc_alloc_init(UIImageView);
    dayBadge = self->_dayBadge;
    self->_dayBadge = v7;

    [(UIImageView *)self->_dayBadge setClipsToBounds:1];
    [(UIImageView *)self->_dayBadge setHidden:1];
    v9 = self->_dayBadge;

    [(CompactDayNavigationViewCell *)self addSubview:v9];
  }
}

- (void)_createMonthAnimationStateModeSubviews
{
  v3 = objc_alloc_init(UILabel);
  monthAnimationStateDayNumber = self->_monthAnimationStateDayNumber;
  self->_monthAnimationStateDayNumber = v3;

  [(UILabel *)self->_monthAnimationStateDayNumber setTextAlignment:1];
  backgroundColor = [(CompactDayNavigationViewCell *)self backgroundColor];
  [(UILabel *)self->_monthAnimationStateDayNumber setBackgroundColor:backgroundColor];

  [(CompactDayNavigationViewCell *)self addSubview:self->_monthAnimationStateDayNumber];
  [(CompactDayNavigationViewCell *)self _loadMonthAnimationStateOverlayIfNeeded];
  [(CompactDayNavigationViewCell *)self _loadMonthAnimationStateBadgeIfNeeded];
  if (self->_monthAnimationState)
  {
    [(CompactDayNavigationViewCell *)self fontSize];
    [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  }

  else
  {
    [(UILabel *)self->_monthAnimationStateDayNumber setAlpha:0.0];
    [(UILabel *)self->_monthAnimationStateOverlay setAlpha:0.0];
    [(UIImageView *)self->_monthAnimationStateDayBadge setAlpha:0.0];
    [(CompactDayNavigationViewCell *)self fontSize];
    [TappableDayNumber normalFontForSize:?];
  }
  v6 = ;
  [(UILabel *)self->_monthAnimationStateDayNumber setFont:v6];
}

- (void)setMonthAnimationState:(BOOL)state
{
  if (self->_monthAnimationState != state)
  {
    v13 = v8;
    v14 = v7;
    v15 = v4;
    v16 = v3;
    stateCopy = state;
    self->_monthAnimationState = state;
    if (state)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 1.0;
    }

    if (state)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = 0.0;
    }

    [(TappableDayNumber *)self->_dateNumber setAlpha:v11, v13, v14, v15, v16, v5];
    [(UIImageView *)self->_dayBadge setAlpha:v11];
    [(UILabel *)self->_monthAnimationStateDayNumber setAlpha:v12];
    [(UILabel *)self->_monthAnimationStateOverlay setAlpha:v12];

    [(CompactDayNavigationViewCell *)self _updateMonthAnimationStateBadgeToState:stateCopy];
  }
}

- (void)setApplyMonthAnimationStateAdjustments:(BOOL)adjustments
{
  if (self->_applyMonthAnimationStateAdjustments != adjustments)
  {
    self->_applyMonthAnimationStateAdjustments = adjustments;
    [(CompactDayNavigationViewCell *)self _updateMonthAnimationStateBadgeToState:?];
  }
}

- (void)_loadMonthAnimationStateOverlayIfNeeded
{
  if (self->_hasOverlay && !self->_monthAnimationStateOverlay)
  {
    v3 = objc_alloc_init(UILabel);
    monthAnimationStateOverlay = self->_monthAnimationStateOverlay;
    self->_monthAnimationStateOverlay = v3;

    [(UILabel *)self->_monthAnimationStateOverlay setTextAlignment:1];
    [(CompactDayNavigationViewCell *)self overlayFontSize];
    v5 = [TappableDayNumber overlayFontForSize:?];
    [(UILabel *)self->_monthAnimationStateOverlay setFont:v5];

    backgroundColor = [(CompactDayNavigationViewCell *)self backgroundColor];
    [(UILabel *)self->_monthAnimationStateOverlay setBackgroundColor:backgroundColor];

    v7 = self->_monthAnimationStateOverlay;

    [(CompactDayNavigationViewCell *)self addSubview:v7];
  }
}

- (void)_loadMonthAnimationStateBadgeIfNeeded
{
  if (!self->_monthAnimationStateDayBadge)
  {
    v3 = objc_alloc_init(UIImageView);
    monthAnimationStateDayBadge = self->_monthAnimationStateDayBadge;
    self->_monthAnimationStateDayBadge = v3;

    backgroundColor = [(UIImageView *)self->_dayBadge backgroundColor];
    [(UIImageView *)self->_monthAnimationStateDayBadge setBackgroundColor:backgroundColor];

    v6 = self->_monthAnimationStateDayBadge;

    [(CompactDayNavigationViewCell *)self addSubview:v6];
  }
}

- (void)_updateMonthAnimationStateBadgeToState:(BOOL)state
{
  monthAnimationStateDayBadge = self->_monthAnimationStateDayBadge;
  if (!state)
  {
    [(UIImageView *)monthAnimationStateDayBadge setAlpha:0.0];
    [(UIImageView *)self->_dayBadge setAlpha:1.0];
    [(CompactDayNavigationViewCell *)self fontSize];
    v9 = [TappableDayNumber normalFontForSize:?];
    goto LABEL_11;
  }

  image = [(UIImageView *)monthAnimationStateDayBadge image];

  if (!image)
  {
    [CompactMonthWeekView dayTypeBadgeDiameter:[(CompactDayNavigationViewCell *)self verticallyCompressedState]];
    traitCollection = [(CompactDayNavigationViewCell *)self traitCollection];
    [traitCollection userInterfaceStyle];

    badgeType = self->_badgeType;
    if (badgeType == 3)
    {
      v8 = BadgeImageForAlternateWorkday();
    }

    else
    {
      if (badgeType != 1)
      {
LABEL_9:
        v11 = [CompactMonthWeekView dayTypeBadgeBackgroundColorForVerticallyCompressedMode:[(CompactDayNavigationViewCell *)self verticallyCompressedState]];
        [(UIImageView *)self->_monthAnimationStateDayBadge setBackgroundColor:v11];

        goto LABEL_10;
      }

      v8 = BadgeImageForHoliday();
    }

    v10 = v8;
    [(UIImageView *)self->_monthAnimationStateDayBadge setImage:v8];

    goto LABEL_9;
  }

LABEL_10:
  [(UIImageView *)self->_monthAnimationStateDayBadge setAlpha:1.0];
  [(UIImageView *)self->_dayBadge setAlpha:0.0];
  [(CompactDayNavigationViewCell *)self fontSize];
  v9 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
LABEL_11:
  v12 = v9;
  [(UILabel *)self->_monthAnimationStateDayNumber setFont:v9];
}

- (void)setIsToday:(BOOL)today
{
  v4.receiver = self;
  v4.super_class = CompactDayNavigationViewCell;
  [(DayNavigationViewCell *)&v4 setIsToday:today];
  [(TappableDayNumber *)self->_dateNumber setIsToday:[(DayNavigationViewCell *)self isToday]];
  [(CompactDayNavigationViewCell *)self _updateTextColor];
}

- (void)setIsWeekend:(BOOL)weekend
{
  v4.receiver = self;
  v4.super_class = CompactDayNavigationViewCell;
  [(DayNavigationViewCell *)&v4 setIsWeekend:weekend];
  [(TappableDayNumber *)self->_dateNumber setIsWeekend:[(DayNavigationViewCell *)self isWeekend]];
  [(CompactDayNavigationViewCell *)self _updateTextColor];
}

- (void)setWeekendColor:(id)color
{
  colorCopy = color;
  dateNumber = self->_dateNumber;
  v7 = colorCopy;
  if (dateNumber)
  {
    [(TappableDayNumber *)dateNumber setWeekendColor:?];
  }

  else
  {
    objc_storeStrong(&self->_weekendColor, color);
    if ([(DayNavigationViewCell *)self isWeekend])
    {
      [(UILabel *)self->_monthAnimationStateDayNumber setTextColor:v7];
      [(UILabel *)self->_monthAnimationStateOverlay setTextColor:v7];
    }
  }
}

- (UIColor)weekendColor
{
  if (self->_dateNumber)
  {
    weekendColor = [(TappableDayNumber *)self->_dateNumber weekendColor];
  }

  else
  {
    weekendColor = self->_weekendColor;
  }

  return weekendColor;
}

- (void)setCircled:(BOOL)circled animated:(BOOL)animated
{
  animatedCopy = animated;
  circledCopy = circled;
  if ([(DayNavigationViewCell *)self circled]!= circled)
  {
    v7.receiver = self;
    v7.super_class = CompactDayNavigationViewCell;
    [(DayNavigationViewCell *)&v7 setCircled:circledCopy];
    [(TappableDayNumber *)self->_dateNumber setCircled:circledCopy animated:animatedCopy];
    [(CompactDayNavigationViewCell *)self setNeedsLayout];
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
    v13.receiver = self;
    v13.super_class = CompactDayNavigationViewCell;
    [(DayNavigationViewCell *)&v13 setDate:dateCopy];
    v9 = [EKCalendarDate alloc];
    v10 = +[NSTimeZone calendarTimeZone];
    v11 = [v9 initWithDate:dateCopy timeZone:v10];

    [v11 day];
    v12 = CUIKLocalizedStringForInteger();
    [(CompactDayNavigationViewCell *)self setDisplayedString:v12];

    [(CompactDayNavigationViewCell *)self updateOverlay];
    [(CompactDayNavigationViewCell *)self setBadgeType:0];
  }
}

- (void)setDisplayedString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_displayString isEqualToString:?])
  {
    objc_storeStrong(&self->_displayString, string);
    [(CompactDayNavigationViewCell *)self _updateDisplayedString];
  }
}

- (void)setOverlayString:(id)string
{
  stringCopy = string;
  overlayString = self->_overlayString;
  if (overlayString != stringCopy)
  {
    v9 = stringCopy;
    if (!stringCopy || ![(NSString *)overlayString isEqualToString:stringCopy])
    {
      objc_storeStrong(&self->_overlayString, string);
      self->_hasOverlay = [(NSString *)v9 length]!= 0;
      dateNumber = self->_dateNumber;
      if (dateNumber)
      {
        [(TappableDayNumber *)dateNumber setOverlayText:self->_overlayString];
      }

      monthAnimationStateOverlay = self->_monthAnimationStateOverlay;
      if (monthAnimationStateOverlay)
      {
        [(UILabel *)monthAnimationStateOverlay setText:self->_overlayString];
        [(CompactDayNavigationViewCell *)self _updateTextColor];
      }

      [(CompactDayNavigationViewCell *)self _updateToMatchMonthViewIfNeeded];
      [(CompactDayNavigationViewCell *)self setNeedsLayout];
    }
  }

  _objc_release_x1();
}

- (void)setCircleDiameter:(double)diameter overlayDiameter:(double)overlayDiameter largeOverlayDiameter:(double)largeOverlayDiameter
{
  self->_circleDiameter = diameter;
  self->_circleDiameterOverlay = overlayDiameter;
  self->_circleDiameterOverlayLarge = largeOverlayDiameter;
  [(CompactDayNavigationViewCell *)self setNeedsLayout];
}

- (void)setBadgeType:(int64_t)type
{
  if (self->_badgeType != type)
  {
    self->_badgeType = type;
    [(CompactDayNavigationViewCell *)self _updateBadge];
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
  if (colorCopy | badgeColor && ([(UIColor *)badgeColor isEqual:colorCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_badgeColor, color);
    [(CompactDayNavigationViewCell *)self _updateBadge];
  }

  _objc_release_x1();
}

- (void)setBadgeLocale:(id)locale
{
  localeCopy = locale;
  badgeLocale = self->_badgeLocale;
  if (localeCopy | badgeLocale && ([(NSString *)badgeLocale isEqual:localeCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_badgeLocale, locale);
    [(CompactDayNavigationViewCell *)self _updateBadge];
  }

  _objc_release_x1();
}

- (void)_updateBadge
{
  badgeColor = [(CompactDayNavigationViewCell *)self badgeColor];

  if (!badgeColor)
  {
    goto LABEL_10;
  }

  traitCollection = [(CompactDayNavigationViewCell *)self traitCollection];
  [traitCollection userInterfaceStyle];

  badgeType = self->_badgeType;
  if (badgeType == 3)
  {
    [objc_opt_class() badgeDiameter];
    badgeColor2 = [(CompactDayNavigationViewCell *)self badgeColor];
    badgeLocale = [(CompactDayNavigationViewCell *)self badgeLocale];
    v8 = BadgeImageForAlternateWorkday();
  }

  else
  {
    if (badgeType != 1)
    {
      goto LABEL_10;
    }

    [objc_opt_class() badgeDiameter];
    badgeColor2 = [(CompactDayNavigationViewCell *)self badgeColor];
    badgeLocale = [(CompactDayNavigationViewCell *)self badgeLocale];
    v8 = BadgeImageForHoliday();
  }

  v10 = v8;

  if (v10)
  {
    [(UIImageView *)self->_dayBadge setImage:v10];
    [(UIImageView *)self->_dayBadge setHidden:0];

    return;
  }

LABEL_10:
  dayBadge = self->_dayBadge;

  [(UIImageView *)dayBadge setHidden:1];
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  v7.receiver = self;
  v7.super_class = CompactDayNavigationViewCell;
  [(CompactDayNavigationViewCell *)&v7 setBackgroundColor:colorCopy];
  [(TappableDayNumber *)self->_dateNumber setBackgroundColor:colorCopy];
  [(UILabel *)self->_monthAnimationStateDayNumber setBackgroundColor:colorCopy];
  [(UILabel *)self->_monthAnimationStateOverlay setBackgroundColor:colorCopy];
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

- (void)setFontSize:(double)size
{
  [(TappableDayNumber *)self->_dateNumber setFontSize:size];
  if (self->_monthAnimationStateDayNumber)
  {
    if (self->_monthAnimationState)
    {
      [(CompactDayNavigationViewCell *)self fontSize];
      [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    }

    else
    {
      [(CompactDayNavigationViewCell *)self fontSize];
      [TappableDayNumber normalFontForSize:?];
    }
    v4 = ;
    [(UILabel *)self->_monthAnimationStateDayNumber setFont:v4];
  }
}

- (void)setOverlayFontSize:(double)size
{
  sizeCopy = size;
  if (self->_overlayString)
  {
    v5 = [TappableDayNumber overlayFontForSize:size];
    v17 = NSFontAttributeName;
    v18 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v7 = self->_circleDiameter * 0.85;
    v8 = [[NSAttributedString alloc] initWithString:self->_overlayString attributes:v6];
    [v5 lineHeight];
    v10 = v9;
    v11 = objc_opt_new();
    [v11 setMinimumScaleFactor:0.6];
    [v8 boundingRectWithSize:1 options:v11 context:{v7, v10}];
    [v11 actualScaleFactor];
    if (v12 != 1.0)
    {
      [v5 pointSize];
      v14 = v13;
      [v11 actualScaleFactor];
      sizeCopy = v14 * v15;
    }
  }

  [(TappableDayNumber *)self->_dateNumber setOverlayFontSize:sizeCopy];
  if (self->_monthAnimationStateOverlay)
  {
    v16 = [TappableDayNumber overlayFontForSize:sizeCopy];
    [(UILabel *)self->_monthAnimationStateOverlay setFont:v16];
  }
}

- (void)setMatchesMonthView:(BOOL)view
{
  if (self->_matchesMonthView != view)
  {
    self->_matchesMonthView = view;
    [(CompactDayNavigationViewCell *)self _updateToMatchMonthViewIfNeeded];
  }
}

- (double)contentWidth
{
  dateNumber = self->_dateNumber;
  [(CompactDayNavigationViewCell *)self bounds];

  [(TappableDayNumber *)dateNumber sizeThatFits:v3, v4];
  return result;
}

- (double)baselineOffsetFromTop
{
  [(TappableDayNumber *)self->_dateNumber firstLineBaselineOffsetFromBoundsTop];
  v4 = v3;
  [(TappableDayNumber *)self->_dateNumber frame];
  v6 = v5;
  v8 = v7;
  superview = [(TappableDayNumber *)self->_dateNumber superview];
  [(CompactDayNavigationViewCell *)self convertPoint:superview fromView:v6, v8];
  v11 = v10;

  return v4 + v11;
}

- (void)setLabelElementsVisible:(BOOL)visible
{
  visibleCopy = visible;
  v5.receiver = self;
  v5.super_class = CompactDayNavigationViewCell;
  [(DayNavigationViewCell *)&v5 setLabelElementsVisible:?];
  [(TappableDayNumber *)self->_dateNumber setHidden:!visibleCopy];
}

- (double)_circleXForDiameter:(double)diameter
{
  [(CompactDayNavigationViewCell *)self bounds];
  EKUIScaleFactor();

  CalRoundToScreenScale();
  return result;
}

- (void)touchUpOccurred:(id)occurred
{
  delegate = [(DayNavigationViewCell *)self delegate];

  if (delegate)
  {
    delegate2 = [(DayNavigationViewCell *)self delegate];
    [delegate2 dayNavigationCellTouchUpOccurred:self];
  }
}

- (void)pulseToday
{
  if ([(DayNavigationViewCell *)self isToday]&& !self->_pulseView)
  {
    [(TappableDayNumber *)self->_dateNumber frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    if (![(CompactDayNavigationViewCell *)self usesRoundedRectInsteadOfCircle])
    {
      v6 = v6 + 2.0;
    }

    superview = [(CompactDayNavigationViewCell *)self superview];
    v11Superview = [superview superview];

    [v11Superview convertRect:self fromView:{v4, v6, v8, v10}];
    v17 = [[EKUITodayCirclePulseView alloc] initWithFrame:{v13, v14, v15, v16}];
    pulseView = self->_pulseView;
    self->_pulseView = v17;

    if ([(CompactDayNavigationViewCell *)self usesRoundedRectInsteadOfCircle])
    {
      [(EKUITodayCirclePulseView *)self->_pulseView setCircleShouldFillFrame:1];
      [(EKUITodayCirclePulseView *)self->_pulseView setUsesRoundedRectInsteadOfCircle:1];
    }

    else
    {
      [(CompactDayNavigationViewCell *)self _circleDiameter];
      [(EKUITodayCirclePulseView *)self->_pulseView setCircleDiameter:?];
    }

    [(EKUITodayCirclePulseView *)self->_pulseView setString:self->_displayString];
    [(CompactDayNavigationViewCell *)self fontSize];
    v19 = [TappableDayNumber circledFontForSize:?];
    [(EKUITodayCirclePulseView *)self->_pulseView setFont:v19];

    if ([(CompactDayNavigationViewCell *)self usesRoundedRectInsteadOfCircle])
    {
      [(TappableDayNumber *)self->_dateNumber primaryNumberFrame];
      [(EKUITodayCirclePulseView *)self->_pulseView setTextYOffset:v20];
      [(EKUITodayCirclePulseView *)self->_pulseView setUsesTextYOffsetWithoutAdjustmentForOverlay:1];
    }

    else
    {
      CalRoundToScreenScale();
      [(EKUITodayCirclePulseView *)self->_pulseView setTextYOffset:?];
      [(EKUITodayCirclePulseView *)self->_pulseView setTextOffsetFromCircle:0.0, -0.5];
    }

    [(EKUITodayCirclePulseView *)self->_pulseView setTextFrameWidthAdjustment:0.0];
    if (self->_hasOverlay)
    {
      [(EKUITodayCirclePulseView *)self->_pulseView setOverlayString:self->_overlayString];
      [(CompactDayNavigationViewCell *)self overlayFontSize];
      v21 = [TappableDayNumber overlayFontForSize:?];
      [(EKUITodayCirclePulseView *)self->_pulseView setOverlayFont:v21];
    }

    [(EKUITodayCirclePulseView *)self->_pulseView layoutIfNeeded];
    [v11Superview addSubview:self->_pulseView];
    [(TappableDayNumber *)self->_dateNumber setHidden:1];
    v22 = self->_pulseView;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000212B4;
    v23[3] = &unk_10020EB00;
    v23[4] = self;
    [(EKUITodayCirclePulseView *)v22 pulse:v23];
  }
}

- (id)preferredPointerShape
{
  [(CompactDayNavigationViewCell *)self circleFrame];

  return [UIPointerShape shapeWithRoundedRect:"shapeWithRoundedRect:cornerRadius:" cornerRadius:?];
}

@end