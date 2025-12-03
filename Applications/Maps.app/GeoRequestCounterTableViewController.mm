@interface GeoRequestCounterTableViewController
- (GEORequestCounter)reqCounter;
- (NSArray)routePreloadSessions;
- (NSDictionary)appRequestDict;
- (NSDictionary)placeCachePerAppCountsDict;
- (NSDictionary)placeCacheResultsDict;
- (id)getRecvBytesForAllApps;
- (id)getXmitBytesForAllApps;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)getTotalRequestCountFor:(id)for;
- (int64_t)getTotalRequestCountForAllApps;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_getCacheTotal:(unsigned __int8)total forApp:(id)app;
- (void)_fetchPlaceCacheReults;
- (void)_reloadData;
- (void)_resetLogs;
- (void)_toggleLogging;
- (void)requestLogs:(id)logs;
- (void)setAppRequestDict:(id)dict;
- (void)setIsLoggingEnabled:(BOOL)enabled;
- (void)setPlaceCachePerAppCountsDict:(id)dict;
- (void)setPlaceCacheResultsDict:(id)dict;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GeoRequestCounterTableViewController

- (unint64_t)_getCacheTotal:(unsigned __int8)total forApp:(id)app
{
  totalCopy = total;
  v5 = [(NSDictionary *)self->_placeCachePerAppCountsDict objectForKeyedSubscript:app];
  v6 = [NSNumber numberWithUnsignedChar:totalCopy];
  v7 = [v5 objectForKeyedSubscript:v6];

  unsignedIntegerValue = [v7 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (id)getRecvBytesForAllApps
{
  appRequestDict = [(GeoRequestCounterTableViewController *)self appRequestDict];
  allValues = [appRequestDict allValues];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = allValues;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 += [*(*(&v12 + 1) + 8 * i) recvBytes];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = [NSByteCountFormatter stringFromByteCount:v7 countStyle:3];

  return v10;
}

- (id)getXmitBytesForAllApps
{
  appRequestDict = [(GeoRequestCounterTableViewController *)self appRequestDict];
  allValues = [appRequestDict allValues];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = allValues;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 += [*(*(&v12 + 1) + 8 * i) xmitBytes];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = [NSByteCountFormatter stringFromByteCount:v7 countStyle:3];

  return v10;
}

- (int64_t)getTotalRequestCountForAllApps
{
  appRequestDict = [(GeoRequestCounterTableViewController *)self appRequestDict];
  allValues = [appRequestDict allValues];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = allValues;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 += [(GeoRequestCounterTableViewController *)self getTotalRequestCountFor:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)getTotalRequestCountFor:(id)for
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100DF3570;
  v6[3] = &unk_101655428;
  v8 = &v9;
  forCopy = for;
  v7 = forCopy;
  [forCopy enumerateRequestTypes:v6];
  v4 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v4;
}

- (void)_reloadData
{
  appRequestDict = self->_appRequestDict;
  self->_appRequestDict = 0;

  requestLogs = self->_requestLogs;
  self->_requestLogs = 0;

  placeCacheResults = self->_placeCacheResults;
  self->_placeCacheResults = 0;

  placeCacheResultsDict = self->_placeCacheResultsDict;
  self->_placeCacheResultsDict = 0;

  placeCachePerAppCountsDict = self->_placeCachePerAppCountsDict;
  self->_placeCachePerAppCountsDict = 0;

  placeCacheCountsOrderedKeys = self->_placeCacheCountsOrderedKeys;
  self->_placeCacheCountsOrderedKeys = 0;

  tableView = [(GeoRequestCounterTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)_resetLogs
{
  reqCounter = [(GeoRequestCounterTableViewController *)self reqCounter];
  [reqCounter clearCounters];

  [(GeoRequestCounterTableViewController *)self _reloadData];
  v5 = objc_alloc_init(UIAlertController);
  [v5 setTitle:@"GEO Request Counter"];
  [v5 setMessage:@"Logged Data has been cleared."];
  v4 = [UIAlertAction actionWithTitle:@"OK" style:2 handler:0];
  [v5 addAction:v4];

  [(GeoRequestCounterTableViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_toggleLogging
{
  v3 = [(GeoRequestCounterTableViewController *)self isLoggingEnabled]^ 1;

  [(GeoRequestCounterTableViewController *)self setIsLoggingEnabled:v3];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section > 2)
  {
    if (section == 3)
    {
      appRequestOrderedKeys = [(GeoRequestCounterTableViewController *)self appRequestOrderedKeys];
      v7 = [appRequestOrderedKeys objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

      appRequestDict = [(GeoRequestCounterTableViewController *)self appRequestDict];
      v14 = [appRequestDict objectForKeyedSubscript:v7];

      v15 = [[GeoRequestDetailTableViewController alloc] initWithGEORequestCounterInfo:v14];
    }

    else
    {
      if (section != 4)
      {
        if (section == 5)
        {
          tableView = [(GeoRequestCounterTableViewController *)self tableView];
          [tableView deselectRowAtIndexPath:pathCopy animated:1];
        }

        goto LABEL_23;
      }

      placeCacheCountsOrderedKeys = [(GeoRequestCounterTableViewController *)self placeCacheCountsOrderedKeys];
      v7 = [placeCacheCountsOrderedKeys objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

      placeCacheResultsDict = [(GeoRequestCounterTableViewController *)self placeCacheResultsDict];
      v14 = [placeCacheResultsDict objectForKeyedSubscript:v7];

      v15 = [[GeoPlaceCacheDetailTableViewController alloc] initWithGEORequestCounterCacheResults:v14];
    }

    v20 = v15;
    [(GeoRequestDetailTableViewController *)v15 setTitle:v7];
    navigationController = [(GeoRequestCounterTableViewController *)self navigationController];
    [navigationController pushViewController:v20 animated:1];

LABEL_22:
    goto LABEL_23;
  }

  if (section)
  {
    if (section == 1)
    {
      v16 = [GeoTotalRequestCountTableViewController alloc];
      appRequestDict2 = [(GeoRequestCounterTableViewController *)self appRequestDict];
      v7 = [(GeoTotalRequestCountTableViewController *)v16 initWithDictionary:appRequestDict2];

      v6 = v7;
    }

    else
    {
      if (section != 2)
      {
        goto LABEL_23;
      }

      v6 = [[GeoPlaceCacheDetailTableViewController alloc] initWithGEORequestCounterCacheResults:self->_placeCacheResults];
      v7 = v6;
    }

    [(GeoPlaceCacheDetailTableViewController *)v6 setTitle:@"Total Request"];
LABEL_21:
    navigationController2 = [(GeoRequestCounterTableViewController *)self navigationController];
    [navigationController2 pushViewController:v7 animated:1];

    goto LABEL_22;
  }

  v9 = [pathCopy row];
  if (v9 != 3)
  {
    if (v9 == 2)
    {
      v10 = [GeoRequestCounterSelectionTableViewController alloc];
      v11 = 104;
    }

    else
    {
      if (v9 != 1)
      {
        goto LABEL_23;
      }

      v10 = [GeoRequestCounterSelectionTableViewController alloc];
      v11 = 88;
    }

    v7 = [(GeoRequestCounterSelectionTableViewController *)v10 initWithSelection:*(&self->super.super.super.super.isa + v11)];
    goto LABEL_21;
  }

  [(GeoRequestCounterTableViewController *)self _resetLogs];
LABEL_23:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  v8 = 0;
  if (section > 2)
  {
    switch(section)
    {
      case 3:
        v8 = [viewCopy dequeueReusableCellWithIdentifier:@"AppRequests"];
        if (!v8)
        {
          v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"AppRequests"];
        }

        appRequestOrderedKeys = [(GeoRequestCounterTableViewController *)self appRequestOrderedKeys];
        v13 = [appRequestOrderedKeys objectAtIndex:{objc_msgSend(pathCopy, "row")}];

        view = [(GeoRequestCounterTableViewController *)self view];
        window = [view window];
        if (window)
        {
          view2 = [(GeoRequestCounterTableViewController *)self view];
          [view2 window];
          v29 = v28 = viewCopy;
          screen = [v29 screen];
          [screen scale];
          v31 = [UIImage _applicationIconImageForBundleIdentifier:v13 format:0 scale:?];

          viewCopy = v28;
        }

        else
        {
          view2 = +[UIScreen mainScreen];
          [view2 scale];
          v31 = [UIImage _applicationIconImageForBundleIdentifier:v13 format:0 scale:?];
        }

        imageView = [v8 imageView];
        [imageView setImage:v31];

        appRequestDict = [(GeoRequestCounterTableViewController *)self appRequestDict];
        v50 = [appRequestDict objectForKeyedSubscript:v13];

        textLabel = [v8 textLabel];
        [textLabel setText:v13];

        v52 = [(GeoRequestCounterTableViewController *)self getTotalRequestCountFor:v50];
        v53 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [v50 xmitBytes], 3);
        v54 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [v50 recvBytes], 3);
        v55 = [NSString stringWithFormat:@"%ld requests : xmit:%@ / recv:%@", v52, v53, v54];
        detailTextLabel = [v8 detailTextLabel];
        [detailTextLabel setText:v55];

        [v8 setAccessoryType:1];
        break;
      case 4:
        v8 = [viewCopy dequeueReusableCellWithIdentifier:@"CacheRequests"];
        if (!v8)
        {
          v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"CacheRequests"];
        }

        placeCacheCountsOrderedKeys = [(GeoRequestCounterTableViewController *)self placeCacheCountsOrderedKeys];
        v13 = [placeCacheCountsOrderedKeys objectAtIndex:{objc_msgSend(pathCopy, "row")}];

        view3 = [(GeoRequestCounterTableViewController *)self view];
        window2 = [view3 window];
        if (window2)
        {
          view4 = [(GeoRequestCounterTableViewController *)self view];
          window3 = [view4 window];
          [window3 screen];
          v44 = v43 = viewCopy;
          [v44 scale];
          v31 = [UIImage _applicationIconImageForBundleIdentifier:v13 format:0 scale:?];

          viewCopy = v43;
        }

        else
        {
          view4 = +[UIScreen mainScreen];
          [view4 scale];
          v31 = [UIImage _applicationIconImageForBundleIdentifier:v13 format:0 scale:?];
        }

        imageView2 = [v8 imageView];
        [imageView2 setImage:v31];

        textLabel2 = [v8 textLabel];
        [textLabel2 setText:v13];

        v59 = [NSString stringWithFormat:@"%ld hits / %ld misses / %ld expired", [(GeoRequestCounterTableViewController *)self getCacheHitsForApp:v13], [(GeoRequestCounterTableViewController *)self getCacheMissesForApp:v13], [(GeoRequestCounterTableViewController *)self getCacheExpiredForApp:v13]];
        detailTextLabel2 = [v8 detailTextLabel];
        [detailTextLabel2 setText:v59];

        [v8 setAccessoryType:1];
        break;
      case 5:
        v8 = [viewCopy dequeueReusableCellWithIdentifier:@"RoutePreloadSession"];
        if (!v8)
        {
          v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"RoutePreloadSession"];
        }

        routePreloadSessions = [(GeoRequestCounterTableViewController *)self routePreloadSessions];
        v13 = [routePreloadSessions objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

        dateIntervalFormatter = self->_dateIntervalFormatter;
        dateInterval = [v13 dateInterval];
        v16 = [(NSDateIntervalFormatter *)dateIntervalFormatter stringFromDateInterval:dateInterval];
        textLabel3 = [v8 textLabel];
        [textLabel3 setText:v16];

        transportType = [v13 transportType];
        if (transportType >= 7)
        {
          v19 = [NSString stringWithFormat:@"(unknown: %i)", transportType];
        }

        else
        {
          v19 = *(&off_101655478 + (transportType & 7));
        }

        v46 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@: Preloaded: %llu - Missed: %llu / %llu", v19, [v13 tilesPreloaded], objc_msgSend(v13, "tilesMissed"), objc_msgSend(v13, "tilesUsed"));
        detailTextLabel3 = [v8 detailTextLabel];
        [detailTextLabel3 setText:v46];

        [v8 setAccessoryType:0];
        [v8 setSelectionStyle:0];

        goto LABEL_37;
      default:
        goto LABEL_38;
    }

LABEL_37:
    goto LABEL_38;
  }

  switch(section)
  {
    case 0:
      v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
      v20 = [pathCopy row];
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          if (v20 == 3)
          {
            textLabel4 = [v8 textLabel];
            [textLabel4 setText:@"Clear Logs"];
          }

          goto LABEL_38;
        }

        v21 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];

        [v21 setSelectionStyle:3];
        textLabel5 = [v21 textLabel];
        [textLabel5 setText:@"Interface Filters"];

        v23 = 104;
LABEL_43:
        currentSelectionString = [*(&self->super.super.super.super.isa + v23) currentSelectionString];
        detailTextLabel4 = [v21 detailTextLabel];
        [detailTextLabel4 setText:currentSelectionString];

        [v21 setAccessoryType:1];
        v8 = v21;
        goto LABEL_38;
      }

      if (v20)
      {
        if (v20 != 1)
        {
          goto LABEL_38;
        }

        v21 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];

        [v21 setSelectionStyle:3];
        textLabel6 = [v21 textLabel];
        [textLabel6 setText:@"Duration"];

        v23 = 88;
        goto LABEL_43;
      }

      textLabel7 = [v8 textLabel];
      [textLabel7 setText:@"Enable Counter"];

      v13 = objc_alloc_init(UISwitch);
      [v13 setOn:{-[GeoRequestCounterTableViewController isLoggingEnabled](self, "isLoggingEnabled")}];
      [v13 addTarget:self action:"_toggleLogging" forControlEvents:4096];
      [v8 setAccessoryView:v13];
      [v8 setSelectionStyle:0];
      goto LABEL_37;
    case 1:
      v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
      textLabel8 = [v8 textLabel];
      [textLabel8 setText:@"Total Counts"];

      getTotalRequestCountForAllApps = [(GeoRequestCounterTableViewController *)self getTotalRequestCountForAllApps];
      getXmitBytesForAllApps = [(GeoRequestCounterTableViewController *)self getXmitBytesForAllApps];
      getRecvBytesForAllApps = [(GeoRequestCounterTableViewController *)self getRecvBytesForAllApps];
      v36 = [NSString stringWithFormat:@"%ld requests : xmit:%@ / recv:%@", getTotalRequestCountForAllApps, getXmitBytesForAllApps, getRecvBytesForAllApps];
      detailTextLabel5 = [v8 detailTextLabel];
      [detailTextLabel5 setText:v36];

      break;
    case 2:
      v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
      textLabel9 = [v8 textLabel];
      [textLabel9 setText:@"Total Counts"];

      v10 = [NSString stringWithFormat:@"%ld hits / %ld misses / %ld expired", self->_totalCacheHits, self->_totalCacheMisses, self->_totalCacheExpired];
      detailTextLabel6 = [v8 detailTextLabel];
      [detailTextLabel6 setText:v10];

      break;
    default:
      goto LABEL_38;
  }

  [v8 setAccessoryType:1];
LABEL_38:

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_101655448 + section);
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section > 2)
  {
    switch(section)
    {
      case 3:
        appRequestDict = [(GeoRequestCounterTableViewController *)self appRequestDict];
        break;
      case 4:
        appRequestDict = [(GeoRequestCounterTableViewController *)self placeCacheResultsDict];
        break;
      case 5:
        appRequestDict = [(GeoRequestCounterTableViewController *)self routePreloadSessions];
        break;
      default:
        goto LABEL_13;
    }

    v9 = appRequestDict;
    v7 = [appRequestDict count];

    goto LABEL_16;
  }

  if ((section - 1) < 2)
  {
    v7 = 1;
    goto LABEL_16;
  }

  if (section)
  {
LABEL_13:
    v7 = 0;
    goto LABEL_16;
  }

  if ([(GeoRequestCounterTableViewController *)self isLoggingEnabled])
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

