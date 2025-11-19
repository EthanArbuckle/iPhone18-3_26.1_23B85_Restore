@interface MTApplication
+ (BOOL)handleTextViewURL:(id)a3 interaction:(int64_t)a4;
+ (BOOL)localLibraryUpdatesDisabled;
+ (id)appController;
+ (id)sharedApplication;
- (MTApplication)init;
- (id)delegate;
- (void)completeOpenURLWithSuccess:(BOOL)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)openURL:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)setDelegate:(id)a3;
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
  v2 = [(MTApplication *)&v4 delegate];

  return v2;
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
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___MTApplication;
  v2 = objc_msgSendSuper2(&v4, "sharedApplication");

  return v2;
}

+ (id)appController
{
  v2 = [a1 sharedApplication];
  v3 = [v2 delegate];
  v4 = [v3 appController];

  return v4;
}

+ (BOOL)handleTextViewURL:(id)a3 interaction:(int64_t)a4
{
  if (!a4)
  {
    v5 = a3;
    v6 = +[UIApplication sharedApplication];
    [v6 openURL:v5 options:&__NSDictionary0__struct completionHandler:0];
  }

  return a4 != 0;
}

- (void)dealloc
{
  [(MTApplication *)self unsubscribeFromLifecycleEventNotifications];
  v3.receiver = self;
  v3.super_class = MTApplication;
  [(MTApplication *)&v3 dealloc];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  [(MTApplication *)self setStrongDelegate:v4];
  v5.receiver = self;
  v5.super_class = MTApplication;
  [(MTApplication *)&v5 setDelegate:v4];
}

- (void)openURL:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MTApplication *)self delegate];
  v12 = [v11 canOpenURL:v8];

  if (v12)
  {
    v13 = [v8 scheme];
    if ([v13 isEqualToString:@"http"])
    {
    }

    else
    {
      v14 = [v8 scheme];
      v15 = [v14 isEqualToString:@"https"];

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
        v22 = v8;
        v23 = v10;
        v20.receiver = self;
        v20.super_class = MTApplication;
        [(MTApplication *)&v20 openURL:v22 options:v9 completionHandler:v21];

        goto LABEL_11;
      }
    }

    v16 = [v9 objectForKeyedSubscript:UIApplicationOpenURLOptionUniversalLinksOnly];

    if (v16)
    {
      v17 = 1;
    }

    else
    {
      v18 = [v9 mutableCopy];
      [v18 setObject:&__kCFBooleanTrue forKey:UIApplicationOpenURLOptionUniversalLinksOnly];

      v17 = 1;
      v9 = v18;
    }

    goto LABEL_10;
  }

  v19.receiver = self;
  v19.super_class = MTApplication;
  [(MTApplication *)&v19 openURL:v8 options:v9 completionHandler:v10];
LABEL_11:
}

- (void)completeOpenURLWithSuccess:(BOOL)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10008A11C;
    v7[3] = &unk_1004D9E30;
    v8 = v5;
    v9 = a3;
    [NSThread mainThread:v7];
  }
}

@end