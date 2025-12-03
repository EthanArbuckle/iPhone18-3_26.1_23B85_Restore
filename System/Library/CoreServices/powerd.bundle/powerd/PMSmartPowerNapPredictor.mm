@interface PMSmartPowerNapPredictor
+ (PMSmartPowerNapPredictor)sharedInstance;
- (BOOL)isSleepSuppressionSupported;
- (BOOL)readSkipEndOfSessionTimerFromDefaults;
- (BOOL)readStateFromDefaults;
- (PMSmartPowerNapPredictor)initWithQueue:(id)queue;
- (id)CAEventForInactivityTooShortToQueryModel;
- (id)CAEventForInterruption:(id)interruption;
- (id)CAEventForModelHesitancy;
- (id)readEndTimeFromDefaults;
- (id)readStartTimeFromDefaults;
- (id)sleepTimeBucketOfDate:(id)date AtResolution:(unint64_t)resolution;
- (int)computeRequeryDeltaWithPluginState:(BOOL)state modelOutput:(int64_t)output;
- (void)alarmDidFire:(id)fire error:(id)error;
- (void)alarmDidRegister:(id)register error:(id)error;
- (void)alarmDidUnregister:(id)unregister error:(id)error;
- (void)armQueryTimer;
- (void)cancelModelRequery;
- (void)enterSmartPowerNap;
- (void)evaluateEngagementWithPredictorOutput:(id)output allRemotesDevicesAway:(BOOL)away;
- (void)evaluateInterruption:(BOOL)interruption;
- (void)evaluateSmartPowerNap:(BOOL)nap;
- (void)exitSmartPowerNapWithReason:(id)reason;
- (void)handleRemoteDeviceIsNear;
- (void)handleUserInterruption:(BOOL)interruption;
- (void)initMobileTimerMonitor;
- (void)initMotionAlarm;
- (void)initializeTrialClient;
- (void)logEndOfSessionWithReason:(id)reason;
- (void)logNotEngaging;
- (void)logTransientInterruptions;
- (void)postSPNDarwinNotification:(unint64_t)notification;
- (void)postSPNInterruptionNotification:(unint64_t)notification;
- (void)queryModelAndEngage;
- (void)reenterSmartPowerNap;
- (void)registerMotionAlarm;
- (void)restoreState;
- (void)saveInterruptions;
- (void)saveState:(BOOL)state withEndTime:(id)time;
- (void)scheduleModelRequeryWithOutputReason:(int64_t)reason;
- (void)setQueryDelta:(BOOL)delta;
- (void)unregisterMotionAlarm;
- (void)updateInterruptionsFromDefaults;
- (void)updateLockState:(unint64_t)state;
- (void)updateMotionState:(BOOL)state;
- (void)updateTrialFactors;
@end

@implementation PMSmartPowerNapPredictor

- (void)logNotEngaging
{
  inactivity_end = [(PMSmartPowerNapPredictor *)self inactivity_end];
  inactivity_start = [(PMSmartPowerNapPredictor *)self inactivity_start];
  [inactivity_end timeIntervalSinceDate:inactivity_start];
  v6 = v5;
  [(PMSmartPowerNapPredictor *)self delta_to_query];
  v8 = v7;

  if (v6 <= v8)
  {
    cAEventForInactivityTooShortToQueryModel = [(PMSmartPowerNapPredictor *)self CAEventForInactivityTooShortToQueryModel];
    v16 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SmartPowerNap session did not engage because inactivity was shorter than delta-to-query", buf, 2u);
    }
  }

  else
  {
    cAEventForInactivityTooShortToQueryModel = [(PMSmartPowerNapPredictor *)self CAEventForModelHesitancy];
    v10 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      predictor_output = [(PMSmartPowerNapPredictor *)self predictor_output];
      [predictor_output confidenceValue];
      v14 = v13;
      predictor_output2 = [(PMSmartPowerNapPredictor *)self predictor_output];
      *buf = 134218240;
      v20 = v14;
      v21 = 2048;
      confidenceLevel = [predictor_output2 confidenceLevel];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SmartPowerNap session did not engage model confidence: %lf:%ld", buf, 0x16u);
    }
  }

  v18 = cAEventForInactivityTooShortToQueryModel;
  v17 = cAEventForInactivityTooShortToQueryModel;
  AnalyticsSendEventLazy();
}

- (id)CAEventForInactivityTooShortToQueryModel
{
  inactivity_end = [(PMSmartPowerNapPredictor *)self inactivity_end];
  inactivity_start = [(PMSmartPowerNapPredictor *)self inactivity_start];
  [inactivity_end timeIntervalSinceDate:inactivity_start];
  v6 = v5 / 3600.0;

  v7 = objc_opt_new();
  v8 = [NSNumber numberWithDouble:v6 * 60.0];
  [v7 setObject:v8 forKeyedSubscript:@"inactivityDuration"];

  trial_client = [(PMSmartPowerNapPredictor *)self trial_client];
  v10 = [trial_client treatmentIdWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v11 = [v10 description];

  trial_client2 = [(PMSmartPowerNapPredictor *)self trial_client];
  v13 = [trial_client2 rolloutIdWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v14 = [v13 description];

  trial_client3 = [(PMSmartPowerNapPredictor *)self trial_client];
  v16 = [trial_client3 experimentIdentifiersWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v17 = [v16 description];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = @"None";
  }

  [v7 setObject:v18 forKeyedSubscript:@"experimentId"];
  if (v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = @"None";
  }

  [v7 setObject:v19 forKeyedSubscript:@"rolloutId"];
  if (v11)
  {
    v20 = v11;
  }

  else
  {
    v20 = @"None";
  }

  [v7 setObject:v20 forKeyedSubscript:@"treatmentId"];
  v21 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Inactivity was too short to even consult the model. Reporting very short inactivity event to CA: %@", &v23, 0xCu);
  }

  return v7;
}

+ (PMSmartPowerNapPredictor)sharedInstance
{
  if (qword_1000AC9E8 != -1)
  {
    sub_1000627EC();
  }

  if (byte_1000AC9E0)
  {
    v2 = 0;
  }

  else
  {
    if (qword_1000AC9D0 != -1)
    {
      sub_100062800();
    }

    v2 = qword_1000AC9C8;
  }

  return v2;
}

- (PMSmartPowerNapPredictor)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (qword_1000AC9E8 != -1)
  {
    sub_1000627EC();
  }

  if ((byte_1000AC9E0 & 1) != 0 || (v33.receiver = self, v33.super_class = PMSmartPowerNapPredictor, v5 = [(PMSmartPowerNapPredictor *)&v33 init], (self = v5) == 0))
  {
    selfCopy5 = 0;
  }

  else
  {
    [(PMSmartPowerNapPredictor *)v5 setIn_smartpowernap:0];
    [(PMSmartPowerNapPredictor *)self setSession_interrupted:0];
    [(PMSmartPowerNapPredictor *)self setMax_interruptions:2];
    [(PMSmartPowerNapPredictor *)self setSkipEndOfSessionTimer:0];
    [(PMSmartPowerNapPredictor *)self setMax_interruption_duration:90.0];
    [(PMSmartPowerNapPredictor *)self setNum_interruptions:0];
    [(PMSmartPowerNapPredictor *)self setDuration_interruptions:0.0];
    [(PMSmartPowerNapPredictor *)self setInterruption_cooloff_start:3600];
    [(PMSmartPowerNapPredictor *)self setInterruption_cooloff_end:3600];
    [(PMSmartPowerNapPredictor *)self setReentry_delay:8];
    [(PMSmartPowerNapPredictor *)self setRequery_delta:dword_1000AAF80];
    [(PMSmartPowerNapPredictor *)self setFeature_enabled:_os_feature_enabled_impl()];
    [(PMSmartPowerNapPredictor *)self setQueue:queueCopy];
    [(PMSmartPowerNapPredictor *)self setSession_logged:0];
    v6 = objc_alloc_init(NSMutableArray);
    [(PMSmartPowerNapPredictor *)self setInterruptions:v6];

    v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.powerd.smartpowernap.state"];
    [(PMSmartPowerNapPredictor *)self setDefaults:v7];

    [(PMSmartPowerNapPredictor *)self setPlugin_state:IOPSDrawingUnlimitedPower()];
    if ([(PMSmartPowerNapPredictor *)self feature_enabled])
    {
      if (MKBDeviceUnlockedSinceBoot())
      {
        sub_10001E974();
        if (objc_opt_class())
        {
          v8 = objc_alloc_init(sub_10001E974());
          [(PMSmartPowerNapPredictor *)self setInactivity_predictor:v8];

          if (_os_feature_enabled_impl())
          {
            v9 = [PMSmartPowerNapLocationMonitor alloc];
            queue = [(PMSmartPowerNapPredictor *)self queue];
            v11 = [(PMSmartPowerNapLocationMonitor *)v9 initWithQueue:queue];
            [(PMSmartPowerNapPredictor *)self setLocation_monitor:v11];
          }
        }

        queue2 = [(PMSmartPowerNapPredictor *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001EA54;
        block[3] = &unk_100099210;
        selfCopy = self;
        dispatch_async(queue2, block);

        v13 = selfCopy;
      }

      else
      {
        v15 = qword_1000AB7D0;
        if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Device hasn't been unlocked since first boot", buf, 2u);
        }

        *buf = 0;
        queue3 = [(PMSmartPowerNapPredictor *)self queue];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10001EA5C;
        handler[3] = &unk_1000991E8;
        selfCopy2 = self;
        notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", buf, queue3, handler);

        v13 = selfCopy2;
      }
    }

    if (&_DMIsMigrationNeeded && (DMIsMigrationNeeded() & 1) != 0)
    {
      v17 = qword_1000AB7D0;
      if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Defering Trial initializing due to pending data migration", buf, 2u);
      }

      v18 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 300000000000);
      queue4 = [(PMSmartPowerNapPredictor *)self queue];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10001ECC4;
      v26[3] = &unk_100099210;
      selfCopy3 = self;
      dispatch_after(v18, queue4, v26);
    }

    else
    {
      [(PMSmartPowerNapPredictor *)self initializeTrialClient];
    }

    [(PMSmartPowerNapPredictor *)self initMotionAlarm];
    [(PMSmartPowerNapPredictor *)self initMobileTimerMonitor];
    v20 = dispatch_time(0, 1000000000);
    queue5 = [(PMSmartPowerNapPredictor *)self queue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10001ECCC;
    v24[3] = &unk_100099210;
    selfCopy4 = self;
    v25 = selfCopy4;
    dispatch_after(v20, queue5, v24);

    self = selfCopy4;
    selfCopy5 = self;
  }

  return selfCopy5;
}

