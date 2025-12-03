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
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentSystemBase

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  systemUptime = [(ComponentSystemBase *)self systemUptime];
  stringValue = [systemUptime stringValue];
  [attributesCopy setObject:stringValue forKeyedSubscript:@"systemUptime"];

  eCID = [(ComponentSystemBase *)self ECID];
  [attributesCopy setObject:eCID forKeyedSubscript:@"ecid"];

  deviceColor = [(ComponentSystemBase *)self deviceColor];
  if ([deviceColor length])
  {
    [attributesCopy setObject:deviceColor forKeyedSubscript:@"deviceColor"];
  }

  deviceType = [(ComponentSystemBase *)self deviceType];
  [attributesCopy setObject:deviceType forKeyedSubscript:@"deviceType"];

  deviceVersion = [(ComponentSystemBase *)self deviceVersion];
  [attributesCopy setObject:deviceVersion forKeyedSubscript:@"deviceVersion"];

  cpuArchitecture = [(ComponentSystemBase *)self cpuArchitecture];
  [attributesCopy setObject:cpuArchitecture forKeyedSubscript:@"cpuArchitecture"];

  uDID = [(ComponentSystemBase *)self UDID];
  [attributesCopy setObject:uDID forKeyedSubscript:@"udid"];

  modelNumber = [(ComponentSystemBase *)self modelNumber];
  [attributesCopy setObject:modelNumber forKeyedSubscript:@"modelNumber"];

  regulatoryModelNumber = [(ComponentSystemBase *)self regulatoryModelNumber];
  [attributesCopy setObject:regulatoryModelNumber forKeyedSubscript:@"regulatoryModelNumber"];

  buildVersion = [(ComponentSystemBase *)self buildVersion];
  [attributesCopy setObject:buildVersion forKeyedSubscript:@"systemBuild"];

  diagnosticsBuild = [(ComponentSystemBase *)self diagnosticsBuild];
  [attributesCopy setObject:diagnosticsBuild forKeyedSubscript:@"diagnosticsBuild"];

  systemVersion = [(ComponentSystemBase *)self systemVersion];
  [attributesCopy setObject:systemVersion forKeyedSubscript:@"systemVersion"];

  serialNumber = [(ComponentSystemBase *)self serialNumber];
  [attributesCopy setObject:serialNumber forKeyedSubscript:@"deviceSerialNumber"];

  serialNumber2 = [(ComponentSystemBase *)self serialNumber];
  [attributesCopy setObject:serialNumber2 forKeyedSubscript:@"serialNumber"];

  diagnosticsVersion = [(ComponentSystemBase *)self diagnosticsVersion];
  [attributesCopy setObject:diagnosticsVersion forKeyedSubscript:@"diagnosticsVersion"];

  lastRestoreDate = [(ComponentSystemBase *)self lastRestoreDate];
  [attributesCopy setObject:lastRestoreDate forKeyedSubscript:@"lastRestoreDate"];

  lastUpdateDate = [(ComponentSystemBase *)self lastUpdateDate];
  [attributesCopy setObject:lastUpdateDate forKeyedSubscript:@"lastUpdateDate"];

  lastEraseDate = [(ComponentSystemBase *)self lastEraseDate];
  [attributesCopy setObject:lastEraseDate forKeyedSubscript:@"lastEraseDate"];

  setupCompletedDate = [(ComponentSystemBase *)self setupCompletedDate];
  [attributesCopy setObject:setupCompletedDate forKeyedSubscript:@"setupCompletedDate"];

  v24 = +[NSTimeZone localTimeZone];
  name = [v24 name];
  [attributesCopy setObject:name forKeyedSubscript:@"localTimeZone"];

  localTime = [(ComponentSystemBase *)self localTime];
  [attributesCopy setObject:localTime forKeyedSubscript:@"localTime"];

  marketingVersion = [(ComponentSystemBase *)self marketingVersion];
  [attributesCopy setObject:marketingVersion forKeyedSubscript:@"marketingVersion"];

  chipID = [(ComponentSystemBase *)self chipID];
  [attributesCopy setObject:chipID forKeyedSubscript:@"chipID"];

  v29 = [NSNumber numberWithBool:[(ComponentSystemBase *)self isBetaBuild]];
  [attributesCopy setObject:v29 forKeyedSubscript:@"isBetaBuild"];

  v30 = [NSNumber numberWithBool:[(ComponentSystemBase *)self isInternalInstall]];
  [attributesCopy setObject:v30 forKeyedSubscript:@"isInternalInstall"];

  v31 = [NSNumber numberWithBool:[(ComponentSystemBase *)self isProdDevice]];
  [attributesCopy setObject:v31 forKeyedSubscript:@"isProdDevice"];

  v32 = [NSNumber numberWithBool:[(ComponentSystemBase *)self isGreenTeaDevice]];
  [attributesCopy setObject:v32 forKeyedSubscript:@"greenTeaDevice"];

  v33 = [NSNumber numberWithBool:DiagnosticLogSubmissionEnabled()];
  [attributesCopy setObject:v33 forKeyedSubscript:@"analyticsEnabled"];

  storeDemoModeEnabled = [(ComponentSystemBase *)self storeDemoModeEnabled];
  [attributesCopy setObject:storeDemoModeEnabled forKeyedSubscript:@"storeDemoModeEnabled"];

  sikPublicKey = [(ComponentSystemBase *)self sikPublicKey];
  [attributesCopy setObject:sikPublicKey forKeyedSubscript:@"sik"];

  marketingProductNumber = [(ComponentSystemBase *)self marketingProductNumber];
  [attributesCopy setObject:marketingProductNumber forKeyedSubscript:@"marketingProductNumber"];

  regionalEligibilityCheck = [(ComponentSystemBase *)self regionalEligibilityCheck];
  [attributesCopy setObject:regionalEligibilityCheck forKeyedSubscript:@"regionalEligibility"];

  v38 = [NSNumber numberWithBool:[(ComponentSystemBase *)self exclavesSupport]];
  [attributesCopy setObject:v38 forKeyedSubscript:@"exclavesSupport"];

  v39 = [NSNumber numberWithBool:[(ComponentSystemBase *)self isInDiagnosticsMode]];
  [attributesCopy setObject:v39 forKeyedSubscript:@"inDiagnosticsMode"];

  activationConfigurationInformation = [(ComponentSystemBase *)self activationConfigurationInformation];
  if (activationConfigurationInformation)
  {
    [attributesCopy addEntriesFromDictionary:activationConfigurationInformation];
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
  restoreDate = [v3 restoreDate];
  if (restoreDate)
  {
    v5 = +[DSDateFormatter sharedFormatter];
    v6 = [v5 formatterWithType:0];
    v7 = [v6 stringFromDate:restoreDate];
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
  updateDate = [v3 updateDate];
  if (updateDate)
  {
    v5 = +[DSDateFormatter sharedFormatter];
    v6 = [v5 formatterWithType:0];
    v7 = [v6 stringFromDate:updateDate];
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

  rootCreationDate = [(ComponentSystemBase *)self rootCreationDate];
  v5 = stringOrNull(rootCreationDate);

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
  infoDictionary = [v3 infoDictionary];
  v5 = [infoDictionary objectForKeyedSubscript:@"CFBundleShortVersionString"];
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
  v10 = sub_100003320;
  v11 = sub_100003330;
  v12 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003338;
  v7[3] = &unk_10000C370;
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
  infoDictionary = [v3 infoDictionary];
  v5 = [infoDictionary objectForKeyedSubscript:@"CFBundleVersion"];
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
    v3 = &off_10000D070;
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

  setupAssistantCompletionDate = [(ComponentSystemBase *)self setupAssistantCompletionDate];
  if (setupAssistantCompletionDate)
  {
    v5 = +[DSDateFormatter sharedFormatter];
    v6 = [v5 formatterWithType:0];
    v7 = [v6 stringFromDate:setupAssistantCompletionDate];
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

  setupAssistantCompletionDate = [(ComponentSystemBase *)self setupAssistantCompletionDate];
  if (setupAssistantCompletionDate)
  {
    v5 = +[NSNull null];
    v6 = [setupAssistantCompletionDate isEqual:v5] ^ 1;
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
  if (qword_100010E90 != -1)
  {
    dispatch_once(&qword_100010E90, &stru_10000C3B0);
  }

  return byte_100010E88;
}

- (BOOL)isInternalInstall
{
  if (qword_100010E98 != -1)
  {
    dispatch_once(&qword_100010E98, &stru_10000C3D0);
  }

  return byte_100010E89;
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
        intValue = [v7 intValue];
        v9 = (intValue >> 2) & 1;
        v13[0] = @"demoActivated";
        v6 = [NSNumber numberWithBool:(intValue >> 1) & 1];
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
    v8 = &stru_10000CC38;
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
    v8 = &stru_10000CC38;
  }

LABEL_18:

  return v8;
}

- (id)marketingProductNumber
{
  modelNumber = [(ComponentSystemBase *)self modelNumber];
  if (modelNumber)
  {
    v3 = MGCopyAnswer();
    v4 = stringOrNull(v3);

    if (v4)
    {
      v5 = [modelNumber stringByAppendingString:v4];
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