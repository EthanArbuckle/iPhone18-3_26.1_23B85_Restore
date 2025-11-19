@interface IdleTimerController
- (BOOL)_shouldIgnoreScene:(id)a3;
- (IdleTimerController)init;
- (NSString)description;
- (id)_assertionReasonString;
- (id)_reasonString;
- (id)_summaryString;
- (void)_asyncUpdateForApplicationState:(BOOL)a3;
- (void)_releaseIdleTimerAssertion;
- (void)_setDesiredIdleTimerState:(unint64_t)a3 forReason:(unint64_t)a4;
- (void)_setIdleTimerDisabled:(BOOL)a3;
- (void)_setMonitoringBattery:(BOOL)a3;
- (void)_startObservingApplicationState;
- (void)_syncUpdateForApplicationState:(BOOL)a3;
- (void)_takeIdleTimerAssertion;
- (void)_updateApplicableStates;
- (void)_updateBatteryMonitoring;
- (void)_updateForApplicationState:(BOOL)a3;
- (void)_updateIdleTimer;
- (void)batteryMonitorTokenWitnessedChangeInBatteryState:(id)a3;
- (void)dealloc;
- (void)setDesiredIdleTimerState:(unint64_t)a3 forReason:(unint64_t)a4;
@end

@implementation IdleTimerController

- (void)batteryMonitorTokenWitnessedChangeInBatteryState:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10085D094;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_reasonString
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableDictionary *)self->_applicableStates count])
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableDictionary count](self->_states, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [(NSMutableDictionary *)self->_applicableStates allKeys];
    v5 = [v4 sortedArrayUsingSelector:"compare:"];

    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_applicableStates objectForKeyedSubscript:v10];
          v12 = [v10 unsignedIntegerValue];
          v13 = @"Unknown";
          if (v12 <= 4)
          {
            v13 = *(&off_10162BF88 + v12);
          }

          v14 = [v11 unsignedIntegerValue];
          v15 = @"Unknown";
          if (v14 <= 2)
          {
            v15 = *(&off_10162BFB0 + v14);
          }

          v16 = [NSString stringWithFormat:@"%@:%@", v13, v15];
          [v3 addObject:v16];
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    v17 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v17 = @"-";
  }

  return v17;
}

- (id)_assertionReasonString
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(IdleTimerController *)self _reasonString];
  v4 = [NSString stringWithFormat:@"Maps {%@}", v3];

  return v4;
}

- (void)_updateForApplicationState:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_queue);
  self->_isForeground = a3;
  [(IdleTimerController *)self _updateApplicableStates];
  [(IdleTimerController *)self _updateBatteryMonitoring];

  [(IdleTimerController *)self _updateIdleTimer];
}

- (void)_asyncUpdateForApplicationState:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100799E70();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "background";
    if (v3)
    {
      v6 = "foreground";
    }

    *buf = 136315138;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Update timer (async), main scenes are now %s", buf, 0xCu);
  }

  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10085D4C8;
  v8[3] = &unk_101661AE0;
  v8[4] = self;
  v9 = v3;
  dispatch_async(queue, v8);
}

- (void)_syncUpdateForApplicationState:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100799E70();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "background";
    if (v3)
    {
      v6 = "foreground";
    }

    *buf = 136315138;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Update timer (sync), main scenes are now %s", buf, 0xCu);
  }

  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10085D600;
  v8[3] = &unk_101661AE0;
  v8[4] = self;
  v9 = v3;
  dispatch_sync(queue, v8);
}

