@interface MonthWeekView
- (MonthWeekView)initWithDateCache:(id)cache;
- (double)_yValueForCellAtIndex:(int64_t)index;
- (void)layoutSubviews;
- (void)pressedOnCalendarDay:(int64_t)day cell:(id)cell down:(BOOL)down;
- (void)selectedCalendarDay:(id)day;
- (void)setHasWorkout:(BOOL)workout onDayIndex:(unint64_t)index;
- (void)setMonthWeekStart:(id)start;
@end

@implementation MonthWeekView

- (MonthWeekView)initWithDateCache:(id)cache
{
  v8.receiver = self;
  v8.super_class = MonthWeekView;
  v3 = [(MonthWeekView *)&v8 initWithDateCache:cache];
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

- (double)_yValueForCellAtIndex:(int64_t)index
{
  [(MonthWeekView *)self dateTopMargin];
  v6 = v5;
  monthTitleView = [(MonthWeekView *)self monthTitleView];
  [monthTitleView frame];
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

  if ([(MonthWeekView *)self firstDayOfMonthCellIndex]>= 1 && [(MonthWeekView *)self firstDayOfMonthCellIndex]<= index)
  {
    [(MonthWeekView *)self dateTopMargin];
    v15 = 25.0 + 40.0 + v14 * 3.0;
    return v6 + v13 + v15;
  }

  return v6;
}

- (void)setMonthWeekStart:(id)start
{
  v17.receiver = self;
  v17.super_class = MonthWeekView;
  [(MonthWeekView *)&v17 setMonthWeekStart:start];
  [(NSMutableArray *)self->_summaryIndexes removeAllObjects];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  dayCells = [(MonthWeekView *)self dayCells];
  v5 = [dayCells countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(dayCells);
        }

        date = [*(*(&v13 + 1) + 8 * v8) date];
        v10 = sub_1000EA7A8(date);

        summaryIndexes = self->_summaryIndexes;
        v12 = [NSNumber numberWithLongLong:v10];
        [(NSMutableArray *)summaryIndexes addObject:v12];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [dayCells countByEnumeratingWithState:&v13 objects:v18 count:16];
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
  dayCells = [(MonthWeekView *)self dayCells];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000B62F0;
  v21[3] = &unk_10083AA98;
  v21[4] = self;
  [dayCells enumerateObjectsUsingBlock:v21];

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

    monthTitleView = [(MonthWeekView *)self monthTitleView];
    [monthTitleView frame];
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

    monthTitleView2 = [(MonthWeekView *)self monthTitleView];
    monthTitleView3 = [(MonthWeekView *)self monthTitleView];
    [monthTitleView3 frame];
    [monthTitleView2 setFrame:{v13, v7, v11}];
  }
}

- (void)pressedOnCalendarDay:(int64_t)day cell:(id)cell down:(BOOL)down
{
  downCopy = down;
  cellCopy = cell;
  if (([cellCopy isFutureDay] & 1) == 0)
  {
    [cellCopy pressToTransition:downCopy];
    delegate = [(MonthWeekView *)self delegate];
    [delegate week:self pressedOnDay:day down:downCopy];
  }
}

- (void)selectedCalendarDay:(id)day
{
  dayCopy = day;
  if (([dayCopy isFutureDay] & 1) == 0)
  {
    [dayCopy pressToTransition:0];
    delegate = [(MonthWeekView *)self delegate];
    [delegate week:self cellSelected:dayCopy];
  }
}

- (void)setHasWorkout:(BOOL)workout onDayIndex:(unint64_t)index
{
  workoutCopy = workout;
  dayCells = [(MonthWeekView *)self dayCells];
  v7 = [dayCells objectAtIndex:index];

  [v7 setHasWorkout:workoutCopy];
}

@end