@interface _ProactiveTileDownloadDetailViewController
- (_ProactiveTileDownloadDetailViewController)initWithRun:(id)run;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
@end

@implementation _ProactiveTileDownloadDetailViewController

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    v8 = 0;
  }

  else
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"basic"];
    if (!v8)
    {
      v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"basic"];
    }

    [v8 setSelectionStyle:0];
    v9 = -[NSArray objectAtIndexedSubscript:](self->_policyStatistics, "objectAtIndexedSubscript:", [pathCopy row]);
    v10 = [v9 policy] - 1;
    if (v10 > 2)
    {
      v11 = @"<unknown>";
    }

    else
    {
      v11 = *(&off_101627718 + v10);
    }

    textLabel = [v8 textLabel];
    [textLabel setText:v11];

    v13 = sub_100711A14([v9 tilesConsidered], objc_msgSend(v9, "successCount"), objc_msgSend(v9, "failureCount"), 0);
    [v8 setAccessoryView:v13];

    endTimestamp = [v9 endTimestamp];
    startTimestamp = [v9 startTimestamp];
    [endTimestamp timeIntervalSinceDate:startTimestamp];
    v17 = v16;

    v18 = [NSMeasurement alloc];
    v19 = +[NSUnitDuration baseUnit];
    v20 = [v18 initWithDoubleValue:v19 unit:v17];

    dateFormatter = self->_dateFormatter;
    startTimestamp2 = [v9 startTimestamp];
    v23 = [(NSDateFormatter *)dateFormatter stringFromDate:startTimestamp2];
    v24 = [(NSMeasurementFormatter *)self->_durationFormatter stringFromMeasurement:v20];
    v25 = [NSString stringWithFormat:@"%@ — %@", v23, v24];
    detailTextLabel = [v8 detailTextLabel];
    [detailTextLabel setText:v25];
  }

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  else
  {
    return [(NSArray *)self->_policyStatistics count];
  }
}

- (_ProactiveTileDownloadDetailViewController)initWithRun:(id)run
{
  runCopy = run;
  v18.receiver = self;
  v18.super_class = _ProactiveTileDownloadDetailViewController;
  v5 = [(_ProactiveTileDownloadDetailViewController *)&v18 initWithStyle:1];
  if (v5)
  {
    policyStatistics = [runCopy policyStatistics];
    policyStatistics = v5->_policyStatistics;
    v5->_policyStatistics = policyStatistics;

    v8 = objc_alloc_init(NSDateFormatter);
    dateFormatter = v5->_dateFormatter;
    v5->_dateFormatter = v8;

    [(NSDateFormatter *)v5->_dateFormatter setDateStyle:1];
    [(NSDateFormatter *)v5->_dateFormatter setTimeStyle:1];
    v10 = objc_alloc_init(NSMeasurementFormatter);
    durationFormatter = v5->_durationFormatter;
    v5->_durationFormatter = v10;

    [(NSMeasurementFormatter *)v5->_durationFormatter setUnitOptions:2];
    [(NSMeasurementFormatter *)v5->_durationFormatter setUnitStyle:2];
    numberFormatter = [(NSMeasurementFormatter *)v5->_durationFormatter numberFormatter];
    [numberFormatter setMaximumFractionDigits:0];

    v13 = v5->_dateFormatter;
    startDate = [runCopy startDate];
    v15 = [(NSDateFormatter *)v13 stringFromDate:startDate];
    [(_ProactiveTileDownloadDetailViewController *)v5 setTitle:v15];

    v16 = v5;
  }

  return v5;
}

@end