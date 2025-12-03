@interface CLBBrightnessManager
+ (id)sharedInstance;
- (CLBBrightnessManager)init;
- (void)releaseTransaction;
- (void)setBrightness:(float)brightness;
- (void)startTransactionIfNeeded;
@end

@implementation CLBBrightnessManager

+ (id)sharedInstance
{
  if (qword_100331038 != -1)
  {
    sub_100283A44();
  }

  v3 = qword_100331030;

  return v3;
}

- (CLBBrightnessManager)init
{
  v5.receiver = self;
  v5.super_class = CLBBrightnessManager;
  v2 = [(CLBBrightnessManager *)&v5 init];
  if (v2)
  {
    BKSDisplayBrightnessGetCurrent();
    v2->_brightness = v3;
  }

  return v2;
}

- (void)setBrightness:(float)brightness
{
  v5 = qword_100331040;
  v6 = +[CLFLog commonLog];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      brightnessCopy = brightness;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting brightness %f", &v9, 0xCu);
    }

    brightnessCopy2 = 1.0;
    if (brightness <= 1.0)
    {
      brightnessCopy2 = brightness;
    }

    if (brightnessCopy2 <= 0.1)
    {
      brightnessCopy2 = 0.1;
    }

    self->_brightness = brightnessCopy2;
    BKSDisplayBrightnessSet();
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100283A58(v7);
    }
  }
}

- (void)startTransactionIfNeeded
{
  if (!qword_100331040)
  {
    v2 = +[CLFLog commonLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Creating brightness transaction", v3, 2u);
    }

    qword_100331040 = BKSDisplayBrightnessTransactionCreate();
  }
}

- (void)releaseTransaction
{
  if (qword_100331040)
  {
    v2 = +[CLFLog commonLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Releasing brightness transaction", v3, 2u);
    }

    CFRelease(qword_100331040);
    qword_100331040 = 0;
  }
}

@end