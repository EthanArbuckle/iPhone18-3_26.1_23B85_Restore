@interface CompactMonthWeekView
+ (BOOL)_viewForCalendarDateContainsFirstDayOfMonth:(id)month;
+ (BOOL)usesRoundedRectInsteadOfCircle;
+ (CGPoint)_roundedRectOriginForDayLayerFrame:(CGRect)frame roundedRectSize:(CGSize)size withOverlay:(BOOL)overlay compressed:(BOOL)compressed;
+ (CGPoint)positionOfCircleInCellWithWidth:(double)width circleSize:(CGSize)size compressed:(BOOL)compressed containsFirstDayOfMonth:(BOOL)month;
+ (CGRect)_circleFrameWithDayFrame:(CGRect)frame numberString:(id)string overlayString:(id)overlayString compressed:(BOOL)compressed containsFirstDay:(BOOL)day;
+ (CGRect)_roundedRectFrameWithDayFrame:(CGRect)frame dayLayerFrame:(CGRect)layerFrame numberString:(id)string overlayString:(id)overlayString compressed:(BOOL)compressed;
+ (CGRect)dayTypeBadgeFrameFromDayNumberFrame:(CGRect)frame compressed:(BOOL)compressed;
+ (CGRect)frameForCircleWithDayFrame:(CGRect)frame dayLayerFrame:(CGRect)layerFrame numberString:(id)string overlayString:(id)overlayString compressed:(BOOL)compressed containsFirstDay:(BOOL)day;
+ (CGRect)frameForDayCircleWithSize:(CGSize)size dayNumberLayerFrame:(CGRect)frame dayNumberFrame:(CGRect)numberFrame withOverlay:(BOOL)overlay compressed:(BOOL)compressed containsFirstDayOfMonth:(BOOL)month;
+ (double)circleYOffsetCompressed:(BOOL)compressed containsFirstDayOfMonth:(BOOL)month;
+ (double)dayNumberFontSize:(BOOL)size;
+ (double)dayNumberLayerYOffsetCompressed:(BOOL)compressed containsFirstDayOfMonth:(BOOL)month;
+ (double)dayNumberOverlayFontSize:(BOOL)size;
+ (double)dayTypeBadgeDiameter:(BOOL)diameter;
+ (double)distanceToBottomOfCircleCompressed:(BOOL)compressed containsFirstDay:(BOOL)day;
+ (double)eventScale;
+ (double)eventScaleForNumberOfRows:(unint64_t)rows;
+ (double)heightForViewThatContainsFirstDayOfMonth:(BOOL)month compressed:(BOOL)compressed scale:(double)scale;
+ (double)heightForViewWithCalendarDate:(id)date compressed:(BOOL)compressed windowSize:(CGSize)size scale:(double)scale;
+ (double)heightOfCircleCompressed:(BOOL)compressed;
+ (double)narrowScale;
+ (double)twoDigitWeekNumberWidth;
+ (double)verticalEventPadding:(BOOL)padding;
+ (id)cachedCalculatedValues;
+ (id)dayTypeBadgeBackgroundColorForVerticallyCompressedMode:(BOOL)mode;
+ (id)weekNumberColorForThisWeek:(BOOL)week;
+ (id)weekNumberFont;
+ (int64_t)_cellToStartDrawingInForViewWithCalendarDate:(id)date calendar:(id)calendar;
+ (unint64_t)eventRowsForScale:(double)scale;
+ (void)clearCalculatedValues;
- (BOOL)isBackgroundScene;
- (BOOL)isNarrowWithScale:(double)scale;
- (BOOL)isTodayHighlightVisible;
- (CGRect)frameForCircleWithDayFrame:(CGRect)frame dayLayerFrame:(CGRect)layerFrame numberString:(id)string overlayString:(id)overlayString;
- (CGRect)frameForOccurrence:(id)occurrence onDay:(id)day;
- (CGRect)frameForOccurrenceAfterLastOnDay:(id)day;
- (CGRect)frameForTodayHighlight;
- (CGRect)rectForCells;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CompactMonthWeekView)initWithCalendarDate:(id)date calendar:(id)calendar compressed:(BOOL)compressed;
- (CompactMonthWeekViewDelegate)weekDelegate;
- (NSString)description;
- (double)monthWeekScale;
- (double)usableSpaceForOccurrencesWithHeight:(double)height;
- (id)dayForPoint:(CGPoint)point;
- (id)dayNumberCellFrames;
- (id)makeDayCircleForDate:(id)date isToday:(BOOL)today;
- (id)monthNameLabel;
- (id)newFeedbackViewForDraggingOccurrence:(id)occurrence atPoint:(CGPoint)point;
- (id)occurrenceAtPoint:(CGPoint)point;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)visibleDaySummaryViews;
- (int64_t)indexForPoint:(CGPoint)point;
- (unint64_t)_monthLabelColumnIndex;
- (unint64_t)nearestSnapBoundaryForScale:(double)scale;
- (void)_clearTodayHighlight;
- (void)_forceReloadImagesForDayTypeBadges;
- (void)_initializeBackground;
- (void)_initializeDaySummaries;
- (void)_initializeDays;
- (void)_initializeGrayLine;
- (void)_initializeMonthNameLabel;
- (void)_layoutDayTypeBadgeForDayNumber:(id)number yOffset:(double)offset;
- (void)_reloadMonthNameLabel;
- (void)_setUpInteraction;
- (void)_updateDayFrames;
- (void)_updateDayTypeBadgeForDayNumber:(id)number withDayType:(int64_t)type color:(id)color locale:(id)locale forceImageUpdate:(BOOL)update;
- (void)_updateDayTypeBadgesWithBackgroundColor;
- (void)_updateEventSummaries;
- (void)_updateSingleDaySummaryForDayIndex:(int64_t)index withData:(id)data date:(id)date calendar:(id)calendar;
- (void)_updateWeekNumberAnimated:(BOOL)animated;
- (void)adjustHighlight:(id)highlight forDay:(id)day;
- (void)animateToScale:(double)scale fromScale:(double)fromScale completionBlock:(id)block;
- (void)finishAnimations;
- (void)haltTodayPulse;
- (void)layoutIfNeeded;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)prepareForReuse;
- (void)pulseTodayCircle;
- (void)resetTimeZone:(id)zone;
- (void)resetTodayBits;
- (void)setCalendarDate:(id)date;
- (void)setCompressedVerticalMode:(BOOL)mode;
- (void)setDrawWithViews:(BOOL)views;
- (void)setEventData:(id)data animated:(BOOL)animated;
- (void)setFrame:(CGRect)frame;
- (void)setHighlightedDayRange:(_NSRange)range;
- (void)setSelectedDay:(id)day animated:(BOOL)animated;
- (void)setShowWeekNumber:(BOOL)number;
- (void)setTemporarilyHideWeekNumber:(BOOL)number;
@end

@implementation CompactMonthWeekView

