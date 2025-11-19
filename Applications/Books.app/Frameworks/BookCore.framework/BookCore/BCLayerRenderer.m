@interface BCLayerRenderer
+ (id)sharedInstance;
- (BCLayerRenderer)init;
- (BOOL)_isAppExtension;
@end

@implementation BCLayerRenderer

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5600;
  block[3] = &unk_2C7CA8;
  block[4] = a1;
  if (qword_3420B8 != -1)
  {
    dispatch_once(&qword_3420B8, block);
  }

  v2 = qword_3420B0;

  return v2;
}

- (BCLayerRenderer)init
{
  v3 = [(BCLayerRenderer *)self _isAppExtension];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = +[UIApplication jsa_sharedApplicationIfNotExtension];
    v4 = [v5 applicationState] == &dword_0 + 2;
  }

  v9.receiver = self;
  v9.super_class = BCLayerRenderer;
  v6 = [(BCLayerRenderer *)&v9 initWithSuspended:v4];
  if ((v3 & 1) == 0)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"_applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];
    [v7 addObserver:v6 selector:"_applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
    [v7 addObserver:v6 selector:"_applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];
  }

  return v6;
}

- (BOOL)_isAppExtension
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundlePath];
  v4 = [v3 hasSuffix:@".appex"];

  return v4;
}

@end