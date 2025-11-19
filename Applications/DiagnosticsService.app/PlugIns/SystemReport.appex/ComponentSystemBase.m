@interface ComponentSystemBase
- (BOOL)exclavesSupport;
- (BOOL)isBetaBuild;
- (BOOL)isGreenTeaDevice;
- (BOOL)isInDiagnosticsMode;
- (BOOL)isInternalInstall;
- (BOOL)isProdDevice;
- (BOOL)isSetupAssistantCompleted;
- (id)ECID;
- (id)UDID;
- (id)activationConfigurationInformation;
- (id)buildVersion;
- (id)chipID;
- (id)cpuArchitecture;
- (id)deviceColor;
- (id)deviceType;
- (id)deviceVersion;
- (id)diagnosticsBuild;
- (id)diagnosticsVersion;
- (id)lastEraseDate;
- (id)lastRestoreDate;
- (id)lastUpdateDate;
- (id)localTime;
- (id)marketingName;
- (id)marketingProductNumber;
- (id)marketingVersion;
- (id)modelNumber;
- (id)productClass;
- (id)regionalEligibilityCheck;
- (id)regulatoryModelNumber;
- (id)rootCreationDate;
- (id)serialNumber;
- (id)setupAssistantCompletionDate;
- (id)setupCompletedDate;
- (id)sikPublicKey;
- (id)storeDemoModeEnabled;
- (id)systemUptime;
- (id)systemVersion;
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentSystemBase

- (void)populateAttributes:(id)a3
{
  v41 = a3;
  v4 = [(ComponentSystemBase *)self systemUptime];
  v5 = [v4 stringValue];
  [v41 setObject:v5 forKeyedSubscript:@"systemUptime"];

  v6 = [(ComponentSystemBase *)self ECID];
  [v41 setObject:v6 forKeyedSubscript:@"ecid"];

  v7 = [(ComponentSystemBase *)self deviceColor];
  if ([v7 length])
  {
    [v41 setObject:v7 forKeyedSubscript:@"deviceColor"];
  }

  v8 = [(ComponentSystemBase *)self deviceType];
  [v41 setObject:v8 forKeyedSubscript:@"deviceType"];

  v9 = [(ComponentSystemBase *)self deviceVersion];
  [v41 setObject:v9 forKeyedSubscript:@"deviceVersion"];

  v10 = [(ComponentSystemBase *)self cpuArchitecture];
  [v41 setObject:v10 forKeyedSubscript:@"cpuArchitecture"];

  v11 = [(ComponentSystemBase *)self UDID];
  [v41 setObject:v11 forKeyedSubscript:@"udid"];

  v12 = [(ComponentSystemBase *)self modelNumber];
  [v41 setObject:v12 forKeyedSubscript:@"modelNumber"];

  v13 = [(ComponentSystemBase *)self regulatoryModelNumber];
  [v41 setObject:v13 forKeyedSubscript:@"regulatoryModelNumber"];

  v14 = [(ComponentSystemBase *)self buildVersion];
  [v41 setObject:v14 forKeyedSubscript:@"systemBuild"];

  v15 = [(ComponentSystemBase *)self diagnosticsBuild];
  [v41 setObject:v15 forKeyedSubscript:@"diagnosticsBuild"];

  v16 = [(ComponentSystemBase *)self systemVersion];
  [v41 setObject:v16 forKeyedSubscript:@"systemVersion"];

  v17 = [(ComponentSystemBase *)self serialNumber];
  [v41 setObject:v17 forKeyedSubscript:@"deviceSerialNumber"];

  v18 = [(ComponentSystemBase *)self serialNumber];
  [v41 setObject:v18 forKeyedSubscript:@"serialNumber"];

  v19 = [(ComponentSystemBase *)self diagnosticsVersion];
  [v41 setObject:v19 forKeyedSubscript:@"diagnosticsVersion"];

  v20 = [(ComponentSystemBase *)self lastRestoreDate];
  [v41 setObject:v20 forKeyedSubscript:@"lastRestoreDate"];

  v21 = [(ComponentSystemBase *)self lastUpdateDate];
  [v41 setObject:v21 forKeyedSubscript:@"lastUpdateDate"];

  v22 = [(ComponentSystemBase *)self lastEraseDate];
  [v41 setObject:v22 forKeyedSubscript:@"lastEraseDate"];

  v23 = [(ComponentSystemBase *)self setupCompletedDate];
  [v41 setObject:v23 forKeyedSubscript:@"setupCompletedDate"];

  v24 = +[NSTimeZone localTimeZone];
  v25 = [v24 name];
  [v41 setObject:v25 forKeyedSubscript:@"localTimeZone"];

  v26 = [(ComponentSystemBase *)self localTime];
  [v41 setObject:v26 forKeyedSubscript:@"localTime"];

  v27 = [(ComponentSystemBase *)self marketingVersion];
  [v41 setObject:v27 forKeyedSubscript:@"marketingVersion"];

  v28 = [(ComponentSystemBase *)self chipID];
  [v41 setObject:v28 forKeyedSubscript:@"chipID"];

  v29 = [NSNumber numberWithBool:[(ComponentSystemBase *)self isBetaBuild]];
  [v41 setObject:v29 forKeyedSubscript:@"isBetaBuild"];

  v30 = [NSNumber numberWithBool:[(ComponentSystemBase *)self isInternalInstall]];
  [v41 setObject:v30 forKeyedSubscript:@"isInternalInstall"];

  v31 = [NSNumber numberWithBool:[(ComponentSystemBase *)self isProdDevice]];
  [v41 setObject:v31 forKeyedSubscript:@"isProdDevice"];

  v32 = [NSNumber numberWithBool:[(ComponentSystemBase *)self isGreenTeaDevice]];
  [v41 setObject:v32 forKeyedSubscript:@"greenTeaDevice"];

  v33 = [NSNumber numberWithBool:DiagnosticLogSubmissionEnabled()];
  [v41 setObject:v33 forKeyedSubscript:@"analyticsEnabled"];

  v34 = [(ComponentSystemBase *)self storeDemoModeEnabled];
  [v41 setObject:v34 forKeyedSubscript:@"storeDemoModeEnabled"];

  v35 = [(ComponentSystemBase *)self sikPublicKey];
  [v41 setObject:v35 forKeyedSubscript:@"sik"];

  v36 = [(ComponentSystemBase *)self marketingProductNumber];
  [v41 setObject:v36 forKeyedSubscript:@"marketingProductNumber"];

  v37 = [(ComponentSystemBase *)self regionalEligibilityCheck];
  [v41 setObject:v37 forKeyedSubscript:@"regionalEligibility"];

  v38 = [NSNumber numberWithBool:[(ComponentSystemBase *)self exclavesSupport]];
  [v41 setObject:v38 forKeyedSubscript:@"exclavesSupport"];

  v39 = [NSNumber numberWithBool:[(ComponentSystemBase *)self isInDiagnosticsMode]];
  [v41 setObject:v39 forKeyedSubscript:@"inDiagnosticsMode"];

  v40 = [(ComponentSystemBase *)self activationConfigurationInformation];
  if (v40)
  {
    [v41 addEntriesFromDictionary:v40];
  }
}