- (CompactMonthWeekView)initWithCalendarDate:(id)date calendar:(id)calendar compressed:(BOOL)compressed
{
  dateCopy = date;
  calendarCopy = calendar;
  v21.receiver = self;
  v21.super_class = CompactMonthWeekView;
  v10 = [(CompactMonthWeekView *)&v21 init];
  v11 = v10;
  if (v10)
  {
    v10->_compressedVerticalMode = compressed;
    v12 = +[UIColor clearColor];
    [(CompactMonthWeekView *)v11 setBackgroundColor:v12];

    objc_storeStrong(&v11->_calendar, calendar);
    [(CompactMonthWeekView *)v11 _initializeGrayLine];
    [(CompactMonthWeekView *)v11 _initializeDays];
    [(CompactMonthWeekView *)v11 _initializeDaySummaries];
    [(CompactMonthWeekView *)v11 _initializeBackground];
    [(CompactMonthWeekView *)v11 _setUpInteraction];
    v13 = objc_alloc_init(MonthWeekOccurrencesView);
    occurrencesView = v11->_occurrencesView;
    v11->_occurrencesView = v13;

    [(MonthWeekOccurrencesView *)v11->_occurrencesView setDelegate:v11];
    [(MonthWeekOccurrencesView *)v11->_occurrencesView setIsCompact:1];
    -[MonthWeekOccurrencesView setIsLargeCompact:](v11->_occurrencesView, "setIsLargeCompact:", [objc_opt_class() isLargeCompact]);
    [(CompactMonthWeekView *)v11 addSubview:v11->_occurrencesView];
    [(CompactMonthWeekView *)v11 bringSubviewToFront:v11->_occurrencesView];
    [(CompactMonthWeekView *)v11 setCalendarDate:dateCopy];
    objc_initWeak(&location, v11);
    v22 = objc_opt_class();
    v15 = [NSArray arrayWithObjects:&v22 count:1];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000CA4D0;
    v18[3] = &unk_10020E9E0;
    objc_copyWeak(&v19, &location);
    v16 = [(CompactMonthWeekView *)v11 registerForTraitChanges:v15 withHandler:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)setDrawWithViews:(BOOL)views
{
  if (self->_drawsWithViews != views)
  {
    self->_drawsWithViews = views;
    [(MonthWeekOccurrencesView *)self->_occurrencesView setDrawWithViews:?];
    occurrencesView = self->_occurrencesView;

    [(MonthWeekOccurrencesView *)occurrencesView setNeedsDisplay];
  }
}

+ (id)weekNumberColorForThisWeek:(BOOL)week
{
  if (qword_100251AC8 == -1)
  {
    if (week)
    {
LABEL_3:
      v4 = CalendarAppTintColor();
      goto LABEL_6;
    }
  }

  else
  {
    sub_100170694();
    if (week)
    {
      goto LABEL_3;
    }
  }

  v4 = qword_100251AC0;
LABEL_6:

  return v4;
}

- (void)setShowWeekNumber:(BOOL)number
{
  if (self->_showWeekNumber != number)
  {
    self->_showWeekNumber = number;
    if (number)
    {
      v5 = objc_opt_new();
      weekNumberLabel = self->_weekNumberLabel;
      self->_weekNumberLabel = v5;

      weekNumberFont = [objc_opt_class() weekNumberFont];
      [(UILabel *)self->_weekNumberLabel setFont:weekNumberFont];

      [(CompactMonthWeekView *)self addSubview:self->_weekNumberLabel];
      [(CompactMonthWeekView *)self _updateWeekNumberAnimated:0];
    }

    else
    {
      [(UILabel *)self->_weekNumberLabel removeFromSuperview];
      v8 = self->_weekNumberLabel;
      self->_weekNumberLabel = 0;
    }

    [(CompactMonthWeekView *)self setNeedsLayout];
  }
}

- (void)setTemporarilyHideWeekNumber:(BOOL)number
{
  if (self->_temporarilyHideWeekNumber != number)
  {
    self->_temporarilyHideWeekNumber = number;
    [(UILabel *)self->_weekNumberLabel setHidden:?];
  }
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = CompactMonthWeekView;
  v3 = [(CompactMonthWeekView *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@\n\t_startCalendarDate: [%@]", v3, self->_startCalendarDate];;

  return v4;
}

- (void)_initializeGrayLine
{
  if (!self->_grayLine)
  {
    v3 = objc_alloc_init(UIView);
    grayLineColor = [objc_opt_class() grayLineColor];
    [(UIView *)v3 setBackgroundColor:grayLineColor];

    [(CompactMonthWeekView *)self addSubview:v3];
    grayLine = self->_grayLine;
    self->_grayLine = v3;
  }
}

- (void)_initializeDays
{
  if (!self->_days)
  {
    _daysInAWeek = [(CompactMonthWeekView *)self _daysInAWeek];
    for (i = [[NSMutableArray alloc] initWithCapacity:_daysInAWeek]; _daysInAWeek; --_daysInAWeek)
    {
      v5 = [[CompactMonthWeekDayNumber alloc] initWithWeekView:self andCalendar:self->_calendar];
      [objc_opt_class() dayNumberFontSize:{-[CompactMonthWeekView compressedVerticalMode](self, "compressedVerticalMode")}];
      [(CompactMonthWeekDayNumber *)v5 setFontSize:?];
      [objc_opt_class() dayNumberOverlayFontSize:{-[CompactMonthWeekView compressedVerticalMode](self, "compressedVerticalMode")}];
      [(CompactMonthWeekDayNumber *)v5 setOverlayFontSize:?];
      [(NSArray *)i addObject:v5];
    }

    days = self->_days;
    self->_days = i;
  }

  [(CompactMonthWeekView *)self _updateDayFrames];
}

- (void)_initializeBackground
{
  v3 = objc_opt_new();
  backgroundView = self->_backgroundView;
  self->_backgroundView = v3;

  v5 = +[UIColor systemBackgroundColor];
  [(UIView *)self->_backgroundView setBackgroundColor:v5];

  [(CompactMonthWeekView *)self addSubview:self->_backgroundView];
  v6 = self->_backgroundView;

  [(CompactMonthWeekView *)self sendSubviewToBack:v6];
}

- (void)_initializeDaySummaries
{
  v3 = [NSMutableArray arrayWithCapacity:[(CompactMonthWeekView *)self _daysInAWeek]];
  if ([(CompactMonthWeekView *)self _daysInAWeek]>= 1)
  {
    v4 = 0;
    do
    {
      v5 = objc_alloc_init(SingleDaySummary);
      [(NSArray *)v3 addObject:v5];
      [(CompactMonthWeekView *)self addSubview:v5];

      ++v4;
    }

    while ([(CompactMonthWeekView *)self _daysInAWeek]> v4);
  }

  daySummaries = self->_daySummaries;
  self->_daySummaries = v3;
}

- (void)_updateDayFrames
{
  [(CompactMonthWeekView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(CompactMonthWeekView *)self useLayoutMargins])
  {
    [(CompactMonthWeekView *)self safeAreaInsets];
    v4 = v4 + v11;
    [(CompactMonthWeekView *)self safeAreaInsets];
    v13 = v12;
    [(CompactMonthWeekView *)self safeAreaInsets];
    v8 = v8 - (v13 + v14);
  }

  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  CGRectGetWidth(v23);
  CalRoundToScreenScale();
  v16 = v15;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  Height = CGRectGetHeight(v24);
  if ([(CompactMonthWeekView *)self _daysInAWeek])
  {
    v18 = 0;
    v19 = -1;
    do
    {
      v20 = v18;
      if ((CalTimeDirectionIsLeftToRight() & 1) == 0)
      {
        v20 = [(CompactMonthWeekView *)self _daysInAWeek]+ v19;
      }

      v21 = [(NSArray *)self->_days objectAtIndexedSubscript:v20];
      [v21 setFrame:{v4, 0.0, v16, Height}];

      v22 = [(NSArray *)self->_days objectAtIndexedSubscript:v20];
      [v22 updateOverlay];

      v4 = v16 + v4;
      ++v18;
      --v19;
    }

    while (v18 < [(CompactMonthWeekView *)self _daysInAWeek]);
  }
}

- (void)_initializeMonthNameLabel
{
  if (!self->_monthNameLabel)
  {
    v3 = objc_alloc_init(UILabel);
    v4 = +[CompactMonthViewController monthNameFont];
    [(UILabel *)v3 setFont:v4];

    if ([(CompactMonthWeekView *)self compressedVerticalMode])
    {
      +[UIColor clearColor];
    }

    else
    {
      +[UIColor systemBackgroundColor];
    }
    v5 = ;
    [(UILabel *)v3 setBackgroundColor:v5];

    [(UILabel *)v3 setHidden:1];
    [(UILabel *)v3 setUserInteractionEnabled:0];
    if (self->_weekNumberLabel)
    {
      [(CompactMonthWeekView *)self insertSubview:v3 belowSubview:?];
    }

    else
    {
      [(CompactMonthWeekView *)self addSubview:v3];
    }

    monthNameLabel = self->_monthNameLabel;
    self->_monthNameLabel = v3;
  }
}

- (double)monthWeekScale
{
  weekDelegate = [(CompactMonthWeekView *)self weekDelegate];

  if (!weekDelegate)
  {
    return 1.0;
  }

  weekDelegate2 = [(CompactMonthWeekView *)self weekDelegate];
  [weekDelegate2 monthWeekScale];
  v6 = v5;

  return v6;
}

+ (id)cachedCalculatedValues
{
  if (qword_100251AD0 != -1)
  {
    sub_1001706A8();
  }

  v3 = __cachedCalculatedValues;

  return v3;
}

+ (void)clearCalculatedValues
{
  +[EKUILargeTextUtilities clearCache];
  v2 = objc_opt_new();
  v3 = __cachedCalculatedValues;
  __cachedCalculatedValues = v2;

  +[MonthViewOccurrence clearCachedFonts];

  +[MonthWeekOccurrencesView clearMoreEventAttributes];
}

+ (id)weekNumberFont
{
  cachedCalculatedValues = [self cachedCalculatedValues];
  v3 = [cachedCalculatedValues objectForKeyedSubscript:weekDayFontKey];
  if (!v3)
  {
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:11.0 shouldScaleForSmallerSizes:14.0];
    v3 = [UIFont boldSystemFontOfSize:?];
    [cachedCalculatedValues setObject:v3 forKeyedSubscript:weekDayFontKey];
  }

  return v3;
}

+ (double)twoDigitWeekNumberWidth
{
  cachedCalculatedValues = [self cachedCalculatedValues];
  v4 = [cachedCalculatedValues objectForKeyedSubscript:twoDigitWeekNumberWidthKey];
  if (!v4)
  {
    weekNumberFont = [self weekNumberFont];
    v6 = objc_opt_new();
    [v6 setFont:weekNumberFont];
    v7 = CUIKLocalizedStringForInteger();
    [v6 setText:v7];

    [v6 sizeToFit];
    [v6 frame];
    v4 = [NSNumber numberWithDouble:CGRectGetWidth(v11)];
    [cachedCalculatedValues setObject:v4 forKeyedSubscript:twoDigitWeekNumberWidthKey];
  }

  [v4 doubleValue];
  v9 = v8;

  return v9;
}

+ (double)dayNumberLayerYOffsetCompressed:(BOOL)compressed containsFirstDayOfMonth:(BOOL)month
{
  monthCopy = month;
  compressedCopy = compressed;
  month = [NSString stringWithFormat:@"%@ %i %i", dayNumberLayerYOffsetKey, compressed, month];
  cachedCalculatedValues = [self cachedCalculatedValues];
  v9 = [cachedCalculatedValues objectForKeyedSubscript:month];
  if (!v9)
  {
    v10 = 0.0;
    if (monthCopy)
    {
      +[CompactMonthViewController topOfMonthNameLabelToGrayLineDistance];
      v10 = v11 + 0.0;
    }

    [self grayLineHeight];
    v13 = v10 + v12;
    +[CompactMonthWeekTodayCircle topOffset];
    v15 = 1.0;
    if (compressedCopy)
    {
      v15 = 2.0;
    }

    v16 = v13 + v14 / v15;
    [self heightOfCircleCompressed:compressedCopy];
    v18 = v16 + v17 * 0.5;
    [objc_opt_class() dayNumberFontSize:compressedCopy];
    [CompactMonthWeekDayNumber heightOfFrameForFontSize:?];
    v20 = v18 - v19 * 0.5;
    v21 = CUIKGetOverlayCalendar();

    if (v21)
    {
      [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:6.0 shouldScaleForSmallerSizes:6.0];
      v20 = v20 - v22;
    }

    v9 = [NSNumber numberWithDouble:v20];
    [cachedCalculatedValues setObject:v9 forKeyedSubscript:month];
  }

  [v9 doubleValue];
  v24 = v23;

  return v24;
}

+ (double)verticalEventPadding:(BOOL)padding
{
  result = 7.0;
  if (padding)
  {
    return 3.5;
  }

  return result;
}

+ (double)circleYOffsetCompressed:(BOOL)compressed containsFirstDayOfMonth:(BOOL)month
{
  monthCopy = month;
  compressedCopy = compressed;
  month = [NSString stringWithFormat:@"%@ %i %i", circleYOffsetKey, compressed, month];
  cachedCalculatedValues = [self cachedCalculatedValues];
  v9 = [cachedCalculatedValues objectForKeyedSubscript:month];
  if (!v9)
  {
    v10 = 0.0;
    if (monthCopy)
    {
      +[CompactMonthViewController topOfMonthNameLabelToGrayLineDistance];
      v10 = v11 + 0.0;
    }

    [self grayLineHeight];
    v13 = v10 + v12;
    +[CompactMonthWeekTodayCircle topOffset];
    v15 = 1.0;
    if (compressedCopy)
    {
      v15 = 2.0;
    }

    v9 = [NSNumber numberWithDouble:v13 + v14 / v15];
    [cachedCalculatedValues setObject:v9 forKeyedSubscript:month];
  }

  [v9 doubleValue];
  v17 = v16;

  return v17;
}

+ (double)heightOfCircleCompressed:(BOOL)compressed
{
  compressedCopy = compressed;
  usesRoundedRectInsteadOfCircle = [objc_opt_class() usesRoundedRectInsteadOfCircle];
  v5 = CUIKGetOverlayCalendar();
  v6 = v5;
  if (usesRoundedRectInsteadOfCircle)
  {
    v7 = @"abc";
    if (!v5)
    {
      v7 = 0;
    }

    v8 = v7;

    [objc_opt_class() dayNumberFontSize:compressedCopy];
    v10 = v9;
    [objc_opt_class() dayNumberOverlayFontSize:compressedCopy];
    [CompactMonthWeekTodayCircle roundedRectSizeForNumberString:@"99" overlayString:v8 fontSize:v10 overlayFontSize:v11];
    v13 = v12;

    return v13;
  }

  else
  {

    if (v6)
    {

      +[CompactMonthWeekTodayCircle circleDiameterWithOverlayLarge];
    }

    else if (compressedCopy)
    {

      +[CompactMonthWeekTodayCircle circleDiameterCompressed];
    }

    else
    {

      +[CompactMonthWeekTodayCircle circleDiameter];
    }
  }

  return result;
}

+ (double)distanceToBottomOfCircleCompressed:(BOOL)compressed containsFirstDay:(BOOL)day
{
  compressedCopy = compressed;
  [self circleYOffsetCompressed:compressed containsFirstDayOfMonth:day];
  v7 = v6;
  [self heightOfCircleCompressed:compressedCopy];
  return v7 + v8;
}

+ (double)heightForViewThatContainsFirstDayOfMonth:(BOOL)month compressed:(BOOL)compressed scale:(double)scale
{
  compressedCopy = compressed;
  monthCopy = month;
  [self grayLineHeight];
  v10 = v9;
  if (compressedCopy)
  {
    v11 = 50.0;
  }

  else
  {
    v11 = 68.0;
  }

  [self distanceToBottomOfCircleCompressed:compressedCopy containsFirstDay:0];
  v13 = v12 + 6.0;
  [self verticalEventPadding:compressedCopy];
  v15 = v13 + v14 * 2.0;
  if (v11 >= v15)
  {
    v15 = v11;
  }

  v16 = (v10 + v15) * scale;
  if (monthCopy)
  {
    +[CompactMonthViewController topOfMonthNameLabelToGrayLineDistance];
    return v16 + v17;
  }

  return v16;
}

+ (double)narrowScale
{
  cachedCalculatedValues = [self cachedCalculatedValues];
  v4 = [cachedCalculatedValues objectForKeyedSubscript:narrowScaleKey];
  if (!v4)
  {
    [self heightForViewThatContainsFirstDayOfMonth:0 compressed:0 scale:1.0];
    v6 = v5;
    [self distanceToBottomOfCircleCompressed:0 containsFirstDay:0];
    v8 = v7;
    +[MonthWeekOccurrencesView minNarrowOccurrenceHeight];
    v10 = v8 + v9;
    [self verticalEventPadding:0];
    v4 = [NSNumber numberWithDouble:(v10 + v11 * 2.0) / v6];
    [cachedCalculatedValues setObject:v4 forKeyedSubscript:narrowScaleKey];
  }

  [v4 doubleValue];
  v13 = v12;

  return v13;
}

+ (double)eventScale
{
  cachedCalculatedValues = [self cachedCalculatedValues];
  v4 = [cachedCalculatedValues objectForKeyedSubscript:eventScaleKey];
  if (!v4)
  {
    [self heightForViewThatContainsFirstDayOfMonth:0 compressed:0 scale:1.0];
    v6 = v5;
    [self distanceToBottomOfCircleCompressed:0 containsFirstDay:0];
    v8 = v7;
    +[MonthWeekOccurrencesView maxNarrowOccurrenceHeight];
    v10 = v8 + v9;
    [self verticalEventPadding:0];
    v4 = [NSNumber numberWithDouble:(v10 + v11 * 2.0) / v6];
    [cachedCalculatedValues setObject:v4 forKeyedSubscript:eventScaleKey];
  }

  [v4 doubleValue];
  v13 = v12;

  return v13;
}

+ (CGPoint)_roundedRectOriginForDayLayerFrame:(CGRect)frame roundedRectSize:(CGSize)size withOverlay:(BOOL)overlay compressed:(BOOL)compressed
{
  compressedCopy = compressed;
  overlayCopy = overlay;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  CGRectGetMidX(frame);
  CalRoundToScreenScale();
  v14 = v13;
  [self dayNumberFontSize:compressedCopy];
  v16 = v15;
  [self dayNumberOverlayFontSize:compressedCopy];
  v18 = v17;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  CGRectGetMinY(v23);
  [CompactMonthWeekDayNumber baselineOffsetFromTopOfLayerForFontSize:v16];
  [CompactMonthWeekTodayCircle roundedRectDayNumberBaselineOffsetWithOverlay:overlayCopy fontSize:v16 overlayFontSize:v18];
  CalRoundToScreenScale();
  v20 = v19;
  v21 = v14;
  result.y = v20;
  result.x = v21;
  return result;
}

+ (CGPoint)positionOfCircleInCellWithWidth:(double)width circleSize:(CGSize)size compressed:(BOOL)compressed containsFirstDayOfMonth:(BOOL)month
{
  monthCopy = month;
  compressedCopy = compressed;
  CalRoundToScreenScale();
  v10 = v9;
  [self circleYOffsetCompressed:compressedCopy containsFirstDayOfMonth:monthCopy];
  v12 = v11;
  v13 = v10;
  result.y = v12;
  result.x = v13;
  return result;
}

+ (CGRect)frameForDayCircleWithSize:(CGSize)size dayNumberLayerFrame:(CGRect)frame dayNumberFrame:(CGRect)numberFrame withOverlay:(BOOL)overlay compressed:(BOOL)compressed containsFirstDayOfMonth:(BOOL)month
{
  monthCopy = month;
  compressedCopy = compressed;
  overlayCopy = overlay;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v15 = size.height;
  v16 = size.width;
  if ([objc_opt_class() usesRoundedRectInsteadOfCircle])
  {
    [self _roundedRectOriginForDayLayerFrame:overlayCopy roundedRectSize:compressedCopy withOverlay:x compressed:{y, width, height, v16, v15}];
  }

  else
  {
    [self positionOfCircleInCellWithWidth:compressedCopy circleSize:monthCopy compressed:CGRectGetWidth(numberFrame) containsFirstDayOfMonth:{v16, v15}];
    v18 = numberFrame.origin.x + v20;
  }

  v21 = v16;
  v22 = v15;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

+ (CGRect)_circleFrameWithDayFrame:(CGRect)frame numberString:(id)string overlayString:(id)overlayString compressed:(BOOL)compressed containsFirstDay:(BOOL)day
{
  dayCopy = day;
  compressedCopy = compressed;
  stringCopy = string;
  overlayStringCopy = overlayString;
  +[CompactMonthWeekTodayCircle circleDiameter];
  if (overlayStringCopy)
  {
    if ([stringCopy length] <= 1 && objc_msgSend(overlayStringCopy, "length") < 3)
    {
      +[CompactMonthWeekTodayCircle circleDiameterWithOverlay];
    }

    else
    {
      +[CompactMonthWeekTodayCircle circleDiameterWithOverlayLarge];
    }

    goto LABEL_8;
  }

  v15 = v13;
  if (compressedCopy)
  {
    +[CompactMonthWeekTodayCircle circleDiameterCompressed];
LABEL_8:
    v15 = v14;
  }

  CalRoundToScreenScale();
  v17 = v16;
  [self circleYOffsetCompressed:compressedCopy containsFirstDayOfMonth:dayCopy];
  v19 = v18;

  v20 = v17;
  v21 = v19;
  v22 = v15;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

+ (CGRect)_roundedRectFrameWithDayFrame:(CGRect)frame dayLayerFrame:(CGRect)layerFrame numberString:(id)string overlayString:(id)overlayString compressed:(BOOL)compressed
{
  compressedCopy = compressed;
  height = layerFrame.size.height;
  width = layerFrame.size.width;
  y = layerFrame.origin.y;
  x = layerFrame.origin.x;
  overlayStringCopy = overlayString;
  stringCopy = string;
  [objc_opt_class() dayNumberFontSize:compressedCopy];
  v17 = v16;
  [objc_opt_class() dayNumberOverlayFontSize:compressedCopy];
  [CompactMonthWeekTodayCircle roundedRectSizeForNumberString:stringCopy overlayString:overlayStringCopy fontSize:v17 overlayFontSize:v18];
  v20 = v19;
  v22 = v21;

  [self _roundedRectOriginForDayLayerFrame:overlayStringCopy != 0 roundedRectSize:compressedCopy withOverlay:x compressed:{y, width, height, v20, v22}];
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

+ (CGRect)frameForCircleWithDayFrame:(CGRect)frame dayLayerFrame:(CGRect)layerFrame numberString:(id)string overlayString:(id)overlayString compressed:(BOOL)compressed containsFirstDay:(BOOL)day
{
  dayCopy = day;
  compressedCopy = compressed;
  height = layerFrame.size.height;
  width = layerFrame.size.width;
  y = layerFrame.origin.y;
  x = layerFrame.origin.x;
  v15 = frame.size.height;
  v16 = frame.size.width;
  v17 = frame.origin.y;
  v18 = frame.origin.x;
  overlayStringCopy = overlayString;
  stringCopy = string;
  if ([self usesRoundedRectInsteadOfCircle])
  {
    [self _roundedRectFrameWithDayFrame:stringCopy dayLayerFrame:overlayStringCopy numberString:compressedCopy overlayString:v18 compressed:{v17, v16, v15, x, y, width, height}];
  }

  else
  {
    [self _circleFrameWithDayFrame:stringCopy numberString:overlayStringCopy overlayString:compressedCopy compressed:dayCopy containsFirstDay:{v18, v17, v16, v15}];
  }

  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;

  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

+ (double)heightForViewWithCalendarDate:(id)date compressed:(BOOL)compressed windowSize:(CGSize)size scale:(double)scale
{
  compressedCopy = compressed;
  dateCopy = date;
  v9 = [objc_opt_class() _viewForCalendarDateContainsFirstDayOfMonth:dateCopy];

  v10 = objc_opt_class();

  [v10 heightForViewThatContainsFirstDayOfMonth:v9 compressed:compressedCopy scale:scale];
  return result;
}

+ (double)dayTypeBadgeDiameter:(BOOL)diameter
{
  result = 14.0;
  if (diameter)
  {
    return 12.0;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = objc_opt_class();
  containsFirstDayOfMonth = self->_containsFirstDayOfMonth;
  compressedVerticalMode = [(CompactMonthWeekView *)self compressedVerticalMode];
  [(CompactMonthWeekView *)self monthWeekScale];
  [v5 heightForViewThatContainsFirstDayOfMonth:containsFirstDayOfMonth compressed:compressedVerticalMode scale:?];
  v9 = v8;
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(CompactMonthWeekView *)self frame];
  if (vabdd_f64(width, v8) >= 2.22044605e-16)
  {
    self->_needToForceLayout = 1;
  }

  v9.receiver = self;
  v9.super_class = CompactMonthWeekView;
  [(CompactMonthWeekView *)&v9 setFrame:x, y, width, height];
}

- (void)layoutIfNeeded
{
  if (self->_needToForceLayout)
  {

    [(CompactMonthWeekView *)self layoutSubviews];
  }

  else
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = self;
    v4.super_class = CompactMonthWeekView;
    [(CompactMonthWeekView *)&v4 layoutIfNeeded];
  }
}

- (double)usableSpaceForOccurrencesWithHeight:(double)height
{
  [objc_opt_class() distanceToBottomOfCircleCompressed:-[CompactMonthWeekView compressedVerticalMode](self containsFirstDay:{"compressedVerticalMode"), -[CompactMonthWeekView containsFirstDayOfMonth](self, "containsFirstDayOfMonth")}];
  v6 = height - v5;
  [CompactMonthWeekView verticalEventPadding:[(CompactMonthWeekView *)self compressedVerticalMode]];
  return v6 + v7 * -2.0;
}

+ (unint64_t)eventRowsForScale:(double)scale
{
  [self eventScale];
  v6 = v5;
  [self heightForViewThatContainsFirstDayOfMonth:0 compressed:0 scale:1.0];
  v8 = v7;
  +[MonthViewOccurrence occurrenceHeight];
  v10 = v9;
  +[MonthViewOccurrence verticalSpaceBetweenOccurrences];
  result = 2;
  v13 = (v10 + v11) / v8;
  do
  {
    v6 = v13 + v6;
    ++result;
  }

  while (v6 < scale);
  return result;
}

+ (double)eventScaleForNumberOfRows:(unint64_t)rows
{
  [self eventScale];
  v6 = result;
  if (rows >= 4)
  {
    [self heightForViewThatContainsFirstDayOfMonth:0 compressed:0 scale:1.0];
    v8 = v7;
    +[MonthViewOccurrence occurrenceHeight];
    v10 = v9;
    +[MonthViewOccurrence verticalSpaceBetweenOccurrences];
    return v6 + (rows - 3) * ((v10 + v11) / v8);
  }

  return result;
}

- (unint64_t)nearestSnapBoundaryForScale:(double)scale
{
  if (![(CompactMonthWeekView *)self hideDaySummariesWithScale:?])
  {
    return 1;
  }

  if ([(CompactMonthWeekView *)self isNarrowWithScale:scale])
  {
    return 2;
  }

  v6 = objc_opt_class();

  return [v6 eventRowsForScale:scale];
}

- (void)layoutSubviews
{
  v86.receiver = self;
  v86.super_class = CompactMonthWeekView;
  [(CompactMonthWeekView *)&v86 layoutSubviews];
  self->_needToForceLayout = 0;
  [(CompactMonthWeekView *)self _updateDayFrames];
  +[CATransaction begin];
  if (![(CompactMonthWeekView *)self enableLayerAnimationsDuringLayout])
  {
    [CATransaction setDisableActions:1];
  }

  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0x47EFFFFFE0000000;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  v77[3] = 0;
  v75 = 0;
  v76[0] = &v75;
  v76[1] = 0x2020000000;
  v76[2] = -1;
  v73 = 0;
  v74[0] = &v73;
  v74[1] = 0x2020000000;
  v74[2] = -1;
  [objc_opt_class() dayNumberLayerYOffsetCompressed:-[CompactMonthWeekView compressedVerticalMode](self containsFirstDayOfMonth:{"compressedVerticalMode"), self->_containsFirstDayOfMonth}];
  v4 = v3;
  v5 = 0.0;
  if (self->_containsFirstDayOfMonth)
  {
    +[CompactMonthViewController topOfMonthNameLabelToGrayLineDistance];
    v5 = v6 + 0.0;
  }

  [(CompactMonthWeekView *)self monthWeekScale];
  self->_hideDaySummaries = [(CompactMonthWeekView *)self hideDaySummariesWithScale:?];
  [(CompactMonthWeekView *)self frame];
  [(CompactMonthWeekView *)self usableSpaceForOccurrencesWithHeight:v7];
  v9 = v8;
  days = self->_days;
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_1000CCA04;
  v72[3] = &unk_100210F88;
  v72[4] = self;
  v72[5] = &v75;
  v72[6] = &v73;
  v72[7] = &v78;
  v72[8] = v77;
  v72[9] = &v82;
  v72[10] = v4;
  *&v72[11] = v5;
  *&v72[12] = v8;
  [(NSArray *)days enumerateObjectsUsingBlock:v72];
  +[CATransaction commit];
  if (self->_containsFirstDayOfMonth)
  {
    height = self->_monthNameLabelFittingSize.height;
    v12 = [(NSArray *)self->_days objectAtIndexedSubscript:*(v76[0] + 24)];
    [v12 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v89.origin.x = v14;
    v89.origin.y = v16;
    v89.size.width = v18;
    v89.size.height = v20;
    CGRectGetMinX(v89);
    v90.origin.x = v14;
    v90.origin.y = v16;
    v90.size.width = v18;
    v90.size.height = v20;
    CGRectGetWidth(v90);
    CalRoundToScreenScale();
    x = v91.origin.x;
    width = self->_monthNameLabelFittingSize.width;
    v91.origin.y = 0.0;
    v91.size.width = width;
    v91.size.height = height;
    MinX = CGRectGetMinX(v91);
    [(CompactMonthWeekView *)self layoutMargins];
    if (MinX >= v24)
    {
      v92.origin.y = 0.0;
      v92.origin.x = x;
      v92.size.width = width;
      v92.size.height = height;
      MaxX = CGRectGetMaxX(v92);
      [(CompactMonthWeekView *)self bounds];
      v27 = CGRectGetMaxX(v93);
      [(CompactMonthWeekView *)self layoutMargins];
      if (MaxX > v27 - v28)
      {
        [(CompactMonthWeekView *)self bounds];
        v29 = CGRectGetMaxX(v94);
        [(CompactMonthWeekView *)self layoutMargins];
        v31 = v30;
        v95.origin.y = 0.0;
        v95.origin.x = x;
        v95.size.width = width;
        v95.size.height = height;
        x = v29 - v31 - CGRectGetWidth(v95);
      }
    }

    else
    {
      [(CompactMonthWeekView *)self layoutMargins];
      x = v25;
    }

    [(UILabel *)self->_monthNameLabel setFrame:x, 0.0, width, height];
  }

  v32 = v79[3];
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  if (IsLeftToRight)
  {
    v34 = &v75;
  }

  else
  {
    v34 = &v73;
  }

  v35 = *(v34[1] + 24);
  v36 = CalTimeDirectionIsLeftToRight();
  if (IsLeftToRight)
  {
    v37 = 0;
  }

  else
  {
    v37 = 6;
  }

  if (v36)
  {
    v38 = 6;
  }

  else
  {
    v38 = 0;
  }

  v39 = v74;
  if (!v36)
  {
    v39 = v76;
  }

  v40 = *(*v39 + 24);
  if (v35 == v37)
  {
    if (self->_showWeekNumber && CalTimeDirectionIsLeftToRight())
    {
      [(CompactMonthWeekView *)self safeAreaInsets];
      v42 = v41;
      [objc_opt_class() twoDigitWeekNumberWidth];
      v44 = v42 + 6.0 + v43;
      v83[3] = v83[3] - (v44 - v32);
      v32 = v44;
    }

    else
    {
      v83[3] = v79[3] + v83[3];
      v32 = 0.0;
    }
  }

  if (v40 == v38)
  {
    [(CompactMonthWeekView *)self bounds];
    v83[3] = CGRectGetMaxX(v96) - v32;
    if (self->_showWeekNumber && (CalTimeDirectionIsLeftToRight() & 1) == 0)
    {
      [(CompactMonthWeekView *)self safeAreaInsets];
      v46 = v45;
      [objc_opt_class() twoDigitWeekNumberWidth];
      v83[3] = v83[3] - (v46 + 6.0 + v47);
    }
  }

  [objc_opt_class() grayLineHeight];
  CalRoundRectToScreenScale();
  [(UIView *)self->_grayLine setFrame:?];
  [(CompactMonthWeekView *)self frame];
  [(UIView *)self->_backgroundView setFrame:v32, v5, v83[3], v48 - v5];
  if (self->_showWeekNumber)
  {
    [(UILabel *)self->_weekNumberLabel sizeToFit];
    [(UILabel *)self->_weekNumberLabel frame];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    if (CalTimeDirectionIsLeftToRight())
    {
      v97.origin.x = v50;
      v97.origin.y = v52;
      v97.size.width = v54;
      v97.size.height = v56;
      CGRectGetWidth(v97);
      CalRoundToScreenScale();
      v58 = fmax(v57, 0.0);
    }

    else
    {
      [(UIView *)self->_grayLine frame];
      CGRectGetMaxX(v98);
      CalRoundToScreenScale();
      v58 = v59;
    }

    v99.origin.x = v58;
    v99.origin.y = v52;
    v99.size.width = v54;
    v99.size.height = v56;
    CGRectGetHeight(v99);
    CalRoundToScreenScale();
    [(UILabel *)self->_weekNumberLabel setFrame:v58, v5 - v60, v54, v56];
  }

  [(CompactMonthWeekView *)self frame];
  v62 = v61;
  [CompactMonthWeekView verticalEventPadding:0];
  v64 = v63;
  [(CompactMonthWeekView *)self frame];
  [(MonthWeekOccurrencesView *)self->_occurrencesView setFrame:0.0, v62 - v9 - v64];
  v65 = 0;
  v66 = &v88;
  do
  {
    v67 = [(NSArray *)self->_days objectAtIndexedSubscript:v65];
    [v67 frame];
    [(CompactMonthWeekView *)self convertRect:self->_occurrencesView toView:?];
    *(v66 - 2) = v68;
    *(v66 - 1) = v69;
    *v66 = v70;
    v66[1] = v71;

    ++v65;
    v66 += 4;
  }

  while (v65 != 7);
  [(MonthWeekOccurrencesView *)self->_occurrencesView setDayFrames:v87];
  if (!self->_animating)
  {
    [(MonthWeekOccurrencesView *)self->_occurrencesView setHidden:!self->_hideDaySummaries];
  }

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(v77, 8);
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
}

- (BOOL)isNarrowWithScale:(double)scale
{
  +[CompactMonthWeekView narrowScale];
  if (v4 > scale)
  {
    return 0;
  }

  +[CompactMonthWeekView eventScale];
  return v6 > scale;
}

- (void)animateToScale:(double)scale fromScale:(double)fromScale completionBlock:(id)block
{
  blockCopy = block;
  v52 = [(CompactMonthWeekView *)self hideDaySummariesWithScale:fromScale];
  v9 = [(CompactMonthWeekView *)self hideDaySummariesWithScale:scale];
  v10 = v9 ^ 1;
  if ((v52 ^ 1) & 1) != 0 || ((v9 ^ 1))
  {
    v11 = self->_animationCounter + 1;
    self->_animationCounter = v11;
    [(CompactMonthWeekView *)self setEnableLayerAnimationsDuringLayout:1];
    if (self->_animating)
    {
      if (v52 != v9)
      {
        animationInfos = self->_animationInfos;
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_1000CDC58;
        v62[3] = &unk_100211028;
        v63 = v9 ^ 1;
        v62[4] = self;
        [(NSMutableDictionary *)animationInfos enumerateKeysAndObjectsUsingBlock:v62];
      }
    }

    else
    {
      v49 = v9;
      v50 = v11;
      self->_animating = 1;
      [(CompactMonthWeekView *)self layoutSubviews];
      [(MonthWeekOccurrencesView *)self->_occurrencesView layoutSubviews];
      v13 = objc_opt_new();
      days = self->_days;
      v75[0] = _NSConcreteStackBlock;
      v75[1] = 3221225472;
      v75[2] = sub_1000CD684;
      v75[3] = &unk_100210FB0;
      v75[4] = self;
      v15 = v13;
      v76 = v15;
      [(NSArray *)days enumerateObjectsUsingBlock:v75];
      v16 = objc_opt_new();
      v17 = self->_animationInfos;
      self->_animationInfos = v16;

      v18 = objc_opt_new();
      fadingInfos = self->_fadingInfos;
      self->_fadingInfos = v18;

      occurrenceContainer = [(MonthWeekOccurrencesView *)self->_occurrencesView occurrenceContainer];
      [occurrenceContainer setHidden:1];

      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3221225472;
      v74[2] = sub_1000CD814;
      v74[3] = &unk_100210FD8;
      v74[4] = self;
      v21 = objc_retainBlock(v74);
      firstOccurrencesForEachDay = [(MonthWeekOccurrencesView *)self->_occurrencesView firstOccurrencesForEachDay];
      firstOccurrenceDict = self->_firstOccurrenceDict;
      self->_firstOccurrenceDict = firstOccurrencesForEachDay;

      v24 = self->_firstOccurrenceDict;
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_1000CD958;
      v68[3] = &unk_100211000;
      v47 = v15;
      v69 = v47;
      v48 = v9 ^ 1;
      v72 = v9 ^ 1;
      v25 = v21;
      selfCopy = self;
      v71 = v25;
      v73 = v52 ^ 1;
      [(NSDictionary *)v24 enumerateKeysAndObjectsUsingBlock:v68];
      secondAndThirdOccurrencesForEachDay = [(MonthWeekOccurrencesView *)self->_occurrencesView secondAndThirdOccurrencesForEachDay];
      secondOccurrences = self->_secondOccurrences;
      self->_secondOccurrences = secondAndThirdOccurrencesForEachDay;

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      selfCopy2 = self;
      obj = self->_secondOccurrences;
      v29 = [(NSArray *)obj countByEnumeratingWithState:&v64 objects:v77 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v65;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v65 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v33 = *(*(&v64 + 1) + 8 * i);
            v34 = (v25[2])(v25, v33);
            v35 = objc_opt_new();
            [v35 setView:v34];
            [v35 setOccurrenceView:v33];
            if ((v52 & 1) == 0)
            {
              [v34 frame];
              v37 = v36;
              [v34 frame];
              v39 = v37 + v38 * 0.5;
              [v34 frame];
              v41 = v40;
              [v34 frame];
              [v34 setFrame:{v39, v41 + v42 * -2.0, 0.5, 0.5}];
              [v34 setAlpha:0.0];
            }

            [(NSMutableArray *)selfCopy2->_fadingInfos addObject:v35];
          }

          v30 = [(NSArray *)obj countByEnumeratingWithState:&v64 objects:v77 count:16];
        }

        while (v30);
      }

      self = selfCopy2;
      v11 = v50;
      v10 = v48;
      LOBYTE(v9) = v49;
    }

    self->_animating = 1;
    [(MonthWeekOccurrencesView *)self->_occurrencesView setAnimating:1];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1000CDE00;
    v60[3] = &unk_10020EAD8;
    v60[4] = self;
    v61 = v10;
    [UIView animateWithSpringDuration:131078 bounce:v60 initialSpringVelocity:0 delay:0.25 options:0.0 animations:0.0 completion:0.0];
    if (v9)
    {
      if (!self->_startedStage2Animation)
      {
        self->_startedStage2Animation = 1;
        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = sub_1000CE464;
        v57[3] = &unk_10020EB00;
        v57[4] = self;
        [UIView animateWithSpringDuration:196612 bounce:v57 initialSpringVelocity:0 delay:0.25 options:0.0 animations:0.0 completion:0.0];
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_1000CE5F4;
        v56[3] = &unk_10020EE00;
        v56[4] = self;
        v56[5] = v11;
        v45 = 0.150000006;
        v43 = 0.25;
        v44 = v56;
        goto LABEL_24;
      }

      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_1000CE2D0;
      v58[3] = &unk_10020EB00;
      v58[4] = self;
      v43 = 0.25;
      v44 = v58;
    }

    else
    {
      self->_startedStage2Animation = 0;
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_1000CE12C;
      v59[3] = &unk_10020EB00;
      v59[4] = self;
      v43 = 0.25;
      v44 = v59;
    }

    v45 = 0.0;
LABEL_24:
    [UIView animateWithSpringDuration:131078 bounce:v44 initialSpringVelocity:0 delay:v43 options:0.0 animations:0.0 completion:v45];
    v46 = dispatch_time(0, 450000005);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CE774;
    block[3] = &unk_1002110A0;
    v55 = v11;
    block[4] = self;
    v54 = blockCopy;
    dispatch_after(v46, &_dispatch_main_q, block);

    goto LABEL_25;
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

LABEL_25:
}

- (void)finishAnimations
{
  self->_animating = 0;
  [(MonthWeekOccurrencesView *)self->_occurrencesView setAnimating:0];
  [(CompactMonthWeekView *)self setEnableLayerAnimationsDuringLayout:0];
  self->_startedStage2Animation = 0;
  occurrenceContainer = [(MonthWeekOccurrencesView *)self->_occurrencesView occurrenceContainer];
  [occurrenceContainer setHidden:0];

  [(CompactMonthWeekView *)self monthWeekScale];
  v4 = [(CompactMonthWeekView *)self hideDaySummariesWithScale:?];
  v5 = 0.0;
  if (v4)
  {
    v5 = 1.0;
  }

  [(MonthWeekOccurrencesView *)self->_occurrencesView setAlpha:v5];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_fadingInfos;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        view = [*(*(&v13 + 1) + 8 * v10) view];
        [view removeFromSuperview];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)self->_fadingInfos removeAllObjects];
  [(MonthWeekOccurrencesView *)self->_occurrencesView layoutSubviews];
  [(NSMutableDictionary *)self->_animationInfos enumerateKeysAndObjectsUsingBlock:&stru_1002110E0];
  animationInfos = self->_animationInfos;
  self->_animationInfos = 0;

  [(CompactMonthWeekView *)self layoutSubviews];
}

- (void)pulseTodayCircle
{
  if (self->_today && ![(CompactMonthWeekView *)self disableTodayPulse])
  {
    if (self->_todayPulse)
    {
      [(CompactMonthWeekView *)self haltTodayPulse];
    }

    attachedTodayCircle = [(CompactMonthWeekDayNumber *)self->_today attachedTodayCircle];
    [attachedTodayCircle frame];
    v8 = [[EKUITodayCirclePulseView alloc] initWithFrame:{v4, v5, v6, v7}];
    todayPulse = self->_todayPulse;
    self->_todayPulse = v8;

    dayNumberString = [attachedTodayCircle dayNumberString];
    [(EKUITodayCirclePulseView *)self->_todayPulse setString:dayNumberString];

    [objc_opt_class() dayNumberFontSize:{-[CompactMonthWeekView compressedVerticalMode](self, "compressedVerticalMode")}];
    v11 = [CompactMonthWeekTodayCircle dayNumberFontForSize:?];
    [(EKUITodayCirclePulseView *)self->_todayPulse setFont:v11];

    [(EKUITodayCirclePulseView *)self->_todayPulse setTextOffsetFromCircle:0.0, -0.5];
    layer = [(CompactMonthWeekDayNumber *)self->_today layer];
    [layer frame];
    CalRoundToScreenScale();
    [(EKUITodayCirclePulseView *)self->_todayPulse setTextYOffset:?];

    [(EKUITodayCirclePulseView *)self->_todayPulse setCircleShouldFillFrame:1];
    -[EKUITodayCirclePulseView setUsesRoundedRectInsteadOfCircle:](self->_todayPulse, "setUsesRoundedRectInsteadOfCircle:", [objc_opt_class() usesRoundedRectInsteadOfCircle]);
    v13 = CUIKGetOverlayCalendar();

    if (v13)
    {
      overlayString = [attachedTodayCircle overlayString];
      [(EKUITodayCirclePulseView *)self->_todayPulse setOverlayString:overlayString];

      [objc_opt_class() dayNumberOverlayFontSize:{-[CompactMonthWeekView compressedVerticalMode](self, "compressedVerticalMode")}];
      v15 = [CompactMonthWeekTodayCircle dayOverlayFontForSize:?];
      [(EKUITodayCirclePulseView *)self->_todayPulse setOverlayFont:v15];
    }

    [(EKUITodayCirclePulseView *)self->_todayPulse layoutIfNeeded];
    [(CompactMonthWeekView *)self addSubview:self->_todayPulse];
    [attachedTodayCircle setHidden:1];
    v16 = self->_todayPulse;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000CED00;
    v18[3] = &unk_10020EC68;
    v19 = attachedTodayCircle;
    selfCopy = self;
    v17 = attachedTodayCircle;
    [(EKUITodayCirclePulseView *)v16 pulse:v18];
  }
}

- (void)haltTodayPulse
{
  [(EKUITodayCirclePulseView *)self->_todayPulse removeFromSuperview];
  todayPulse = self->_todayPulse;
  self->_todayPulse = 0;
}

- (void)prepareForReuse
{
  if (!self->_animating)
  {
    [(CompactMonthWeekView *)self _clearTodayHighlight];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = self->_daySummaries;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v9 + 1) + 8 * v7) setData:0 date:0 calendar:0 delegate:{0, v9}];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    today = self->_today;
    self->_today = 0;

    [(MonthWeekOccurrencesView *)self->_occurrencesView setHasDrawnBefore:0];
  }
}

- (void)setCompressedVerticalMode:(BOOL)mode
{
  if (self->_compressedVerticalMode == mode)
  {
    return;
  }

  modeCopy = mode;
  self->_compressedVerticalMode = mode;
  [(CompactMonthWeekView *)self setNeedsLayout];
  [(CompactMonthWeekView *)self setNeedsDisplay];
  today = self->_today;
  if (!today)
  {
    p_monthNameLabel = &self->_monthNameLabel;
    if (!self->_monthNameLabel)
    {
      goto LABEL_12;
    }

    if (modeCopy)
    {
      goto LABEL_8;
    }

LABEL_10:
    v9 = +[UIColor systemBackgroundColor];
    goto LABEL_11;
  }

  if (!modeCopy)
  {
    v10 = +[UIColor systemBackgroundColor];
    attachedTodayCircle = [(CompactMonthWeekDayNumber *)self->_today attachedTodayCircle];
    [attachedTodayCircle setBackgroundColor:v10];

    p_monthNameLabel = &self->_monthNameLabel;
    if (!self->_monthNameLabel)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  objc_storeStrong(&self->_selected, today);
  v6 = +[UIColor clearColor];
  attachedTodayCircle2 = [(CompactMonthWeekDayNumber *)self->_today attachedTodayCircle];
  [attachedTodayCircle2 setBackgroundColor:v6];

  p_monthNameLabel = &self->_monthNameLabel;
  if (self->_monthNameLabel)
  {
LABEL_8:
    v9 = +[UIColor clearColor];
LABEL_11:
    v12 = v9;
    [(UILabel *)*p_monthNameLabel setBackgroundColor:v9];
  }

LABEL_12:
  [(CompactMonthWeekView *)self _updateDayTypeBadgesWithBackgroundColor];
  [objc_opt_class() dayNumberFontSize:modeCopy];
  v14 = v13;
  [objc_opt_class() dayNumberOverlayFontSize:modeCopy];
  v16 = v15;
  [objc_opt_class() dayNumberFontSize:modeCopy ^ 1];
  if (v14 != v17 || ([objc_opt_class() dayNumberOverlayFontSize:modeCopy ^ 1], v16 != v18))
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = self->_days;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v29 + 1) + 8 * i);
          [v24 setFontSize:{v14, v29}];
          [v24 setOverlayFontSize:v16];
          [v24 updateDayNumber];
          [v24 updateOverlay];
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v21);
    }

    [(CompactMonthWeekDayNumber *)self->_today hideOverlayAndNumber:1];
    attachedTodayCircle3 = [(CompactMonthWeekDayNumber *)self->_today attachedTodayCircle];
    [attachedTodayCircle3 setFontSize:v14];

    attachedTodayCircle4 = [(CompactMonthWeekDayNumber *)self->_today attachedTodayCircle];
    [attachedTodayCircle4 setOverlayFontSize:v16];

    attachedTodayCircle5 = [(CompactMonthWeekDayNumber *)self->_selected attachedTodayCircle];
    [attachedTodayCircle5 setFontSize:v14];

    attachedTodayCircle6 = [(CompactMonthWeekDayNumber *)self->_selected attachedTodayCircle];
    [attachedTodayCircle6 setOverlayFontSize:v16];

    [(CompactMonthWeekView *)self setNeedsLayout];
  }

  [(CompactMonthWeekView *)self _forceReloadImagesForDayTypeBadges];
  if (self->_containsFirstDayOfMonth)
  {
    [(CompactMonthWeekView *)self _updateWeekNumberAnimated:1];
  }
}