LABEL_16:

  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(GeoRequestCounterTableViewController *)self isLoggingEnabled])
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

- (NSArray)routePreloadSessions
{
  isLoggingEnabled = [(GeoRequestCounterTableViewController *)self isLoggingEnabled];
  routePreloadSessions = self->_routePreloadSessions;
  if (isLoggingEnabled && !routePreloadSessions)
  {
    reqCounter = [(GeoRequestCounterTableViewController *)self reqCounter];
    [(GeoRequestCounterDurations *)self->_durations currentDurationInterval];
    v7 = [NSDate dateWithTimeIntervalSinceNow:-v6];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100DF460C;
    v9[3] = &unk_101655400;
    v9[4] = self;
    [reqCounter fetchRoutePreloadSessionsFrom:v7 completion:v9 completionQueue:&_dispatch_main_q];

    routePreloadSessions = self->_routePreloadSessions;
  }

  return routePreloadSessions;
}

- (void)requestLogs:(id)logs
{
  logsCopy = logs;
  v5 = logsCopy;
  requestLogs = self->_requestLogs;
  if (requestLogs)
  {
    (*(logsCopy + 2))(logsCopy, requestLogs);
  }

  else if ([(GeoRequestCounterTableViewController *)self isLoggingEnabled])
  {
    reqCounter = [(GeoRequestCounterTableViewController *)self reqCounter];
    [(GeoRequestCounterDurations *)self->_durations currentDurationInterval];
    v9 = [NSDate dateWithTimeIntervalSinceNow:-v8];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100DF4794;
    v10[3] = &unk_1016601F0;
    v10[4] = self;
    v11 = v5;
    [reqCounter readRequestLogsSince:v9 handler:v10];
  }

  else
  {
    v5[2](v5, 0);
  }
}

