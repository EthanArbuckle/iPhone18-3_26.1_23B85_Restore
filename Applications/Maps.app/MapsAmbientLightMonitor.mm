@interface MapsAmbientLightMonitor
- (MapsAmbientLightMonitor)init;
- (__IOHIDEventSystemClient)client;
- (double)_calculateAverageSample;
- (int64_t)_computedLightLevel;
- (int64_t)ambientLightLevel;
- (void)_addSample:(double)sample;
- (void)_handleIOHIDEvent:(__IOHIDEvent *)event;
- (void)_scheduleLightLevelUpdate;
- (void)_setMonitoring:(BOOL)monitoring;
- (void)initializeWithLightLevel:(int64_t)level;
- (void)setAmbientLightLevel:(int64_t)level;
- (void)setClient:(__IOHIDEventSystemClient *)client;
@end

@implementation MapsAmbientLightMonitor

- (MapsAmbientLightMonitor)init
{
  v7.receiver = self;
  v7.super_class = MapsAmbientLightMonitor;
  v2 = [(MapsBaseLightMonitor *)&v7 init];
  if (v2)
  {
    if (MGGetBoolAnswer())
    {
      v3 = 5;
    }

    else
    {
      v3 = 1;
    }

    v4 = [[MapsRingBuffer alloc] initWithLength:v3];
    v5 = *(v2 + 57);
    *(v2 + 57) = v4;
  }

  return v2;
}

- (void)_scheduleLightLevelUpdate
{
  ambientLightLevel = [(MapsAmbientLightMonitor *)self ambientLightLevel];
  _computedLightLevel = [(MapsAmbientLightMonitor *)self _computedLightLevel];
  if (ambientLightLevel == _computedLightLevel)
  {
    [(MapsAmbientLightMonitor *)self setLightUpdateTimer:0];

    [(MapsAmbientLightMonitor *)self setDarkUpdateTimer:0];
  }

  else if (_computedLightLevel == 1)
  {
    [(MapsAmbientLightMonitor *)self setDarkUpdateTimer:0];
    lightUpdateTimer = [(MapsAmbientLightMonitor *)self lightUpdateTimer];

    if (!lightUpdateTimer)
    {
      [(MapsAmbientLightMonitor *)self isBeforeSolarTransit];
      GEOConfigGetDouble();
      v13 = v12;
      v14 = sub_100014EFC();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Scheduling regular light level update in %f", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v15 = &_dispatch_main_q;
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_1005BFCF0;
      v20 = &unk_1016616E8;
      objc_copyWeak(&v21, buf);
      v16 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:&v17 block:v13];
      [(MapsAmbientLightMonitor *)self setLightUpdateTimer:v16, v17, v18, v19, v20];

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }
  }

  else if (_computedLightLevel == 2)
  {
    [(MapsAmbientLightMonitor *)self setLightUpdateTimer:0];
    darkUpdateTimer = [(MapsAmbientLightMonitor *)self darkUpdateTimer];

    if (!darkUpdateTimer)
    {
      [(MapsAmbientLightMonitor *)self isBeforeSolarTransit];
      GEOConfigGetDouble();
      v7 = v6;
      v8 = sub_100014EFC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v25 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Scheduling low light level update in %f", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v9 = &_dispatch_main_q;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1005BFC58;
      v22[3] = &unk_1016616E8;
      objc_copyWeak(&v23, buf);
      v10 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v22 block:v7];
      [(MapsAmbientLightMonitor *)self setDarkUpdateTimer:v10];

      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_handleIOHIDEvent:(__IOHIDEvent *)event
{
  IOHIDEventGetFloatValue();
  [(MapsAmbientLightMonitor *)self _addSample:?];

  [(MapsAmbientLightMonitor *)self _scheduleLightLevelUpdate];
}

- (int64_t)_computedLightLevel
{
  [(MapsAmbientLightMonitor *)self _calculateAverageSample];
  if (v2 >= 25.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (double)_calculateAverageSample
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  lightLevels = [(MapsAmbientLightMonitor *)self lightLevels];
  v4 = [lightLevels countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(lightLevels);
        }

        [*(*(&v14 + 1) + 8 * i) doubleValue];
        v7 = v9 + v7;
      }

      v5 = [lightLevels countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  lightLevels2 = [(MapsAmbientLightMonitor *)self lightLevels];
  v11 = 1.0;
  if ([lightLevels2 count] >= 2)
  {
    lightLevels3 = [(MapsAmbientLightMonitor *)self lightLevels];
    v11 = [lightLevels3 count];
  }

  return v7 / v11;
}

- (void)_addSample:(double)sample
{
  lightLevels = [(MapsAmbientLightMonitor *)self lightLevels];
  v4 = [NSNumber numberWithDouble:sample];
  [lightLevels push:v4];
}

- (void)initializeWithLightLevel:(int64_t)level
{
  v5 = sub_100014EFC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (level >= 3)
    {
      level = [NSString stringWithFormat:@"<Unknown: %ld>", level];
    }

    else
    {
      level = *(&off_101622E48 + level);
    }

    v7 = level;
    v8 = *(&self->_isBeforeSolarTransit + 1);
    if (v8 >= 3)
    {
      v9 = [NSString stringWithFormat:@"<Unknown: %ld>", *(&self->_isBeforeSolarTransit + 1)];
    }

    else
    {
      v9 = *(&off_101622E48 + v8);
    }

    *buf = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Pre-populating light level to %@ from %@", buf, 0x16u);
  }

  *(&self->_isBeforeSolarTransit + 1) = level;
}

- (void)setClient:(__IOHIDEventSystemClient *)client
{
  v4 = *(&self->_ambientLightLevel + 1);
  if (v4 != client)
  {
    if (v4)
    {
      CFRelease(v4);
    }

    *(&self->_ambientLightLevel + 1) = client;
  }
}

- (__IOHIDEventSystemClient)client
{
  result = *(&self->_ambientLightLevel + 1);
  if (!result)
  {
    v4 = IOHIDEventSystemClientCreateWithType();
    *(&self->_ambientLightLevel + 1) = v4;
    if (v4)
    {
      v7[0] = @"PrimaryUsagePage";
      v7[1] = @"PrimaryUsage";
      v8[0] = &off_1016E6338;
      v8[1] = &off_1016E6350;
      [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
      IOHIDEventSystemClientSetMatching();
      return *(&self->_ambientLightLevel + 1);
    }

    else
    {
      v5 = sub_100014EFC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Couldn't allocate client to monitor", v6, 2u);
      }

      return 0;
    }
  }

  return result;
}

- (void)setAmbientLightLevel:(int64_t)level
{
  if (*(&self->_isBeforeSolarTransit + 1) != level)
  {
    v5 = sub_100014EFC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(&self->_isBeforeSolarTransit + 1);
      if (v6 >= 3)
      {
        v7 = [NSString stringWithFormat:@"<Unknown: %ld>", *(&self->_isBeforeSolarTransit + 1)];
      }

      else
      {
        v7 = *(&off_101622E48 + v6);
      }

      v8 = v7;
      if (level >= 3)
      {
        level = [NSString stringWithFormat:@"<Unknown: %ld>", level];
      }

      else
      {
        level = *(&off_101622E48 + level);
      }

      [(MapsAmbientLightMonitor *)self _calculateAverageSample];
      *buf = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = level;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Changing ambient light level from %@ to %@ (average: %f)", buf, 0x20u);
    }

    *(&self->_isBeforeSolarTransit + 1) = level;
    [(MapsBaseLightMonitor *)self _notifyDidChange];
  }
}

