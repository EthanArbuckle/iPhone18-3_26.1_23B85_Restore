@interface UserActivityHandlingTask
+ (id)taskForUserActivity:(id)activity atColdLaunch:(BOOL)launch;
- (UserActivityHandlingTask)initWithUserActivity:(id)activity;
- (void)_useMapsUserSessionEntity;
- (void)taskFinished:(id)finished;
@end

@implementation UserActivityHandlingTask

- (void)taskFinished:(id)finished
{
  v4.receiver = self;
  v4.super_class = UserActivityHandlingTask;
  [(RichMapsActivityCreatingTaskImpl *)&v4 taskFinished:finished];
  [(UserActivityHandlingTask *)self _sendAnalytics];
}

- (UserActivityHandlingTask)initWithUserActivity:(id)activity
{
  activityCopy = activity;
  v8.receiver = self;
  v8.super_class = UserActivityHandlingTask;
  v5 = [(UserActivityHandlingTask *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UserActivityHandlingTask *)v5 setUserActivity:activityCopy];
    [(UserActivityHandlingTask *)v6 _useMapsUserSessionEntity];
  }

  return v6;
}

- (void)_useMapsUserSessionEntity
{
  userActivity = [(UserActivityHandlingTask *)self userActivity];
  userInfo = [userActivity userInfo];
  v4 = [userInfo objectForKeyedSubscript:_MKUserActivitySharedSessionEntityStringKey];

  if (v4)
  {
    v5 = [v4 componentsSeparatedByString:@"="];
    lastObject = [v5 lastObject];

    v6 = [[GEOUserSessionEntity alloc] initWithSessionEntityString:lastObject];
    v7 = +[GEOUserSession sharedInstance];
    [v7 setMapsUserSessionEntity:v6];
  }
}

+ (id)taskForUserActivity:(id)activity atColdLaunch:(BOOL)launch
{
  launchCopy = launch;
  activityCopy = activity;
  v6 = activityCopy;
  if (!activityCopy)
  {
    v12 = 0;
    goto LABEL_19;
  }

  activityType = [activityCopy activityType];
  if ([activityType isEqual:@"com.apple.Maps"])
  {
    userInfo = [v6 userInfo];
    v9 = [userInfo objectForKey:WGWidgetUserInfoKeyKind];
    v10 = [v9 isEqualToString:@"com.apple.Maps"];

    if (v10)
    {
      v11 = _WidgetActivityHandlingTask;
    }

    else
    {
      v11 = _HandoffActivityHandlingTask;
    }

LABEL_17:
    v12 = [[v11 alloc] initWithUserActivity:v6];
    goto LABEL_18;
  }

  if (![activityType isEqual:@"com.apple.Maps.Restore"])
  {
    if ([activityType isEqual:@"com.apple.Maps.NewWindow"])
    {
      v11 = _NewWindowActivityHandlingTask;
    }

    else if ([activityType isEqualToString:CSQueryContinuationActionType])
    {
      v11 = _CoreSpotlightActivityHandlingTask;
    }

    else if ([activityType isEqualToString:@"MKPlaceBrandUserActivity"])
    {
      v11 = _PlaceBrandActivityHandlingTask;
    }

    else
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [activityType isEqualToString:v14];

      if (!v15)
      {
        v17 = sub_100005610();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = 138412290;
          v19 = activityType;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "UserActivityHandlingTask no handling task for %@", &v18, 0xCu);
        }

        v12 = 0;
        goto LABEL_18;
      }

      v11 = _ReportIncidentIntentHandlingTask;
    }

    goto LABEL_17;
  }

  v12 = [(UserActivityHandlingTask *)[_MapsActivityRestoreHandlingTask alloc] initWithUserActivity:v6];
  [(_MapsActivityRestoreHandlingTask *)v12 setColdLaunch:launchCopy];
LABEL_18:

LABEL_19:

  return v12;
}

@end