- (void)restoreState
{
  if ([(PMSmartPowerNapPredictor *)self readStateFromDefaults])
  {
    [(PMSmartPowerNapPredictor *)self setIn_smartpowernap:1];
    readStartTimeFromDefaults = [(PMSmartPowerNapPredictor *)self readStartTimeFromDefaults];
    [(PMSmartPowerNapPredictor *)self setFull_session_start_time:readStartTimeFromDefaults];

    [(PMSmartPowerNapPredictor *)self setSkipEndOfSessionTimer:[(PMSmartPowerNapPredictor *)self readSkipEndOfSessionTimerFromDefaults]];
    readEndTimeFromDefaults = [(PMSmartPowerNapPredictor *)self readEndTimeFromDefaults];
    if (readEndTimeFromDefaults && ![(PMSmartPowerNapPredictor *)self skipEndOfSessionTimer])
    {
      [(PMSmartPowerNapPredictor *)self setPredicted_end_time:readEndTimeFromDefaults];
      v5 = +[NSDate date];
      predicted_end_time = [(PMSmartPowerNapPredictor *)self predicted_end_time];
      v7 = [v5 compare:predicted_end_time];

      if (v7 == 1)
      {
        v8 = qword_1000AB7D0;
        if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Past the predicted end. Sending exit notification", buf, 2u);
        }

        [(PMSmartPowerNapPredictor *)self exitSmartPowerNapWithReason:@"PredictedEndOfSession"];
      }

      else
      {
        predicted_end_time2 = [(PMSmartPowerNapPredictor *)self predicted_end_time];
        [predicted_end_time2 timeIntervalSinceDate:v5];
        v11 = v10;

        end_session_timer = [(PMSmartPowerNapPredictor *)self end_session_timer];

        if (end_session_timer)
        {
          end_session_timer2 = [(PMSmartPowerNapPredictor *)self end_session_timer];
          dispatch_suspend(end_session_timer2);
        }

        else
        {
          queue = [(PMSmartPowerNapPredictor *)self queue];
          v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
          [(PMSmartPowerNapPredictor *)self setEnd_session_timer:v15];

          end_session_timer3 = [(PMSmartPowerNapPredictor *)self end_session_timer];
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_10001F0CC;
          handler[3] = &unk_100099210;
          handler[4] = self;
          dispatch_source_set_event_handler(end_session_timer3, handler);

          end_session_timer2 = [(PMSmartPowerNapPredictor *)self end_session_timer];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_10001F170;
          v24[3] = &unk_100099210;
          v24[4] = self;
          dispatch_source_set_cancel_handler(end_session_timer2, v24);
        }

        end_session_timer4 = [(PMSmartPowerNapPredictor *)self end_session_timer];
        v18 = dispatch_walltime(0, (v11 * 1000000000.0));
        dispatch_source_set_timer(end_session_timer4, v18, 0xFFFFFFFFFFFFFFFFLL, 0);

        end_session_timer5 = [(PMSmartPowerNapPredictor *)self end_session_timer];
        dispatch_resume(end_session_timer5);
      }

      [(PMSmartPowerNapPredictor *)self updateInterruptionsFromDefaults];
    }
  }

  if ([(PMSmartPowerNapPredictor *)self in_smartpowernap])
  {
    v20 = +[PMSmartPowerNapService sharedInstance];
    [v20 updateState:1];
  }

  v21 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 2000000000);
  queue2 = [(PMSmartPowerNapPredictor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F17C;
  block[3] = &unk_100099210;
  block[4] = self;
  dispatch_after(v21, queue2, block);
}

- (void)saveState:(BOOL)state withEndTime:(id)time
{
  stateCopy = state;
  timeCopy = time;
  defaults = [(PMSmartPowerNapPredictor *)self defaults];
  v8 = defaults;
  if (stateCopy)
  {
    [defaults setBool:1 forKey:@"state"];

    defaults2 = [(PMSmartPowerNapPredictor *)self defaults];
    full_session_start_time = [(PMSmartPowerNapPredictor *)self full_session_start_time];
    [defaults2 setObject:full_session_start_time forKey:@"startTime"];

    defaults3 = [(PMSmartPowerNapPredictor *)self defaults];
    [defaults3 setObject:timeCopy forKey:@"predictedEndTime"];

    defaults4 = [(PMSmartPowerNapPredictor *)self defaults];
    skipEndOfSessionTimer = [(PMSmartPowerNapPredictor *)self skipEndOfSessionTimer];
    v14 = @"skipEndOfSessionTimer";
    defaults9 = defaults4;
  }

  else
  {
    [defaults removeObjectForKey:@"predictedEndTime"];

    defaults5 = [(PMSmartPowerNapPredictor *)self defaults];
    [defaults5 removeObjectForKey:@"startTime"];

    defaults6 = [(PMSmartPowerNapPredictor *)self defaults];
    [defaults6 removeObjectForKey:@"interruptionCount"];

    defaults7 = [(PMSmartPowerNapPredictor *)self defaults];
    [defaults7 removeObjectForKey:@"interruptionDuration"];

    defaults8 = [(PMSmartPowerNapPredictor *)self defaults];
    [defaults8 removeObjectForKey:@"skipEndOfSessionTimer"];

    defaults9 = [(PMSmartPowerNapPredictor *)self defaults];
    defaults4 = defaults9;
    v14 = @"state";
    skipEndOfSessionTimer = 0;
  }

  [defaults9 setBool:skipEndOfSessionTimer forKey:v14];

  defaults10 = [(PMSmartPowerNapPredictor *)self defaults];
  [defaults10 synchronize];

  v21 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v22[0] = 67109378;
    v22[1] = stateCopy;
    v23 = 2112;
    v24 = timeCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: saved state %d with end time %@", v22, 0x12u);
  }
}

- (void)saveInterruptions
{
  defaults = [(PMSmartPowerNapPredictor *)self defaults];
  [defaults setInteger:-[PMSmartPowerNapPredictor num_interruptions](self forKey:{"num_interruptions"), @"interruptionCount"}];

  defaults2 = [(PMSmartPowerNapPredictor *)self defaults];
  [(PMSmartPowerNapPredictor *)self duration_interruptions];
  [defaults2 setDouble:@"interruptionDuration" forKey:?];
}

- (BOOL)readStateFromDefaults
{
  defaults = [(PMSmartPowerNapPredictor *)self defaults];
  [defaults synchronize];

  defaults2 = [(PMSmartPowerNapPredictor *)self defaults];
  v5 = [defaults2 valueForKey:@"state"];

  v6 = qword_1000AB7D0;
  v7 = os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = v6;
      v11[0] = 67109120;
      v11[1] = [v5 BOOLValue];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Read defaults state=%d", v11, 8u);
    }

    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    if (v7)
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: No previous defaults state saved", v11, 2u);
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)readStartTimeFromDefaults
{
  defaults = [(PMSmartPowerNapPredictor *)self defaults];
  v3 = [defaults objectForKey:@"startTime"];

  v4 = qword_1000AB7D0;
  v5 = os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Read defaults start time: %@", &v8, 0xCu);
    }

    v6 = v3;
  }

  else if (v5)
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: No previous start time found", &v8, 2u);
  }

  return v3;
}