- (id)lastRestoreDate
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[ComponentSystemBase lastRestoreDate]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v3 = +[DSGeneralLogCollector latestUserLog];
  v4 = [v3 restoreDate];
  if (v4)
  {
    v5 = +[DSDateFormatter sharedFormatter];
    v6 = [v5 formatterWithType:0];
    v7 = [v6 stringFromDate:v4];
  }

  else
  {
    v7 = 0;
  }

  v8 = stringOrNull(v7);

  return v8;
}

- (id)lastUpdateDate
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[ComponentSystemBase lastUpdateDate]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v3 = +[DSGeneralLogCollector latestUserLog];
  v4 = [v3 updateDate];
  if (v4)
  {
    v5 = +[DSDateFormatter sharedFormatter];
    v6 = [v5 formatterWithType:0];
    v7 = [v6 stringFromDate:v4];
  }

  else
  {
    v7 = 0;
  }

  v8 = stringOrNull(v7);

  return v8;
}

- (id)lastEraseDate
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ComponentSystemBase lastEraseDate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v4 = [(ComponentSystemBase *)self rootCreationDate];
  v5 = stringOrNull(v4);

  return v5;
}

- (id)deviceVersion
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentSystemBase deviceVersion]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)diagnosticsVersion
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ComponentSystemBase diagnosticsVersion]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v3 = +[NSBundle mainBundle];
  v4 = [v3 infoDictionary];
  v5 = [v4 objectForKeyedSubscript:@"CFBundleShortVersionString"];
  v6 = stringOrNull(v5);

  return v6;
}

- (id)marketingVersion
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ComponentSystemBase marketingVersion]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v3 = _CFCopySystemVersionDictionary();
  v4 = [v3 objectForKeyedSubscript:_kCFSystemVersionProductVersionKey];
  v5 = stringOrNull(v4);

  return v5;
}

