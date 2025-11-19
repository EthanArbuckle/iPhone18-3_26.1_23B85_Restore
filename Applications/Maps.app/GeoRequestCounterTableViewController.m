@interface GeoRequestCounterTableViewController
- (GEORequestCounter)reqCounter;
- (NSArray)routePreloadSessions;
- (NSDictionary)appRequestDict;
- (NSDictionary)placeCachePerAppCountsDict;
- (NSDictionary)placeCacheResultsDict;
- (id)getRecvBytesForAllApps;
- (id)getXmitBytesForAllApps;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)getTotalRequestCountFor:(id)a3;
- (int64_t)getTotalRequestCountForAllApps;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_getCacheTotal:(unsigned __int8)a3 forApp:(id)a4;
- (void)_fetchPlaceCacheReults;
- (void)_reloadData;
- (void)_resetLogs;
- (void)_toggleLogging;
- (void)requestLogs:(id)a3;
- (void)setAppRequestDict:(id)a3;
- (void)setIsLoggingEnabled:(BOOL)a3;
- (void)setPlaceCachePerAppCountsDict:(id)a3;
- (void)setPlaceCacheResultsDict:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GeoRequestCounterTableViewController

- (unint64_t)_getCacheTotal:(unsigned __int8)a3 forApp:(id)a4
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_placeCachePerAppCountsDict objectForKeyedSubscript:a4];
  v6 = [NSNumber numberWithUnsignedChar:v4];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 unsignedIntegerValue];
  return v8;
}

- (id)getRecvBytesForAllApps
{
  v2 = [(GeoRequestCounterTableViewController *)self appRequestDict];
  v3 = [v2 allValues];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
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
  v2 = [(GeoRequestCounterTableViewController *)self appRequestDict];
  v3 = [v2 allValues];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
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
  v3 = [(GeoRequestCounterTableViewController *)self appRequestDict];
  v4 = [v3 allValues];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
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

- (int64_t)getTotalRequestCountFor:(id)a3
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
  v3 = a3;
  v7 = v3;
  [v3 enumerateRequestTypes:v6];
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

  v9 = [(GeoRequestCounterTableViewController *)self tableView];
  [v9 reloadData];
}

- (void)_resetLogs
{
  v3 = [(GeoRequestCounterTableViewController *)self reqCounter];
  [v3 clearCounters];

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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v23 = a4;
  v5 = [v23 section];
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v12 = [(GeoRequestCounterTableViewController *)self appRequestOrderedKeys];
      v7 = [v12 objectAtIndexedSubscript:{objc_msgSend(v23, "row")}];

      v13 = [(GeoRequestCounterTableViewController *)self appRequestDict];
      v14 = [v13 objectForKeyedSubscript:v7];

      v15 = [[GeoRequestDetailTableViewController alloc] initWithGEORequestCounterInfo:v14];
    }

    else
    {
      if (v5 != 4)
      {
        if (v5 == 5)
        {
          v8 = [(GeoRequestCounterTableViewController *)self tableView];
          [v8 deselectRowAtIndexPath:v23 animated:1];
        }

        goto LABEL_23;
      }

      v18 = [(GeoRequestCounterTableViewController *)self placeCacheCountsOrderedKeys];
      v7 = [v18 objectAtIndexedSubscript:{objc_msgSend(v23, "row")}];

      v19 = [(GeoRequestCounterTableViewController *)self placeCacheResultsDict];
      v14 = [v19 objectForKeyedSubscript:v7];

      v15 = [[GeoPlaceCacheDetailTableViewController alloc] initWithGEORequestCounterCacheResults:v14];
    }

    v20 = v15;
    [(GeoRequestDetailTableViewController *)v15 setTitle:v7];
    v21 = [(GeoRequestCounterTableViewController *)self navigationController];
    [v21 pushViewController:v20 animated:1];

LABEL_22:
    goto LABEL_23;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      v16 = [GeoTotalRequestCountTableViewController alloc];
      v17 = [(GeoRequestCounterTableViewController *)self appRequestDict];
      v7 = [(GeoTotalRequestCountTableViewController *)v16 initWithDictionary:v17];

      v6 = v7;
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_23;
      }

      v6 = [[GeoPlaceCacheDetailTableViewController alloc] initWithGEORequestCounterCacheResults:self->_placeCacheResults];
      v7 = v6;
    }

    [(GeoPlaceCacheDetailTableViewController *)v6 setTitle:@"Total Request"];
