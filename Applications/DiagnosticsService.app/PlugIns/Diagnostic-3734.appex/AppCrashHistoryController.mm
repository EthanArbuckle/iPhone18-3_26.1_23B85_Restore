@interface AppCrashHistoryController
- (id)appNameForBundleID:(id)a3;
- (id)userFriendlyAppNameForBundleID:(id)a3;
- (void)parseLogsWithCollector:(id)a3;
- (void)start;
@end

@implementation AppCrashHistoryController

- (void)start
{
  v3 = [DSGeneralLogCollector alloc];
  v4 = [(AppCrashHistoryController *)self inputs];
  v5 = [v4 logIds];
  v6 = [v3 initWithLogIDs:v5];

  if (([(AppCrashHistoryController *)self isCancelled]& 1) == 0)
  {
    [(AppCrashHistoryController *)self parseLogsWithCollector:v6];
  }

  [(AppCrashHistoryController *)self setFinished:1];
}

- (void)parseLogsWithCollector:(id)a3
{
  v4 = a3;
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
  [v4 enumerateLogLinesWithBlock:v26];
  if (([(AppCrashHistoryController *)self isCancelled]& 1) == 0)
  {
    v11 = +[DSGeneralLogCollector latestUserLog];
    v12 = [v11 restoreDate];
    [v12 timeIntervalSinceNow];
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
      v17 = [(AppCrashHistoryController *)self result];
      [v17 setStatusCode:&off_100004448];

      v18 = [NSSortDescriptor sortDescriptorWithKey:&stru_100004390 ascending:1];
      v32 = v18;
      v19 = [NSArray arrayWithObjects:&v32 count:1];
      v20 = [v15 sortedArrayUsingDescriptors:v19];

      v16 = v20;
    }

    else
    {
      v18 = [(AppCrashHistoryController *)self result];
      [v18 setStatusCode:&off_100004460];
    }

    v21 = +[NSMutableDictionary dictionary];
    [v21 setValue:v16 forKey:@"frequentlyCrashingApps"];
    if ([v10 count])
    {
      [v21 setValue:v10 forKey:@"panicCounts"];
    }

    v22 = [(AppCrashHistoryController *)self result];
    [v22 setData:v21];
  }

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- (id)userFriendlyAppNameForBundleID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ![v4 length])
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

  v8 = [(AppCrashHistoryController *)self inputs];
  v9 = [v8 whitelist];
  if ([v9 count])
  {
    v10 = [(AppCrashHistoryController *)self inputs];
    v11 = [v10 whitelist];
    v12 = [v11 containsObject:v5];

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

- (id)appNameForBundleID:(id)a3
{
  v3 = a3;
  v9 = 0;
  v4 = [LSApplicationRecord bundleRecordWithApplicationIdentifier:v3 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [v4 localizedName];
  }

  else
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100001D78(v3, v5, v7);
    }

    v6 = 0;
  }

  return v6;
}

@end