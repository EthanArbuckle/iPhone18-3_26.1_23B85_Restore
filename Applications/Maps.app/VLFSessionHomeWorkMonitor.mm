@interface VLFSessionHomeWorkMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (NSString)debugDescription;
- (VLFSessionHomeWorkMonitor)initWithObserver:(id)observer locationManager:(id)manager navigationService:(id)service transportTypeSupportProvider:(Class)provider;
- (id)favoritesAndDistances;
- (id)mapItemsAndDistances;
- (void)_pauseLocationUpdates;
- (void)_resumeLocationUpdates;
- (void)_updateHomeWorkEntries:(id)entries;
- (void)_updateHomeWorkFavorites:(id)favorites;
- (void)_updateMeCard;
- (void)_updateStateWithLocation:(id)location;
- (void)dealloc;
- (void)homeDataProvidingObjectDidUpdate:(id)update;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic;
- (void)shortcutManagerMeCardDidChange:(id)change;
@end

@implementation VLFSessionHomeWorkMonitor

- (void)homeDataProvidingObjectDidUpdate:(id)update
{
  updateCopy = update;
  if (![(VLFSessionHomeWorkMonitor *)self useMapsFavoritesManager])
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      selfCopy = "[VLFSessionHomeWorkMonitor homeDataProvidingObjectDidUpdate:]";
      v13 = 2080;
      v14 = "VLFSessionHomeWorkMonitor.m";
      v15 = 1024;
      v16 = 419;
      v17 = 2080;
      v18 = "self.useMapsFavoritesManager";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        *buf = 138412290;
        selfCopy = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v5 = sub_100083A38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    selfCopy = self;
    v13 = 2112;
    v14 = updateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updated favorites: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100617164;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v10, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)shortcutManagerMeCardDidChange:(id)change
{
  changeCopy = change;
  if ([(VLFSessionHomeWorkMonitor *)self useMapsFavoritesManager])
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      selfCopy = "[VLFSessionHomeWorkMonitor shortcutManagerMeCardDidChange:]";
      v15 = 2080;
      v16 = "VLFSessionHomeWorkMonitor.m";
      v17 = 1024;
      v18 = 407;
      v19 = 2080;
      v20 = "!self.useMapsFavoritesManager";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        *buf = 138412290;
        selfCopy = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v5 = sub_100083A38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Got a new me card", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100617474;
  v10[3] = &unk_101661340;
  objc_copyWeak(&v12, buf);
  v11 = changeCopy;
  v6 = changeCopy;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic
{
  v8 = [(VLFSessionHomeWorkMonitor *)self transportTypeSupportProvider:service];
  if ((type - 1) > 5)
  {
    v9 = 1;
  }

  else
  {
    v9 = qword_101216278[type - 1];
  }

  if ([(objc_class *)v8 isSupportedForTransportType:v9])
  {

    [(VLFSessionHomeWorkMonitor *)self _resumeLocationUpdates];
  }

  else
  {

    [(VLFSessionHomeWorkMonitor *)self _pauseLocationUpdates];
  }
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  if (MNNavigationServiceStateIsNavigating() && ((v6 = -[VLFSessionHomeWorkMonitor transportTypeSupportProvider](self, "transportTypeSupportProvider"), v7 = [serviceCopy navigationTransportType] - 1, v7 > 5) ? (v8 = 1) : (v8 = qword_101216278[v7]), !-[objc_class isSupportedForTransportType:](v6, "isSupportedForTransportType:", v8)))
  {
    [(VLFSessionHomeWorkMonitor *)self _pauseLocationUpdates];
  }

  else
  {
    [(VLFSessionHomeWorkMonitor *)self _resumeLocationUpdates];
  }
}

- (void)locationManagerUpdatedLocation:(id)location
{
  locationCopy = location;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136316418;
        v13 = "[VLFSessionHomeWorkMonitor locationManagerUpdatedLocation:]";
        v14 = 2080;
        v15 = "VLFSessionHomeWorkMonitor.m";
        v16 = 1024;
        v17 = 375;
        v18 = 2080;
        v19 = "dispatch_get_main_queue()";
        v20 = 2080;
        v21 = dispatch_queue_get_label(&_dispatch_main_q);
        v22 = 2080;
        v23 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v12, 0x3Au);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
        }
      }
    }
  }

  lastLocation = [locationCopy lastLocation];
  [(VLFSessionHomeWorkMonitor *)self _updateStateWithLocation:lastLocation];
}

