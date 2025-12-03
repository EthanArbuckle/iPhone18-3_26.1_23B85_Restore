@interface TransportRestrictedModeService
- (TransportRestrictedModeService)initWithNotificationQueue:(id)queue;
- (int)entryPoint_onDaemonStarted;
- (int)entryPoint_onDaemonStarted_inBaseSystem;
- (int)entryPoint_onXPCEventWithName:(id)name;
- (int)fetchFromKextAndSaveToFileWithKey:(unsigned int)key;
- (int)loadFromFileAndPushToKextWithKey:(unsigned int)key;
- (int)onDeviceLostStatusChanged;
- (int)onKextNotificationArrivedWithPropertyName:(id)name;
- (int)onManagedConfigurationChanged;
- (int)onSaveData:(id *)data;
- (int)onScheduleWakeup:(id *)wakeup;
- (int)prepareDataDir;
- (int)purgeLegacyFiles;
- (int)sendNotificationACKWithPropertyName:(id)name;
- (void)cancelAlarm;
- (void)entryPoint_onAlarm;
- (void)setAlarm:(double)alarm;
- (void)start;
@end

@implementation TransportRestrictedModeService

- (void)cancelAlarm
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = 136315394;
    v3 = "ACMTRM-D";
    v4 = 2080;
    v5 = "[TransportRestrictedModeService cancelAlarm]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called, .\n", &v2, 0x16u);
  }

  xpc_set_event();
}

- (TransportRestrictedModeService)initWithNotificationQueue:(id)queue
{
  v9.receiver = self;
  v9.super_class = TransportRestrictedModeService;
  v3 = [(DaemonService *)&v9 initWithNotificationQueue:queue];
  v4 = v3;
  if (v3)
  {
    notificationQueue = [(DaemonService *)v3 notificationQueue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100003310;
    handler[3] = &unk_10001C368;
    v8 = v4;
    xpc_set_event_stream_handler("com.apple.alarm", notificationQueue, handler);
  }

  return v4;
}

- (void)start
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "ACMTRM-D";
    v5 = 2080;
    v6 = "[TransportRestrictedModeService start]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called, .\n", &v3, 0x16u);
  }

  if (sub_100001230())
  {
    [(TransportRestrictedModeService *)self entryPoint_onDaemonStarted_inBaseSystem];
  }

  else
  {
    [(TransportRestrictedModeService *)self entryPoint_onDaemonStarted];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "ACMTRM-D";
    v5 = 2080;
    v6 = "[TransportRestrictedModeService start]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, .\n", &v3, 0x16u);
  }
}

- (int)prepareDataDir
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:@"/var/root/Library/USBRestricted/"];

  if (v3)
  {
    return 0;
  }

  v4 = +[NSFileManager defaultManager];
  v7 = 0;
  [v4 createDirectoryAtPath:@"/var/root/Library/USBRestricted/" withIntermediateDirectories:1 attributes:0 error:&v7];
  v5 = v7;

  if (!v5)
  {
    return 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v9 = "ACMTRM-D";
    v10 = 2080;
    v11 = "[TransportRestrictedModeService prepareDataDir]";
    v12 = 2048;
    v13 = -5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return -5;
}

- (int)purgeLegacyFiles
{
  for (i = 0; i != 10; ++i)
  {
    v3 = (&off_10001C388)[i];
    v4 = +[NSFileManager defaultManager];
    v5 = [NSString stringWithUTF8String:v3];
    [v4 removeItemAtPath:v5 error:0];
  }

  return 0;
}

- (int)entryPoint_onDaemonStarted_inBaseSystem
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMTRM-D";
    v6 = 2080;
    v7 = "[TransportRestrictedModeService entryPoint_onDaemonStarted_inBaseSystem]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called, .\n", &v4, 0x16u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMTRM-D";
    v6 = 2080;
    v7 = "[TransportRestrictedModeService entryPoint_onDaemonStarted_inBaseSystem]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: acmd started in BaseSystem, handing control over to kext.\n", &v4, 0x16u);
  }

  v2 = ACMKernelControl(33);
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "ACMTRM-D";
    v6 = 2080;
    v7 = "[TransportRestrictedModeService entryPoint_onDaemonStarted_inBaseSystem]";
    v8 = 2048;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v4, 0x20u);
  }

  return v2;
}