- (BOOL)_shouldIgnoreScene:(id)a3
{
  v3 = a3;
  v4 = [v3 session];
  v5 = [v4 role];
  if ([v5 isEqualToString:UIWindowSceneSessionRoleApplication])
  {
    v6 = [UIApplication _maps_shouldIgnoreActivationStateForScene:v3];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_startObservingApplicationState
{
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10085D894;
  v15[3] = &unk_10165FBE8;
  objc_copyWeak(&v16, &location);
  v3 = objc_retainBlock(v15);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10085D928;
  v13[3] = &unk_10165FBE8;
  objc_copyWeak(&v14, &location);
  v4 = objc_retainBlock(v13);
  v5 = +[NSNotificationCenter defaultCenter];
  v6 = +[NSOperationQueue mainQueue];
  v7 = [v5 addObserverForName:UISceneDidEnterBackgroundNotification object:0 queue:v6 usingBlock:v4];
  backgroundingObserverToken = self->_backgroundingObserverToken;
  self->_backgroundingObserverToken = v7;

  v9 = +[NSNotificationCenter defaultCenter];
  v10 = +[NSOperationQueue mainQueue];
  v11 = [v9 addObserverForName:UISceneWillEnterForegroundNotification object:0 queue:v10 usingBlock:v3];
  foregroundingObserverToken = self->_foregroundingObserverToken;
  self->_foregroundingObserverToken = v11;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_releaseIdleTimerAssertion
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_idleTimerAssertion)
  {
    v3 = sub_100799E70();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Releasing idle timer assertion", v5, 2u);
    }

    [(BSInvalidatable *)self->_idleTimerAssertion invalidate];
    idleTimerAssertion = self->_idleTimerAssertion;
    self->_idleTimerAssertion = 0;
  }
}

- (void)_takeIdleTimerAssertion
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_idleTimerAssertion)
  {
    v3 = sub_100799E70();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Taking assertion to disable idle timer", buf, 2u);
    }

    v4 = +[ITIdleTimerState sharedInstance];
    v5 = [(IdleTimerController *)self _assertionReasonString];
    v10 = 0;
    v6 = [v4 newAssertionToDisableIdleTimerForReason:v5 error:&v10];
    v7 = v10;
    idleTimerAssertion = self->_idleTimerAssertion;
    self->_idleTimerAssertion = v6;

    if (!self->_idleTimerAssertion)
    {
      v9 = sub_100799E70();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error acquiring idle timer assertion: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_setIdleTimerDisabled:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v3)
  {

    [(IdleTimerController *)self _takeIdleTimerAssertion];
  }

  else
  {

    [(IdleTimerController *)self _releaseIdleTimerAssertion];
  }
}

- (void)_updateIdleTimer
{
  dispatch_assert_queue_V2(self->_queue);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  applicableStates = self->_applicableStates;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10085DD6C;
  v5[3] = &unk_10162BF68;
  v5[4] = &v10;
  v5[5] = &v6;
  [(NSMutableDictionary *)applicableStates enumerateKeysAndObjectsUsingBlock:v5];
  if (v11[3])
  {
    v4 = 1;
  }

  else if (*(v7 + 24) == 1)
  {
    v4 = [(BatteryMonitorToken *)self->_batteryToken batteryIsChargingOrFull];
  }

  else
  {
    v4 = 0;
  }

  [(IdleTimerController *)self _setIdleTimerDisabled:v4];
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

- (void)_updateBatteryMonitoring
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  applicableStates = self->_applicableStates;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10085DE90;
  v4[3] = &unk_10162BF40;
  v4[4] = &v5;
  [(NSMutableDictionary *)applicableStates enumerateKeysAndObjectsUsingBlock:v4];
  [(IdleTimerController *)self _setMonitoringBattery:*(v6 + 24)];
  _Block_object_dispose(&v5, 8);
}

- (void)_setMonitoringBattery:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_monitoringBattery != v3)
  {
    self->_monitoringBattery = v3;
    batteryToken = self->_batteryToken;
    if (v3)
    {
      if (!batteryToken)
      {
        v6 = sub_100799E70();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Start monitoring battery", buf, 2u);
        }

        v7 = +[BatteryMonitorController sharedInstance];
        v8 = [v7 beginMonitoringBattery];
        v9 = self->_batteryToken;
        self->_batteryToken = v8;

        [(BatteryMonitorToken *)self->_batteryToken setDelegate:self];
      }
    }

    else if (batteryToken)
    {
      v10 = sub_100799E70();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Stop monitoring battery", v12, 2u);
      }

      v11 = self->_batteryToken;
      self->_batteryToken = 0;
    }
  }
}

- (void)_updateApplicableStates
{
  dispatch_assert_queue_V2(self->_queue);
  states = self->_states;
  if (self->_isForeground)
  {
    v4 = [(NSMutableDictionary *)states copy];
    applicableStates = self->_applicableStates;
    self->_applicableStates = v4;
  }

  else
  {
    v6 = [(NSMutableDictionary *)states mutableCopy];
    v7 = self->_states;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10085E16C;
    v16 = &unk_10162BF18;
    v17 = self;
    v18 = v6;
    v8 = v6;
    [(NSMutableDictionary *)v7 enumerateKeysAndObjectsUsingBlock:&v13];
    v9 = [v8 copy];
    v10 = self->_applicableStates;
    self->_applicableStates = v9;
  }

  v11 = sub_100799E70();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [(IdleTimerController *)self _summaryString];
    *buf = 138412290;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Updated applicable states: %@", buf, 0xCu);
  }
}

