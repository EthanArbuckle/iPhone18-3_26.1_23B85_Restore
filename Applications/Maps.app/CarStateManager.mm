@interface CarStateManager
- (void)setMapsActivity:(id)a3 assumedSourceFidelity:(unint64_t)a4 source:(int64_t)a5;
@end

@implementation CarStateManager

- (void)setMapsActivity:(id)a3 assumedSourceFidelity:(unint64_t)a4 source:(int64_t)a5
{
  v6 = a3;
  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];

    v9 = sub_100005610();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v51 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "setting Maps activity (tag %@)", buf, 0xCu);
    }

    v10 = dispatch_get_global_queue(-2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F1B818;
    block[3] = &unk_10165E668;
    v11 = v8;
    v45 = v11;
    v47 = a5;
    v12 = v6;
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
      v51 = a5;
      v52 = 2112;
      v53 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "setting Maps activity from source: %ld : state: %@", buf, 0x16u);
    }

    if (![v12 hasDirectionsPlan])
    {
      goto LABEL_39;
    }

    v14 = [v12 directionsPlan];
    v15 = [v14 routeRequestStorage];
    v16 = [v15 waypoints];
    v17 = [v16 count];

    v18 = objc_alloc_init(NSMutableDictionary);
    v19 = [v14 originString];
    v20 = [v14 destinationString];
    v21 = v20;
    if (v19 && !v20 && v17)
    {
      v22 = [v14 routeRequestStorage];
      v23 = [v22 waypoints];
      v24 = [v23 firstObject];

      if ([v24 isCurrentLocation])
      {
        v25 = +[SearchResult currentLocationSearchResult];
      }

      else
      {
        v25 = [[SearchResult alloc] initWithComposedWaypoint:v24];
      }

      v26 = v25;
    }

    else
    {
      if (!v19 && v20 && v17)
      {
        if ([v20 _maps_isEqualToSearchStringForCurrentLocationSearchResult])
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
          if (a5 == 5)
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
          v40 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v14 shouldRestoreLowGuidance]);
          v49[1] = v40;
          v41 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];

          v42 = +[CarChromeModeCoordinator sharedInstance];
          [v42 displayRoutePlanningForDestination:v26 userInfo:v41];

          v19 = v18;
          goto LABEL_38;
        }

        v30 = [SearchResult alloc];
        v24 = [v14 routeRequestStorage];
        v43 = [v24 waypoints];
        v31 = [v43 firstObject];
        v26 = [(SearchResult *)v30 initWithComposedWaypoint:v31];
      }

      else
      {
        v27 = [v14 routeRequestStorage];
        v28 = [v27 waypoints];
        v24 = [v28 lastObject];

        v26 = [[SearchResult alloc] initWithComposedWaypoint:v24];
        if (a5 <= 4 && ((1 << a5) & 0x15) != 0)
        {
          if ([v24 isCurrentLocation])
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