@interface BatteryTrustedData
- (BOOL)hasAuthPassed:(id)passed;
- (BOOL)haveFrameworkToRun;
- (BOOL)isTrustedAuthFeatureDisabled:(id)disabled;
- (BOOL)startMatchingNotifications;
- (BatteryTrustedData)initWithIdentifer:(id)identifer;
- (id)decodeNonce:(id)nonce;
- (id)getInitTimerValueForAlarm:(id)alarm;
- (void)cancelAlarm;
- (void)handleAppleBatteryAuthIORegData:(id)data;
- (void)handleDataFromService:(unsigned int)service messageType:(unsigned int)type messageArgument:(void *)argument;
- (void)handleServiceAdded:(unsigned int)added;
- (void)readOverrideTimeFromDefaults;
- (void)sendToPPS:(id)s;
- (void)setAlarmInSeconds:(id)seconds;
- (void)start;
- (void)stop;
- (void)triggerBatteryReauthentication;
@end

@implementation BatteryTrustedData

- (BatteryTrustedData)initWithIdentifer:(id)identifer
{
  identiferCopy = identifer;
  v21.receiver = self;
  v21.super_class = BatteryTrustedData;
  v5 = [(BatteryTrustedData *)&v21 init];
  v6 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
    {
      sub_100063BD8();
    }

    goto LABEL_9;
  }

  if (!identiferCopy)
  {
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
    {
      sub_100063BA4();
    }

LABEL_9:
    v18 = 0;
    goto LABEL_14;
  }

  failedAuthCount = v5->_failedAuthCount;
  v5->_failedAuthCount = 0;

  v6->_ioNotificationPort = 0;
  v6->_ioServiceAddedIterator = 0;
  v6->_authLastFailedTime = 0.0;
  v6->_authLastPassedTime = 0.0;
  v6->_authTriggeredTime = 0.0;
  v8 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v9 = [identiferCopy stringByTrimmingCharactersInSet:v8];

  v10 = [NSString stringWithFormat:@"%@.battery%@", @"com.apple.powerd.batterytrusteddata.dailytaskQueue", v9];
  uTF8String = [v10 UTF8String];
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create(uTF8String, v12);
  queue = v6->_queue;
  v6->_queue = v13;

  if (v6->_queue)
  {
    defaultTimer = v6->_defaultTimer;
    v6->_defaultTimer = &off_1000A2A38;

    v16 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.powerd.batterytrusteddata.dailytask"];
    defaults = v6->_defaults;
    v6->_defaults = v16;

    [(BatteryTrustedData *)v6 readOverrideTimeFromDefaults];
    v6->_ppsId = 0;
    v18 = v6;
  }

  else
  {
    v19 = qword_1000ACA68;
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
    {
      sub_100063B08(v19);
    }

    v18 = 0;
  }

LABEL_14:
  return v18;
}

- (void)readOverrideTimeFromDefaults
{
  defaults = [(BatteryTrustedData *)self defaults];
  v4 = [defaults objectForKey:@"OverrideTimeSeconds"];

  v5 = qword_1000ACA68;
  v6 = os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Read defaults Override time in seconds: %@", &v7, 0xCu);
    }

    objc_storeStrong(&self->_defaultTimer, v4);
  }

  else if (v6)
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No Override found for timer, using default timer value", &v7, 2u);
  }
}