- (int64_t)ambientLightLevel
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"MapsDebugAmbientLightLevelKey"];

  if (objc_opt_respondsToSelector())
  {
    integerValue = [v4 integerValue];
    v6 = sub_100014EFC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (integerValue >= 3)
      {
        v7 = [NSString stringWithFormat:@"<Unknown: %ld>", integerValue];
      }

      else
      {
        v7 = *(&off_101622E48 + integerValue);
      }

      *buf = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Using override ambient light level: %@", buf, 0xCu);
    }
  }

  else
  {
    integerValue = *(&self->_isBeforeSolarTransit + 1);
  }

  return integerValue;
}

- (void)_setMonitoring:(BOOL)monitoring
{
  monitoringCopy = monitoring;
  _isMonitoring = [(MapsBaseLightMonitor *)self _isMonitoring];
  v6.receiver = self;
  v6.super_class = MapsAmbientLightMonitor;
  [(MapsBaseLightMonitor *)&v6 _setMonitoring:monitoringCopy];
  if (_isMonitoring != monitoringCopy)
  {
    [(MapsAmbientLightMonitor *)self client];
    CFRunLoopGetMain();
    if (monitoringCopy)
    {
      IOHIDEventSystemClientScheduleWithRunLoop();
      [(MapsAmbientLightMonitor *)self client];
      IOHIDEventSystemClientRegisterEventCallback();
    }

    else
    {
      IOHIDEventSystemClientUnscheduleWithRunLoop();
      [(MapsAmbientLightMonitor *)self client];
      IOHIDEventSystemClientUnregisterEventCallback();
      [(MapsAmbientLightMonitor *)self setAmbientLightLevel:0];
      [(MapsAmbientLightMonitor *)self setClient:0];
      [(MapsAmbientLightMonitor *)self setLightUpdateTimer:0];
      [(MapsAmbientLightMonitor *)self setDarkUpdateTimer:0];
    }
  }
}

@end