void start()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  [[[SRAppHelperService alloc] initWithQueue:dispatch_queue_create("com.apple.SensorKitAppHelper.main" resume];
  dispatch_main();
}