- (id)favoritesAndDistances
{
  if (![(VLFSessionHomeWorkMonitor *)self useMapsFavoritesManager])
  {
    v28 = sub_10006D178();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v39 = "[VLFSessionHomeWorkMonitor favoritesAndDistances]";
      v40 = 2080;
      v41 = "VLFSessionHomeWorkMonitor.m";
      v42 = 1024;
      v43 = 343;
      v44 = 2080;
      v45 = "self.useMapsFavoritesManager";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v29 = sub_10006D178();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v39 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  locationManager = [(VLFSessionHomeWorkMonitor *)self locationManager];
  lastLocation = [locationManager lastLocation];

  if (!lastLocation)
  {
    goto LABEL_24;
  }

  homeFavoriteItems = [(VLFSessionHomeWorkMonitor *)self homeFavoriteItems];
  if (!homeFavoriteItems)
  {
    workFavoriteItems = [(VLFSessionHomeWorkMonitor *)self workFavoriteItems];

    if (workFavoriteItems)
    {
      goto LABEL_6;
    }

LABEL_24:
    v26 = 0;
    goto LABEL_25;
  }

LABEL_6:
  v7 = +[NSMutableArray array];
  homeFavoriteItems2 = [(VLFSessionHomeWorkMonitor *)self homeFavoriteItems];

  if (homeFavoriteItems2)
  {
    homeFavoriteItems3 = [(VLFSessionHomeWorkMonitor *)self homeFavoriteItems];
    [v7 addObjectsFromArray:homeFavoriteItems3];
  }

  workFavoriteItems2 = [(VLFSessionHomeWorkMonitor *)self workFavoriteItems];

  if (workFavoriteItems2)
  {
    workFavoriteItems3 = [(VLFSessionHomeWorkMonitor *)self workFavoriteItems];
    [v7 addObjectsFromArray:workFavoriteItems3];
  }

  v32 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        mapItemStorage = [v16 mapItemStorage];
        [mapItemStorage coordinate];

        v18 = CLLocationFromGEOLocationCoordinate2D();
        [lastLocation distanceFromLocation:v18];
        v19 = [NSNumber numberWithDouble:?];
        customName = [v16 customName];
        if (customName)
        {
          [v32 setObject:v19 forKey:customName];
        }

        else
        {
          mapItemStorage2 = [v16 mapItemStorage];
          name = [mapItemStorage2 name];
          v23 = lastLocation;
          v24 = name;
          if (name)
          {
            v25 = name;
          }

          else
          {
            v25 = @"(null)";
          }

          [v32 setObject:v19 forKey:v25];

          lastLocation = v23;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  v26 = [v32 copy];
LABEL_25:

  return v26;
}

- (id)mapItemsAndDistances
{
  if ([(VLFSessionHomeWorkMonitor *)self useMapsFavoritesManager])
  {
    v24 = sub_10006D178();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "[VLFSessionHomeWorkMonitor mapItemsAndDistances]";
      v34 = 2080;
      v35 = "VLFSessionHomeWorkMonitor.m";
      v36 = 1024;
      v37 = 314;
      v38 = 2080;
      v39 = "!self.useMapsFavoritesManager";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v25 = sub_10006D178();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v33 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  locationManager = [(VLFSessionHomeWorkMonitor *)self locationManager];
  lastLocation = [locationManager lastLocation];

  if (!lastLocation)
  {
    goto LABEL_18;
  }

  homeMapItems = [(VLFSessionHomeWorkMonitor *)self homeMapItems];
  if (!homeMapItems)
  {
    workMapItems = [(VLFSessionHomeWorkMonitor *)self workMapItems];

    if (workMapItems)
    {
      goto LABEL_6;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_19;
  }

LABEL_6:
  v7 = +[NSMutableArray array];
  homeMapItems2 = [(VLFSessionHomeWorkMonitor *)self homeMapItems];

  if (homeMapItems2)
  {
    homeMapItems3 = [(VLFSessionHomeWorkMonitor *)self homeMapItems];
    [v7 addObjectsFromArray:homeMapItems3];
  }

  workMapItems2 = [(VLFSessionHomeWorkMonitor *)self workMapItems];

  if (workMapItems2)
  {
    workMapItems3 = [(VLFSessionHomeWorkMonitor *)self workMapItems];
    [v7 addObjectsFromArray:workMapItems3];
  }

  v12 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        v19 = MapsSuggestionsLocationForMapItem();
        [lastLocation distanceFromLocation:{v19, v27}];
        v20 = [NSNumber numberWithDouble:?];
        name = [v18 name];
        [v12 setObject:v20 forKey:name];
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  v22 = [v12 copy];
LABEL_19:

  return v22;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if ([objc_opt_class() isEnabled])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = v5;
  if ([objc_opt_class() affectsPuckVisibility])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = v7;
  if ([objc_opt_class() affectsBannerVisibility])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = v9;
  if ([(VLFSessionHomeWorkMonitor *)self useMapsFavoritesManager])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = v11;
  state = [(VLFSessionMonitor *)self state];
  v14 = @"Hide";
  if (state == 1)
  {
    v14 = @"EnablePuck";
  }

  if (state == 2)
  {
    v15 = @"EnablePuckAndBanner";
  }

  else
  {
    v15 = v14;
  }

  [(VLFSessionHomeWorkMonitor *)self distanceThreshold];
  v17 = v16;
  if ([(VLFSessionHomeWorkMonitor *)self shouldProcessHomeItems])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = v18;
  if ([(VLFSessionHomeWorkMonitor *)self shouldProcessWorkItems])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v21 = v20;
  if ([(VLFSessionHomeWorkMonitor *)self useMapsFavoritesManager])
  {
    [(VLFSessionHomeWorkMonitor *)self favoritesAndDistances];
  }

  else
  {
    [(VLFSessionHomeWorkMonitor *)self mapItemsAndDistances];
  }
  v22 = ;
  v23 = [NSString stringWithFormat:@"<%@\nisEnabled: %@, \naffectsPuckVisibility: %@, \naffectsBannerVisibility: %@, \nuseMapsFavoritesManager: %@\ncurrentState: %@, \nthreshold: %f, \nhome: %@, \nwork: %@, \nmapItems: %@>", v4, v6, v8, v10, v12, v15, v17, v19, v21, v22];

  return v23;
}

- (void)_pauseLocationUpdates
{
  locationManager = [(VLFSessionHomeWorkMonitor *)self locationManager];
  [locationManager stopListeningForLocationUpdates:self];

  [(VLFSessionMonitor *)self setState:2];
}

- (void)_resumeLocationUpdates
{
  locationManager = [(VLFSessionHomeWorkMonitor *)self locationManager];
  [locationManager listenForLocationUpdates:self];

  locationManager2 = [(VLFSessionHomeWorkMonitor *)self locationManager];
  lastLocation = [locationManager2 lastLocation];
  [(VLFSessionHomeWorkMonitor *)self _updateStateWithLocation:lastLocation];
}

- (void)_updateStateWithLocation:(id)location
{
  locationCopy = location;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v66 = sub_10006D178();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        selfCopy20 = "[VLFSessionHomeWorkMonitor _updateStateWithLocation:]";
        v81 = 2080;
        v82 = "VLFSessionHomeWorkMonitor.m";
        v83 = 1024;
        *v84 = 176;
        *&v84[4] = 2080;
        *&v84[6] = "dispatch_get_main_queue()";
        v85 = 2080;
        v86 = dispatch_queue_get_label(&_dispatch_main_q);
        v87 = 2080;
        v88 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v67 = sub_10006D178();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          v68 = +[NSThread callStackSymbols];
          *buf = 138412290;
          selfCopy20 = v68;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v8 = sub_100083A38();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    lastLocation = [(VLFSessionHomeWorkMonitor *)self lastLocation];
    *buf = 134349571;
    selfCopy20 = self;
    v81 = 2113;
    v82 = locationCopy;
    v83 = 2113;
    *v84 = lastLocation;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Got a new location: %{private}@, lastLocation: %{private}@", buf, 0x20u);
  }

  if (!locationCopy)
  {
    v18 = sub_100083A38();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy20 = self;
      v20 = "[%{public}p] Location is nil; ignoring";
      v21 = v18;
      v22 = OS_LOG_TYPE_INFO;
      v23 = 12;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v21, v22, v20, buf, v23);
    }

LABEL_74:

    goto LABEL_75;
  }

  lastLocation2 = [(VLFSessionHomeWorkMonitor *)self lastLocation];

  if (lastLocation2)
  {
    GEOConfigGetDouble();
    v12 = v11;
    lastLocation3 = [(VLFSessionHomeWorkMonitor *)self lastLocation];
    [lastLocation3 coordinate];
    lastLocation4 = [(VLFSessionHomeWorkMonitor *)self lastLocation];
    [lastLocation4 coordinate];
    [locationCopy coordinate];
    [locationCopy coordinate];
    CLClientGetDistanceCoordinates();
    v16 = v15;

    if (v16 < v12)
    {
      v18 = sub_100083A38();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349568;
        selfCopy20 = self;
        v81 = 2048;
        v82 = *&v16;
        v83 = 2048;
        *v84 = v12;
        v20 = "[%{public}p] New location is too close to the last location (%f < %f); ignoring";
        v21 = v18;
        v22 = OS_LOG_TYPE_DEBUG;
        v23 = 32;
        goto LABEL_21;
      }

      goto LABEL_74;
    }
  }

  [(VLFSessionHomeWorkMonitor *)self setLastLocation:locationCopy];
  useMapsFavoritesManager = [(VLFSessionHomeWorkMonitor *)self useMapsFavoritesManager];
  v18 = +[NSMutableArray array];
  if ((useMapsFavoritesManager & 1) == 0)
  {
    homeMapItems = [(VLFSessionHomeWorkMonitor *)self homeMapItems];
    if (homeMapItems)
    {
    }

    else if ([(VLFSessionHomeWorkMonitor *)self shouldProcessHomeItems])
    {
      v25 = sub_100083A38();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_73;
      }

      *buf = 134349056;
      selfCopy20 = self;
      v26 = "[%{public}p] Home map items are not available yet; ignoring";
      goto LABEL_72;
    }

    shouldProcessHomeItems = [(VLFSessionHomeWorkMonitor *)self shouldProcessHomeItems];
    homeMapItems2 = sub_100083A38();
    v33 = os_log_type_enabled(homeMapItems2, OS_LOG_TYPE_DEBUG);
    if (shouldProcessHomeItems)
    {
      if (v33)
      {
        *buf = 134349056;
        selfCopy20 = self;
        _os_log_impl(&_mh_execute_header, homeMapItems2, OS_LOG_TYPE_DEBUG, "[%{public}p] Processing home map items", buf, 0xCu);
      }

      homeMapItems2 = [(VLFSessionHomeWorkMonitor *)self homeMapItems];
      [v18 addObjectsFromArray:homeMapItems2];
    }

    else if (v33)
    {
      *buf = 134349056;
      selfCopy20 = self;
      _os_log_impl(&_mh_execute_header, homeMapItems2, OS_LOG_TYPE_DEBUG, "[%{public}p] Home map items are not enabled; will not process", buf, 0xCu);
    }

    workMapItems = [(VLFSessionHomeWorkMonitor *)self workMapItems];
    if (workMapItems)
    {
    }

    else if ([(VLFSessionHomeWorkMonitor *)self shouldProcessWorkItems])
    {
      v25 = sub_100083A38();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        selfCopy20 = self;
        v26 = "[%{public}p] Work map items are not available yet; ignoring";
        goto LABEL_72;
      }

      goto LABEL_73;
    }

    shouldProcessWorkItems = [(VLFSessionHomeWorkMonitor *)self shouldProcessWorkItems];
    workMapItems2 = sub_100083A38();
    v53 = os_log_type_enabled(workMapItems2, OS_LOG_TYPE_DEBUG);
    if (shouldProcessWorkItems)
    {
      if (v53)
      {
        *buf = 134349056;
        selfCopy20 = self;
        _os_log_impl(&_mh_execute_header, workMapItems2, OS_LOG_TYPE_DEBUG, "[%{public}p] Processing work map items", buf, 0xCu);
      }

      workMapItems2 = [(VLFSessionHomeWorkMonitor *)self workMapItems];
      [v18 addObjectsFromArray:workMapItems2];
    }

    else if (v53)
    {
      *buf = 134349056;
      selfCopy20 = self;
      _os_log_impl(&_mh_execute_header, workMapItems2, OS_LOG_TYPE_DEBUG, "[%{public}p] Work map items are not enabled; will not process", buf, 0xCu);
    }

    v54 = sub_100083A38();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [(VLFSessionHomeWorkMonitor *)self distanceThreshold];
      *buf = 134349313;
      selfCopy20 = self;
      v81 = 2049;
      v82 = v55;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "[%{public}p] Computing distances to map items with threshold: %{private}f", buf, 0x16u);
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v40 = v18;
    v56 = [v40 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v74;
      while (2)
      {
        for (i = 0; i != v57; ++i)
        {
          if (*v74 != v58)
          {
            objc_enumerationMutation(v40);
          }

          v60 = MapsSuggestionsLocationForMapItem();
          [locationCopy distanceFromLocation:v60];
          v62 = v61;
          [(VLFSessionHomeWorkMonitor *)self distanceThreshold];
          if (v62 <= v63)
          {
            if ([(VLFSessionMonitor *)self state])
            {
              v65 = sub_100083A38();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
              {
                *buf = 134349056;
                selfCopy20 = self;
                _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "[%{public}p] User is too close to one of the map items; updating state", buf, 0xCu);
              }

              [(VLFSessionMonitor *)self setState:0];
            }

LABEL_101:
            goto LABEL_75;
          }
        }

        v57 = [v40 countByEnumeratingWithState:&v73 objects:v78 count:16];
        if (v57)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_92;
  }

  homeFavoriteItems = [(VLFSessionHomeWorkMonitor *)self homeFavoriteItems];
  if (homeFavoriteItems)
  {

    goto LABEL_25;
  }

  if ([(VLFSessionHomeWorkMonitor *)self shouldProcessHomeItems])
  {
    v25 = sub_100083A38();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_73;
    }

    *buf = 134349056;
    selfCopy20 = self;
    v26 = "[%{public}p] Home favorites are not available yet; ignoring";