- (BOOL)readSkipEndOfSessionTimerFromDefaults
{
  defaults = [(PMSmartPowerNapPredictor *)self defaults];
  [defaults synchronize];

  defaults2 = [(PMSmartPowerNapPredictor *)self defaults];
  v5 = [defaults2 valueForKey:@"skipEndOfSessionTimer"];

  v6 = qword_1000AB7D0;
  v7 = os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = v6;
      v11[0] = 67109120;
      v11[1] = [v5 BOOLValue];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Read defaults state=%d", v11, 8u);
    }

    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    if (v7)
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: No defaults for skip timer", v11, 2u);
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)readEndTimeFromDefaults
{
  defaults = [(PMSmartPowerNapPredictor *)self defaults];
  v3 = [defaults objectForKey:@"predictedEndTime"];

  if (v3)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
    v5 = [v4 stringFromDate:v3];
    v6 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Read defaults date=%{public}@\n", &v10, 0xCu);
    }

    v7 = v3;
  }

  else
  {
    v8 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: No previous end time found", &v10, 2u);
    }
  }

  return v3;
}

- (void)updateInterruptionsFromDefaults
{
  defaults = [(PMSmartPowerNapPredictor *)self defaults];
  -[PMSmartPowerNapPredictor setNum_interruptions:](self, "setNum_interruptions:", [defaults integerForKey:@"interruptionCount"]);

  defaults2 = [(PMSmartPowerNapPredictor *)self defaults];
  [defaults2 doubleForKey:@"interruptionDuration"];
  [(PMSmartPowerNapPredictor *)self setDuration_interruptions:?];

  v5 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    num_interruptions = [(PMSmartPowerNapPredictor *)self num_interruptions];
    [(PMSmartPowerNapPredictor *)self duration_interruptions];
    v9[0] = 67109376;
    v9[1] = num_interruptions;
    v10 = 2048;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updated interruptions from defaults: %d, %f", v9, 0x12u);
  }
}

- (void)evaluateInterruption:(BOOL)interruption
{
  interruptionCopy = interruption;
  if ([(PMSmartPowerNapPredictor *)self in_smartpowernap]&& interruptionCopy)
  {
    v5 = 1;
    [(PMSmartPowerNapPredictor *)self setSession_interrupted:1];
    v6 = +[NSDate date];
    v7 = [[PMSmartPowerNapInterruption alloc] initWithStart:v6];
    interruptions = [(PMSmartPowerNapPredictor *)self interruptions];
    [interruptions addObject:v7];

    [(PMSmartPowerNapPredictor *)self setCurrent_interruption:v7];
    current_interruption = [(PMSmartPowerNapPredictor *)self current_interruption];
    start = [current_interruption start];
    cumulative_interruption_session_start = [(PMSmartPowerNapPredictor *)self cumulative_interruption_session_start];
    [start timeIntervalSinceDate:cumulative_interruption_session_start];
    v13 = v12;
    [(PMSmartPowerNapPredictor *)self cumulative_interruption_session_duration];
    v15 = v14;

    if (v13 < v15)
    {
      v5 = [(PMSmartPowerNapPredictor *)self num_interruptions]+ 1;
    }

    [(PMSmartPowerNapPredictor *)self setNum_interruptions:v5];
    [(PMSmartPowerNapPredictor *)self postSPNInterruptionNotification:1];
    [(PMSmartPowerNapPredictor *)self postSPNDarwinNotification:1];
  }

  if ([(PMSmartPowerNapPredictor *)self session_interrupted]&& !interruptionCopy)
  {
    v16 = +[NSDate date];
    current_interruption2 = [(PMSmartPowerNapPredictor *)self current_interruption];
    [current_interruption2 setEnd:v16];

    current_interruption3 = [(PMSmartPowerNapPredictor *)self current_interruption];
    v19 = [current_interruption3 end];
    current_interruption4 = [(PMSmartPowerNapPredictor *)self current_interruption];
    start2 = [current_interruption4 start];
    [v19 timeIntervalSinceDate:start2];
    v23 = v22;

    current_interruption5 = [(PMSmartPowerNapPredictor *)self current_interruption];
    start3 = [current_interruption5 start];
    cumulative_interruption_session_start2 = [(PMSmartPowerNapPredictor *)self cumulative_interruption_session_start];
    [start3 timeIntervalSinceDate:cumulative_interruption_session_start2];
    v28 = v27;
    [(PMSmartPowerNapPredictor *)self cumulative_interruption_session_duration];
    v30 = v29;

    if (v28 >= v30)
    {
      if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEBUG))
      {
        sub_100062814();
      }

      v34 = +[NSDate date];
      [(PMSmartPowerNapPredictor *)self setCumulative_interruption_session_start:v34];

      selfCopy2 = self;
      v32 = v23;
    }

    else
    {
      [(PMSmartPowerNapPredictor *)self duration_interruptions];
      v32 = v23 + v31;
      selfCopy2 = self;
    }

    [(PMSmartPowerNapPredictor *)selfCopy2 setDuration_interruptions:v32];
    v35 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v35;
      num_interruptions = [(PMSmartPowerNapPredictor *)self num_interruptions];
      [(PMSmartPowerNapPredictor *)self duration_interruptions];
      *buf = 67109376;
      v73 = num_interruptions;
      v74 = 2048;
      v75 = v38;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: session interrupted, number of interruptions %d, duration of interruption %f", buf, 0x12u);
    }

    [(PMSmartPowerNapPredictor *)self postSPNInterruptionNotification:0];
    current_interruption6 = [(PMSmartPowerNapPredictor *)self current_interruption];
    start4 = [current_interruption6 start];
    full_session_start_time = [(PMSmartPowerNapPredictor *)self full_session_start_time];
    [start4 timeIntervalSinceDate:full_session_start_time];
    if (v42 < [(PMSmartPowerNapPredictor *)self interruption_cooloff_start])
    {
    }

    else
    {
      predicted_end_time = [(PMSmartPowerNapPredictor *)self predicted_end_time];
      current_interruption7 = [(PMSmartPowerNapPredictor *)self current_interruption];
      start5 = [current_interruption7 start];
      [predicted_end_time timeIntervalSinceDate:start5];
      v47 = v46;
      interruption_cooloff_end = [(PMSmartPowerNapPredictor *)self interruption_cooloff_end];

      if (v47 >= interruption_cooloff_end)
      {
        num_interruptions2 = [(PMSmartPowerNapPredictor *)self num_interruptions];
        if (num_interruptions2 <= [(PMSmartPowerNapPredictor *)self max_interruptions]&& ([(PMSmartPowerNapPredictor *)self duration_interruptions], v51 = v50, [(PMSmartPowerNapPredictor *)self max_interruption_duration], v51 <= v52))
        {
          predicted_end_time2 = [(PMSmartPowerNapPredictor *)self predicted_end_time];
          v70 = [v16 compare:predicted_end_time2];

          if (v70 != 1)
          {
            v59 = 1;
            goto LABEL_26;
          }

          v53 = qword_1000AB7D0;
          if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v54 = "Already past the predictedDuration. Not re-entering";
            goto LABEL_21;
          }
        }

        else
        {
          v53 = qword_1000AB7D0;
          if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v54 = "Max interruptions exceeded. Not re-entering";
LABEL_21:
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, v54, buf, 2u);
          }
        }

LABEL_25:
        v59 = 0;
LABEL_26:
        [(PMSmartPowerNapPredictor *)self setShould_reenter:v59];
        if ([(PMSmartPowerNapPredictor *)self should_reenter])
        {
          v60 = qword_1000AB7D0;
          if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
          {
            v61 = v60;
            reentry_delay = [(PMSmartPowerNapPredictor *)self reentry_delay];
            *buf = 67109120;
            v73 = reentry_delay;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Setting timer to fire %u seconds to re-enter", buf, 8u);
          }

          v63 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 1000000000 * [(PMSmartPowerNapPredictor *)self reentry_delay]);
          queue = [(PMSmartPowerNapPredictor *)self queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100020250;
          block[3] = &unk_100099210;
          block[4] = self;
          dispatch_after(v63, queue, block);

          current_interruption8 = [(PMSmartPowerNapPredictor *)self current_interruption];
          [current_interruption8 setIs_transient:1];
        }

        else
        {
          current_interruption9 = [(PMSmartPowerNapPredictor *)self current_interruption];
          [current_interruption9 setIs_transient:0];

          [(PMSmartPowerNapPredictor *)self setDuration_interruptions:0.0];
          [(PMSmartPowerNapPredictor *)self setNum_interruptions:0];
          if (![(PMSmartPowerNapPredictor *)self session_logged])
          {
            v67 = qword_1000AB7D0;
            if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Metrics: session hasn't been logged yet. Logging end of session", buf, 2u);
            }

            session_end_reason = [(PMSmartPowerNapPredictor *)self session_end_reason];
            [(PMSmartPowerNapPredictor *)self logEndOfSessionWithReason:session_end_reason];

            [(PMSmartPowerNapPredictor *)self logTransientInterruptions];
            [(PMSmartPowerNapPredictor *)self setSession_logged:1];
            [(PMSmartPowerNapPredictor *)self setSession_end_reason:0];
          }

          [(PMSmartPowerNapPredictor *)self postSPNDarwinNotification:0];
        }

        [(PMSmartPowerNapPredictor *)self setSession_interrupted:0];
        [(PMSmartPowerNapPredictor *)self saveInterruptions];

        return;
      }
    }

    v55 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      v56 = v55;
      interruption_cooloff_start = [(PMSmartPowerNapPredictor *)self interruption_cooloff_start];
      interruption_cooloff_end2 = [(PMSmartPowerNapPredictor *)self interruption_cooloff_end];
      *buf = 67109376;
      v73 = interruption_cooloff_start;
      v74 = 1024;
      LODWORD(v75) = interruption_cooloff_end2;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Interruption is within %u seconds of start or %u seconds of predicted session end", buf, 0xEu);
    }

    goto LABEL_25;
  }
}

