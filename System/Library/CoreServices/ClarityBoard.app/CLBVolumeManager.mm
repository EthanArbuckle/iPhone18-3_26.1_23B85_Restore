@interface CLBVolumeManager
- (BOOL)_shouldShowTransientHUDForReason:(id)reason;
- (BOOL)isShowingHUD;
- (CLBVolumeManager)initWithDelegate:(id)delegate;
- (CLBVolumeManagerDelegate)delegate;
- (void)_configureVolumeDelta;
- (void)_decreaseVolume;
- (void)_didUpdateAVSystemControllerVolume:(float)volume shouldShowTransientHUD:(BOOL)d;
- (void)_effectiveVolumeChanged:(id)changed;
- (void)_increaseVolume;
- (void)_showTransientHUD;
- (void)_updateAVSystemControllerWithVolume:(float)volume;
- (void)startDecreasingVolume;
- (void)startIncreasingVolume;
- (void)stopVolumeUpdates;
@end

@implementation CLBVolumeManager

- (CLBVolumeManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = CLBVolumeManager;
  v5 = [(CLBVolumeManager *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = +[AVSystemController sharedAVSystemController];
    [v7 getActiveCategoryVolume:&v6->_volume andName:0];
    v16 = AVSystemController_EffectiveVolumeDidChangeNotification;
    v8 = [NSArray arrayWithObjects:&v16 count:1];
    v14 = 0;
    v9 = [v7 setAttribute:v8 forKey:AVSystemController_SubscribeToNotificationsAttribute error:&v14];
    v10 = v14;

    if ((v9 & 1) == 0)
    {
      v11 = +[CLFLog commonLog];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100283888(v10, v11);
      }
    }

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v6 selector:"_effectiveVolumeChanged:" name:AVSystemController_EffectiveVolumeDidChangeNotification object:0];
    [(CLBVolumeManager *)v6 _configureVolumeDelta];
  }

  return v6;
}

- (void)startIncreasingVolume
{
  [(CLBVolumeManager *)self _configureVolumeDelta];
  [(CLBVolumeManager *)self _increaseVolume];
  self->_timer = [NSTimer scheduledTimerWithTimeInterval:self target:"_increaseVolume" selector:0 userInfo:1 repeats:0.5];

  _objc_release_x1();
}

- (void)startDecreasingVolume
{
  [(CLBVolumeManager *)self _configureVolumeDelta];
  [(CLBVolumeManager *)self _decreaseVolume];
  self->_timer = [NSTimer scheduledTimerWithTimeInterval:self target:"_decreaseVolume" selector:0 userInfo:1 repeats:0.5];

  _objc_release_x1();
}

- (void)stopVolumeUpdates
{
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)_updateAVSystemControllerWithVolume:(float)volume
{
  BSDispatchQueueAssertMain();
  v5 = +[AVSystemController sharedAVSystemController];
  v11 = 0;
  [v5 getActiveCategoryVolume:0 andName:&v11];
  v6 = v11;
  *&v7 = volume;
  [v5 setActiveCategoryVolumeTo:v7];
  v8 = +[CLFLog commonLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v6;
    v14 = 2048;
    volumeCopy = volume;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Set volume for category %@ to %f", buf, 0x16u);
  }

  v9 = [(CLBVolumeManager *)self _shouldShowTransientHUDForReason:@"ExplicitVolumeChange"];
  *&v10 = volume;
  [(CLBVolumeManager *)self _didUpdateAVSystemControllerVolume:v9 shouldShowTransientHUD:v10];
}

- (void)_didUpdateAVSystemControllerVolume:(float)volume shouldShowTransientHUD:(BOOL)d
{
  dCopy = d;
  BSDispatchQueueAssertMain();
  volume = self->_volume;
  volumeCopy = 1.0;
  if (volume <= 1.0)
  {
    volumeCopy = volume;
  }

  if (volumeCopy < 0.0)
  {
    volumeCopy = 0.0;
  }

  self->_volume = volumeCopy;
  if (vabds_f32(volume, volumeCopy) > 0.00000011921)
  {
    v9 = +[CLFLog commonLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_volume;
      v12 = 134218240;
      volumeCopy2 = volume;
      v14 = 2048;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Volume changed: %f => %f", &v12, 0x16u);
    }

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 postNotificationName:@"CLBVolumeManagerVolumeDidChangeNotification" object:0];

    if (dCopy)
    {
      [(CLBVolumeManager *)self _showTransientHUD];
    }
  }
}

- (void)_increaseVolume
{
  [(CLBVolumeManager *)self volume];
  v4 = v3;
  [(CLBVolumeManager *)self stepAmount];
  *&v5 = v4 + *&v5;

  [(CLBVolumeManager *)self setVolume:v5];
}

- (void)_decreaseVolume
{
  [(CLBVolumeManager *)self volume];
  v4 = v3;
  [(CLBVolumeManager *)self stepAmount];
  *&v5 = v4 - *&v5;

  [(CLBVolumeManager *)self setVolume:v5];
}

- (void)_configureVolumeDelta
{
  v9 = 0.0;
  v3 = +[AVSystemController sharedInstance];
  v4 = [v3 getVolumeButtonDelta:0 outVolumeDelta:&v9];

  v5 = v9;
  v6 = CLFLogCommon();
  v7 = v6;
  if (v4 || v5 <= 0.0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100283900(&v9, v4, v7);
    }

    v8 = 0.0625;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Recalculating CLBVolumeManager with volume delta: %f", buf, 0xCu);
    }

    v8 = v9;
  }

  self->_stepAmount = v8;
}

- (void)_effectiveVolumeChanged:(id)changed
{
  changedCopy = changed;
  [(CLBVolumeManager *)self volume];
  v6 = v5;
  userInfo = [changedCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:AVSystemController_EffectiveVolumeNotificationParameter_Volume];
  [v8 floatValue];
  v10 = v9;

  userInfo2 = [changedCopy userInfo];

  v12 = [userInfo2 objectForKeyedSubscript:AVSystemController_EffectiveVolumeNotificationParameter_VolumeChangeReason];

  v13 = +[CLFLog commonLog];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v20 = v10;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Effective volume changed: %f. Reason: %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004D70;
  block[3] = &unk_1002FC1A0;
  block[4] = self;
  v16 = v12;
  v17 = v10;
  v18 = v6;
  v14 = v12;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)_shouldShowTransientHUDForReason:(id)reason
{
  reasonCopy = reason;
  delegate = [(CLBVolumeManager *)self delegate];
  if ([delegate shouldShowHUDForVolumeManager:self] && objc_msgSend(reasonCopy, "isEqualToString:", @"ExplicitVolumeChange"))
  {
    v6 = +[CLFSettings sharedInstance];
    volumeButtonsEnabled = [v6 volumeButtonsEnabled];
  }

  else
  {
    volumeButtonsEnabled = 0;
  }

  return volumeButtonsEnabled;
}

- (CLBVolumeManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isShowingHUD
{
  window = [(CLBVolumeManager *)self window];
  v3 = window;
  if (window)
  {
  }

  return v3 != 0;
}

- (void)_showTransientHUD
{
  selfCopy = self;
  window = [(CLBVolumeManager *)selfCopy window];
  if (window)
  {
    v3 = window;
    [(UIWindow *)window setAlpha:1.0];
  }

  else
  {
    sub_1000690A0();
  }

  sub_100069598();
}

@end