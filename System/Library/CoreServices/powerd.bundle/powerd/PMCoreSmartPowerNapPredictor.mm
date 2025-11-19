@interface PMCoreSmartPowerNapPredictor
+ (id)sharedInstance;
- (BOOL)readStateFromDefaults;
- (PMCoreSmartPowerNapPredictor)initWithQueue:(id)a3;
- (id)CAEventForInactivityTooShortToQueryModel;
- (id)CAEventForModelHesitancy;
- (id)convertTimeToNumberFromDate:(id)a3;
- (id)getCustomizedDayOfWeekFromDate:(id)a3;
- (id)parseDeviceUsageFrequencyFromDiagnosis;
- (id)readEndTimeFromDefaults;
- (id)readStartTimeFromDefaults;
- (id)sleepTimeBucketOfDate:(id)a3 AtResolution:(unint64_t)a4;
- (void)alarmDidFire:(id)a3 error:(id)a4;
- (void)alarmDidRegister:(id)a3 error:(id)a4;
- (void)alarmDidUnregister:(id)a3 error:(id)a4;
- (void)armQueryTimer;
- (void)cancelModelQuery;
- (void)cancelModelRequery;
- (void)enterCoreSmartPowerNap;
- (void)evaluateCoreSmartPowerNap:(BOOL)a3;
- (void)evaluateEngagementWithPredictorOutput:(id)a3 allRemotesDevicesAway:(BOOL)a4;
- (void)evaluateInterruption:(BOOL)a3;
- (void)exitCoreSmartPowerNapWithReason:(id)a3;
- (void)handlePredictedEndTimer;
- (void)handleRemoteDeviceIsNear;
- (void)handleSessionCoolOffTimer;
- (void)handleUserInterruption:(BOOL)a3;
- (void)initMobileTimerMonitor;
- (void)initMotionAlarm;
- (void)initializePredictor;
- (void)initializeTrialClient;
- (void)logEndOfSessionWithReason:(id)a3;
- (void)logNotEngaging;
- (void)postCSPNDarwinNotification:(unint64_t)a3;
- (void)queryModelAndEngage;
- (void)registerMotionAlarm;
- (void)restoreState;
- (void)saveState:(BOOL)a3 withEndTime:(id)a4;
- (void)scheduleModelRequeryWithOutputReason:(int64_t)a3;
- (void)unregisterMotionAlarm;
- (void)updateInactiveState:(unint64_t)a3;
- (void)updateMotionState:(BOOL)a3;
- (void)updateQueryDelta:(unsigned int)a3;
- (void)updateTrialFactors;
@end

@implementation PMCoreSmartPowerNapPredictor

- (void)cancelModelQuery
{
  v3 = [(PMCoreSmartPowerNapPredictor *)self evaluation_timer];

  if (v3)
  {
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000653EC();
    }

    v4 = [(PMCoreSmartPowerNapPredictor *)self evaluation_timer];
    dispatch_source_cancel(v4);
  }
}

- (void)cancelModelRequery
{
  v3 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Cancelling timer to re query model", v6, 2u);
  }

  v4 = [(PMCoreSmartPowerNapPredictor *)self requery_timer];

  if (v4)
  {
    v5 = [(PMCoreSmartPowerNapPredictor *)self requery_timer];
    dispatch_source_cancel(v5);
  }
}

- (void)logNotEngaging
{
  [(PMCoreSmartPowerNapPredictor *)self delta_to_query];
  v4 = v3;
  v5 = [(PMCoreSmartPowerNapPredictor *)self inactivity_end];
  v6 = [(PMCoreSmartPowerNapPredictor *)self inactivity_start];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  if (v8 <= v4)
  {
    v9 = [(PMCoreSmartPowerNapPredictor *)self CAEventForInactivityTooShortToQueryModel];
    v16 = qword_1000AB9A8;
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap session did not engage because inactivity was shorter than delta-to-query", buf, 2u);
    }
  }

  else
  {
    v9 = [(PMCoreSmartPowerNapPredictor *)self CAEventForModelHesitancy];
    v10 = qword_1000AB9A8;
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
      [v12 confidenceValue];
      v14 = v13;
      v15 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
      *buf = 134218240;
      v20 = v14;
      v21 = 2048;
      v22 = [v15 confidenceLevel];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap session did not engage model confidence: %lf:%ld", buf, 0x16u);
    }
  }

  v18 = v9;
  v17 = v9;
  AnalyticsSendEventLazy();
}

- (id)CAEventForInactivityTooShortToQueryModel
{
  v3 = objc_opt_new();
  [v3 addEntriesFromDictionary:&off_1000A3098];
  current_experiment_ids = self->_current_experiment_ids;
  if (current_experiment_ids)
  {
    v5 = [(TRIExperimentIdentifiers *)current_experiment_ids experimentId];
    [v3 setObject:v5 forKeyedSubscript:@"trialDeploymentId"];

    v6 = [NSNumber numberWithInt:[(TRIExperimentIdentifiers *)self->_current_experiment_ids deploymentId]];
    v7 = [v6 stringValue];
    [v3 setObject:v7 forKeyedSubscript:@"trialExperimentId"];

    v8 = [(TRIExperimentIdentifiers *)self->_current_experiment_ids treatmentId];
    [v3 setObject:v8 forKeyedSubscript:@"trialTreatmentId"];
  }

  v9 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Inactivity was too short to even consult the model. Reporting very short inactivity event to CA: %@", &v11, 0xCu);
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_1000ACB30 != -1)
  {
    sub_100065078();
  }

  if (byte_1000ACB2C)
  {
    v2 = 0;
  }

  else
  {
    if (qword_1000ACB20 != -1)
    {
      sub_10006508C();
    }

    v2 = qword_1000ACB18;
  }

  return v2;
}