- (CGRect)rectForCells
{
  [(CompactMonthWeekView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (self->_containsFirstDayOfMonth)
  {
    +[CompactMonthViewController topOfMonthNameLabelToGrayLineDistance];
    v6 = v6 + v11;
    v10 = v10 - v11;
  }

  v12 = v4;
  v13 = v6;
  v14 = v8;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)isTodayHighlightVisible
{
  attachedTodayCircle = [(CompactMonthWeekDayNumber *)self->_today attachedTodayCircle];
  drawCircle = [attachedTodayCircle drawCircle];

  return drawCircle;
}

- (CGRect)frameForTodayHighlight
{
  today = self->_today;
  if (today)
  {
    attachedTodayCircle = [(CompactMonthWeekDayNumber *)today attachedTodayCircle];
    [attachedTodayCircle frame];
    x = v4;
    y = v6;
    width = v8;
    height = v10;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)dayNumberCellFrames
{
  v3 = objc_alloc_init(NSMutableArray);
  days = self->_days;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CF45C;
  v7[3] = &unk_100211108;
  v5 = v3;
  v8 = v5;
  [(NSArray *)days enumerateObjectsUsingBlock:v7];

  return v5;
}

- (id)dayForPoint:(CGPoint)point
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000CF5E4;
  days = self->_days;
  v12 = sub_1000CF5F4;
  v13 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CF5FC;
  v6[3] = &unk_100211130;
  pointCopy = point;
  v6[4] = &v8;
  [(NSArray *)days enumerateObjectsUsingBlock:v6];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (int64_t)indexForPoint:(CGPoint)point
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  days = self->_days;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CF758;
  v6[3] = &unk_100211130;
  pointCopy = point;
  v6[4] = &v8;
  [(NSArray *)days enumerateObjectsUsingBlock:v6];
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

- (void)adjustHighlight:(id)highlight forDay:(id)day
{
  highlightCopy = highlight;
  dayCopy = day;
  today = self->_today;
  if (!today)
  {
    [highlightCopy setIsToday:0];
    goto LABEL_5;
  }

  calendarDate = [(CompactMonthWeekDayNumber *)today calendarDate];
  v10 = [calendarDate compare:dayCopy];

  [highlightCopy setIsToday:v10 == 0];
  if (v10)
  {
LABEL_5:
    calendar = self->_calendar;
    date = [dayCopy date];
    [highlightCopy setIsWeekend:{-[NSCalendar isDateInWeekend:](calendar, "isDateInWeekend:", date)}];
  }

  [dayCopy day];
  v13 = CUIKLocalizedStringForInteger();
  [highlightCopy setText:v13];
  v14 = CUIKGetOverlayCalendar();
  date2 = [dayCopy date];
  if (v14)
  {
    v16 = [CUIKDateStrings overlayShortStringForDate:date2 inCalendar:v14];
    v17 = [v14 components:1073741848 fromDate:date2];
    v18 = 0.0;
    if ([v17 day] != 1 || (v18 = 1.0, objc_msgSend(v17, "month") != 1) || (v19 = 1.5, objc_msgSend(v17, "isLeapMonth")))
    {
      v19 = v18;
    }

    traitCollection = [(CompactMonthWeekView *)self traitCollection];
    v21 = EKUIUsesLargeTextLayout();

    if (v21)
    {
      v19 = v19 + v19;
    }
  }

  else
  {
    v16 = 0;
    v19 = 0.0;
  }

  [highlightCopy setOverlayText:v16];
  [highlightCopy setUnderlineThickness:v19];
  v38 = 0;
  v39 = &v38;
  v40 = 0x4010000000;
  v41 = &unk_1001EBD39;
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v43 = size;
  v32 = 0;
  v33 = &v32;
  v34 = 0x4010000000;
  v35 = &unk_1001EBD39;
  v36 = origin;
  v37 = size;
  days = self->_days;
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_1000CFB84;
  v28 = &unk_100211158;
  v24 = dayCopy;
  v29 = v24;
  v30 = &v38;
  v31 = &v32;
  [(NSArray *)days enumerateObjectsUsingBlock:&v25];
  [objc_opt_class() dayNumberFontSize:{-[CompactMonthWeekView compressedVerticalMode](self, "compressedVerticalMode", v25, v26, v27, v28)}];
  [highlightCopy setFontSize:?];
  [objc_opt_class() dayNumberOverlayFontSize:{-[CompactMonthWeekView compressedVerticalMode](self, "compressedVerticalMode")}];
  [highlightCopy setOverlayFontSize:?];
  [highlightCopy setUsesRoundedRectInsteadOfCircle:{objc_msgSend(objc_opt_class(), "usesRoundedRectInsteadOfCircle")}];
  [(CompactMonthWeekView *)self frameForCircleWithDayFrame:v13 dayLayerFrame:v16 numberString:v39[4] overlayString:v39[5], v39[6], v39[7], v33[4], v33[5], v33[6], v33[7]];
  [highlightCopy setFrame:?];

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);
}

- (void)setCalendarDate:(id)date
{
  dateCopy = date;
  if (self->_startCalendarDate != dateCopy)
  {
    objc_storeStrong(&self->_startCalendarDate, date);
    self->_cellToStartDrawingIn = [objc_opt_class() _cellToStartDrawingInForViewWithCalendarDate:self->_startCalendarDate calendar:self->_calendar];
    self->_containsFirstDayOfMonth = [objc_opt_class() _viewForCalendarDateContainsFirstDayOfMonth:self->_startCalendarDate];
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 1;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_1000CF5E4;
    v26 = sub_1000CF5F4;
    v27 = self->_startCalendarDate;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_1000CF5E4;
    v20 = sub_1000CF5F4;
    v21 = v23[5];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    month = [v23[5] month];
    v7 = [(NSArray *)self->_days count];
    days = self->_days;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000CFF2C;
    v11[3] = &unk_100211180;
    v11[4] = self;
    v11[5] = v28;
    v11[6] = &v22;
    v11[7] = &v16;
    v11[8] = &v12;
    v11[9] = month;
    v11[10] = v7;
    [(NSArray *)days enumerateObjectsUsingBlock:v11];
    calendarDateForEndOfDay = [v17[5] calendarDateForEndOfDay];
    endCalendarDate = self->_endCalendarDate;
    self->_endCalendarDate = calendarDateForEndOfDay;

    [(CompactMonthWeekView *)self resetTodayBits];
    [(CompactMonthWeekView *)self setEventData:0 animated:0];
    [(CompactMonthWeekView *)self _updateWeekNumberAnimated:0];
    [(MonthWeekOccurrencesView *)self->_occurrencesView setStartDate:self->_startCalendarDate endDate:self->_endCalendarDate dayCount:v13[3]];
    [(CompactMonthWeekView *)self setNeedsLayout];
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(v28, 8);
  }
}

- (void)_updateWeekNumberAnimated:(BOOL)animated
{
  if (self->_weekNumberLabel)
  {
    animatedCopy = animated;
    v5 = CUIKCalendar();
    date = [(EKCalendarDate *)self->_startCalendarDate date];
    [v5 component:0x2000 fromDate:date];

    v7 = CUIKLocalizedStringForInteger();
    [(UILabel *)self->_weekNumberLabel setText:v7];

    v8 = [objc_opt_class() weekNumberColorForThisWeek:self->_containsToday];
    [(UILabel *)self->_weekNumberLabel setTextColor:v8];

    v9 = 1.0;
    if (self->_compressedVerticalMode)
    {
      if (self->_containsFirstDayOfMonth)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }
    }

    [(UILabel *)self->_weekNumberLabel alpha];
    if (v9 != v10)
    {
      if (animatedCopy)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1000D0220;
        v12[3] = &unk_10020EE00;
        v12[4] = self;
        *&v12[5] = v9;
        [UIView animateWithDuration:v12 animations:0.3];
      }

      else
      {
        weekNumberLabel = self->_weekNumberLabel;

        [(UILabel *)weekNumberLabel setAlpha:v9];
      }
    }
  }
}

