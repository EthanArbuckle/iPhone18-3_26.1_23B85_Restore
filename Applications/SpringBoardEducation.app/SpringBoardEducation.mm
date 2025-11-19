uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}

void sub_100003B64(uint64_t a1, unsigned int a2)
{
  v7 = objc_alloc_init(BSMutableSettings);
  [v7 setFlag:a2 forSetting:0];
  v4 = [*(a1 + 32) actions];
  v5 = [v4 anyObject];
  v6 = [BSActionResponse responseWithInfo:v7];
  [v5 sendResponse:v6];

  [*(a1 + 40) deactivate];
}

void sub_100003C1C(uint64_t a1, uint64_t a2)
{
  v7 = objc_alloc_init(BSMutableSettings);
  if (a2 != 2)
  {
    [v7 setFlag:a2 == 1 forSetting:1];
  }

  v4 = [*(a1 + 32) actions];
  v5 = [v4 anyObject];
  v6 = [BSActionResponse responseWithInfo:v7];
  [v5 sendResponse:v6];

  [*(a1 + 40) deactivate];
}