@interface BuddyAppleIDFacetimeRegistrationManager
+ (void)registerWithAllAliases;
@end

@implementation BuddyAppleIDFacetimeRegistrationManager

+ (void)registerWithAllAliases
{
  oslog[2] = a1;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v9;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Register FaceTime aliases", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  v4 = [sub_10020ED70() sharedInstance];
  location = [v4 candidateAliases];

  v5 = [sub_10020ED70() sharedInstance];
  [v5 setSelectedAliases:location];

  v6 = [sub_10020ED70() sharedInstance];
  [v6 beginSetupWithCompletionHandler:&stru_10032F310];

  objc_storeStrong(&location, 0);
}

@end