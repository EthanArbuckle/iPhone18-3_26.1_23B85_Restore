@interface PMSmartPowerNapPredictor
+ (PMSmartPowerNapPredictor)sharedInstance;
- (BOOL)isSleepSuppressionSupported;
- (BOOL)readSkipEndOfSessionTimerFromDefaults;
- (BOOL)readStateFromDefaults;
- (PMSmartPowerNapPredictor)initWithQueue:(id)a3;
- (id)CAEventForInactivityTooShortToQueryModel;
- (id)CAEventForInterruption:(id)a3;
- (id)CAEventForModelHesitancy;
- (id)readEndTimeFromDefaults;
- (id)readStartTimeFromDefaults;
- (id)sleepTimeBucketOfDate:(id)a3 AtResolution:(unint64_t)a4;
- (int)computeRequeryDeltaWithPluginState:(BOOL)a3 modelOutput:(int64_t)a4;
- (void)alarmDidFire:(id)a3 error:(id)a4;
- (void)alarmDidRegister:(id)a3 error:(id)a4;
- (void)alarmDidUnregister:(id)a3 error:(id)a4;
- (void)armQueryTimer;
- (void)cancelModelRequery;
- (void)enterSmartPowerNap;
- (void)evaluateEngagementWithPredictorOutput:(id)a3 allRemotesDevicesAway:(BOOL)a4;
- (void)evaluateInterruption:(BOOL)a3;
- (void)evaluateSmartPowerNap:(BOOL)a3;
- (void)exitSmartPowerNapWithReason:(id)a3;
- (void)handleRemoteDeviceIsNear;
- (void)handleUserInterruption:(BOOL)a3;
- (void)initMobileTimerMonitor;
- (void)initMotionAlarm;
- (void)initializeTrialClient;
- (void)logEndOfSessionWithReason:(id)a3;
- (void)logNotEngaging;
- (void)logTransientInterruptions;
- (void)postSPNDarwinNotification:(unint64_t)a3;
- (void)postSPNInterruptionNotification:(unint64_t)a3;
- (void)queryModelAndEngage;
- (void)reenterSmartPowerNap;
- (void)registerMotionAlarm;
- (void)restoreState;
- (void)saveInterruptions;
- (void)saveState:(BOOL)a3 withEndTime:(id)a4;
- (void)scheduleModelRequeryWithOutputReason:(int64_t)a3;
- (void)setQueryDelta:(BOOL)a3;
- (void)unregisterMotionAlarm;
- (void)updateInterruptionsFromDefaults;
- (void)updateLockState:(unint64_t)a3;
- (void)updateMotionState:(BOOL)a3;
- (void)updateTrialFactors;
@end

@implementation PMSmartPowerNapPredictor

- (void)logNotEngaging
{
  v3 = [(PMSmartPowerNapPredictor *)self inactivity_end];
  v4 = [(PMSmartPowerNapPredictor *)self inactivity_start];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;
  [(PMSmartPowerNapPredictor *)self delta_to_query];
  v8 = v7;

  if (v6 <= v8)
  {
    v9 = [(PMSmartPowerNapPredictor *)self CAEventForInactivityTooShortToQueryModel];
    v16 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SmartPowerNap session did not engage because inactivity was shorter than delta-to-query", buf, 2u);
    }
  }

  else
  {
    v9 = [(PMSmartPowerNapPredictor *)self CAEventForModelHesitancy];
    v10 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [(PMSmartPowerNapPredictor *)self predictor_output];
      [v12 confidenceValue];
      v14 = v13;
      v15 = [(PMSmartPowerNapPredictor *)self predictor_output];
      *buf = 134218240;
      v20 = v14;
      v21 = 2048;
      v22 = [v15 confidenceLevel];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SmartPowerNap session did not engage model confidence: %lf:%ld", buf, 0x16u);
    }
  }

  v18 = v9;
  v17 = v9;
  AnalyticsSendEventLazy();
}

