@interface MFMailDebugIndexStatusViewController
- (NSISO8601DateFormatter)reindexDateFormatter;
- (id)_calculateIndexingSpeedWithMessagesIndexed:(int64_t)indexed;
- (id)_dataForIndexPath:(id)path;
- (id)_loadCacheForKey:(id)key;
- (id)_messagesIndexedInTimeInterval:(double)interval snapshots:(id)snapshots currentMessagesIndexed:(int64_t)indexed;
- (id)_reindexReasonsCache;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_periodicallyRefreshStatus;
- (void)_refreshStatus;
- (void)_startObservingTurboModeToggle;
- (void)_stopObservingTurboModeToggle;
- (void)_stopRefreshingStatus;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  view = [(MFMailDebugIndexStatusViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:1 style:?];
  [(MFMailDebugIndexStatusViewController *)self setTableView:v5];

  tableView = [(MFMailDebugIndexStatusViewController *)self tableView];
  [tableView setAutoresizingMask:18];

  tableView2 = [(MFMailDebugIndexStatusViewController *)self tableView];
  [tableView2 setDataSource:self];

  tableView3 = [(MFMailDebugIndexStatusViewController *)self tableView];
  [tableView3 setDelegate:self];

  tableView4 = [(MFMailDebugIndexStatusViewController *)self tableView];
  [tableView4 setSeparatorStyle:1];

  tableView5 = [(MFMailDebugIndexStatusViewController *)self tableView];
  [tableView5 setAllowsSelection:1];

  v11 = objc_alloc_init(NSNumberFormatter);
  [(MFMailDebugIndexStatusViewController *)self setNumberFormatter:v11];

  numberFormatter = [(MFMailDebugIndexStatusViewController *)self numberFormatter];
  [numberFormatter setGroupingSize:3];

  numberFormatter2 = [(MFMailDebugIndexStatusViewController *)self numberFormatter];
  [numberFormatter2 setUsesGroupingSeparator:1];

  numberFormatter3 = [(MFMailDebugIndexStatusViewController *)self numberFormatter];
  [numberFormatter3 setGroupingSeparator:{@", "}];

  view2 = [(MFMailDebugIndexStatusViewController *)self view];
  tableView6 = [(MFMailDebugIndexStatusViewController *)self tableView];
  [view2 addSubview:tableView6];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MFMailDebugIndexStatusViewController;
  [(MFMailDebugIndexStatusViewController *)&v4 viewWillAppear:appear];
  [(MFMailDebugIndexStatusViewController *)self _refreshStatus];
  [(MFMailDebugIndexStatusViewController *)self _periodicallyRefreshStatus];
  [(MFMailDebugIndexStatusViewController *)self _startObservingTurboModeToggle];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = MFMailDebugIndexStatusViewController;
  [(MFMailDebugIndexStatusViewController *)&v4 viewWillDisappear:disappear];
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

  turboModeObservationToken = [(MFMailDebugIndexStatusViewController *)self turboModeObservationToken];
  [turboModeObservationToken cancel];

  [(MFMailDebugIndexStatusViewController *)self setTurboModeObservationToken:0];
}

