uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(_LTDDaemon);
  [v1 run];

  objc_autoreleasePoolPop(v0);
  return 0;
}