- (void)resetTimeZone:(id)zone
{
  zoneCopy = zone;
  date = [(EKCalendarDate *)self->_startCalendarDate date];
  v6 = [EKCalendarDate calendarDateWithDate:date timeZone:zoneCopy];
  startCalendarDate = self->_startCalendarDate;
  self->_startCalendarDate = v6;

  date2 = [(EKCalendarDate *)self->_endCalendarDate date];
  v9 = [EKCalendarDate calendarDateWithDate:date2 timeZone:zoneCopy];
  endCalendarDate = self->_endCalendarDate;
  self->_endCalendarDate = v9;

  days = self->_days;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000D0370;
  v13[3] = &unk_100211108;
  v14 = zoneCopy;
  v12 = zoneCopy;
  [(NSArray *)days enumerateObjectsUsingBlock:v13];
}

- (id)makeDayCircleForDate:(id)date isToday:(BOOL)today
{
  todayCopy = today;
  dateCopy = date;
  v7 = [[CompactMonthWeekTodayCircle alloc] initWithCalendarDate:dateCopy];

  [(CompactMonthWeekTodayCircle *)v7 setUseTodayColors:todayCopy];
  if ([(CompactMonthWeekView *)self compressedVerticalMode])
  {
    +[UIColor clearColor];
  }

  else
  {
    +[UIColor systemBackgroundColor];
  }
  v8 = ;
  [(CompactMonthWeekTodayCircle *)v7 setBackgroundColor:v8];

  [(CompactMonthWeekTodayCircle *)v7 setCompressed:[(CompactMonthWeekView *)self compressedVerticalMode]];
  v9 = CUIKGetOverlayCalendar();
  [(CompactMonthWeekTodayCircle *)v7 setShowOverlay:v9 != 0];

  [objc_opt_class() dayNumberFontSize:{-[CompactMonthWeekView compressedVerticalMode](self, "compressedVerticalMode")}];
  [(CompactMonthWeekTodayCircle *)v7 setFontSize:?];
  [objc_opt_class() dayNumberOverlayFontSize:{-[CompactMonthWeekView compressedVerticalMode](self, "compressedVerticalMode")}];
  [(CompactMonthWeekTodayCircle *)v7 setOverlayFontSize:?];
  -[CompactMonthWeekTodayCircle setUsesRoundedRectInsteadOfCircle:](v7, "setUsesRoundedRectInsteadOfCircle:", [objc_opt_class() usesRoundedRectInsteadOfCircle]);
  [(CompactMonthWeekTodayCircle *)v7 sizeToFit];

  return v7;
}

