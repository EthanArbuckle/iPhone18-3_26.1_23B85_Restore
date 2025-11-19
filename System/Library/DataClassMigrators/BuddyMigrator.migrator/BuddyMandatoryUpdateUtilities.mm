@interface BuddyMandatoryUpdateUtilities
+ (BOOL)isUpdateRequired;
+ (id)_humanReadableOSVersionWithProductVersion:(id)a3 buildVersion:(id)a4;
+ (id)humanReadableCurrentOSVersion;
+ (id)humanReadableOSVersionFromScanOptions:(id)a3;
+ (unint64_t)_mandatoryUpdateInformationFromActivation;
+ (void)removeInformation;
@end

@implementation BuddyMandatoryUpdateUtilities

+ (BOOL)isUpdateRequired
{
  v2 = [objc_opt_class() _mandatoryUpdateInformationFromActivation];
  v3 = [objc_opt_class() deviceIsFromFactory];
  v4 = 4;
  if (v3)
  {
    v4 = 1;
  }

  return (v4 & v2) != 0;
}

+ (id)humanReadableCurrentOSVersion
{
  v3 = MGCopyAnswer();
  v4 = MGCopyAnswer();
  v5 = [a1 _humanReadableOSVersionWithProductVersion:v3 buildVersion:v4];

  return v5;
}

+ (id)humanReadableOSVersionFromScanOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 requestedPMV];
  v6 = [v4 requestedBuild];

  v7 = [a1 _humanReadableOSVersionWithProductVersion:v5 buildVersion:v6];

  return v7;
}

+ (id)_humanReadableOSVersionWithProductVersion:(id)a3 buildVersion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!(v5 | v6))
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"UNKNOWN" value:&stru_29910 table:@"Localizable"];
LABEL_6:

    goto LABEL_10;
  }

  if (v6)
  {
    if (v5)
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v8 localizedStringForKey:@"MANDATORY_UPDATE_INFO_HUMAN_READABLE_VERSION" value:&stru_29910 table:@"MandatorySoftwareUpdate"];
      v9 = [NSString localizedStringWithFormat:v10, v5, v7];

      goto LABEL_6;
    }

    v11 = v6;
  }

  else
  {
    v11 = v5;
  }

  v9 = v11;
LABEL_10:

  return v9;
}

+ (void)removeInformation
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Remove mandatory update information on device...", v4, 2u);
  }

  v3 = [BYSUManagerClient createWithQueue:0 clientType:1];
  [v3 setMandatorySoftwareUpdateDictionary:0];
}

+ (unint64_t)_mandatoryUpdateInformationFromActivation
{
  v2 = dispatch_get_global_queue(0, 0);
  v3 = [BYSUManagerClient createWithQueue:v2 clientType:1];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_8F78;
  v7[3] = &unk_28C50;
  v9 = &v10;
  v4 = dispatch_semaphore_create(0);
  v8 = v4;
  [v3 getMandatorySoftwareUpdateDictionary:v7];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

@end