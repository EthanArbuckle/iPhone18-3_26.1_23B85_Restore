void sub_100000CD0(id a1)
{
  v1 = +[IMSystemMonitor sharedInstance];
  [v1 _forceResumed];
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:1 forKey:@"UIDisableLegacyTextView"];

  IMSetEmbeddedTempDirectory();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = UIApplicationMain(a1, a2, 0, v7);

  objc_autoreleasePoolPop(v4);
  return v8;
}