@interface MFMailDebugIndexStatusViewController
- (NSISO8601DateFormatter)reindexDateFormatter;
- (id)_calculateIndexingSpeedWithMessagesIndexed:(int64_t)a3;
- (id)_dataForIndexPath:(id)a3;
- (id)_loadCacheForKey:(id)a3;
- (id)_messagesIndexedInTimeInterval:(double)a3 snapshots:(id)a4 currentMessagesIndexed:(int64_t)a5;
- (id)_reindexReasonsCache;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_periodicallyRefreshStatus;
- (void)_refreshStatus;
- (void)_startObservingTurboModeToggle;
- (void)_stopObservingTurboModeToggle;
- (void)_stopRefreshingStatus;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MFMailDebugIndexStatusViewController

- (NSISO8601DateFormatter)reindexDateFormatter
{
  reindexDateFormatter = self->_reindexDateFormatter;
  if (!reindexDateFormatter)
  {
    v4 = objc_alloc_init(NSISO8601DateFormatter);
    v5 = self->_reindexDateFormatter;
    self->_reindexDateFormatter = v4;

    v6 = +[NSTimeZone localTimeZone];
    [(NSISO8601DateFormatter *)self->_reindexDateFormatter setTimeZone:v6];

    [(NSISO8601DateFormatter *)self->_reindexDateFormatter setFormatOptions:947];
    reindexDateFormatter = self->_reindexDateFormatter;
  }

  return reindexDateFormatter;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = MFMailDebugIndexStatusViewController;
  [(MFMailDebugIndexStatusViewController *)&v17 viewDidLoad];
  v3 = [UITableView alloc];
  v4 = [(MFMailDebugIndexStatusViewController *)self view];
  [v4 bounds];
  v5 = [v3 initWithFrame:1 style:?];
  [(MFMailDebugIndexStatusViewController *)self setTableView:v5];

  v6 = [(MFMailDebugIndexStatusViewController *)self tableView];
  [v6 setAutoresizingMask:18];

  v7 = [(MFMailDebugIndexStatusViewController *)self tableView];
  [v7 setDataSource:self];

  v8 = [(MFMailDebugIndexStatusViewController *)self tableView];
  [v8 setDelegate:self];

  v9 = [(MFMailDebugIndexStatusViewController *)self tableView];
  [v9 setSeparatorStyle:1];

  v10 = [(MFMailDebugIndexStatusViewController *)self tableView];
  [v10 setAllowsSelection:1];

  v11 = objc_alloc_init(NSNumberFormatter);
  [(MFMailDebugIndexStatusViewController *)self setNumberFormatter:v11];

  v12 = [(MFMailDebugIndexStatusViewController *)self numberFormatter];
  [v12 setGroupingSize:3];

  v13 = [(MFMailDebugIndexStatusViewController *)self numberFormatter];
  [v13 setUsesGroupingSeparator:1];

  v14 = [(MFMailDebugIndexStatusViewController *)self numberFormatter];
  [v14 setGroupingSeparator:{@", "}];

  v15 = [(MFMailDebugIndexStatusViewController *)self view];
  v16 = [(MFMailDebugIndexStatusViewController *)self tableView];
  [v15 addSubview:v16];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MFMailDebugIndexStatusViewController;
  [(MFMailDebugIndexStatusViewController *)&v4 viewWillAppear:a3];
  [(MFMailDebugIndexStatusViewController *)self _refreshStatus];
  [(MFMailDebugIndexStatusViewController *)self _periodicallyRefreshStatus];
  [(MFMailDebugIndexStatusViewController *)self _startObservingTurboModeToggle];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MFMailDebugIndexStatusViewController;
  [(MFMailDebugIndexStatusViewController *)&v4 viewWillDisappear:a3];
  [(MFMailDebugIndexStatusViewController *)self _stopRefreshingStatus];
  [(MFMailDebugIndexStatusViewController *)self _stopObservingTurboModeToggle];
}

- (void)_startObservingTurboModeToggle
{
  v3 = +[UIApplication sharedApplication];
  [v3 setIdleTimerDisabled:{+[EMInternalPreferences preferenceEnabled:](EMInternalPreferences, "preferenceEnabled:", 22)}];

  v4 = [EMInternalPreferences observeChangesForPreference:22 usingBlock:&stru_100654600];
  [(MFMailDebugIndexStatusViewController *)self setTurboModeObservationToken:?];
}