- (PMCoreSmartPowerNapPredictor)initWithQueue:(id)a3
{
  v4 = a3;
  if (qword_1000ACB30 != -1)
  {
    sub_100065078();
  }

  if ((byte_1000ACB2C & 1) != 0 || (v27.receiver = self, v27.super_class = PMCoreSmartPowerNapPredictor, v5 = [(PMCoreSmartPowerNapPredictor *)&v27 init], (self = v5) == 0))
  {
    v9 = 0;
  }

  else
  {
    [(PMCoreSmartPowerNapPredictor *)v5 setIn_coresmartpowernap:0];
    [(PMCoreSmartPowerNapPredictor *)self setSession_interrupted:0];
    [(PMCoreSmartPowerNapPredictor *)self setRequery_delta_init_value:450];
    [(PMCoreSmartPowerNapPredictor *)self setDelta_to_query:*&qword_1000AB130];
    [(PMCoreSmartPowerNapPredictor *)self setFeature_enabled:_os_feature_enabled_impl()];
    [(PMCoreSmartPowerNapPredictor *)self setQueue:v4];
    [(PMCoreSmartPowerNapPredictor *)self setSession_logged:0];
    v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.powerd.coresmartpowernap.state"];
    [(PMCoreSmartPowerNapPredictor *)self setDefaults:v6];

    if ([(PMCoreSmartPowerNapPredictor *)self feature_enabled])
    {
      if (MKBDeviceUnlockedSinceBoot())
      {
        [(PMCoreSmartPowerNapPredictor *)self initializePredictor];
        v7 = [(PMCoreSmartPowerNapPredictor *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000323E0;
        block[3] = &unk_100099210;
        v26 = self;
        dispatch_async(v7, block);

        v8 = v26;
      }

      else
      {
        v11 = qword_1000AB9A8;
        if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Device hasn't been unlocked since first boot", buf, 2u);
        }

        *buf = 0;
        v12 = [(PMCoreSmartPowerNapPredictor *)self queue];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1000323E8;
        handler[3] = &unk_1000991E8;
        v23 = self;
        notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", buf, v12, handler);

        v8 = v23;
      }
    }

    else
    {
      v10 = qword_1000AB9A8;
      if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Feature is disabled.", buf, 2u);
      }
    }

    if (&_DMIsMigrationNeeded && (DMIsMigrationNeeded() & 1) != 0)
    {
      v13 = qword_1000AB9A8;
      if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Defering Trial initializing due to pending data migration", buf, 2u);
      }

      v14 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 300000000000);
      v15 = [(PMCoreSmartPowerNapPredictor *)self queue];
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_1000324F4;
      v20 = &unk_100099210;
      v21 = self;
      dispatch_after(v14, v15, &v17);
    }

    else
    {
      [(PMCoreSmartPowerNapPredictor *)self initializeTrialClient];
    }

    [(PMCoreSmartPowerNapPredictor *)self initMotionAlarm:v17];
    [(PMCoreSmartPowerNapPredictor *)self initMobileTimerMonitor];
    [(PMCoreSmartPowerNapPredictor *)self setRequery_delta:[(PMCoreSmartPowerNapPredictor *)self requery_delta_init_value]];
    self = self;
    v9 = self;
  }

  return v9;
}

- (void)initializePredictor
{
  sub_1000325C8();
  if (objc_opt_class())
  {
    v3 = objc_alloc_init(sub_1000325C8());
    [(PMCoreSmartPowerNapPredictor *)self setInactivity_predictor:v3];

    if (_os_feature_enabled_impl())
    {
      v4 = [PMCoreSmartPowerNapLocationMonitor alloc];
      v6 = [(PMCoreSmartPowerNapPredictor *)self queue];
      v5 = [(PMCoreSmartPowerNapLocationMonitor *)v4 initWithQueue:v6];
      [(PMCoreSmartPowerNapPredictor *)self setLocation_monitor:v5];
    }
  }
}

