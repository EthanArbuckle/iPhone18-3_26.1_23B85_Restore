@interface BuddyTermsConditionsFlow
+ (BOOL)controllerNeedsToRun;
+ (id)allowedFlowItems;
+ (void)didAgreeToServerTerms;
+ (void)skippedByCloudConfig;
- (BuddyTermsConditionsFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6;
- (id)controllerFollowingControllerClass:(Class)a3 requestedNext:(Class)a4;
@end

@implementation BuddyTermsConditionsFlow

- (BuddyTermsConditionsFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = 0;
  objc_storeStrong(&v14, a6);
  v9 = v18;
  v18 = 0;
  v13.receiver = v9;
  v13.super_class = BuddyTermsConditionsFlow;
  v18 = [(BuddyTermsConditionsFlow *)&v13 initWithNavigationController:location[0] flowDelegate:v16 flowStarter:v15 dependencyInjector:v14];
  objc_storeStrong(&v18, v18);
  if (v18)
  {
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v19 count:2];
    [v18 setClassList:v10];
  }

  v11 = v18;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v11;
}

+ (void)didAgreeToServerTerms
{
  oslog[2] = a1;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v5;
    sub_10006AA68(v4);
    _os_log_impl(&_mh_execute_header, v2, v3, "Did agree to server terms", v4, 2u);
  }

  objc_storeStrong(oslog, 0);
  byte_1003A74C8 = 1;
}

+ (id)allowedFlowItems
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  return [NSArray arrayWithObjects:v3 count:2];
}

- (id)controllerFollowingControllerClass:(Class)a3 requestedNext:(Class)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  if ([objc_opt_class() controllerNeedsToRun])
  {
    v6.receiver = v10;
    v6.super_class = BuddyTermsConditionsFlow;
    v11 = [(BuddyTermsConditionsFlow *)&v6 controllerFollowingControllerClass:v8 requestedNext:v7];
  }

  else
  {
    v11 = 0;
  }

  v4 = v11;

  return v4;
}

+ (BOOL)controllerNeedsToRun
{
  v2 = [BYLicenseAgreement needsToAcceptNewAgreement:a2];
  v3 = 0;
  if (v2)
  {
    return !(byte_1003A74C8 & 1);
  }

  return v3;
}

+ (void)skippedByCloudConfig
{
  oslog[2] = a1;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v15;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Terms and Conditions pane skipped by cloud config, removing license and warranty sentinels", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  location = 0;
  v4 = +[NSFileManager defaultManager];
  obj = 0;
  v5 = [(NSFileManager *)v4 removeItemAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowLicense" error:&obj];
  objc_storeStrong(&location, obj);

  if ((v5 ^ 1))
  {
    v11 = _BYLoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v7 = 0;
      if (_BYIsInternalInstall())
      {
        v6 = location;
      }

      else if (location)
      {
        v10 = [location domain];
        v9 = 1;
        v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v10, [location code]);
        v8 = v6;
        v7 = 1;
      }

      else
      {
        v6 = 0;
      }

      sub_100071CBC(v17, v6);
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to remove license sentinel file: %{public}@", v17, 0xCu);
      if (v7)
      {
      }

      if (v9)
      {
      }
    }

    objc_storeStrong(&v11, 0);
  }

  +[BYWarranty acknowledge];
  +[BYLicenseAgreement recordUserAcceptedAgreementVersion:](BYLicenseAgreement, "recordUserAcceptedAgreementVersion:", +[BYLicenseAgreement versionOfOnDiskAgreement]);
  objc_storeStrong(&location, 0);
}

@end