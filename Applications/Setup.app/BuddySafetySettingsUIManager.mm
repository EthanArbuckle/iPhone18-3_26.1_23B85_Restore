@interface BuddySafetySettingsUIManager
- (void)shouldPresentSafetySettingsWithHasCompletedInitialRun:(BOOL)a3 delegate:(id)a4 completion:(id)a5;
@end

@implementation BuddySafetySettingsUIManager

- (void)shouldPresentSafetySettingsWithHasCompletedInitialRun:(BOOL)a3 delegate:(id)a4 completion:(id)a5
{
  v40 = self;
  v39 = a2;
  v38 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v36 = 0;
  objc_storeStrong(&v36, a5);
  v6 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v6);

  if ([(BuddySafetySettingsPresentationManager *)v40 runtimeDependencyExists])
  {
    if (sub_1001BE664())
    {
      v28 = [(BuddySafetySettingsPresentationManager *)v40 contextWithHasCompletedInitialRun:v38];
      v27 = [objc_alloc(sub_1001BE664()) initWithSafetySettingsContext:v28];
      v26 = _BYLoggingFacility();
      v25 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v26;
        v12 = v25;
        sub_10006AA68(v24);
        _os_log_impl(&_mh_execute_header, v11, v12, "Will check whether to present safety settings", v24, 2u);
      }

      objc_storeStrong(&v26, 0);
      v13 = v27;
      v14 = v28;
      v15 = _NSConcreteStackBlock;
      v16 = -1073741824;
      v17 = 0;
      v18 = sub_1001BE778;
      v19 = &unk_10032E048;
      v20 = location;
      v21 = v27;
      v22 = v28;
      v23 = v36;
      [v13 shouldPresentSafetySettingsWithContext:v14 completion:&v15];
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v28, 0);
      v32 = 0;
    }

    else
    {
      oslog = _BYLoggingFacility();
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v9 = oslog;
        v10 = v30;
        sub_10006AA68(v29);
        _os_log_impl(&_mh_execute_header, v9, v10, "Safety settings flow presenter does not exist", v29, 2u);
      }

      objc_storeStrong(&oslog, 0);
      (*(v36 + 2))(v36, 0);
      v32 = 1;
    }
  }

  else
  {
    v35 = _BYLoggingFacility();
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v35;
      v8 = v34;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v7, v8, "Safety settings runtime dependency does not exist", buf, 2u);
    }

    objc_storeStrong(&v35, 0);
    (*(v36 + 2))(v36, 0);
    v32 = 1;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&location, 0);
}

@end