LABEL_72:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, v26, buf, 0xCu);
    goto LABEL_73;
  }

LABEL_25:
  shouldProcessHomeItems2 = [(VLFSessionHomeWorkMonitor *)self shouldProcessHomeItems];
  homeFavoriteItems2 = sub_100083A38();
  v29 = os_log_type_enabled(homeFavoriteItems2, OS_LOG_TYPE_DEBUG);
  if (shouldProcessHomeItems2)
  {
    if (v29)
    {
      *buf = 134349056;
      selfCopy20 = self;
      _os_log_impl(&_mh_execute_header, homeFavoriteItems2, OS_LOG_TYPE_DEBUG, "[%{public}p] Processing home favorites", buf, 0xCu);
    }

    homeFavoriteItems2 = [(VLFSessionHomeWorkMonitor *)self homeFavoriteItems];
    [v18 addObjectsFromArray:homeFavoriteItems2];
  }

  else if (v29)
  {
    *buf = 134349056;
    selfCopy20 = self;
    _os_log_impl(&_mh_execute_header, homeFavoriteItems2, OS_LOG_TYPE_DEBUG, "[%{public}p] Home favorites are not enabled; will not process", buf, 0xCu);
  }

  workFavoriteItems = [(VLFSessionHomeWorkMonitor *)self workFavoriteItems];
  if (workFavoriteItems)
  {

    goto LABEL_47;
  }

  if ([(VLFSessionHomeWorkMonitor *)self shouldProcessWorkItems])
  {
    v25 = sub_100083A38();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      selfCopy20 = self;
      v26 = "[%{public}p] Work favorites are not available yet; ignoring";
      goto LABEL_72;
    }

