@interface BuddySafetySettingsPresentationManager
- (BOOL)shouldPresentSafetySettingsUsingOnlyLocalChecksWithHasCompletedInitialRun:(BOOL)run;
- (id)contextWithHasCompletedInitialRun:(BOOL)run;
@end

@implementation BuddySafetySettingsPresentationManager

- (BOOL)shouldPresentSafetySettingsUsingOnlyLocalChecksWithHasCompletedInitialRun:(BOOL)run
{
  selfCopy = self;
  v37 = a2;
  runCopy = run;
  if ([(BuddySafetySettingsPresentationManager *)self runtimeDependencyExists])
  {
    v32 = [(BuddySafetySettingsPresentationManager *)selfCopy contextWithHasCompletedInitialRun:runCopy];
    v31 = objc_alloc_init(sub_10020F6A8());
    if (objc_opt_respondsToSelector())
    {
      dsema = dispatch_semaphore_create(0);
      v21 = 0;
      v22 = &v21;
      v23 = 0x20000000;
      v24 = 32;
      v25 = 0;
      oslog = _BYLoggingFacility();
      v19 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = oslog;
        v8 = v19;
        sub_10006AA68(v18);
        _os_log_impl(&_mh_execute_header, v7, v8, "Will check whether to present safety settings", v18, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v9 = v31;
      v10 = v32;
      v12 = _NSConcreteStackBlock;
      v13 = -1073741824;
      v14 = 0;
      v15 = sub_10020F7BC;
      v16 = &unk_10032F148;
      v17[1] = &v21;
      v17[0] = dsema;
      [v9 shouldPresentSafetySettingsUsingOnlyLocalChecksWithContext:v10 completionHandler:&v12];
      dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
      v39 = v22[3] & 1;
      v27 = 1;
      objc_storeStrong(v17, 0);
      _Block_object_dispose(&v21, 8);
      objc_storeStrong(&dsema, 0);
    }

    else
    {
      v30 = _BYLoggingFacility();
      v29 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v30;
        v6 = v29;
        sub_10006AA68(v28);
        _os_log_impl(&_mh_execute_header, v5, v6, "Safety settings underlying classes lack local only checks", v28, 2u);
      }

      objc_storeStrong(&v30, 0);
      v39 = 0;
      v27 = 1;
    }

    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  else
  {
    location = _BYLoggingFacility();
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      v3 = location;
      v4 = v34;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Safety settings runtime dependency does not exist", buf, 2u);
    }

    objc_storeStrong(&location, 0);
    v39 = 0;
  }

  return v39 & 1;
}

- (id)contextWithHasCompletedInitialRun:(BOOL)run
{
  selfCopy = self;
  v9 = a2;
  runCopy = run;
  runCopy2 = run;
  v3 = runCopy2;
  location = [objc_alloc(sub_10020F9D4()) initWithFlowType:v3];
  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

@end