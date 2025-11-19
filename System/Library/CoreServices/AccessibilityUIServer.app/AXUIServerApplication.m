@interface AXUIServerApplication
- (AXUIServerApplication)init;
- (BOOL)_shouldAllowKeyboardArbiter;
- (CGRect)accessibilityFrame;
- (id)_accessibilityIsolatedWindows;
- (int64_t)_accessibilityOrientationForCompareGeometry;
- (void)_handlePlatformSpecificActions:(id)a3 forScene:(id)a4 withTransitionContext:(id)a5;
- (void)sendEvent:(id)a3;
@end

@implementation AXUIServerApplication

- (AXUIServerApplication)init
{
  v12.receiver = self;
  v12.super_class = AXUIServerApplication;
  v2 = [(AXUIServerApplication *)&v12 init];
  if ((AXDeviceIsAudioAccessory() & 1) == 0)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v3 = dispatch_get_global_queue(0, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100001E68;
    v6[3] = &unk_100010720;
    v6[4] = &v8;
    v7 = 1;
    dispatch_async(v3, v6);

    while (!*(v9 + 24))
    {
      CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 0);
    }

    v4 = +[AXUIServiceManager sharedServiceManager];
    _Block_object_dispose(&v8, 8);
    if (v4)
    {
      [v4 startLaunchAngel];
    }
  }

  return v2;
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v5 = +[AXUIEventManager sharedEventManager];
  v6 = [v5 _handleUIEvent:v4];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = AXUIServerApplication;
    [(AXUIServerApplication *)&v7 sendEvent:v4];
  }
}

- (void)_handlePlatformSpecificActions:(id)a3 forScene:(id)a4 withTransitionContext:(id)a5
{
  v5 = a3;
  v6 = +[_TtC21AccessibilityUIServer32AXUIServerGuestPassActionHandler shared];
  [v6 handleActions:v5];
}

- (BOOL)_shouldAllowKeyboardArbiter
{
  v3 = _AXSLiveSpeechEnabled();
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = AXUIServerApplication;
    LOBYTE(v3) = [(AXUIServerApplication *)&v5 _shouldAllowKeyboardArbiter];
  }

  return v3;
}

- (int64_t)_accessibilityOrientationForCompareGeometry
{
  if (AXInPreboardScenario())
  {
    return 1;
  }

  return [(AXUIServerApplication *)self activeInterfaceOrientation];
}

- (CGRect)accessibilityFrame
{
  v2 = +[UIScreen mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)_accessibilityIsolatedWindows
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_3;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10000230C;
  v21 = sub_10000231C;
  v22 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100002324;
  v15 = &unk_100010748;
  v16 = &v17;
  AXPerformSafeBlock();
  v2 = v18[5];
  _Block_object_dispose(&v17, 8);

  if (!v2)
  {
LABEL_3:
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_10000230C;
    v21 = sub_10000231C;
    v22 = 0;
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10000237C;
    v10 = &unk_100010748;
    v11 = &v17;
    AXPerformSafeBlock();
    v2 = v18[5];
    _Block_object_dispose(&v17, 8);
  }

  +[NSMutableArray array];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000023D4;
  v3 = v5[3] = &unk_100010770;
  v6 = v3;
  [v2 enumerateObjectsWithOptions:2 usingBlock:v5];

  return v3;
}

@end