- (void)restoreState
{
  if ([(PMCoreSmartPowerNapPredictor *)self readStateFromDefaults])
  {
    [(PMCoreSmartPowerNapPredictor *)self setIn_coresmartpowernap:1];
    v3 = [(PMCoreSmartPowerNapPredictor *)self readStartTimeFromDefaults];
    [(PMCoreSmartPowerNapPredictor *)self setFull_session_start_time:v3];

    v4 = [(PMCoreSmartPowerNapPredictor *)self readEndTimeFromDefaults];
    if (v4)
    {
      [(PMCoreSmartPowerNapPredictor *)self setPredicted_end_time:v4];
      v5 = +[NSDate date];
      v6 = [(PMCoreSmartPowerNapPredictor *)self predicted_end_time];
      v7 = [v5 compare:v6];

      if (v7 == 1)
      {
        v8 = qword_1000AB9A8;
        if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Past the predicted end.", buf, 2u);
        }

        [(PMCoreSmartPowerNapPredictor *)self handlePredictedEndTimer];
      }

      else
      {
        v9 = [(PMCoreSmartPowerNapPredictor *)self predicted_end_time];
        [v9 timeIntervalSinceDate:v5];
        v11 = v10;

        v12 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];

        if (v12)
        {
          v13 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
          dispatch_suspend(v13);
        }

        else
        {
          v14 = [(PMCoreSmartPowerNapPredictor *)self queue];
          v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v14);
          [(PMCoreSmartPowerNapPredictor *)self setEnd_session_timer:v15];

          v16 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100032A24;
          handler[3] = &unk_100099210;
          handler[4] = self;
          dispatch_source_set_event_handler(v16, handler);

          v13 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_100032A2C;
          v24[3] = &unk_100099210;
          v24[4] = self;
          dispatch_source_set_cancel_handler(v13, v24);
        }

        v17 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
        v18 = dispatch_walltime(0, (v11 * 1000000000.0));
        dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0);

        v19 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
        dispatch_resume(v19);

        [(PMCoreSmartPowerNapPredictor *)self updateNextFireTime:v11];
      }
    }
  }

  if ([(PMCoreSmartPowerNapPredictor *)self in_coresmartpowernap])
  {
    v20 = +[PMCoreSmartPowerNapService sharedInstance];
    [v20 updateState:1];
  }

  v21 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 2000000000);
  v22 = [(PMCoreSmartPowerNapPredictor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032A38;
  block[3] = &unk_100099210;
  block[4] = self;
  dispatch_after(v21, v22, block);
}

- (void)saveState:(BOOL)a3 withEndTime:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PMCoreSmartPowerNapPredictor *)self defaults];
  v8 = v7;
  if (v4)
  {
    [v7 setBool:1 forKey:@"state"];

    v9 = [(PMCoreSmartPowerNapPredictor *)self defaults];
    v10 = [(PMCoreSmartPowerNapPredictor *)self full_session_start_time];
    [v9 setObject:v10 forKey:@"startTime"];

    v11 = [(PMCoreSmartPowerNapPredictor *)self defaults];
    [v11 setObject:v6 forKey:@"predictedEndTime"];
  }

  else
  {
    [v7 removeObjectForKey:@"predictedEndTime"];

    v12 = [(PMCoreSmartPowerNapPredictor *)self defaults];
    [v12 removeObjectForKey:@"startTime"];

    v11 = [(PMCoreSmartPowerNapPredictor *)self defaults];
    [v11 setBool:0 forKey:@"state"];
  }

  v13 = [(PMCoreSmartPowerNapPredictor *)self defaults];
  [v13 synchronize];

  v14 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109378;
    v15[1] = v4;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: saved state %d with end time %@", v15, 0x12u);
  }
}

- (BOOL)readStateFromDefaults
{
  v3 = [(PMCoreSmartPowerNapPredictor *)self defaults];
  [v3 synchronize];

  v4 = [(PMCoreSmartPowerNapPredictor *)self defaults];
  v5 = [v4 valueForKey:@"state"];

  v6 = qword_1000AB9A8;
  v7 = os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = v6;
      v11[0] = 67109120;
      v11[1] = [v5 BOOLValue];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Read defaults state=%d", v11, 8u);
    }

    v9 = [v5 BOOLValue];
  }

  else
  {
    if (v7)
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: No previous defaults state saved", v11, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)readStartTimeFromDefaults
{
  v2 = [(PMCoreSmartPowerNapPredictor *)self defaults];
  v3 = [v2 objectForKey:@"startTime"];

  v4 = qword_1000AB9A8;
  v5 = os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Read defaults start time: %@", &v8, 0xCu);
    }

    v6 = v3;
  }

  else if (v5)
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: No previous start time found", &v8, 2u);
  }

  return v3;
}

- (id)readEndTimeFromDefaults
{
  v2 = [(PMCoreSmartPowerNapPredictor *)self defaults];
  v3 = [v2 objectForKey:@"predictedEndTime"];

  if (v3)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
    v5 = [v4 stringFromDate:v3];
    v6 = qword_1000AB9A8;
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Read defaults date=%{public}@\n", &v10, 0xCu);
    }

    v7 = v3;
  }

  else
  {
    v8 = qword_1000AB9A8;
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: No previous end time found", &v10, 2u);
    }
  }

  return v3;
}

- (void)evaluateInterruption:(BOOL)a3
{
  v3 = a3;
  if ([(PMCoreSmartPowerNapPredictor *)self in_coresmartpowernap])
  {
    if (v3)
    {
      [(PMCoreSmartPowerNapPredictor *)self setSession_interrupted:1];
      v5 = qword_1000AB9A8;
      if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Session Interruption started - now active/unlocked.", buf, 2u);
      }
    }
  }

  if ([(PMCoreSmartPowerNapPredictor *)self session_interrupted]&& !v3)
  {
    [(PMCoreSmartPowerNapPredictor *)self setSession_interrupted:0];
    v6 = qword_1000AB9A8;
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Session Interruption ended - now inactive/locked.", v7, 2u);
    }
  }
}

- (void)armQueryTimer
{
  v3 = [(PMCoreSmartPowerNapPredictor *)self evaluation_timer];

  if (v3)
  {
    v4 = [(PMCoreSmartPowerNapPredictor *)self evaluation_timer];
    dispatch_suspend(v4);
  }

  else
  {
    v5 = [(PMCoreSmartPowerNapPredictor *)self queue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);
    [(PMCoreSmartPowerNapPredictor *)self setEvaluation_timer:v6];

    v7 = [(PMCoreSmartPowerNapPredictor *)self evaluation_timer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000334F8;
    handler[3] = &unk_100099210;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);

    v4 = [(PMCoreSmartPowerNapPredictor *)self evaluation_timer];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100017788;
    v14[3] = &unk_100099210;
    v14[4] = self;
    dispatch_source_set_cancel_handler(v4, v14);
  }

  v8 = [(PMCoreSmartPowerNapPredictor *)self inactivity_predictor];

  if (v8)
  {
    v9 = qword_1000AB9A8;
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000650A0(v9, self);
    }

    v10 = [(PMCoreSmartPowerNapPredictor *)self evaluation_timer];
    [(PMCoreSmartPowerNapPredictor *)self delta_to_query];
    v12 = dispatch_walltime(0, 1000000000 * v11);
    dispatch_source_set_timer(v10, v12, 0xFFFFFFFFFFFFFFFFLL, 0);

    v13 = [(PMCoreSmartPowerNapPredictor *)self evaluation_timer];
    dispatch_resume(v13);

    [(PMCoreSmartPowerNapPredictor *)self delta_to_query];
    [(PMCoreSmartPowerNapPredictor *)self updateNextFireTime:?];
  }
}