- (id)_summaryString
{
  if ([(NSMutableDictionary *)self->_states count])
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableDictionary count](self->_states, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = [(NSMutableDictionary *)self->_states allKeys];
    v5 = [v4 sortedArrayUsingSelector:"compare:"];

    obj = v5;
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_states objectForKeyedSubscript:v10];
          v12 = [v10 unsignedIntegerValue];
          v13 = @"Unknown";
          if (v12 <= 4)
          {
            v13 = *(&off_10162BF88 + v12);
          }

          v14 = [v11 unsignedIntegerValue];
          v15 = @"Unknown";
          if (v14 <= 2)
          {
            v15 = *(&off_10162BFB0 + v14);
          }

          v16 = [NSString stringWithFormat:@"%@:%@", v13, v15];
          v17 = [(NSMutableDictionary *)self->_applicableStates objectForKey:v10];

          if (!v17)
          {
            v18 = [v16 stringByAppendingString:@"(Ignored)"];

            v16 = v18;
          }

          [v3 addObject:v16];
        }

        v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);
    }

    v19 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v19 = @"-";
  }

  return v19;
}

- (NSString)description
{
  dispatch_assert_queue_not_V2(self->_queue);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10085E584;
  v13 = sub_10085E594;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10085E59C;
  block[3] = &unk_101661600;
  block[4] = self;
  block[5] = &v9;
  dispatch_sync(queue, block);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [NSString stringWithFormat:@"<%@:%p %@>", v5, self, v10[5]];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)_setDesiredIdleTimerState:(unint64_t)a3 forReason:(unint64_t)a4
{
  dispatch_assert_queue_V2(self->_queue);
  states = self->_states;
  v8 = [NSNumber numberWithUnsignedInteger:a4];
  v13 = [(NSMutableDictionary *)states objectForKeyedSubscript:v8];

  v9 = [NSNumber numberWithUnsignedInteger:a3];
  LOBYTE(v8) = [v13 isEqual:v9];

  if ((v8 & 1) == 0)
  {
    v10 = [NSNumber numberWithUnsignedInteger:a3];
    v11 = self->_states;
    v12 = [NSNumber numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];

    [(IdleTimerController *)self _updateApplicableStates];
    [(IdleTimerController *)self _updateBatteryMonitoring];
    [(IdleTimerController *)self _updateIdleTimer];
  }
}

- (void)setDesiredIdleTimerState:(unint64_t)a3 forReason:(unint64_t)a4
{
  dispatch_assert_queue_not_V2(self->_queue);
  objc_initWeak(&location, self);
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10085E7C0;
  v8[3] = &unk_10164CBF8;
  objc_copyWeak(v9, &location);
  v9[1] = a3;
  v9[2] = a4;
  dispatch_async(queue, v8);
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self->_backgroundingObserverToken];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self->_foregroundingObserverToken];

  v5.receiver = self;
  v5.super_class = IdleTimerController;
  [(IdleTimerController *)&v5 dealloc];
}

- (IdleTimerController)init
{
  v15.receiver = self;
  v15.super_class = IdleTimerController;
  v2 = [(IdleTimerController *)&v15 init];
  if (v2)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 1;
    if (+[NSThread isMainThread])
    {
      v3 = [UIApplication _maps_isAnySceneForegroundForRole:UIWindowSceneSessionRoleApplication];
      *(v12 + 24) = v3;
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10085EA1C;
      block[3] = &unk_1016608A8;
      block[4] = &v11;
      dispatch_sync(&_dispatch_main_q, block);
      v3 = *(v12 + 24);
    }

    v2->_isForeground = v3;
    v4 = +[NSMutableDictionary dictionary];
    states = v2->_states;
    v2->_states = v4;

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.Maps.IdleTimer", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    [(IdleTimerController *)v2 _startObservingApplicationState];
    _Block_object_dispose(&v11, 8);
  }

  return v2;
}

@end