@interface NanoRoutePlanningLocationUpdateState
- (NanoRoutePlanningLocationUpdateState)initWithStateManager:(id)a3 isolationQueue:(id)a4;
- (void)_handleLocation:(id)a3 error:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation NanoRoutePlanningLocationUpdateState

- (void)stop
{
  [(SingleLocationUpdate *)self->_locationUpdater cancel];
  locationUpdater = self->_locationUpdater;
  self->_locationUpdater = 0;
}

- (void)_handleLocation:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NanoRoutePlanningState *)self isActive])
  {
    v8 = sub_100798A3C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478083;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Handle location:%{private}@, error:%@", buf, 0x16u);
    }

    if (v6)
    {
      v9 = [[GEOLocation alloc] initWithCLLocation:v6];
    }

    else
    {
      v9 = 0;
    }

    v10 = [(NanoRoutePlanningState *)self manager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100C1B790;
    v12[3] = &unk_10164DEC8;
    v13 = v7;
    v14 = v9;
    v11 = v9;
    [v10 updateWithBlock:v12];
  }
}

- (void)start
{
  objc_initWeak(&location, self);
  v3 = [(NanoRoutePlanningState *)self manager];
  v4 = [v3 request];

  v5 = [v4 traits];
  v6 = [v5 deviceLocation];

  if (v6)
  {
    v7 = [(NanoRoutePlanningState *)self manager];
    [v7 updateWithBlock:&stru_10164DE78];
  }

  else
  {
    locationUpdater = self->_locationUpdater;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100C1B960;
    v9[3] = &unk_10164DEA0;
    objc_copyWeak(&v10, &location);
    [(SingleLocationUpdate *)locationUpdater requestSingleLocationUpdateWithCompletionHandler:v9];
    objc_destroyWeak(&v10);
  }

  objc_destroyWeak(&location);
}

- (NanoRoutePlanningLocationUpdateState)initWithStateManager:(id)a3 isolationQueue:(id)a4
{
  v8.receiver = self;
  v8.super_class = NanoRoutePlanningLocationUpdateState;
  v4 = [(NanoRoutePlanningState *)&v8 initWithStateManager:a3 isolationQueue:a4];
  if (v4)
  {
    v5 = objc_alloc_init(SingleLocationUpdate);
    locationUpdater = v4->_locationUpdater;
    v4->_locationUpdater = v5;
  }

  return v4;
}

@end