@interface DCShowHomeScreen
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation DCShowHomeScreen

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  helperCopy = helper;
  v7 = os_log_create("com.apple.ace.devicecontrol", "DeviceControl");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1388(v7);
  }

  v8 = +[AXPISystemActionHelper sharedInstance];
  [v8 warm];

  [helperCopy dismissAssistantWithReason:2];
  v9 = dispatch_time(0, 700000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1060;
  block[3] = &unk_40C0;
  v10 = v7;
  v14 = v10;
  dispatch_after(v9, &_dispatch_main_q, block);
  if (completionCopy)
  {
    v11 = objc_alloc_init(SACommandSucceeded);
    dictionary = [v11 dictionary];
    completionCopy[2](completionCopy, dictionary);
  }
}

@end