- (void)resetTodayBits
{
  self->_containsToday = 0;
  v3 = CUIKTodayDate();
  date = [(EKCalendarDate *)self->_startCalendarDate date];
  date2 = [(EKCalendarDate *)self->_endCalendarDate date];
  if ([date compare:v3] == 1)
  {
    if (!self->_containsToday)
    {
LABEL_3:
      [(CompactMonthWeekView *)self _clearTodayHighlight];
      goto LABEL_9;
    }
  }

  else
  {
    v6 = [date2 compare:v3];
    self->_containsToday = v6 != -1;
    if (v6 == -1)
    {
      goto LABEL_3;
    }
  }

  days = self->_days;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000D0700;
  v13 = &unk_100210FB0;
  v14 = v3;
  selfCopy = self;
  [(NSArray *)days enumerateObjectsUsingBlock:&v10];
  [(CompactMonthWeekView *)self setNeedsLayout:v10];
  if ([(CompactMonthWeekView *)self compressedVerticalMode])
  {
    today = self->_today;
    if (self->_selected != today)
    {
      attachedTodayCircle = [(CompactMonthWeekDayNumber *)today attachedTodayCircle];
      [attachedTodayCircle setDrawCircle:0];

      [(CompactMonthWeekDayNumber *)self->_today hideOverlayAndNumber:1];
    }
  }

LABEL_9:
  [(CompactMonthWeekView *)self _reloadMonthNameLabel];
}