- (id)CAEventForInactivityTooShortToQueryModel
{
  v3 = [(PMSmartPowerNapPredictor *)self inactivity_end];
  v4 = [(PMSmartPowerNapPredictor *)self inactivity_start];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5 / 3600.0;

  v7 = objc_opt_new();
  v8 = [NSNumber numberWithDouble:v6 * 60.0];
  [v7 setObject:v8 forKeyedSubscript:@"inactivityDuration"];

  v9 = [(PMSmartPowerNapPredictor *)self trial_client];
  v10 = [v9 treatmentIdWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v11 = [v10 description];

  v12 = [(PMSmartPowerNapPredictor *)self trial_client];
  v13 = [v12 rolloutIdWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v14 = [v13 description];

  v15 = [(PMSmartPowerNapPredictor *)self trial_client];
  v16 = [v15 experimentIdentifiersWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
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

- (PMSmartPowerNapPredictor)initWithQueue:(id)a3
{
  v4 = a3;
  if (qword_1000AC9E8 != -1)
  {
    sub_1000627EC();
  }

  if ((byte_1000AC9E0 & 1) != 0 || (v33.receiver = self, v33.super_class = PMSmartPowerNapPredictor, v5 = [(PMSmartPowerNapPredictor *)&v33 init], (self = v5) == 0))
  {
    v14 = 0;
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
    [(PMSmartPowerNapPredictor *)self setQueue:v4];
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
            v10 = [(PMSmartPowerNapPredictor *)self queue];
            v11 = [(PMSmartPowerNapLocationMonitor *)v9 initWithQueue:v10];
            [(PMSmartPowerNapPredictor *)self setLocation_monitor:v11];
          }
        }

        v12 = [(PMSmartPowerNapPredictor *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001EA54;
        block[3] = &unk_100099210;
        v32 = self;
        dispatch_async(v12, block);

        v13 = v32;
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
        v16 = [(PMSmartPowerNapPredictor *)self queue];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10001EA5C;
        handler[3] = &unk_1000991E8;
        v29 = self;
        notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", buf, v16, handler);

        v13 = v29;
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
      v19 = [(PMSmartPowerNapPredictor *)self queue];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10001ECC4;
      v26[3] = &unk_100099210;
      v27 = self;
      dispatch_after(v18, v19, v26);
    }

    else
    {
      [(PMSmartPowerNapPredictor *)self initializeTrialClient];
    }

    [(PMSmartPowerNapPredictor *)self initMotionAlarm];
    [(PMSmartPowerNapPredictor *)self initMobileTimerMonitor];
    v20 = dispatch_time(0, 1000000000);
    v21 = [(PMSmartPowerNapPredictor *)self queue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10001ECCC;
    v24[3] = &unk_100099210;
    v22 = self;
    v25 = v22;
    dispatch_after(v20, v21, v24);

    self = v22;
    v14 = self;
  }

  return v14;
}

- (void)restoreState
{
  if ([(PMSmartPowerNapPredictor *)self readStateFromDefaults])
  {
    [(PMSmartPowerNapPredictor *)self setIn_smartpowernap:1];
    v3 = [(PMSmartPowerNapPredictor *)self readStartTimeFromDefaults];
    [(PMSmartPowerNapPredictor *)self setFull_session_start_time:v3];

    [(PMSmartPowerNapPredictor *)self setSkipEndOfSessionTimer:[(PMSmartPowerNapPredictor *)self readSkipEndOfSessionTimerFromDefaults]];
    v4 = [(PMSmartPowerNapPredictor *)self readEndTimeFromDefaults];
    if (v4 && ![(PMSmartPowerNapPredictor *)self skipEndOfSessionTimer])
    {
      [(PMSmartPowerNapPredictor *)self setPredicted_end_time:v4];
      v5 = +[NSDate date];
      v6 = [(PMSmartPowerNapPredictor *)self predicted_end_time];
      v7 = [v5 compare:v6];

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
        v9 = [(PMSmartPowerNapPredictor *)self predicted_end_time];
        [v9 timeIntervalSinceDate:v5];
        v11 = v10;

        v12 = [(PMSmartPowerNapPredictor *)self end_session_timer];

        if (v12)
        {
          v13 = [(PMSmartPowerNapPredictor *)self end_session_timer];
          dispatch_suspend(v13);
        }

        else
        {
          v14 = [(PMSmartPowerNapPredictor *)self queue];
          v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v14);
          [(PMSmartPowerNapPredictor *)self setEnd_session_timer:v15];

          v16 = [(PMSmartPowerNapPredictor *)self end_session_timer];
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_10001F0CC;
          handler[3] = &unk_100099210;
          handler[4] = self;
          dispatch_source_set_event_handler(v16, handler);

          v13 = [(PMSmartPowerNapPredictor *)self end_session_timer];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_10001F170;
          v24[3] = &unk_100099210;
          v24[4] = self;
          dispatch_source_set_cancel_handler(v13, v24);
        }

        v17 = [(PMSmartPowerNapPredictor *)self end_session_timer];
        v18 = dispatch_walltime(0, (v11 * 1000000000.0));
        dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0);

        v19 = [(PMSmartPowerNapPredictor *)self end_session_timer];
        dispatch_resume(v19);
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
  v22 = [(PMSmartPowerNapPredictor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F17C;
  block[3] = &unk_100099210;
  block[4] = self;
  dispatch_after(v21, v22, block);
}

- (void)saveState:(BOOL)a3 withEndTime:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PMSmartPowerNapPredictor *)self defaults];
  v8 = v7;
  if (v4)
  {
    [v7 setBool:1 forKey:@"state"];

    v9 = [(PMSmartPowerNapPredictor *)self defaults];
    v10 = [(PMSmartPowerNapPredictor *)self full_session_start_time];
    [v9 setObject:v10 forKey:@"startTime"];

    v11 = [(PMSmartPowerNapPredictor *)self defaults];
    [v11 setObject:v6 forKey:@"predictedEndTime"];

    v12 = [(PMSmartPowerNapPredictor *)self defaults];
    v13 = [(PMSmartPowerNapPredictor *)self skipEndOfSessionTimer];
    v14 = @"skipEndOfSessionTimer";
    v15 = v12;
  }

  else
  {
    [v7 removeObjectForKey:@"predictedEndTime"];

    v16 = [(PMSmartPowerNapPredictor *)self defaults];
    [v16 removeObjectForKey:@"startTime"];

    v17 = [(PMSmartPowerNapPredictor *)self defaults];
    [v17 removeObjectForKey:@"interruptionCount"];

    v18 = [(PMSmartPowerNapPredictor *)self defaults];
    [v18 removeObjectForKey:@"interruptionDuration"];

    v19 = [(PMSmartPowerNapPredictor *)self defaults];
    [v19 removeObjectForKey:@"skipEndOfSessionTimer"];

    v15 = [(PMSmartPowerNapPredictor *)self defaults];
    v12 = v15;
    v14 = @"state";
    v13 = 0;
  }

  [v15 setBool:v13 forKey:v14];

  v20 = [(PMSmartPowerNapPredictor *)self defaults];
  [v20 synchronize];

  v21 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v22[0] = 67109378;
    v22[1] = v4;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: saved state %d with end time %@", v22, 0x12u);
  }
}

- (void)saveInterruptions
{
  v3 = [(PMSmartPowerNapPredictor *)self defaults];
  [v3 setInteger:-[PMSmartPowerNapPredictor num_interruptions](self forKey:{"num_interruptions"), @"interruptionCount"}];

  v4 = [(PMSmartPowerNapPredictor *)self defaults];
  [(PMSmartPowerNapPredictor *)self duration_interruptions];
  [v4 setDouble:@"interruptionDuration" forKey:?];
}

- (BOOL)readStateFromDefaults
{
  v3 = [(PMSmartPowerNapPredictor *)self defaults];
  [v3 synchronize];

  v4 = [(PMSmartPowerNapPredictor *)self defaults];
  v5 = [v4 valueForKey:@"state"];

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

    v9 = [v5 BOOLValue];
  }

  else
  {
    if (v7)
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: No previous defaults state saved", v11, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)readStartTimeFromDefaults
{
  v2 = [(PMSmartPowerNapPredictor *)self defaults];
  v3 = [v2 objectForKey:@"startTime"];

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
  v3 = [(PMSmartPowerNapPredictor *)self defaults];
  [v3 synchronize];

  v4 = [(PMSmartPowerNapPredictor *)self defaults];
  v5 = [v4 valueForKey:@"skipEndOfSessionTimer"];

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

    v9 = [v5 BOOLValue];
  }

  else
  {
    if (v7)
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: No defaults for skip timer", v11, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)readEndTimeFromDefaults
{
  v2 = [(PMSmartPowerNapPredictor *)self defaults];
  v3 = [v2 objectForKey:@"predictedEndTime"];

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
  v3 = [(PMSmartPowerNapPredictor *)self defaults];
  -[PMSmartPowerNapPredictor setNum_interruptions:](self, "setNum_interruptions:", [v3 integerForKey:@"interruptionCount"]);

  v4 = [(PMSmartPowerNapPredictor *)self defaults];
  [v4 doubleForKey:@"interruptionDuration"];
  [(PMSmartPowerNapPredictor *)self setDuration_interruptions:?];

  v5 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(PMSmartPowerNapPredictor *)self num_interruptions];
    [(PMSmartPowerNapPredictor *)self duration_interruptions];
    v9[0] = 67109376;
    v9[1] = v7;
    v10 = 2048;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updated interruptions from defaults: %d, %f", v9, 0x12u);
  }
}

- (void)evaluateInterruption:(BOOL)a3
{
  v3 = a3;
  if ([(PMSmartPowerNapPredictor *)self in_smartpowernap]&& v3)
  {
    v5 = 1;
    [(PMSmartPowerNapPredictor *)self setSession_interrupted:1];
    v6 = +[NSDate date];
    v7 = [[PMSmartPowerNapInterruption alloc] initWithStart:v6];
    v8 = [(PMSmartPowerNapPredictor *)self interruptions];
    [v8 addObject:v7];

    [(PMSmartPowerNapPredictor *)self setCurrent_interruption:v7];
    v9 = [(PMSmartPowerNapPredictor *)self current_interruption];
    v10 = [v9 start];
    v11 = [(PMSmartPowerNapPredictor *)self cumulative_interruption_session_start];
    [v10 timeIntervalSinceDate:v11];
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

  if ([(PMSmartPowerNapPredictor *)self session_interrupted]&& !v3)
  {
    v16 = +[NSDate date];
    v17 = [(PMSmartPowerNapPredictor *)self current_interruption];
    [v17 setEnd:v16];

    v18 = [(PMSmartPowerNapPredictor *)self current_interruption];
    v19 = [v18 end];
    v20 = [(PMSmartPowerNapPredictor *)self current_interruption];
    v21 = [v20 start];
    [v19 timeIntervalSinceDate:v21];
    v23 = v22;

    v24 = [(PMSmartPowerNapPredictor *)self current_interruption];
    v25 = [v24 start];
    v26 = [(PMSmartPowerNapPredictor *)self cumulative_interruption_session_start];
    [v25 timeIntervalSinceDate:v26];
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

      v33 = self;
      v32 = v23;
    }

    else
    {
      [(PMSmartPowerNapPredictor *)self duration_interruptions];
      v32 = v23 + v31;
      v33 = self;
    }

    [(PMSmartPowerNapPredictor *)v33 setDuration_interruptions:v32];
    v35 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v35;
      v37 = [(PMSmartPowerNapPredictor *)self num_interruptions];
      [(PMSmartPowerNapPredictor *)self duration_interruptions];
      *buf = 67109376;
      v73 = v37;
      v74 = 2048;
      v75 = v38;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: session interrupted, number of interruptions %d, duration of interruption %f", buf, 0x12u);
    }

    [(PMSmartPowerNapPredictor *)self postSPNInterruptionNotification:0];
    v39 = [(PMSmartPowerNapPredictor *)self current_interruption];
    v40 = [v39 start];
    v41 = [(PMSmartPowerNapPredictor *)self full_session_start_time];
    [v40 timeIntervalSinceDate:v41];
    if (v42 < [(PMSmartPowerNapPredictor *)self interruption_cooloff_start])
    {
    }

    else
    {
      v43 = [(PMSmartPowerNapPredictor *)self predicted_end_time];
      v44 = [(PMSmartPowerNapPredictor *)self current_interruption];
      v45 = [v44 start];
      [v43 timeIntervalSinceDate:v45];
      v47 = v46;
      v48 = [(PMSmartPowerNapPredictor *)self interruption_cooloff_end];

      if (v47 >= v48)
      {
        v49 = [(PMSmartPowerNapPredictor *)self num_interruptions];
        if (v49 <= [(PMSmartPowerNapPredictor *)self max_interruptions]&& ([(PMSmartPowerNapPredictor *)self duration_interruptions], v51 = v50, [(PMSmartPowerNapPredictor *)self max_interruption_duration], v51 <= v52))
        {
          v69 = [(PMSmartPowerNapPredictor *)self predicted_end_time];
          v70 = [v16 compare:v69];

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
            v62 = [(PMSmartPowerNapPredictor *)self reentry_delay];
            *buf = 67109120;
            v73 = v62;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Setting timer to fire %u seconds to re-enter", buf, 8u);
          }

          v63 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 1000000000 * [(PMSmartPowerNapPredictor *)self reentry_delay]);
          v64 = [(PMSmartPowerNapPredictor *)self queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100020250;
          block[3] = &unk_100099210;
          block[4] = self;
          dispatch_after(v63, v64, block);

          v65 = [(PMSmartPowerNapPredictor *)self current_interruption];
          [v65 setIs_transient:1];
        }

        else
        {
          v66 = [(PMSmartPowerNapPredictor *)self current_interruption];
          [v66 setIs_transient:0];

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

            v68 = [(PMSmartPowerNapPredictor *)self session_end_reason];
            [(PMSmartPowerNapPredictor *)self logEndOfSessionWithReason:v68];

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
      v57 = [(PMSmartPowerNapPredictor *)self interruption_cooloff_start];
      v58 = [(PMSmartPowerNapPredictor *)self interruption_cooloff_end];
      *buf = 67109376;
      v73 = v57;
      v74 = 1024;
      LODWORD(v75) = v58;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Interruption is within %u seconds of start or %u seconds of predicted session end", buf, 0xEu);
    }

    goto LABEL_25;
  }
}

- (void)setQueryDelta:(BOOL)a3
{
  v3 = a3;
  [(PMSmartPowerNapPredictor *)self setDelta_to_query:10.0];
  [(PMSmartPowerNapPredictor *)self setLast_requery_delta:0];
  v5 = [(PMSmartPowerNapPredictor *)self inactivity_predictor];

  if (v5)
  {
    if (qword_1000ACA08 != -1)
    {
      sub_100062850();
    }

    if (byte_1000ACA00 == 1)
    {
      if (self->_trial_client)
      {
        v6 = [(PMSmartPowerNapPredictor *)self trial_client];
        v7 = [v6 levelForFactor:@"onBatteryRecommendedWaitTime" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
        [v7 doubleValue];
        v9 = v8;

        v10 = [(PMSmartPowerNapPredictor *)self trial_client];
        v11 = [v10 levelForFactor:@"pluginRecommendedWaitTime" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
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

    if (v3)
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

    v16 = [(PMSmartPowerNapPredictor *)self evaluation_timer];
    [(PMSmartPowerNapPredictor *)self delta_to_query];
    v18 = dispatch_walltime(0, 1000000000 * v17);
    dispatch_source_set_timer(v16, v18, 0xFFFFFFFFFFFFFFFFLL, 0);

    v19 = [(PMSmartPowerNapPredictor *)self evaluation_timer];
    dispatch_resume(v19);
  }
}

- (void)armQueryTimer
{
  v3 = [(PMSmartPowerNapPredictor *)self evaluation_timer];

  if (v3)
  {
    v4 = [(PMSmartPowerNapPredictor *)self evaluation_timer];
    dispatch_suspend(v4);
  }

  else
  {
    v5 = [(PMSmartPowerNapPredictor *)self queue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);
    [(PMSmartPowerNapPredictor *)self setEvaluation_timer:v6];

    v7 = [(PMSmartPowerNapPredictor *)self evaluation_timer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002058C;
    handler[3] = &unk_100099210;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);

    v4 = [(PMSmartPowerNapPredictor *)self evaluation_timer];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100020688;
    v8[3] = &unk_100099210;
    v8[4] = self;
    dispatch_source_set_cancel_handler(v4, v8);
  }

  [(PMSmartPowerNapPredictor *)self setQueryDelta:[(PMSmartPowerNapPredictor *)self plugin_state]];
}

- (void)evaluateSmartPowerNap:(BOOL)a3
{
  if ([(PMSmartPowerNapPredictor *)self feature_enabled]&& ([(PMSmartPowerNapPredictor *)self inactivity_predictor], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if ([(PMSmartPowerNapPredictor *)self lock_state])
    {
      v6 = [(PMSmartPowerNapPredictor *)self in_smartpowernap];
      v7 = os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEBUG);
      if (v6)
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
          if (a3)
          {
            return;
          }
        }

        else if (a3)
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

- (void)evaluateEngagementWithPredictorOutput:(id)a3 allRemotesDevicesAway:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(PMSmartPowerNapPredictor *)self setPredictor_output:v6];
  v7 = [(PMSmartPowerNapPredictor *)self predictor_output];

  if (v7)
  {
    v8 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(PMSmartPowerNapPredictor *)self predictor_output];
      v11 = [v10 confidenceLevel];
      v12 = [(PMSmartPowerNapPredictor *)self predictor_output];
      [v12 confidenceValue];
      v14 = v13;
      v15 = [(PMSmartPowerNapPredictor *)self predictor_output];
      [v15 predictedDuration];
      v17 = v16;
      v18 = [(PMSmartPowerNapPredictor *)self predictor_output];
      *buf = 134218752;
      v55 = v11;
      v56 = 2048;
      v57 = v14;
      v58 = 2048;
      v59 = v17;
      v60 = 1024;
      v61 = [v18 outputReason];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: predictor_output confidencelevel: %ld, confidenceValue: %f, predictedDuration: %f, reason: %d", buf, 0x26u);
    }

    v19 = [(PMSmartPowerNapPredictor *)self predictor_output];
    [v19 predictedDuration];
    v21 = v20;

    v22 = [(PMSmartPowerNapPredictor *)self predictor_output];
    v23 = [v22 confidenceLevel];

    if (v23 != 2 || ((v24 = (v21 * 60.0 * 60.0), v24 >= 1) ? (v25 = !v4) : (v25 = 1), v25))
    {
      -[PMSmartPowerNapPredictor scheduleModelRequeryWithOutputReason:](self, "scheduleModelRequeryWithOutputReason:", [v6 outputReason]);
    }

    else
    {
      v26 = +[NSDate date];
      [(PMSmartPowerNapPredictor *)self setFull_session_start_time:v26];

      v27 = [(PMSmartPowerNapPredictor *)self full_session_start_time];
      v28 = [v27 dateByAddingTimeInterval:v24];
      [(PMSmartPowerNapPredictor *)self setPredicted_end_time:v28];

      [(PMSmartPowerNapPredictor *)self setCurrent_interruption:0];
      v29 = [(PMSmartPowerNapPredictor *)self interruptions];
      [v29 removeAllObjects];

      v30 = +[NSDate date];
      [(PMSmartPowerNapPredictor *)self setCumulative_interruption_session_start:v30];

      [(PMSmartPowerNapPredictor *)self setCumulative_interruption_session_duration:v24];
      v31 = [(PMSmartPowerNapPredictor *)self trial_client];
      v32 = [v31 levelForFactor:@"exitSPNOnModelOutput" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

      v33 = [v32 BOOLeanValue];
      v34 = (v33 & 1) == 0 && [v6 outputReason] == 1;
      [(PMSmartPowerNapPredictor *)self setSkipEndOfSessionTimer:v34];
      [(PMSmartPowerNapPredictor *)self enterSmartPowerNap];
      v35 = [(PMSmartPowerNapPredictor *)self skipEndOfSessionTimer];
      v36 = qword_1000AB7D0;
      v37 = os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT);
      if (v35)
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
          v42 = [NSNumber numberWithBool:v33];
          v43 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 outputReason]);
          *buf = 138412802;
          v55 = v41;
          v56 = 2112;
          v57 = v42;
          v58 = 2112;
          v59 = v43;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Setting timer for duration %@, trial exitSPNOnModelOutput: %@, output reason: %@", buf, 0x20u);
        }

        v44 = [(PMSmartPowerNapPredictor *)self end_session_timer];

        if (v44)
        {
          v45 = [(PMSmartPowerNapPredictor *)self end_session_timer];
          dispatch_suspend(v45);
        }

        else
        {
          v46 = [(PMSmartPowerNapPredictor *)self queue];
          v47 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v46);
          [(PMSmartPowerNapPredictor *)self setEnd_session_timer:v47];

          v48 = [(PMSmartPowerNapPredictor *)self end_session_timer];
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100020DE0;
          handler[3] = &unk_100099210;
          handler[4] = self;
          dispatch_source_set_event_handler(v48, handler);

          v45 = [(PMSmartPowerNapPredictor *)self end_session_timer];
          v52[0] = _NSConcreteStackBlock;
          v52[1] = 3221225472;
          v52[2] = sub_100020E84;
          v52[3] = &unk_100099210;
          v52[4] = self;
          dispatch_source_set_cancel_handler(v45, v52);
        }

        v49 = [(PMSmartPowerNapPredictor *)self end_session_timer];
        v50 = dispatch_walltime(0, 1000000000 * v24);
        dispatch_source_set_timer(v49, v50, 0xFFFFFFFFFFFFFFFFLL, 0);

        v51 = [(PMSmartPowerNapPredictor *)self end_session_timer];
        dispatch_resume(v51);
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

  v4 = [(PMSmartPowerNapPredictor *)self location_monitor];

  if (v4)
  {
    v5 = [(PMSmartPowerNapPredictor *)self location_monitor];
    v6 = [v5 areAllRemoteDevicesAway];
  }

  else
  {
    v6 = 1;
  }

  v7 = [(PMSmartPowerNapPredictor *)self inactivity_predictor];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020FAC;
  v8[3] = &unk_100099380;
  v8[4] = self;
  v9 = v6;
  [v7 longInactivityPredictionResultWithOptions:1 withHandler:v8];
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
  v5 = [(PMSmartPowerNapPredictor *)self predicted_end_time];
  [(PMSmartPowerNapPredictor *)self saveState:1 withEndTime:v5];

  v6 = [(PMSmartPowerNapPredictor *)self full_session_start_time];
  v7 = [(PMSmartPowerNapPredictor *)self predictor_output];
  [v7 predictedDuration];
  v9 = [v6 dateByAddingTimeInterval:v8 * 3600.0];

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

- (void)exitSmartPowerNapWithReason:(id)a3
{
  v4 = a3;
  v5 = +[NSDate date];
  [(PMSmartPowerNapPredictor *)self setFull_session_end_time:v5];

  [(PMSmartPowerNapPredictor *)self setIn_smartpowernap:0];
  v6 = +[PMSmartPowerNapService sharedInstance];
  [v6 exitSmartPowerNap];

  [(PMSmartPowerNapPredictor *)self setSession_end_reason:v4];
  [(PMSmartPowerNapPredictor *)self setLast_session_end_reason:v4];
  v7 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(PMSmartPowerNapPredictor *)self full_session_start_time];
    v10 = [(PMSmartPowerNapPredictor *)self full_session_end_time];
    v11 = [(PMSmartPowerNapPredictor *)self predictor_output];
    v12 = [v11 confidenceLevel];
    v13 = [(PMSmartPowerNapPredictor *)self predictor_output];
    [v13 confidenceValue];
    v15 = v14;
    v16 = [(PMSmartPowerNapPredictor *)self predictor_output];
    [v16 predictedDuration];
    v18 = v17;
    v19 = [(PMSmartPowerNapPredictor *)self predictor_output];
    *buf = 138413826;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = v4;
    v32 = 2048;
    v33 = v12;
    v34 = 2048;
    v35 = v15;
    v36 = 2048;
    v37 = v18;
    v38 = 1024;
    v39 = [v19 outputReason];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SmartPowerNap session end: start %@ end %@ reason %@, predicted confidence level %ld, confidence value %lf, predicted duration %lf, outputReason %d", buf, 0x44u);
  }

  if (v4 == @"MobileTimerFired" || v4 == @"PredictedEndOfSession" || v4 == @"MotionDetected")
  {
    [(PMSmartPowerNapPredictor *)self setNum_interruptions:0];
    [(PMSmartPowerNapPredictor *)self setDuration_interruptions:0.0];
    [(PMSmartPowerNapPredictor *)self postSPNDarwinNotification:0];
  }

  [(PMSmartPowerNapPredictor *)self saveState:0 withEndTime:0];
  [(PMSmartPowerNapPredictor *)self unregisterMotionAlarm];
  v20 = [(__CFString *)v4 isEqualToString:@"PredictedEndOfSession"];
  v21 = 0;
  if ((v20 & 1) == 0)
  {
    if (([(__CFString *)v4 isEqualToString:@"UserInterrupted"]& 1) != 0)
    {
      v21 = 1;
    }

    else if (([(__CFString *)v4 isEqualToString:@"RemoteDeviceIsNear"]& 1) != 0)
    {
      v21 = 2;
    }

    else if (([(__CFString *)v4 isEqualToString:@"MotionDetected"]& 1) != 0)
    {
      v21 = 3;
    }

    else if ([(__CFString *)v4 isEqualToString:@"MobileTimerFired"])
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
    v4 = [(PMSmartPowerNapPredictor *)self inactivity_predictor];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002185C;
    v6[3] = &unk_1000993A8;
    v6[4] = self;
    [v4 longInactivityPredictionResultWithOptions:2 withHandler:v6];
  }
}

- (int)computeRequeryDeltaWithPluginState:(BOOL)a3 modelOutput:(int64_t)a4
{
  if (a4 != 1 || a3)
  {
    v8 = [(PMSmartPowerNapPredictor *)self inactivity_start];
    [v8 timeIntervalSinceNow];
    v10 = v9;

    if (v10 <= -150.0)
    {
      v11 = 2 * [(PMSmartPowerNapPredictor *)self last_requery_delta];
      v12 = [(PMSmartPowerNapPredictor *)self requery_delta];
      if (v11 >= v12)
      {
        v7 = v12;
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
    v5 = [(PMSmartPowerNapPredictor *)self requery_delta];
    v6 = 2 * [(PMSmartPowerNapPredictor *)self last_requery_delta];
    if (v6 <= 300)
    {
      v6 = 300;
    }

    if (v5 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }
  }

  [(PMSmartPowerNapPredictor *)self setLast_requery_delta:v7];

  return [(PMSmartPowerNapPredictor *)self last_requery_delta];
}

- (void)scheduleModelRequeryWithOutputReason:(int64_t)a3
{
  v4 = [(PMSmartPowerNapPredictor *)self computeRequeryDeltaWithPluginState:[(PMSmartPowerNapPredictor *)self plugin_state] modelOutput:a3];
  v5 = [(PMSmartPowerNapPredictor *)self requery_timer];

  if (v5)
  {
    v6 = [(PMSmartPowerNapPredictor *)self requery_timer];
    dispatch_suspend(v6);
  }

  else
  {
    v7 = [(PMSmartPowerNapPredictor *)self queue];
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v7);
    [(PMSmartPowerNapPredictor *)self setRequery_timer:v8];

    v9 = [(PMSmartPowerNapPredictor *)self requery_timer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100021C88;
    handler[3] = &unk_100099210;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);

    v6 = [(PMSmartPowerNapPredictor *)self requery_timer];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100021CEC;
    v14[3] = &unk_100099210;
    v14[4] = self;
    dispatch_source_set_cancel_handler(v6, v14);
  }

  v10 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Setting timer to re query in %u seconds", buf, 8u);
  }

  v11 = [(PMSmartPowerNapPredictor *)self requery_timer];
  v12 = dispatch_walltime(0, 1000000000 * v4);
  dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);

  v13 = [(PMSmartPowerNapPredictor *)self requery_timer];
  dispatch_resume(v13);
}