LABEL_73:

    goto LABEL_74;
  }

LABEL_47:
  shouldProcessWorkItems2 = [(VLFSessionHomeWorkMonitor *)self shouldProcessWorkItems];
  workFavoriteItems2 = sub_100083A38();
  v37 = os_log_type_enabled(workFavoriteItems2, OS_LOG_TYPE_DEBUG);
  if (shouldProcessWorkItems2)
  {
    if (v37)
    {
      *buf = 134349056;
      selfCopy20 = self;
      _os_log_impl(&_mh_execute_header, workFavoriteItems2, OS_LOG_TYPE_DEBUG, "[%{public}p] Processing work favorites", buf, 0xCu);
    }

    workFavoriteItems2 = [(VLFSessionHomeWorkMonitor *)self workFavoriteItems];
    [v18 addObjectsFromArray:workFavoriteItems2];
  }

  else if (v37)
  {
    *buf = 134349056;
    selfCopy20 = self;
    _os_log_impl(&_mh_execute_header, workFavoriteItems2, OS_LOG_TYPE_DEBUG, "[%{public}p] Work favorites are not enabled; will not process", buf, 0xCu);
  }

  v38 = sub_100083A38();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [(VLFSessionHomeWorkMonitor *)self distanceThreshold];
    *buf = 134349313;
    selfCopy20 = self;
    v81 = 2049;
    v82 = v39;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "[%{public}p] Computing distances to favorites with threshold: %{private}f", buf, 0x16u);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v40 = v18;
  v41 = [v40 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v70;
    while (2)
    {
      for (j = 0; j != v42; j = j + 1)
      {
        if (*v70 != v43)
        {
          objc_enumerationMutation(v40);
        }

        mapItemStorage = [*(*(&v69 + 1) + 8 * j) mapItemStorage];
        [mapItemStorage coordinate];

        v46 = CLLocationFromGEOLocationCoordinate2D();
        [locationCopy distanceFromLocation:v46];
        v48 = v47;
        [(VLFSessionHomeWorkMonitor *)self distanceThreshold];
        if (v48 <= v49)
        {
          if ([(VLFSessionMonitor *)self state])
          {
            v50 = sub_100083A38();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              *buf = 134349056;
              selfCopy20 = self;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "[%{public}p] User is too close to one of the favorites; updating state", buf, 0xCu);
            }

            [(VLFSessionMonitor *)self setState:0];
          }

          goto LABEL_101;
        }
      }

      v42 = [v40 countByEnumeratingWithState:&v69 objects:v77 count:16];
      if (v42)
      {
        continue;
      }

      break;
    }
  }

