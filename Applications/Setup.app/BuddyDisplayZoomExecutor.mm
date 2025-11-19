@interface BuddyDisplayZoomExecutor
- (BOOL)commitIfNeededWithRelaunchURL:(id)a3 transitionWithScreenshot:(BOOL)a4;
- (BOOL)requiresCommit;
- (void)commitWithRelaunchURL:(id)a3 transitionWithScreenshot:(BOOL)a4;
- (void)setPendingOption:(unint64_t)a3 chosenByUser:(BOOL)a4;
@end

@implementation BuddyDisplayZoomExecutor

- (void)setPendingOption:(unint64_t)a3 chosenByUser:(BOOL)a4
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  oslog = _BYLoggingFacility();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    location = DBSStringForDisplayZoomOption();
    sub_10006AE18(buf, location);
    _os_log_impl(&_mh_execute_header, oslog, v9, "Set pending Display Zoom option to %@", buf, 0xCu);

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyDisplayZoomExecutor *)v14 setChosenByUser:v11];
  v4 = +[DBSDisplayZoomConfigurationController defaultController];
  v5 = [v4 displayZoomModes];
  v6 = DBSStringForDisplayZoomOption();
  v7 = [v5 objectForKeyedSubscript:v6];
  [(BuddyDisplayZoomExecutor *)v14 setPendingMode:v7];
}

- (BOOL)requiresCommit
{
  v10 = self;
  location[1] = a2;
  v2 = [(BuddyDisplayZoomExecutor *)self pendingMode];
  v3 = v2 == 0;

  if (v3)
  {
    return 0;
  }

  else
  {
    v4 = +[DBSDisplayZoomConfigurationController defaultController];
    location[0] = [v4 currentDisplayZoomMode];

    v5 = [location[0] displayZoomOption];
    v6 = [(BuddyDisplayZoomExecutor *)v10 pendingMode];
    v7 = [(DBSDisplayZoomMode *)v6 displayZoomOption];

    v11 = v5 != v7;
    objc_storeStrong(location, 0);
  }

  return v11;
}

- (BOOL)commitIfNeededWithRelaunchURL:(id)a3 transitionWithScreenshot:(BOOL)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = a4;
  if ([(BuddyDisplayZoomExecutor *)v13 requiresCommit])
  {
    [(BuddyDisplayZoomExecutor *)v13 commitWithRelaunchURL:location[0] transitionWithScreenshot:v11];
    v14 = 1;
  }

  else
  {
    oslog = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v9;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "Pending Display Zoom already matches current mode; not committing change", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v14 = 0;
  }

  objc_storeStrong(location, 0);
  return v14 & 1;
}

- (void)commitWithRelaunchURL:(id)a3 transitionWithScreenshot:(BOOL)a4
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = a4;
  if ([(BuddyDisplayZoomExecutor *)v22 chosenByUser])
  {
    v25 = @"choice";
    v5 = [(BuddyDisplayZoomExecutor *)v22 pendingMode];
    [(DBSDisplayZoomMode *)v5 displayZoomOption];
    v6 = DBSStringForDisplayZoomOption();
    v26 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    AnalyticsSendEvent();
  }

  v8 = [(BuddyDisplayZoomExecutor *)v22 willCommit];

  if (v8)
  {
    v9 = [(BuddyDisplayZoomExecutor *)v22 willCommit];
    v9[2](v9);
  }

  if (location[0])
  {
    oslog = _BYLoggingFacility();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(BuddyDisplayZoomExecutor *)v22 pendingMode];
      [(DBSDisplayZoomMode *)v10 displayZoomOption];
      v17 = DBSStringForDisplayZoomOption();
      sub_100078180(buf, v17, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, v18, "Committing Display Zoom mode %@ with relaunch URL %@...", buf, 0x16u);

      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v16 = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(BuddyDisplayZoomExecutor *)v22 pendingMode];
      [(DBSDisplayZoomMode *)v11 displayZoomOption];
      v14 = DBSStringForDisplayZoomOption();
      sub_10006AE18(v23, v14);
      _os_log_impl(&_mh_execute_header, v16, v15, "Committing Display Zoom mode %@...", v23, 0xCu);

      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&v16, 0);
  }

  v12 = +[DBSDisplayZoomConfigurationController defaultController];
  v13 = [(BuddyDisplayZoomExecutor *)v22 pendingMode];
  [v12 setDisplayZoomMode:v13 withRelaunchURL:location[0] transitionWithScreenshot:v20];

  objc_storeStrong(location, 0);
}

@end