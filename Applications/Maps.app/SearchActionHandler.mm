@interface SearchActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation SearchActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    [v7 setObject:&off_1016E6BC0 forKeyedSubscript:@"SearchSessionTraitsSource"];
    v8 = actionCopy;
    coordinator = [contextCopy coordinator];

    if (coordinator)
    {
      v10 = sub_100005610();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        searchItem = [v8 searchItem];
        v22 = 138412546;
        v23 = searchItem;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "SearchActionHandler : doSearchItem item %@ userInfo %@", &v22, 0x16u);
      }

      coordinator2 = [contextCopy coordinator];
    }

    else
    {
      navActionCoordinator = [contextCopy navActionCoordinator];

      if (!navActionCoordinator)
      {
        if ([contextCopy isCarPlayOnlyContext])
        {
          appCoordinator = +[CarChromeModeCoordinator sharedInstance];
          searchItem2 = [v8 searchItem];
          [appCoordinator displayRoutePlanningForDestination:searchItem2 userInfo:v7];
        }

        else
        {
          v20 = sub_100005610();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            searchItem3 = [v8 searchItem];
            v22 = 138412546;
            v23 = searchItem3;
            v24 = 2112;
            v25 = v7;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "SearchActionHandler : appCoordinator item %@ userInfo %@", &v22, 0x16u);
          }

          appCoordinator = [contextCopy appCoordinator];
          searchItem2 = [v8 searchItem];
          [appCoordinator openSearch:searchItem2 userInfo:v7];
        }

        goto LABEL_7;
      }

      if (((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420() & 1) != 0 || MapsFeature_IsEnabled_Maps182()) && [v8 searchAlongRoute])
      {
        v16 = sub_100005610();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v22) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "SearchActionHandler: handleSearchActionUsingSearchFieldItem.", &v22, 2u);
        }

        v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 searchAlongRoute]);
        [v7 setObject:v17 forKeyedSubscript:@"SearchSessionIsSearchAlongRoute"];

        appCoordinator = [contextCopy navActionCoordinator];
        searchItem2 = [v8 searchItem];
        [appCoordinator handleSearchActionUsingSearchFieldItem:searchItem2 withUserInfo:v7];
        goto LABEL_7;
      }

      v18 = sub_100005610();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        searchItem4 = [v8 searchItem];
        v22 = 138412546;
        v23 = searchItem4;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "SearchActionHandler : doSearchItem item %@ userInfo %@", &v22, 0x16u);
      }

      coordinator2 = [contextCopy navActionCoordinator];
    }

    appCoordinator = coordinator2;
    searchItem2 = [v8 searchItem];
    [appCoordinator viewController:0 doSearchItem:searchItem2 withUserInfo:v7];
LABEL_7:

    goto LABEL_10;
  }

  v7 = sub_100005610();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v22 = 138412290;
    v23 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "SearchActionHandler : action is not a SearchAction %@ ", &v22, 0xCu);
  }

LABEL_10:
}

@end