- (int)entryPoint_onDaemonStarted
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMTRM-D";
    v14 = 2080;
    v15 = "[TransportRestrictedModeService entryPoint_onDaemonStarted]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called, .\n", buf, 0x16u);
  }

  prepareDataDir = [(TransportRestrictedModeService *)self prepareDataDir];
  if (prepareDataDir || (prepareDataDir = [(TransportRestrictedModeService *)self purgeLegacyFiles]) != 0 || (prepareDataDir = [(TransportRestrictedModeService *)self loadFromFileAndPushToKextWithKey:1]) != 0 || (prepareDataDir = [(TransportRestrictedModeService *)self loadFromFileAndPushToKextWithKey:2]) != 0 || (prepareDataDir = [(TransportRestrictedModeService *)self loadFromFileAndPushToKextWithKey:3]) != 0 || (prepareDataDir = [(TransportRestrictedModeService *)self loadFromFileAndPushToKextWithKey:4]) != 0)
  {
    v10 = prepareDataDir;
LABEL_20:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v13 = "ACMTRM-D";
      v14 = 2080;
      v15 = "[TransportRestrictedModeService entryPoint_onDaemonStarted]";
      v16 = 2048;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
    }

    return v10;
  }

  v4 = sub_100003B2C();
  v5 = sub_100002A38();
  v6 = sub_100002A98();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v13 = "ACMTRM-D";
    v7 = "YES";
    *buf = 136316418;
    v15 = "[TransportRestrictedModeService entryPoint_onDaemonStarted]";
    v14 = 2080;
    if (v4)
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    v16 = 2080;
    v17 = v8;
    if (v5)
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    v18 = 2080;
    if (!v6)
    {
      v7 = "NO";
    }

    v19 = "NO";
    v20 = 2080;
    v21 = v9;
    v22 = 2080;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: acmd started, handing control over to kext (TRM allowed by ManagedConfiguration: %s, disabled by AppleSetup: %s, isInternalBuild: %s, isUSBTypeCSupported: %s).\n", buf, 0x3Eu);
  }

  v10 = ACMKernelControl(3);
  if (v10)
  {
    goto LABEL_20;
  }

  return v10;
}

- (int)entryPoint_onXPCEventWithName:(id)name
{
  nameCopy = name;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "ACMTRM-D";
    v10 = 2080;
    v11 = "[TransportRestrictedModeService entryPoint_onXPCEventWithName:]";
    v12 = 2080;
    uTF8String = [nameCopy UTF8String];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called, eventName=%s.\n", &v8, 0x20u);
  }

  if ([nameCopy isEqualToString:@"ACMTRMEvent_ScheduleWakeup"])
  {
LABEL_8:
    onManagedConfigurationChanged = [(TransportRestrictedModeService *)self onKextNotificationArrivedWithPropertyName:nameCopy];
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"ACMTRMEvent_SaveData"] || objc_msgSend(nameCopy, "isEqualToString:", @"ACMTRMEvent_CheckAppleSetup"))
  {
    if (sub_100001230())
    {
LABEL_7:
      v5 = 0;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"AppleSetupCookieChanged"])
  {
    if (sub_100001230())
    {
      goto LABEL_7;
    }

    onManagedConfigurationChanged = sub_100003DAC("cookie");
  }

  else if ([nameCopy isEqualToString:@"com.apple.managedconfiguration.effectivesettingschanged"])
  {
    if (sub_100001230())
    {
      goto LABEL_7;
    }

    onManagedConfigurationChanged = [(TransportRestrictedModeService *)self onManagedConfigurationChanged];
  }

  else
  {
    if (![nameCopy isEqualToString:kLostModeChangedRestrictedNotification] || !objc_opt_class())
    {
      goto LABEL_7;
    }

    onManagedConfigurationChanged = [(TransportRestrictedModeService *)self onDeviceLostStatusChanged];
  }

LABEL_9:
  v5 = onManagedConfigurationChanged;
  if (onManagedConfigurationChanged && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "ACMTRM-D";
    v10 = 2080;
    v11 = "[TransportRestrictedModeService entryPoint_onXPCEventWithName:]";
    v12 = 2048;
    uTF8String = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v8, 0x20u);
  }

LABEL_12:

  return v5;
}

- (int)sendNotificationACKWithPropertyName:(id)name
{
  nameCopy = name;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v8 = "ACMTRM-D";
    v9 = 2080;
    v10 = "[TransportRestrictedModeService sendNotificationACKWithPropertyName:]";
    v11 = 2080;
    uTF8String = [nameCopy UTF8String];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: [COM] SENDING ACK %s.\n", buf, 0x20u);
  }

  v13 = 0;
  strncpy(buf, [nameCopy UTF8String], 0x3FuLL);
  v4 = 0;
  if (ACMKernelControl(7))
  {
    sub_10000B2A0(&v6);
    v4 = v6;
  }

  return v4;
}