- (void)setQueryDelta:(BOOL)delta
{
  deltaCopy = delta;
  [(PMSmartPowerNapPredictor *)self setDelta_to_query:10.0];
  [(PMSmartPowerNapPredictor *)self setLast_requery_delta:0];
  inactivity_predictor = [(PMSmartPowerNapPredictor *)self inactivity_predictor];

  if (inactivity_predictor)
  {
    if (qword_1000ACA08 != -1)
    {
      sub_100062850();
    }

    if (byte_1000ACA00 == 1)
    {
      if (self->_trial_client)
      {
        trial_client = [(PMSmartPowerNapPredictor *)self trial_client];
        v7 = [trial_client levelForFactor:@"onBatteryRecommendedWaitTime" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
        [v7 doubleValue];
        v9 = v8;

        trial_client2 = [(PMSmartPowerNapPredictor *)self trial_client];
        v11 = [trial_client2 levelForFactor:@"pluginRecommendedWaitTime" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
        [v11 doubleValue];
        v13 = v12;
      }

      else
      {
        v13 = 10.0;
        v9 = 10.0;
      }
    }

    else
    {
      v13 = 900.0;
      v9 = 900.0;
    }

    if (deltaCopy)
    {
      v14 = v13;
    }

    else
    {
      v14 = v9;
    }

    [(PMSmartPowerNapPredictor *)self setDelta_to_query:v14];
    v15 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEBUG))
    {
      sub_100062864(v15, self);
    }

    evaluation_timer = [(PMSmartPowerNapPredictor *)self evaluation_timer];
    [(PMSmartPowerNapPredictor *)self delta_to_query];
    v18 = dispatch_walltime(0, 1000000000 * v17);
    dispatch_source_set_timer(evaluation_timer, v18, 0xFFFFFFFFFFFFFFFFLL, 0);

    evaluation_timer2 = [(PMSmartPowerNapPredictor *)self evaluation_timer];
    dispatch_resume(evaluation_timer2);
  }
}

- (void)armQueryTimer
{
  evaluation_timer = [(PMSmartPowerNapPredictor *)self evaluation_timer];

  if (evaluation_timer)
  {
    evaluation_timer2 = [(PMSmartPowerNapPredictor *)self evaluation_timer];
    dispatch_suspend(evaluation_timer2);
  }

  else
  {
    queue = [(PMSmartPowerNapPredictor *)self queue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
    [(PMSmartPowerNapPredictor *)self setEvaluation_timer:v6];

    evaluation_timer3 = [(PMSmartPowerNapPredictor *)self evaluation_timer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002058C;
    handler[3] = &unk_100099210;
    handler[4] = self;
    dispatch_source_set_event_handler(evaluation_timer3, handler);

    evaluation_timer2 = [(PMSmartPowerNapPredictor *)self evaluation_timer];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100020688;
    v8[3] = &unk_100099210;
    v8[4] = self;
    dispatch_source_set_cancel_handler(evaluation_timer2, v8);
  }

  [(PMSmartPowerNapPredictor *)self setQueryDelta:[(PMSmartPowerNapPredictor *)self plugin_state]];
}

- (void)evaluateSmartPowerNap:(BOOL)nap
{
  if ([(PMSmartPowerNapPredictor *)self feature_enabled]&& ([(PMSmartPowerNapPredictor *)self inactivity_predictor], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if ([(PMSmartPowerNapPredictor *)self lock_state])
    {
      in_smartpowernap = [(PMSmartPowerNapPredictor *)self in_smartpowernap];
      v7 = os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEBUG);
      if (in_smartpowernap)
      {
        if (v7)
        {
          sub_100062A18();
        }
      }

      else
      {
        if (v7)
        {
          sub_100062920();
          if (nap)
          {
            return;
          }
        }

        else if (nap)
        {
          return;
        }

        v8 = +[NSDate date];
        [(PMSmartPowerNapPredictor *)self setInactivity_start:v8];

        if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEBUG))
        {
          sub_100062998();
        }

        PLLogRegisteredEvent();
        [(PMSmartPowerNapPredictor *)self armQueryTimer];
      }
    }

    else if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEBUG))
    {
      sub_100062A54();
    }
  }

  else if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
  {
    sub_100062A90();
  }
}

- (void)evaluateEngagementWithPredictorOutput:(id)output allRemotesDevicesAway:(BOOL)away
{
  awayCopy = away;
  outputCopy = output;
  [(PMSmartPowerNapPredictor *)self setPredictor_output:outputCopy];
  predictor_output = [(PMSmartPowerNapPredictor *)self predictor_output];

  if (predictor_output)
  {
    v8 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      predictor_output2 = [(PMSmartPowerNapPredictor *)self predictor_output];
      confidenceLevel = [predictor_output2 confidenceLevel];
      predictor_output3 = [(PMSmartPowerNapPredictor *)self predictor_output];
      [predictor_output3 confidenceValue];
      v14 = v13;
      predictor_output4 = [(PMSmartPowerNapPredictor *)self predictor_output];
      [predictor_output4 predictedDuration];
      v17 = v16;
      predictor_output5 = [(PMSmartPowerNapPredictor *)self predictor_output];
      *buf = 134218752;
      v55 = confidenceLevel;
      v56 = 2048;
      v57 = v14;
      v58 = 2048;
      v59 = v17;
      v60 = 1024;
      outputReason = [predictor_output5 outputReason];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: predictor_output confidencelevel: %ld, confidenceValue: %f, predictedDuration: %f, reason: %d", buf, 0x26u);
    }

    predictor_output6 = [(PMSmartPowerNapPredictor *)self predictor_output];
    [predictor_output6 predictedDuration];
    v21 = v20;

    predictor_output7 = [(PMSmartPowerNapPredictor *)self predictor_output];
    confidenceLevel2 = [predictor_output7 confidenceLevel];

    if (confidenceLevel2 != 2 || ((v24 = (v21 * 60.0 * 60.0), v24 >= 1) ? (v25 = !awayCopy) : (v25 = 1), v25))
    {
      -[PMSmartPowerNapPredictor scheduleModelRequeryWithOutputReason:](self, "scheduleModelRequeryWithOutputReason:", [outputCopy outputReason]);
    }

    else
    {
      v26 = +[NSDate date];
      [(PMSmartPowerNapPredictor *)self setFull_session_start_time:v26];

      full_session_start_time = [(PMSmartPowerNapPredictor *)self full_session_start_time];
      v28 = [full_session_start_time dateByAddingTimeInterval:v24];
      [(PMSmartPowerNapPredictor *)self setPredicted_end_time:v28];

      [(PMSmartPowerNapPredictor *)self setCurrent_interruption:0];
      interruptions = [(PMSmartPowerNapPredictor *)self interruptions];
      [interruptions removeAllObjects];

      v30 = +[NSDate date];
      [(PMSmartPowerNapPredictor *)self setCumulative_interruption_session_start:v30];

      [(PMSmartPowerNapPredictor *)self setCumulative_interruption_session_duration:v24];
      trial_client = [(PMSmartPowerNapPredictor *)self trial_client];
      v32 = [trial_client levelForFactor:@"exitSPNOnModelOutput" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

      bOOLeanValue = [v32 BOOLeanValue];
      v34 = (bOOLeanValue & 1) == 0 && [outputCopy outputReason] == 1;
      [(PMSmartPowerNapPredictor *)self setSkipEndOfSessionTimer:v34];
      [(PMSmartPowerNapPredictor *)self enterSmartPowerNap];
      skipEndOfSessionTimer = [(PMSmartPowerNapPredictor *)self skipEndOfSessionTimer];
      v36 = qword_1000AB7D0;
      v37 = os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT);
      if (skipEndOfSessionTimer)
      {
        if (v37)
        {
          v38 = v36;
          v39 = [NSNumber numberWithLong:v24];
          *buf = 138412290;
          v55 = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Not setting timer for duration %@", buf, 0xCu);
        }
      }

      else
      {
        if (v37)
        {
          v40 = v36;
          v41 = [NSNumber numberWithLong:v24];
          v42 = [NSNumber numberWithBool:bOOLeanValue];
          v43 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [outputCopy outputReason]);
          *buf = 138412802;
          v55 = v41;
          v56 = 2112;
          v57 = v42;
          v58 = 2112;
          v59 = v43;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Setting timer for duration %@, trial exitSPNOnModelOutput: %@, output reason: %@", buf, 0x20u);
        }

        end_session_timer = [(PMSmartPowerNapPredictor *)self end_session_timer];

        if (end_session_timer)
        {
          end_session_timer2 = [(PMSmartPowerNapPredictor *)self end_session_timer];
          dispatch_suspend(end_session_timer2);
        }

        else
        {
          queue = [(PMSmartPowerNapPredictor *)self queue];
          v47 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
          [(PMSmartPowerNapPredictor *)self setEnd_session_timer:v47];

          end_session_timer3 = [(PMSmartPowerNapPredictor *)self end_session_timer];
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100020DE0;
          handler[3] = &unk_100099210;
          handler[4] = self;
          dispatch_source_set_event_handler(end_session_timer3, handler);

          end_session_timer2 = [(PMSmartPowerNapPredictor *)self end_session_timer];
          v52[0] = _NSConcreteStackBlock;
          v52[1] = 3221225472;
          v52[2] = sub_100020E84;
          v52[3] = &unk_100099210;
          v52[4] = self;
          dispatch_source_set_cancel_handler(end_session_timer2, v52);
        }

        end_session_timer4 = [(PMSmartPowerNapPredictor *)self end_session_timer];
        v50 = dispatch_walltime(0, 1000000000 * v24);
        dispatch_source_set_timer(end_session_timer4, v50, 0xFFFFFFFFFFFFFFFFLL, 0);

        end_session_timer5 = [(PMSmartPowerNapPredictor *)self end_session_timer];
        dispatch_resume(end_session_timer5);
      }
    }
  }
}

