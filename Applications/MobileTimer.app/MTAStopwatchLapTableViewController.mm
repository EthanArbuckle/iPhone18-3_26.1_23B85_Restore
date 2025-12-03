@interface MTAStopwatchLapTableViewController
- ($0AC6E346AE4835514AAA8AC86D8F4844)lapExtrema;
- (MTAStopwatchLapTableViewController)initWithStyle:(int64_t)style;
- (double)runningTotalForLap:(int64_t)lap;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (unint64_t)lapCount;
- (void)_updateCurrentLapCell;
- (void)_updateLapExtrema;
- (void)addLap:(double)lap;
- (void)clearAllLaps;
- (void)loadView;
- (void)setCellStyle:(unint64_t)style;
- (void)setLaps:(id)laps;
- (void)setShowsCurrentLap:(BOOL)lap;
@end

@implementation MTAStopwatchLapTableViewController

- (MTAStopwatchLapTableViewController)initWithStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = MTAStopwatchLapTableViewController;
  v3 = [(MTAStopwatchLapTableViewController *)&v6 initWithStyle:style];
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

  tableView = [(MTAStopwatchLapTableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"MTCurrentLapCell"];

  tableView2 = [(MTAStopwatchLapTableViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:off_1000D19D8];

  tableView3 = [(MTAStopwatchLapTableViewController *)self tableView];
  [tableView3 setDelegate:self];

  tableView4 = [(MTAStopwatchLapTableViewController *)self tableView];
  [tableView4 setDataSource:self];

  v8 = +[UIColor mtui_backgroundColor];
  tableView5 = [(MTAStopwatchLapTableViewController *)self tableView];
  [tableView5 setBackgroundColor:v8];

  tableView6 = [(MTAStopwatchLapTableViewController *)self tableView];
  [tableView6 setSeparatorInset:{0.0, 15.0, 0.0, 15.0}];

  tableView7 = [(MTAStopwatchLapTableViewController *)self tableView];
  [tableView7 setCellLayoutMarginsFollowReadableWidth:0];
}

- (void)setCellStyle:(unint64_t)style
{
  if (self->_cellStyle != style)
  {
    self->_cellStyle = style;
    if (style - 2 > 2)
    {
      v5 = 44.0;
    }

    else
    {
      v5 = dbl_10008BBF8[style - 2];
    }

    tableView = [(MTAStopwatchLapTableViewController *)self tableView];
    [tableView setEstimatedRowHeight:v5];

    tableView2 = [(MTAStopwatchLapTableViewController *)self tableView];
    [tableView2 reloadData];
  }
}

- (void)setShowsCurrentLap:(BOOL)lap
{
  if (self->_showsCurrentLap != lap)
  {
    self->_showsCurrentLap = lap;
    tableView = [(MTAStopwatchLapTableViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)_updateCurrentLapCell
{
  lapCount = [(MTAStopwatchLapTableViewController *)self lapCount];
  currentLapCell = [(MTAStopwatchLapTableViewController *)self currentLapCell];
  [currentLapCell setLap:lapCount];

  [(MTAStopwatchLapTableViewController *)self currentInterval];
  v6 = v5;
  currentLapCell2 = [(MTAStopwatchLapTableViewController *)self currentLapCell];
  [currentLapCell2 setTime:v6];

  [(MTAStopwatchLapTableViewController *)self previousLapsTotalInterval];
  v9 = v8;
  [(MTAStopwatchLapTableViewController *)self currentInterval];
  v11 = v9 + v10;
  currentLapCell3 = [(MTAStopwatchLapTableViewController *)self currentLapCell];
  [currentLapCell3 setRunningTotal:v11];

  v13 = +[UIColor mtui_primaryTextColor];
  currentLapCell4 = [(MTAStopwatchLapTableViewController *)self currentLapCell];
  [currentLapCell4 setColor:v13];

  currentLapCell5 = [(MTAStopwatchLapTableViewController *)self currentLapCell];
  [currentLapCell5 setNeedsLayout];
}

- (void)addLap:(double)lap
{
  lapTimes = [(MTAStopwatchLapTableViewController *)self lapTimes];
  v6 = [NSNumber numberWithDouble:lap];
  [lapTimes addObject:v6];

  [(MTAStopwatchLapTableViewController *)self _updateLapExtrema];
  [(MTAStopwatchLapTableViewController *)self previousLapsTotalInterval];
  [(MTAStopwatchLapTableViewController *)self setPreviousLapsTotalInterval:v7 + lap];
  tableView = [(MTAStopwatchLapTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)setLaps:(id)laps
{
  lapsCopy = laps;
  lapTimes = [(MTAStopwatchLapTableViewController *)self lapTimes];
  [lapTimes removeAllObjects];

  lapTimes2 = [(MTAStopwatchLapTableViewController *)self lapTimes];
  [lapTimes2 addObjectsFromArray:lapsCopy];

  [(MTAStopwatchLapTableViewController *)self _updateLapExtrema];
  lapTimes3 = [(MTAStopwatchLapTableViewController *)self lapTimes];
  -[MTAStopwatchLapTableViewController runningTotalForLap:](self, "runningTotalForLap:", [lapTimes3 count] - 1);
  [(MTAStopwatchLapTableViewController *)self setPreviousLapsTotalInterval:?];

  tableView = [(MTAStopwatchLapTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)clearAllLaps
{
  lapTimes = [(MTAStopwatchLapTableViewController *)self lapTimes];
  [lapTimes removeAllObjects];

  [(MTAStopwatchLapTableViewController *)self _updateLapExtrema];
  [(MTAStopwatchLapTableViewController *)self setPreviousLapsTotalInterval:0.0];
  tableView = [(MTAStopwatchLapTableViewController *)self tableView];
  [tableView reloadData];
}

- (unint64_t)lapCount
{
  lapTimes = [(MTAStopwatchLapTableViewController *)self lapTimes];
  v4 = [lapTimes count];

  return v4 + [(MTAStopwatchLapTableViewController *)self showsCurrentLap];
}

- (double)runningTotalForLap:(int64_t)lap
{
  if (lap < 0)
  {
    return 0.0;
  }

  v4 = 0;
  v5 = lap + 1;
  v6 = 0.0;
  do
  {
    lapTimes = [(MTAStopwatchLapTableViewController *)self lapTimes];
    v8 = [lapTimes objectAtIndexedSubscript:v4];
    [v8 doubleValue];
    v6 = v6 + v9;

    ++v4;
  }

  while (v5 != v4);
  return v6;
}

- (void)_updateLapExtrema
{
  lapTimes = [(MTAStopwatchLapTableViewController *)self lapTimes];
  v4 = [lapTimes count];

  if (v4 >= 2)
  {
    lapTimes2 = [(MTAStopwatchLapTableViewController *)self lapTimes];
    v8 = [lapTimes2 objectAtIndexedSubscript:0];
    [v8 doubleValue];
    v10 = v9;

    lapTimes3 = [(MTAStopwatchLapTableViewController *)self lapTimes];
    v12 = [lapTimes3 objectAtIndexedSubscript:0];
    [v12 doubleValue];
    v14 = v13;

    lapTimes4 = [(MTAStopwatchLapTableViewController *)self lapTimes];
    v16 = [lapTimes4 count];

    v5 = 0;
    v6 = 0;
    if (v16 >= 2)
    {
      v6 = 0;
      v5 = 0;
      v17 = 1;
      do
      {
        lapTimes5 = [(MTAStopwatchLapTableViewController *)self lapTimes];
        v19 = [lapTimes5 objectAtIndexedSubscript:v17];
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
        lapTimes6 = [(MTAStopwatchLapTableViewController *)self lapTimes];
        v26 = [lapTimes6 count];
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

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = [(MTAStopwatchLapTableViewController *)self cellStyle:view];

  [MTAStopwatchLapCell cellHeightWithCellStyle:v4];
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  lapCount = [(MTAStopwatchLapTableViewController *)self lapCount];
  v9 = lapCount - [pathCopy row];
  lapTimes = [(MTAStopwatchLapTableViewController *)self lapTimes];
  v11 = [lapTimes count];

  if (v9 <= v11)
  {
    v12 = off_1000D19D8;
  }

  else
  {
    v12 = @"MTCurrentLapCell";
  }

  v13 = [viewCopy dequeueReusableCellWithIdentifier:v12 forIndexPath:pathCopy];

  [v13 setLapStyle:{-[MTAStopwatchLapTableViewController cellStyle](self, "cellStyle")}];
  if (v9 <= v11)
  {
    v14 = (v9 - 1);
    [v13 setLap:v9];
    lapTimes2 = [(MTAStopwatchLapTableViewController *)self lapTimes];
    v16 = [lapTimes2 objectAtIndexedSubscript:v14];
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