- (void)evaluateCoreSmartPowerNap:(BOOL)a3
{
  if ([(PMCoreSmartPowerNapPredictor *)self feature_enabled]&& ([(PMCoreSmartPowerNapPredictor *)self inactivity_predictor], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if ([(PMCoreSmartPowerNapPredictor *)self user_inactive])
    {
      v6 = [(PMCoreSmartPowerNapPredictor *)self in_coresmartpowernap];
      v7 = os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEBUG);
      if (!v6)
      {
        if (v7)
        {
          sub_10006513C();
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
        [(PMCoreSmartPowerNapPredictor *)self setInactivity_start:v8];

        [(PMCoreSmartPowerNapPredictor *)self armQueryTimer];
        return;
      }

      if (v7)
      {
        sub_1000651B4();
      }
    }

    else if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000651F0();
    }
  }

  else if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10006522C();
  }
}

- (void)evaluateEngagementWithPredictorOutput:(id)a3 allRemotesDevicesAway:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(PMCoreSmartPowerNapPredictor *)self setPredictor_output:v6];
  v7 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];

  if (v7)
  {
    v8 = qword_1000AB9A8;
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
      v11 = [v10 confidenceLevel];
      v12 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
      [v12 confidenceValue];
      v14 = v13;
      v15 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
      [v15 predictedDuration];
      v17 = v16;
      v18 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
      *buf = 134218752;
      v55 = v11;
      v56 = 2048;
      v57 = v14;
      v58 = 2048;
      v59 = v17;
      v60 = 1024;
      v61 = [v18 outputReason];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: predictor_output confidencelevel: %ld, confidenceValue: %f, predictedDuration: %f, reason: %d", buf, 0x26u);
    }

    v19 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
    [v19 predictedDuration];
    v21 = v20;

    v22 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
    v23 = [v22 confidenceLevel];

    if (v23 != 2 || ((v24 = (v21 * 60.0 * 60.0), v24 >= 1) ? (v25 = !v4) : (v25 = 1), v25))
    {
      -[PMCoreSmartPowerNapPredictor scheduleModelRequeryWithOutputReason:](self, "scheduleModelRequeryWithOutputReason:", [v6 outputReason]);
    }

    else
    {
      v26 = [(PMCoreSmartPowerNapPredictor *)self full_session_start_time];
      v27 = [v26 dateByAddingTimeInterval:v24];
      [(PMCoreSmartPowerNapPredictor *)self setPredicted_end_time:v27];

      if (![(PMCoreSmartPowerNapPredictor *)self in_coresmartpowernap])
      {
        v28 = +[NSDate date];
        [(PMCoreSmartPowerNapPredictor *)self setFull_session_start_time:v28];

        [(PMCoreSmartPowerNapPredictor *)self enterCoreSmartPowerNap];
      }

      v29 = qword_1000AB9A8;
      if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
        v31 = [NSNumber numberWithLong:v24];
        v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 outputReason]);
        *buf = 138412546;
        v55 = v31;
        v56 = 2112;
        v57 = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Setting timer for duration %@, output reason: %@", buf, 0x16u);
      }

      v33 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];

      if (v33)
      {
        v34 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
        dispatch_suspend(v34);
      }

      else
      {
        v35 = [(PMCoreSmartPowerNapPredictor *)self queue];
        v36 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v35);
        [(PMCoreSmartPowerNapPredictor *)self setEnd_session_timer:v36];

        v37 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100033D4C;
        handler[3] = &unk_100099210;
        handler[4] = self;
        dispatch_source_set_event_handler(v37, handler);

        v34 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_100033D54;
        v52[3] = &unk_100099210;
        v52[4] = self;
        dispatch_source_set_cancel_handler(v34, v52);
      }

      v38 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
      v39 = dispatch_walltime(0, 1000000000 * v24);
      dispatch_source_set_timer(v38, v39, 0xFFFFFFFFFFFFFFFFLL, 0);

      v40 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
      dispatch_resume(v40);

      [(PMCoreSmartPowerNapPredictor *)self updateNextFireTime:v24];
      v41 = [(PMCoreSmartPowerNapPredictor *)self session_cooloff_timer];

      if (v41)
      {
        v42 = [(PMCoreSmartPowerNapPredictor *)self session_cooloff_timer];
        dispatch_suspend(v42);
      }

      else
      {
        v43 = [(PMCoreSmartPowerNapPredictor *)self queue];
        v44 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v43);
        [(PMCoreSmartPowerNapPredictor *)self setSession_cooloff_timer:v44];

        v45 = [(PMCoreSmartPowerNapPredictor *)self session_cooloff_timer];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_100033D60;
        v51[3] = &unk_100099210;
        v51[4] = self;
        dispatch_source_set_event_handler(v45, v51);

        v42 = [(PMCoreSmartPowerNapPredictor *)self session_cooloff_timer];
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_100033D68;
        v50[3] = &unk_100099210;
        v50[4] = self;
        dispatch_source_set_cancel_handler(v42, v50);
      }

      if (v24 >= 0x709)
      {
        v46 = (v24 - 1800);
        v47 = [(PMCoreSmartPowerNapPredictor *)self session_cooloff_timer];
        v48 = dispatch_walltime(0, (v46 * 1000000000.0));
        dispatch_source_set_timer(v47, v48, 0xFFFFFFFFFFFFFFFFLL, 0);

        v49 = [(PMCoreSmartPowerNapPredictor *)self session_cooloff_timer];
        dispatch_resume(v49);
      }
    }
  }
}

