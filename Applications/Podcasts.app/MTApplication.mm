@interface MTApplication
+ (BOOL)handleTextViewURL:(id)l interaction:(int64_t)interaction;
+ (BOOL)localLibraryUpdatesDisabled;
+ (id)appController;
+ (id)sharedApplication;
- (MTApplication)init;
- (id)delegate;
- (void)completeOpenURLWithSuccess:(BOOL)success completionHandler:(id)handler;
- (void)dealloc;
- (void)openURL:(id)l options:(id)options completionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
@end

@implementation MTApplication

- (MTApplication)init
{
  v5.receiver = self;
  v5.super_class = MTApplication;
  v2 = [(MTApplication *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MTApplication *)v2 subscribeToLifecycleEventNotifications];
  }

  return v3;
}

- (id)delegate
{
  v4.receiver = self;
  v4.super_class = MTApplication;
  delegate = [(MTApplication *)&v4 delegate];

  return delegate;
}

+ (BOOL)localLibraryUpdatesDisabled
{
  v2 = +[UIApplication isRunningInStoreDemoMode];
  v3 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Local library updates disabled: %d", v5, 8u);
  }

  return v2;
}

+ (id)sharedApplication
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___MTApplication;
  v2 = objc_msgSendSuper2(&v4, "sharedApplication");

  return v2;
}

+ (id)appController
{
  sharedApplication = [self sharedApplication];
  delegate = [sharedApplication delegate];
  appController = [delegate appController];

  return appController;
}

+ (BOOL)handleTextViewURL:(id)l interaction:(int64_t)interaction
{
  if (!interaction)
  {
    lCopy = l;
    v6 = +[UIApplication sharedApplication];
    [v6 openURL:lCopy options:&__NSDictionary0__struct completionHandler:0];
  }

  return interaction != 0;
}

- (void)dealloc
{
  [(MTApplication *)self unsubscribeFromLifecycleEventNotifications];
  v3.receiver = self;
  v3.super_class = MTApplication;
  [(MTApplication *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(MTApplication *)self setStrongDelegate:delegateCopy];
  v5.receiver = self;
  v5.super_class = MTApplication;
  [(MTApplication *)&v5 setDelegate:delegateCopy];
}

- (void)openURL:(id)l options:(id)options completionHandler:(id)handler
{
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  delegate = [(MTApplication *)self delegate];
  v12 = [delegate canOpenURL:lCopy];

  if (v12)
  {
    scheme = [lCopy scheme];
    if ([scheme isEqualToString:@"http"])
    {
    }

    else
    {
      scheme2 = [lCopy scheme];
      v15 = [scheme2 isEqualToString:@"https"];

      if (!v15)
      {
        v17 = 0;
LABEL_10:
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10008A004;
        v21[3] = &unk_1004D9E08;
        v24 = v17;
        v21[4] = self;
        v22 = lCopy;
        v23 = handlerCopy;
        v20.receiver = self;
        v20.super_class = MTApplication;
        [(MTApplication *)&v20 openURL:v22 options:optionsCopy completionHandler:v21];

        goto LABEL_11;
      }
    }

    v16 = [optionsCopy objectForKeyedSubscript:UIApplicationOpenURLOptionUniversalLinksOnly];

    if (v16)
    {
      v17 = 1;
    }

    else
    {
      v18 = [optionsCopy mutableCopy];
      [v18 setObject:&__kCFBooleanTrue forKey:UIApplicationOpenURLOptionUniversalLinksOnly];

      v17 = 1;
      optionsCopy = v18;
    }

    goto LABEL_10;
  }

  v19.receiver = self;
  v19.super_class = MTApplication;
  [(MTApplication *)&v19 openURL:lCopy options:optionsCopy completionHandler:handlerCopy];
LABEL_11:
}

- (void)completeOpenURLWithSuccess:(BOOL)success completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  if (handlerCopy)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10008A11C;
    v7[3] = &unk_1004D9E30;
    v8 = handlerCopy;
    successCopy = success;
    [NSThread mainThread:v7];
  }
}

@end