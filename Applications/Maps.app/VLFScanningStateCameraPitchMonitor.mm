@interface VLFScanningStateCameraPitchMonitor
- (VLFScanningStateCameraPitchMonitor)initWithDelegate:(id)delegate session:(id)session;
- (void)session:(id)session didUpdateFrame:(id)frame;
@end

@implementation VLFScanningStateCameraPitchMonitor

- (void)session:(id)session didUpdateFrame:(id)frame
{
  camera = [frame camera];
  [camera eulerAngles];
  v8 = v6;

  v7 = sub_1008EA780();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Got camera pitch: %f", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008EA7D4;
  block[3] = &unk_10164DC48;
  v10 = v8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (VLFScanningStateCameraPitchMonitor)initWithDelegate:(id)delegate session:(id)session
{
  v9.receiver = self;
  v9.super_class = VLFScanningStateCameraPitchMonitor;
  v4 = [(VLFScanningStateMonitor *)&v9 initWithDelegate:delegate session:session];
  if (v4)
  {
    GEOConfigGetDouble();
    v4->_cameraPitchThreshold = v5 * 0.0174532925;
    v6 = sub_1008EA780();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      cameraPitchThreshold = v4->_cameraPitchThreshold;
      *buf = 134217984;
      v11 = cameraPitchThreshold;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Initialized with pitch threshold: %f", buf, 0xCu);
    }
  }

  return v4;
}

@end