- (void)queryModelAndEngage
{
  v3 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: queryModelAndEngage", buf, 2u);
  }

  v4 = [(PMCoreSmartPowerNapPredictor *)self location_monitor];

  if (v4)
  {
    v5 = [(PMCoreSmartPowerNapPredictor *)self location_monitor];
    v6 = [v5 areAllRemoteDevicesAway];
  }

  else
  {
    v6 = 1;
  }

  [(PMCoreSmartPowerNapPredictor *)self raiseAssertionForEvaluation];
  v7 = [(PMCoreSmartPowerNapPredictor *)self inactivity_predictor];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100033EA0;
  v8[3] = &unk_100099380;
  v8[4] = self;
  v9 = v6;
  [v7 longInactivityPredictionResultWithOptions:0 withHandler:v8];

  [(PMCoreSmartPowerNapPredictor *)self releaseAssertion];
}

- (void)enterCoreSmartPowerNap
{
  v3 = +[NSDate date];
  [(PMCoreSmartPowerNapPredictor *)self setCurrent_session_start_time:v3];

  [(PMCoreSmartPowerNapPredictor *)self setIn_coresmartpowernap:1];
  v4 = +[PMCoreSmartPowerNapService sharedInstance];
  [v4 enterCoreSmartPowerNap];

  [(PMCoreSmartPowerNapPredictor *)self cancelModelRequery];
  [(PMCoreSmartPowerNapPredictor *)self setSession_end_reason:0];
  [(PMCoreSmartPowerNapPredictor *)self postCSPNDarwinNotification:2];
  v5 = [(PMCoreSmartPowerNapPredictor *)self predicted_end_time];
  [(PMCoreSmartPowerNapPredictor *)self saveState:1 withEndTime:v5];

  v6 = [(PMCoreSmartPowerNapPredictor *)self full_session_start_time];
  v7 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
  [v7 predictedDuration];
  v9 = [v6 dateByAddingTimeInterval:v8 * 3600.0];

  v10 = [v9 dateByAddingTimeInterval:{--[PMCoreSmartPowerNapPredictor motion_alarm_start_before](self, "motion_alarm_start_before")}];
  v11 = +[NSDate date];
  [v10 timeIntervalSinceDate:v11];
  v13 = v12;

  v14 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting a timer to fire after %llu seconds to register for motion alarm", buf, 0xCu);
  }

  v15 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 1000000000 * v13);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034230;
  block[3] = &unk_100099210;
  block[4] = self;
  dispatch_after(v15, &_dispatch_main_q, block);
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000652C8();
  }

  PLLogRegisteredEvent();
}

- (void)exitCoreSmartPowerNapWithReason:(id)a3
{
  v4 = a3;
  v5 = +[NSDate date];
  [(PMCoreSmartPowerNapPredictor *)self setFull_session_end_time:v5];

  [(PMCoreSmartPowerNapPredictor *)self setIn_coresmartpowernap:0];
  v6 = +[PMCoreSmartPowerNapService sharedInstance];
  [v6 exitCoreSmartPowerNap];

  [(PMCoreSmartPowerNapPredictor *)self setSession_end_reason:v4];
  [(PMCoreSmartPowerNapPredictor *)self setLast_session_end_reason:v4];
  v7 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(PMCoreSmartPowerNapPredictor *)self full_session_start_time];
    v10 = [(PMCoreSmartPowerNapPredictor *)self full_session_end_time];
    v11 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
    v12 = [v11 confidenceLevel];
    v13 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
    [v13 confidenceValue];
    v15 = v14;
    v16 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
    [v16 predictedDuration];
    v18 = v17;
    v19 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
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
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap session end: start %@ end %@ reason %@, predicted confidence level %ld, confidence value %lf, predicted duration %lf, outputReason %d", buf, 0x44u);
  }

  [(PMCoreSmartPowerNapPredictor *)self postCSPNDarwinNotification:0];
  [(PMCoreSmartPowerNapPredictor *)self saveState:0 withEndTime:0];
  [(PMCoreSmartPowerNapPredictor *)self unregisterMotionAlarm];
  v20 = [v4 isEqualToString:@"PredictedEndOfSession"];
  v21 = 0;
  if ((v20 & 1) == 0)
  {
    if ([v4 isEqualToString:@"UserInterrupted"])
    {
      v21 = 1;
    }

    else if ([v4 isEqualToString:@"RemoteDeviceIsNear"])
    {
      v21 = 2;
    }

    else if ([v4 isEqualToString:@"MotionDetected"])
    {
      v21 = 3;
    }

    else if ([v4 isEqualToString:@"MobileTimerFired"])
    {
      v21 = 5;
    }

    else
    {
      v21 = 4;
    }
  }

  v22 = [NSNumber numberWithUnsignedChar:v21, @"eventType", @"reason", &off_1000A2AC8];
  v25[1] = v22;
  v23 = [NSDictionary dictionaryWithObjects:v25 forKeys:&v24 count:2];

  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEBUG))
  {
    sub_100065348();
  }

  PLLogRegisteredEvent();
  [(PMCoreSmartPowerNapPredictor *)self logEndOfSessionWithReason:v4];
}

