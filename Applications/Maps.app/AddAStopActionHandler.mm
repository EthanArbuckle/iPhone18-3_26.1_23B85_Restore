@interface AddAStopActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation AddAStopActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  v7 = sub_100005610();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Performing action: %@", &v19, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = actionCopy;
    v9 = +[CarDisplayController sharedInstance];
    isCarAppSceneHostingNavigation = [v9 isCarAppSceneHostingNavigation];

    if (isCarAppSceneHostingNavigation)
    {
      v11 = sub_100005610();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        mapItem = [v8 mapItem];
        name = [mapItem name];
        v19 = 138412290;
        v20 = name;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CarDisplayController will detour to mapItem: %@", &v19, 0xCu);
      }

      appCoordinator = +[CarDisplayController sharedInstance];
      mapItem2 = [v8 mapItem];
      [appCoordinator detourToMapItem:mapItem2];
    }

    else
    {
      appCoordinator = [contextCopy appCoordinator];
      v16 = sub_100005610();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        mapItem3 = [v8 mapItem];
        name2 = [mapItem3 name];
        v19 = 138543618;
        v20 = appCoordinator;
        v21 = 2112;
        v22 = name2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Coordinator: %{public}@ will detour to mapItem: %@", &v19, 0x16u);
      }

      mapItem2 = [v8 mapItem];
      [appCoordinator addStopWithMapItem:mapItem2];
    }
  }
}

@end