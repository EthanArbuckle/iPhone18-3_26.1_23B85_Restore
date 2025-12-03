@interface BuddyDisplayZoomExecutor
- (BOOL)commitIfNeededWithRelaunchURL:(id)l transitionWithScreenshot:(BOOL)screenshot;
- (BOOL)requiresCommit;
- (void)commitWithRelaunchURL:(id)l transitionWithScreenshot:(BOOL)screenshot;
- (void)setPendingOption:(unint64_t)option chosenByUser:(BOOL)user;
@end

@implementation BuddyDisplayZoomExecutor

- (void)setPendingOption:(unint64_t)option chosenByUser:(BOOL)user
{
  selfCopy = self;
  v13 = a2;
  optionCopy = option;
  userCopy = user;
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
  [(BuddyDisplayZoomExecutor *)selfCopy setChosenByUser:userCopy];
  v4 = +[DBSDisplayZoomConfigurationController defaultController];
  displayZoomModes = [v4 displayZoomModes];
  v6 = DBSStringForDisplayZoomOption();
  v7 = [displayZoomModes objectForKeyedSubscript:v6];
  [(BuddyDisplayZoomExecutor *)selfCopy setPendingMode:v7];
}

- (BOOL)requiresCommit
{
  selfCopy = self;
  location[1] = a2;
  pendingMode = [(BuddyDisplayZoomExecutor *)self pendingMode];
  v3 = pendingMode == 0;

  if (v3)
  {
    return 0;
  }

  else
  {
    v4 = +[DBSDisplayZoomConfigurationController defaultController];
    location[0] = [v4 currentDisplayZoomMode];

    displayZoomOption = [location[0] displayZoomOption];
    pendingMode2 = [(BuddyDisplayZoomExecutor *)selfCopy pendingMode];
    displayZoomOption2 = [(DBSDisplayZoomMode *)pendingMode2 displayZoomOption];

    v11 = displayZoomOption != displayZoomOption2;
    objc_storeStrong(location, 0);
  }

  return v11;
}

- (BOOL)commitIfNeededWithRelaunchURL:(id)l transitionWithScreenshot:(BOOL)screenshot
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  screenshotCopy = screenshot;
  if ([(BuddyDisplayZoomExecutor *)selfCopy requiresCommit])
  {
    [(BuddyDisplayZoomExecutor *)selfCopy commitWithRelaunchURL:location[0] transitionWithScreenshot:screenshotCopy];
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

- (void)commitWithRelaunchURL:(id)l transitionWithScreenshot:(BOOL)screenshot
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  screenshotCopy = screenshot;
  if ([(BuddyDisplayZoomExecutor *)selfCopy chosenByUser])
  {
    v25 = @"choice";
    pendingMode = [(BuddyDisplayZoomExecutor *)selfCopy pendingMode];
    [(DBSDisplayZoomMode *)pendingMode displayZoomOption];
    v6 = DBSStringForDisplayZoomOption();
    v26 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    AnalyticsSendEvent();
  }

  willCommit = [(BuddyDisplayZoomExecutor *)selfCopy willCommit];

  if (willCommit)
  {
    willCommit2 = [(BuddyDisplayZoomExecutor *)selfCopy willCommit];
    willCommit2[2](willCommit2);
  }

  if (location[0])
  {
    oslog = _BYLoggingFacility();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      pendingMode2 = [(BuddyDisplayZoomExecutor *)selfCopy pendingMode];
      [(DBSDisplayZoomMode *)pendingMode2 displayZoomOption];
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
      pendingMode3 = [(BuddyDisplayZoomExecutor *)selfCopy pendingMode];
      [(DBSDisplayZoomMode *)pendingMode3 displayZoomOption];
      v14 = DBSStringForDisplayZoomOption();
      sub_10006AE18(v23, v14);
      _os_log_impl(&_mh_execute_header, v16, v15, "Committing Display Zoom mode %@...", v23, 0xCu);

      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&v16, 0);
  }

  v12 = +[DBSDisplayZoomConfigurationController defaultController];
  pendingMode4 = [(BuddyDisplayZoomExecutor *)selfCopy pendingMode];
  [v12 setDisplayZoomMode:pendingMode4 withRelaunchURL:location[0] transitionWithScreenshot:screenshotCopy];

  objc_storeStrong(location, 0);
}

@end