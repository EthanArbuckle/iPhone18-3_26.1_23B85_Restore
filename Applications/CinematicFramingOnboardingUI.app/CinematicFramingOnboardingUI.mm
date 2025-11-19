void sub_1000014B4(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxyWithErrorHandler:&stru_1000081C0];
  [v1 invalidate];
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}