- (void)setPlaceCachePerAppCountsDict:(id)dict
{
  if (self->_placeCachePerAppCountsDict != dict)
  {
    v4 = [dict copy];
    placeCachePerAppCountsDict = self->_placeCachePerAppCountsDict;
    self->_placeCachePerAppCountsDict = v4;
  }
}

- (NSDictionary)placeCachePerAppCountsDict
{
  if (!self->_placeCachePerAppCountsDict && [(GeoRequestCounterTableViewController *)self isLoggingEnabled])
  {
    [(GeoRequestCounterTableViewController *)self _fetchPlaceCacheReults];
  }

  placeCachePerAppCountsDict = self->_placeCachePerAppCountsDict;

  return placeCachePerAppCountsDict;
}

- (void)setPlaceCacheResultsDict:(id)dict
{
  if (self->_placeCacheResultsDict != dict)
  {
    v4 = [dict copy];
    placeCacheResultsDict = self->_placeCacheResultsDict;
    self->_placeCacheResultsDict = v4;

    allKeys = [(NSDictionary *)self->_placeCacheResultsDict allKeys];
    v9 = [allKeys sortedArrayUsingSelector:"compare:"];

    if (v9)
    {
      v7 = [NSOrderedSet orderedSetWithArray:v9];
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong(&self->_placeCacheCountsOrderedKeys, v7);
    v8 = v9;
    if (v9)
    {

      v8 = v9;
    }
  }
}

- (NSDictionary)placeCacheResultsDict
{
  if (!self->_placeCacheResultsDict && [(GeoRequestCounterTableViewController *)self isLoggingEnabled])
  {
    [(GeoRequestCounterTableViewController *)self _fetchPlaceCacheReults];
  }

  placeCacheResultsDict = self->_placeCacheResultsDict;

  return placeCacheResultsDict;
}

- (void)_fetchPlaceCacheReults
{
  reqCounter = [(GeoRequestCounterTableViewController *)self reqCounter];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100DF4BB8;
  v4[3] = &unk_101660FB0;
  v4[4] = self;
  [reqCounter placeCacheGetCounts:0 forApp:0 inTimeRange:0 ofType:0 handler:v4];
}

- (void)setAppRequestDict:(id)dict
{
  if (self->_appRequestDict != dict)
  {
    dictCopy = dict;
    +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [dictCopy count]);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100DF521C;
    v14 = &unk_1016553B0;
    v5 = v15 = self;
    v16 = v5;
    [dictCopy enumerateKeysAndObjectsUsingBlock:&v11];

    v6 = [v5 copy];
    appRequestDict = self->_appRequestDict;
    self->_appRequestDict = v6;

    allKeys = [(NSDictionary *)self->_appRequestDict allKeys];
    v9 = [allKeys sortedArrayUsingSelector:"compare:"];

    if (v9)
    {
      v10 = [NSOrderedSet orderedSetWithArray:v9];
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong(&self->_appRequestOrderedKeys, v10);
    if (v9)
    {
    }
  }
}

- (NSDictionary)appRequestDict
{
  if (!self->_appRequestDict && [(GeoRequestCounterTableViewController *)self isLoggingEnabled])
  {
    reqCounter = [(GeoRequestCounterTableViewController *)self reqCounter];
    [(GeoRequestCounterDurations *)self->_durations currentDurationInterval];
    v5 = [NSDate dateWithTimeIntervalSinceNow:-v4];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100DF5398;
    v8[3] = &unk_101655388;
    v8[4] = self;
    [reqCounter readRequestsPerAppSince:v5 handler:v8];
  }

  appRequestDict = self->_appRequestDict;

  return appRequestDict;
}

- (GEORequestCounter)reqCounter
{
  reqCounter = self->_reqCounter;
  if (!reqCounter)
  {
    v4 = objc_alloc_init(GEORequestCounter);
    v5 = self->_reqCounter;
    self->_reqCounter = v4;

    reqCounter = self->_reqCounter;
  }

  return reqCounter;
}

- (void)setIsLoggingEnabled:(BOOL)enabled
{
  self->_isLoggingEnabled = enabled;
  reqCounter = [(GeoRequestCounterTableViewController *)self reqCounter];
  [reqCounter setCountersEnabled:self->_isLoggingEnabled];

  tableView = [(GeoRequestCounterTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = GeoRequestCounterTableViewController;
  [(GeoRequestCounterTableViewController *)&v13 viewDidLoad];
  v3 = objc_alloc_init(GeoRequestCounterDurations);
  durations = self->_durations;
  self->_durations = v3;

  currentSelection = [(GeoRequestCounterDurations *)self->_durations currentSelection];
  self->_currentDuration = [currentSelection firstIndex];

  v6 = objc_alloc_init(GeoRequestCounterInterfaces);
  interfaces = self->_interfaces;
  self->_interfaces = v6;

  [(GeoRequestCounterTableViewController *)self setTitle:@"geod Counters"];
  reqCounter = [(GeoRequestCounterTableViewController *)self reqCounter];
  self->_isLoggingEnabled = [reqCounter countersEnabled];

  v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:13 target:self action:"_reloadData"];
  navigationItem = [(GeoRequestCounterTableViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v9];

  v11 = objc_alloc_init(NSDateIntervalFormatter);
  dateIntervalFormatter = self->_dateIntervalFormatter;
  self->_dateIntervalFormatter = v11;

  [(NSDateIntervalFormatter *)self->_dateIntervalFormatter setDateStyle:1];
  [(NSDateIntervalFormatter *)self->_dateIntervalFormatter setTimeStyle:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = GeoRequestCounterTableViewController;
  [(GeoRequestCounterTableViewController *)&v8 viewWillAppear:appear];
  currentSelection = [(GeoRequestCounterDurations *)self->_durations currentSelection];
  firstIndex = [currentSelection firstIndex];

  currentDuration = self->_currentDuration;
  if (currentDuration != firstIndex)
  {
    self->_currentDuration = firstIndex;
  }

  currentInterfaces = [(GeoRequestCounterInterfaces *)self->_interfaces currentInterfaces];
  if (self->_currentInterfaces != currentInterfaces)
  {
    self->_currentInterfaces = currentInterfaces;
    goto LABEL_7;
  }

  if (currentDuration != firstIndex)
  {
LABEL_7:
    [(GeoRequestCounterTableViewController *)self _reloadData];
  }
}

@end