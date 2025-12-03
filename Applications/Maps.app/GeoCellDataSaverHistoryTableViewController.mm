@interface GeoCellDataSaverHistoryTableViewController
- (GeoCellDataSaverHistoryTableViewController)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_toggleLogging:(id)logging;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GeoCellDataSaverHistoryTableViewController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] == 1)
  {
    v7 = -[NSArray objectAtIndexedSubscript:](self->_runs, "objectAtIndexedSubscript:", [pathCopy row]);
    v8 = [[_ProactiveTileDownloadDetailViewController alloc] initWithRun:v7];
    navigationController = [(GeoCellDataSaverHistoryTableViewController *)self navigationController];
    [navigationController pushViewController:v8 animated:1];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == 1)
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"basic"];
    if (!v10)
    {
      v10 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"basic"];
    }

    [v10 setSelectionStyle:3];
    v9 = -[NSArray objectAtIndexedSubscript:](self->_runs, "objectAtIndexedSubscript:", [pathCopy row]);
    dateFormatter = self->_dateFormatter;
    startDate = [v9 startDate];
    v13 = [(NSDateFormatter *)dateFormatter stringFromDate:startDate];
    textLabel = [v10 textLabel];
    [textLabel setText:v13];

    v15 = sub_100711A14([v9 totalTiles], objc_msgSend(v9, "successCount"), objc_msgSend(v9, "failureCount"), 1);
    [v10 setAccessoryView:v15];

    endDate = [v9 endDate];
    startDate2 = [v9 startDate];
    [endDate timeIntervalSinceDate:startDate2];
    v19 = v18;

    v20 = [NSMeasurement alloc];
    v21 = +[NSUnitDuration baseUnit];
    v22 = [v20 initWithDoubleValue:v21 unit:v19];

    v23 = [(NSMeasurementFormatter *)self->_durationFormatter stringFromMeasurement:v22];
    detailTextLabel = [v10 detailTextLabel];
    [detailTextLabel setText:v23];
  }

  else
  {
    if (section)
    {
      v10 = 0;
      goto LABEL_11;
    }

    v9 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    if ([pathCopy row])
    {
      v10 = 0;
    }

    else
    {
      textLabel2 = [v9 textLabel];
      [textLabel2 setText:@"Record History"];

      v26 = objc_alloc_init(UISwitch);
      v27 = +[GEORequestCounter sharedCounter];
      [v26 setOn:{objc_msgSend(v27, "countersEnabled")}];

      [v26 addTarget:self action:"_toggleLogging:" forControlEvents:4096];
      [v9 setAccessoryView:v26];
      [v9 setSelectionStyle:0];

      v9 = v9;
      v10 = v9;
    }
  }

LABEL_11:

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (!section)
  {
    return 1;
  }

  if (section == 1)
  {
    return [(NSArray *)self->_runs count];
  }

  return 0;
}

- (void)_toggleLogging:(id)logging
{
  loggingCopy = logging;
  v5 = +[GEORequestCounter sharedCounter];
  isOn = [loggingCopy isOn];

  [v5 setCountersEnabled:isOn];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = GeoCellDataSaverHistoryTableViewController;
  [(GeoCellDataSaverHistoryTableViewController *)&v9 viewWillAppear:appear];
  v4 = [NSDate dateWithTimeIntervalSinceNow:-864000.0];
  objc_initWeak(&location, self);
  v5 = +[GEORequestCounter sharedCounter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100712780;
  v6[3] = &unk_10165F290;
  objc_copyWeak(&v7, &location);
  [v5 readProactiveTileDownloadsSince:v4 handler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = GeoCellDataSaverHistoryTableViewController;
  [(GeoCellDataSaverHistoryTableViewController *)&v3 viewDidLoad];
  [(GeoCellDataSaverHistoryTableViewController *)self setTitle:@"CDS History"];
}

- (GeoCellDataSaverHistoryTableViewController)init
{
  v9.receiver = self;
  v9.super_class = GeoCellDataSaverHistoryTableViewController;
  v2 = [(GeoCellDataSaverHistoryTableViewController *)&v9 initWithStyle:1];
  if (v2)
  {
    v3 = objc_alloc_init(NSDateFormatter);
    dateFormatter = v2->_dateFormatter;
    v2->_dateFormatter = v3;

    [(NSDateFormatter *)v2->_dateFormatter setDateStyle:1];
    [(NSDateFormatter *)v2->_dateFormatter setTimeStyle:1];
    v5 = objc_alloc_init(NSMeasurementFormatter);
    durationFormatter = v2->_durationFormatter;
    v2->_durationFormatter = v5;

    [(NSMeasurementFormatter *)v2->_durationFormatter setUnitOptions:2];
    [(NSMeasurementFormatter *)v2->_durationFormatter setUnitStyle:2];
    numberFormatter = [(NSMeasurementFormatter *)v2->_durationFormatter numberFormatter];
    [numberFormatter setMaximumFractionDigits:0];
  }

  return v2;
}

@end