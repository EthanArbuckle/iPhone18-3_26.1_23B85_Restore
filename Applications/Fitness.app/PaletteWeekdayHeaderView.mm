@interface PaletteWeekdayHeaderView
- (BOOL)_shouldUseVeryShortWeekdays;
- (PaletteWeekdayHeaderView)initWithFrame:(CGRect)frame;
- (double)_weekdayLabelWidth;
- (void)adjustWeekLabelsByOffset:(int64_t)offset;
- (void)highlightWeekdayLabelForDateAndSetDay:(id)day;
- (void)layoutSubviews;
- (void)setIsExpanded:(BOOL)expanded;
@end

@implementation PaletteWeekdayHeaderView

- (PaletteWeekdayHeaderView)initWithFrame:(CGRect)frame
{
  v25.receiver = self;
  v25.super_class = PaletteWeekdayHeaderView;
  v3 = [(PaletteWeekdayHeaderView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[NSMutableArray array];
    weekdayLabels = v3->_weekdayLabels;
    v3->_weekdayLabels = v4;

    v6 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 24.0}];
    weekdayView = v3->_weekdayView;
    v3->_weekdayView = v6;

    v8 = [UIFont systemFontOfSize:11.0 weight:UIFontWeightSemibold];
    weekdaysFont = v3->_weekdaysFont;
    v3->_weekdaysFont = v8;

    v10 = HKDaysInAWeek;
    if (HKDaysInAWeek)
    {
      v11 = HKDaysInAWeek;
      do
      {
        v12 = objc_alloc_init(WeekPaletteTappableDay);
        v13 = v3->_weekdaysFont;
        v14 = +[UIColor secondaryLabelColor];
        [(WeekPaletteTappableDay *)v12 setFont:v13 textColor:v14];

        [(NSMutableArray *)v3->_weekdayLabels addObject:v12];
        [(UIView *)v3->_weekdayView addSubview:v12];

        --v11;
      }

      while (v11);
    }

    [(PaletteWeekdayHeaderView *)v3 addSubview:v3->_weekdayView];
    v15 = objc_alloc_init(NSDateFormatter);
    if ([(PaletteWeekdayHeaderView *)v3 _shouldUseVeryShortWeekdays])
    {
      [v15 veryShortWeekdaySymbols];
    }

    else
    {
      [v15 shortWeekdaySymbols];
    }
    v16 = ;
    v17 = HKFirstDayOfWeekForWeeklyGoalCalculations();
    if (v10)
    {
      v18 = v17;
      for (i = 0; i != v10; ++i)
      {
        v20 = [(NSMutableArray *)v3->_weekdayLabels objectAtIndexedSubscript:i];
        [v20 setIndex:v18 % v10];
        v21 = [v16 objectAtIndexedSubscript:(v18 - 1) % v10];
        weekDayLabel = [v20 weekDayLabel];
        [weekDayLabel setText:v21];

        ++v18;
      }
    }

    v23 = +[NSDate date];
    [(PaletteWeekdayHeaderView *)v3 highlightWeekdayLabelForDateAndSetDay:v23];
  }

  return v3;
}

- (void)adjustWeekLabelsByOffset:(int64_t)offset
{
  for (i = self->_weekdayLabels; ; i = self->_weekdayLabels)
  {
    firstObject = [(NSMutableArray *)i firstObject];
    index = [firstObject index];

    if (index == 2)
    {
      break;
    }

    weekdayLabels = self->_weekdayLabels;
    lastObject = [(NSMutableArray *)weekdayLabels lastObject];
    [(NSMutableArray *)weekdayLabels insertObject:lastObject atIndex:0];

    [(NSMutableArray *)self->_weekdayLabels removeLastObject];
  }

  if (offset >= 1)
  {
    do
    {
      v10 = self->_weekdayLabels;
      lastObject2 = [(NSMutableArray *)v10 lastObject];
      [(NSMutableArray *)v10 insertObject:lastObject2 atIndex:0];

      [(NSMutableArray *)self->_weekdayLabels removeLastObject];
      --offset;
    }

    while (offset);
  }

  [(PaletteWeekdayHeaderView *)self setNeedsLayout];
}

