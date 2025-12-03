@interface PMCoreSmartPowerNapPredictor
+ (id)sharedInstance;
- (BOOL)readStateFromDefaults;
- (PMCoreSmartPowerNapPredictor)initWithQueue:(id)queue;
- (id)CAEventForInactivityTooShortToQueryModel;
- (id)CAEventForModelHesitancy;
- (id)convertTimeToNumberFromDate:(id)date;
- (id)getCustomizedDayOfWeekFromDate:(id)date;
- (id)parseDeviceUsageFrequencyFromDiagnosis;
- (id)readEndTimeFromDefaults;
- (id)readStartTimeFromDefaults;
- (id)sleepTimeBucketOfDate:(id)date AtResolution:(unint64_t)resolution;
- (void)alarmDidFire:(id)fire error:(id)error;
- (void)alarmDidRegister:(id)register error:(id)error;
- (void)alarmDidUnregister:(id)unregister error:(id)error;
- (void)armQueryTimer;
- (void)cancelModelQuery;
- (void)cancelModelRequery;
- (void)enterCoreSmartPowerNap;
- (void)evaluateCoreSmartPowerNap:(BOOL)nap;
- (void)evaluateEngagementWithPredictorOutput:(id)output allRemotesDevicesAway:(BOOL)away;
- (void)evaluateInterruption:(BOOL)interruption;
- (void)exitCoreSmartPowerNapWithReason:(id)reason;
- (void)handlePredictedEndTimer;
- (void)handleRemoteDeviceIsNear;
- (void)handleSessionCoolOffTimer;
- (void)handleUserInterruption:(BOOL)interruption;
- (void)initMobileTimerMonitor;
- (void)initMotionAlarm;
- (void)initializePredictor;
- (void)initializeTrialClient;
- (void)logEndOfSessionWithReason:(id)reason;
- (void)logNotEngaging;
- (void)postCSPNDarwinNotification:(unint64_t)notification;
- (void)queryModelAndEngage;
- (void)registerMotionAlarm;
- (void)restoreState;
- (void)saveState:(BOOL)state withEndTime:(id)time;
- (void)scheduleModelRequeryWithOutputReason:(int64_t)reason;
- (void)unregisterMotionAlarm;
- (void)updateInactiveState:(unint64_t)state;
- (void)updateMotionState:(BOOL)state;
- (void)updateQueryDelta:(unsigned int)delta;
- (void)updateTrialFactors;
@end

@implementation PMCoreSmartPowerNapPredictor

- (void)cancelModelQuery
{
  evaluation_timer = [(PMCoreSmartPowerNapPredictor *)self evaluation_timer];

  if (evaluation_timer)
  {
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000653EC();
    }

    evaluation_timer2 = [(PMCoreSmartPowerNapPredictor *)self evaluation_timer];
    dispatch_source_cancel(evaluation_timer2);
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

  requery_timer = [(PMCoreSmartPowerNapPredictor *)self requery_timer];

  if (requery_timer)
  {
    requery_timer2 = [(PMCoreSmartPowerNapPredictor *)self requery_timer];
    dispatch_source_cancel(requery_timer2);
  }
}

- (void)logNotEngaging
{
  [(PMCoreSmartPowerNapPredictor *)self delta_to_query];
  v4 = v3;
  inactivity_end = [(PMCoreSmartPowerNapPredictor *)self inactivity_end];
  inactivity_start = [(PMCoreSmartPowerNapPredictor *)self inactivity_start];
  [inactivity_end timeIntervalSinceDate:inactivity_start];
  v8 = v7;

  if (v8 <= v4)
  {
    cAEventForInactivityTooShortToQueryModel = [(PMCoreSmartPowerNapPredictor *)self CAEventForInactivityTooShortToQueryModel];
    v16 = qword_1000AB9A8;
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap session did not engage because inactivity was shorter than delta-to-query", buf, 2u);
    }
  }

  else
  {
    cAEventForInactivityTooShortToQueryModel = [(PMCoreSmartPowerNapPredictor *)self CAEventForModelHesitancy];
    v10 = qword_1000AB9A8;
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      predictor_output = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
      [predictor_output confidenceValue];
      v14 = v13;
      predictor_output2 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
      *buf = 134218240;
      v20 = v14;
      v21 = 2048;
      confidenceLevel = [predictor_output2 confidenceLevel];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap session did not engage model confidence: %lf:%ld", buf, 0x16u);
    }
  }

  v18 = cAEventForInactivityTooShortToQueryModel;
  v17 = cAEventForInactivityTooShortToQueryModel;
  AnalyticsSendEventLazy();
}