- (void)handlePredictedEndTimer
{
  if ([(PMCoreSmartPowerNapPredictor *)self in_coresmartpowernap])
  {
    v3 = [(PMCoreSmartPowerNapPredictor *)self full_session_start_time];

    if (!v3 && os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
    {
      sub_1000653B8();
    }

    [(PMCoreSmartPowerNapPredictor *)self exitCoreSmartPowerNapWithReason:@"PredictedEndOfSession"];
  }

  else
  {
    v4 = qword_1000AB9A8;
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Not in CoreSmartPowerNap at end of predicted inactivity", v5, 2u);
    }
  }
}

- (void)handleSessionCoolOffTimer
{
  v2 = [(PMCoreSmartPowerNapPredictor *)self in_coresmartpowernap];
  v3 = qword_1000AB9A8;
  v4 = os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Informing client of end inactivity cool off period", v6, 2u);
    }

    v5 = +[PMCoreSmartPowerNapService sharedInstance];
    [v5 updateState:2];
  }

  else if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Not in CoreSmartPowerNap at cool off timer", buf, 2u);
  }
}

- (void)scheduleModelRequeryWithOutputReason:(int64_t)a3
{
  v4 = [(PMCoreSmartPowerNapPredictor *)self requery_timer];

  if (v4)
  {
    v5 = [(PMCoreSmartPowerNapPredictor *)self requery_timer];
    dispatch_suspend(v5);
  }

  else
  {
    v6 = [(PMCoreSmartPowerNapPredictor *)self queue];
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);
    [(PMCoreSmartPowerNapPredictor *)self setRequery_timer:v7];

    v8 = [(PMCoreSmartPowerNapPredictor *)self requery_timer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100034A40;
    handler[3] = &unk_100099210;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);

    v5 = [(PMCoreSmartPowerNapPredictor *)self requery_timer];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100034A8C;
    v15[3] = &unk_100099210;
    v15[4] = self;
    dispatch_source_set_cancel_handler(v5, v15);
  }

  if ([(PMCoreSmartPowerNapPredictor *)self requery_delta]<= 3599)
  {
    [(PMCoreSmartPowerNapPredictor *)self setRequery_delta:2 * [(PMCoreSmartPowerNapPredictor *)self requery_delta]];
  }

  v9 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(PMCoreSmartPowerNapPredictor *)self requery_delta];
    *buf = 67109120;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Setting timer to re query in %u seconds", buf, 8u);
  }

  v12 = [(PMCoreSmartPowerNapPredictor *)self requery_timer];
  v13 = dispatch_walltime(0, 1000000000 * [(PMCoreSmartPowerNapPredictor *)self requery_delta]);
  dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);

  v14 = [(PMCoreSmartPowerNapPredictor *)self requery_timer];
  dispatch_resume(v14);

  [(PMCoreSmartPowerNapPredictor *)self updateNextFireTime:[(PMCoreSmartPowerNapPredictor *)self requery_delta]];
}

- (void)handleRemoteDeviceIsNear
{
  v3 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: remote device is near. Exit CoreSmartPowerNap", v4, 2u);
  }

  if ([(PMCoreSmartPowerNapPredictor *)self in_coresmartpowernap])
  {
    [(PMCoreSmartPowerNapPredictor *)self exitCoreSmartPowerNapWithReason:@"RemoteDeviceIsNear"];
  }
}

- (void)updateInactiveState:(unint64_t)a3
{
  if ([(PMCoreSmartPowerNapPredictor *)self user_inactive]!= a3)
  {
    [(PMCoreSmartPowerNapPredictor *)self setUser_inactive:a3];
    v5 = qword_1000AB9A8;
    v6 = os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT);
    if (a3 == 1)
    {
      if (v6)
      {
        *buf = 0;
        v7 = "Device is locked/inactive";
        v8 = buf;
        goto LABEL_7;
      }
    }

    else if (v6)
    {
      LOWORD(v10) = 0;
      v7 = "Device is unlocked/active";
      v8 = &v10;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }

    v9 = a3 != 1;
    [(PMCoreSmartPowerNapPredictor *)self handleUserInterruption:v9, v10];
    [(PMCoreSmartPowerNapPredictor *)self evaluateCoreSmartPowerNap:v9];
  }
}

- (void)initMobileTimerMonitor
{
  sub_100034E58();
  if (objc_opt_class())
  {
    sub_100034E58();
    v3 = [objc_opt_class() alarmStream];
    sub_100034F38(v3, v4, v5, v6, v7, v8, v9, v10);
    v11 = objc_opt_class();
    if (v11)
    {
      v19 = objc_alloc(sub_100034F38(v11, v12, v13, v14, v15, v16, v17, v18));
      v20 = [(PMCoreSmartPowerNapPredictor *)self queue];
      v21 = [v19 initWithIdentifier:@"com.apple.powerd.cspn.biomeAlarm" targetQueue:v20 waking:1];

      v22 = [v3 publisher];
      v23 = [v22 filterWithKeyPath:@"eventBody.eventType" value:&off_1000A2AE0];

      objc_initWeak(location, self);
      v24 = [v23 subscribeOn:v21];
      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_100035068;
      v30 = &unk_100099410;
      objc_copyWeak(&v32, location);
      v31 = self;
      v25 = [v24 sinkWithCompletion:&stru_100099B10 receiveInput:&v27];

      [(PMCoreSmartPowerNapPredictor *)self setSink:v25, v27, v28, v29, v30];
      objc_destroyWeak(&v32);
      objc_destroyWeak(location);

      v26 = qword_1000AB9A8;
      if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "registered for mobile timer updates", location, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
      {
        sub_100065428();
      }
    }
  }

  else if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
  {
    sub_100065428();
  }
}