- (void)_stopObservingTurboModeToggle
{
  v3 = +[UIApplication sharedApplication];
  [v3 setIdleTimerDisabled:0];

  v4 = [(MFMailDebugIndexStatusViewController *)self turboModeObservationToken];
  [v4 cancel];

  [(MFMailDebugIndexStatusViewController *)self setTurboModeObservationToken:0];
}

- (id)_dataForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MFMailDebugIndexStatusViewController *)self items];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 section]);
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v4 row];
  if (v8 >= [v7 count])
  {
    v9 = 0;
  }

  else
  {
    v9 = [v7 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  }

  return v9;
}

- (id)_messagesIndexedInTimeInterval:(double)a3 snapshots:(id)a4 currentMessagesIndexed:(int64_t)a5
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = a4;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = *v25;
    v11 = a3 * 0.8;
    v12 = a3 * 1.2;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v24 + 1) + 8 * v13);
      v15 = objc_autoreleasePoolPush();
      v16 = [v14 date];
      [v16 timeIntervalSinceNow];
      v18 = v17;

      v19 = [v14 messagesIndexed];
      v20 = [v19 integerValue];

      v21 = v12 < -v18 || v11 > -v18;
      v22 = a5 - v20 < 0 || v21;
      if ((v22 & 1) == 0)
      {
        v5 = [NSNumber numberWithInteger:?];
      }

      objc_autoreleasePoolPop(v15);
      if (!v22)
      {
        break;
      }

      if (v9 == ++v13)
      {
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v5 = 0;
  }

  return v5;
}

- (id)_calculateIndexingSpeedWithMessagesIndexed:(int64_t)a3
{
  v5 = +[NSDate now];
  v6 = [(MFMailDebugIndexStatusViewController *)self lastKnownIndexCountDate];
  if (v6 && (v7 = [(MFMailDebugIndexStatusViewController *)self lastKnownIndexCount], v6, v7))
  {
    v8 = [(MFMailDebugIndexStatusViewController *)self lastKnownIndexCountDate];
    [v5 timeIntervalSinceDate:v8];
    v10 = v9;

    if (v10 < 5.0)
    {
      goto LABEL_7;
    }

    v11 = [(MFMailDebugIndexStatusViewController *)self lastKnownIndexCount];
    v12 = [(MFMailDebugIndexStatusViewController *)self lastKnownIndexCountDate];
    [v5 timeIntervalSinceDate:v12];
    v14 = [NSNumber numberWithDouble:(60 * (a3 - v11)) / v13];
    [(MFMailDebugIndexStatusViewController *)self setCurrentIndexingSpeed:v14];
  }

  else
  {
    [(MFMailDebugIndexStatusViewController *)self setCurrentIndexingSpeed:0];
  }

  [(MFMailDebugIndexStatusViewController *)self setLastKnownIndexCountDate:v5];
  [(MFMailDebugIndexStatusViewController *)self setLastKnownIndexCount:a3];
LABEL_7:
  v15 = [(MFMailDebugIndexStatusViewController *)self currentIndexingSpeed];

  return v15;
}

- (id)_loadCacheForKey:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = +[NSUserDefaults em_userDefaults];
  v6 = [v5 objectForKey:v3];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001DDAF8;
  v10[3] = &unk_100654628;
  v7 = v4;
  v11 = v7;
  [v6 enumerateObjectsUsingBlock:v10];

  v8 = [v7 copy];

  return v8;
}

- (id)_reindexReasonsCache
{
  v3 = [(MFMailDebugIndexStatusViewController *)self reindexReasonsCache];

  if (!v3)
  {
    v4 = +[NSUserDefaults em_userDefaults];
    v5 = [v4 objectForKey:EDSearchableIndexDefaultsKeyLastKnownReindexReasons];
    [(MFMailDebugIndexStatusViewController *)self setReindexReasonsCache:v5];
  }

  return [(MFMailDebugIndexStatusViewController *)self reindexReasonsCache];
}

- (void)_periodicallyRefreshStatus
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001DDCEC;
  v4[3] = &unk_100651F50;
  v4[4] = self;
  v3 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v4 block:1.0];
  [(MFMailDebugIndexStatusViewController *)self setRefreshTimer:v3];
}

