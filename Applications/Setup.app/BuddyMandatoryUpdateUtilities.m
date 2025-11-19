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
  v3 = [objc_opt_class() _mandatoryUpdateInformationFromActivation];
  if ([objc_opt_class() deviceIsFromFactory])
  {
    return (v3 & 1) != 0;
  }

  else
  {
    return (v3 & 4) != 0;
  }
}

+ (id)humanReadableCurrentOSVersion
{
  v7 = a1;
  location[1] = a2;
  location[0] = MGCopyAnswer();
  v2 = MGCopyAnswer();
  v3 = [v7 _humanReadableOSVersionWithProductVersion:location[0] buildVersion:{v2, v2}];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v3;
}

+ (id)humanReadableOSVersionFromScanOptions:(id)a3
{
  v8 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [location[0] requestedPMV];
  v5 = [location[0] requestedBuild];
  v3 = [v8 _humanReadableOSVersionWithProductVersion:v6 buildVersion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v3;
}

+ (id)_humanReadableOSVersionWithProductVersion:(id)a3 buildVersion:(id)a4
{
  v12 = a1;
  v11 = a2;
  *(&v10 + 1) = 0;
  objc_storeStrong(&v10 + 1, a3);
  *&v10 = 0;
  objc_storeStrong(&v10, a4);
  if (v10 == 0)
  {
    v5 = +[NSBundle mainBundle];
    v13 = [(NSBundle *)v5 localizedStringForKey:@"UNKNOWN" value:&stru_10032F900 table:@"Localizable"];
  }

  else if (v10)
  {
    if (*(&v10 + 1))
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [(NSBundle *)v6 localizedStringForKey:@"MANDATORY_UPDATE_INFO_HUMAN_READABLE_VERSION" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
      v13 = [NSString localizedStringWithFormat:v7, *(&v10 + 1), v10];
    }

    else
    {
      v13 = v10;
    }
  }

  else
  {
    v13 = *(&v10 + 1);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v10 + 1, 0);
  v8 = v13;

  return v8;
}

+ (void)removeInformation
{
  oslog[2] = a1;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v6;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Remove mandatory update information on device...", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  location = [BYSUManagerClient createWithQueue:0 clientType:1];
  [location setMandatorySoftwareUpdateDictionary:0];
  objc_storeStrong(&location, 0);
}

+ (unint64_t)_mandatoryUpdateInformationFromActivation
{
  v18[2] = a1;
  v18[1] = a2;
  v2 = dispatch_get_global_queue(0, 0);
  v18[0] = [BYSUManagerClient createWithQueue:v2 clientType:1];

  location = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x20000000;
  v15 = 32;
  v16 = 0;
  v3 = v18[0];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000B8C3C;
  v10 = &unk_10032C240;
  v11[1] = &v12;
  v11[0] = location;
  [v3 getMandatorySoftwareUpdateDictionary:&v6];
  dispatch_semaphore_wait(location, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v13[3];
  objc_storeStrong(v11, 0);
  _Block_object_dispose(&v12, 8);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v18, 0);
  return v4;
}

@end