- (id)getInitTimerValueForAlarm:(id)alarm
{
  alarmCopy = alarm;
  v5 = self->_defaultTimer;
  if (!alarmCopy)
  {
LABEL_12:
    v18 = v5;
    goto LABEL_22;
  }

  if (([alarmCopy BOOLValue] & 1) == 0)
  {
    v17 = qword_1000ACA68;
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Initial auth suggest it has failed, timer value is %@ seconds", &v26, 0xCu);
    }

    goto LABEL_12;
  }

  v6 = [(NSDictionary *)self->_initialData objectForKeyedSubscript:@"TrustedBatteryLastTimePassed"];
  v7 = v6;
  if (v6)
  {
    unsignedLongValue = [v6 unsignedLongValue];
    v9 = +[NSDate date];
    [v9 timeIntervalSince1970];
    v11 = v10;

    unsignedIntValue = [(NSNumber *)self->_defaultTimer unsignedIntValue];
    if (unsignedLongValue >= v11)
    {
      v23 = qword_1000ACA68;
      if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 134218498;
        v27 = unsignedLongValue;
        v28 = 2048;
        v29 = v11;
        v30 = 2112;
        v31 = v5;
        v20 = "Last auth passed time (%llu) is greater than current time(%llu), timer value is %@ seconds";
LABEL_17:
        v21 = v23;
        v22 = 32;
        goto LABEL_18;
      }
    }

    else
    {
      v13 = (unsignedLongValue + unsignedIntValue);
      if (v13 <= v11)
      {

        v25 = qword_1000ACA68;
        v18 = &off_1000A2A50;
        if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 134218498;
          v27 = v13;
          v28 = 2048;
          v29 = v11;
          v30 = 2112;
          v31 = &off_1000A2A50;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "End time(%llu) is greater than current time(%llu), timer value is %@ seconds", &v26, 0x20u);
        }

        goto LABEL_21;
      }

      if (v13 - v11 < [(NSNumber *)self->_defaultTimer unsignedIntValue])
      {
        v14 = [NSNumber numberWithUnsignedLongLong:v13 - v11];

        v15 = qword_1000ACA68;
        if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138412290;
          v27 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Timer value is %@ seconds", &v26, 0xCu);
        }

        v16 = v14;
        goto LABEL_20;
      }

      v23 = qword_1000ACA68;
      if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 134218498;
        v27 = v13;
        v28 = 2048;
        v29 = v11;
        v30 = 2112;
        v31 = v5;
        v20 = "(%llu) is greater than current time(%llu), timer value is %@ seconds";
        goto LABEL_17;
      }
    }
  }

  else
  {
    v19 = qword_1000ACA68;
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412546;
      v27 = @"TrustedBatteryLastTimePassed";
      v28 = 2112;
      v29 = v5;
      v20 = "%@ key is NULL, timer value is %@ seconds";
      v21 = v19;
      v22 = 22;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, &v26, v22);
    }
  }

  v16 = v5;
LABEL_20:
  v18 = v16;
LABEL_21:

LABEL_22:

  return v18;
}

- (BOOL)haveFrameworkToRun
{
  if (sub_10002AFDC() && sub_10002B0AC())
  {
    v2 = qword_1000ACA68;
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CoreAccessories.framework loaded, continue running !!\n", buf, 2u);
    }

    return 1;
  }

  else
  {
    v4 = qword_1000ACA68;
    v5 = os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CoreAccessories.framework not loaded, bail out!!\n", v6, 2u);
      return 0;
    }
  }

  return result;
}

- (void)start
{
  if (![(BatteryTrustedData *)self startMatchingNotifications])
  {

    goto LABEL_20;
  }

  initialData = [(BatteryTrustedData *)self initialData];
  v4 = [(BatteryTrustedData *)self isTrustedAuthFeatureDisabled:initialData];

  if (v4)
  {
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
    {
      sub_100063C74();
    }

LABEL_20:
    [(BatteryTrustedData *)self stop];
    return;
  }

  if (![(BatteryTrustedData *)self haveFrameworkToRun])
  {
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
    {
      sub_100063C0C();
    }

    goto LABEL_20;
  }

  v5 = [(NSDictionary *)self->_initialData objectForKeyedSubscript:@"BatteryAuthPassed"];
  v6 = v5;
  if (v5 && ([v5 BOOLValue] & 1) == 0 && os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
  {
    sub_100063C40();
  }

  v7 = [(BatteryTrustedData *)self getInitTimerValueForAlarm:v6];
  v8 = qword_1000ACA68;
  if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Timer value determined to be %@ seconds", &v10, 0xCu);
  }

  [(BatteryTrustedData *)self handleAppleBatteryAuthIORegData:self->_initialData];
  [(BatteryTrustedData *)self setAlarmInSeconds:v7];
  v9 = qword_1000ACA68;
  if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Battery Trusted Data start completed", &v10, 2u);
  }
}