- (BOOL)_shouldUseVeryShortWeekdays
{
  v2 = +[NSLocale currentLocale];
  languageCode = [v2 languageCode];
  v4 = [languageCode isEqualToString:@"ar"];

  return v4 ^ 1;
}

- (double)_weekdayLabelWidth
{
  v2 = HKDaysInAWeek;
  v3 = 20.0;
  if (HKDaysInAWeek)
  {
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->_weekdayLabels objectAtIndexedSubscript:v5];
      weekDayLabel = [v6 weekDayLabel];
      text = [weekDayLabel text];
      weekdaysFont = self->_weekdaysFont;
      v14 = NSFontAttributeName;
      v15 = weekdaysFont;
      v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      [text sizeWithAttributes:v10];
      v12 = v11;

      if (v3 < v12)
      {
        v3 = v12;
      }

      ++v5;
    }

    while (v2 != v5);
  }

  result = v3 + 8.0;
  if (v3 <= 20.0)
  {
    return v3;
  }

  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PaletteWeekdayHeaderView;
  [(PaletteWeekdayHeaderView *)&v8 layoutSubviews];
  [(PaletteWeekdayHeaderView *)self _weekdayLabelWidth];
  v4 = HKDaysInAWeek;
  if (HKDaysInAWeek)
  {
    v5 = v3;
    v6 = 0;
    do
    {
      v7 = [(NSMutableArray *)self->_weekdayLabels objectAtIndexedSubscript:v6];
      [(PaletteWeekdayHeaderView *)self centerXForElementAt:v6 width:v5 percent:0.0];
      [v7 setFrame:?];

      ++v6;
    }

    while (v4 != v6);
  }
}

- (void)setIsExpanded:(BOOL)expanded
{
  self->_isExpanded = expanded;
  if (!expanded)
  {
    [(WeekPaletteTappableDay *)self->_highlightedDay setCircleHidden:1 updateCircleColor:0];
    markedAsTodayDay = self->_markedAsTodayDay;

    [(WeekPaletteTappableDay *)markedAsTodayDay setTextColorHighlighted:0];
  }
}

- (void)highlightWeekdayLabelForDateAndSetDay:(id)day
{
  dayCopy = day;
  v16 = +[NSCalendar currentCalendar];
  v5 = [v16 component:512 fromDate:dayCopy];
  v6 = HKDaysInAWeek;
  v15 = v6 - HKFirstDayOfWeekForWeeklyGoalCalculations();
  v7 = &v5[v15];
  v8 = +[NSDate date];
  [v16 setFirstWeekday:HKFirstDayOfWeekForWeeklyGoalCalculations()];
  v9 = [v16 isDate:dayCopy equalToDate:v8 toUnitGranularity:0x2000];
  v14 = [v16 component:512 fromDate:v8];
  v10 = [v16 isDate:dayCopy inSameDayAsDate:v8];

  [(WeekPaletteTappableDay *)self->_highlightedDay setCircleHidden:1 updateCircleColor:v10];
  [(WeekPaletteTappableDay *)self->_markedAsTodayDay setTextColorHighlighted:0];
  v11 = [(NSMutableArray *)self->_weekdayLabels objectAtIndexedSubscript:v7 % 7];
  [v11 setCircleHidden:0 updateCircleColor:v10];
  objc_storeStrong(&self->_highlightedDay, v11);
  if ((v10 & 1) == 0 && v9)
  {
    v12 = [(NSMutableArray *)self->_weekdayLabels objectAtIndexedSubscript:(v14 + v15) % 7];
    [(WeekPaletteTappableDay *)v12 setTextColorHighlighted:1];
    markedAsTodayDay = self->_markedAsTodayDay;
    self->_markedAsTodayDay = v12;
  }
}

@end