- (id)systemVersion
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ComponentSystemBase systemVersion]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v9 = 0x3032000000;
  v10 = sub_100035C4C;
  v11 = sub_100035C5C;
  v12 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100035C64;
  v7[3] = &unk_100090C68;
  v7[4] = &buf;
  v3 = objc_retainBlock(v7);
  label = dispatch_queue_get_label(&_dispatch_main_q);
  if (label == dispatch_queue_get_label(0))
  {
    (v3[2])(v3);
  }

  else
  {
    dispatch_sync(&_dispatch_main_q, v3);
  }

  v5 = stringOrNull(*(*(&buf + 1) + 40));

  _Block_object_dispose(&buf, 8);

  return v5;
}

- (id)diagnosticsBuild
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ComponentSystemBase diagnosticsBuild]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v3 = +[NSBundle mainBundle];
  v4 = [v3 infoDictionary];
  v5 = [v4 objectForKeyedSubscript:@"CFBundleVersion"];
  v6 = stringOrNull(v5);

  return v6;
}

- (id)buildVersion
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentSystemBase buildVersion]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)modelNumber
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentSystemBase modelNumber]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)regulatoryModelNumber
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentSystemBase regulatoryModelNumber]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)UDID
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentSystemBase UDID]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)serialNumber
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentSystemBase serialNumber]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)deviceType
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentSystemBase deviceType]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)cpuArchitecture
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentSystemBase cpuArchitecture]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)deviceColor
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ComponentSystemBase deviceColor]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  v3 = MGCopyAnswer();
  if ([v3 isEqualToString:@"unknown"])
  {

    v3 = 0;
  }

  return v3;
}

- (id)systemUptime
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[ComponentSystemBase systemUptime]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  *buf = 0uLL;
  *v7 = 0x1500000001;
  v6 = 16;
  if (sysctl(v7, 2u, buf, &v6, 0, 0))
  {
    v3 = &off_1000C8E28;
  }

  else
  {
    v5.tv_sec = 0;
    *&v5.tv_usec = 0;
    gettimeofday(&v5, 0);
    v3 = [NSNumber numberWithDouble:(1000000000 * (v5.tv_sec - *buf) + 1000 * (v5.tv_usec - *&buf[8])) / 1000000000.0];
  }

  return v3;
}

- (id)ECID
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[ComponentSystemBase ECID]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v3 = [NSString stringWithFormat:@"%llx", MGGetSInt64Answer()];

  return v3;
}

- (id)marketingName
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentSystemBase marketingName]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = stringOrNull(v3);

  return v4;
}

- (id)setupCompletedDate
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[ComponentSystemBase setupCompletedDate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v4 = [(ComponentSystemBase *)self setupAssistantCompletionDate];
  if (v4)
  {
    v5 = +[DSDateFormatter sharedFormatter];
    v6 = [v5 formatterWithType:0];
    v7 = [v6 stringFromDate:v4];
  }

  else
  {
    v7 = 0;
  }

  v8 = stringOrNull(v7);

  return v8;
}

- (id)productClass
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ComponentSystemBase productClass]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  v3 = MGCopyAnswer();

  return v3;
}

- (id)rootCreationDate
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[ComponentSystemBase rootCreationDate]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  if (+[CBSUtilities isCheckerBoardActive])
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lastEraseDate Component ignored on checkerboard", &v10, 2u);
    }

    v4 = 0;
  }

  else
  {
    v5 = +[NSFileManager defaultManager];
    v3 = [v5 attributesOfItemAtPath:@"/private/var/" error:0];

    v6 = [v3 objectForKey:NSFileCreationDate];
    v7 = +[DSDateFormatter sharedFormatter];
    v8 = [v7 formatterWithType:0];
    v4 = [v8 stringFromDate:v6];
  }

  return v4;
}

- (id)localTime
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[ComponentSystemBase localTime]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v3 = +[NSDate date];
  if (!v3)
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Current date is nil.", &v9, 2u);
    }

    v3 = +[NSDate distantPast];
  }

  v5 = +[DSDateFormatter sharedFormatter];
  v6 = [v5 formatterWithType:0];
  v7 = [v6 stringFromDate:v3];

  return v7;
}

- (id)setupAssistantCompletionDate
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ComponentSystemBase setupAssistantCompletionDate]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  v3 = CFPreferencesCopyAppValue(@"SetupLastExit", @"com.apple.purplebuddy");

  return v3;
}