LABEL_92:

  if ([(VLFSessionMonitor *)self state]!= 2)
  {
    v64 = sub_100083A38();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy20 = self;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "[%{public}p] User is not sufficiently close to any map item; updating state", buf, 0xCu);
    }

    [(VLFSessionMonitor *)self setState:2];
  }

LABEL_75:
}

- (void)_updateHomeWorkFavorites:(id)favorites
{
  favoritesCopy = favorites;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v19 = 136316418;
        selfCopy = "[VLFSessionHomeWorkMonitor _updateHomeWorkFavorites:]";
        v21 = 2080;
        v22 = "VLFSessionHomeWorkMonitor.m";
        v23 = 1024;
        v24 = 159;
        v25 = 2080;
        v26 = "dispatch_get_main_queue()";
        v27 = 2080;
        v28 = dispatch_queue_get_label(&_dispatch_main_q);
        v29 = 2080;
        v30 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v19, 0x3Au);
      }

      if (sub_100E03634())
      {
        v14 = sub_10006D178();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = +[NSThread callStackSymbols];
          v19 = 138412290;
          selfCopy = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
        }
      }
    }
  }

  if (![(VLFSessionHomeWorkMonitor *)self useMapsFavoritesManager])
  {
    v16 = sub_10006D178();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315906;
      selfCopy = "[VLFSessionHomeWorkMonitor _updateHomeWorkFavorites:]";
      v21 = 2080;
      v22 = "VLFSessionHomeWorkMonitor.m";
      v23 = 1024;
      v24 = 160;
      v25 = 2080;
      v26 = "self.useMapsFavoritesManager";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v19, 0x26u);
    }

    if (sub_100E03634())
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = +[NSThread callStackSymbols];
        v19 = 138412290;
        selfCopy = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
      }
    }
  }

  v8 = sub_100083A38();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v19 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Updating home and work favorites", &v19, 0xCu);
  }

  if ([(VLFSessionHomeWorkMonitor *)self shouldProcessHomeItems])
  {
    v9 = sub_1000282CC(favoritesCopy, &stru_101624120);
    [(VLFSessionHomeWorkMonitor *)self setHomeFavoriteItems:v9];
  }

  else
  {
    [(VLFSessionHomeWorkMonitor *)self setHomeFavoriteItems:0];
  }

  if ([(VLFSessionHomeWorkMonitor *)self shouldProcessWorkItems])
  {
    v10 = sub_1000282CC(favoritesCopy, &stru_101624140);
    [(VLFSessionHomeWorkMonitor *)self setWorkFavoriteItems:v10];
  }

  else
  {
    [(VLFSessionHomeWorkMonitor *)self setWorkFavoriteItems:0];
  }

  locationManager = [(VLFSessionHomeWorkMonitor *)self locationManager];
  lastLocation = [locationManager lastLocation];
  [(VLFSessionHomeWorkMonitor *)self _updateStateWithLocation:lastLocation];
}