- (void)sendToPPS:(id)s
{
  sCopy = s;
  if (sCopy)
  {
    if (self->_ppsId)
    {
LABEL_3:
      selfCopy = self;
      v5 = +[NSMutableDictionary dictionary];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = sCopy;
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v18;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v17 + 1) + 8 * i);
            v12 = [v11 stringByReplacingOccurrencesOfString:@" " withString:&stru_10009BE60];
            v13 = [v6 objectForKey:v11];
            [v5 setObject:v13 forKey:v12];
          }

          v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v8);
      }

      if (selfCopy->_ppsId)
      {
        PPSSendTelemetry();
      }

      else if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
      {
        sub_100063CA8();
      }

      goto LABEL_20;
    }

    v14 = PPSCreateTelemetryIdentifier();
    self->_ppsId = v14;
    v15 = qword_1000ACA68;
    if (v14)
    {
      if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ppsId created with subsystem BatteryTrustedData and Daily as BatteryTrustedData", buf, 2u);
      }

      goto LABEL_3;
    }

    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
    {
      sub_100063CDC();
    }
  }

  else if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
  {
    sub_100063D10();
  }

LABEL_20:
}

- (void)triggerBatteryReauthentication
{
  v3 = qword_1000ACA68;
  if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Periodic Timer Fired\n", buf, 2u);
  }

  if (sub_10002AFDC() && sub_10002B0AC())
  {
    v4 = +[NSDate date];
    [v4 timeIntervalSince1970];
    self->_authTriggeredTime = v5;

    v6 = qword_1000ACA68;
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Trigger auth!", v12, 2u);
    }

    v7 = sub_10002B0AC();
    if (v7)
    {
      v7();
      [(BatteryTrustedData *)self setAlarmInSeconds:self->_defaultTimer];
    }

    else
    {
      v9 = sub_100063D44();
      [(BatteryTrustedData *)v9 cancelAlarm];
    }
  }

  else
  {
    v8 = qword_1000ACA68;
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CoreAccessories.framework not loaded!!\n", v11, 2u);
    }
  }
}

- (void)cancelAlarm
{
  if (self->_periodicTimer)
  {
    v3 = qword_1000ACA68;
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancelling any existing Alarms\n", v4, 2u);
    }

    dispatch_source_cancel(self->_periodicTimer);
  }
}

- (void)setAlarmInSeconds:(id)seconds
{
  secondsCopy = seconds;
  [(BatteryTrustedData *)self cancelAlarm];
  v5 = qword_1000ACA68;
  if (self->_doNotRunAnymore)
  {
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
    {
      sub_100063D68();
    }

    [(BatteryTrustedData *)self stop];
  }

  else
  {
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = secondsCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Arming a new timer for %@ seconds\n", buf, 0xCu);
    }

    dispatch_assert_queue_V2(self->_queue);
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    periodicTimer = self->_periodicTimer;
    self->_periodicTimer = v6;

    v8 = self->_periodicTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002A1A0;
    handler[3] = &unk_100099210;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    v9 = dispatch_walltime(0, 1000000000 * [secondsCopy unsignedIntValue]);
    dispatch_source_set_timer(self->_periodicTimer, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_periodicTimer);
  }
}

- (BOOL)isTrustedAuthFeatureDisabled:(id)disabled
{
  disabledCopy = disabled;
  v5 = disabledCopy;
  if (disabledCopy && [disabledCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"TrustedBatteryEnabled"];
    bOOLValue = [v6 BOOLValue];
    v8 = qword_1000ACA68;
    if (bOOLValue)
    {
      if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Trusted data path enabled.", v11, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
      {
        sub_100063D9C();
      }

      [(BatteryTrustedData *)self updatePublishedData:&off_1000A3020];
    }

    v9 = bOOLValue ^ 1;
  }

  else
  {
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
    {
      sub_100063DD0();
    }

    [(BatteryTrustedData *)self updatePublishedData:&off_1000A2FF8];
    v9 = 1;
  }

  return v9;
}

