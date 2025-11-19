@interface BuddyApplicationAndSceneSharedStorage
+ (SetupController)setupController;
+ (void)ensureSetupControllerWithFactoryBlock:(id)a3;
@end

@implementation BuddyApplicationAndSceneSharedStorage

+ (SetupController)setupController
{
  oslog[2] = a1;
  oslog[1] = a2;
  if (!qword_1003A7050)
  {
    oslog[0] = _BYLoggingFacility();
    v7 = 17;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_FAULT))
    {
      v2 = oslog[0];
      v3 = v7;
      sub_10006AA68(v6);
      _os_log_fault_impl(&_mh_execute_header, v2, v3, "setup controller does not exist", v6, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  v4 = qword_1003A7050;

  return v4;
}

+ (void)ensureSetupControllerWithFactoryBlock:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!qword_1003A7050)
  {
    v3 = (*(location[0] + 2))();
    v4 = qword_1003A7050;
    qword_1003A7050 = v3;
  }

  objc_storeStrong(location, 0);
}

@end