- (void)_clearTodayHighlight
{
  today = self->_today;
  if (today)
  {
    [(CompactMonthWeekDayNumber *)today hideOverlayAndNumber:0];
    attachedTodayCircle = [(CompactMonthWeekDayNumber *)self->_today attachedTodayCircle];
    [attachedTodayCircle removeFromSuperview];

    [(CompactMonthWeekDayNumber *)self->_today setAttachedTodayCircle:0];
    overlay = [(CompactMonthWeekDayNumber *)self->_today overlay];
    [overlay setHidden:0];

    v6 = self->_today;
    self->_today = 0;

    [(CompactMonthWeekView *)self setNeedsLayout];
  }
}

- (void)setEventData:(id)data animated:(BOOL)animated
{
  dataCopy = data;
  objc_storeStrong(&self->_eventData, data);
  +[CATransaction begin];
  if (!animated)
  {
    [CATransaction setDisableActions:1];
  }

  [(CompactMonthWeekView *)self _updateEventSummaries];
  +[CATransaction commit];
}

- (id)occurrenceAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(CompactMonthWeekView *)self layoutIfNeeded];
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

- (void)_updateEventSummaries
{
  if (!self->_animating)
  {
    traitCollection = [(CompactMonthWeekView *)self traitCollection];
    [UITraitCollection _setCurrentTraitCollection:traitCollection];

    if (self->_eventData)
    {
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x2020000000;
      v26[3] = 0;
      days = self->_days;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000D0EA8;
      v25[3] = &unk_1002111A8;
      v25[4] = v26;
      [(NSArray *)days enumerateObjectsUsingBlock:v25];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v5 = self->_daySummaries;
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v28 count:16];
      if (v6)
      {
        v7 = *v22;
        do
        {
          v8 = 0;
          do
          {
            if (*v22 != v7)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v21 + 1) + 8 * v8) setData:0 date:0 calendar:0 delegate:0];
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v28 count:16];
        }

        while (v6);
      }

      eventData = self->_eventData;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000D0F04;
      v20[3] = &unk_1002111D0;
      v20[4] = self;
      v20[5] = v26;
      [(NSArray *)eventData enumerateObjectsUsingBlock:v20];
      _Block_object_dispose(v26, 8);
    }

    else
    {
      v10 = self->_days;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000D1064;
      v19[3] = &unk_100211108;
      v19[4] = self;
      [(NSArray *)v10 enumerateObjectsUsingBlock:v19];
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v11 = self->_daySummaries;
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v15 objects:v27 count:16];
      if (v12)
      {
        v13 = *v16;
        do
        {
          v14 = 0;
          do
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v15 + 1) + 8 * v14) setAlpha:{0.0, v15}];
            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [(NSArray *)v11 countByEnumeratingWithState:&v15 objects:v27 count:16];
        }

        while (v12);
      }
    }
  }
}

- (void)setSelectedDay:(id)day animated:(BOOL)animated
{
  animatedCopy = animated;
  dayCopy = day;
  selected = self->_selected;
  if (!selected)
  {
    goto LABEL_16;
  }

  calendarDate = [(CompactMonthWeekDayNumber *)selected calendarDate];
  v9 = calendarDate;
  if (dayCopy && calendarDate)
  {
    calendarDate2 = [(CompactMonthWeekDayNumber *)self->_selected calendarDate];
    year = [calendarDate2 year];
    if (year == [dayCopy year])
    {
      calendarDate3 = [(CompactMonthWeekDayNumber *)self->_selected calendarDate];
      selfCopy = self;
      month = [calendarDate3 month];
      if (month == [dayCopy month])
      {
        calendarDate4 = [(CompactMonthWeekDayNumber *)selfCopy->_selected calendarDate];
        v16 = [calendarDate4 day];
        v17 = [dayCopy day];

        self = selfCopy;
        if (v16 == v17)
        {
          goto LABEL_46;
        }

        goto LABEL_11;
      }

      self = selfCopy;
    }
  }

LABEL_11:
  today = self->_today;
  if (self->_selected != today)
  {
    attachedTodayCircle = [(CompactMonthWeekDayNumber *)self->_selected attachedTodayCircle];
    [attachedTodayCircle removeFromSuperview];

    [(CompactMonthWeekDayNumber *)self->_selected setAttachedTodayCircle:0];
    [(CompactMonthWeekDayNumber *)self->_selected hideOverlayAndNumber:0];
    today = self->_today;
  }

  if (today)
  {
    attachedTodayCircle2 = [(CompactMonthWeekDayNumber *)today attachedTodayCircle];
    [attachedTodayCircle2 setDrawCircle:0];

    [(CompactMonthWeekDayNumber *)self->_today hideOverlayAndNumber:1];
  }

  v21 = self->_selected;
  self->_selected = 0;

LABEL_16:
  if (!dayCopy)
  {
    goto LABEL_46;
  }

  [dayCopy absoluteTime];
  v23 = v22;
  calendarDate5 = [(CompactMonthWeekView *)self calendarDate];
  [(CompactMonthWeekDayNumber *)calendarDate5 absoluteTime];
  if (v23 < v25)
  {
    goto LABEL_45;
  }

  [dayCopy absoluteTime];
  v27 = v26;
  endCalendarDate = [(CompactMonthWeekView *)self endCalendarDate];
  [endCalendarDate absoluteTime];
  v30 = v29;

  if (v27 > v30)
  {
    goto LABEL_46;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = self->_days;
  calendarDate5 = [(NSArray *)obj countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (!calendarDate5)
  {
LABEL_43:

    goto LABEL_45;
  }

  selfCopy2 = self;
  v56 = animatedCopy;
  v31 = *v61;
LABEL_21:
  v32 = 0;
  while (1)
  {
    if (*v61 != v31)
    {
      objc_enumerationMutation(obj);
    }

    v33 = *(*(&v60 + 1) + 8 * v32);
    calendarDate6 = [v33 calendarDate];
    if (!calendarDate6)
    {
      goto LABEL_30;
    }

    v35 = calendarDate6;
    calendarDate7 = [v33 calendarDate];
    month2 = [calendarDate7 month];
    if (month2 == [dayCopy month])
    {
      break;
    }

LABEL_30:
    if (calendarDate5 == ++v32)
    {
      calendarDate5 = [(NSArray *)obj countByEnumeratingWithState:&v60 objects:v64 count:16];
      if (calendarDate5)
      {
        goto LABEL_21;
      }

      goto LABEL_43;
    }
  }

  calendarDate8 = [v33 calendarDate];
  v39 = [calendarDate8 day];
  v40 = dayCopy;
  v41 = [dayCopy day];

  v42 = v39 == v41;
  dayCopy = v40;
  if (!v42)
  {
    goto LABEL_30;
  }

  calendarDate5 = v33;

  if (calendarDate5)
  {
    v43 = selfCopy2->_today;
    if (calendarDate5 == v43)
    {
      attachedTodayCircle3 = [(CompactMonthWeekDayNumber *)v43 attachedTodayCircle];
      [attachedTodayCircle3 setDrawCircle:1];

      objc_storeStrong(&selfCopy2->_selected, selfCopy2->_today);
      [(CompactMonthWeekDayNumber *)selfCopy2->_today hideOverlayAndNumber:1];
    }

    else
    {
      v44 = [(CompactMonthWeekView *)selfCopy2 makeDayCircleForDate:v40 isToday:0];
      [(CompactMonthWeekView *)selfCopy2 addSubview:v44];
      [(CompactMonthWeekDayNumber *)calendarDate5 setAttachedTodayCircle:v44];
      objc_storeStrong(&selfCopy2->_selected, v33);
      overlay = [(CompactMonthWeekDayNumber *)calendarDate5 overlay];

      if (overlay)
      {
        overlay2 = [(CompactMonthWeekDayNumber *)calendarDate5 overlay];
        [overlay2 setHidden:1];
      }

      dayTypeBadge = [(CompactMonthWeekDayNumber *)calendarDate5 dayTypeBadge];
      superlayer = [dayTypeBadge superlayer];

      if (superlayer)
      {
        dayTypeBadge2 = [(CompactMonthWeekDayNumber *)calendarDate5 dayTypeBadge];
        superlayer2 = [dayTypeBadge2 superlayer];

        dayTypeBadge3 = [(CompactMonthWeekDayNumber *)calendarDate5 dayTypeBadge];
        [dayTypeBadge3 removeFromSuperlayer];

        dayTypeBadge4 = [(CompactMonthWeekDayNumber *)calendarDate5 dayTypeBadge];
        [superlayer2 addSublayer:dayTypeBadge4];
      }
    }

    if (v56)
    {
      attachedTodayCircle4 = [(CompactMonthWeekDayNumber *)calendarDate5 attachedTodayCircle];
      [attachedTodayCircle4 setAlpha:0.0];

      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_1000D15F8;
      v58[3] = &unk_10020EB00;
      calendarDate5 = calendarDate5;
      v59 = calendarDate5;
      [UIView animateWithDuration:v58 animations:0.2];
      obj = v59;
      dayCopy = v40;
      goto LABEL_43;
    }

    dayCopy = v40;
  }

LABEL_45:

LABEL_46:
}

- (id)visibleDaySummaryViews
{
  if (self->_hideDaySummaries)
  {
    v2 = 0;
  }

  else
  {
    v2 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_daySummaries count]];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = self->_daySummaries;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (([v9 isHidden] & 1) == 0)
          {
            [v9 alpha];
            if (v10 > 0.01)
            {
              superview = [v9 superview];

              if (superview)
              {
                [v2 addObject:v9];
              }
            }
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  return v2;
}

+ (double)dayNumberFontSize:(BOOL)size
{
  v4 = +[NSLocale currentLocale];
  v5 = [v4 objectForKey:NSLocaleLanguageCode];

  v6 = CUIKLocalizedStringForInteger();
  v7 = [v6 isEqual:@"൧"];

  if (([v5 isEqual:@"ml"] & v7) != 0)
  {
    v8 = 14.0;
  }

  else
  {
    v8 = 18.0;
  }

  if (size)
  {
    v9 = CUIKGetOverlayCalendar();
    v10 = 28.0;
    if (v9)
    {
      v10 = 23.0;
    }

    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:v8 shouldScaleForSmallerSizes:v10];
    v12 = v11;
  }

  else
  {
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:v8 shouldScaleForSmallerSizes:28.0];
    v12 = v13;
  }

  return v12;
}

+ (double)dayNumberOverlayFontSize:(BOOL)size
{
  v3 = 12.5;
  if (!size)
  {
    v3 = 15.5;
  }

  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:10.0 shouldScaleForSmallerSizes:v3];
  return result;
}

+ (BOOL)usesRoundedRectInsteadOfCircle
{
  v2 = +[UITraitCollection currentTraitCollection];
  preferredContentSizeCategory = [v2 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryAccessibilityMedium);

  if (v4 == NSOrderedAscending)
  {
    return 0;
  }

  return EKUIUsesRoundedRectsInsteadOfCircles();
}

- (void)_updateSingleDaySummaryForDayIndex:(int64_t)index withData:(id)data date:(id)date calendar:(id)calendar
{
  dataCopy = data;
  dateCopy = date;
  calendarCopy = calendar;
  if ((index & 0x8000000000000000) == 0 && !self->_animating && [(NSArray *)self->_daySummaries count]> index)
  {
    v12 = [(NSArray *)self->_daySummaries objectAtIndex:index];
    weekDelegate = [(CompactMonthWeekView *)self weekDelegate];
    [v12 setData:dataCopy date:dateCopy calendar:calendarCopy delegate:weekDelegate];

    if ([dataCopy count])
    {
      v14 = 1.0;
      if (self->_hideDaySummaries)
      {
        v14 = 0.0;
      }
    }

    else
    {
      v14 = 0.0;
    }

    [v12 setAlpha:v14];
  }
}

