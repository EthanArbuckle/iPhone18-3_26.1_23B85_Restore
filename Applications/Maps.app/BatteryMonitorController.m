@interface BatteryMonitorController
+ (id)sharedInstance;
- (id)beginMonitoringBattery;
- (void)_updateBatteryMonitoring;
- (void)batteryMonitorConcreteTokenWillInvalidate:(id)a3;
- (void)setIsMonitoring:(BOOL)a3;
@end

@implementation BatteryMonitorController

- (void)batteryMonitorConcreteTokenWillInvalidate:(id)a3
{
  [(NSHashTable *)self->_tokens removeObject:a3];

  [(BatteryMonitorController *)self _updateBatteryMonitoring];
}

- (void)setIsMonitoring:(BOOL)a3
{
  if (self->_isMonitoring != a3)
  {
    v3 = a3;
    self->_isMonitoring = a3;
    v4 = +[UIDevice currentDevice];
    [v4 setBatteryMonitoringEnabled:v3];

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromBOOL();
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Monitoring Battery: %@", &v7, 0xCu);
    }
  }
}

- (void)_updateBatteryMonitoring
{
  v3 = [(NSHashTable *)self->_tokens allObjects];
  v4 = [v3 count] != 0;

  [(BatteryMonitorController *)self setIsMonitoring:v4];
}

- (id)beginMonitoringBattery
{
  if (!self->_tokens)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    tokens = self->_tokens;
    self->_tokens = v3;
  }

  v5 = objc_alloc_init(_BatteryMonitorConcreteToken);
  [(_BatteryMonitorConcreteToken *)v5 setConcreteTokenDelegate:self];
  [(NSHashTable *)self->_tokens addObject:v5];
  [(BatteryMonitorController *)self _updateBatteryMonitoring];

  return v5;
}

+ (id)sharedInstance
{
  if (qword_10195F1E8 != -1)
  {
    dispatch_once(&qword_10195F1E8, &stru_101654ED8);
  }

  v3 = qword_10195F1E0;

  return v3;
}

@end