- (void)updateMotionState:(BOOL)a3
{
  v3 = a3;
  v5 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Motion state changed %d. Exiting CoreSmartPowerNap", v6, 8u);
  }

  if ([(PMCoreSmartPowerNapPredictor *)self in_coresmartpowernap])
  {
    [(PMCoreSmartPowerNapPredictor *)self exitCoreSmartPowerNapWithReason:@"MotionDetected"];
  }
}

- (void)initMotionAlarm
{
  v3 = [[CMMotionAlarmManager alloc] initWithName:@"com.apple.powerd.cspn"];
  [(PMCoreSmartPowerNapPredictor *)self setMotion_alarm_manager:v3];

  v4 = [(PMCoreSmartPowerNapPredictor *)self motion_alarm_manager];
  [v4 setDelegate:self];

  [(PMCoreSmartPowerNapPredictor *)self setMotion_alarm_threshold:1800];
  [(PMCoreSmartPowerNapPredictor *)self setMotion_alarm_start_before:3600];

  [(PMCoreSmartPowerNapPredictor *)self setMotion_alarm_set:0];
}

- (void)registerMotionAlarm
{
  v3 = [(PMCoreSmartPowerNapPredictor *)self motion_alarm_manager];
  v6 = 0;
  v4 = [v3 registerAlarmWithName:@"CSPN motion alarm" type:6 duration:-[PMCoreSmartPowerNapPredictor motion_alarm_threshold](self repeats:"motion_alarm_threshold") error:{0, &v6}];
  v5 = v6;

  if ((v4 & 1) != 0 || !v5)
  {
    [(PMCoreSmartPowerNapPredictor *)self setMotion_alarm_set:1];
  }

  else if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10006545C();
  }
}

- (void)unregisterMotionAlarm
{
  v3 = [(PMCoreSmartPowerNapPredictor *)self motion_alarm_manager];
  v6 = 0;
  v4 = [v3 unregisterAlarmWithName:@"CSPN motion alarm" error:&v6];
  v5 = v6;

  if ((v4 & 1) != 0 || !v5)
  {
    [(PMCoreSmartPowerNapPredictor *)self setMotion_alarm_set:0];
  }

  else if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
  {
    sub_1000654C4();
  }
}

- (void)alarmDidRegister:(id)a3 error:(id)a4
{
  v4 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: motion alarm did register", v5, 2u);
  }
}

- (void)alarmDidUnregister:(id)a3 error:(id)a4
{
  v4 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: motion alarm did unregister", v5, 2u);
  }
}

- (void)alarmDidFire:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: motion alarm did fire alarm %@, error %@", buf, 0x16u);
  }

  v11 = 0;
  [v6 acknowledgeWithError:&v11];
  v9 = v11;
  v10 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Motion detected", buf, 2u);
  }

  [(PMCoreSmartPowerNapPredictor *)self updateMotionState:1];
}

