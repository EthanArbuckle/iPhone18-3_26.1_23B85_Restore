@interface AppCrashHistoryController
- (id)appNameForBundleID:(id)d;
- (id)userFriendlyAppNameForBundleID:(id)d;
- (void)parseLogsWithCollector:(id)collector;
- (void)start;
@end

@implementation AppCrashHistoryController

- (void)start
{
  v3 = [DSGeneralLogCollector alloc];
  inputs = [(AppCrashHistoryController *)self inputs];
  logIds = [inputs logIds];
  v6 = [v3 initWithLogIDs:logIds];

  if (([(AppCrashHistoryController *)self isCancelled]& 1) == 0)
  {
    [(AppCrashHistoryController *)self parseLogsWithCollector:v6];
  }

  [(AppCrashHistoryController *)self setFinished:1];
}

- (void)parseLogsWithCollector:(id)collector
{
  collectorCopy = collector;
  v5 = +[NSMutableDictionary dictionary];
  v6 = +[NSMutableDictionary dictionary];
  v7 = +[NSMutableSet set];
  objc_initWeak(&location, self);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100001818;
  v26[3] = &unk_100004208;
  objc_copyWeak(&v30, &location);
  v8 = v5;
  v27 = v8;
  v9 = v7;
  v28 = v9;
  v10 = v6;
  v29 = v10;
  [collectorCopy enumerateLogLinesWithBlock:v26];
  if (([(AppCrashHistoryController *)self isCancelled]& 1) == 0)
  {
    v11 = +[DSGeneralLogCollector latestUserLog];
    restoreDate = [v11 restoreDate];
    [restoreDate timeIntervalSinceNow];
    v14 = v13;

    +[NSMutableArray array];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100001A34;
    v23[3] = &unk_100004230;
    v25 = v14 / -86400.0;
    v15 = v23[4] = self;
    v24 = v15;
    [v8 enumerateKeysAndObjectsUsingBlock:v23];
    v16 = +[NSNull null];
    if ([v15 count])
    {
      result = [(AppCrashHistoryController *)self result];
      [result setStatusCode:&off_100004448];

      result2 = [NSSortDescriptor sortDescriptorWithKey:&stru_100004390 ascending:1];
      v32 = result2;
      v19 = [NSArray arrayWithObjects:&v32 count:1];
      v20 = [v15 sortedArrayUsingDescriptors:v19];

      v16 = v20;
    }

    else
    {
      result2 = [(AppCrashHistoryController *)self result];
      [result2 setStatusCode:&off_100004460];
    }

    v21 = +[NSMutableDictionary dictionary];
    [v21 setValue:v16 forKey:@"frequentlyCrashingApps"];
    if ([v10 count])
    {
      [v21 setValue:v10 forKey:@"panicCounts"];
    }

    result3 = [(AppCrashHistoryController *)self result];
    [result3 setData:v21];
  }

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- (id)userFriendlyAppNameForBundleID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (!dCopy || ![dCopy length])
  {
    goto LABEL_11;
  }

  v6 = [v5 length];
  if (v6 < [@"com.apple." length])
  {
    goto LABEL_9;
  }

  v7 = [v5 substringToIndex:{objc_msgSend(@"com.apple.", "length")}];
  if (([v7 isEqualToString:@"com.apple."] & 1) == 0)
  {

    goto LABEL_9;
  }

  inputs = [(AppCrashHistoryController *)self inputs];
  whitelist = [inputs whitelist];
  if ([whitelist count])
  {
    inputs2 = [(AppCrashHistoryController *)self inputs];
    whitelist2 = [inputs2 whitelist];
    v12 = [whitelist2 containsObject:v5];

    if (!v12)
    {
      goto LABEL_11;
    }

LABEL_9:
    v13 = [(AppCrashHistoryController *)self appNameForBundleID:v5];
    goto LABEL_12;
  }

LABEL_11:
  v13 = 0;
LABEL_12:

  return v13;
}

- (id)appNameForBundleID:(id)d
{
  dCopy = d;
  v9 = 0;
  v4 = [LSApplicationRecord bundleRecordWithApplicationIdentifier:dCopy error:&v9];
  v5 = v9;
  if (v4)
  {
    localizedName = [v4 localizedName];
  }

  else
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100001D78(dCopy, v5, v7);
    }

    localizedName = 0;
  }

  return localizedName;
}

@end