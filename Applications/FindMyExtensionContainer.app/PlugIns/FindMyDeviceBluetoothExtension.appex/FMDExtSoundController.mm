@interface FMDExtSoundController
- (FMDAccessoryAudioController)accessoryAudioController;
- (void)_stopSoundTimerFired:(id)fired;
- (void)invalidateStopSoundTimer;
- (void)setTimeoutForDuration:(double)duration;
- (void)startPlayingSoundForAccessory2:(id)accessory2 duration:(double)duration rampUpDuration:(double)upDuration channels:(id)channels completion:(id)completion;
- (void)startPlayingSoundForAccessory:(id)accessory duration:(double)duration rampUpDuration:(double)upDuration channels:(id)channels completion:(id)completion;
- (void)stopPlayingForAccessory2:(id)accessory2 rampDownDuration:(double)duration completion:(id)completion;
- (void)stopPlayingSoundForAccessory:(id)accessory rampDownDuration:(double)duration completion:(id)completion;
@end

@implementation FMDExtSoundController

- (void)startPlayingSoundForAccessory:(id)accessory duration:(double)duration rampUpDuration:(double)upDuration channels:(id)channels completion:(id)completion
{
  completionCopy = completion;
  channelsCopy = channels;
  accessoryCopy = accessory;
  v14 = +[FMNSXPCConnectionCache sharedCache];
  v15 = +[FMNSXPCConnectionConfiguration helperConfiguration];
  v16 = [v14 resumeConnectionWithConfiguration:v15];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100001490;
  v24[3] = &unk_10001C418;
  v17 = completionCopy;
  v25 = v17;
  [v16 addFailureBlock:v24];
  remoteObjectProxy = [v16 remoteObjectProxy];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000152C;
  v21[3] = &unk_10001C440;
  v22 = v16;
  v23 = v17;
  v19 = v16;
  v20 = v17;
  [remoteObjectProxy startPlayingSoundForAccessory:accessoryCopy duration:channelsCopy rampUpDuration:v21 channels:duration completion:upDuration];
}

- (void)stopPlayingSoundForAccessory:(id)accessory rampDownDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  accessoryCopy = accessory;
  v9 = +[FMNSXPCConnectionCache sharedCache];
  v10 = +[FMNSXPCConnectionConfiguration helperConfiguration];
  v11 = [v9 resumeConnectionWithConfiguration:v10];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100001780;
  v19[3] = &unk_10001C418;
  v12 = completionCopy;
  v20 = v12;
  [v11 addFailureBlock:v19];
  remoteObjectProxy = [v11 remoteObjectProxy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000181C;
  v16[3] = &unk_10001C440;
  v17 = v11;
  v18 = v12;
  v14 = v11;
  v15 = v12;
  [remoteObjectProxy stopPlayingForAccessory:accessoryCopy rampDownDuration:v16 completion:duration];
}

- (void)startPlayingSoundForAccessory2:(id)accessory2 duration:(double)duration rampUpDuration:(double)upDuration channels:(id)channels completion:(id)completion
{
  accessory2Copy = accessory2;
  channelsCopy = channels;
  completionCopy = completion;
  v15 = sub_100003FA4();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = accessory2Copy;
    v29 = 2048;
    durationCopy = duration;
    v31 = 2048;
    upDurationCopy = upDuration;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Start playing sound for accessory: %@ duration: %f rampUpDuration: %f", buf, 0x20u);
  }

  if (accessory2Copy)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100001AFC;
    v19[3] = &unk_10001C4B8;
    upDurationCopy2 = upDuration;
    v19[4] = self;
    v20 = accessory2Copy;
    v21 = channelsCopy;
    durationCopy2 = duration;
    v22 = completionCopy;
    dispatch_async(&_dispatch_main_q, v19);
  }

  else if (completionCopy)
  {
    v16 = [NSError alloc];
    v25 = NSLocalizedFailureReasonErrorKey;
    v26 = @"Accessory cannot be nil";
    v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v18 = [v16 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v17];
    (*(completionCopy + 2))(completionCopy, v18);
  }
}

- (void)stopPlayingForAccessory2:(id)accessory2 rampDownDuration:(double)duration completion:(id)completion
{
  accessory2Copy = accessory2;
  completionCopy = completion;
  v10 = sub_100003FA4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = accessory2Copy;
    v22 = 2048;
    durationCopy = duration;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Stop playing sound for accessory: %@ rampDownDuration: %f", buf, 0x16u);
  }

  if (accessory2Copy)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100001F00;
    v14[3] = &unk_10001C508;
    durationCopy2 = duration;
    v14[4] = self;
    v15 = accessory2Copy;
    v16 = completionCopy;
    dispatch_async(&_dispatch_main_q, v14);
  }

  else if (completionCopy)
  {
    v11 = [NSError alloc];
    v18 = NSLocalizedFailureReasonErrorKey;
    v19 = @"Accessory cannot be nil";
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [v11 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v12];
    (*(completionCopy + 2))(completionCopy, v13);
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

- (void)setTimeoutForDuration:(double)duration
{
  v5 = sub_100003FA4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSThread currentThread];
    v11 = 134218240;
    durationCopy = duration;
    v13 = 1024;
    isMainThread = [v6 isMainThread];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set timeout for duration: %f inMainThread: %d", &v11, 0x12u);
  }

  stopSoundTimer = [(FMDExtSoundController *)self stopSoundTimer];
  [stopSoundTimer invalidate];

  v8 = [NSTimer timerWithTimeInterval:self target:"_stopSoundTimerFired:" selector:0 userInfo:0 repeats:duration];
  [(FMDExtSoundController *)self setStopSoundTimer:v8];

  v9 = +[NSRunLoop currentRunLoop];
  stopSoundTimer2 = [(FMDExtSoundController *)self stopSoundTimer];
  [v9 addTimer:stopSoundTimer2 forMode:NSRunLoopCommonModes];
}

- (void)_stopSoundTimerFired:(id)fired
{
  v4 = sub_100003FA4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stop sound timer fired", v6, 2u);
  }

  currentAccessory = [(FMDExtSoundController *)self currentAccessory];
  [(FMDExtSoundController *)self stopPlayingSoundForAccessory:currentAccessory rampDownDuration:&stru_10001C548 completion:0.5];
}

- (void)invalidateStopSoundTimer
{
  v3 = sub_100003FA4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating stop sound timer", v5, 2u);
  }

  stopSoundTimer = [(FMDExtSoundController *)self stopSoundTimer];
  [stopSoundTimer invalidate];

  [(FMDExtSoundController *)self setStopSoundTimer:0];
}

@end