- (void)_updateHomeWorkEntries:(id)entries
{
  entriesCopy = entries;
  if (!entriesCopy)
  {
    v18 = sub_10006D178();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315906;
      selfCopy = "[VLFSessionHomeWorkMonitor _updateHomeWorkEntries:]";
      v26 = 2080;
      v27 = "VLFSessionHomeWorkMonitor.m";
      v28 = 1024;
      v29 = 143;
      v30 = 2080;
      v31 = "meCard != nil";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v24, 0x26u);
    }

    if (sub_100E03634())
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        v24 = 138412290;
        selfCopy = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", &v24, 0xCu);
      }
    }
  }

  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = dispatch_queue_get_label(&_dispatch_main_q);
        v15 = dispatch_queue_get_label(0);
        v24 = 136316418;
        selfCopy = "[VLFSessionHomeWorkMonitor _updateHomeWorkEntries:]";
        v26 = 2080;
        v27 = "VLFSessionHomeWorkMonitor.m";
        v28 = 1024;
        v29 = 146;
        v30 = 2080;
        v31 = "dispatch_get_main_queue()";
        v32 = 2080;
        v33 = v14;
        v34 = 2080;
        v35 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v24, 0x3Au);
      }

      if (sub_100E03634())
      {
        v16 = sub_10006D178();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = +[NSThread callStackSymbols];
          v24 = 138412290;
          selfCopy = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", &v24, 0xCu);
        }
      }
    }
  }

  if ([(VLFSessionHomeWorkMonitor *)self useMapsFavoritesManager])
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315906;
      selfCopy = "[VLFSessionHomeWorkMonitor _updateHomeWorkEntries:]";
      v26 = 2080;
      v27 = "VLFSessionHomeWorkMonitor.m";
      v28 = 1024;
      v29 = 147;
      v30 = 2080;
      v31 = "!self.useMapsFavoritesManager";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v24, 0x26u);
    }

    if (sub_100E03634())
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = +[NSThread callStackSymbols];
        v24 = 138412290;
        selfCopy = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", &v24, 0xCu);
      }
    }
  }

  v8 = sub_100083A38();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v24 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Updating home and work entries", &v24, 0xCu);
  }

  if ([(VLFSessionHomeWorkMonitor *)self shouldProcessHomeItems])
  {
    mapItemsForHome = [entriesCopy mapItemsForHome];
    [(VLFSessionHomeWorkMonitor *)self setHomeMapItems:mapItemsForHome];
  }

  else
  {
    [(VLFSessionHomeWorkMonitor *)self setHomeMapItems:0];
  }

  if ([(VLFSessionHomeWorkMonitor *)self shouldProcessWorkItems])
  {
    mapItemsForWork = [entriesCopy mapItemsForWork];
    [(VLFSessionHomeWorkMonitor *)self setWorkMapItems:mapItemsForWork];
  }

  else
  {
    [(VLFSessionHomeWorkMonitor *)self setWorkMapItems:0];
  }

  locationManager = [(VLFSessionHomeWorkMonitor *)self locationManager];
  lastLocation = [locationManager lastLocation];
  [(VLFSessionHomeWorkMonitor *)self _updateStateWithLocation:lastLocation];
}

