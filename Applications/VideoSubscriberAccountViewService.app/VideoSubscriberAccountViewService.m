uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = UIApplicationMain(a1, a2, 0, 0);
  objc_autoreleasePoolPop(v4);
  return v5;
}