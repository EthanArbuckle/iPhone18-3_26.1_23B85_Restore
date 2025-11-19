@interface ATSACCAClockDevice
- (ATSACCAClockDevice)initWithClockIdentifier:(unint64_t)a3 withPlugin:(id)a4;
- (ATSACCAClockDevice)initWithDeviceUID:(id)a3 withPlugin:(id)a4;
- (BOOL)changeSamplingRate:(double)a3;
- (id).cxx_construct;
- (int)performStartIO;
- (int)performStopIO;
- (void)dealloc;
- (void)didBeginClockGrandmasterChangeForClock:(id)a3;
- (void)didChangeClockMasterForClock:(id)a3;
- (void)didChangeLockStateTo:(int)a3 forClock:(id)a4;
- (void)didEndClockGrandmasterChangeForClock:(id)a3;
- (void)initializeFirstTimestamp:(id)a3;
@end

@implementation ATSACCAClockDevice

- (ATSACCAClockDevice)initWithDeviceUID:(id)a3 withPlugin:(id)a4
{
  v5 = [NSString stringWithUTF8String:"[ATSACCAClockDevice initWithDeviceUID:withPlugin:]", a4];
  [NSException raise:NSInvalidArgumentException format:@"Do not call %@", v5];

  return 0;
}

- (ATSACCAClockDevice)initWithClockIdentifier:(unint64_t)a3 withPlugin:(id)a4
{
  v6 = a4;
  if (TSNullClockIdentifier == a3)
  {

    v7 = 0;
  }

  else
  {
    v8 = [TSClockManager timeSyncAudioClockDeviceUIDForClockIdentifier:a3];
    v44.receiver = self;
    v44.super_class = ATSACCAClockDevice;
    v9 = [(ATSACCAClockDevice *)&v44 initWithDeviceUID:v8 withPlugin:v6];
    v7 = v9;
    if (v9)
    {
      v9->_clockIdentifier = a3;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [NSString stringWithFormat:@"com.apple.AppleTimeSyncAudioClock.%@.%@.workloop", v11, v8];
      v13 = v12;
      inactive = dispatch_workloop_create_inactive([v12 UTF8String]);

      dispatch_workloop_set_scheduler_priority();
      dispatch_activate(inactive);
      v15 = dispatch_queue_attr_make_initially_inactive(0);
      attr = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_USER_INTERACTIVE, 0);

      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [NSString stringWithFormat:@"com.apple.AppleTimeSyncAudioClock.%@.%@.timer", v17, v8];
      v19 = v18;
      v20 = dispatch_queue_create([v18 UTF8String], attr);
      timerQueue = v7->_timerQueue;
      v7->_timerQueue = v20;

      dispatch_set_target_queue(v7->_timerQueue, inactive);
      dispatch_activate(v7->_timerQueue);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [NSString stringWithFormat:@"com.apple.AppleTimeSyncAudioClock.%@.%@.logging", v23, v8];
      v25 = v24;
      v26 = dispatch_queue_create([v24 UTF8String], 0);
      loggingQueue = v7->_loggingQueue;
      v7->_loggingQueue = v26;

      v28 = [NSString stringWithFormat:@"TimeSync Clock 0x%016llx", a3];
      [(ATSACCAClockDevice *)v7 setDeviceName:v28];

      [(ATSACCAClockDevice *)v7 setManufacturerName:@"Apple Inc."];
      [(ATSACCAClockDevice *)v7 setModelName:@"TimeSync Audio Clock"];
      [(ATSACCAClockDevice *)v7 setModelUID:@"ATSAC:TimeSyncClockDevice"];
      [(ATSACCAClockDevice *)v7 setCanChangeDeviceName:0];
      [(ATSACCAClockDevice *)v7 setTransportType:1635017059];
      [(ATSACCAClockDevice *)v7 setSamplingRates:&off_C9B8];
      [(ATSACCAClockDevice *)v7 setSamplingRate:48000.0];
      [(ATSACCAClockDevice *)v7 samplingRate];
      [(ATSACCAClockDevice *)v7 setTimestampPeriod:(v29 * 260.0 / 1000.0)];
      v43 = 0;
      v30 = +[TSClockManager sharedClockManager];
      v42 = 0;
      v31 = [v30 addMappingFromClockID:a3 toCoreAudioClockDomain:&v43 error:&v42];
      v32 = v42;

      if (v31)
      {
        v33 = v43;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not create mapping between clock identifier and CoreAudio clock domain\n", buf, 2u);
        }

        v33 = 0;
        v43 = 0;
      }

      [(ATSACCAClockDevice *)v7 setClockDomain:v33];
      v34 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.audio.AppleTimeSyncAudioClock"];
      [v34 registerDefaults:&off_C9D0];
      -[ATSACCAClockDevice setClockIsStable:](v7, "setClockIsStable:", [v34 BOOLForKey:@"ClockIsStable"]);
      if ([v34 BOOLForKey:@"ClockUsesRawAlgorithm"])
      {
        [(ATSACCAClockDevice *)v7 setClockAlgorithm:1918990199];
      }

      v35 = [TSIntervalFilter alloc];
      v36 = +[TSClockManager sharedClockManager];
      v37 = [v35 initWithExpectedInterval:objc_msgSend(v36 multiIntervalCount:"machAbsoluteNanosecondsToTicks:" filterSize:{260000000), 1, 6}];
      intervalFilter = v7->_intervalFilter;
      v7->_intervalFilter = v37;

      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_2BD8;
      v41[3] = &unk_C470;
      v41[4] = &v7->_timestamp;
      [(ATSACCAClockDevice *)v7 setGetZeroTimestampBlock:v41];
      if (os_parse_boot_arg_int() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v46 = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "timesync_atsac_async boot-arg set to %lld, ignoring", buf, 0xCu);
      }

      v7->_forceOutOfSync = 0;
    }
  }

  return v7;
}

