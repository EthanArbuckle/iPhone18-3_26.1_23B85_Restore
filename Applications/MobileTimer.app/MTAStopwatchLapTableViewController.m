@interface MTAStopwatchLapTableViewController
- ($0AC6E346AE4835514AAA8AC86D8F4844)lapExtrema;
- (MTAStopwatchLapTableViewController)initWithStyle:(int64_t)a3;
- (double)runningTotalForLap:(int64_t)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (unint64_t)lapCount;
- (void)_updateCurrentLapCell;
- (void)_updateLapExtrema;
- (void)addLap:(double)a3;
- (void)clearAllLaps;
- (void)loadView;
- (void)setCellStyle:(unint64_t)a3;
- (void)setLaps:(id)a3;
- (void)setShowsCurrentLap:(BOOL)a3;
@end

@implementation MTAStopwatchLapTableViewController

- (MTAStopwatchLapTableViewController)initWithStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = MTAStopwatchLapTableViewController;
  v3 = [(MTAStopwatchLapTableViewController *)&v6 initWithStyle:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    [(MTAStopwatchLapTableViewController *)v3 setLapTimes:v4];
  }

  return v3;
}

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = MTAStopwatchLapTableViewController;
  [(MTAStopwatchLapTableViewController *)&v12 loadView];
  v3 = [[MTAStopwatchTableView alloc] initWithFrame:0 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MTAStopwatchLapTableViewController *)self setTableView:v3];

  v4 = [(MTAStopwatchLapTableViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"MTCurrentLapCell"];

  v5 = [(MTAStopwatchLapTableViewController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:off_1000D19D8];

  v6 = [(MTAStopwatchLapTableViewController *)self tableView];
  [v6 setDelegate:self];

  v7 = [(MTAStopwatchLapTableViewController *)self tableView];
  [v7 setDataSource:self];

  v8 = +[UIColor mtui_backgroundColor];
  v9 = [(MTAStopwatchLapTableViewController *)self tableView];
  [v9 setBackgroundColor:v8];

  v10 = [(MTAStopwatchLapTableViewController *)self tableView];
  [v10 setSeparatorInset:{0.0, 15.0, 0.0, 15.0}];

  v11 = [(MTAStopwatchLapTableViewController *)self tableView];
  [v11 setCellLayoutMarginsFollowReadableWidth:0];
}

- (void)setCellStyle:(unint64_t)a3
{
  if (self->_cellStyle != a3)
  {
    self->_cellStyle = a3;
    if (a3 - 2 > 2)
    {
      v5 = 44.0;
    }

    else
    {
      v5 = dbl_10008BBF8[a3 - 2];
    }

    v6 = [(MTAStopwatchLapTableViewController *)self tableView];
    [v6 setEstimatedRowHeight:v5];

    v7 = [(MTAStopwatchLapTableViewController *)self tableView];
    [v7 reloadData];
  }
}

- (void)setShowsCurrentLap:(BOOL)a3
{
  if (self->_showsCurrentLap != a3)
  {
    self->_showsCurrentLap = a3;
    v4 = [(MTAStopwatchLapTableViewController *)self tableView];
    [v4 reloadData];
  }
}

- (void)_updateCurrentLapCell
{
  v3 = [(MTAStopwatchLapTableViewController *)self lapCount];
  v4 = [(MTAStopwatchLapTableViewController *)self currentLapCell];
  [v4 setLap:v3];

  [(MTAStopwatchLapTableViewController *)self currentInterval];
  v6 = v5;
  v7 = [(MTAStopwatchLapTableViewController *)self currentLapCell];
  [v7 setTime:v6];

  [(MTAStopwatchLapTableViewController *)self previousLapsTotalInterval];
  v9 = v8;
  [(MTAStopwatchLapTableViewController *)self currentInterval];
  v11 = v9 + v10;
  v12 = [(MTAStopwatchLapTableViewController *)self currentLapCell];
  [v12 setRunningTotal:v11];

  v13 = +[UIColor mtui_primaryTextColor];
  v14 = [(MTAStopwatchLapTableViewController *)self currentLapCell];
  [v14 setColor:v13];

  v15 = [(MTAStopwatchLapTableViewController *)self currentLapCell];
  [v15 setNeedsLayout];
}

- (void)addLap:(double)a3
{
  v5 = [(MTAStopwatchLapTableViewController *)self lapTimes];
  v6 = [NSNumber numberWithDouble:a3];
  [v5 addObject:v6];

  [(MTAStopwatchLapTableViewController *)self _updateLapExtrema];
  [(MTAStopwatchLapTableViewController *)self previousLapsTotalInterval];
  [(MTAStopwatchLapTableViewController *)self setPreviousLapsTotalInterval:v7 + a3];
  v8 = [(MTAStopwatchLapTableViewController *)self tableView];
  [v8 reloadData];
}

- (void)setLaps:(id)a3
{
  v4 = a3;
  v5 = [(MTAStopwatchLapTableViewController *)self lapTimes];
  [v5 removeAllObjects];

  v6 = [(MTAStopwatchLapTableViewController *)self lapTimes];
  [v6 addObjectsFromArray:v4];

  [(MTAStopwatchLapTableViewController *)self _updateLapExtrema];
  v7 = [(MTAStopwatchLapTableViewController *)self lapTimes];
  -[MTAStopwatchLapTableViewController runningTotalForLap:](self, "runningTotalForLap:", [v7 count] - 1);
  [(MTAStopwatchLapTableViewController *)self setPreviousLapsTotalInterval:?];

  v8 = [(MTAStopwatchLapTableViewController *)self tableView];
  [v8 reloadData];
}

- (void)clearAllLaps
{
  v3 = [(MTAStopwatchLapTableViewController *)self lapTimes];
  [v3 removeAllObjects];

  [(MTAStopwatchLapTableViewController *)self _updateLapExtrema];
  [(MTAStopwatchLapTableViewController *)self setPreviousLapsTotalInterval:0.0];
  v4 = [(MTAStopwatchLapTableViewController *)self tableView];
  [v4 reloadData];
}

- (unint64_t)lapCount
{
  v3 = [(MTAStopwatchLapTableViewController *)self lapTimes];
  v4 = [v3 count];

  return v4 + [(MTAStopwatchLapTableViewController *)self showsCurrentLap];
}

- (double)runningTotalForLap:(int64_t)a3
{
  if (a3 < 0)
  {
    return 0.0;
  }

  v4 = 0;
  v5 = a3 + 1;
  v6 = 0.0;
  do
  {
    v7 = [(MTAStopwatchLapTableViewController *)self lapTimes];
    v8 = [v7 objectAtIndexedSubscript:v4];
    [v8 doubleValue];
    v6 = v6 + v9;

    ++v4;
  }

  while (v5 != v4);
  return v6;
}

- (void)_updateLapExtrema
{
  v3 = [(MTAStopwatchLapTableViewController *)self lapTimes];
  v4 = [v3 count];

  if (v4 >= 2)
  {
    v7 = [(MTAStopwatchLapTableViewController *)self lapTimes];
    v8 = [v7 objectAtIndexedSubscript:0];
    [v8 doubleValue];
    v10 = v9;

    v11 = [(MTAStopwatchLapTableViewController *)self lapTimes];
    v12 = [v11 objectAtIndexedSubscript:0];
    [v12 doubleValue];
    v14 = v13;

    v15 = [(MTAStopwatchLapTableViewController *)self lapTimes];
    v16 = [v15 count];

    v5 = 0;
    v6 = 0;
    if (v16 >= 2)
    {
      v6 = 0;
      v5 = 0;
      v17 = 1;
      do
      {
        v18 = [(MTAStopwatchLapTableViewController *)self lapTimes];
        v19 = [v18 objectAtIndexedSubscript:v17];
        [v19 doubleValue];
        v21 = v20;

        if (v21 < v10)
        {
          v22 = v21;
        }

        else
        {
          v22 = v10;
        }

        if (v21 < v10)
        {
          v23 = v17;
        }

        else
        {
          v23 = v5;
        }

        v24 = v21 <= v14;
        if (v21 <= v14)
        {
          v10 = v22;
        }

        else
        {
          v14 = v21;
        }

        if (v24)
        {
          v5 = v23;
        }

        if (!v24)
        {
          v6 = v17;
        }

        ++v17;
        v25 = [(MTAStopwatchLapTableViewController *)self lapTimes];
        v26 = [v25 count];
      }

      while (v17 < v26);
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(MTAStopwatchLapTableViewController *)self setLapExtrema:v5, v6];
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [(MTAStopwatchLapTableViewController *)self cellStyle:a3];

  [MTAStopwatchLapCell cellHeightWithCellStyle:v4];
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTAStopwatchLapTableViewController *)self lapCount];
  v9 = v8 - [v6 row];
  v10 = [(MTAStopwatchLapTableViewController *)self lapTimes];
  v11 = [v10 count];

  if (v9 <= v11)
  {
    v12 = off_1000D19D8;
  }

  else
  {
    v12 = @"MTCurrentLapCell";
  }

  v13 = [v7 dequeueReusableCellWithIdentifier:v12 forIndexPath:v6];

  [v13 setLapStyle:{-[MTAStopwatchLapTableViewController cellStyle](self, "cellStyle")}];
  if (v9 <= v11)
  {
    v14 = (v9 - 1);
    [v13 setLap:v9];
    v15 = [(MTAStopwatchLapTableViewController *)self lapTimes];
    v16 = [v15 objectAtIndexedSubscript:v14];
    [v16 doubleValue];
    [v13 setTime:?];

    [(MTAStopwatchLapTableViewController *)self runningTotalForLap:v14];
    [v13 setRunningTotal:?];
    if (v14 == [(MTAStopwatchLapTableViewController *)self lapExtrema])
    {
      v17 = +[UIColor systemGreenColor];
    }

    else
    {
      [(MTAStopwatchLapTableViewController *)self lapExtrema];
      if (v14 == v18)
      {
        +[UIColor systemRedColor];
      }

      else
      {
        +[UIColor mtui_primaryTextColor];
      }
      v17 = ;
    }

    v19 = v17;
    [v13 setColor:v17];
  }

  else
  {
    [(MTAStopwatchLapTableViewController *)self setCurrentLapCell:v13];
    [(MTAStopwatchLapTableViewController *)self _updateCurrentLapCell];
  }

  return v13;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)lapExtrema
{
  p_lapExtrema = &self->_lapExtrema;
  fastestLapIndex = self->_lapExtrema.fastestLapIndex;
  slowestLapIndex = p_lapExtrema->slowestLapIndex;
  result.var1 = slowestLapIndex;
  result.var0 = fastestLapIndex;
  return result;
}

@end