- (id)_dataForIndexPath:(id)path
{
  pathCopy = path;
  items = [(MFMailDebugIndexStatusViewController *)self items];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [pathCopy section]);
  v7 = [items objectForKeyedSubscript:v6];

  v8 = [pathCopy row];
  if (v8 >= [v7 count])
  {
    v9 = 0;
  }

  else
  {
    v9 = [v7 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  return v9;
}

- (id)_messagesIndexedInTimeInterval:(double)interval snapshots:(id)snapshots currentMessagesIndexed:(int64_t)indexed
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  snapshotsCopy = snapshots;
  v9 = [snapshotsCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = *v25;
    v11 = interval * 0.8;
    v12 = interval * 1.2;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(snapshotsCopy);
      }

      v14 = *(*(&v24 + 1) + 8 * v13);
      v15 = objc_autoreleasePoolPush();
      date = [v14 date];
      [date timeIntervalSinceNow];
      v18 = v17;

      messagesIndexed = [v14 messagesIndexed];
      integerValue = [messagesIndexed integerValue];

      v21 = v12 < -v18 || v11 > -v18;
      v22 = indexed - integerValue < 0 || v21;
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
        v9 = [snapshotsCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
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

- (id)_calculateIndexingSpeedWithMessagesIndexed:(int64_t)indexed
{
  v5 = +[NSDate now];
  lastKnownIndexCountDate = [(MFMailDebugIndexStatusViewController *)self lastKnownIndexCountDate];
  if (lastKnownIndexCountDate && (v7 = [(MFMailDebugIndexStatusViewController *)self lastKnownIndexCount], lastKnownIndexCountDate, v7))
  {
    lastKnownIndexCountDate2 = [(MFMailDebugIndexStatusViewController *)self lastKnownIndexCountDate];
    [v5 timeIntervalSinceDate:lastKnownIndexCountDate2];
    v10 = v9;

    if (v10 < 5.0)
    {
      goto LABEL_7;
    }

    lastKnownIndexCount = [(MFMailDebugIndexStatusViewController *)self lastKnownIndexCount];
    lastKnownIndexCountDate3 = [(MFMailDebugIndexStatusViewController *)self lastKnownIndexCountDate];
    [v5 timeIntervalSinceDate:lastKnownIndexCountDate3];
    v14 = [NSNumber numberWithDouble:(60 * (indexed - lastKnownIndexCount)) / v13];
    [(MFMailDebugIndexStatusViewController *)self setCurrentIndexingSpeed:v14];
  }

  else
  {
    [(MFMailDebugIndexStatusViewController *)self setCurrentIndexingSpeed:0];
  }

  [(MFMailDebugIndexStatusViewController *)self setLastKnownIndexCountDate:v5];
  [(MFMailDebugIndexStatusViewController *)self setLastKnownIndexCount:indexed];
LABEL_7:
  currentIndexingSpeed = [(MFMailDebugIndexStatusViewController *)self currentIndexingSpeed];

  return currentIndexingSpeed;
}

- (id)_loadCacheForKey:(id)key
{
  keyCopy = key;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = +[NSUserDefaults em_userDefaults];
  v6 = [v5 objectForKey:keyCopy];
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
  reindexReasonsCache = [(MFMailDebugIndexStatusViewController *)self reindexReasonsCache];

  if (!reindexReasonsCache)
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
  refreshTimer = [(MFMailDebugIndexStatusViewController *)self refreshTimer];
  [refreshTimer invalidate];

  [(MFMailDebugIndexStatusViewController *)self setRefreshTimer:0];
}

- (void)_refreshStatus
{
  objc_initWeak(&location, self);
  v2 = +[UIApplication sharedApplication];
  daemonInterface = [v2 daemonInterface];
  diagnosticInfoGatherer = [daemonInterface diagnosticInfoGatherer];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001DDE70;
  v5[3] = &unk_10064E0C0;
  objc_copyWeak(&v6, &location);
  [diagnosticInfoGatherer databaseStatisticsWithCompletionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_100654738 + section);
  }
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (section > 3)
  {
    v11 = @"Showing up to last 50 recorded re-index reasons.";
    if (section != 5)
    {
      v11 = 0;
    }

    if (section == 4)
    {
      v10 = @"Server messages are downloaded and indexed overnight if the device has been plugged in.";
    }

    else
    {
      v10 = v11;
    }
  }

  else if (section)
  {
    if (section == 3)
    {
      items = [(MFMailDebugIndexStatusViewController *)self items];
      v8 = [items objectForKeyedSubscript:&off_100674360];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(MFMailDebugIndexStatusViewController *)self _dataForIndexPath:pathCopy];
  primaryText = [v8 primaryText];
  v10 = primaryText;
  if (primaryText == @"Turbo mode")
  {
    v21 = [DebugSwitchCell preferenceSwitchWithTitle:@"Turbo mode" preference:22];
LABEL_9:
    v11 = v21;
    goto LABEL_12;
  }

  if (primaryText == @"View chart")
  {
    objc_initWeak(&location, self);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001DFB30;
    v27[3] = &unk_10064CC78;
    objc_copyWeak(&v29, &location);
    v28 = pathCopy;
    v11 = [DebugButtonCell cellWithTitle:@"View chart" style:2 handler:v27];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
    goto LABEL_12;
  }

  if (primaryText == @"Reset speed statistics")
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001DFC68;
    v24[3] = &unk_10064C660;
    v25 = pathCopy;
    selfCopy = self;
    v11 = [DebugButtonCell cellWithTitle:@"Reset speed statistics" style:1 handler:v24];

    goto LABEL_12;
  }

  if (primaryText == @"Reset reindexing reasons")
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001DFD4C;
    v23[3] = &unk_10064C7E8;
    v23[4] = self;
    v21 = [DebugButtonCell cellWithTitle:@"Reset reindexing reasons" style:1 handler:v23];
    goto LABEL_9;
  }

  v11 = [viewCopy dequeueReusableCellWithIdentifier:@"DebugIndexStatusCell"];
  if (!v11)
  {
    v11 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"DebugIndexStatusCell"];
    v12 = +[UIColor secondarySystemGroupedBackgroundColor];
    [v11 setBackgroundColor:v12];

    [v11 setSelectionStyle:0];
  }

  v13 = +[UIListContentConfiguration cellConfiguration];
  v14 = +[UIColor secondaryLabelColor];
  secondaryTextProperties = [v13 secondaryTextProperties];
  [secondaryTextProperties setColor:v14];

  primaryText2 = [v8 primaryText];
  [v13 setText:primaryText2];

  secondaryText = [v8 secondaryText];
  [v13 setSecondaryText:secondaryText];

  [v11 setContentConfiguration:v13];
  v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v19 = +[UIColor secondaryLabelColor];
  [v18 setTextColor:v19];

  labelText = [v8 labelText];
  [v18 setText:labelText];

  [v18 sizeToFit];
  [v11 setAccessoryView:v18];

LABEL_12:

  return v11;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  items = [(MFMailDebugIndexStatusViewController *)self items];
  v6 = [NSNumber numberWithInteger:section];
  v7 = [items objectForKeyedSubscript:v6];
  v8 = [v7 count];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  items = [(MFMailDebugIndexStatusViewController *)self items];
  v4 = [items count];

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v6 = [viewCopy cellForRowAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 invokeAction];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

@end