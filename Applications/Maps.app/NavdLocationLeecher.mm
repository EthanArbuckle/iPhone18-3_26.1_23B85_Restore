@interface NavdLocationLeecher
+ (id)sharedLeecher;
- (NSArray)leechedLocations;
- (NavdLocationLeecher)init;
- (id)lastLeechedLocation;
- (void)_handleLeechedLocation:(id)a3;
- (void)_handleShiftedCoordinate:(id)a3 fromClientLocation:(id *)a4;
- (void)_notifyObserversAboutError:(id)a3;
- (void)_notifyObserversAboutLocation:(id)a3;
- (void)_notifyObserversAboutPrecision;
- (void)_pruneLeachedLocations;
- (void)_recordLeechedLocation:(id)a3;
- (void)addObserver:(id)a3;
- (void)locationProvider:(id)a3 didChangeCoarseMode:(BOOL)a4;
- (void)locationProvider:(id)a3 didReceiveError:(id)a4;
- (void)locationProvider:(id)a3 didUpdateLocation:(id)a4;
- (void)pauseLeeching;
- (void)removeObserver:(id)a3;
- (void)resumeLeeching;
- (void)startLeeching;
- (void)stopLeeching;
@end

@implementation NavdLocationLeecher

- (void)locationProvider:(id)a3 didChangeCoarseMode:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = v9;
    v11 = @"disabled";
    if (v4)
    {
      v11 = @"enabled";
    }

    *buf = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ coarse mode is now %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  serialQueue = self->_serialQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10058A2F4;
  v13[3] = &unk_101661368;
  v15 = v4;
  objc_copyWeak(&v14, buf);
  dispatch_async(serialQueue, v13);
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)locationProvider:(id)a3 didReceiveError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138478083;
    v17 = v10;
    v18 = 2113;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{private}@ failed while leeching with error: %{private}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  serialQueue = self->_serialQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10058A4FC;
  v13[3] = &unk_101661340;
  objc_copyWeak(&v15, buf);
  v14 = v7;
  v12 = v7;
  dispatch_async(serialQueue, v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)locationProvider:(id)a3 didUpdateLocation:(id)a4
{
  v5 = a4;
  if ([(NavdLocationLeecher *)self coarseModeEnabled])
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v7 = "Dropping location since coarse mode is enabled";
      v8 = v6;
      v9 = 2;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, v7, buf, v9);
    }
  }

  else
  {
    [(NSDate *)self->_lastRecordDate timeIntervalSinceNow];
    v11 = -v10;
    if (self->_maxLeechingTimeInterval <= -v10)
    {
      v13 = +[NSDate date];
      lastRecordDate = self->_lastRecordDate;
      self->_lastRecordDate = v13;

      objc_initWeak(buf, self);
      serialQueue = self->_serialQueue;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10058A760;
      v16[3] = &unk_101661340;
      objc_copyWeak(&v18, buf);
      v17 = v5;
      dispatch_async(serialQueue, v16);

      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
      goto LABEL_10;
    }

    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      GEOConfigGetDouble();
      *buf = 134218240;
      v20 = v11;
      v21 = 2048;
      v22 = v12;
      v7 = "Dropping location since time elapsed since last leeched location is %f < %f";
      v8 = v6;
      v9 = 22;
      goto LABEL_7;
    }
  }

LABEL_10:
}

- (void)_handleShiftedCoordinate:(id)a3 fromClientLocation:(id *)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  if (vabdd_f64(a3.var0, *(&a4->var0 + 1)) >= 0.00000000999999994 || vabdd_f64(a3.var1, *(&a4->var1.var0 + 4)) >= 0.00000000999999994)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(&a4->var0 + 1);
      v10 = *(&a4->var1.var0 + 4);
      *v17 = 134284289;
      *&v17[4] = var0;
      *&v17[12] = 2049;
      *&v17[14] = var1;
      *&v17[22] = 2049;
      *&v17[24] = v9;
      LOWORD(v18) = 2049;
      *(&v18 + 2) = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "NavdLocationLeecher notifying observers with shifted location:%{private}f, %{private}f. Original location was: %{private}f, %{private}f.", v17, 0x2Au);
    }
  }

  v11 = [CLLocation alloc];
  var13 = a4->var13;
  v22 = *&a4->var11;
  v23 = var13;
  v24[0] = *&a4->var14;
  *(v24 + 12) = *&a4->var16;
  v13 = *&a4->var5;
  v18 = *&a4->var3;
  v19 = v13;
  v14 = *&a4->var9;
  v20 = *&a4->var7;
  v21 = v14;
  v15 = *&a4->var1.var1;
  *v17 = *&a4->var0;
  *&v17[16] = v15;
  v16 = [v11 initWithClientLocation:v17];
  [(NavdLocationLeecher *)self _recordLeechedLocation:v16];
  if (!self->_leechingPaused)
  {
    [(NavdLocationLeecher *)self _notifyObserversAboutLocation:v16];
  }
}

