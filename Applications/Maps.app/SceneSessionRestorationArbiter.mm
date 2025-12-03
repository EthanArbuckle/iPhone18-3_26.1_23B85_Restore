@interface SceneSessionRestorationArbiter
+ (id)activityForSceneSession:(id)session;
@end

@implementation SceneSessionRestorationArbiter

+ (id)activityForSceneSession:(id)session
{
  sessionCopy = session;
  stateRestorationActivity = [sessionCopy stateRestorationActivity];

  if (stateRestorationActivity)
  {
    stateRestorationActivity2 = [sessionCopy stateRestorationActivity];
    v6 = sub_100005610();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v26 = sessionCopy;
      v7 = "activityForSceneSession: %{private}@ using stateRestorationActivity";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v7, buf, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  role = [sessionCopy role];
  v9 = [role isEqualToString:UIWindowSceneSessionRoleApplication];

  if (v9)
  {
    stateRestorationActivity2 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Maps.Restore"];
    v23 = @"MapsActivity";
    v10 = +[MapsActivity mapsActivityPerDefault];
    data = [v10 data];
    v24 = data;
    v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [stateRestorationActivity2 setUserInfo:v12];

    v6 = sub_100005610();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v26 = sessionCopy;
      v7 = "activityForSceneSession: %{private}@ using default MapsActivity";
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  role2 = [sessionCopy role];
  if ([role2 isEqualToString:_UIWindowSceneSessionRoleCarPlay])
  {
    scene = [sessionCopy scene];

    if (!scene)
    {
      v16 = +[NSUserDefaults standardUserDefaults];
      v17 = [v16 BOOLForKey:@"NavigationUserActivityPendingDeletion"];

      if ((v17 & 1) == 0)
      {
        v18 = +[NSUserDefaults standardUserDefaults];
        v6 = [v18 objectForKey:@"NavigationUserActivityDefault"];

        if (v6)
        {
          stateRestorationActivity2 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Maps.Restore"];
          v21 = @"MapsActivity";
          v22 = v6;
          v19 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          [stateRestorationActivity2 setUserInfo:v19];

          v20 = sub_100005610();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 138477827;
            v26 = sessionCopy;
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

  stateRestorationActivity2 = 0;
LABEL_9:

  return stateRestorationActivity2;
}

@end