- (int)onKextNotificationArrivedWithPropertyName:(id)name
{
  nameCopy = name;
  v5 = sub_1000012D8(nameCopy);
  if (![v5 length])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v11 = 136315650;
      v12 = "ACMTRM-D";
      v13 = 2080;
      v14 = "[TransportRestrictedModeService onKextNotificationArrivedWithPropertyName:]";
      v15 = 2080;
      uTF8String = [nameCopy UTF8String];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: [COM] IGNORING EMPTY %s.\n", &v11, 0x20u);
    }

    goto LABEL_14;
  }

  if ([v5 length] != 12)
  {
    v9 = -5;
    goto LABEL_19;
  }

  bytes = [v5 bytes];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "ACMTRM-D";
    v13 = 2080;
    v14 = "[TransportRestrictedModeService onKextNotificationArrivedWithPropertyName:]";
    v15 = 2080;
    uTF8String = [nameCopy UTF8String];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: [COM] PROCESSING %s.\n", &v11, 0x20u);
  }

  v7 = *bytes;
  if (*bytes == 3)
  {
    v8 = sub_100003DAC("kext");
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (v7 == 2)
  {
    v8 = [(TransportRestrictedModeService *)self onSaveData:bytes];
    if (!v8)
    {
LABEL_13:
      [(TransportRestrictedModeService *)self sendNotificationACKWithPropertyName:nameCopy];
LABEL_14:
      v9 = 0;
      goto LABEL_15;
    }

LABEL_17:
    v9 = v8;
    goto LABEL_19;
  }

  if (v7 == 1)
  {
    v8 = [(TransportRestrictedModeService *)self onScheduleWakeup:bytes];
    if (v8)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v9 = -3;
LABEL_19:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "ACMTRM-D";
    v13 = 2080;
    v14 = "[TransportRestrictedModeService onKextNotificationArrivedWithPropertyName:]";
    v15 = 2048;
    uTF8String = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v11, 0x20u);
  }

LABEL_15:

  return v9;
}

- (int)onManagedConfigurationChanged
{
  v2 = sub_100003B2C();
  if ((v2 & 1) == byte_100020348)
  {
    v3 = byte_100020370;
  }

  else
  {
    v3 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = "NO";
    v7 = 136315906;
    v8 = "ACMTRM-D";
    if (v2)
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    v10 = "[TransportRestrictedModeService onManagedConfigurationChanged]";
    v9 = 2080;
    v11 = 2080;
    v12 = v5;
    if (!v3)
    {
      v4 = "YES";
    }

    v13 = 2080;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: TRM allowed by ManagedConfiguration: %s (willPublish=%s).\n", &v7, 0x2Au);
  }

  if (v3)
  {
    return 0;
  }

  v7 = 1;
  LOBYTE(v8) = v2;
  result = ACMKernelControl(6);
  if (result)
  {
    sub_10000B35C(&v7);
    return v7;
  }

  else
  {
    byte_100020370 = 1;
    byte_100020348 = v2;
  }

  return result;
}

- (int)onDeviceLostStatusChanged
{
  v2 = +[FMDFMIPManager sharedInstance];
  lockdownShouldDisableDevicePairing = [v2 lockdownShouldDisableDevicePairing];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = "NO";
    v6 = 136315650;
    v7 = "ACMTRM-D";
    v9 = "[TransportRestrictedModeService onDeviceLostStatusChanged]";
    v8 = 2080;
    if (lockdownShouldDisableDevicePairing)
    {
      v4 = "YES";
    }

    v10 = 2080;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: lostModeIsActive = %s.\n", &v6, 0x20u);
  }

  if (!lockdownShouldDisableDevicePairing)
  {
    return 0;
  }

  v6 = 2;
  result = ACMKernelControl(4);
  if (result)
  {
    sub_10000B418(result, &v6);
    return v6;
  }

  return result;
}

- (int)onScheduleWakeup:(id *)wakeup
{
  v3 = *(&wakeup->var0 + 1);
  if (v3)
  {
    [(TransportRestrictedModeService *)self setAlarm:v3];
  }

  else
  {
    [(TransportRestrictedModeService *)self cancelAlarm];
  }

  return 0;
}

- (int)loadFromFileAndPushToKextWithKey:(unsigned int)key
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v15 = 136315650;
    v16 = "ACMTRM-D";
    v17 = 2080;
    v18 = "[TransportRestrictedModeService loadFromFileAndPushToKextWithKey:]";
    v19 = 1024;
    LODWORD(v20) = key;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called, key=%u.\n", &v15, 0x1Cu);
  }

  v4 = key - 1;
  if (key - 1 <= 3)
  {
    v5 = (&off_10001C3F8)[v4];
    v6 = (&off_10001C3D8)[v4];
    v7 = sub_100002AF8(v5);
    v8 = v7;
    if (!v7 || ![v7 length])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v15 = 136315650;
        v16 = "ACMTRM-D";
        v17 = 2080;
        v18 = "[TransportRestrictedModeService loadFromFileAndPushToKextWithKey:]";
        v19 = 2080;
        v20 = v5;
        v12 = "%s: %s: '%s' not loaded.\n";
        v13 = 32;
        goto LABEL_11;
      }