- (void)_handleLeechedLocation:(id)a3
{
  v4 = a3;
  [v4 coordinate];
  v6 = v5;
  [v4 coordinate];
  v8 = v7;
  v32 = 0u;
  memset(v33, 0, 28);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  if (v4)
  {
    [v4 clientLocation];
  }

  objc_initWeak(&location, self);
  locationShifter = self->_locationShifter;
  [v4 horizontalAccuracy];
  v11 = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10058AB24;
  v13[3] = &unk_1016224C8;
  objc_copyWeak(&v14, &location);
  v21 = v31;
  v22 = v32;
  v23[0] = v33[0];
  *(v23 + 12) = *(v33 + 12);
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v15 = v25;
  v16 = v26;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10058ABBC;
  v12[3] = &unk_1016224E8;
  *&v12[4] = v6;
  *&v12[5] = v8;
  [(GEOLocationShifter *)locationShifter shiftCoordinate:v13 accuracy:0 withCompletionHandler:v12 mustGoToNetworkCallback:self->_serialQueue errorHandler:v6 callbackQueue:v8, v11];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_notifyObserversAboutPrecision
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_observers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 locationLeecher:self didChangeCoarseMode:{-[NavdLocationLeecher coarseModeEnabled](self, "coarseModeEnabled", v9)}];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversAboutError:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) locationLeecher:self errorLeechingLocation:{v4, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversAboutLocation:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) locationLeecher:self receivedLocation:{v4, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10058B07C;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10058B120;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (NSArray)leechedLocations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10058B224;
  v10 = sub_10058B234;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10058B23C;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)lastLeechedLocation
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CLLocation *)v2->_lastLeechedLocation copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)_recordLeechedLocation:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  objc_storeStrong(&v6->_lastLeechedLocation, a3);
  objc_sync_exit(v6);

  serialQueue = v6->_serialQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10058B3C4;
  v9[3] = &unk_101661A90;
  v10 = v5;
  v11 = v6;
  v8 = v5;
  dispatch_async(serialQueue, v9);
}

- (void)_pruneLeachedLocations
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = [(NSMutableArray *)self->_leechedLocations count];
    v7 = &unk_101212E78 + 16 * v4;
    if (v3 < v6)
    {
      v8 = v6;
      v5 = v3;
      while (1)
      {
        v9 = [(NSMutableArray *)self->_leechedLocations objectAtIndexedSubscript:v5];
        v10 = [v9 timestamp];
        [v10 timeIntervalSinceNow];
        v12 = -v11;
        v13 = *v7;

        if (v13 <= v12)
        {
          break;
        }

        if (v8 == ++v5)
        {
          v5 = v8;
          break;
        }
      }
    }

    v14 = *(v7 + 1);
    v15 = &v5[-v3];
    if (&v5[-v3] > v14)
    {
      do
      {
        [(NSMutableArray *)self->_leechedLocations removeObjectAtIndex:v3];
        --v15;
      }

      while (v15 > v14);
      v5 = &v14[v3];
    }

    ++v4;
    v3 = v5;
  }

  while (v4 != 5);
}

- (void)stopLeeching
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10058B5EC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)resumeLeeching
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10058B6F4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)pauseLeeching
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10058B7FC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)startLeeching
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10058B904;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (NavdLocationLeecher)init
{
  v20.receiver = self;
  v20.super_class = NavdLocationLeecher;
  v2 = [(NavdLocationLeecher *)&v20 init];
  if (v2)
  {
    v3 = objc_alloc_init(GEOLocationShifter);
    locationShifter = v2->_locationShifter;
    v2->_locationShifter = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("NavdLocationLeecher", v5);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v6;

    v8 = objc_alloc_init(NSMutableArray);
    observers = v2->_observers;
    v2->_observers = v8;

    v10 = +[MNHybridLocationProvider navdInstance];
    locationProvider = v2->_locationProvider;
    v2->_locationProvider = v10;

    [(NavdLocationProvider *)v2->_locationProvider setDelegate:v2];
    v12 = [NSMutableArray alloc];
    v13 = +[GEONavdDefaults sharedInstance];
    v14 = [v12 initWithCapacity:{objc_msgSend(v13, "maximumNumberOfLeechedLocations")}];
    leechedLocations = v2->_leechedLocations;
    v2->_leechedLocations = v14;

    v16 = +[NSDate distantPast];
    lastRecordDate = v2->_lastRecordDate;
    v2->_lastRecordDate = v16;

    GEOConfigGetDouble();
    v2->_maxLeechingTimeInterval = v18;
  }

  return v2;
}

+ (id)sharedLeecher
{
  if (qword_10195CAB0 != -1)
  {
    dispatch_once(&qword_10195CAB0, &stru_1016224A0);
  }

  v3 = qword_10195CAA8;

  return v3;
}

@end