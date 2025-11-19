@interface SceneSessionRestorationArbiter
+ (id)activityForSceneSession:(id)a3;
@end

@implementation SceneSessionRestorationArbiter

+ (id)activityForSceneSession:(id)a3
{
  v3 = a3;
  v4 = [v3 stateRestorationActivity];

  if (v4)
  {
    v5 = [v3 stateRestorationActivity];
    v6 = sub_100005610();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v26 = v3;
      v7 = "activityForSceneSession: %{private}@ using stateRestorationActivity";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v7, buf, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v8 = [v3 role];
  v9 = [v8 isEqualToString:UIWindowSceneSessionRoleApplication];

  if (v9)
  {
    v5 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Maps.Restore"];
    v23 = @"MapsActivity";
    v10 = +[MapsActivity mapsActivityPerDefault];
    v11 = [v10 data];
    v24 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v5 setUserInfo:v12];

    v6 = sub_100005610();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v26 = v3;
      v7 = "activityForSceneSession: %{private}@ using default MapsActivity";
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v14 = [v3 role];
  if ([v14 isEqualToString:_UIWindowSceneSessionRoleCarPlay])
  {
    v15 = [v3 scene];

    if (!v15)
    {
      v16 = +[NSUserDefaults standardUserDefaults];
      v17 = [v16 BOOLForKey:@"NavigationUserActivityPendingDeletion"];

      if ((v17 & 1) == 0)
      {
        v18 = +[NSUserDefaults standardUserDefaults];
        v6 = [v18 objectForKey:@"NavigationUserActivityDefault"];

        if (v6)
        {
          v5 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Maps.Restore"];
          v21 = @"MapsActivity";
          v22 = v6;
          v19 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          [v5 setUserInfo:v19];

          v20 = sub_100005610();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 138477827;
            v26 = v3;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "activityForSceneSession: %{private}@ restoring CarPlay nav session from user defaults", buf, 0xCu);
          }

          goto LABEL_8;
        }
      }
    }
  }

  else
  {
  }

  v5 = 0;
LABEL_9:

  return v5;
}

@end