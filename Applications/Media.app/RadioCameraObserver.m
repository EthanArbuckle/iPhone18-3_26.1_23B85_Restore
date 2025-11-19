@interface RadioCameraObserver
+ (RadioCameraObserver)sharedInstance;
- (RadioCameraObserver)init;
- (void)_cameraIrisStateChangedWithToken:(int)a3;
- (void)dealloc;
- (void)startObservingCameraIris;
- (void)stopObservingCameraIris;
@end

@implementation RadioCameraObserver

+ (RadioCameraObserver)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000025F0;
  block[3] = &unk_1000DEF40;
  block[4] = a1;
  if (qword_1000EF3C8[0] != -1)
  {
    dispatch_once(qword_1000EF3C8, block);
  }

  v2 = qword_1000EF3C0;

  return v2;
}

- (RadioCameraObserver)init
{
  v5.receiver = self;
  v5.super_class = RadioCameraObserver;
  v2 = [(RadioCameraObserver *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RadioCameraObserver *)v2 startObservingCameraIris];
  }

  return v3;
}

- (void)dealloc
{
  [(RadioCameraObserver *)self stopObservingCameraIris];
  v3.receiver = self;
  v3.super_class = RadioCameraObserver;
  [(RadioCameraObserver *)&v3 dealloc];
}

- (void)_cameraIrisStateChangedWithToken:(int)a3
{
  state64 = 0;
  notify_get_state(a3, &state64);
  v4 = state64;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = v4 == 1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Capture session running: %d", buf, 8u);
  }

  self->_captureSessionRunning = v4 == 1;
}

- (void)startObservingCameraIris
{
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002904;
  v8[3] = &unk_1000DEF68;
  objc_copyWeak(&v9, &location);
  v3 = objc_retainBlock(v8);
  v4 = &_dispatch_main_q;
  v5 = notify_register_dispatch("com.apple.isp.frontcamerapower", &self->_cameraIrisFrontNotifyToken, &_dispatch_main_q, v3);

  if (v5)
  {
    self->_cameraIrisFrontNotifyToken = -1;
  }

  v6 = notify_register_dispatch("com.apple.isp.backcamerapower", &self->_cameraIrisBackNotifyToken, &_dispatch_main_q, v3);

  if (v6)
  {
    self->_cameraIrisBackNotifyToken = -1;
  }

  v7 = notify_register_dispatch("com.apple.isp.backtelecamerapower", &self->_cameraIrisBackTeleNotifyToken, &_dispatch_main_q, v3);

  if (v7)
  {
    self->_cameraIrisBackTeleNotifyToken = -1;
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)stopObservingCameraIris
{
  notify_cancel(self->_cameraIrisFrontNotifyToken);
  notify_cancel(self->_cameraIrisBackNotifyToken);
  cameraIrisBackTeleNotifyToken = self->_cameraIrisBackTeleNotifyToken;

  notify_cancel(cameraIrisBackTeleNotifyToken);
}

@end