- (void)queryModelAndEngage
{
  v3 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: queryModelAndEngage", buf, 2u);
  }

  location_monitor = [(PMSmartPowerNapPredictor *)self location_monitor];

  if (location_monitor)
  {
    location_monitor2 = [(PMSmartPowerNapPredictor *)self location_monitor];
    areAllRemoteDevicesAway = [location_monitor2 areAllRemoteDevicesAway];
  }

  else
  {
    areAllRemoteDevicesAway = 1;
  }

  inactivity_predictor = [(PMSmartPowerNapPredictor *)self inactivity_predictor];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020FAC;
  v8[3] = &unk_100099380;
  v8[4] = self;
  v9 = areAllRemoteDevicesAway;
  [inactivity_predictor longInactivityPredictionResultWithOptions:1 withHandler:v8];
}

- (void)enterSmartPowerNap
{
  v3 = +[NSDate date];
  [(PMSmartPowerNapPredictor *)self setCurrent_session_start_time:v3];

  [(PMSmartPowerNapPredictor *)self setIn_smartpowernap:1];
  v4 = +[PMSmartPowerNapService sharedInstance];
  [v4 enterSmartPowerNap];

  [(PMSmartPowerNapPredictor *)self cancelModelRequery];
  [(PMSmartPowerNapPredictor *)self setSession_end_reason:0];
  [(PMSmartPowerNapPredictor *)self postSPNDarwinNotification:2];
  predicted_end_time = [(PMSmartPowerNapPredictor *)self predicted_end_time];
  [(PMSmartPowerNapPredictor *)self saveState:1 withEndTime:predicted_end_time];

  full_session_start_time = [(PMSmartPowerNapPredictor *)self full_session_start_time];
  predictor_output = [(PMSmartPowerNapPredictor *)self predictor_output];
  [predictor_output predictedDuration];
  v9 = [full_session_start_time dateByAddingTimeInterval:v8 * 3600.0];

  v10 = [v9 dateByAddingTimeInterval:{--[PMSmartPowerNapPredictor motion_alarm_start_before](self, "motion_alarm_start_before")}];
  v11 = +[NSDate date];
  [v10 timeIntervalSinceDate:v11];
  v13 = v12;

  v14 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting a timer to fire after %llu seconds to register for motion alarm", buf, 0xCu);
  }

  v15 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 1000000000 * v13);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002133C;
  block[3] = &unk_100099210;
  block[4] = self;
  dispatch_after(v15, &_dispatch_main_q, block);
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEBUG))
  {
    sub_100062B3C();
  }

  PLLogRegisteredEvent();
}

- (void)exitSmartPowerNapWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = +[NSDate date];
  [(PMSmartPowerNapPredictor *)self setFull_session_end_time:v5];

  [(PMSmartPowerNapPredictor *)self setIn_smartpowernap:0];
  v6 = +[PMSmartPowerNapService sharedInstance];
  [v6 exitSmartPowerNap];

  [(PMSmartPowerNapPredictor *)self setSession_end_reason:reasonCopy];
  [(PMSmartPowerNapPredictor *)self setLast_session_end_reason:reasonCopy];
  v7 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    full_session_start_time = [(PMSmartPowerNapPredictor *)self full_session_start_time];
    full_session_end_time = [(PMSmartPowerNapPredictor *)self full_session_end_time];
    predictor_output = [(PMSmartPowerNapPredictor *)self predictor_output];
    confidenceLevel = [predictor_output confidenceLevel];
    predictor_output2 = [(PMSmartPowerNapPredictor *)self predictor_output];
    [predictor_output2 confidenceValue];
    v15 = v14;
    predictor_output3 = [(PMSmartPowerNapPredictor *)self predictor_output];
    [predictor_output3 predictedDuration];
    v18 = v17;
    predictor_output4 = [(PMSmartPowerNapPredictor *)self predictor_output];
    *buf = 138413826;
    v27 = full_session_start_time;
    v28 = 2112;
    v29 = full_session_end_time;
    v30 = 2112;
    v31 = reasonCopy;
    v32 = 2048;
    v33 = confidenceLevel;
    v34 = 2048;
    v35 = v15;
    v36 = 2048;
    v37 = v18;
    v38 = 1024;
    outputReason = [predictor_output4 outputReason];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SmartPowerNap session end: start %@ end %@ reason %@, predicted confidence level %ld, confidence value %lf, predicted duration %lf, outputReason %d", buf, 0x44u);
  }

  if (reasonCopy == @"MobileTimerFired" || reasonCopy == @"PredictedEndOfSession" || reasonCopy == @"MotionDetected")
  {
    [(PMSmartPowerNapPredictor *)self setNum_interruptions:0];
    [(PMSmartPowerNapPredictor *)self setDuration_interruptions:0.0];
    [(PMSmartPowerNapPredictor *)self postSPNDarwinNotification:0];
  }

  [(PMSmartPowerNapPredictor *)self saveState:0 withEndTime:0];
  [(PMSmartPowerNapPredictor *)self unregisterMotionAlarm];
  v20 = [(__CFString *)reasonCopy isEqualToString:@"PredictedEndOfSession"];
  v21 = 0;
  if ((v20 & 1) == 0)
  {
    if (([(__CFString *)reasonCopy isEqualToString:@"UserInterrupted"]& 1) != 0)
    {
      v21 = 1;
    }

    else if (([(__CFString *)reasonCopy isEqualToString:@"RemoteDeviceIsNear"]& 1) != 0)
    {
      v21 = 2;
    }

    else if (([(__CFString *)reasonCopy isEqualToString:@"MotionDetected"]& 1) != 0)
    {
      v21 = 3;
    }

    else if ([(__CFString *)reasonCopy isEqualToString:@"MobileTimerFired"])
    {
      v21 = 5;
    }

    else
    {
      v21 = 4;
    }
  }

  v22 = [NSNumber numberWithUnsignedChar:v21, @"eventType", @"reason", &off_1000A29D8];
  v25[1] = v22;
  v23 = [NSDictionary dictionaryWithObjects:v25 forKeys:&v24 count:2];

  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEBUG))
  {
    sub_100062BBC();
  }

  PLLogRegisteredEvent();
}

- (void)reenterSmartPowerNap
{
  if ([(PMSmartPowerNapPredictor *)self in_smartpowernap])
  {
    v3 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: re-entry: already in smartpowernap", v5, 2u);
    }
  }

  else
  {
    inactivity_predictor = [(PMSmartPowerNapPredictor *)self inactivity_predictor];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002185C;
    v6[3] = &unk_1000993A8;
    v6[4] = self;
    [inactivity_predictor longInactivityPredictionResultWithOptions:2 withHandler:v6];
  }
}

- (int)computeRequeryDeltaWithPluginState:(BOOL)state modelOutput:(int64_t)output
{
  if (output != 1 || state)
  {
    inactivity_start = [(PMSmartPowerNapPredictor *)self inactivity_start];
    [inactivity_start timeIntervalSinceNow];
    v10 = v9;

    if (v10 <= -150.0)
    {
      v11 = 2 * [(PMSmartPowerNapPredictor *)self last_requery_delta];
      requery_delta = [(PMSmartPowerNapPredictor *)self requery_delta];
      if (v11 >= requery_delta)
      {
        v7 = requery_delta;
      }

      else
      {
        v7 = v11;
      }
    }

    else
    {
      v7 = 30;
    }
  }

  else
  {
    requery_delta2 = [(PMSmartPowerNapPredictor *)self requery_delta];
    v6 = 2 * [(PMSmartPowerNapPredictor *)self last_requery_delta];
    if (v6 <= 300)
    {
      v6 = 300;
    }

    if (requery_delta2 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = requery_delta2;
    }
  }

  [(PMSmartPowerNapPredictor *)self setLast_requery_delta:v7];

  return [(PMSmartPowerNapPredictor *)self last_requery_delta];
}