- (BOOL)hasAuthPassed:(id)passed
{
  passedCopy = passed;
  v5 = passedCopy;
  if (!passedCopy || ([passedCopy objectForKeyedSubscript:@"BatteryAuthPassed"], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v12 = qword_1000ACA68;
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Auth state unknown yet", buf, 2u);
    }

    goto LABEL_11;
  }

  v7 = [v5 objectForKeyedSubscript:@"BatteryAuthPassed"];
  bOOLValue = [v7 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v13 = [NSNumber numberWithInt:[(NSNumber *)self->_failedAuthCount intValue]+ 1];
    failedAuthCount = self->_failedAuthCount;
    self->_failedAuthCount = v13;

    self->_authLastFailedTime = self->_authTriggeredTime;
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
    {
      sub_100063E04();
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v9 = [v5 objectForKeyedSubscript:@"TrustedBatteryLastTimePassed"];
  self->_authLastPassedTime = [v9 unsignedLongLongValue];

  v10 = qword_1000ACA68;
  if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Auth Passed", v16, 2u);
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (id)decodeNonce:(id)nonce
{
  nonceCopy = nonce;
  v4 = +[NSMutableDictionary dictionary];
  if (nonceCopy && [nonceCopy length])
  {
    v5 = qword_1000ACA68;
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Decoding Nonce now", v11, 2u);
    }

    memset(v11, 0, sizeof(v11));
    [nonceCopy bytes];
    if ([nonceCopy length] <= 0x20)
    {
      __memcpy_chk();
      v6 = [NSNumber numberWithInt:BYTE9(v11[0])];
      [v4 setObject:v6 forKeyedSubscript:@"Trusted Maximum Capacity"];

      v7 = [NSNumber numberWithInt:WORD5(v11[0])];
      [v4 setObject:v7 forKeyedSubscript:@"Trusted Cycle Count"];

      v8 = [NSNumber numberWithInt:WORD6(v11[0])];
      [v4 setObject:v8 forKeyedSubscript:@"Trusted LifeTime Max WRdc"];

      if (HIWORD(v11[0]))
      {
        v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:(86400 * HIWORD(v11[0]))];
        [v4 setObject:v9 forKeyedSubscript:@"Trusted Date Of First Use"];
      }
    }
  }

  return v4;
}

- (void)handleAppleBatteryAuthIORegData:(id)data
{
  dataCopy = data;
  if ([(BatteryTrustedData *)self doNotRunAnymore])
  {
    if (!self->_doNotRunAnymore)
    {
LABEL_3:
      v5 = qword_1000ACA68;
      if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = dataCopy;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Data is %@", &v14, 0xCu);
      }

      v6 = [dataCopy objectForKeyedSubscript:@"TrustedBatteryDataRaw"];
      v7 = [(BatteryTrustedData *)self decodeNonce:v6];

      if ([(BatteryTrustedData *)self hasAuthPassed:dataCopy])
      {
        [(BatteryTrustedData *)self sendToPPS:v7];
      }

      else
      {
        v9 = qword_1000ACA68;
        if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Auth has failed/state Unknown", &v14, 2u);
        }
      }

      v10 = [NSMutableDictionary dictionaryWithDictionary:v7];
      v11 = [dataCopy objectForKeyedSubscript:@"TrustedBatteryEnabled"];
      [v10 setValue:v11 forKeyPath:@"Trusted Data Enabled"];

      v12 = [[NSNumber alloc] initWithUnsignedLongLong:self->_authLastPassedTime];
      [v10 setValue:v12 forKeyPath:@"Trusted Data Timestamp"];
      v13 = [[NSNumber alloc] initWithUnsignedLongLong:self->_authLastFailedTime];
      [v10 setValue:v13 forKeyPath:@"Trusted Data Failed Timestamp"];
      [v10 setValue:self->_failedAuthCount forKeyPath:@"Trusted Data Failed Count"];
      [(BatteryTrustedData *)self updatePublishedData:v10];

      goto LABEL_13;
    }
  }

  else
  {
    v8 = [(BatteryTrustedData *)self isTrustedAuthFeatureDisabled:dataCopy];
    self->_doNotRunAnymore = v8;
    if (!v8)
    {
      goto LABEL_3;
    }
  }

  [(BatteryTrustedData *)self stop];
  if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
  {
    sub_100063E38();
  }

