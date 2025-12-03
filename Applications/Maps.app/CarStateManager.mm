@interface CarStateManager
- (void)setMapsActivity:(id)activity assumedSourceFidelity:(unint64_t)fidelity source:(int64_t)source;
@end

@implementation CarStateManager

- (void)setMapsActivity:(id)activity assumedSourceFidelity:(unint64_t)fidelity source:(int64_t)source
{
  activityCopy = activity;
  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    v7 = +[NSUUID UUID];
    uUIDString = [v7 UUIDString];

    v9 = sub_100005610();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      sourceCopy2 = uUIDString;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "setting Maps activity (tag %@)", buf, 0xCu);
    }

    v10 = dispatch_get_global_queue(-2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F1B818;
    block[3] = &unk_10165E668;
    v11 = uUIDString;
    v45 = v11;
    sourceCopy = source;
    v12 = activityCopy;
    v46 = v12;
    dispatch_async(v10, block);

    if (!v12)
    {
      goto LABEL_39;
    }

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      sourceCopy2 = source;
      v52 = 2112;
      v53 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "setting Maps activity from source: %ld : state: %@", buf, 0x16u);
    }

    if (![v12 hasDirectionsPlan])
    {
      goto LABEL_39;
    }

    directionsPlan = [v12 directionsPlan];
    routeRequestStorage = [directionsPlan routeRequestStorage];
    waypoints = [routeRequestStorage waypoints];
    v17 = [waypoints count];

    v18 = objc_alloc_init(NSMutableDictionary);
    originString = [directionsPlan originString];
    destinationString = [directionsPlan destinationString];
    v21 = destinationString;
    if (originString && !destinationString && v17)
    {
      routeRequestStorage2 = [directionsPlan routeRequestStorage];
      waypoints2 = [routeRequestStorage2 waypoints];
      firstObject = [waypoints2 firstObject];

      if ([firstObject isCurrentLocation])
      {
        v25 = +[SearchResult currentLocationSearchResult];
      }

      else
      {
        v25 = [[SearchResult alloc] initWithComposedWaypoint:firstObject];
      }

      v26 = v25;
    }

    else
    {
      if (!originString && destinationString && v17)
      {
        if ([destinationString _maps_isEqualToSearchStringForCurrentLocationSearchResult])
        {
          v26 = +[SearchResult currentLocationSearchResult];
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_32;
      }

      if (v17 < 2)
      {
        if (v17 != 1)
        {
          v26 = 0;
LABEL_27:
          if (!(v26 | v21))
          {
            v26 = v18;
LABEL_38:

LABEL_39:
            goto LABEL_40;
          }

LABEL_32:
          v32 = 0.0;
          if (source == 5)
          {
            v33 = [NSNumber numberWithDouble:5.0];
            v34 = +[NSUserDefaults standardUserDefaults];
            v35 = [v34 objectForKey:@"NavigationAutoLaunchDelayKey"];

            if (v35)
            {
              v36 = v35;
            }

            else
            {
              v36 = v33;
            }

            v37 = v36;

            [v37 doubleValue];
            v32 = v38;
          }

          v48[0] = @"DirectionsNavigationAutoLaunchDelayKey";
          v39 = [NSNumber numberWithDouble:v32];
          v48[1] = @"DirectionsShouldRestoreLowGuidance";
          v49[0] = v39;
          v40 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [directionsPlan shouldRestoreLowGuidance]);
          v49[1] = v40;
          v41 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];

          v42 = +[CarChromeModeCoordinator sharedInstance];
          [v42 displayRoutePlanningForDestination:v26 userInfo:v41];

          originString = v18;
          goto LABEL_38;
        }

        v30 = [SearchResult alloc];
        firstObject = [directionsPlan routeRequestStorage];
        waypoints3 = [firstObject waypoints];
        firstObject2 = [waypoints3 firstObject];
        v26 = [(SearchResult *)v30 initWithComposedWaypoint:firstObject2];
      }

      else
      {
        routeRequestStorage3 = [directionsPlan routeRequestStorage];
        waypoints4 = [routeRequestStorage3 waypoints];
        firstObject = [waypoints4 lastObject];

        v26 = [[SearchResult alloc] initWithComposedWaypoint:firstObject];
        if (source <= 4 && ((1 << source) & 0x15) != 0)
        {
          if ([firstObject isCurrentLocation])
          {
            v29 = +[SearchResult currentLocationSearchResult];

            v26 = v29;
          }
        }

        else
        {
          [(SearchResult *)v18 setObject:&__kCFBooleanTrue forKeyedSubscript:@"DirectionsAttemptCachedRoute"];
        }
      }
    }

    goto LABEL_27;
  }

LABEL_40:
}

@end