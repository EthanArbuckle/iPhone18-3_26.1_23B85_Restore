@interface FMDExtSoundController
- (FMDAccessoryAudioController)accessoryAudioController;
- (void)_stopSoundTimerFired:(id)a3;
- (void)invalidateStopSoundTimer;
- (void)setTimeoutForDuration:(double)a3;
- (void)startPlayingSoundForAccessory2:(id)a3 duration:(double)a4 rampUpDuration:(double)a5 channels:(id)a6 completion:(id)a7;
- (void)startPlayingSoundForAccessory:(id)a3 duration:(double)a4 rampUpDuration:(double)a5 channels:(id)a6 completion:(id)a7;
- (void)stopPlayingForAccessory2:(id)a3 rampDownDuration:(double)a4 completion:(id)a5;
- (void)stopPlayingSoundForAccessory:(id)a3 rampDownDuration:(double)a4 completion:(id)a5;
@end

@implementation FMDExtSoundController

- (void)startPlayingSoundForAccessory:(id)a3 duration:(double)a4 rampUpDuration:(double)a5 channels:(id)a6 completion:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a3;
  v14 = +[FMNSXPCConnectionCache sharedCache];
  v15 = +[FMNSXPCConnectionConfiguration helperConfiguration];
  v16 = [v14 resumeConnectionWithConfiguration:v15];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100001490;
  v24[3] = &unk_10001C418;
  v17 = v11;
  v25 = v17;
  [v16 addFailureBlock:v24];
  v18 = [v16 remoteObjectProxy];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000152C;
  v21[3] = &unk_10001C440;
  v22 = v16;
  v23 = v17;
  v19 = v16;
  v20 = v17;
  [v18 startPlayingSoundForAccessory:v13 duration:v12 rampUpDuration:v21 channels:a4 completion:a5];
}

- (void)stopPlayingSoundForAccessory:(id)a3 rampDownDuration:(double)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = +[FMNSXPCConnectionCache sharedCache];
  v10 = +[FMNSXPCConnectionConfiguration helperConfiguration];
  v11 = [v9 resumeConnectionWithConfiguration:v10];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100001780;
  v19[3] = &unk_10001C418;
  v12 = v7;
  v20 = v12;
  [v11 addFailureBlock:v19];
  v13 = [v11 remoteObjectProxy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000181C;
  v16[3] = &unk_10001C440;
  v17 = v11;
  v18 = v12;
  v14 = v11;
  v15 = v12;
  [v13 stopPlayingForAccessory:v8 rampDownDuration:v16 completion:a4];
}

- (void)startPlayingSoundForAccessory2:(id)a3 duration:(double)a4 rampUpDuration:(double)a5 channels:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = sub_100003FA4();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = v12;
    v29 = 2048;
    v30 = a4;
    v31 = 2048;
    v32 = a5;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Start playing sound for accessory: %@ duration: %f rampUpDuration: %f", buf, 0x20u);
  }

  if (v12)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100001AFC;
    v19[3] = &unk_10001C4B8;
    v23 = a5;
    v19[4] = self;
    v20 = v12;
    v21 = v13;
    v24 = a4;
    v22 = v14;
    dispatch_async(&_dispatch_main_q, v19);
  }

  else if (v14)
  {
    v16 = [NSError alloc];
    v25 = NSLocalizedFailureReasonErrorKey;
    v26 = @"Accessory cannot be nil";
    v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v18 = [v16 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v17];
    (*(v14 + 2))(v14, v18);
  }
}

- (void)stopPlayingForAccessory2:(id)a3 rampDownDuration:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_100003FA4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v8;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Stop playing sound for accessory: %@ rampDownDuration: %f", buf, 0x16u);
  }

  if (v8)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100001F00;
    v14[3] = &unk_10001C508;
    v17 = a4;
    v14[4] = self;
    v15 = v8;
    v16 = v9;
    dispatch_async(&_dispatch_main_q, v14);
  }

  else if (v9)
  {
    v11 = [NSError alloc];
    v18 = NSLocalizedFailureReasonErrorKey;
    v19 = @"Accessory cannot be nil";
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [v11 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v12];
    (*(v9 + 2))(v9, v13);
  }
}

- (FMDAccessoryAudioController)accessoryAudioController
{
  accessoryAudioController = self->_accessoryAudioController;
  if (!accessoryAudioController)
  {
    v4 = objc_alloc_init(FMDAccessoryAudioController);
    v5 = self->_accessoryAudioController;
    self->_accessoryAudioController = v4;

    [(FMDAccessoryAudioController *)self->_accessoryAudioController setDelegate:self];
    accessoryAudioController = self->_accessoryAudioController;
  }

  return accessoryAudioController;
}

- (void)setTimeoutForDuration:(double)a3
{
  v5 = sub_100003FA4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSThread currentThread];
    v11 = 134218240;
    v12 = a3;
    v13 = 1024;
    v14 = [v6 isMainThread];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set timeout for duration: %f inMainThread: %d", &v11, 0x12u);
  }

  v7 = [(FMDExtSoundController *)self stopSoundTimer];
  [v7 invalidate];

  v8 = [NSTimer timerWithTimeInterval:self target:"_stopSoundTimerFired:" selector:0 userInfo:0 repeats:a3];
  [(FMDExtSoundController *)self setStopSoundTimer:v8];

  v9 = +[NSRunLoop currentRunLoop];
  v10 = [(FMDExtSoundController *)self stopSoundTimer];
  [v9 addTimer:v10 forMode:NSRunLoopCommonModes];
}

- (void)_stopSoundTimerFired:(id)a3
{
  v4 = sub_100003FA4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stop sound timer fired", v6, 2u);
  }

  v5 = [(FMDExtSoundController *)self currentAccessory];
  [(FMDExtSoundController *)self stopPlayingSoundForAccessory:v5 rampDownDuration:&stru_10001C548 completion:0.5];
}

- (void)invalidateStopSoundTimer
{
  v3 = sub_100003FA4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating stop sound timer", v5, 2u);
  }

  v4 = [(FMDExtSoundController *)self stopSoundTimer];
  [v4 invalidate];

  [(FMDExtSoundController *)self setStopSoundTimer:0];
}

@end