- (void)scheduleModelRequeryWithOutputReason:(int64_t)reason
{
  v4 = [(PMSmartPowerNapPredictor *)self computeRequeryDeltaWithPluginState:[(PMSmartPowerNapPredictor *)self plugin_state] modelOutput:reason];
  requery_timer = [(PMSmartPowerNapPredictor *)self requery_timer];

  if (requery_timer)
  {
    requery_timer2 = [(PMSmartPowerNapPredictor *)self requery_timer];
    dispatch_suspend(requery_timer2);
  }

  else
  {
    queue = [(PMSmartPowerNapPredictor *)self queue];
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
    [(PMSmartPowerNapPredictor *)self setRequery_timer:v8];

    requery_timer3 = [(PMSmartPowerNapPredictor *)self requery_timer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100021C88;
    handler[3] = &unk_100099210;
    handler[4] = self;
    dispatch_source_set_event_handler(requery_timer3, handler);

    requery_timer2 = [(PMSmartPowerNapPredictor *)self requery_timer];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100021CEC;
    v14[3] = &unk_100099210;
    v14[4] = self;
    dispatch_source_set_cancel_handler(requery_timer2, v14);
  }

  v10 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Setting timer to re query in %u seconds", buf, 8u);
  }

  requery_timer4 = [(PMSmartPowerNapPredictor *)self requery_timer];
  v12 = dispatch_walltime(0, 1000000000 * v4);
  dispatch_source_set_timer(requery_timer4, v12, 0xFFFFFFFFFFFFFFFFLL, 0);

  requery_timer5 = [(PMSmartPowerNapPredictor *)self requery_timer];
  dispatch_resume(requery_timer5);
}

- (void)cancelModelRequery
{
  v3 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Cancelling timer to re query model", v6, 2u);
  }

  requery_timer = [(PMSmartPowerNapPredictor *)self requery_timer];

  if (requery_timer)
  {
    requery_timer2 = [(PMSmartPowerNapPredictor *)self requery_timer];
    dispatch_source_cancel(requery_timer2);
  }
}

- (void)handleRemoteDeviceIsNear
{
  v3 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: remote device is near. Exit SmartPowerNap", v4, 2u);
  }

  if ([(PMSmartPowerNapPredictor *)self in_smartpowernap])
  {
    [(PMSmartPowerNapPredictor *)self exitSmartPowerNapWithReason:@"RemoteDeviceIsNear"];
  }
}

- (void)updateLockState:(unint64_t)state
{
  [(PMSmartPowerNapPredictor *)self setLock_state:?];
  v5 = qword_1000AB7D0;
  v6 = os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT);
  if (state == 1)
  {
    if (v6)
    {
      *buf = 0;
      v7 = "Device is locked";
      v8 = buf;
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    LOWORD(v10) = 0;
    v7 = "Device is unlocked";
    v8 = &v10;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
  }

  v9 = state != 1;
  [(PMSmartPowerNapPredictor *)self handleUserInterruption:v9, v10];
  [(PMSmartPowerNapPredictor *)self evaluateSmartPowerNap:v9];
}

- (BOOL)isSleepSuppressionSupported
{
  if (qword_1000ACA08 != -1)
  {
    sub_100062850();
  }

  if (byte_1000ACA00 == 1 && [(PMSmartPowerNapPredictor *)self ambient_state])
  {
    return 1;
  }

  return [(PMSmartPowerNapPredictor *)self is_aod_enabled];
}

- (void)initMobileTimerMonitor
{
  sub_10002256C();
  if (objc_opt_class())
  {
    sub_10002256C();
    alarmStream = [objc_opt_class() alarmStream];
    sub_10002264C();
    if (objc_opt_class())
    {
      v4 = objc_alloc(sub_10002264C());
      queue = [(PMSmartPowerNapPredictor *)self queue];
      v6 = [v4 initWithIdentifier:@"com.apple.powerd.biomeAlarm" targetQueue:queue waking:1];

      publisher = [alarmStream publisher];
      v8 = [publisher filterWithKeyPath:@"eventBody.eventType" value:&off_1000A29F0];

      objc_initWeak(location, self);
      v9 = [v8 subscribeOn:v6];
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_10002277C;
      v15 = &unk_100099410;
      objc_copyWeak(&v17, location);
      selfCopy = self;
      v10 = [v9 sinkWithCompletion:&stru_1000993E8 receiveInput:&v12];

      [(PMSmartPowerNapPredictor *)self setSink:v10, v12, v13, v14, v15];
      objc_destroyWeak(&v17);
      objc_destroyWeak(location);

      v11 = qword_1000AB7D0;
      if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "registered for mobile timer updates", location, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
      {
        sub_100062C9C();
      }
    }
  }

  else if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
  {
    sub_100062C9C();
  }
}

- (void)updateMotionState:(BOOL)state
{
  stateCopy = state;
  v5 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = stateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Motion state changed %d. Exiting SmartPowerNap", v6, 8u);
  }

  if ([(PMSmartPowerNapPredictor *)self in_smartpowernap])
  {
    [(PMSmartPowerNapPredictor *)self exitSmartPowerNapWithReason:@"MotionDetected"];
  }
}

- (void)initMotionAlarm
{
  v3 = [[CMMotionAlarmManager alloc] initWithName:@"com.apple.powerd"];
  [(PMSmartPowerNapPredictor *)self setMotion_alarm_manager:v3];

  motion_alarm_manager = [(PMSmartPowerNapPredictor *)self motion_alarm_manager];
  [motion_alarm_manager setDelegate:self];

  [(PMSmartPowerNapPredictor *)self setMotion_alarm_threshold:1800];
  [(PMSmartPowerNapPredictor *)self setMotion_alarm_start_before:3600];

  [(PMSmartPowerNapPredictor *)self setMotion_alarm_set:0];
}

- (void)registerMotionAlarm
{
  motion_alarm_manager = [(PMSmartPowerNapPredictor *)self motion_alarm_manager];
  v6 = 0;
  v4 = [motion_alarm_manager registerAlarmWithName:@"SPN motion alarm" type:6 duration:-[PMSmartPowerNapPredictor motion_alarm_threshold](self repeats:"motion_alarm_threshold") error:{0, &v6}];
  v5 = v6;

  if ((v4 & 1) != 0 || !v5)
  {
    [(PMSmartPowerNapPredictor *)self setMotion_alarm_set:1];
  }

  else if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
  {
    sub_100062D14();
  }
}

- (void)unregisterMotionAlarm
{
  motion_alarm_manager = [(PMSmartPowerNapPredictor *)self motion_alarm_manager];
  v6 = 0;
  v4 = [motion_alarm_manager unregisterAlarmWithName:@"SPN motion alarm" error:&v6];
  v5 = v6;

  if ((v4 & 1) != 0 || !v5)
  {
    [(PMSmartPowerNapPredictor *)self setMotion_alarm_set:0];
  }

  else if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_ERROR))
  {
    sub_100062D84();
  }
}

- (void)alarmDidRegister:(id)register error:(id)error
{
  v4 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: motion alarm did register", v5, 2u);
  }
}

- (void)alarmDidUnregister:(id)unregister error:(id)error
{
  v4 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: motion alarm did unregister", v5, 2u);
  }
}

- (void)alarmDidFire:(id)fire error:(id)error
{
  fireCopy = fire;
  errorCopy = error;
  v8 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = fireCopy;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: motion alarm did fire alarm %@, error %@", buf, 0x16u);
  }

  v11 = 0;
  [fireCopy acknowledgeWithError:&v11];
  v9 = v11;
  v10 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Motion detected", buf, 2u);
  }

  [(PMSmartPowerNapPredictor *)self updateMotionState:1];
}