LABEL_21:
    v22 = [(GeoRequestCounterTableViewController *)self navigationController];
    [v22 pushViewController:v7 animated:1];

    goto LABEL_22;
  }

  v9 = [v23 row];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v66 = a4;
  v7 = [v66 section];
  v8 = 0;
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        v8 = [v6 dequeueReusableCellWithIdentifier:@"AppRequests"];
        if (!v8)
        {
          v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"AppRequests"];
        }

        v24 = [(GeoRequestCounterTableViewController *)self appRequestOrderedKeys];
        v13 = [v24 objectAtIndex:{objc_msgSend(v66, "row")}];

        v25 = [(GeoRequestCounterTableViewController *)self view];
        v26 = [v25 window];
        if (v26)
        {
          v27 = [(GeoRequestCounterTableViewController *)self view];
          [v27 window];
          v29 = v28 = v6;
          v30 = [v29 screen];
          [v30 scale];
          v31 = [UIImage _applicationIconImageForBundleIdentifier:v13 format:0 scale:?];

          v6 = v28;
        }

        else
        {
          v27 = +[UIScreen mainScreen];
          [v27 scale];
          v31 = [UIImage _applicationIconImageForBundleIdentifier:v13 format:0 scale:?];
        }

        v48 = [v8 imageView];
        [v48 setImage:v31];

        v49 = [(GeoRequestCounterTableViewController *)self appRequestDict];
        v50 = [v49 objectForKeyedSubscript:v13];

        v51 = [v8 textLabel];
        [v51 setText:v13];

        v52 = [(GeoRequestCounterTableViewController *)self getTotalRequestCountFor:v50];
        v53 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [v50 xmitBytes], 3);
        v54 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [v50 recvBytes], 3);
        v55 = [NSString stringWithFormat:@"%ld requests : xmit:%@ / recv:%@", v52, v53, v54];
        v56 = [v8 detailTextLabel];
        [v56 setText:v55];

        [v8 setAccessoryType:1];
        break;
      case 4:
        v8 = [v6 dequeueReusableCellWithIdentifier:@"CacheRequests"];
        if (!v8)
        {
          v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"CacheRequests"];
        }

        v38 = [(GeoRequestCounterTableViewController *)self placeCacheCountsOrderedKeys];
        v13 = [v38 objectAtIndex:{objc_msgSend(v66, "row")}];

        v39 = [(GeoRequestCounterTableViewController *)self view];
        v40 = [v39 window];
        if (v40)
        {
          v41 = [(GeoRequestCounterTableViewController *)self view];
          v42 = [v41 window];
          [v42 screen];
          v44 = v43 = v6;
          [v44 scale];
          v31 = [UIImage _applicationIconImageForBundleIdentifier:v13 format:0 scale:?];

          v6 = v43;
        }

        else
        {
          v41 = +[UIScreen mainScreen];
          [v41 scale];
          v31 = [UIImage _applicationIconImageForBundleIdentifier:v13 format:0 scale:?];
        }

        v57 = [v8 imageView];
        [v57 setImage:v31];

        v58 = [v8 textLabel];
        [v58 setText:v13];

        v59 = [NSString stringWithFormat:@"%ld hits / %ld misses / %ld expired", [(GeoRequestCounterTableViewController *)self getCacheHitsForApp:v13], [(GeoRequestCounterTableViewController *)self getCacheMissesForApp:v13], [(GeoRequestCounterTableViewController *)self getCacheExpiredForApp:v13]];
        v60 = [v8 detailTextLabel];
        [v60 setText:v59];

        [v8 setAccessoryType:1];
        break;
      case 5:
        v8 = [v6 dequeueReusableCellWithIdentifier:@"RoutePreloadSession"];
        if (!v8)
        {
          v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"RoutePreloadSession"];
        }

        v12 = [(GeoRequestCounterTableViewController *)self routePreloadSessions];
        v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v66, "row")}];

        dateIntervalFormatter = self->_dateIntervalFormatter;
        v15 = [v13 dateInterval];
        v16 = [(NSDateIntervalFormatter *)dateIntervalFormatter stringFromDateInterval:v15];
        v17 = [v8 textLabel];
        [v17 setText:v16];

        v18 = [v13 transportType];
        if (v18 >= 7)
        {
          v19 = [NSString stringWithFormat:@"(unknown: %i)", v18];
        }

        else
        {
          v19 = *(&off_101655478 + (v18 & 7));
        }

        v46 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@: Preloaded: %llu - Missed: %llu / %llu", v19, [v13 tilesPreloaded], objc_msgSend(v13, "tilesMissed"), objc_msgSend(v13, "tilesUsed"));
        v47 = [v8 detailTextLabel];
        [v47 setText:v46];

        [v8 setAccessoryType:0];
        [v8 setSelectionStyle:0];

        goto LABEL_37;
      default:
        goto LABEL_38;
    }

