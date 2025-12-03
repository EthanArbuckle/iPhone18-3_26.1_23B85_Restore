@interface DAPlatform_iOS_Swift
+ (id)sharedInstance;
- (void)activateSimpleAlertWithTitle:(id)title message:(id)message defaultButtonName:(id)name cancelButtonName:(id)buttonName handler:(id)handler;
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

- (void)activateSimpleAlertWithTitle:(id)title message:(id)message defaultButtonName:(id)name cancelButtonName:(id)buttonName handler:(id)handler
{
  titleCopy = title;
  messageCopy = message;
  nameCopy = name;
  buttonNameCopy = buttonName;
  handlerCopy = handler;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002DD24;
  v22[3] = &unk_1001BD730;
  v23 = titleCopy;
  v24 = messageCopy;
  v25 = nameCopy;
  v26 = dispatch_semaphore_create(0);
  v27 = buttonNameCopy;
  v28 = handlerCopy;
  v16 = buttonNameCopy;
  v17 = handlerCopy;
  v18 = v26;
  v19 = nameCopy;
  v20 = messageCopy;
  v21 = titleCopy;
  dispatch_async(&_dispatch_main_q, v22);
  dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
}

@end