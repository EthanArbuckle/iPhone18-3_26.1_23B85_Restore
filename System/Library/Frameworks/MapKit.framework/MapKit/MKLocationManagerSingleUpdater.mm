@interface MKLocationManagerSingleUpdater
- (MKLocationManagerSingleUpdater)initWithLocationManager:(id)manager desiredAccuracy:(double)accuracy handler:(id)handler;
- (MKLocationManagerSingleUpdater)initWithLocationManager:(id)manager desiredAccuracy:(double)accuracy handler:(id)handler timeout:(double)timeout maxLocationAge:(double)age;
- (void)cancel;
- (void)dealloc;
- (void)handleTimeout:(id)timeout;
- (void)locationManagerFailedToUpdateLocation:(id)location withError:(id)error;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)start;
@end

@implementation MKLocationManagerSingleUpdater

- (void)dealloc
{
  [(MKLocationManagerSingleUpdater *)self cancel];
  v3.receiver = self;
  v3.super_class = MKLocationManagerSingleUpdater;
  [(MKLocationManagerSingleUpdater *)&v3 dealloc];
}

- (void)cancel
{
  if (self->_active)
  {
    self->_active = 0;
    [(MKLocationManager *)self->_locationManager stopLocationUpdateWithObserver:self];
    [(MKLocationManagerSingleUpdater *)self setHandler:0];
    [(NSTimer *)self->_timeoutTimer invalidate];
    timeoutTimer = self->_timeoutTimer;
    self->_timeoutTimer = 0;

    selfReference = self->_selfReference;
    self->_selfReference = 0;
  }
}

- (void)locationManagerFailedToUpdateLocation:(id)location withError:(id)error
{
  errorCopy = error;
  if (([errorCopy _mapkit_isCLLocationUnknown] & 1) == 0)
  {
    handler = self->_handler;
    if (handler)
    {
      handler[2](handler, 0, errorCopy);
      [(MKLocationManagerSingleUpdater *)self cancel];
    }
  }
}

- (void)locationManagerUpdatedLocation:(id)location
{
  lastLocation = [location lastLocation];
  v5 = lastLocation;
  if (lastLocation)
  {
    v11 = lastLocation;
    if (self->_maxLocationAge <= 0.0 || ([MEMORY[0x1E695DF00] date], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "timestamp"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "timeIntervalSinceDate:", v7), v9 = v8, v7, v6, v5 = v11, v9 <= self->_maxLocationAge))
    {
      handler = self->_handler;
      if (handler)
      {
        handler[2](handler, v11, 0);
        [(MKLocationManagerSingleUpdater *)self cancel];
        v5 = v11;
      }
    }
  }
}

- (void)handleTimeout:(id)timeout
{
  if (self->_handler)
  {
    v4 = +[MKLocationManager timeoutError];
    (*(self->_handler + 2))();
  }

  [(MKLocationManagerSingleUpdater *)self cancel];
}

- (void)start
{
  if (!self->_active)
  {
    objc_storeStrong(&self->_selfReference, self);
    self->_active = 1;
    [(MKLocationManagerSingleUpdater *)self timeout];
    if (v4 > 0.0)
    {
      v5 = MEMORY[0x1E695DFF0];
      [(MKLocationManagerSingleUpdater *)self timeout];
      v6 = [v5 scheduledTimerWithTimeInterval:self target:sel_handleTimeout_ selector:0 userInfo:0 repeats:?];
      timeoutTimer = self->_timeoutTimer;
      self->_timeoutTimer = v6;
    }

    locationManager = self->_locationManager;
    desiredAccuracy = self->_desiredAccuracy;

    [(MKLocationManager *)locationManager _startLocationUpdateWithObserver:self desiredAccuracy:desiredAccuracy];
  }
}

- (MKLocationManagerSingleUpdater)initWithLocationManager:(id)manager desiredAccuracy:(double)accuracy handler:(id)handler
{
  handlerCopy = handler;
  managerCopy = manager;
  GEOConfigGetDouble();
  v11 = [(MKLocationManagerSingleUpdater *)self initWithLocationManager:managerCopy desiredAccuracy:handlerCopy handler:accuracy timeout:v10];

  return v11;
}

- (MKLocationManagerSingleUpdater)initWithLocationManager:(id)manager desiredAccuracy:(double)accuracy handler:(id)handler timeout:(double)timeout maxLocationAge:(double)age
{
  managerCopy = manager;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = MKLocationManagerSingleUpdater;
  v14 = [(MKLocationManagerSingleUpdater *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(MKLocationManagerSingleUpdater *)v14 setHandler:handlerCopy];
    v15->_desiredAccuracy = accuracy;
    if (!managerCopy)
    {
      managerCopy = +[MKLocationManager sharedLocationManager];
    }

    objc_storeStrong(&v15->_locationManager, managerCopy);
    v15->_timeout = timeout;
    v15->_maxLocationAge = age;
    v16 = v15;
  }

  return v15;
}

@end