- (void)cancelModelRequery
{
  v3 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Cancelling timer to re query model", v6, 2u);
  }

  v4 = [(PMSmartPowerNapPredictor *)self requery_timer];

  if (v4)
  {
    v5 = [(PMSmartPowerNapPredictor *)self requery_timer];
    dispatch_source_cancel(v5);
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

- (void)updateLockState:(unint64_t)a3
{
  [(PMSmartPowerNapPredictor *)self setLock_state:?];
  v5 = qword_1000AB7D0;
  v6 = os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT);
  if (a3 == 1)
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

  v9 = a3 != 1;
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
    v3 = [objc_opt_class() alarmStream];
    sub_10002264C();
    if (objc_opt_class())
    {
      v4 = objc_alloc(sub_10002264C());
      v5 = [(PMSmartPowerNapPredictor *)self queue];
      v6 = [v4 initWithIdentifier:@"com.apple.powerd.biomeAlarm" targetQueue:v5 waking:1];

      v7 = [v3 publisher];
      v8 = [v7 filterWithKeyPath:@"eventBody.eventType" value:&off_1000A29F0];

      objc_initWeak(location, self);
      v9 = [v8 subscribeOn:v6];
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_10002277C;
      v15 = &unk_100099410;
      objc_copyWeak(&v17, location);
      v16 = self;
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

- (void)updateMotionState:(BOOL)a3
{
  v3 = a3;
  v5 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
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

  v4 = [(PMSmartPowerNapPredictor *)self motion_alarm_manager];
  [v4 setDelegate:self];

  [(PMSmartPowerNapPredictor *)self setMotion_alarm_threshold:1800];
  [(PMSmartPowerNapPredictor *)self setMotion_alarm_start_before:3600];

  [(PMSmartPowerNapPredictor *)self setMotion_alarm_set:0];
}

- (void)registerMotionAlarm
{
  v3 = [(PMSmartPowerNapPredictor *)self motion_alarm_manager];
  v6 = 0;
  v4 = [v3 registerAlarmWithName:@"SPN motion alarm" type:6 duration:-[PMSmartPowerNapPredictor motion_alarm_threshold](self repeats:"motion_alarm_threshold") error:{0, &v6}];
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
  v3 = [(PMSmartPowerNapPredictor *)self motion_alarm_manager];
  v6 = 0;
  v4 = [v3 unregisterAlarmWithName:@"SPN motion alarm" error:&v6];
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

- (void)alarmDidRegister:(id)a3 error:(id)a4
{
  v4 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: motion alarm did register", v5, 2u);
  }
}

- (void)alarmDidUnregister:(id)a3 error:(id)a4
{
  v4 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: motion alarm did unregister", v5, 2u);
  }
}

- (void)alarmDidFire:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: motion alarm did fire alarm %@, error %@", buf, 0x16u);
  }

  v11 = 0;
  [v6 acknowledgeWithError:&v11];
  v9 = v11;
  v10 = qword_1000AB7D0;
  if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: Motion detected", buf, 2u);
  }

  [(PMSmartPowerNapPredictor *)self updateMotionState:1];
}