+ (id)dayTypeBadgeBackgroundColorForVerticallyCompressedMode:(BOOL)mode
{
  if (mode)
  {
    v3 = +[UIColor quaternarySystemFillColor];
    v4 = +[UIColor systemBackgroundColor];
    v14 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v11 = 0.0;
    [v3 getRed:&v14 green:&v13 blue:&v12 alpha:&v11];
    v9 = 0.0;
    v10 = 0.0;
    v7 = 0;
    v8 = 0.0;
    [v4 getRed:&v10 green:&v9 blue:&v8 alpha:&v7];
    v5 = [UIColor colorWithRed:v10 * (1.0 - v11) + v14 * v11 green:(1.0 - v11) * v9 + v13 * v11 blue:(1.0 - v11) * v8 + v12 * v11 alpha:1.0];
  }

  else
  {
    v5 = +[UIColor systemBackgroundColor];
  }

  return v5;
}

- (void)_updateDayTypeBadgeForDayNumber:(id)number withDayType:(int64_t)type color:(id)color locale:(id)locale forceImageUpdate:(BOOL)update
{
  numberCopy = number;
  colorCopy = color;
  localeCopy = locale;
  dayTypeBadge = [numberCopy dayTypeBadge];
  if (colorCopy && (type | 2) == 3)
  {
    if ([numberCopy dayBadgeType] == type && !update)
    {
      dayBadgeColor = [numberCopy dayBadgeColor];
      if ([colorCopy isEqual:dayBadgeColor])
      {
        dayBadgeLocale = [numberCopy dayBadgeLocale];
        v17 = [localeCopy isEqual:dayBadgeLocale];

        if (v17)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }
    }

    [numberCopy setDayBadgeType:type];
    [numberCopy setDayBadgeColor:colorCopy];
    [numberCopy setDayBadgeLocale:localeCopy];
    [objc_opt_class() dayTypeBadgeDiameter:{-[CompactMonthWeekView compressedVerticalMode](self, "compressedVerticalMode")}];
    traitCollection = [(CompactMonthWeekView *)self traitCollection];
    [traitCollection userInterfaceStyle];

    if (type == 3)
    {
      v20 = BadgeImageForAlternateWorkday();
    }

    else
    {
      if (type != 1)
      {
        v21 = 0;
        goto LABEL_17;
      }

      v20 = BadgeImageForHoliday();
    }

    v21 = v20;
LABEL_17:
    v22 = [objc_opt_class() dayTypeBadgeBackgroundColorForVerticallyCompressedMode:{-[CompactMonthWeekView compressedVerticalMode](self, "compressedVerticalMode")}];
    [dayTypeBadge setBackgroundColor:{objc_msgSend(v22, "cgColor")}];

    [dayTypeBadge setContents:{objc_msgSend(v21, "CGImage")}];
    superlayer = [dayTypeBadge superlayer];

    if (!superlayer)
    {
      layer = [(CompactMonthWeekView *)self layer];
      [layer addSublayer:dayTypeBadge];
    }

    goto LABEL_20;
  }

  [numberCopy setDayBadgeType:type];
  [numberCopy setDayBadgeColor:0];
  superlayer2 = [dayTypeBadge superlayer];

  if (superlayer2)
  {
    [dayTypeBadge removeFromSuperlayer];
  }

LABEL_20:
}

- (void)_forceReloadImagesForDayTypeBadges
{
  if (self->_eventData)
  {
    traitCollection = [(CompactMonthWeekView *)self traitCollection];
    [UITraitCollection _setCurrentTraitCollection:traitCollection];

    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2020000000;
    v8[3] = 0;
    days = self->_days;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000D1FD8;
    v7[3] = &unk_1002111A8;
    v7[4] = v8;
    [(NSArray *)days enumerateObjectsUsingBlock:v7];
    eventData = self->_eventData;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000D2034;
    v6[3] = &unk_1002111D0;
    v6[4] = self;
    v6[5] = v8;
    [(NSArray *)eventData enumerateObjectsUsingBlock:v6];
    _Block_object_dispose(v8, 8);
  }
}

- (void)_updateDayTypeBadgesWithBackgroundColor
{
  if (self->_eventData)
  {
    v3 = [objc_opt_class() dayTypeBadgeBackgroundColorForVerticallyCompressedMode:{-[CompactMonthWeekView compressedVerticalMode](self, "compressedVerticalMode")}];
    days = self->_days;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000D21F4;
    v6[3] = &unk_100211108;
    v7 = v3;
    v5 = v3;
    [(NSArray *)days enumerateObjectsUsingBlock:v6];
  }
}