- (void)handleUserInterruption:(BOOL)a3
{
  if (a3)
  {
    [(PMCoreSmartPowerNapPredictor *)self evaluateInterruption:1];
    v4 = +[NSDate date];
    [(PMCoreSmartPowerNapPredictor *)self setInactivity_end:v4];

    [(PMCoreSmartPowerNapPredictor *)self cancelModelQuery];
    [(PMCoreSmartPowerNapPredictor *)self cancelModelRequery];
    if ([(PMCoreSmartPowerNapPredictor *)self in_coresmartpowernap])
    {
      v5 = qword_1000AB9A8;
      if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: user interrupted. Exit CoreSmartPowerNap", buf, 2u);
      }

      [(PMCoreSmartPowerNapPredictor *)self exitCoreSmartPowerNapWithReason:@"UserInterrupted"];
      [(PMCoreSmartPowerNapPredictor *)self setSession_logged:1];
      [(PMCoreSmartPowerNapPredictor *)self setSession_end_reason:0];
    }

    else
    {
      v6 = [(PMCoreSmartPowerNapPredictor *)self inactivity_start];
      if (v6)
      {
        v11 = v6;
        v7 = [(PMCoreSmartPowerNapPredictor *)self inactivity_end];
        if (v7)
        {
          v8 = v7;
          v9 = [(PMCoreSmartPowerNapPredictor *)self last_session_end_reason];
          v10 = [v9 isEqualToString:@"MotionDetected"];

          if ((v10 & 1) == 0)
          {

            [(PMCoreSmartPowerNapPredictor *)self logNotEngaging];
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

    [(PMCoreSmartPowerNapPredictor *)self evaluateInterruption:?];
  }
}

- (void)postCSPNDarwinNotification:(unint64_t)a3
{
  if (!notify_register_check("com.apple.powerd.coresmartpowernap", &dword_1000ACB28))
  {
    notify_set_state(dword_1000ACB28, a3);

    notify_post("com.apple.powerd.coresmartpowernap");
  }
}

- (void)logEndOfSessionWithReason:(id)a3
{
  v5 = [(PMCoreSmartPowerNapPredictor *)self full_session_start_time];
  if (v5)
  {
    v14 = v5;
    v6 = [(PMCoreSmartPowerNapPredictor *)self full_session_end_time];
    if (v6)
    {
      v7 = v6;
      v8 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];

      if (v8)
      {
        v10 = a3 == @"UserInterrupted" || a3 == @"MotionDetected";
        v11 = [(PMCoreSmartPowerNapPredictor *)self CAEventForEngagedSessionWhereUserInterrupted:v10];
        v12 = qword_1000AB9A8;
        if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap end-of-session metrics %@", buf, 0xCu);
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

- (id)parseDeviceUsageFrequencyFromDiagnosis
{
  v2 = [(PMCoreSmartPowerNapPredictor *)self inactivity_predictor];
  v3 = [v2 deviceUsageDiagnosis];

  if ([v3 containsString:@"is NOT frequently"])
  {
    v4 = @"rare";
  }

  else if ([v3 containsString:@"is frequently"])
  {
    v4 = @"frequent";
  }

  else
  {
    v4 = @"unknown";
  }

  return v4;
}

- (id)sleepTimeBucketOfDate:(id)a3 AtResolution:(unint64_t)a4
{
  v5 = a3;
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 components:32 fromDate:v5];

  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", ([v7 hour] + 4) % 24 / a4);

  return v8;
}

- (id)getCustomizedDayOfWeekFromDate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = +[NSCalendar currentCalendar];
    v7 = [v6 components:544 fromDate:v5];
    if ([v7 hour] >= 21)
    {
      v8 = [v5 dateByAddingTimeInterval:86400.0];

      v9 = [v6 components:512 fromDate:v8];

      v5 = v8;
      v7 = v9;
    }

    v10 = [v7 weekday];
    if (v10 == 1)
    {
      v11 = 7;
    }

    else
    {
      v11 = v10 - 1;
    }

    v12 = [NSNumber numberWithInteger:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)convertTimeToNumberFromDate:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[NSCalendar currentCalendar];
    v5 = [v4 components:96 fromDate:v3];

    v6 = [v5 hour];
    *&v7 = ([v5 minute] / 60.0) + v6;
    v8 = [NSNumber numberWithFloat:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)CAEventForModelHesitancy
{
  v3 = [(PMCoreSmartPowerNapPredictor *)self inactivity_predictor];
  v4 = [v3 modelMetadata];

  v5 = objc_opt_new();
  v36[0] = @"eventIsSessionInt";
  v36[1] = @"sessionDurationHrFloat";
  v37[0] = &off_1000A2B10;
  v37[1] = &off_1000A2B10;
  v36[2] = @"deviceUsageFrequencyStr";
  v32 = [(PMCoreSmartPowerNapPredictor *)self parseDeviceUsageFrequencyFromDiagnosis];
  v37[2] = v32;
  v36[3] = @"entryConfidenceLevelEnum";
  v6 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 confidenceLevel]);
  v37[3] = v7;
  v36[4] = @"entryConfidenceValueInt";
  v8 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
  [v8 confidenceValue];
  v10 = [NSNumber numberWithDouble:round(v9 * 100.0)];
  v37[4] = v10;
  v36[5] = @"predictedDurationHrFloat";
  v11 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
  [v11 predictedDuration];
  v12 = [NSNumber numberWithDouble:?];
  v37[5] = v12;
  v36[6] = @"predictorTypeStr";
  v33 = v4;
  v13 = [v4 predictorType];
  v14 = v13;
  v15 = @"None";
  if (v13)
  {
    v15 = v13;
  }

  v37[6] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:7];
  [v5 addEntriesFromDictionary:v16];

  current_experiment_ids = self->_current_experiment_ids;
  if (current_experiment_ids)
  {
    v18 = [(TRIExperimentIdentifiers *)current_experiment_ids experimentId];
    [v5 setObject:v18 forKeyedSubscript:@"trialDeploymentId"];

    v19 = [NSNumber numberWithInt:[(TRIExperimentIdentifiers *)self->_current_experiment_ids deploymentId]];
    v20 = [v19 stringValue];
    [v5 setObject:v20 forKeyedSubscript:@"trialExperimentId"];

    v21 = [(TRIExperimentIdentifiers *)self->_current_experiment_ids treatmentId];
    [v5 setObject:v21 forKeyedSubscript:@"trialTreatmentId"];
  }

  v22 = [v5 objectForKeyedSubscript:@"entryConfidenceLevelEnum"];
  v23 = [v22 integerValue];

  if (v23 == 2 && os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
  {
    sub_1000657AC();
  }

  v24 = [v5 objectForKeyedSubscript:@"entryConfidenceValueInt"];
  if (([v24 intValue] & 0x80000000) != 0)
  {
  }

  else
  {
    v25 = [v5 objectForKeyedSubscript:@"entryConfidenceValueInt"];
    v26 = [v25 intValue];

    if (v26 < 101)
    {
      goto LABEL_14;
    }
  }

  v27 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
  {
    sub_1000657E0(v27, v5);
  }

LABEL_14:
  [v5 objectForKeyedSubscript:@"predictedDurationHrFloat"];

  v28 = [v5 objectForKeyedSubscript:@"predictorTypeStr"];
  v29 = [v28 isEqualToString:@"None"];

  if (v29 && os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10006588C();
  }

  v30 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Model was not confident to engage for this inactivity. Reporting hesitancy event to CA: %@", buf, 0xCu);
  }

  return v5;
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
    v7[2] = sub_1000369EC;
    v7[3] = &unk_100099460;
    objc_copyWeak(&v8, &location);
    v6 = [(TRIClient *)v5 addUpdateHandlerForNamespaceName:@"COREOS_PREDICTION_INACTIVITY" usingBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)updateTrialFactors
{
  v3 = [(PMCoreSmartPowerNapPredictor *)self trial_client];
  [v3 refresh];

  v5 = [(PMCoreSmartPowerNapPredictor *)self trial_client];
  v4 = [v5 experimentIdentifiersWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [(PMCoreSmartPowerNapPredictor *)self setCurrent_experiment_ids:v4];
}

- (void)updateQueryDelta:(unsigned int)a3
{
  v5 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating query delta to %u seconds", v6, 8u);
  }

  [(PMCoreSmartPowerNapPredictor *)self setDelta_to_query:a3];
}

@end