- (void)handleUserInterruption:(BOOL)a3
{
  if (a3)
  {
    [(PMSmartPowerNapPredictor *)self evaluateInterruption:1];
    v4 = +[NSDate date];
    [(PMSmartPowerNapPredictor *)self setInactivity_end:v4];

    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEBUG))
    {
      sub_100062DF4();
    }

    PLLogRegisteredEvent();
    v5 = [(PMSmartPowerNapPredictor *)self evaluation_timer];

    if (v5)
    {
      if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEBUG))
      {
        sub_100062E74();
      }

      v6 = [(PMSmartPowerNapPredictor *)self evaluation_timer];
      dispatch_source_cancel(v6);
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

    v8 = [(PMSmartPowerNapPredictor *)self session_end_reason];

    if (v8)
    {
      v9 = [(PMSmartPowerNapPredictor *)self session_end_reason];

      if (v9 == @"UserInterrupted")
      {
        [(PMSmartPowerNapPredictor *)self max_interruption_duration];
        v18 = dispatch_time(0xFFFFFFFFFFFFFFFELL, ((v17 + 1.0) * 1000000000.0));
        v19 = [(PMSmartPowerNapPredictor *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10002307C;
        block[3] = &unk_100099210;
        block[4] = self;
        dispatch_after(v18, v19, block);
      }

      else
      {
        v10 = [(PMSmartPowerNapPredictor *)self session_end_reason];
        [(PMSmartPowerNapPredictor *)self logEndOfSessionWithReason:v10];

        [(PMSmartPowerNapPredictor *)self logTransientInterruptions];
        [(PMSmartPowerNapPredictor *)self setSession_end_reason:0];
      }
    }

    else
    {
      v11 = [(PMSmartPowerNapPredictor *)self inactivity_start];
      if (v11)
      {
        v12 = v11;
        v13 = [(PMSmartPowerNapPredictor *)self inactivity_end];
        if (v13)
        {
          v14 = v13;
          v15 = [(PMSmartPowerNapPredictor *)self last_session_end_reason];
          v16 = [v15 isEqualToString:@"MotionDetected"];

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

- (void)postSPNDarwinNotification:(unint64_t)a3
{
  if (!notify_register_check("com.apple.powerd.smartpowernap", &dword_1000AC9D8))
  {
    notify_set_state(dword_1000AC9D8, a3);

    notify_post("com.apple.powerd.smartpowernap");
  }
}

- (void)postSPNInterruptionNotification:(unint64_t)a3
{
  if (!notify_register_check("com.apple.powerd.smartpowernap.interruption", &dword_1000AC9DC))
  {
    notify_set_state(dword_1000AC9DC, a3);

    notify_post("com.apple.powerd.smartpowernap.interruption");
  }
}

- (void)logEndOfSessionWithReason:(id)a3
{
  v5 = [(PMSmartPowerNapPredictor *)self full_session_start_time];
  if (v5)
  {
    v14 = v5;
    v6 = [(PMSmartPowerNapPredictor *)self full_session_end_time];
    if (v6)
    {
      v7 = v6;
      v8 = [(PMSmartPowerNapPredictor *)self predictor_output];

      if (v8)
      {
        v10 = a3 == @"UserInterrupted" || a3 == @"MotionDetected";
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
  v3 = [(PMSmartPowerNapPredictor *)self interruptions];
  v4 = [v3 count];

  if (v4)
  {
    v6 = 0;
    *&v5 = 138412802;
    v28 = v5;
    do
    {
      v7 = [(PMSmartPowerNapPredictor *)self interruptions];
      v8 = [v7 objectAtIndexedSubscript:v6];

      v9 = qword_1000AB7D0;
      if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [v8 start];
        v12 = [v8 end];
        v13 = [v8 end];
        v14 = [v8 start];
        [v13 timeIntervalSinceDate:v14];
        *buf = v28;
        v30 = v11;
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
        v17 = [(PMSmartPowerNapPredictor *)self full_session_start_time];
        [(PMSmartPowerNapPredictor *)self delta_to_query];
        v19 = [v17 dateByAddingTimeInterval:-v18];

        if (v6)
        {
          v20 = [(PMSmartPowerNapPredictor *)self interruptions];
          v21 = [v20 objectAtIndexedSubscript:v6 - 1];
          v22 = [v21 end];
        }

        else
        {
          v22 = v19;
        }

        v23 = [v8 start];
        [v23 timeIntervalSinceDate:v22];
        v25 = [NSNumber numberWithDouble:v24 / 60.0];
        [0 setObject:v25 forKeyedSubscript:@"inactivityDuration"];
      }

      AnalyticsSendEventLazy();

      ++v6;
      v26 = [(PMSmartPowerNapPredictor *)self interruptions];
      v27 = [v26 count];
    }

    while (v27 > v6);
  }
}

- (id)sleepTimeBucketOfDate:(id)a3 AtResolution:(unint64_t)a4
{
  v5 = a3;
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 components:32 fromDate:v5];

  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", ([v7 hour] + 4) % 24 / a4);

  return v8;
}

- (id)CAEventForModelHesitancy
{
  v3 = [(PMSmartPowerNapPredictor *)self inactivity_predictor];
  v4 = [v3 modelMetadata];

  v5 = [(PMSmartPowerNapPredictor *)self inactivity_end];
  v6 = [(PMSmartPowerNapPredictor *)self inactivity_start];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7 / 3600.0;

  if (v4)
  {
    [v4 longThreshold];
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
  v55 = [(PMSmartPowerNapPredictor *)self predictor_output];
  [v55 confidenceValue];
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
  if (v4)
  {
    [v4 longThreshold];
    v18 = v19 / 60.0;
  }

  v20 = [NSNumber numberWithDouble:v18];
  v60[8] = v20;
  v59[9] = @"modelVersion";
  v21 = [v4 modelVersion];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = @"None";
  }

  v60[9] = v23;
  v59[10] = @"predictorType";
  v24 = [v4 predictorType];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = @"None";
  }

  v60[10] = v26;
  v59[11] = @"queryType";
  v27 = [v4 queryingMechanism];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = @"None";
  }

  v60[11] = v29;
  v59[12] = @"confidentThreshold";
  if (v4)
  {
    [v4 confidenceThresholdStrict];
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

  v36 = [(PMSmartPowerNapPredictor *)self trial_client];
  v37 = [v36 treatmentIdWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v38 = [v37 description];

  v39 = [(PMSmartPowerNapPredictor *)self trial_client];
  v40 = [v39 rolloutIdWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v41 = [v40 description];

  v42 = [(PMSmartPowerNapPredictor *)self trial_client];
  v43 = [v42 experimentIdentifiersWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
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

- (id)CAEventForInterruption:(id)a3
{
  v4 = a3;
  v5 = [(PMSmartPowerNapPredictor *)self full_session_start_time];
  [(PMSmartPowerNapPredictor *)self delta_to_query];
  v7 = [v5 dateByAddingTimeInterval:-v6];

  v8 = [(PMSmartPowerNapPredictor *)self full_session_start_time];
  v9 = [(PMSmartPowerNapPredictor *)self predictor_output];
  [v9 predictedDuration];
  v11 = [v8 dateByAddingTimeInterval:v10 * 3600.0];

  v12 = objc_opt_new();
  v13 = [v4 start];
  [v13 timeIntervalSinceDate:v7];
  v15 = [NSNumber numberWithDouble:v14 / 3600.0];
  [v12 setObject:v15 forKeyedSubscript:@"intrTimeSinceInactivityStart"];

  v16 = [v4 start];
  [v11 timeIntervalSinceDate:v16];
  v18 = [NSNumber numberWithDouble:v17 / 3600.0];
  [v12 setObject:v18 forKeyedSubscript:@"intrTimeUntilPredictionEnd"];

  v19 = [v4 start];
  v20 = [(PMSmartPowerNapPredictor *)self sleepTimeBucketOfDate:v19 AtResolution:2];
  [v12 setObject:v20 forKeyedSubscript:@"intrStartTimeBucket_2"];

  v21 = [v4 start];
  v22 = [(PMSmartPowerNapPredictor *)self sleepTimeBucketOfDate:v21 AtResolution:4];
  [v12 setObject:v22 forKeyedSubscript:@"intrStartTimeBucket_4"];

  v23 = [(PMSmartPowerNapPredictor *)self trial_client];
  v24 = [v23 treatmentIdWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v25 = [v24 description];

  v26 = [(PMSmartPowerNapPredictor *)self trial_client];
  v27 = [v26 rolloutIdWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  v28 = [v27 description];

  v29 = [(PMSmartPowerNapPredictor *)self trial_client];
  v30 = [v29 experimentIdentifiersWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
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
    v37 = [v4 is_transient];
    v38 = &stru_10009BE60;
    if (v37)
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
  v3 = [(PMSmartPowerNapPredictor *)self trial_client];

  if (v3)
  {
    v4 = [(PMSmartPowerNapPredictor *)self trial_client];
    v5 = [v4 levelForFactor:@"maxInterruptionCountPerSession" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    -[PMSmartPowerNapPredictor setMax_interruptions:](self, "setMax_interruptions:", [v5 longValue]);
    v6 = [(PMSmartPowerNapPredictor *)self trial_client];
    v7 = [v6 levelForFactor:@"maxInterruptionDurationSecondsPerSession" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    [v7 doubleValue];
    [(PMSmartPowerNapPredictor *)self setMax_interruption_duration:?];
    v8 = [(PMSmartPowerNapPredictor *)self trial_client];
    v9 = [v8 levelForFactor:@"maxInterruptionSessionDuration" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    [v9 doubleValue];
    [(PMSmartPowerNapPredictor *)self setCumulative_interruption_session_duration:?];
    v10 = [(PMSmartPowerNapPredictor *)self trial_client];
    v11 = [v10 levelForFactor:@"reentryDelay" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    -[PMSmartPowerNapPredictor setReentry_delay:](self, "setReentry_delay:", [v11 longValue]);
    v12 = [(PMSmartPowerNapPredictor *)self trial_client];
    v13 = [v12 levelForFactor:@"requeryDelta" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    -[PMSmartPowerNapPredictor setRequery_delta:](self, "setRequery_delta:", [v13 longValue]);
    v14 = [(PMSmartPowerNapPredictor *)self trial_client];
    v15 = [v14 levelForFactor:@"reentryCoolOffStart" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    -[PMSmartPowerNapPredictor setInterruption_cooloff_start:](self, "setInterruption_cooloff_start:", [v15 longValue]);
    v16 = [(PMSmartPowerNapPredictor *)self trial_client];
    v17 = [v16 levelForFactor:@"reentryCoolOffEnd" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    v31 = v17;
    -[PMSmartPowerNapPredictor setInterruption_cooloff_end:](self, "setInterruption_cooloff_end:", [v17 longValue]);
    v18 = [(PMSmartPowerNapPredictor *)self trial_client];
    v19 = [v18 levelForFactor:@"motionAlarmThreshold" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    -[PMSmartPowerNapPredictor setMotion_alarm_threshold:](self, "setMotion_alarm_threshold:", [v19 longValue]);
    v20 = [(PMSmartPowerNapPredictor *)self trial_client];
    v21 = [v20 levelForFactor:@"motionAlarmStartThreshold" withNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];

    -[PMSmartPowerNapPredictor setMotion_alarm_start_before:](self, "setMotion_alarm_start_before:", [v21 longValue]);
    v22 = qword_1000AB7D0;
    if (os_log_type_enabled(qword_1000AB7D0, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v22;
      v30 = v13;
      v23 = v9;
      v24 = v5;
      v25 = [(PMSmartPowerNapPredictor *)self max_interruptions];
      [(PMSmartPowerNapPredictor *)self max_interruption_duration];
      v27 = v26;
      [(PMSmartPowerNapPredictor *)self cumulative_interruption_session_duration];
      *buf = 67110144;
      v33 = v25;
      v5 = v24;
      v9 = v23;
      v34 = 2048;
      v35 = v27;
      v36 = 2048;
      v37 = v28;
      v38 = 1024;
      v39 = [(PMSmartPowerNapPredictor *)self reentry_delay];
      v40 = 1024;
      v41 = [(PMSmartPowerNapPredictor *)self requery_delta];
      v13 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "SmartPowerNap: updated Trial factors to num %d, duration %f, interruption session %f, reentry delay %d requery_delta %d", buf, 0x28u);
    }
  }
}

@end