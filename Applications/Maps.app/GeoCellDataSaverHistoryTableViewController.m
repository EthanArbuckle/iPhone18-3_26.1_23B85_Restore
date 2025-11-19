@interface GeoCellDataSaverHistoryTableViewController
- (GeoCellDataSaverHistoryTableViewController)init;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_toggleLogging:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GeoCellDataSaverHistoryTableViewController

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v6 section] == 1)
  {
    v7 = -[NSArray objectAtIndexedSubscript:](self->_runs, "objectAtIndexedSubscript:", [v6 row]);
    v8 = [[_ProactiveTileDownloadDetailViewController alloc] initWithRun:v7];
    v9 = [(GeoCellDataSaverHistoryTableViewController *)self navigationController];
    [v9 pushViewController:v8 animated:1];
  }

  [v10 deselectRowAtIndexPath:v6 animated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == 1)
  {
    v10 = [v6 dequeueReusableCellWithIdentifier:@"basic"];
    if (!v10)
    {
      v10 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"basic"];
    }

    [v10 setSelectionStyle:3];
    v9 = -[NSArray objectAtIndexedSubscript:](self->_runs, "objectAtIndexedSubscript:", [v7 row]);
    dateFormatter = self->_dateFormatter;
    v12 = [v9 startDate];
    v13 = [(NSDateFormatter *)dateFormatter stringFromDate:v12];
    v14 = [v10 textLabel];
    [v14 setText:v13];

    v15 = sub_100711A14([v9 totalTiles], objc_msgSend(v9, "successCount"), objc_msgSend(v9, "failureCount"), 1);
    [v10 setAccessoryView:v15];

    v16 = [v9 endDate];
    v17 = [v9 startDate];
    [v16 timeIntervalSinceDate:v17];
    v19 = v18;

    v20 = [NSMeasurement alloc];
    v21 = +[NSUnitDuration baseUnit];
    v22 = [v20 initWithDoubleValue:v21 unit:v19];

    v23 = [(NSMeasurementFormatter *)self->_durationFormatter stringFromMeasurement:v22];
    v24 = [v10 detailTextLabel];
    [v24 setText:v23];
  }

  else
  {
    if (v8)
    {
      v10 = 0;
      goto LABEL_11;
    }

    v9 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    if ([v7 row])
    {
      v10 = 0;
    }

    else
    {
      v25 = [v9 textLabel];
      [v25 setText:@"Record History"];

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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (!a4)
  {
    return 1;
  }

  if (a4 == 1)
  {
    return [(NSArray *)self->_runs count];
  }

  return 0;
}

- (void)_toggleLogging:(id)a3
{
  v3 = a3;
  v5 = +[GEORequestCounter sharedCounter];
  v4 = [v3 isOn];

  [v5 setCountersEnabled:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = GeoCellDataSaverHistoryTableViewController;
  [(GeoCellDataSaverHistoryTableViewController *)&v9 viewWillAppear:a3];
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
    v7 = [(NSMeasurementFormatter *)v2->_durationFormatter numberFormatter];
    [v7 setMaximumFractionDigits:0];
  }

  return v2;
}

@end