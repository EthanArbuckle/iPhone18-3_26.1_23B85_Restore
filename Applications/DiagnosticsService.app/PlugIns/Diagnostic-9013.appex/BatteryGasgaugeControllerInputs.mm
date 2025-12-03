@interface BatteryGasgaugeControllerInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation BatteryGasgaugeControllerInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  v11 = 0;
  parametersCopy = parameters;
  self->_ggReset = [parametersCopy BOOLFromKey:@"shouldResetLifeTimeTemp" defaultValue:0 failed:&v11];
  v5 = handleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_ggReset)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ggReset: %@", buf, 0xCu);
  }

  v7 = [parametersCopy BOOLFromKey:@"Lock" defaultValue:1 failed:&v11];
  self->_ggLock = v7;
  v8 = handleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_ggLock)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    *buf = 138412290;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ggLock: %@", buf, 0xCu);
  }

  return (v11 & 1) == 0;
}

@end