LABEL_37:
    goto LABEL_38;
  }

  switch(v7)
  {
    case 0:
      v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
      v20 = [v66 row];
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          if (v20 == 3)
          {
            v45 = [v8 textLabel];
            [v45 setText:@"Clear Logs"];
          }

          goto LABEL_38;
        }

        v21 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];

        [v21 setSelectionStyle:3];
        v63 = [v21 textLabel];
        [v63 setText:@"Interface Filters"];

        v23 = 104;
LABEL_43:
        v64 = [*(&self->super.super.super.super.isa + v23) currentSelectionString];
        v65 = [v21 detailTextLabel];
        [v65 setText:v64];

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
        v22 = [v21 textLabel];
        [v22 setText:@"Duration"];

        v23 = 88;
        goto LABEL_43;
      }

      v62 = [v8 textLabel];
      [v62 setText:@"Enable Counter"];

      v13 = objc_alloc_init(UISwitch);
      [v13 setOn:{-[GeoRequestCounterTableViewController isLoggingEnabled](self, "isLoggingEnabled")}];
      [v13 addTarget:self action:"_toggleLogging" forControlEvents:4096];
      [v8 setAccessoryView:v13];
      [v8 setSelectionStyle:0];
      goto LABEL_37;
    case 1:
      v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
      v32 = [v8 textLabel];
      [v32 setText:@"Total Counts"];

      v33 = [(GeoRequestCounterTableViewController *)self getTotalRequestCountForAllApps];
      v34 = [(GeoRequestCounterTableViewController *)self getXmitBytesForAllApps];
      v35 = [(GeoRequestCounterTableViewController *)self getRecvBytesForAllApps];
      v36 = [NSString stringWithFormat:@"%ld requests : xmit:%@ / recv:%@", v33, v34, v35];
      v37 = [v8 detailTextLabel];
      [v37 setText:v36];

      break;
    case 2:
      v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
      v9 = [v8 textLabel];
      [v9 setText:@"Total Counts"];

      v10 = [NSString stringWithFormat:@"%ld hits / %ld misses / %ld expired", self->_totalCacheHits, self->_totalCacheMisses, self->_totalCacheExpired];
      v11 = [v8 detailTextLabel];
      [v11 setText:v10];

      break;
    default:
      goto LABEL_38;
  }

  [v8 setAccessoryType:1];
LABEL_38:

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_101655448 + a4);
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 > 2)
  {
    switch(a4)
    {
      case 3:
        v8 = [(GeoRequestCounterTableViewController *)self appRequestDict];
        break;
      case 4:
        v8 = [(GeoRequestCounterTableViewController *)self placeCacheResultsDict];
        break;
      case 5:
        v8 = [(GeoRequestCounterTableViewController *)self routePreloadSessions];
        break;
      default:
        goto LABEL_13;
    }

    v9 = v8;
    v7 = [v8 count];

    goto LABEL_16;
  }

  if ((a4 - 1) < 2)
  {
    v7 = 1;
    goto LABEL_16;
  }

  if (a4)
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

- (int64_t)numberOfSectionsInTableView:(id)a3
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
  v3 = [(GeoRequestCounterTableViewController *)self isLoggingEnabled];
  routePreloadSessions = self->_routePreloadSessions;
  if (v3 && !routePreloadSessions)
  {
    v5 = [(GeoRequestCounterTableViewController *)self reqCounter];
    [(GeoRequestCounterDurations *)self->_durations currentDurationInterval];
    v7 = [NSDate dateWithTimeIntervalSinceNow:-v6];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100DF460C;
    v9[3] = &unk_101655400;
    v9[4] = self;
    [v5 fetchRoutePreloadSessionsFrom:v7 completion:v9 completionQueue:&_dispatch_main_q];

    routePreloadSessions = self->_routePreloadSessions;
  }

  return routePreloadSessions;
}

- (void)requestLogs:(id)a3
{
  v4 = a3;
  v5 = v4;
  requestLogs = self->_requestLogs;
  if (requestLogs)
  {
    (*(v4 + 2))(v4, requestLogs);
  }

  else if ([(GeoRequestCounterTableViewController *)self isLoggingEnabled])
  {
    v7 = [(GeoRequestCounterTableViewController *)self reqCounter];
    [(GeoRequestCounterDurations *)self->_durations currentDurationInterval];
    v9 = [NSDate dateWithTimeIntervalSinceNow:-v8];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100DF4794;
    v10[3] = &unk_1016601F0;
    v10[4] = self;
    v11 = v5;
    [v7 readRequestLogsSince:v9 handler:v10];
  }

  else
  {
    v5[2](v5, 0);
  }
}