- (void)_layoutDayTypeBadgeForDayNumber:(id)number yOffset:(double)offset
{
  numberCopy = number;
  [numberCopy frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  layer = [numberCopy layer];
  [layer frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [(CompactMonthWeekView *)self frameForCircleWithDayFrame:@"99" dayLayerFrame:0 numberString:v7 overlayString:v9, v11, v13, v16, v18, v20, v22];
  [objc_opt_class() dayTypeBadgeFrameFromDayNumberFrame:-[CompactMonthWeekView compressedVerticalMode](self compressed:{"compressedVerticalMode"), v23, v24, v25, v26}];
  v28 = v27;
  CalRoundRectToScreenScale();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  dayTypeBadge = [numberCopy dayTypeBadge];
  [dayTypeBadge setFrame:{v30, v32, v34, v36}];

  dayTypeBadge2 = [numberCopy dayTypeBadge];

  [dayTypeBadge2 setCornerRadius:v28 * 0.5];
}

+ (CGRect)dayTypeBadgeFrameFromDayNumberFrame:(CGRect)frame compressed:(BOOL)compressed
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [objc_opt_class() dayTypeBadgeDiameter:compressed];
  v9 = v8;
  IsRightToLeft = CUIKLocaleIsRightToLeft();
  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  if (IsRightToLeft)
  {
    MinX = CGRectGetMinX(*&v11);
  }

  else
  {
    MinX = CGRectGetMaxX(*&v11);
  }

  v16 = MinX + v9 * -0.5;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v17 = CGRectGetMinY(v21) + -1.0;
  v18 = v16;
  v19 = v9;
  v20 = v9;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v17;
  result.origin.x = v18;
  return result;
}

- (CGRect)frameForCircleWithDayFrame:(CGRect)frame dayLayerFrame:(CGRect)layerFrame numberString:(id)string overlayString:(id)overlayString
{
  height = layerFrame.size.height;
  width = layerFrame.size.width;
  y = layerFrame.origin.y;
  x = layerFrame.origin.x;
  v11 = frame.size.height;
  v12 = frame.size.width;
  v13 = frame.origin.y;
  v14 = frame.origin.x;
  overlayStringCopy = overlayString;
  stringCopy = string;
  [objc_opt_class() frameForCircleWithDayFrame:stringCopy dayLayerFrame:overlayStringCopy numberString:-[CompactMonthWeekView compressedVerticalMode](self overlayString:"compressedVerticalMode") compressed:-[CompactMonthWeekView containsFirstDayOfMonth](self containsFirstDay:{"containsFirstDayOfMonth"), v14, v13, v12, v11, x, y, width, height}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)_setUpInteraction
{
  v3 = [[UIPointerInteraction alloc] initWithDelegate:self];
  [(CompactMonthWeekView *)self addInteraction:v3];
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  requestCopy = request;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = self->_days;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        if ([(CompactMonthWeekView *)self compressedVerticalMode])
        {
          attachedTodayCircle = [v12 attachedTodayCircle];
          drawCircle = [attachedTodayCircle drawCircle];
        }

        else
        {
          drawCircle = 0;
        }

        if ([v12 representsActualDate])
        {
          calendarDate = [v12 calendarDate];
          v16 = calendarDate;
          if ((calendarDate == 0) | drawCircle & 1)
          {
          }

          else
          {
            [v12 frame];
            v18 = v17;
            v20 = v19;
            v22 = v21;
            v24 = v23;
            [requestCopy location];
            v36.x = v25;
            v36.y = v26;
            v37.origin.x = v18;
            v37.origin.y = v20;
            v37.size.width = v22;
            v37.size.height = v24;
            v27 = CGRectContainsPoint(v37, v36);

            if (v27)
            {
              if (self->_containsFirstDayOfMonth)
              {
                +[CompactMonthViewController topOfMonthNameLabelToGrayLineDistance];
                [objc_opt_class() grayLineHeight];
              }

              [v12 frame];
              v28 = [UIPointerRegion regionWithRect:0 identifier:?];
              goto LABEL_19;
            }
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v28 = 0;
LABEL_19:

  return v28;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  [regionCopy rect];
  MidX = CGRectGetMidX(v93);
  v84 = regionCopy;
  [regionCopy rect];
  MidY = CGRectGetMidY(v94);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  selfCopy = self;
  v9 = self->_days;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v86 objects:v90 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *v87;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v87 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v86 + 1) + 8 * i);
        if ([v17 representsActualDate])
        {
          calendarDate = [v17 calendarDate];
          if (calendarDate)
          {
            v19 = calendarDate;
            [v17 frame];
            v92.x = MidX;
            v92.y = MidY;
            v20 = CGRectContainsPoint(v95, v92);

            if (v20)
            {
              v21 = v17;

              attachedTodayCircle = [v21 attachedTodayCircle];

              if (attachedTodayCircle)
              {
                attachedTodayCircle2 = [v21 attachedTodayCircle];

                v24 = +[UIColor clearColor];
                [attachedTodayCircle2 setBackgroundColor:v24];

                v13 = 1;
                v12 = v21;
                v14 = attachedTodayCircle2;
              }

              else
              {
                v12 = v21;
              }
            }
          }
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v86 objects:v90 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  calendarDate2 = [v12 calendarDate];
  [calendarDate2 day];

  v26 = CUIKLocalizedStringForInteger();
  v27 = CUIKGetOverlayCalendar();
  if (v27)
  {
    calendarDate3 = [v12 calendarDate];
    date = [calendarDate3 date];
    v30 = [CUIKDateStrings overlayShortStringForDate:date inCalendar:v27];
  }

  else
  {
    v30 = 0;
  }

  v31 = selfCopy;
  [v12 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  layer = [v12 layer];
  [layer frame];
  [(CompactMonthWeekView *)selfCopy frameForCircleWithDayFrame:v26 dayLayerFrame:v30 numberString:v33 overlayString:v35, v37, v39, v41, v42, v43, v44];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v96.origin.x = v46;
  v96.origin.y = v48;
  v96.size.width = v50;
  v96.size.height = v52;
  v53 = CGRectGetMidX(v96);
  v97.origin.x = v46;
  v97.origin.y = v48;
  v97.size.width = v50;
  v97.size.height = v52;
  v54 = CGRectGetMidY(v97);
  v80 = v26;
  v83 = v30;
  if ((v13 & 1) == 0)
  {
    layer2 = [v12 layer];
    isHidden = [layer2 isHidden];

    overlay = [v12 overlay];
    layer3 = [overlay layer];
    isHidden2 = [layer3 isHidden];

    layer4 = [v12 layer];
    [layer4 setHidden:0];

    overlay2 = [v12 overlay];
    layer5 = [overlay2 layer];
    [layer5 setHidden:0];

    v63 = createImageViewFromView();

    layer6 = [v12 layer];
    [layer6 setHidden:isHidden];

    overlay3 = [v12 overlay];
    layer7 = [overlay3 layer];
    [layer7 setHidden:isHidden2];

    v67 = +[UIColor clearColor];
    [v63 setBackgroundColor:v67];

    [v63 setFrame:{v46, v48, v50, v52}];
    v14 = v63;
  }

  v68 = objc_alloc_init(UIPreviewParameters);
  v69 = [[UIPreviewTarget alloc] initWithContainer:v31 center:{v53, v54}];
  v70 = [[UITargetedPreview alloc] initWithView:v14 parameters:v68 target:v69];
  v71 = [UIPointerHighlightEffect effectWithPreview:v70];
  if (+[CompactMonthWeekView usesRoundedRectInsteadOfCircle])
  {
    v72 = EKUILargeTextRoundedRectCornerRadius;
  }

  else
  {
    v72 = v50 * 0.5;
  }

  if (+[CompactMonthWeekView usesRoundedRectInsteadOfCircle])
  {
    v73 = v52;
  }

  else
  {
    v73 = v52 + 1.0;
  }

  v74 = [UIPointerShape shapeWithRoundedRect:v46 cornerRadius:v48, v50, v73, v72];
  attachedTodayCircle3 = [v12 attachedTodayCircle];
  drawCircle = [attachedTodayCircle3 drawCircle];

  if (drawCircle)
  {
    v77 = [UIPointerLiftEffect effectWithPreview:v70];

    v74 = 0;
    v71 = v77;
  }

  v78 = [UIPointerStyle styleWithEffect:v71 shape:v74];

  return v78;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  regionCopy = region;
  [regionCopy rect];
  MidX = CGRectGetMidX(v25);
  [regionCopy rect];
  MidY = CGRectGetMidY(v26);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = self->_days;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v19 + 1) + 8 * v13);
      [v14 frame];
      v24.x = MidX;
      v24.y = MidY;
      if (CGRectContainsPoint(v27, v24))
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v15 = v14;

    if (!v15)
    {
      goto LABEL_13;
    }

    layer = [(NSArray *)v15 layer];
    [layer setHidden:1];

    overlay = [(NSArray *)v15 overlay];
    layer2 = [overlay layer];
    [layer2 setHidden:1];

    v9 = v15;
  }

LABEL_12:

LABEL_13:
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  regionCopy = region;
  animatorCopy = animator;
  [regionCopy rect];
  MidX = CGRectGetMidX(v30);
  [regionCopy rect];
  MidY = CGRectGetMidY(v31);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = self->_days;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v21 = animatorCopy;
    v14 = *v25;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        [(CompactMonthWeekDayNumber *)v16 frame];
        v29.x = MidX;
        v29.y = MidY;
        if (CGRectContainsPoint(v32, v29) && v16 != self->_today)
        {
          attachedTodayCircle = [(CompactMonthWeekDayNumber *)v16 attachedTodayCircle];
          drawCircle = [attachedTodayCircle drawCircle];

          if ((drawCircle & 1) == 0)
          {
            v19 = v16;
            goto LABEL_13;
          }
        }
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v19 = 0;
LABEL_13:
    animatorCopy = v21;
  }

  else
  {
    v19 = 0;
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000D3214;
  v22[3] = &unk_10020EB98;
  v23 = v19;
  v20 = v19;
  [animatorCopy addCompletion:v22];
}

+ (int64_t)_cellToStartDrawingInForViewWithCalendarDate:(id)date calendar:(id)calendar
{
  calendarCopy = calendar;
  date = [date date];
  [calendarCopy rangeOfUnit:512 inUnit:4096 forDate:date];
  v8 = v7;
  v9 = [calendarCopy components:528 fromDate:date];

  v10 = CUIKOneIndexedWeekStart();
  weekday = [v9 weekday];
  v12 = &weekday[v8 - v10];
  if (weekday > v10)
  {
    v12 = &weekday[-v10];
  }

  if (weekday == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  return v13;
}

+ (BOOL)_viewForCalendarDateContainsFirstDayOfMonth:(id)month
{
  monthCopy = month;
  calendarDateForMonth = [monthCopy calendarDateForMonth];
  month = [calendarDateForMonth month];
  if (month == [monthCopy month])
  {
    v6 = [calendarDateForMonth day];
    v7 = v6 == [monthCopy day];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_reloadMonthNameLabel
{
  containsFirstDayOfMonth = self->_containsFirstDayOfMonth;
  monthNameLabel = self->_monthNameLabel;
  if (containsFirstDayOfMonth)
  {
    if (!monthNameLabel)
    {
      [(CompactMonthWeekView *)self _initializeMonthNameLabel];
      monthNameLabel = self->_monthNameLabel;
    }

    [(UILabel *)monthNameLabel setHidden:0];
    v5 = CUIKTodayDate();
    date = [(EKCalendarDate *)self->_startCalendarDate date];
    calendarDateForEndOfMonth = [(EKCalendarDate *)self->_startCalendarDate calendarDateForEndOfMonth];
    date2 = [calendarDateForEndOfMonth date];

    v9 = 0;
    if ([date compare:v5] != 1)
    {
      v9 = [date2 compare:v5] != -1;
    }

    date3 = [(EKCalendarDate *)self->_startCalendarDate date];
    v11 = CUIKStringForMonth();

    v12 = +[CompactMonthViewController monthNameFont];
    [(UILabel *)self->_monthNameLabel setFont:v12];

    LODWORD(v12) = CUIKCurrentLocaleRequiresIndianLanguageAdjustments();
    v13 = CUIKCurrentLocaleRequiresUnabbrevatedMonthNames();
    if (v12)
    {
      date4 = [(EKCalendarDate *)self->_startCalendarDate date];
      v15 = CUIKLongStringForMonth();
    }

    else
    {
      if (!v13)
      {
        goto LABEL_15;
      }

      v26 = date2;
      _monthLabelColumnIndex = [(CompactMonthWeekView *)self _monthLabelColumnIndex];
      v17 = [(CompactMonthWeekView *)self _daysInAWeek]- 1;
      _monthLabelColumnIndex2 = [(CompactMonthWeekView *)self _monthLabelColumnIndex];
      date5 = [(EKCalendarDate *)self->_startCalendarDate date];
      v16 = CUIKLongStringForMonth();

      if (_monthLabelColumnIndex == v17 || !_monthLabelColumnIndex2)
      {
        date2 = v26;
        goto LABEL_9;
      }

      v15 = v16;
      date4 = v11;
      v11 = v15;
      date2 = v26;
    }

    v16 = v11;
    v11 = v15;
LABEL_9:

LABEL_15:
    v20 = +[NSLocale currentLocale];
    v21 = [v11 capitalizedStringWithLocale:v20];

    [(UILabel *)self->_monthNameLabel setText:v21];
    if (v9)
    {
      CalendarAppTintColor();
    }

    else
    {
      +[UIColor labelColor];
    }
    v22 = ;
    [(UILabel *)self->_monthNameLabel setTextColor:v22];

    [(UILabel *)self->_monthNameLabel sizeToFit];
    [(UILabel *)self->_monthNameLabel bounds];
    self->_monthNameLabelFittingSize.width = v23;
    self->_monthNameLabelFittingSize.height = v24;

    goto LABEL_19;
  }

  [(UILabel *)monthNameLabel setText:0];
  [(UILabel *)self->_monthNameLabel setHidden:1];
LABEL_19:

  [(CompactMonthWeekView *)self setNeedsLayout];
}

- (id)monthNameLabel
{
  monthNameLabel = self->_monthNameLabel;
  if (!monthNameLabel)
  {
    [(CompactMonthWeekView *)self _initializeMonthNameLabel];
    monthNameLabel = self->_monthNameLabel;
  }

  return monthNameLabel;
}

- (unint64_t)_monthLabelColumnIndex
{
  if (!self->_containsFirstDayOfMonth)
  {
    return 0;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FFFFFFFLL;
  days = self->_days;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D37CC;
  v5[3] = &unk_1002111A8;
  v5[4] = &v6;
  [(NSArray *)days enumerateObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isBackgroundScene
{
  window = [(CompactMonthWeekView *)self window];
  windowScene = [window windowScene];
  v4 = [windowScene activationState] == 2;

  return v4;
}

- (CGRect)frameForOccurrence:(id)occurrence onDay:(id)day
{
  dayCopy = day;
  occurrenceCopy = occurrence;
  [(CompactMonthWeekView *)self layoutIfNeeded];
  [(MonthWeekOccurrencesView *)self->_occurrencesView frameForOccurrence:occurrenceCopy onDay:dayCopy];
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
    [(CompactMonthWeekView *)self convertRect:self->_occurrencesView fromView:v9, v11, v13, v15];
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)frameForOccurrenceAfterLastOnDay:(id)day
{
  dayCopy = day;
  [(CompactMonthWeekView *)self layoutIfNeeded];
  [(MonthWeekOccurrencesView *)self->_occurrencesView frameForOccurrenceAfterLastOnDay:dayCopy];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(CompactMonthWeekView *)self convertRect:self->_occurrencesView fromView:v6, v8, v10, v12];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(CompactMonthWeekView *)self bounds];
  v22 = v21;
  v28.origin.x = v14;
  v28.origin.y = v16;
  v28.size.width = v18;
  v28.size.height = v20;
  MaxY = CGRectGetMaxY(v28);
  v24 = v22 - v20;
  if (MaxY <= v22)
  {
    v24 = v16;
  }

  v25 = v14;
  v26 = v18;
  v27 = v20;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v24;
  result.origin.x = v25;
  return result;
}

- (void)setHighlightedDayRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (qword_100251AE8 != -1)
  {
    sub_1001706BC();
  }

  traitCollection = [(CompactMonthWeekView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v8 = &qword_100251AE0;
  if (userInterfaceStyle != 2)
  {
    v8 = &qword_100251AD8;
  }

  v9 = *v8;

  dayCount = [(MonthWeekOccurrencesView *)self->_occurrencesView dayCount];
  if (location + length <= dayCount)
  {
    v11 = length;
  }

  else
  {
    v11 = dayCount - location;
  }

  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = length;
  }

  else
  {
    v12 = v11;
  }

  if (location != self->_highlightedDayRange.location || v12 != self->_highlightedDayRange.length)
  {
    self->_highlightedDayRange.location = location;
    self->_highlightedDayRange.length = v12;
    if (!self->_highlightedDays)
    {
      v14 = [[NSMutableDictionary alloc] initWithCapacity:7];
      highlightedDays = self->_highlightedDays;
      self->_highlightedDays = v14;
    }

    v52 = v9;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    selfCopy = self;
    v16 = self->_days;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v67;
      while (2)
      {
        v21 = 0;
        v22 = v19;
        v19 += v18;
        do
        {
          if (*v67 != v20)
          {
            objc_enumerationMutation(v16);
          }

          calendarDate = [*(*(&v66 + 1) + 8 * v21) calendarDate];

          if (calendarDate)
          {
            v19 = v22;
            goto LABEL_28;
          }

          ++v22;
          v21 = v21 + 1;
        }

        while (v18 != v21);
        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v66 objects:v71 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_28:

    [(CompactMonthWeekView *)selfCopy rectForCells];
    v25 = v24;
    v27 = v26;
    v55 = [(NSMutableDictionary *)selfCopy->_highlightedDays mutableCopy];
    if (v12 && location < v12 + location)
    {
      v28 = location + v19;
      do
      {
        v29 = [NSNumber numberWithUnsignedInteger:location];
        v30 = [(NSMutableDictionary *)selfCopy->_highlightedDays objectForKey:v29];
        if (v30)
        {
          v31 = v30;
          [v55 removeObjectForKey:v29];
        }

        else
        {
          v32 = [(NSArray *)selfCopy->_days objectAtIndexedSubscript:v28];
          [v32 frame];
          v34 = v33;
          v36 = v35;

          [objc_opt_class() grayLineHeight];
          v38 = v37;
          [objc_opt_class() grayLineHeight];
          v40 = v39;
          if (v28 + 1 < [(NSArray *)selfCopy->_days count])
          {
            v41 = [(NSArray *)selfCopy->_days objectAtIndexedSubscript:v28 + 1];
            [v41 frame];
            v43 = v42;

            v36 = v43 - v34;
          }

          v44 = [[UIView alloc] initWithFrame:{v34, v25 + v38, v36, v27 - v40}];
          [v44 setBackgroundColor:v9];
          [v44 setAlpha:0.0];
          [(CompactMonthWeekView *)selfCopy addSubview:v44];
          v64[0] = _NSConcreteStackBlock;
          v64[1] = 3221225472;
          v64[2] = sub_1000D40AC;
          v64[3] = &unk_10020EB00;
          v31 = v44;
          v65 = v31;
          [UIView animateWithDuration:2 delay:v64 options:0 animations:0.2 completion:0.0];
          [(NSMutableDictionary *)selfCopy->_highlightedDays setObject:v31 forKey:v29];
        }

        ++location;
        ++v28;
        --v12;
      }

      while (v12);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = [v55 allKeys];
    v45 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v61;
      do
      {
        for (i = 0; i != v46; i = i + 1)
        {
          if (*v61 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v60 + 1) + 8 * i);
          v50 = [v55 objectForKey:v49];
          [(NSMutableDictionary *)selfCopy->_highlightedDays removeObjectForKey:v49];
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_1000D40B8;
          v58[3] = &unk_10020EB00;
          v59 = v50;
          v56[0] = _NSConcreteStackBlock;
          v56[1] = 3221225472;
          v56[2] = sub_1000D40C4;
          v56[3] = &unk_10020EB98;
          v57 = v59;
          v51 = v59;
          [UIView animateWithDuration:6 delay:v58 options:v56 animations:0.2 completion:0.0];
        }

        v46 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
      }

      while (v46);
    }

    v9 = v52;
  }
}

- (id)newFeedbackViewForDraggingOccurrence:(id)occurrence atPoint:(CGPoint)point
{
  x = point.x;
  occurrenceCopy = occurrence;
  if (x < 0.0)
  {
    x = 0.0;
  }

  [(CompactMonthWeekView *)self frame];
  MaxX = CGRectGetMaxX(v29);
  if (x > MaxX)
  {
    [(CompactMonthWeekView *)self frame];
    MaxX = CGRectGetMaxX(v30);
  }

  startCalendarDate = [occurrenceCopy startCalendarDate];
  [startCalendarDate absoluteTime];
  v10 = v9;
  [(EKCalendarDate *)self->_startCalendarDate absoluteTime];
  v12 = v11;

  if (v10 >= v12)
  {
    startCalendarDate2 = [occurrenceCopy startCalendarDate];
  }

  else
  {
    startCalendarDate2 = self->_startCalendarDate;
  }

  v14 = startCalendarDate2;
  v15 = [(MonthWeekOccurrencesView *)self->_occurrencesView occurrenceViewForOccurrence:occurrenceCopy onDay:startCalendarDate2];
  [v15 setSelected:1];
  v16 = kDraggedEventShadowOpacity;
  layer = [v15 layer];
  *&v18 = v16;
  [layer setShadowOpacity:v18];

  DraggedEventShadowOffset();
  v20 = v19;
  v22 = v21;
  layer2 = [v15 layer];
  [layer2 setShadowOffset:{v20, v22}];

  v24 = kDraggedEventShadowRadius;
  layer3 = [v15 layer];
  [layer3 setShadowRadius:v24];

  v26 = DraggedEventShadowColor();
  layer4 = [v15 layer];
  [layer4 setShadowColor:v26];

  return v15;
}

- (CompactMonthWeekViewDelegate)weekDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_weekDelegate);

  return WeakRetained;
}

@end