LABEL_12:

      return 0;
    }

    v9 = [NSString stringWithUTF8String:v6];
    v10 = sub_10000B0E4(v9, v8);

    if (v10)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v11 = [v8 length];
        v15 = 136315906;
        v16 = "ACMTRM-D";
        v17 = 2080;
        v18 = "[TransportRestrictedModeService loadFromFileAndPushToKextWithKey:]";
        v19 = 2080;
        v20 = v5;
        v21 = 1024;
        v22 = v11;
        v12 = "%s: %s: '%s' loaded (len=%u).\n";
        v13 = 38;
LABEL_11:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, v12, &v15, v13);
        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v15 = 136315650;
    v16 = "ACMTRM-D";
    v17 = 2080;
    v18 = "[TransportRestrictedModeService loadFromFileAndPushToKextWithKey:]";
    v19 = 2048;
    v20 = -5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v15, 0x20u);
  }

  return -5;
}

- (int)fetchFromKextAndSaveToFileWithKey:(unsigned int)key
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "ACMTRM-D";
    v14 = 2080;
    v15 = "[TransportRestrictedModeService fetchFromKextAndSaveToFileWithKey:]";
    v16 = 1024;
    LODWORD(v17) = key;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called, key=%u.\n", &v12, 0x1Cu);
  }

  v4 = key - 1;
  if (key - 1 > 3)
  {
    v10 = -5;
  }

  else
  {
    v5 = (&off_10001C3F8)[v4];
    v6 = [NSString stringWithUTF8String:(&off_10001C418)[v4]];
    v7 = sub_1000012D8(v6);

    if (!v7 || ![v7 length])
    {
LABEL_9:

      return 0;
    }

    v8 = sub_1000012E8(v5, v7, 0);
    if (!v8)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v9 = [v7 length];
        v12 = 136315906;
        v13 = "ACMTRM-D";
        v14 = 2080;
        v15 = "[TransportRestrictedModeService fetchFromKextAndSaveToFileWithKey:]";
        v16 = 2080;
        v17 = v5;
        v18 = 1024;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: '%s' saved (len=%u).\n", &v12, 0x26u);
      }

      goto LABEL_9;
    }

    v10 = v8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "ACMTRM-D";
    v14 = 2080;
    v15 = "[TransportRestrictedModeService fetchFromKextAndSaveToFileWithKey:]";
    v16 = 2048;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v12, 0x20u);
  }

  return v10;
}

- (int)onSaveData:(id *)data
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    var1 = data->var1;
    v9 = 136315650;
    v10 = "ACMTRM-D";
    v11 = 2080;
    v12 = "[TransportRestrictedModeService onSaveData:]";
    v13 = 1024;
    LODWORD(v14) = var1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called, (gen=%u).\n", &v9, 0x1Cu);
  }

  v6 = [(TransportRestrictedModeService *)self fetchFromKextAndSaveToFileWithKey:1];
  if (v6 || (v6 = [(TransportRestrictedModeService *)self fetchFromKextAndSaveToFileWithKey:2]) != 0 || (v6 = [(TransportRestrictedModeService *)self fetchFromKextAndSaveToFileWithKey:3]) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = [(TransportRestrictedModeService *)self fetchFromKextAndSaveToFileWithKey:4];
    if (!v7)
    {
      return v7;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "ACMTRM-D";
    v11 = 2080;
    v12 = "[TransportRestrictedModeService onSaveData:]";
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v9, 0x20u);
  }

  return v7;
}

- (void)setAlarm:(double)alarm
{
  alarmCopy = alarm;
  v5 = sub_1000029F8();
  v6 = v5 + 30;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = "NO";
    v9 = 136316418;
    v10 = "ACMTRM-D";
    v11 = 2080;
    v12 = "[TransportRestrictedModeService setAlarm:]";
    if (v6 < alarmCopy)
    {
      v7 = "YES";
    }

    v13 = 2048;
    v14 = alarmCopy;
    v15 = 2080;
    v16 = v7;
    v17 = 2048;
    v18 = v5;
    v19 = 2048;
    v20 = 30;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: requestedAlarmTime=%llu willSchedule=%s (now=%llu threshold=%llus).\n", &v9, 0x3Eu);
  }

  if (v6 < alarmCopy)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_date(v8, "Date", (alarm * 1000000000.0));
    xpc_set_event();
  }
}

- (void)entryPoint_onAlarm
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = 136315394;
    v3 = "ACMTRM-D";
    v4 = 2080;
    v5 = "[TransportRestrictedModeService entryPoint_onAlarm]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called, wake-up alarm triggered.\n", &v2, 0x16u);
  }

  ACMKernelControl(30);
}

@end