- (void)handleUserInterruption:(BOOL)interruption
{
  if (interruption)
  {
    [(PMSmartPowerNapPredictor *)self evaluateInterruption:1];
    v4 = +[NSDate date];
    [(PMSmartPowerNapPredictor *)self setInactivity_end:v4];

    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEBUG))
    {
      sub_100062DF4();
    }

    PLLogRegisteredEvent();
    evaluation_timer = [(PMSmartPowerNapPredictor *)self evaluation_timer];

    if (evaluation_timer)
    {
      if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEBUG))
      {
        sub_100062E74();
      }

      evaluation_timer2 = [(PMSmartPowerNapPredictor *)self evaluation_timer];
      dispatch_source_cancel(evaluation_timer2);
    }

    if ([(PMSmartPowerNapPredictor *)self in_smartpowernap])
    {
      v7 = qword_1000AB7D0;
      if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: user interrupted. Exit SmartPowerNap", buf, 2u);
      }

      [(PMSmartPowerNapPredictor *)self exitSmartPowerNapWithReason:@"UserInterrupted"];
    }

    session_end_reason = [(PMSmartPowerNapPredictor *)self session_end_reason];

    if (session_end_reason)
    {
      session_end_reason2 = [(PMSmartPowerNapPredictor *)self session_end_reason];

      if (session_end_reason2 == @"UserInterrupted")
      {
        [(PMSmartPowerNapPredictor *)self max_interruption_duration];
        v18 = dispatch_time(0xFFFFFFFFFFFFFFFELL, ((v17 + 1.0) * 1000000000.0));
        queue = [(PMSmartPowerNapPredictor *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10002307C;
        block[3] = &unk_100099210;
        block[4] = self;
        dispatch_after(v18, queue, block);
      }

      else
      {
        session_end_reason3 = [(PMSmartPowerNapPredictor *)self session_end_reason];
        [(PMSmartPowerNapPredictor *)self logEndOfSessionWithReason:session_end_reason3];

        [(PMSmartPowerNapPredictor *)self logTransientInterruptions];
        [(PMSmartPowerNapPredictor *)self setSession_end_reason:0];
      }
    }

    else
    {
      inactivity_start = [(PMSmartPowerNapPredictor *)self inactivity_start];
      if (inactivity_start)
      {
        v12 = inactivity_start;
        inactivity_end = [(PMSmartPowerNapPredictor *)self inactivity_end];
        if (inactivity_end)
        {
          v14 = inactivity_end;
          last_session_end_reason = [(PMSmartPowerNapPredictor *)self last_session_end_reason];
          v16 = [last_session_end_reason isEqualToString:@"MotionDetected"];

          if ((v16 & 1) == 0)
          {
            [(PMSmartPowerNapPredictor *)self logNotEngaging];
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {

    [(PMSmartPowerNapPredictor *)self evaluateInterruption:?];
  }
}

- (void)postSPNDarwinNotification:(unint64_t)notification
{
  if (!notify_register_check("com.apple.powerd.smartpowernap", &dword_1000AC9D8))
  {
    notify_set_state(dword_1000AC9D8, notification);

    notify_post("com.apple.powerd.smartpowernap");
  }
}

- (void)postSPNInterruptionNotification:(unint64_t)notification
{
  if (!notify_register_check("com.apple.powerd.smartpowernap.interruption", &dword_1000AC9DC))
  {
    notify_set_state(dword_1000AC9DC, notification);

    notify_post("com.apple.powerd.smartpowernap.interruption");
  }
}

- (void)logEndOfSessionWithReason:(id)reason
{
  full_session_start_time = [(PMSmartPowerNapPredictor *)self full_session_start_time];
  if (full_session_start_time)
  {
    v14 = full_session_start_time;
    full_session_end_time = [(PMSmartPowerNapPredictor *)self full_session_end_time];
    if (full_session_end_time)
    {
      v7 = full_session_end_time;
      predictor_output = [(PMSmartPowerNapPredictor *)self predictor_output];

      if (predictor_output)
      {
        v10 = reason == @"UserInterrupted" || reason == @"MotionDetected";
        v11 = [(PMSmartPowerNapPredictor *)self CAEventForEngagedSessionWhereUserInterrupted:v10];
        v12 = qword_1000AB7D0;
        if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SmartPowerNap end-of-session metrics %@", buf, 0xCu);
        }

        v15 = v11;
        v13 = v11;
        AnalyticsSendEventLazy();
      }
    }

    else
    {
    }
  }
}

- (void)logTransientInterruptions
{
  interruptions = [(PMSmartPowerNapPredictor *)self interruptions];
  v4 = [interruptions count];

  if (v4)
  {
    v6 = 0;
    *&v5 = 138412802;
    v28 = v5;
    do
    {
      interruptions2 = [(PMSmartPowerNapPredictor *)self interruptions];
      v8 = [interruptions2 objectAtIndexedSubscript:v6];

      v9 = qword_1000AB7D0;
      if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        start = [v8 start];
        v12 = [v8 end];
        v13 = [v8 end];
        start2 = [v8 start];
        [v13 timeIntervalSinceDate:start2];
        *buf = v28;
        v30 = start;
        v31 = 2112;
        v32 = v12;
        v33 = 2048;
        v34 = v15;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Metrics: interruption start: %@ end %@ duration %f", buf, 0x20u);
      }

      v16 = [(PMSmartPowerNapPredictor *)self CAEventForInterruption:v8];
      [0 addEntriesFromDictionary:v16];

      if ([v8 is_transient])
      {
        full_session_start_time = [(PMSmartPowerNapPredictor *)self full_session_start_time];
        [(PMSmartPowerNapPredictor *)self delta_to_query];
        v19 = [full_session_start_time dateByAddingTimeInterval:-v18];

        if (v6)
        {
          interruptions3 = [(PMSmartPowerNapPredictor *)self interruptions];
          v21 = [interruptions3 objectAtIndexedSubscript:v6 - 1];
          v22 = [v21 end];
        }

        else
        {
          v22 = v19;
        }

        start3 = [v8 start];
        [start3 timeIntervalSinceDate:v22];
        v25 = [NSNumber numberWithDouble:v24 / 60.0];
        [0 setObject:v25 forKeyedSubscript:@"inactivityDuration"];
      }

      AnalyticsSendEventLazy();

      ++v6;
      interruptions4 = [(PMSmartPowerNapPredictor *)self interruptions];
      v27 = [interruptions4 count];
    }

    while (v27 > v6);
  }
}

- (id)sleepTimeBucketOfDate:(id)date AtResolution:(unint64_t)resolution
{
  dateCopy = date;
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 components:32 fromDate:dateCopy];

  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", ([v7 hour] + 4) % 24 / resolution);

  return v8;
}

- (id)CAEventForModelHesitancy
{
  inactivity_predictor = [(PMSmartPowerNapPredictor *)self inactivity_predictor];
  modelMetadata = [inactivity_predictor modelMetadata];

  inactivity_end = [(PMSmartPowerNapPredictor *)self inactivity_end];
  inactivity_start = [(PMSmartPowerNapPredictor *)self inactivity_start];
  [inactivity_end timeIntervalSinceDate:inactivity_start];
  v8 = v7 / 3600.0;

  if (modelMetadata)
  {
    [modelMetadata longThreshold];
    v10 = v8 * 3600.0 > v9;
  }

  else
  {
    v10 = 0;
  }

  [(PMSmartPowerNapPredictor *)self delta_to_query];
  v12 = v11;
  v13 = objc_opt_new();
  v59[0] = @"modelConfidence";
  predictor_output = [(PMSmartPowerNapPredictor *)self predictor_output];
  [predictor_output confidenceValue];
  v54 = [NSNumber numberWithDouble:?];
  v60[0] = v54;
  v60[1] = &__kCFBooleanFalse;
  v59[1] = @"modelEngaged";
  v59[2] = @"confusionMatrixResult";
  v14 = @"TN";
  if (v10)
  {
    v14 = @"FN";
  }

  v60[2] = v14;
  v59[3] = @"falseNegative";
  v53 = [NSNumber numberWithBool:v10];
  v60[3] = v53;
  v59[4] = @"trueNegative";
  v56 = v10;
  v52 = [NSNumber numberWithInt:v10 ^ 1];
  v60[4] = v52;
  v60[5] = &off_1000A2A20;
  v59[5] = @"isFalseEngageInt";
  v59[6] = @"inactivityDuration";
  v51 = [NSNumber numberWithDouble:v8 * 60.0];
  v60[6] = v51;
  v59[7] = @"eligibleTimeout";
  [(PMSmartPowerNapPredictor *)self delta_to_query];
  v16 = [NSNumber numberWithDouble:v15 / 60.0];
  v60[7] = v16;
  v59[8] = @"longThreshold";
  v17 = 0.0;
  v18 = 0.0;
  if (modelMetadata)
  {
    [modelMetadata longThreshold];
    v18 = v19 / 60.0;
  }

  v20 = [NSNumber numberWithDouble:v18];
  v60[8] = v20;
  v59[9] = @"modelVersion";
  modelVersion = [modelMetadata modelVersion];
  v22 = modelVersion;
  if (modelVersion)
  {
    v23 = modelVersion;
  }

  else
  {
    v23 = @"None";
  }

  v60[9] = v23;
  v59[10] = @"predictorType";
  predictorType = [modelMetadata predictorType];
  v25 = predictorType;
  if (predictorType)
  {
    v26 = predictorType;
  }

  else
  {
    v26 = @"None";
  }

  v60[10] = v26;
  v59[11] = @"queryType";
  queryingMechanism = [modelMetadata queryingMechanism];
  v28 = queryingMechanism;
  if (queryingMechanism)
  {
    v29 = queryingMechanism;
  }

  else
  {
    v29 = @"None";
  }

  v60[11] = v29;
  v59[12] = @"confidentThreshold";
  if (modelMetadata)
  {
    [modelMetadata confidenceThresholdStrict];
    v17 = v30;
  }

  v31 = [NSNumber numberWithDouble:v17];
  v60[12] = v31;
  v32 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:13];
  [v13 addEntriesFromDictionary:v32];

  if (v56)
  {
    [v13 setObject:&off_1000A2A20 forKeyedSubscript:@"actualCapturedDuration"];
    v33 = v8 - v12 / 3600.0;
    v34 = [NSNumber numberWithDouble:v33];
    [v13 setObject:v34 forKeyedSubscript:@"idealUsableDuration"];

    v35 = [NSNumber numberWithDouble:v33];
    [v13 setObject:v35 forKeyedSubscript:@"missedSuppressionDuration"];
  }

  trial_client = [(PMSmartPowerNapPredictor *)self trial_client];
  v37 = [trial_client treatmentIdWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v38 = [v37 description];

  trial_client2 = [(PMSmartPowerNapPredictor *)self trial_client];
  v40 = [trial_client2 rolloutIdWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v41 = [v40 description];

  trial_client3 = [(PMSmartPowerNapPredictor *)self trial_client];
  v43 = [trial_client3 experimentIdentifiersWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v44 = [v43 description];

  if (v44)
  {
    v45 = v44;
  }

  else
  {
    v45 = @"None";
  }

  [v13 setObject:v45 forKeyedSubscript:@"experimentId"];
  if (v41)
  {
    v46 = v41;
  }

  else
  {
    v46 = @"None";
  }

  [v13 setObject:v46 forKeyedSubscript:@"rolloutId"];
  if (v38)
  {
    v47 = v38;
  }

  else
  {
    v47 = @"None";
  }

  [v13 setObject:v47 forKeyedSubscript:@"treatmentId"];
  v48 = [v13 objectForKeyedSubscript:@"idealUsableDuration"];
  [v13 objectForKeyedSubscript:@"missedSuppressionDuration"];

  v49 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = v13;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Model was not confident to engage for this inactivity. Reporting hesitancy event to CA: %@", buf, 0xCu);
  }

  return v13;
}

- (id)CAEventForInterruption:(id)interruption
{
  interruptionCopy = interruption;
  full_session_start_time = [(PMSmartPowerNapPredictor *)self full_session_start_time];
  [(PMSmartPowerNapPredictor *)self delta_to_query];
  v7 = [full_session_start_time dateByAddingTimeInterval:-v6];

  full_session_start_time2 = [(PMSmartPowerNapPredictor *)self full_session_start_time];
  predictor_output = [(PMSmartPowerNapPredictor *)self predictor_output];
  [predictor_output predictedDuration];
  v11 = [full_session_start_time2 dateByAddingTimeInterval:v10 * 3600.0];

  v12 = objc_opt_new();
  start = [interruptionCopy start];
  [start timeIntervalSinceDate:v7];
  v15 = [NSNumber numberWithDouble:v14 / 3600.0];
  [v12 setObject:v15 forKeyedSubscript:@"intrTimeSinceInactivityStart"];

  start2 = [interruptionCopy start];
  [v11 timeIntervalSinceDate:start2];
  v18 = [NSNumber numberWithDouble:v17 / 3600.0];
  [v12 setObject:v18 forKeyedSubscript:@"intrTimeUntilPredictionEnd"];

  start3 = [interruptionCopy start];
  v20 = [(PMSmartPowerNapPredictor *)self sleepTimeBucketOfDate:start3 AtResolution:2];
  [v12 setObject:v20 forKeyedSubscript:@"intrStartTimeBucket_2"];

  start4 = [interruptionCopy start];
  v22 = [(PMSmartPowerNapPredictor *)self sleepTimeBucketOfDate:start4 AtResolution:4];
  [v12 setObject:v22 forKeyedSubscript:@"intrStartTimeBucket_4"];

  trial_client = [(PMSmartPowerNapPredictor *)self trial_client];
  v24 = [trial_client treatmentIdWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v25 = [v24 description];

  trial_client2 = [(PMSmartPowerNapPredictor *)self trial_client];
  v27 = [trial_client2 rolloutIdWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v28 = [v27 description];

  trial_client3 = [(PMSmartPowerNapPredictor *)self trial_client];
  v30 = [trial_client3 experimentIdentifiersWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v31 = [v30 description];

  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = @"None";
  }

  [v12 setObject:v32 forKeyedSubscript:@"experimentId"];
  if (v28)
  {
    v33 = v28;
  }

  else
  {
    v33 = @"None";
  }

  [v12 setObject:v33 forKeyedSubscript:@"rolloutId"];
  if (v25)
  {
    v34 = v25;
  }

  else
  {
    v34 = @"None";
  }

  [v12 setObject:v34 forKeyedSubscript:@"treatmentId"];
  [v12 objectForKeyedSubscript:@"intrTimeSinceInactivityStart"];

  [v12 objectForKeyedSubscript:@"intrTimeUntilPredictionEnd"];
  v35 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v36 = v35;
    is_transient = [interruptionCopy is_transient];
    v38 = &stru_10009BE60;
    if (is_transient)
    {
      v38 = @"transient ";
    }

    v40 = 138412546;
    v41 = v38;
    v42 = 2112;
    v43 = v12;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Logging metrics for %@interruption: %@", &v40, 0x16u);
  }

  return v12;
}

- (void)initializeTrialClient
{
  [NSError _setFileNameLocalizationEnabled:0];
  if (objc_opt_class())
  {
    v3 = [TRIClient clientWithIdentifier:293];
    trial_client = self->_trial_client;
    self->_trial_client = v3;

    objc_initWeak(&location, self);
    v5 = self->_trial_client;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100024C7C;
    v7[3] = &unk_100099460;
    objc_copyWeak(&v8, &location);
    v6 = [(TRIClient *)v5 addUpdateHandlerForNamespaceName:@"COREOS_PREDICTION_INACTIVITY" usingBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)updateTrialFactors
{
  trial_client = [(PMSmartPowerNapPredictor *)self trial_client];

  if (trial_client)
  {
    trial_client2 = [(PMSmartPowerNapPredictor *)self trial_client];
    v5 = [trial_client2 levelForFactor:@"maxInterruptionCountPerSession" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    -[PMSmartPowerNapPredictor setMax_interruptions:](self, "setMax_interruptions:", [v5 longValue]);
    trial_client3 = [(PMSmartPowerNapPredictor *)self trial_client];
    v7 = [trial_client3 levelForFactor:@"maxInterruptionDurationSecondsPerSession" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    [v7 doubleValue];
    [(PMSmartPowerNapPredictor *)self setMax_interruption_duration:?];
    trial_client4 = [(PMSmartPowerNapPredictor *)self trial_client];
    v9 = [trial_client4 levelForFactor:@"maxInterruptionSessionDuration" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    [v9 doubleValue];
    [(PMSmartPowerNapPredictor *)self setCumulative_interruption_session_duration:?];
    trial_client5 = [(PMSmartPowerNapPredictor *)self trial_client];
    v11 = [trial_client5 levelForFactor:@"reentryDelay" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    -[PMSmartPowerNapPredictor setReentry_delay:](self, "setReentry_delay:", [v11 longValue]);
    trial_client6 = [(PMSmartPowerNapPredictor *)self trial_client];
    v13 = [trial_client6 levelForFactor:@"requeryDelta" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    -[PMSmartPowerNapPredictor setRequery_delta:](self, "setRequery_delta:", [v13 longValue]);
    trial_client7 = [(PMSmartPowerNapPredictor *)self trial_client];
    v15 = [trial_client7 levelForFactor:@"reentryCoolOffStart" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    -[PMSmartPowerNapPredictor setInterruption_cooloff_start:](self, "setInterruption_cooloff_start:", [v15 longValue]);
    trial_client8 = [(PMSmartPowerNapPredictor *)self trial_client];
    v17 = [trial_client8 levelForFactor:@"reentryCoolOffEnd" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    v31 = v17;
    -[PMSmartPowerNapPredictor setInterruption_cooloff_end:](self, "setInterruption_cooloff_end:", [v17 longValue]);
    trial_client9 = [(PMSmartPowerNapPredictor *)self trial_client];
    v19 = [trial_client9 levelForFactor:@"motionAlarmThreshold" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    -[PMSmartPowerNapPredictor setMotion_alarm_threshold:](self, "setMotion_alarm_threshold:", [v19 longValue]);
    trial_client10 = [(PMSmartPowerNapPredictor *)self trial_client];
    v21 = [trial_client10 levelForFactor:@"motionAlarmStartThreshold" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    -[PMSmartPowerNapPredictor setMotion_alarm_start_before:](self, "setMotion_alarm_start_before:", [v21 longValue]);
    v22 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v22;
      v30 = v13;
      v23 = v9;
      v24 = v5;
      max_interruptions = [(PMSmartPowerNapPredictor *)self max_interruptions];
      [(PMSmartPowerNapPredictor *)self max_interruption_duration];
      v27 = v26;
      [(PMSmartPowerNapPredictor *)self cumulative_interruption_session_duration];
      *buf = 67110144;
      v33 = max_interruptions;
      v5 = v24;
      v9 = v23;
      v34 = 2048;
      v35 = v27;
      v36 = 2048;
      v37 = v28;
      v38 = 1024;
      reentry_delay = [(PMSmartPowerNapPredictor *)self reentry_delay];
      v40 = 1024;
      requery_delta = [(PMSmartPowerNapPredictor *)self requery_delta];
      v13 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: updated Trial factors to num %d, duration %f, interruption session %f, reentry delay %d requery_delta %d", buf, 0x28u);
    }
  }
}

@end