- (void)_stopRefreshingStatus
{
  v3 = [(MFMailDebugIndexStatusViewController *)self refreshTimer];
  [v3 invalidate];

  [(MFMailDebugIndexStatusViewController *)self setRefreshTimer:0];
}

- (void)_refreshStatus
{
  objc_initWeak(&location, self);
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 daemonInterface];
  v4 = [v3 diagnosticInfoGatherer];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001DDE70;
  v5[3] = &unk_10064E0C0;
  objc_copyWeak(&v6, &location);
  [v4 databaseStatisticsWithCompletionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_100654738 + a4);
  }
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 > 3)
  {
    v11 = @"Showing up to last 50 recorded re-index reasons.";
    if (a4 != 5)
    {
      v11 = 0;
    }

    if (a4 == 4)
    {
      v10 = @"Server messages are downloaded and indexed overnight if the device has been plugged in.";
    }

    else
    {
      v10 = v11;
    }
  }

  else if (a4)
  {
    if (a4 == 3)
    {
      v7 = [(MFMailDebugIndexStatusViewController *)self items];
      v8 = [v7 objectForKeyedSubscript:&off_100674360];
      v9 = [v8 count];

      if (v9 < 4)
      {
        v10 = @"Indexing speed history is available when we have sufficient data.";
      }

      else
      {
        v10 = [NSString stringWithFormat:@"Time window has an error margin of +/- %ld%%", 20];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = @"Turbo mode keeps the display on, and ignores power assertions and indexing budgets to index messages at the maximum speed.";
  }

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFMailDebugIndexStatusViewController *)self _dataForIndexPath:v7];
  v9 = [v8 primaryText];
  v10 = v9;
  if (v9 == @"Turbo mode")
  {
    v21 = [DebugSwitchCell preferenceSwitchWithTitle:@"Turbo mode" preference:22];
LABEL_9:
    v11 = v21;
    goto LABEL_12;
  }

  if (v9 == @"View chart")
  {
    objc_initWeak(&location, self);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001DFB30;
    v27[3] = &unk_10064CC78;
    objc_copyWeak(&v29, &location);
    v28 = v7;
    v11 = [DebugButtonCell cellWithTitle:@"View chart" style:2 handler:v27];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
    goto LABEL_12;
  }

  if (v9 == @"Reset speed statistics")
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001DFC68;
    v24[3] = &unk_10064C660;
    v25 = v7;
    v26 = self;
    v11 = [DebugButtonCell cellWithTitle:@"Reset speed statistics" style:1 handler:v24];

    goto LABEL_12;
  }

  if (v9 == @"Reset reindexing reasons")
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001DFD4C;
    v23[3] = &unk_10064C7E8;
    v23[4] = self;
    v21 = [DebugButtonCell cellWithTitle:@"Reset reindexing reasons" style:1 handler:v23];
    goto LABEL_9;
  }

  v11 = [v6 dequeueReusableCellWithIdentifier:@"DebugIndexStatusCell"];
  if (!v11)
  {
    v11 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"DebugIndexStatusCell"];
    v12 = +[UIColor secondarySystemGroupedBackgroundColor];
    [v11 setBackgroundColor:v12];

    [v11 setSelectionStyle:0];
  }

  v13 = +[UIListContentConfiguration cellConfiguration];
  v14 = +[UIColor secondaryLabelColor];
  v15 = [v13 secondaryTextProperties];
  [v15 setColor:v14];

  v16 = [v8 primaryText];
  [v13 setText:v16];

  v17 = [v8 secondaryText];
  [v13 setSecondaryText:v17];

  [v11 setContentConfiguration:v13];
  v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v19 = +[UIColor secondaryLabelColor];
  [v18 setTextColor:v19];

  v20 = [v8 labelText];
  [v18 setText:v20];

  [v18 sizeToFit];
  [v11 setAccessoryView:v18];

LABEL_12:

  return v11;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(MFMailDebugIndexStatusViewController *)self items];
  v6 = [NSNumber numberWithInteger:a4];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 count];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(MFMailDebugIndexStatusViewController *)self items];
  v4 = [v3 count];

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = [v7 cellForRowAtIndexPath:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 invokeAction];
  }

  [v7 deselectRowAtIndexPath:v5 animated:1];
}

@end