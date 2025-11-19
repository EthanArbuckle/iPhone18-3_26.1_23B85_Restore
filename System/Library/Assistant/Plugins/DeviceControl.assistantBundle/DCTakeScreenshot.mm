@interface DCTakeScreenshot
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation DCTakeScreenshot

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = os_log_create("com.apple.ace.devicecontrol", "DeviceControl");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1300(v7);
  }

  v8 = +[AXPISystemActionHelper sharedInstance];
  [v8 warm];

  [v6 dismissAssistantWithReason:4];
  v9 = dispatch_time(0, 700000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_EA4;
  block[3] = &unk_40C0;
  v10 = v7;
  v14 = v10;
  dispatch_after(v9, &_dispatch_main_q, block);
  if (v5)
  {
    v11 = objc_alloc_init(SACommandSucceeded);
    v12 = [v11 dictionary];
    v5[2](v5, v12);
  }
}

@end