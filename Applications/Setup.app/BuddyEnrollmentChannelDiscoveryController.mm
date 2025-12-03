@interface BuddyEnrollmentChannelDiscoveryController
+ (BOOL)controllerNeedsToRun;
- (void)performExtendedInitializationWithCompletion:(id)completion;
@end

@implementation BuddyEnrollmentChannelDiscoveryController

+ (BOOL)controllerNeedsToRun
{
  v2 = +[BuddyCloudConfigManager sharedManager];
  hasCloudConfiguration = [v2 hasCloudConfiguration];
  v10 = 0;
  v8 = 0;
  v6 = 0;
  v4 = 0;
  if (hasCloudConfiguration)
  {
    v11 = +[BuddyCloudConfigManager sharedManager];
    v10 = 1;
    cloudConfigurationDetails = [v11 cloudConfigurationDetails];
    v8 = 1;
    v7 = [cloudConfigurationDetails objectForKeyedSubscript:kCCEnrollmentServerKey];
    v6 = 1;
    v4 = v7 != 0;
  }

  v12 = v4;
  if (v6)
  {
  }

  if (v8)
  {
  }

  if (v10)
  {
  }

  return v12;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  featureFlags = [(BuddyEnrollmentChannelDiscoveryController *)selfCopy featureFlags];
  isMDMEnrollmentFlowControllerAdoptionEnabled = [(BuddyFeatureFlags *)featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled];

  if (isMDMEnrollmentFlowControllerAdoptionEnabled)
  {
    (*(location[0] + 2))(location[0], 0);
    v31 = 1;
  }

  else
  {
    enrollmentCoordinator = [(BuddyEnrollmentChannelDiscoveryController *)selfCopy enrollmentCoordinator];
    mdmEnrollmentChannel = [(BuddyEnrollmentCoordinator *)enrollmentCoordinator mdmEnrollmentChannel];

    if (mdmEnrollmentChannel)
    {
      oslog = _BYLoggingFacility();
      v29 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = oslog;
        v8 = v29;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v7, v8, "We have fetched enrollment channel before. Skipping...", buf, 2u);
      }

      objc_storeStrong(&oslog, 0);
      (*(location[0] + 2))(location[0], 0);
      v31 = 1;
    }

    else
    {
      v9 = +[BuddyCloudConfigManager sharedManager];
      cloudConfigurationDetails = [v9 cloudConfigurationDetails];

      v10 = [cloudConfigurationDetails objectForKeyedSubscript:kCCEnrollmentServerKey];
      v11 = [v10 objectForKeyedSubscript:kCCEnrollmentURLKey];
      v26 = [NSURL URLWithString:v11];

      if (v26)
      {
        enrollmentCoordinator2 = [(BuddyEnrollmentChannelDiscoveryController *)selfCopy enrollmentCoordinator];
        v15 = [cloudConfigurationDetails objectForKeyedSubscript:kCCEnrollmentServerKey];
        v16 = [v15 objectForKeyedSubscript:kCCEnrollmentAnchorCertificatesKey];
        v17 = _NSConcreteStackBlock;
        v18 = -1073741824;
        v19 = 0;
        v20 = sub_10018248C;
        v21 = &unk_10032B120;
        v22 = location[0];
        [(BuddyEnrollmentCoordinator *)enrollmentCoordinator2 discoverAndStoreEnrollmentChannelWithEnrollmentURL:v26 certificateDatas:v16 completionHandler:&v17];

        objc_storeStrong(&v22, 0);
        v31 = 0;
      }

      else
      {
        v25 = _BYLoggingFacility();
        v24 = 16;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v12 = v25;
          v13 = v24;
          sub_10006AA68(v23);
          _os_log_error_impl(&_mh_execute_header, v12, v13, "No enrollment URL!", v23, 2u);
        }

        objc_storeStrong(&v25, 0);
        (*(location[0] + 2))(location[0], 0);
        v31 = 1;
      }

      objc_storeStrong(&v26, 0);
      objc_storeStrong(&cloudConfigurationDetails, 0);
    }
  }

  objc_storeStrong(location, 0);
}

@end