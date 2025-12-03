@interface NavigationCustomFeaturesSource
- (CLLocationCoordinate2D)lastUpdateLocation;
- (CLLocationCoordinate2D)overriddenPointToFrame;
- (NavigationCustomFeaturesSource)initWithPointsFramer:(id)framer;
- (id)allItems;
- (void)_updateCoalesced;
- (void)_updateFraming;
- (void)_updateFramingWithNewLocationIfNeeded;
- (void)_updateLocationManager;
- (void)dealloc;
- (void)displayMapItems:(id)items;
- (void)removeMapItems;
- (void)setFramingMode:(int64_t)mode;
- (void)setItems:(id)items;
- (void)setOverriddenPointToFrame:(CLLocationCoordinate2D)frame;
@end

@implementation NavigationCustomFeaturesSource

- (CLLocationCoordinate2D)lastUpdateLocation
{
  latitude = self->_lastUpdateLocation.latitude;
  longitude = self->_lastUpdateLocation.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (CLLocationCoordinate2D)overriddenPointToFrame
{
  latitude = self->_overriddenPointToFrame.latitude;
  longitude = self->_overriddenPointToFrame.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)removeMapItems
{
  v3 = sub_100067540();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    items = [(NavigationCustomFeaturesSource *)self items];
    v5 = 138412290;
    v6 = items;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "SAR: removeMapItems: %@", &v5, 0xCu);
  }

  [(NavigationCustomFeaturesSource *)self setItems:0];
}

- (void)displayMapItems:(id)items
{
  itemsCopy = items;
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = itemsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SAR: displayMapItems: %@", buf, 0xCu);
  }

  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [NavigationCustomFeatureItem alloc];
        v14 = [(NavigationCustomFeatureItem *)v13 initWithMapItem:v12, v15];
        [v6 addObject:v14];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(NavigationCustomFeaturesSource *)self setItems:v6];
}

- (id)allItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1006D117C;
  v10 = sub_1006D118C;
  v11 = 0;
  lockQueue = self->_lockQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006D1194;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lockQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setFramingMode:(int64_t)mode
{
  if (self->_framingMode != mode)
  {
    self->_framingMode = mode;
    [(NavigationCustomFeaturesSource *)self _updateFraming];
  }
}

- (void)_updateLocationManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lockQueue = self->_lockQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006D1348;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lockQueue, v5);
  if ([(NavigationCustomFeaturesSource *)self framingMode]== 1 && *(v7 + 24) == 1 && ([(NavigationCustomFeaturesSource *)self overriddenPointToFrame], !CLLocationCoordinate2DIsValid(v10)))
  {
    v4 = +[MKLocationManager sharedLocationManager];
    [v4 startLocationUpdateWithObserver:self];
  }

  else
  {
    v4 = +[MKLocationManager sharedLocationManager];
    [v4 stopLocationUpdateWithObserver:self];
  }

  _Block_object_dispose(&v6, 8);
}

- (void)_updateFramingWithNewLocationIfNeeded
{
  if ([(NavigationCustomFeaturesSource *)self framingMode]== 1)
  {
    [(NavigationCustomFeaturesSource *)self overriddenPointToFrame];
    if (!CLLocationCoordinate2DIsValid(v17))
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v4 = v3;
      [(NavigationCustomFeaturesSource *)self lastUpdateTimestamp];
      if (v4 - v5 >= 10.0)
      {
        v6 = +[MKLocationManager sharedLocationManager];
        lastLocation = [v6 lastLocation];
        [lastLocation coordinate];
        v15 = v8;
        v16 = v9;

        [(NavigationCustomFeaturesSource *)self lastUpdateLocation];
        v13 = v10;
        v14 = v11;
        CLLocationCoordinate2DGetDistanceFrom();
        if (v12 >= 100.0)
        {
          [(NavigationCustomFeaturesSource *)self _updateFraming:v13];
        }
      }
    }
  }
}