- (void)setPlaceCachePerAppCountsDict:(id)a3
{
  if (self->_placeCachePerAppCountsDict != a3)
  {
    v4 = [a3 copy];
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

- (void)setPlaceCacheResultsDict:(id)a3
{
  if (self->_placeCacheResultsDict != a3)
  {
    v4 = [a3 copy];
    placeCacheResultsDict = self->_placeCacheResultsDict;
    self->_placeCacheResultsDict = v4;

    v6 = [(NSDictionary *)self->_placeCacheResultsDict allKeys];
    v9 = [v6 sortedArrayUsingSelector:"compare:"];

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
  v3 = [(GeoRequestCounterTableViewController *)self reqCounter];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100DF4BB8;
  v4[3] = &unk_101660FB0;
  v4[4] = self;
  [v3 placeCacheGetCounts:0 forApp:0 inTimeRange:0 ofType:0 handler:v4];
}

- (void)setAppRequestDict:(id)a3
{
  if (self->_appRequestDict != a3)
  {
    v4 = a3;
    +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100DF521C;
    v14 = &unk_1016553B0;
    v5 = v15 = self;
    v16 = v5;
    [v4 enumerateKeysAndObjectsUsingBlock:&v11];

    v6 = [v5 copy];
    appRequestDict = self->_appRequestDict;
    self->_appRequestDict = v6;

    v8 = [(NSDictionary *)self->_appRequestDict allKeys];
    v9 = [v8 sortedArrayUsingSelector:"compare:"];

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
    v3 = [(GeoRequestCounterTableViewController *)self reqCounter];
    [(GeoRequestCounterDurations *)self->_durations currentDurationInterval];
    v5 = [NSDate dateWithTimeIntervalSinceNow:-v4];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100DF5398;
    v8[3] = &unk_101655388;
    v8[4] = self;
    [v3 readRequestsPerAppSince:v5 handler:v8];
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

- (void)setIsLoggingEnabled:(BOOL)a3
{
  self->_isLoggingEnabled = a3;
  v4 = [(GeoRequestCounterTableViewController *)self reqCounter];
  [v4 setCountersEnabled:self->_isLoggingEnabled];

  v5 = [(GeoRequestCounterTableViewController *)self tableView];
  [v5 reloadData];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = GeoRequestCounterTableViewController;
  [(GeoRequestCounterTableViewController *)&v13 viewDidLoad];
  v3 = objc_alloc_init(GeoRequestCounterDurations);
  durations = self->_durations;
  self->_durations = v3;

  v5 = [(GeoRequestCounterDurations *)self->_durations currentSelection];
  self->_currentDuration = [v5 firstIndex];

  v6 = objc_alloc_init(GeoRequestCounterInterfaces);
  interfaces = self->_interfaces;
  self->_interfaces = v6;

  [(GeoRequestCounterTableViewController *)self setTitle:@"geod Counters"];
  v8 = [(GeoRequestCounterTableViewController *)self reqCounter];
  self->_isLoggingEnabled = [v8 countersEnabled];

  v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:13 target:self action:"_reloadData"];
  v10 = [(GeoRequestCounterTableViewController *)self navigationItem];
  [v10 setRightBarButtonItem:v9];

  v11 = objc_alloc_init(NSDateIntervalFormatter);
  dateIntervalFormatter = self->_dateIntervalFormatter;
  self->_dateIntervalFormatter = v11;

  [(NSDateIntervalFormatter *)self->_dateIntervalFormatter setDateStyle:1];
  [(NSDateIntervalFormatter *)self->_dateIntervalFormatter setTimeStyle:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = GeoRequestCounterTableViewController;
  [(GeoRequestCounterTableViewController *)&v8 viewWillAppear:a3];
  v4 = [(GeoRequestCounterDurations *)self->_durations currentSelection];
  v5 = [v4 firstIndex];

  currentDuration = self->_currentDuration;
  if (currentDuration != v5)
  {
    self->_currentDuration = v5;
  }

  v7 = [(GeoRequestCounterInterfaces *)self->_interfaces currentInterfaces];
  if (self->_currentInterfaces != v7)
  {
    self->_currentInterfaces = v7;
    goto LABEL_7;
  }

  if (currentDuration != v5)
  {
LABEL_7:
    [(GeoRequestCounterTableViewController *)self _reloadData];
  }
}

@end