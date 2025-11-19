_BYTE *sub_100001060(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t sub_100001C10(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_100001E10(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

uint64_t start(int a1, char **a2)
{
  context = objc_autoreleasePoolPush();
  CertUILoggingInitialize();
  v6 = UIApplicationMain(a1, a2, 0, @"TrustMeAppDelegate");
  objc_autoreleasePoolPop(context);
  return v6;
}

UIUserInterfaceIdiom sub_1000023DC()
{
  v2 = +[UIDevice currentDevice];
  v3 = 0;
  if (objc_opt_respondsToSelector())
  {
    v4 = +[UIDevice currentDevice];
    v3 = 1;
    v1 = [(UIDevice *)v4 userInterfaceIdiom];
  }

  else
  {
    v1 = UIUserInterfaceIdiomPhone;
  }

  if (v3)
  {
  }

  return v1;
}

void sub_1000026CC(id *a1)
{
  v1[2] = a1;
  v1[1] = a1;
  v1[0] = [a1[4] _remoteViewControllerProxy];
  [v1[0] dismiss];
  objc_storeStrong(v1, 0);
}