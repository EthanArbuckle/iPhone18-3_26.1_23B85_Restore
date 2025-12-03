@interface AppleProxNotificationTTR
+ (id)notBefore;
+ (id)sharedInstance;
+ (void)cancelNotificationTTR;
+ (void)sendNotificationTTR;
+ (void)setNotBefore:(id)before;
- (AppleProxNotificationTTR)init;
- (void)cancelNotification;
- (void)processNotificationResponse:(unint64_t)response;
- (void)releaseNotification;
- (void)sendNotification;
@end

@implementation AppleProxNotificationTTR

+ (id)sharedInstance
{
  if (qword_19A98 != -1)
  {
    sub_A170();
  }

  v3 = qword_19A90;

  return v3;
}

+ (void)sendNotificationTTR
{
  sharedInstance = [self sharedInstance];
  [sharedInstance sendNotification];
}

+ (void)cancelNotificationTTR
{
  sharedInstance = [self sharedInstance];
  [sharedInstance cancelNotification];
}

+ (id)notBefore
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 dictionaryForKey:v4];

  v6 = [v5 objectForKeyedSubscript:@"NotBefore"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = +[NSDate distantPast];
  }

  v8 = v7;

  return v8;
}

+ (void)setNotBefore:(id)before
{
  beforeCopy = before;
  v4 = +[NSUserDefaults standardUserDefaults];
  v8 = @"NotBefore";
  v9 = beforeCopy;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 setObject:v5 forKey:v7];
}

- (AppleProxNotificationTTR)init
{
  v8.receiver = self;
  v8.super_class = AppleProxNotificationTTR;
  v2 = [(AppleProxNotificationTTR *)&v8 init];
  if (!v2)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = dispatch_queue_create("com.apple.hid.AppleProxSupport.TTR", 0);
  ttrQueue = v2->_ttrQueue;
  v2->_ttrQueue = v3;

  if (!v2->_ttrQueue)
  {
    v6 = LoggingProx();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_A184();
    }

    goto LABEL_7;
  }

  v5 = v2;
LABEL_8:

  return v5;
}

- (void)sendNotification
{
  if (MGGetBoolAnswer())
  {
    notBefore = [objc_opt_class() notBefore];
    v4 = +[NSDate now];
    v5 = [notBefore compare:v4];

    if (v5 == &dword_0 + 1)
    {
      v6 = LoggingProx();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_A204();
      }
    }

    else
    {
      v7 = objc_opt_class();
      v8 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
      [v7 setNotBefore:v8];

      if (![(AppleProxNotificationTTR *)self notification])
      {
        v9 = LoggingProx();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Sending UserNotification for TTR", buf, 2u);
        }

        ttrQueue = self->_ttrQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_21D4;
        block[3] = &unk_146A0;
        block[4] = self;
        dispatch_async(ttrQueue, block);
        goto LABEL_9;
      }

      v6 = LoggingProx();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_A1C4();
      }
    }

LABEL_9:
  }
}

- (void)cancelNotification
{
  v3 = LoggingProx();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Cancel UserNotification for TTR", buf, 2u);
  }

  ttrQueue = self->_ttrQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2544;
  block[3] = &unk_146A0;
  block[4] = self;
  dispatch_async(ttrQueue, block);
}

- (void)releaseNotification
{
  if (self->_source)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, self->_source, kCFRunLoopCommonModes);
    CFRelease(self->_source);
    self->_source = 0;
  }

  notification = self->_notification;
  if (notification)
  {
    CFRelease(notification);
    self->_notification = 0;
  }
}

- (void)processNotificationResponse:(unint64_t)response
{
  v5 = LoggingProx();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    responseCopy = response;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Processing UserNotification for TTR (%d)", buf, 8u);
  }

  ttrQueue = self->_ttrQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_26F0;
  v7[3] = &unk_146C8;
  v7[4] = self;
  v7[5] = response;
  dispatch_async(ttrQueue, v7);
}

@end