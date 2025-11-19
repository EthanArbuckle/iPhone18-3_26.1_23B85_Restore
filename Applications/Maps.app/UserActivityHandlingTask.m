@interface UserActivityHandlingTask
+ (id)taskForUserActivity:(id)a3 atColdLaunch:(BOOL)a4;
- (UserActivityHandlingTask)initWithUserActivity:(id)a3;
- (void)_useMapsUserSessionEntity;
- (void)taskFinished:(id)a3;
@end

@implementation UserActivityHandlingTask

- (void)taskFinished:(id)a3
{
  v4.receiver = self;
  v4.super_class = UserActivityHandlingTask;
  [(RichMapsActivityCreatingTaskImpl *)&v4 taskFinished:a3];
  [(UserActivityHandlingTask *)self _sendAnalytics];
}

- (UserActivityHandlingTask)initWithUserActivity:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UserActivityHandlingTask;
  v5 = [(UserActivityHandlingTask *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UserActivityHandlingTask *)v5 setUserActivity:v4];
    [(UserActivityHandlingTask *)v6 _useMapsUserSessionEntity];
  }

  return v6;
}

- (void)_useMapsUserSessionEntity
{
  v2 = [(UserActivityHandlingTask *)self userActivity];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:_MKUserActivitySharedSessionEntityStringKey];

  if (v4)
  {
    v5 = [v4 componentsSeparatedByString:@"="];
    v8 = [v5 lastObject];

    v6 = [[GEOUserSessionEntity alloc] initWithSessionEntityString:v8];
    v7 = +[GEOUserSession sharedInstance];
    [v7 setMapsUserSessionEntity:v6];
  }
}

+ (id)taskForUserActivity:(id)a3 atColdLaunch:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v12 = 0;
    goto LABEL_19;
  }

  v7 = [v5 activityType];
  if ([v7 isEqual:@"com.apple.Maps"])
  {
    v8 = [v6 userInfo];
    v9 = [v8 objectForKey:WGWidgetUserInfoKeyKind];
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

  if (![v7 isEqual:@"com.apple.Maps.Restore"])
  {
    if ([v7 isEqual:@"com.apple.Maps.NewWindow"])
    {
      v11 = _NewWindowActivityHandlingTask;
    }

    else if ([v7 isEqualToString:CSQueryContinuationActionType])
    {
      v11 = _CoreSpotlightActivityHandlingTask;
    }

    else if ([v7 isEqualToString:@"MKPlaceBrandUserActivity"])
    {
      v11 = _PlaceBrandActivityHandlingTask;
    }

    else
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v7 isEqualToString:v14];

      if (!v15)
      {
        v17 = sub_100005610();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = 138412290;
          v19 = v7;
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
  [(_MapsActivityRestoreHandlingTask *)v12 setColdLaunch:v4];
LABEL_18:

LABEL_19:

  return v12;
}

@end