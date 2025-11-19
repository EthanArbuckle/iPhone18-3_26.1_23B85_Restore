@interface MonthWeekView
- (MonthWeekView)initWithDateCache:(id)a3;
- (double)_yValueForCellAtIndex:(int64_t)a3;
- (void)layoutSubviews;
- (void)pressedOnCalendarDay:(int64_t)a3 cell:(id)a4 down:(BOOL)a5;
- (void)selectedCalendarDay:(id)a3;
- (void)setHasWorkout:(BOOL)a3 onDayIndex:(unint64_t)a4;
- (void)setMonthWeekStart:(id)a3;
@end

@implementation MonthWeekView

- (MonthWeekView)initWithDateCache:(id)a3
{
  v8.receiver = self;
  v8.super_class = MonthWeekView;
  v3 = [(MonthWeekView *)&v8 initWithDateCache:a3];
  v4 = v3;
  if (v3)
  {
    [(MonthWeekView *)v3 setLeadingMargin:5.0];
    [(MonthWeekView *)v4 setDateTopMargin:3.0];
    [(MonthWeekView *)v4 setDateBottomMargin:3.0];
    [(MonthWeekView *)v4 setDateDiameter:25.0];
    [(MonthWeekView *)v4 setMonthTitleTopMargin:25.0];
    [(MonthWeekView *)v4 setMonthTitleBottomMargin:2.0];
    [(MonthWeekView *)v4 setAdditionalSpacingPerRow:3.0 + 40.0];
    v5 = +[NSMutableArray array];
    summaryIndexes = v4->_summaryIndexes;
    v4->_summaryIndexes = v5;
  }

  return v4;
}

- (double)_yValueForCellAtIndex:(int64_t)a3
{
  [(MonthWeekView *)self dateTopMargin];
  v6 = v5;
  v7 = [(MonthWeekView *)self monthTitleView];
  [v7 frame];
  v9 = v8;
  [(MonthWeekView *)self monthTitleTopMargin];
  v11 = v10 + v9;
  [(MonthWeekView *)self monthTitleBottomMargin];
  v13 = v12 + v11;

  if (![(MonthWeekView *)self firstDayOfMonthCellIndex])
  {
    [(MonthWeekView *)self dateTopMargin];
    return v6 + v13 + v15;
  }

  if ([(MonthWeekView *)self firstDayOfMonthCellIndex]>= 1 && [(MonthWeekView *)self firstDayOfMonthCellIndex]<= a3)
  {
    [(MonthWeekView *)self dateTopMargin];
    v15 = 25.0 + 40.0 + v14 * 3.0;
    return v6 + v13 + v15;
  }

  return v6;
}

- (void)setMonthWeekStart:(id)a3
{
  v17.receiver = self;
  v17.super_class = MonthWeekView;
  [(MonthWeekView *)&v17 setMonthWeekStart:a3];
  [(NSMutableArray *)self->_summaryIndexes removeAllObjects];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(MonthWeekView *)self dayCells];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) date];
        v10 = sub_1000EA7A8(v9);

        summaryIndexes = self->_summaryIndexes;
        v12 = [NSNumber numberWithLongLong:v10];
        [(NSMutableArray *)summaryIndexes addObject:v12];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = MonthWeekView;
  [(MonthWeekView *)&v22 layoutSubviews];
  [(MonthWeekView *)self bounds];
  [(MonthWeekView *)self leadingMargin];
  v3 = [(MonthWeekView *)self dayCells];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000B62F0;
  v21[3] = &unk_10083AA98;
  v21[4] = self;
  [v3 enumerateObjectsUsingBlock:v21];

  if ([(MonthWeekView *)self containsMonthTitle])
  {
    [(MonthWeekView *)self dateTopMargin];
    v5 = v4;
    [(MonthWeekView *)self monthTitleTopMargin];
    v7 = v5 + v6;
    if ([(MonthWeekView *)self firstDayOfMonthCellIndex]>= 1)
    {
      [(MonthWeekView *)self dateTopMargin];
      v7 = v7 + v8 * 2.0 + 25.0 + 40.0;
    }

    v9 = [(MonthWeekView *)self monthTitleView];
    [v9 frame];
    v11 = v10;

    [(MonthWeekView *)self leadingMargin];
    [(MonthWeekView *)self firstDayOfMonthCellIndex];
    UIRoundToViewScale();
    v13 = v12;
    if (v12 < 0.0)
    {
      [(MonthWeekView *)self leadingMargin];
      v13 = v14;
    }

    [(MonthWeekView *)self bounds];
    if (v11 + v13 > v15)
    {
      [(MonthWeekView *)self bounds];
      v17 = v16 - v11;
      [(MonthWeekView *)self leadingMargin];
      v13 = v17 - v18;
    }

    v19 = [(MonthWeekView *)self monthTitleView];
    v20 = [(MonthWeekView *)self monthTitleView];
    [v20 frame];
    [v19 setFrame:{v13, v7, v11}];
  }
}

- (void)pressedOnCalendarDay:(int64_t)a3 cell:(id)a4 down:(BOOL)a5
{
  v5 = a5;
  v9 = a4;
  if (([v9 isFutureDay] & 1) == 0)
  {
    [v9 pressToTransition:v5];
    v8 = [(MonthWeekView *)self delegate];
    [v8 week:self pressedOnDay:a3 down:v5];
  }
}

- (void)selectedCalendarDay:(id)a3
{
  v5 = a3;
  if (([v5 isFutureDay] & 1) == 0)
  {
    [v5 pressToTransition:0];
    v4 = [(MonthWeekView *)self delegate];
    [v4 week:self cellSelected:v5];
  }
}

- (void)setHasWorkout:(BOOL)a3 onDayIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [(MonthWeekView *)self dayCells];
  v7 = [v6 objectAtIndex:a4];

  [v7 setHasWorkout:v5];
}

@end