- (int)performStartIO
{
  self->_hasLastTimestamp = 0;
  if (self->_forceOutOfSync)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Starting clock IO, forced out of sync due to boot-arg", buf, 2u);
    }

    v3 = +[TSClockManager sharedClockManager];
    v4 = [v3 timeSyncClock];
    clock = self->_clock;
    self->_clock = v4;
  }

  else
  {
    v6 = +[TSClockManager sharedClockManager];
    v7 = [v6 clockWithClockIdentifier:{-[ATSACCAClockDevice clockIdentifier](self, "clockIdentifier")}];
    v8 = self->_clock;
    self->_clock = v7;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(ATSACCAClockDevice *)self clockIdentifier];
    *buf = 134217984;
    v40 = v9;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%016llx: starting IO\n", buf, 0xCu);
  }

  v10 = self->_clock;
  if (!v10)
  {
    return 1937010544;
  }

  [(TSClock *)v10 addClient:self];
  intervalFilter = self->_intervalFilter;
  v12 = +[TSClockManager sharedClockManager];
  -[TSIntervalFilter resetFilterWithNewExpectedInterval:](intervalFilter, "resetFilterWithNewExpectedInterval:", [v12 machAbsoluteNanosecondsToTicks:260000000]);

  v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, self->_timerQueue);
  v14 = +[TSClockManager sharedClockManager];
  v15 = [v14 machAbsoluteNanosecondsToTicks:30000000];

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_3184;
  handler[3] = &unk_C560;
  handler[4] = self;
  v16 = v13;
  v37 = xmmword_83E0;
  v36 = v16;
  v38 = v15;
  dispatch_source_set_event_handler(v16, handler);
  v17 = dispatch_semaphore_create(0);
  startSemaphore = self->_startSemaphore;
  self->_startSemaphore = v17;

  objc_storeStrong(&self->_timerSource, v13);
  timerQueue = self->_timerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_40B4;
  block[3] = &unk_C588;
  block[4] = self;
  v20 = v16;
  v34 = v20;
  dispatch_async(timerQueue, block);
  v21 = self->_startSemaphore;
  v22 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v21, v22))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(ATSACCAClockDevice *)self clockIdentifier];
      *buf = 134217984;
      v40 = v23;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%016llx: Failed to start the timer running, took too long to lock the clock.\n", buf, 0xCu);
    }

    [(TSClock *)self->_clock removeClient:self];
    dispatch_source_set_event_handler(self->_timerSource, 0);
    timerSource = self->_timerSource;
    self->_timerSource = 0;

    v25 = self->_timerQueue;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_4138;
    v31[3] = &unk_C5B0;
    v31[4] = self;
    dispatch_sync(v25, v31);
    v26 = self->_clock;
    self->_clock = 0;

    self->_lastLockState = 0;
    dispatch_source_set_event_handler(v20, &stru_C5D0);
    dispatch_resume(v20);
    v27 = 2003329396;
  }

  else
  {
    dispatch_resume(v20);
    v32.receiver = self;
    v32.super_class = ATSACCAClockDevice;
    v27 = [(ATSACCAClockDevice *)&v32 performStartIO];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(ATSACCAClockDevice *)self clockIdentifier];
      *buf = 134218240;
      v40 = v28;
      v41 = 1024;
      v42 = v27;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%016llx: started IO 0x%08x\n", buf, 0x12u);
    }
  }

  v29 = self->_startSemaphore;
  self->_startSemaphore = 0;

  return v27;
}

