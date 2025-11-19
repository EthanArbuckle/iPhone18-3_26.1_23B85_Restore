@interface AddAStopActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation AddAStopActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100005610();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Performing action: %@", &v19, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    v9 = +[CarDisplayController sharedInstance];
    v10 = [v9 isCarAppSceneHostingNavigation];

    if (v10)
    {
      v11 = sub_100005610();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v8 mapItem];
        v13 = [v12 name];
        v19 = 138412290;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CarDisplayController will detour to mapItem: %@", &v19, 0xCu);
      }

      v14 = +[CarDisplayController sharedInstance];
      v15 = [v8 mapItem];
      [v14 detourToMapItem:v15];
    }

    else
    {
      v14 = [v6 appCoordinator];
      v16 = sub_100005610();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v8 mapItem];
        v18 = [v17 name];
        v19 = 138543618;
        v20 = v14;
        v21 = 2112;
        v22 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Coordinator: %{public}@ will detour to mapItem: %@", &v19, 0x16u);
      }

      v15 = [v8 mapItem];
      [v14 addStopWithMapItem:v15];
    }
  }
}

@end