LABEL_13:
}

- (void)stop
{
  v3 = qword_1000ACA68;
  if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "STOP Called: Removing transport matching notifications...", v4, 2u);
  }

  self->_doNotRunAnymore = 1;
  [(BatteryTrustedData *)self cancelAlarm];
  if ([(BatteryTrustedData *)self ioServiceAddedIterator])
  {
    IOObjectRelease([(BatteryTrustedData *)self ioServiceAddedIterator]);
  }

  if ([(BatteryTrustedData *)self ioNotificationPort])
  {
    IONotificationPortDestroy([(BatteryTrustedData *)self ioNotificationPort]);
  }

  [(BatteryTrustedData *)self updatePublishedData:&off_1000A3048];
}

- (BOOL)startMatchingNotifications
{
  [(BatteryTrustedData *)self setIoNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
  ioNotificationPort = [(BatteryTrustedData *)self ioNotificationPort];
  if (ioNotificationPort)
  {
    ioNotificationPort2 = [(BatteryTrustedData *)self ioNotificationPort];
    queue = [(BatteryTrustedData *)self queue];
    IONotificationPortSetDispatchQueue(ioNotificationPort2, queue);

    ioNotificationPort3 = [(BatteryTrustedData *)self ioNotificationPort];
    v7 = IOServiceMatching("AppleBatteryAuth");
    if (IOServiceAddMatchingNotification(ioNotificationPort3, "IOServiceFirstMatch", v7, sub_10002AA98, self, &self->_ioServiceAddedIterator))
    {
      LODWORD(ioNotificationPort) = os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR);
      if (ioNotificationPort)
      {
        sub_100063E6C();
        LOBYTE(ioNotificationPort) = 0;
      }
    }

    else
    {
      sub_10002AA98(self, [(BatteryTrustedData *)self ioServiceAddedIterator]);
      LOBYTE(ioNotificationPort) = 1;
    }
  }

  return ioNotificationPort;
}

- (void)handleServiceAdded:(unsigned int)added
{
  v5 = qword_1000ACA68;
  if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Service matching notification callback fired!", buf, 2u);
  }

  notification = 0;
  if (IOServiceAddInterestNotification([(BatteryTrustedData *)self ioNotificationPort], added, "IOGeneralInterest", sub_10002AC44, self, &notification))
  {
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
    {
      sub_100063EE0();
    }

    IOObjectRelease(added);
  }

  else if (IORegistryEntryCreateCFProperties(added, &v7, kCFAllocatorDefault, 0))
  {
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
    {
      sub_100063F68();
    }
  }

  else
  {
    initialData = self->_initialData;
    self->_initialData = v7;
  }
}

- (void)handleDataFromService:(unsigned int)service messageType:(unsigned int)type messageArgument:(void *)argument
{
  v7 = qword_1000ACA68;
  if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Callback triggered", buf, 2u);
  }

  properties = 0;
  v8 = IORegistryEntryCreateCFProperties(service, &properties, kCFAllocatorDefault, 0);
  v9 = properties;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = properties == 0;
  }

  if (v10)
  {
    if (os_log_type_enabled(qword_1000ACA68, OS_LOG_TYPE_ERROR))
    {
      sub_100063FE0();
    }
  }

  else
  {
    [(BatteryTrustedData *)self cancelAlarm];
    [(BatteryTrustedData *)self handleAppleBatteryAuthIORegData:v9];
    [(BatteryTrustedData *)self setAlarmInSeconds:self->_defaultTimer];
  }
}

@end