- (void)_updateMeCard
{
  v3 = sub_100083A38();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Updating me card", &v7, 0xCu);
  }

  if ([(VLFSessionHomeWorkMonitor *)self useMapsFavoritesManager])
  {
    meCard = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    shortcuts = [meCard shortcuts];
    [(VLFSessionHomeWorkMonitor *)self _updateHomeWorkFavorites:shortcuts];
  }

  else
  {
    v6 = +[ShortcutManager sharedManager];
    meCard = [v6 meCard];

    if (meCard)
    {
      [(VLFSessionHomeWorkMonitor *)self _updateHomeWorkEntries:meCard];
    }
  }
}

- (void)dealloc
{
  v3 = sub_100083A38();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  [(MKLocationManager *)self->_locationManager stopListeningForLocationUpdates:self];
  [(MNNavigationService *)self->_navigationService unregisterObserver:self];
  if (self->_useMapsFavoritesManager)
  {
    v4 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    [v4 unregisterObserver:self];
  }

  else
  {
    v4 = +[ShortcutManager sharedManager];
    [v4 removeObserver:self];
  }

  v5.receiver = self;
  v5.super_class = VLFSessionHomeWorkMonitor;
  [(VLFSessionHomeWorkMonitor *)&v5 dealloc];
}

- (VLFSessionHomeWorkMonitor)initWithObserver:(id)observer locationManager:(id)manager navigationService:(id)service transportTypeSupportProvider:(Class)provider
{
  observerCopy = observer;
  managerCopy = manager;
  serviceCopy = service;
  if (!observerCopy)
  {
    v18 = sub_10006D178();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v26 = "[VLFSessionHomeWorkMonitor initWithObserver:locationManager:navigationService:transportTypeSupportProvider:]";
      v27 = 2080;
      v28 = "VLFSessionHomeWorkMonitor.m";
      v29 = 1024;
      v30 = 63;
      v31 = 2080;
      v32 = "observer != nil";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!managerCopy)
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v26 = "[VLFSessionHomeWorkMonitor initWithObserver:locationManager:navigationService:transportTypeSupportProvider:]";
      v27 = 2080;
      v28 = "VLFSessionHomeWorkMonitor.m";
      v29 = 1024;
      v30 = 64;
      v31 = 2080;
      v32 = "locationManager != nil";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v26 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v24.receiver = self;
  v24.super_class = VLFSessionHomeWorkMonitor;
  v13 = [(VLFSessionMonitor *)&v24 initWithObserver:observerCopy];
  if (v13)
  {
    v14 = sub_100083A38();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeStrong(&v13->_locationManager, manager);
    [(MKLocationManager *)v13->_locationManager listenForLocationUpdates:v13];
    objc_storeStrong(&v13->_navigationService, service);
    [(MNNavigationService *)v13->_navigationService registerObserver:v13];
    objc_storeStrong(&v13->_transportTypeSupportProvider, provider);
    v15 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    v13->_useMapsFavoritesManager = v15;
    if (v15)
    {
      v16 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
      [v16 registerObserver:v13];
    }

    else
    {
      v16 = +[ShortcutManager sharedManager];
      [v16 addObserver:v13];
    }

    [(VLFSessionHomeWorkMonitor *)v13 _updateMeCard];
  }

  return v13;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionHomeWorkMonitorAffectsBannerVisibilityKey"];

  return v3;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionHomeWorkMonitorAffectsPuckVisibilityKey"];

  return v3;
}

@end