- (BOOL)isSetupAssistantCompleted
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ComponentSystemBase isSetupAssistantCompleted]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v4 = [(ComponentSystemBase *)self setupAssistantCompletionDate];
  if (v4)
  {
    v5 = +[NSNull null];
    v6 = [v4 isEqual:v5] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)chipID
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ComponentSystemBase chipID]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3 = MGCopyAnswer();
  v4 = numberOrNull(v3);

  return v4;
}

- (BOOL)isBetaBuild
{
  if (qword_1000D2020 != -1)
  {
    dispatch_once(&qword_1000D2020, &stru_100090CD8);
  }

  return byte_1000D2018;
}

- (BOOL)isInternalInstall
{
  if (qword_1000D2028 != -1)
  {
    dispatch_once(&qword_1000D2028, &stru_100090CF8);
  }

  return byte_1000D2019;
}

- (BOOL)isProdDevice
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[ComponentSystemBase isProdDevice]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  return MGGetBoolAnswer();
}

- (BOOL)isGreenTeaDevice
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[ComponentSystemBase isGreenTeaDevice]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  return MGGetBoolAnswer();
}

- (id)storeDemoModeEnabled
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[ComponentSystemBase storeDemoModeEnabled]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.demo-settings"];
  v4 = [v3 objectForKey:@"StoreDemoMode"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  v7 = v6;

  return v6;
}

- (id)activationConfigurationInformation
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[ComponentSystemBase activationConfigurationInformation]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (!+[CBSUtilities isCheckerBoardActive])
  {
    v5 = MAECopyActivationRecordWithError();
    v3 = 0;
    if (v3)
    {
      v6 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v12 = [v3 description];
        *buf = 138412290;
        v16 = v12;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not get activation record with error: %@", buf, 0xCu);
      }
    }

    else
    {
      if (v5)
      {
        v7 = [v5 objectForKeyedSubscript:@"DeviceConfigurationFlags"];
        v8 = [v7 intValue];
        v9 = (v8 >> 2) & 1;
        v13[0] = @"demoActivated";
        v6 = [NSNumber numberWithBool:(v8 >> 1) & 1];
        v13[1] = @"pointOfSaleActivated";
        v14[0] = v6;
        v10 = [NSNumber numberWithBool:v9];
        v14[1] = v10;
        v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

        goto LABEL_13;
      }

      v6 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error: activation record is NULL", buf, 2u);
      }
    }

    v4 = 0;
    v7 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activation configuration is not available in CheckerBoard", buf, 2u);
  }

  v4 = 0;
LABEL_14:

  return v4;
}

- (id)sikPublicKey
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[ComponentSystemBase sikPublicKey]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  error = 0;
  v3 = SecKeyCopySystemKey();
  if (!v3)
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = error;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to retrieve SIK Key with error: %@", buf, 0xCu);
    }

    CFRelease(error);
    goto LABEL_13;
  }

  v4 = SecKeyCopyPublicKey(v3);
  if (!v4)
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to retrieve public SIK Key.", buf, 2u);
    }

LABEL_13:
    v8 = &stru_1000B2A68;
    goto LABEL_18;
  }

  v5 = v4;
  v6 = SecKeyCopyExternalRepresentation(v4, &error);
  CFRelease(v5);
  if (v6)
  {
    v7 = [(__CFData *)v6 base64EncodedStringWithOptions:0];
    v8 = stringOrNull(v7);
  }

  else
  {
    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = error;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to retrieve data for public SIK key with error: %@", buf, 0xCu);
    }

    CFRelease(error);
    v8 = &stru_1000B2A68;
  }

LABEL_18:

  return v8;
}

- (id)marketingProductNumber
{
  v2 = [(ComponentSystemBase *)self modelNumber];
  if (v2)
  {
    v3 = MGCopyAnswer();
    v4 = stringOrNull(v3);

    if (v4)
    {
      v5 = [v2 stringByAppendingString:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)regionalEligibilityCheck
{
  all_domain_answers = os_eligibility_get_all_domain_answers();
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v6 = all_domain_answers;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to get all eligibility domain answers with results: %d", buf, 8u);
  }

  return 0;
}

- (BOOL)exclavesSupport
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[ComponentSystemBase exclavesSupport]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  return MGGetBoolAnswer();
}

- (BOOL)isInDiagnosticsMode
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[ComponentSystemBase isInDiagnosticsMode]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  return +[CBSUtilities isCheckerBoardActive];
}

@end