@interface CLBThermalController
- (CLBThermalController)init;
- (void)_logThermalEvent:(id)event;
- (void)_startObservingThermalEvents;
@end

@implementation CLBThermalController

- (CLBThermalController)init
{
  v5.receiver = self;
  v5.super_class = CLBThermalController;
  v2 = [(CLBThermalController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_hotToken = -1;
    v2->_sunToken = -1;
    [(CLBThermalController *)v2 _startObservingThermalEvents];
  }

  return v3;
}

- (void)_logThermalEvent:(id)event
{
  eventCopy = event;
  v4 = [[NSString alloc] initWithFormat:eventCopy arguments:&v7];

  v5 = [[NSMutableArray alloc] initWithObjects:{v4, 0}];
  v6 = GetThermalState();
  [v5 addObjectsFromArray:v6];

  logEventForAppleCare();
}

- (void)_startObservingThermalEvents
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001D098;
  handler[3] = &unk_1002FCD28;
  handler[4] = self;
  v3 = notify_register_dispatch(kOSThermalNotificationPressureLevelName, &self->_hotToken, &_dispatch_main_q, handler);
  if (v3)
  {
    v4 = v3;
    v5 = +[CLFLog commonLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100284EE0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else
  {
    notify_get_state([(CLBThermalController *)self hotToken], &self->_hotLevel);
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10001D13C;
  v29[3] = &unk_1002FCD28;
  v29[4] = self;
  v12 = notify_register_dispatch("com.apple.system.thermalpressurelevel.cold", &self->_coldToken, &_dispatch_main_q, v29);

  if (v12)
  {
    v13 = +[CLFLog commonLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100284F4C(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  else
  {
    notify_get_state([(CLBThermalController *)self coldToken], &self->_coldLevel);
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10001D1AC;
  v28[3] = &unk_1002FCD28;
  v28[4] = self;
  v20 = notify_register_dispatch("com.apple.system.thermalsunlightstate", &self->_sunToken, &_dispatch_main_q, v28);

  if (v20)
  {
    v21 = +[CLFLog commonLog];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100284FB8(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  else
  {
    notify_get_state([(CLBThermalController *)self sunToken], &self->_sunLevel);
  }

  [(CLBThermalController *)self _respondToCurrentThermalCondition];
}

@end