- (void)_updateFraming
{
  v2 = sub_100067540();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    items = [(NavigationCustomFeaturesSource *)self items];
    *buf = 138412290;
    *&buf[4] = items;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SAR: _updateFraming for items: %@", buf, 0xCu);
  }

  v4 = +[MKLocationManager sharedLocationManager];
  lastLocation = [v4 lastLocation];
  [lastLocation coordinate];
  v7 = v6;
  v9 = v8;

  +[NSDate timeIntervalSinceReferenceDate];
  [(NavigationCustomFeaturesSource *)self setLastUpdateTimestamp:?];
  [(NavigationCustomFeaturesSource *)self setLastUpdateLocation:v7, v9];
  [(NavigationCustomFeaturesSource *)self _updateLocationManager];
  [(NavigationCustomFeaturesSource *)self overriddenPointToFrame];
  if (CLLocationCoordinate2DIsValid(v55))
  {
    v10 = sub_100067540();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "SAR: framing single point only", buf, 2u);
    }

    pointsFramer = [(NavigationCustomFeaturesSource *)self pointsFramer];
    [(NavigationCustomFeaturesSource *)self overriddenPointToFrame];
    v12 = [NSValue valueWithMKCoordinate:?];
    v50 = v12;
    v13 = [NSArray arrayWithObjects:&v50 count:1];
    [pointsFramer setSearchAlongTheRoutePoints:v13];
  }

  else
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = sub_1006D117C;
    v47 = sub_1006D118C;
    v48 = 0;
    lockQueue = self->_lockQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006D1AA8;
    block[3] = &unk_101661600;
    block[4] = self;
    block[5] = &v43;
    dispatch_sync(lockQueue, block);
    if ([v44[5] count])
    {
      framingMode = [(NavigationCustomFeaturesSource *)self framingMode];
      if (framingMode)
      {
        if (framingMode == 1)
        {
          v16 = v44[5];
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1006D1B0C;
          v52 = &unk_101626968;
          v53 = v7;
          v54 = v9;
          v17 = [v16 sortedArrayUsingComparator:buf];
          if ([v17 count] > 2)
          {
            v18 = 3;
          }

          else
          {
            v18 = [v17 count];
          }

          v21 = [v17 subarrayWithRange:{0, v18}];
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = v44[5];
      }

      v22 = sub_100067540();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        framingMode2 = [(NavigationCustomFeaturesSource *)self framingMode];
        *buf = 138412546;
        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = framingMode2;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "SAR: items to frame: %@ framingMode: %ld", buf, 0x16u);
      }

      v24 = objc_opt_new();
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      pointsFramer3 = v21;
      v25 = [pointsFramer3 countByEnumeratingWithState:&v38 objects:v49 count:16];
      if (v25)
      {
        v26 = *v39;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v39 != v26)
            {
              objc_enumerationMutation(pointsFramer3);
            }

            v28 = *(*(&v38 + 1) + 8 * i);
            v29 = sub_100067540();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              mapItem = [v28 mapItem];
              name = [mapItem name];
              [v28 coordinate];
              v33 = v32;
              [v28 coordinate];
              *buf = 138412802;
              *&buf[4] = name;
              *&buf[12] = 2048;
              *&buf[14] = v33;
              *&buf[22] = 2048;
              v52 = v34;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "SAR: Adding point for Item: %@. Lat: %f. Lng: %f. ", buf, 0x20u);
            }

            [v28 coordinate];
            v35 = [NSValue valueWithMKCoordinate:?];
            [v24 addObject:v35];
          }

          v25 = [pointsFramer3 countByEnumeratingWithState:&v38 objects:v49 count:16];
        }

        while (v25);
      }

      pointsFramer2 = [(NavigationCustomFeaturesSource *)self pointsFramer];
      [pointsFramer2 setSearchAlongTheRoutePoints:v24];
    }

    else
    {
      v19 = sub_100067540();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "SAR: Not framing any SAR items as no items are set.", buf, 2u);
      }

      pointsFramer3 = [(NavigationCustomFeaturesSource *)self pointsFramer];
      [pointsFramer3 setSearchAlongTheRoutePoints:0];
    }

    _Block_object_dispose(&v43, 8);
  }
}

- (void)_updateCoalesced
{
  if (![(NavigationCustomFeaturesSource *)self isUpdatingCoalesced])
  {
    [(NavigationCustomFeaturesSource *)self setUpdatingCoalesced:1];
    objc_initWeak(&location, self);
    v3 = dispatch_time(0, 100000001);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1006D1CAC;
    v4[3] = &unk_101661B98;
    objc_copyWeak(&v5, &location);
    dispatch_after(v3, &_dispatch_main_q, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)setOverriddenPointToFrame:(CLLocationCoordinate2D)frame
{
  longitude = frame.longitude;
  latitude = frame.latitude;
  p_overriddenPointToFrame = &self->_overriddenPointToFrame;
  if (self->_overriddenPointToFrame.latitude != frame.latitude || self->_overriddenPointToFrame.longitude != frame.longitude)
  {
    v7 = sub_100067540();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 134218240;
      v9 = latitude;
      v10 = 2048;
      v11 = longitude;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SAR: setting overriddenPointToFrame. Lat: %f. Lng: %f", &v8, 0x16u);
    }

    p_overriddenPointToFrame->latitude = latitude;
    p_overriddenPointToFrame->longitude = longitude;
    [(NavigationCustomFeaturesSource *)self _updateCoalesced];
  }
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = itemsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SAR: setting items: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v13 = 0x2020000000;
  v14 = 0;
  lockQueue = self->_lockQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006D1F80;
  block[3] = &unk_101660778;
  v7 = itemsCopy;
  v9 = v7;
  selfCopy = self;
  p_buf = &buf;
  dispatch_sync(lockQueue, block);
  if (*(*(&buf + 1) + 24) == 1)
  {
    [(NavigationCustomFeaturesSource *)self _updateFraming];
    [(PersonalizedItemSource *)self _notifyObserversItemsDidChange];
  }

  _Block_object_dispose(&buf, 8);
}

- (void)dealloc
{
  [(NavigationCustomFeaturesPointsFraming *)self->_pointsFramer setSearchAlongTheRoutePoints:0];
  v3 = +[MKLocationManager sharedLocationManager];
  [v3 stopLocationUpdateWithObserver:self];

  v4.receiver = self;
  v4.super_class = NavigationCustomFeaturesSource;
  [(NavigationCustomFeaturesSource *)&v4 dealloc];
}

- (NavigationCustomFeaturesSource)initWithPointsFramer:(id)framer
{
  framerCopy = framer;
  v12.receiver = self;
  v12.super_class = NavigationCustomFeaturesSource;
  v6 = [(NavigationCustomFeaturesSource *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pointsFramer, framer);
    v7->_framingMode = 0;
    v7->_overriddenPointToFrame = kCLLocationCoordinate2DInvalid;
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("NavigationCustomFeaturesSource.lock", v8);
    lockQueue = v7->_lockQueue;
    v7->_lockQueue = v9;
  }

  return v7;
}

@end