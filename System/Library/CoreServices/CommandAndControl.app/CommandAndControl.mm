void sub_100001734(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CACLogAssetDownload();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Installation status fetch completed %@", &v5, 0xCu);
  }

  [*(a1 + 32) checkNecessaryLanguagePack];
}

void sub_1000017F4(uint64_t a1)
{
  if ((*(*(a1 + 32) + 25) & 1) == 0)
  {
    v2 = +[CACDisplayManager sharedManager];
    v3 = [CACLocaleUtilities localizedUIStringForKey:@"CommonStrings.Cancel"];
    [v2 displayMessageString:v3 type:0];

    *(*(a1 + 32) + 25) = 1;
  }
}

void sub_100001884(id a1, id a2)
{
  v2 = dispatch_time(0, 500000000);

  dispatch_after(v2, &_dispatch_main_q, &stru_1000082D8);
}

void sub_1000018C8(id a1)
{
  v1 = +[CACPreferences sharedPreferences];
  [v1 setCommandAndControlEnabled:0];
}

void sub_100001914(id a1, id a2)
{
  v2 = dispatch_time(0, 500000000);

  dispatch_after(v2, &_dispatch_main_q, &stru_100008318);
}

void sub_100001958(id a1)
{
  v1 = +[AXSpringBoardServer server];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = +[AXSpringBoardServer server];
    [v3 performSelector:"openCommandAndControlSettings" withObject:0 afterDelay:0.0];
  }

  v4 = +[CACPreferences sharedPreferences];
  [v4 setCommandAndControlEnabled:0];
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = UIApplicationMain(a1, a2, v6, v8);

  objc_autoreleasePoolPop(v4);
  return v9;
}

void sub_100001EC8(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"kCACRepostEnabledStatusNotification" object:0];
}

void sub_1000021F4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Asset Download Failed: %@", &v2, 0xCu);
}

void sub_10000226C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected type for scene: %@", &v2, 0xCu);
}