- (int)performStopIO
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = [(ATSACCAClockDevice *)self clockIdentifier];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%016llx: stopping IO\n", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = ATSACCAClockDevice;
  v3 = [(ATSACCAClockDevice *)&v10 performStopIO];
  [(TSClock *)self->_clock removeClient:self];
  dispatch_source_cancel(self->_timerSource);
  dispatch_source_set_event_handler(self->_timerSource, 0);
  timerSource = self->_timerSource;
  self->_timerSource = 0;

  timerQueue = self->_timerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4410;
  block[3] = &unk_C5B0;
  block[4] = self;
  dispatch_sync(timerQueue, block);
  clock = self->_clock;
  self->_clock = 0;

  self->_lastLockState = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(ATSACCAClockDevice *)self clockIdentifier];
    *buf = 134218240;
    v12 = v7;
    v13 = 1024;
    v14 = v3;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%016llx: stopped IO 0x%08x\n", buf, 0x12u);
  }

  return v3;
}

- (BOOL)changeSamplingRate:(double)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_44C4;
  v4[3] = &unk_C5F8;
  v4[4] = self;
  *&v4[5] = a3;
  [(ATSACCAClockDevice *)self requestConfigurationChange:v4];
  return 1;
}

- (void)didChangeClockMasterForClock:(id)a3
{
  v4 = a3;
  timerQueue = self->_timerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_45E4;
  v7[3] = &unk_C588;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(timerQueue, v7);
}

- (void)didChangeLockStateTo:(int)a3 forClock:(id)a4
{
  v6 = a4;
  timerQueue = self->_timerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_481C;
  block[3] = &unk_C648;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(timerQueue, block);
}

- (void)didBeginClockGrandmasterChangeForClock:(id)a3
{
  v4 = a3;
  timerQueue = self->_timerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4AC8;
  v7[3] = &unk_C588;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(timerQueue, v7);
}

- (void)didEndClockGrandmasterChangeForClock:(id)a3
{
  v4 = a3;
  timerQueue = self->_timerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4CF4;
  v7[3] = &unk_C588;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(timerQueue, v7);
}

