@interface MapsRealLocationUpdater
- (BOOL)startLocationUpdatesForDelegate:(id)a3;
- (MapsRealLocationUpdater)init;
- (void)locationManagerUpdatedLocation:(id)a3;
- (void)stopLocationUpdates;
@end

@implementation MapsRealLocationUpdater

- (void)locationManagerUpdatedLocation:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1009434B4;
  v13 = sub_1009434C4;
  v14 = 0;
  delegateAccessQueue = self->_delegateAccessQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009434CC;
  v8[3] = &unk_101661600;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(delegateAccessQueue, v8);
  v6 = v10[5];
  v7 = [v4 currentLocation];
  [v6 didUpdateLocation:v7];

  _Block_object_dispose(&v9, 8);
}

- (void)stopLocationUpdates
{
  v4 = sub_10003D020();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ %@: stopping location updates", buf, 0x16u);
  }

  delegateAccessQueue = self->_delegateAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10094367C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(delegateAccessQueue, block);
  v9 = +[MKLocationManager sharedLocationManager];
  [v9 stopLocationUpdateWithObserver:self];
}

- (BOOL)startLocationUpdatesForDelegate:(id)a3
{
  v5 = a3;
  if (v5)
  {
    *v31 = 0;
    *&v31[8] = v31;
    *&v31[16] = 0x2020000000;
    v31[24] = 0;
    delegateAccessQueue = self->_delegateAccessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100943A80;
    block[3] = &unk_101661600;
    block[4] = self;
    block[5] = v31;
    dispatch_sync(delegateAccessQueue, block);
    v7 = *(*&v31[8] + 24);
    v8 = sub_10003D020();
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromSelector(a2);
        *buf = 138412546;
        v28 = v10;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ %@: delegate for location updates is already set", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromSelector(a2);
        *buf = 138412546;
        v28 = v15;
        v29 = 2112;
        v30 = v16;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ %@: starting location updates", buf, 0x16u);
      }

      v17 = self->_delegateAccessQueue;
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_100943AD0;
      v23 = &unk_101661A90;
      v24 = self;
      v25 = v5;
      dispatch_sync(v17, &v20);
      v18 = [MKLocationManager sharedLocationManager:v20];
      [v18 startLocationUpdateWithObserver:self];
    }

    v14 = v7 ^ 1;
    _Block_object_dispose(v31, 8);
  }

  else
  {
    v12 = sub_10003D020();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *v31 = 136446978;
      *&v31[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/MapsRealLocationUpdater.m";
      *&v31[12] = 1024;
      *&v31[14] = 34;
      *&v31[18] = 2082;
      *&v31[20] = "[MapsRealLocationUpdater startLocationUpdatesForDelegate:]";
      v32 = 2082;
      v33 = "nil == delegate";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. delegate cannot be nil", v31, 0x26u);
    }

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *v31 = 136446978;
      *&v31[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/MapsRealLocationUpdater.m";
      *&v31[12] = 1024;
      *&v31[14] = 34;
      *&v31[18] = 2082;
      *&v31[20] = "[MapsRealLocationUpdater startLocationUpdatesForDelegate:]";
      v32 = 2082;
      v33 = "nil == delegate";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. delegate cannot be nil", v31, 0x26u);
    }

    v14 = 0;
  }

  return v14;
}

- (MapsRealLocationUpdater)init
{
  v6.receiver = self;
  v6.super_class = MapsRealLocationUpdater;
  v2 = [(MapsRealLocationUpdater *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MapsRealLocationU pdater.DelegateAccessQueue", 0);
    delegateAccessQueue = v2->_delegateAccessQueue;
    v2->_delegateAccessQueue = v3;
  }

  return v2;
}

@end