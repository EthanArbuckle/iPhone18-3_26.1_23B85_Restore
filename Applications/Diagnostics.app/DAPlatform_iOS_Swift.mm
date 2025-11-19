@interface DAPlatform_iOS_Swift
+ (id)sharedInstance;
- (void)activateSimpleAlertWithTitle:(id)a3 message:(id)a4 defaultButtonName:(id)a5 cancelButtonName:(id)a6 handler:(id)a7;
@end

@implementation DAPlatform_iOS_Swift

+ (id)sharedInstance
{
  if (qword_100202E08[0] != -1)
  {
    sub_1001596F8();
  }

  v3 = qword_100202E00;

  return v3;
}

- (void)activateSimpleAlertWithTitle:(id)a3 message:(id)a4 defaultButtonName:(id)a5 cancelButtonName:(id)a6 handler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002DD24;
  v22[3] = &unk_1001BD730;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = dispatch_semaphore_create(0);
  v27 = v14;
  v28 = v15;
  v16 = v14;
  v17 = v15;
  v18 = v26;
  v19 = v13;
  v20 = v12;
  v21 = v11;
  dispatch_async(&_dispatch_main_q, v22);
  dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
}

@end