- (void)initializeFirstTimestamp:(id)a3
{
  v4 = a3;
  v5 = mach_absolute_time();
  clock = self->_clock;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = self->_clock;
  if (isKindOfClass)
  {
    v9 = [(TSClock *)v8 convertFromMachAbsoluteToDomainTime:v5 grandmasterUsed:&self->_lastGrandmasterIdentity portNumber:&self->_lastPortNumber];
  }

  else
  {
    v9 = [(TSClock *)v8 convertFromMachAbsoluteToDomainTime:v5];
  }

  if (v9 == TSInvalidTime)
  {
    v10 = self->_clock;
    loggingQueue = self->_loggingQueue;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_59C8;
    v41[3] = &unk_C588;
    v41[4] = self;
    v42 = v10;
    v12 = v10;
    dispatch_async(loggingQueue, v41);
  }

  else
  {
    self->_lastDomainTimestamp = 260000000 * (v9 / 0xF7F4900);
    v13 = self->_clock;
    objc_opt_class();
    v14 = &NSObject__properties;
    if (objc_opt_isKindOfClass())
    {
      v59 = TSNullgPTPClockIdentity;
      v60[0] = TSNullgPTPClockIdentity;
      v58 = -1;
      v57 = -1;
      self->_lastMachTimestamp = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp grandmasterUsed:v60 portNumber:&v58];
      v15 = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp + 290000000 grandmasterUsed:&v59 portNumber:&v57];
      v16 = v60[0];
      if (v60[0] == v59 && v58 == v57)
      {
        v17 = v15;
      }

      else
      {
        v18 = self->_loggingQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_5584;
        block[3] = &unk_C4B0;
        v55 = v58;
        block[4] = v60[0];
        block[5] = v59;
        v56 = v57;
        dispatch_async(v18, block);
        self->_lastMachTimestamp = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp grandmasterUsed:v60 portNumber:&v58];
        v17 = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp + 290000000 grandmasterUsed:&v59 portNumber:&v57];
        v16 = v60[0];
        if (v60[0] != v59 || v58 != v57)
        {
          v19 = self->_loggingQueue;
          v51[0] = _NSConcreteStackBlock;
          v51[1] = 3221225472;
          v51[2] = sub_5650;
          v51[3] = &unk_C4B0;
          v52 = v58;
          v51[4] = v60[0];
          v51[5] = v59;
          v53 = v57;
          dispatch_async(v19, v51);
          v16 = v60[0];
        }
      }

      if (self->_lastGrandmasterIdentity != v16 || self->_lastPortNumber != v58)
      {
        self->_lastDomainTimestamp = 260000000 * ([(TSClock *)self->_clock convertFromMachAbsoluteToDomainTime:v5 grandmasterUsed:&self->_lastGrandmasterIdentity portNumber:&self->_lastPortNumber]/ 0xF7F4900);
        self->_lastMachTimestamp = [TSClock convertFromDomainToMachAbsoluteTime:"convertFromDomainToMachAbsoluteTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];
        v20 = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp + 290000000 grandmasterUsed:&v59 portNumber:&v57];
        if (v60[0] == v59 && v58 == v57)
        {
          v17 = v20;
        }

        else
        {
          v21 = self->_loggingQueue;
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_571C;
          v48[3] = &unk_C4B0;
          v49 = v58;
          v48[4] = v60[0];
          v48[5] = v59;
          v50 = v57;
          dispatch_async(v21, v48);
          self->_lastMachTimestamp = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp grandmasterUsed:v60 portNumber:&v58];
          v17 = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp + 290000000 grandmasterUsed:&v59 portNumber:&v57];
          if (v60[0] != v59 || v58 != v57)
          {
            v22 = self->_loggingQueue;
            v45[0] = _NSConcreteStackBlock;
            v45[1] = 3221225472;
            v45[2] = sub_57E8;
            v45[3] = &unk_C4B0;
            v46 = v58;
            v45[4] = v60[0];
            v45[5] = v59;
            v47 = v57;
            dispatch_async(v22, v45);
          }
        }
      }

      v14 = &NSObject__properties;
    }

    else
    {
      self->_lastMachTimestamp = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp];
      v17 = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp + 290000000];
    }

    self->_lastSampleTime = 0;
    lastDomainTimestamp = self->_lastDomainTimestamp;
    self->_lastFilteredTimestamp = [(TSIntervalFilter *)self->_intervalFilter addTimestamp:self->_lastMachTimestamp, self->_lastMachTimestamp];
    self->_lastFilteredInterval = 0;
    lastSampleTime = self->_lastSampleTime;
    lastFilteredTimestamp = self->_lastFilteredTimestamp;
    lastSeed = self->_lastSeed;
    v27 = atomic_load(&self->_timestamp.mTimestampIndex.__a_.__a_value);
    v28 = (v27 + 1) % self->_timestamp.mNumberOfSlots;
    v29 = (self->_timestamp.mTimestamps.__begin_ + 24 * v28);
    *v29 = lastSampleTime;
    v29[1] = lastFilteredTimestamp;
    v29[2] = lastSeed;
    atomic_store(v28, &self->_timestamp.mTimestampIndex.__a_.__a_value);
    lastGrandmasterIdentity = self->_lastGrandmasterIdentity;
    LOWORD(lastSampleTime) = self->_lastPortNumber;
    lastMachTimestamp = self->_lastMachTimestamp;
    v32 = self->_lastDomainTimestamp;
    v33 = self->_lastSampleTime;
    v34 = self->_lastFilteredTimestamp;
    v35 = *&self->ASDClockDevice_opaque[v14[443].entrysize];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_58B4;
    v43[3] = &unk_C670;
    v43[4] = self;
    v43[5] = v33;
    v43[6] = v34;
    v43[7] = lastGrandmasterIdentity;
    v44 = lastSampleTime;
    v43[8] = v32;
    v43[9] = lastMachTimestamp;
    dispatch_async(v35, v43);
    [(ATSACCAClockDevice *)self clockIdentifier];
    v36 = self->_lastSampleTime;
    v37 = self->_lastFilteredTimestamp;
    v38 = self->_lastGrandmasterIdentity;
    kdebug_trace();
    self->_hasLastTimestamp = 1;
    v39 = +[TSClockManager sharedClockManager];
    self->_lastMachInterval = [v39 machAbsoluteNanosecondsToTicks:260000000];

    self->_dispatchTime = v17;
    dispatch_source_set_timer(v4, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
    startSemaphore = self->_startSemaphore;
    if (startSemaphore)
    {
      dispatch_semaphore_signal(startSemaphore);
    }
  }
}

- (void)dealloc
{
  if ([(ATSACCAClockDevice *)self clockDomain])
  {
    v3 = +[TSClockManager sharedClockManager];
    [v3 removeMappingFromClockIDToCoreAudioClockDomainForClockID:self->_clockIdentifier error:0];
  }

  v4.receiver = self;
  v4.super_class = ATSACCAClockDevice;
  [(ATSACCAClockDevice *)&v4 dealloc];
}

- (id).cxx_construct
{
  p_timestamp = &self->_timestamp;
  self->_timestamp.mNumberOfSlots = 4;
  sub_6088(&self->_timestamp.mTimestamps.__begin_, 4uLL);
  p_timestamp->mTimestampIndex.__a_.__a_value = 0;
  return self;
}

@end