- (id)CAEventForInactivityTooShortToQueryModel
{
  v3 = objc_opt_new();
  [v3 addEntriesFromDictionary:&off_1000A3098];
  current_experiment_ids = self->_current_experiment_ids;
  if (current_experiment_ids)
  {
    experimentId = [(TRIExperimentIdentifiers *)current_experiment_ids experimentId];
    [v3 setObject:experimentId forKeyedSubscript:@"trialDeploymentId"];

    v6 = [NSNumber numberWithInt:[(TRIExperimentIdentifiers *)self->_current_experiment_ids deploymentId]];
    stringValue = [v6 stringValue];
    [v3 setObject:stringValue forKeyedSubscript:@"trialExperimentId"];

    treatmentId = [(TRIExperimentIdentifiers *)self->_current_experiment_ids treatmentId];
    [v3 setObject:treatmentId forKeyedSubscript:@"trialTreatmentId"];
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

- (PMCoreSmartPowerNapPredictor)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (qword_1000ACB30 != -1)
  {
    sub_100065078();
  }

  if ((byte_1000ACB2C & 1) != 0 || (v27.receiver = self, v27.super_class = PMCoreSmartPowerNapPredictor, v5 = [(PMCoreSmartPowerNapPredictor *)&v27 init], (self = v5) == 0))
  {
    selfCopy4 = 0;
  }

  else
  {
    [(PMCoreSmartPowerNapPredictor *)v5 setIn_coresmartpowernap:0];
    [(PMCoreSmartPowerNapPredictor *)self setSession_interrupted:0];
    [(PMCoreSmartPowerNapPredictor *)self setRequery_delta_init_value:450];
    [(PMCoreSmartPowerNapPredictor *)self setDelta_to_query:*&qword_1000AB130];
    [(PMCoreSmartPowerNapPredictor *)self setFeature_enabled:_os_feature_enabled_impl()];
    [(PMCoreSmartPowerNapPredictor *)self setQueue:queueCopy];
    [(PMCoreSmartPowerNapPredictor *)self setSession_logged:0];
    v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.powerd.coresmartpowernap.state"];
    [(PMCoreSmartPowerNapPredictor *)self setDefaults:v6];

    if ([(PMCoreSmartPowerNapPredictor *)self feature_enabled])
    {
      if (MKBDeviceUnlockedSinceBoot())
      {
        [(PMCoreSmartPowerNapPredictor *)self initializePredictor];
        queue = [(PMCoreSmartPowerNapPredictor *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000323E0;
        block[3] = &unk_100099210;
        selfCopy = self;
        dispatch_async(queue, block);

        v8 = selfCopy;
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
        queue2 = [(PMCoreSmartPowerNapPredictor *)self queue];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1000323E8;
        handler[3] = &unk_1000991E8;
        selfCopy2 = self;
        notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", buf, queue2, handler);

        v8 = selfCopy2;
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
      queue3 = [(PMCoreSmartPowerNapPredictor *)self queue];
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_1000324F4;
      v20 = &unk_100099210;
      selfCopy3 = self;
      dispatch_after(v14, queue3, &v17);
    }

    else
    {
      [(PMCoreSmartPowerNapPredictor *)self initializeTrialClient];
    }

    [(PMCoreSmartPowerNapPredictor *)self initMotionAlarm:v17];
    [(PMCoreSmartPowerNapPredictor *)self initMobileTimerMonitor];
    [(PMCoreSmartPowerNapPredictor *)self setRequery_delta:[(PMCoreSmartPowerNapPredictor *)self requery_delta_init_value]];
    self = self;
    selfCopy4 = self;
  }

  return selfCopy4;
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
      queue = [(PMCoreSmartPowerNapPredictor *)self queue];
      v5 = [(PMCoreSmartPowerNapLocationMonitor *)v4 initWithQueue:queue];
      [(PMCoreSmartPowerNapPredictor *)self setLocation_monitor:v5];
    }
  }
}

- (void)restoreState
{
  if ([(PMCoreSmartPowerNapPredictor *)self readStateFromDefaults])
  {
    [(PMCoreSmartPowerNapPredictor *)self setIn_coresmartpowernap:1];
    readStartTimeFromDefaults = [(PMCoreSmartPowerNapPredictor *)self readStartTimeFromDefaults];
    [(PMCoreSmartPowerNapPredictor *)self setFull_session_start_time:readStartTimeFromDefaults];

    readEndTimeFromDefaults = [(PMCoreSmartPowerNapPredictor *)self readEndTimeFromDefaults];
    if (readEndTimeFromDefaults)
    {
      [(PMCoreSmartPowerNapPredictor *)self setPredicted_end_time:readEndTimeFromDefaults];
      v5 = +[NSDate date];
      predicted_end_time = [(PMCoreSmartPowerNapPredictor *)self predicted_end_time];
      v7 = [v5 compare:predicted_end_time];

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
        predicted_end_time2 = [(PMCoreSmartPowerNapPredictor *)self predicted_end_time];
        [predicted_end_time2 timeIntervalSinceDate:v5];
        v11 = v10;

        end_session_timer = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];

        if (end_session_timer)
        {
          end_session_timer2 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
          dispatch_suspend(end_session_timer2);
        }

        else
        {
          queue = [(PMCoreSmartPowerNapPredictor *)self queue];
          v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
          [(PMCoreSmartPowerNapPredictor *)self setEnd_session_timer:v15];

          end_session_timer3 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100032A24;
          handler[3] = &unk_100099210;
          handler[4] = self;
          dispatch_source_set_event_handler(end_session_timer3, handler);

          end_session_timer2 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_100032A2C;
          v24[3] = &unk_100099210;
          v24[4] = self;
          dispatch_source_set_cancel_handler(end_session_timer2, v24);
        }

        end_session_timer4 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
        v18 = dispatch_walltime(0, (v11 * 1000000000.0));
        dispatch_source_set_timer(end_session_timer4, v18, 0xFFFFFFFFFFFFFFFFLL, 0);

        end_session_timer5 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
        dispatch_resume(end_session_timer5);

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
  queue2 = [(PMCoreSmartPowerNapPredictor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032A38;
  block[3] = &unk_100099210;
  block[4] = self;
  dispatch_after(v21, queue2, block);
}

- (void)saveState:(BOOL)state withEndTime:(id)time
{
  stateCopy = state;
  timeCopy = time;
  defaults = [(PMCoreSmartPowerNapPredictor *)self defaults];
  v8 = defaults;
  if (stateCopy)
  {
    [defaults setBool:1 forKey:@"state"];

    defaults2 = [(PMCoreSmartPowerNapPredictor *)self defaults];
    full_session_start_time = [(PMCoreSmartPowerNapPredictor *)self full_session_start_time];
    [defaults2 setObject:full_session_start_time forKey:@"startTime"];

    defaults3 = [(PMCoreSmartPowerNapPredictor *)self defaults];
    [defaults3 setObject:timeCopy forKey:@"predictedEndTime"];
  }

  else
  {
    [defaults removeObjectForKey:@"predictedEndTime"];

    defaults4 = [(PMCoreSmartPowerNapPredictor *)self defaults];
    [defaults4 removeObjectForKey:@"startTime"];

    defaults3 = [(PMCoreSmartPowerNapPredictor *)self defaults];
    [defaults3 setBool:0 forKey:@"state"];
  }

  defaults5 = [(PMCoreSmartPowerNapPredictor *)self defaults];
  [defaults5 synchronize];

  v14 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109378;
    v15[1] = stateCopy;
    v16 = 2112;
    v17 = timeCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: saved state %d with end time %@", v15, 0x12u);
  }
}

- (BOOL)readStateFromDefaults
{
  defaults = [(PMCoreSmartPowerNapPredictor *)self defaults];
  [defaults synchronize];

  defaults2 = [(PMCoreSmartPowerNapPredictor *)self defaults];
  v5 = [defaults2 valueForKey:@"state"];

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

    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    if (v7)
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: No previous defaults state saved", v11, 2u);
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)readStartTimeFromDefaults
{
  defaults = [(PMCoreSmartPowerNapPredictor *)self defaults];
  v3 = [defaults objectForKey:@"startTime"];

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
  defaults = [(PMCoreSmartPowerNapPredictor *)self defaults];
  v3 = [defaults objectForKey:@"predictedEndTime"];

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

- (void)evaluateInterruption:(BOOL)interruption
{
  interruptionCopy = interruption;
  if ([(PMCoreSmartPowerNapPredictor *)self in_coresmartpowernap])
  {
    if (interruptionCopy)
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

  if ([(PMCoreSmartPowerNapPredictor *)self session_interrupted]&& !interruptionCopy)
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
  evaluation_timer = [(PMCoreSmartPowerNapPredictor *)self evaluation_timer];

  if (evaluation_timer)
  {
    evaluation_timer2 = [(PMCoreSmartPowerNapPredictor *)self evaluation_timer];
    dispatch_suspend(evaluation_timer2);
  }

  else
  {
    queue = [(PMCoreSmartPowerNapPredictor *)self queue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
    [(PMCoreSmartPowerNapPredictor *)self setEvaluation_timer:v6];

    evaluation_timer3 = [(PMCoreSmartPowerNapPredictor *)self evaluation_timer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000334F8;
    handler[3] = &unk_100099210;
    handler[4] = self;
    dispatch_source_set_event_handler(evaluation_timer3, handler);

    evaluation_timer2 = [(PMCoreSmartPowerNapPredictor *)self evaluation_timer];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100017788;
    v14[3] = &unk_100099210;
    v14[4] = self;
    dispatch_source_set_cancel_handler(evaluation_timer2, v14);
  }

  inactivity_predictor = [(PMCoreSmartPowerNapPredictor *)self inactivity_predictor];

  if (inactivity_predictor)
  {
    v9 = qword_1000AB9A8;
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000650A0(v9, self);
    }

    evaluation_timer4 = [(PMCoreSmartPowerNapPredictor *)self evaluation_timer];
    [(PMCoreSmartPowerNapPredictor *)self delta_to_query];
    v12 = dispatch_walltime(0, 1000000000 * v11);
    dispatch_source_set_timer(evaluation_timer4, v12, 0xFFFFFFFFFFFFFFFFLL, 0);

    evaluation_timer5 = [(PMCoreSmartPowerNapPredictor *)self evaluation_timer];
    dispatch_resume(evaluation_timer5);

    [(PMCoreSmartPowerNapPredictor *)self delta_to_query];
    [(PMCoreSmartPowerNapPredictor *)self updateNextFireTime:?];
  }
}

- (void)evaluateCoreSmartPowerNap:(BOOL)nap
{
  if ([(PMCoreSmartPowerNapPredictor *)self feature_enabled]&& ([(PMCoreSmartPowerNapPredictor *)self inactivity_predictor], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if ([(PMCoreSmartPowerNapPredictor *)self user_inactive])
    {
      in_coresmartpowernap = [(PMCoreSmartPowerNapPredictor *)self in_coresmartpowernap];
      v7 = os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEBUG);
      if (!in_coresmartpowernap)
      {
        if (v7)
        {
          sub_10006513C();
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

- (void)evaluateEngagementWithPredictorOutput:(id)output allRemotesDevicesAway:(BOOL)away
{
  awayCopy = away;
  outputCopy = output;
  [(PMCoreSmartPowerNapPredictor *)self setPredictor_output:outputCopy];
  predictor_output = [(PMCoreSmartPowerNapPredictor *)self predictor_output];

  if (predictor_output)
  {
    v8 = qword_1000AB9A8;
    if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      predictor_output2 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
      confidenceLevel = [predictor_output2 confidenceLevel];
      predictor_output3 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
      [predictor_output3 confidenceValue];
      v14 = v13;
      predictor_output4 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
      [predictor_output4 predictedDuration];
      v17 = v16;
      predictor_output5 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
      *buf = 134218752;
      v55 = confidenceLevel;
      v56 = 2048;
      v57 = v14;
      v58 = 2048;
      v59 = v17;
      v60 = 1024;
      outputReason = [predictor_output5 outputReason];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: predictor_output confidencelevel: %ld, confidenceValue: %f, predictedDuration: %f, reason: %d", buf, 0x26u);
    }

    predictor_output6 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
    [predictor_output6 predictedDuration];
    v21 = v20;

    predictor_output7 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
    confidenceLevel2 = [predictor_output7 confidenceLevel];

    if (confidenceLevel2 != 2 || ((v24 = (v21 * 60.0 * 60.0), v24 >= 1) ? (v25 = !awayCopy) : (v25 = 1), v25))
    {
      -[PMCoreSmartPowerNapPredictor scheduleModelRequeryWithOutputReason:](self, "scheduleModelRequeryWithOutputReason:", [outputCopy outputReason]);
    }

    else
    {
      full_session_start_time = [(PMCoreSmartPowerNapPredictor *)self full_session_start_time];
      v27 = [full_session_start_time dateByAddingTimeInterval:v24];
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
        v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [outputCopy outputReason]);
        *buf = 138412546;
        v55 = v31;
        v56 = 2112;
        v57 = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Setting timer for duration %@, output reason: %@", buf, 0x16u);
      }

      end_session_timer = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];

      if (end_session_timer)
      {
        end_session_timer2 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
        dispatch_suspend(end_session_timer2);
      }

      else
      {
        queue = [(PMCoreSmartPowerNapPredictor *)self queue];
        v36 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
        [(PMCoreSmartPowerNapPredictor *)self setEnd_session_timer:v36];

        end_session_timer3 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100033D4C;
        handler[3] = &unk_100099210;
        handler[4] = self;
        dispatch_source_set_event_handler(end_session_timer3, handler);

        end_session_timer2 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_100033D54;
        v52[3] = &unk_100099210;
        v52[4] = self;
        dispatch_source_set_cancel_handler(end_session_timer2, v52);
      }

      end_session_timer4 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
      v39 = dispatch_walltime(0, 1000000000 * v24);
      dispatch_source_set_timer(end_session_timer4, v39, 0xFFFFFFFFFFFFFFFFLL, 0);

      end_session_timer5 = [(PMCoreSmartPowerNapPredictor *)self end_session_timer];
      dispatch_resume(end_session_timer5);

      [(PMCoreSmartPowerNapPredictor *)self updateNextFireTime:v24];
      session_cooloff_timer = [(PMCoreSmartPowerNapPredictor *)self session_cooloff_timer];

      if (session_cooloff_timer)
      {
        session_cooloff_timer2 = [(PMCoreSmartPowerNapPredictor *)self session_cooloff_timer];
        dispatch_suspend(session_cooloff_timer2);
      }

      else
      {
        queue2 = [(PMCoreSmartPowerNapPredictor *)self queue];
        v44 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue2);
        [(PMCoreSmartPowerNapPredictor *)self setSession_cooloff_timer:v44];

        session_cooloff_timer3 = [(PMCoreSmartPowerNapPredictor *)self session_cooloff_timer];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_100033D60;
        v51[3] = &unk_100099210;
        v51[4] = self;
        dispatch_source_set_event_handler(session_cooloff_timer3, v51);

        session_cooloff_timer2 = [(PMCoreSmartPowerNapPredictor *)self session_cooloff_timer];
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_100033D68;
        v50[3] = &unk_100099210;
        v50[4] = self;
        dispatch_source_set_cancel_handler(session_cooloff_timer2, v50);
      }

      if (v24 >= 0x709)
      {
        v46 = (v24 - 1800);
        session_cooloff_timer4 = [(PMCoreSmartPowerNapPredictor *)self session_cooloff_timer];
        v48 = dispatch_walltime(0, (v46 * 1000000000.0));
        dispatch_source_set_timer(session_cooloff_timer4, v48, 0xFFFFFFFFFFFFFFFFLL, 0);

        session_cooloff_timer5 = [(PMCoreSmartPowerNapPredictor *)self session_cooloff_timer];
        dispatch_resume(session_cooloff_timer5);
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

  location_monitor = [(PMCoreSmartPowerNapPredictor *)self location_monitor];

  if (location_monitor)
  {
    location_monitor2 = [(PMCoreSmartPowerNapPredictor *)self location_monitor];
    areAllRemoteDevicesAway = [location_monitor2 areAllRemoteDevicesAway];
  }

  else
  {
    areAllRemoteDevicesAway = 1;
  }

  [(PMCoreSmartPowerNapPredictor *)self raiseAssertionForEvaluation];
  inactivity_predictor = [(PMCoreSmartPowerNapPredictor *)self inactivity_predictor];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100033EA0;
  v8[3] = &unk_100099380;
  v8[4] = self;
  v9 = areAllRemoteDevicesAway;
  [inactivity_predictor longInactivityPredictionResultWithOptions:0 withHandler:v8];

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
  predicted_end_time = [(PMCoreSmartPowerNapPredictor *)self predicted_end_time];
  [(PMCoreSmartPowerNapPredictor *)self saveState:1 withEndTime:predicted_end_time];

  full_session_start_time = [(PMCoreSmartPowerNapPredictor *)self full_session_start_time];
  predictor_output = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
  [predictor_output predictedDuration];
  v9 = [full_session_start_time dateByAddingTimeInterval:v8 * 3600.0];

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

- (void)exitCoreSmartPowerNapWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = +[NSDate date];
  [(PMCoreSmartPowerNapPredictor *)self setFull_session_end_time:v5];

  [(PMCoreSmartPowerNapPredictor *)self setIn_coresmartpowernap:0];
  v6 = +[PMCoreSmartPowerNapService sharedInstance];
  [v6 exitCoreSmartPowerNap];

  [(PMCoreSmartPowerNapPredictor *)self setSession_end_reason:reasonCopy];
  [(PMCoreSmartPowerNapPredictor *)self setLast_session_end_reason:reasonCopy];
  v7 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    full_session_start_time = [(PMCoreSmartPowerNapPredictor *)self full_session_start_time];
    full_session_end_time = [(PMCoreSmartPowerNapPredictor *)self full_session_end_time];
    predictor_output = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
    confidenceLevel = [predictor_output confidenceLevel];
    predictor_output2 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
    [predictor_output2 confidenceValue];
    v15 = v14;
    predictor_output3 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
    [predictor_output3 predictedDuration];
    v18 = v17;
    predictor_output4 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
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
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap session end: start %@ end %@ reason %@, predicted confidence level %ld, confidence value %lf, predicted duration %lf, outputReason %d", buf, 0x44u);
  }

  [(PMCoreSmartPowerNapPredictor *)self postCSPNDarwinNotification:0];
  [(PMCoreSmartPowerNapPredictor *)self saveState:0 withEndTime:0];
  [(PMCoreSmartPowerNapPredictor *)self unregisterMotionAlarm];
  v20 = [reasonCopy isEqualToString:@"PredictedEndOfSession"];
  v21 = 0;
  if ((v20 & 1) == 0)
  {
    if ([reasonCopy isEqualToString:@"UserInterrupted"])
    {
      v21 = 1;
    }

    else if ([reasonCopy isEqualToString:@"RemoteDeviceIsNear"])
    {
      v21 = 2;
    }

    else if ([reasonCopy isEqualToString:@"MotionDetected"])
    {
      v21 = 3;
    }

    else if ([reasonCopy isEqualToString:@"MobileTimerFired"])
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
  [(PMCoreSmartPowerNapPredictor *)self logEndOfSessionWithReason:reasonCopy];
}

- (void)handlePredictedEndTimer
{
  if ([(PMCoreSmartPowerNapPredictor *)self in_coresmartpowernap])
  {
    full_session_start_time = [(PMCoreSmartPowerNapPredictor *)self full_session_start_time];

    if (!full_session_start_time && os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
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
  in_coresmartpowernap = [(PMCoreSmartPowerNapPredictor *)self in_coresmartpowernap];
  v3 = qword_1000AB9A8;
  v4 = os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT);
  if (in_coresmartpowernap)
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

- (void)scheduleModelRequeryWithOutputReason:(int64_t)reason
{
  requery_timer = [(PMCoreSmartPowerNapPredictor *)self requery_timer];

  if (requery_timer)
  {
    requery_timer2 = [(PMCoreSmartPowerNapPredictor *)self requery_timer];
    dispatch_suspend(requery_timer2);
  }

  else
  {
    queue = [(PMCoreSmartPowerNapPredictor *)self queue];
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
    [(PMCoreSmartPowerNapPredictor *)self setRequery_timer:v7];

    requery_timer3 = [(PMCoreSmartPowerNapPredictor *)self requery_timer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100034A40;
    handler[3] = &unk_100099210;
    handler[4] = self;
    dispatch_source_set_event_handler(requery_timer3, handler);

    requery_timer2 = [(PMCoreSmartPowerNapPredictor *)self requery_timer];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100034A8C;
    v15[3] = &unk_100099210;
    v15[4] = self;
    dispatch_source_set_cancel_handler(requery_timer2, v15);
  }

  if ([(PMCoreSmartPowerNapPredictor *)self requery_delta]<= 3599)
  {
    [(PMCoreSmartPowerNapPredictor *)self setRequery_delta:2 * [(PMCoreSmartPowerNapPredictor *)self requery_delta]];
  }

  v9 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    requery_delta = [(PMCoreSmartPowerNapPredictor *)self requery_delta];
    *buf = 67109120;
    v18 = requery_delta;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Setting timer to re query in %u seconds", buf, 8u);
  }

  requery_timer4 = [(PMCoreSmartPowerNapPredictor *)self requery_timer];
  v13 = dispatch_walltime(0, 1000000000 * [(PMCoreSmartPowerNapPredictor *)self requery_delta]);
  dispatch_source_set_timer(requery_timer4, v13, 0xFFFFFFFFFFFFFFFFLL, 0);

  requery_timer5 = [(PMCoreSmartPowerNapPredictor *)self requery_timer];
  dispatch_resume(requery_timer5);

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

- (void)updateInactiveState:(unint64_t)state
{
  if ([(PMCoreSmartPowerNapPredictor *)self user_inactive]!= state)
  {
    [(PMCoreSmartPowerNapPredictor *)self setUser_inactive:state];
    v5 = qword_1000AB9A8;
    v6 = os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT);
    if (state == 1)
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

    v9 = state != 1;
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
    alarmStream = [objc_opt_class() alarmStream];
    sub_100034F38(alarmStream, v4, v5, v6, v7, v8, v9, v10);
    v11 = objc_opt_class();
    if (v11)
    {
      v19 = objc_alloc(sub_100034F38(v11, v12, v13, v14, v15, v16, v17, v18));
      queue = [(PMCoreSmartPowerNapPredictor *)self queue];
      v21 = [v19 initWithIdentifier:@"com.apple.powerd.cspn.biomeAlarm" targetQueue:queue waking:1];

      publisher = [alarmStream publisher];
      v23 = [publisher filterWithKeyPath:@"eventBody.eventType" value:&off_1000A2AE0];

      objc_initWeak(location, self);
      v24 = [v23 subscribeOn:v21];
      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_100035068;
      v30 = &unk_100099410;
      objc_copyWeak(&v32, location);
      selfCopy = self;
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

- (void)updateMotionState:(BOOL)state
{
  stateCopy = state;
  v5 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = stateCopy;
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

  motion_alarm_manager = [(PMCoreSmartPowerNapPredictor *)self motion_alarm_manager];
  [motion_alarm_manager setDelegate:self];

  [(PMCoreSmartPowerNapPredictor *)self setMotion_alarm_threshold:1800];
  [(PMCoreSmartPowerNapPredictor *)self setMotion_alarm_start_before:3600];

  [(PMCoreSmartPowerNapPredictor *)self setMotion_alarm_set:0];
}

- (void)registerMotionAlarm
{
  motion_alarm_manager = [(PMCoreSmartPowerNapPredictor *)self motion_alarm_manager];
  v6 = 0;
  v4 = [motion_alarm_manager registerAlarmWithName:@"CSPN motion alarm" type:6 duration:-[PMCoreSmartPowerNapPredictor motion_alarm_threshold](self repeats:"motion_alarm_threshold") error:{0, &v6}];
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
  motion_alarm_manager = [(PMCoreSmartPowerNapPredictor *)self motion_alarm_manager];
  v6 = 0;
  v4 = [motion_alarm_manager unregisterAlarmWithName:@"CSPN motion alarm" error:&v6];
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

- (void)alarmDidRegister:(id)register error:(id)error
{
  v4 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: motion alarm did register", v5, 2u);
  }
}

- (void)alarmDidUnregister:(id)unregister error:(id)error
{
  v4 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: motion alarm did unregister", v5, 2u);
  }
}

- (void)alarmDidFire:(id)fire error:(id)error
{
  fireCopy = fire;
  errorCopy = error;
  v8 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = fireCopy;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: motion alarm did fire alarm %@, error %@", buf, 0x16u);
  }

  v11 = 0;
  [fireCopy acknowledgeWithError:&v11];
  v9 = v11;
  v10 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CoreSmartPowerNap: Motion detected", buf, 2u);
  }

  [(PMCoreSmartPowerNapPredictor *)self updateMotionState:1];
}

- (void)handleUserInterruption:(BOOL)interruption
{
  if (interruption)
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
      inactivity_start = [(PMCoreSmartPowerNapPredictor *)self inactivity_start];
      if (inactivity_start)
      {
        v11 = inactivity_start;
        inactivity_end = [(PMCoreSmartPowerNapPredictor *)self inactivity_end];
        if (inactivity_end)
        {
          v8 = inactivity_end;
          last_session_end_reason = [(PMCoreSmartPowerNapPredictor *)self last_session_end_reason];
          v10 = [last_session_end_reason isEqualToString:@"MotionDetected"];

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

- (void)postCSPNDarwinNotification:(unint64_t)notification
{
  if (!notify_register_check("com.apple.powerd.coresmartpowernap", &dword_1000ACB28))
  {
    notify_set_state(dword_1000ACB28, notification);

    notify_post("com.apple.powerd.coresmartpowernap");
  }
}

- (void)logEndOfSessionWithReason:(id)reason
{
  full_session_start_time = [(PMCoreSmartPowerNapPredictor *)self full_session_start_time];
  if (full_session_start_time)
  {
    v14 = full_session_start_time;
    full_session_end_time = [(PMCoreSmartPowerNapPredictor *)self full_session_end_time];
    if (full_session_end_time)
    {
      v7 = full_session_end_time;
      predictor_output = [(PMCoreSmartPowerNapPredictor *)self predictor_output];

      if (predictor_output)
      {
        v10 = reason == @"UserInterrupted" || reason == @"MotionDetected";
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
  inactivity_predictor = [(PMCoreSmartPowerNapPredictor *)self inactivity_predictor];
  deviceUsageDiagnosis = [inactivity_predictor deviceUsageDiagnosis];

  if ([deviceUsageDiagnosis containsString:@"is NOT frequently"])
  {
    v4 = @"rare";
  }

  else if ([deviceUsageDiagnosis containsString:@"is frequently"])
  {
    v4 = @"frequent";
  }

  else
  {
    v4 = @"unknown";
  }

  return v4;
}

- (id)sleepTimeBucketOfDate:(id)date AtResolution:(unint64_t)resolution
{
  dateCopy = date;
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 components:32 fromDate:dateCopy];

  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", ([v7 hour] + 4) % 24 / resolution);

  return v8;
}

- (id)getCustomizedDayOfWeekFromDate:(id)date
{
  dateCopy = date;
  v4 = dateCopy;
  if (dateCopy)
  {
    v5 = dateCopy;
    v6 = +[NSCalendar currentCalendar];
    v7 = [v6 components:544 fromDate:v5];
    if ([v7 hour] >= 21)
    {
      v8 = [v5 dateByAddingTimeInterval:86400.0];

      v9 = [v6 components:512 fromDate:v8];

      v5 = v8;
      v7 = v9;
    }

    weekday = [v7 weekday];
    if (weekday == 1)
    {
      v11 = 7;
    }

    else
    {
      v11 = weekday - 1;
    }

    v12 = [NSNumber numberWithInteger:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)convertTimeToNumberFromDate:(id)date
{
  if (date)
  {
    dateCopy = date;
    v4 = +[NSCalendar currentCalendar];
    v5 = [v4 components:96 fromDate:dateCopy];

    hour = [v5 hour];
    *&v7 = ([v5 minute] / 60.0) + hour;
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
  inactivity_predictor = [(PMCoreSmartPowerNapPredictor *)self inactivity_predictor];
  modelMetadata = [inactivity_predictor modelMetadata];

  v5 = objc_opt_new();
  v36[0] = @"eventIsSessionInt";
  v36[1] = @"sessionDurationHrFloat";
  v37[0] = &off_1000A2B10;
  v37[1] = &off_1000A2B10;
  v36[2] = @"deviceUsageFrequencyStr";
  parseDeviceUsageFrequencyFromDiagnosis = [(PMCoreSmartPowerNapPredictor *)self parseDeviceUsageFrequencyFromDiagnosis];
  v37[2] = parseDeviceUsageFrequencyFromDiagnosis;
  v36[3] = @"entryConfidenceLevelEnum";
  predictor_output = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [predictor_output confidenceLevel]);
  v37[3] = v7;
  v36[4] = @"entryConfidenceValueInt";
  predictor_output2 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
  [predictor_output2 confidenceValue];
  v10 = [NSNumber numberWithDouble:round(v9 * 100.0)];
  v37[4] = v10;
  v36[5] = @"predictedDurationHrFloat";
  predictor_output3 = [(PMCoreSmartPowerNapPredictor *)self predictor_output];
  [predictor_output3 predictedDuration];
  v12 = [NSNumber numberWithDouble:?];
  v37[5] = v12;
  v36[6] = @"predictorTypeStr";
  v33 = modelMetadata;
  predictorType = [modelMetadata predictorType];
  v14 = predictorType;
  v15 = @"None";
  if (predictorType)
  {
    v15 = predictorType;
  }

  v37[6] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:7];
  [v5 addEntriesFromDictionary:v16];

  current_experiment_ids = self->_current_experiment_ids;
  if (current_experiment_ids)
  {
    experimentId = [(TRIExperimentIdentifiers *)current_experiment_ids experimentId];
    [v5 setObject:experimentId forKeyedSubscript:@"trialDeploymentId"];

    v19 = [NSNumber numberWithInt:[(TRIExperimentIdentifiers *)self->_current_experiment_ids deploymentId]];
    stringValue = [v19 stringValue];
    [v5 setObject:stringValue forKeyedSubscript:@"trialExperimentId"];

    treatmentId = [(TRIExperimentIdentifiers *)self->_current_experiment_ids treatmentId];
    [v5 setObject:treatmentId forKeyedSubscript:@"trialTreatmentId"];
  }

  v22 = [v5 objectForKeyedSubscript:@"entryConfidenceLevelEnum"];
  integerValue = [v22 integerValue];

  if (integerValue == 2 && os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_ERROR))
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
    intValue = [v25 intValue];

    if (intValue < 101)
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
  trial_client = [(PMCoreSmartPowerNapPredictor *)self trial_client];
  [trial_client refresh];

  trial_client2 = [(PMCoreSmartPowerNapPredictor *)self trial_client];
  v4 = [trial_client2 experimentIdentifiersWithNamespaceName:@"COREOS_PREDICTION_INACTIVITY"];
  [(PMCoreSmartPowerNapPredictor *)self setCurrent_experiment_ids:v4];
}

- (void)updateQueryDelta:(unsigned int)delta
{
  v5 = qword_1000AB9A8;
  if (os_log_type_enabled(qword_1000AB9A8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = delta;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating query delta to %u seconds", v6, 8u);
  }

  [(PMCoreSmartPowerNapPredictor *)self setDelta_to_query:delta];
}

@end