@interface TKHostKeychainHandler
+ (BOOL)isUnlocked;
- (TKHostKeychainHandler)init;
- (id)operations;
- (void)accessKeychainWithBlock:(id)a3;
- (void)dealloc;
@end

@implementation TKHostKeychainHandler

- (TKHostKeychainHandler)init
{
  v7.receiver = self;
  v7.super_class = TKHostKeychainHandler;
  v2 = [(TKHostKeychainHandler *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("mkb-keychain-monitor", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

+ (BOOL)isUnlocked
{
  if (+[TKHostKeychainOperations useSystemKeychain])
  {
    v7 = @"DeviceHandle";
    v8 = &off_10003A328;
    v2 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v2 = 0;
  }

  v3 = MKBGetDeviceLockState();
  if (v3)
  {
    v4 = v3 == 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;

  return v5;
}

- (void)accessKeychainWithBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000E368;
  v7[3] = &unk_100038C38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)dealloc
{
  notifyToken = self->_notifyToken;
  if (notifyToken)
  {
    notify_cancel(notifyToken);
  }

  v4.receiver = self;
  v4.super_class = TKHostKeychainHandler;
  [(TKHostKeychainHandler *)&v4 dealloc];
}

- (id)operations
{
  if (qword_1000433A8 != -1)
  {
    sub_10001F498();
  }

  v3 = qword_1000433A0;

  return v3;
}

@end