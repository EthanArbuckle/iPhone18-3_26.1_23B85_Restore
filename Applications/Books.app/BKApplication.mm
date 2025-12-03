@interface BKApplication
+ (int64_t)intValueForProcessArgument:(id)argument;
- (BOOL)isConnectedToInternet;
- (BOOL)runTest:(id)test options:(id)options;
- (id)_accessibilitySpeakThisPreferredHighlightColor;
- (id)_accessibilitySpeakThisPreferredUnderlineColor;
- (id)_mainViewControllerForTransaction:(id)transaction;
- (id)clientApplicationController;
- (id)osBuildVersion;
- (void)_accessibilitySetUpQuickSpeak;
- (void)_loadWebKitOverrides;
- (void)accessibilityInitialize;
- (void)prepareForDefaultImageSnapshotForScreen:(id)screen;
- (void)presentViewController:(id)controller transaction:(id)transaction animated:(BOOL)animated completion:(id)completion;
- (void)presentViewControllerOverMainCanvas:(id)canvas animated:(BOOL)animated completion:(id)completion;
@end

@implementation BKApplication

- (id)osBuildVersion
{
  if (![(NSString *)self->_osBuildVersion length])
  {
    v3 = +[UIDevice currentDevice];
    buildVersion = [v3 buildVersion];
    osBuildVersion = self->_osBuildVersion;
    self->_osBuildVersion = buildVersion;
  }

  v6 = self->_osBuildVersion;

  return v6;
}

+ (int64_t)intValueForProcessArgument:(id)argument
{
  argumentCopy = argument;
  v4 = +[NSProcessInfo processInfo];
  arguments = [v4 arguments];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = arguments;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    v12 = v9;
    v9 = &v8[v9];
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v6);
      }

      if ([*(*(&v17 + 1) + 8 * v11) isEqualToString:{argumentCopy, v17}])
      {
        break;
      }

      ++v12;
      if (v8 == ++v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (v12 >= [v6 count] - 1)
    {
      intValue = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_16;
    }

    v15 = [v6 objectAtIndex:v12 + 1];
    v14 = v15;
    if (v15)
    {
      intValue = [v15 intValue];
    }

    else
    {
      intValue = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
LABEL_9:
    intValue = 0x7FFFFFFFFFFFFFFFLL;
    v14 = v6;
  }

LABEL_16:
  return intValue;
}

- (void)presentViewController:(id)controller transaction:(id)transaction animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  transactionCopy = transaction;
  controllerCopy = controller;
  v12 = +[BKAppDelegate sceneManager];
  v13 = [v12 defaultSceneControllerForTransaction:transactionCopy];

  [v13 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)presentViewControllerOverMainCanvas:(id)canvas animated:(BOOL)animated completion:(id)completion
{
  canvasCopy = canvas;
  completionCopy = completion;
  v9 = +[BKAppDelegate sceneManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100074668;
  v12[3] = &unk_100A045A8;
  animatedCopy = animated;
  v13 = canvasCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = canvasCopy;
  [v9 requestPrimaryScene:v12];
}

- (id)_mainViewControllerForTransaction:(id)transaction
{
  transactionCopy = transaction;
  v4 = +[BKAppDelegate sceneManager];
  v5 = [v4 defaultSceneControllerForTransaction:transactionCopy];

  _mainViewControllerForModalPresenting = [v5 _mainViewControllerForModalPresenting];

  return _mainViewControllerForModalPresenting;
}

- (id)clientApplicationController
{
  objc_opt_class();
  v2 = BCGetUnsafeAppDelegateReference();
  v3 = BUDynamicCast();

  storeController = [v3 storeController];

  return storeController;
}

- (BOOL)isConnectedToInternet
{
  delegate = [(BKApplication *)self delegate];
  isConnectedToInternet = [delegate isConnectedToInternet];

  return isConnectedToInternet;
}

- (void)prepareForDefaultImageSnapshotForScreen:(id)screen
{
  screenCopy = screen;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"BKApplicationWillTakeSnapshot" object:self];

  v7.receiver = self;
  v7.super_class = BKApplication;
  [(BKApplication *)&v7 prepareForDefaultImageSnapshotForScreen:screenCopy];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007488C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)runTest:(id)test options:(id)options
{
  testCopy = test;
  optionsCopy = options;
  +[AETestDriver prewarm];
  +[BKTestDriver prewarm];
  +[BKTestDriverDispatcher prewarm];
  v8 = +[_TtC5Books9PPTRunner shared];
  v9 = +[AETestDriver shared];
  [v9 setTestStateProvider:v8];

  v10 = +[_TtC5Books9PPTRunner shared];
  v11 = +[BETestDriver shared];
  [v11 setTestStateProvider:v10];

  v12 = +[_TtC5Books9PPTRunner shared];
  LOBYTE(v11) = [v12 runTestWithName:testCopy options:optionsCopy];

  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = BKApplication;
    v13 = [(BKApplication *)&v15 runTest:testCopy options:optionsCopy];
  }

  return v13;
}

- (void)accessibilityInitialize
{
  v3 = +[IMCommonCoreAccessibility sharedInstance];
  [v3 loadAccessibilitySupport];

  IMAccessibilityInitialize();
  AEAccessibilityInitialize();
  qword_100B22DC8 = 0x1000000000000;
  qword_100B22DD0 = 0x400000000000;
  dword_100B22DD8 = 1007;
  if (CFPreferencesGetAppBooleanValue(@"ReportValidationErrors", @"com.apple.Accessibility", 0))
  {
    __IMAccessibilityValidateClass();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateClassMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateProtocolMethod();
    __IMAccessibilityValidateProtocolMethod();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateIvarType();
    __IMAccessibilityValidateIvarType();
    __IMAccessibilityValidateIvarType();
    __IMAccessibilityValidateIvarType();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateIvarType();
    __IMAccessibilityValidateIvarType();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateProtocolMethod();
    __IMAccessibilityValidateProtocolMethod();
    __IMAccessibilityValidateProtocolMethod();
    __IMAccessibilityValidateProtocolMethod();
    __IMAccessibilityValidateIvarType();
    __IMAccessibilityValidateIvarType();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateIvar();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateIvarType();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateInstanceMethod();
    __IMAccessibilityValidateIsKindOfClass();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
    __IMAccessibilityValidateInstanceMethodComplete();
  }

  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  IMAccessibilityInstallSafeCategory();
  v4 = [NSClassFromString(@"THAccessibility") imaxValueForKey:@"sharedInstance"];
  v5 = [v4 imaxValueForKey:@"loadAccessibilitySupport"];

  [(BKApplication *)self _loadWebKitOverrides];
}

- (void)_loadWebKitOverrides
{
  v2 = dispatch_time(0, 6000000000);

  dispatch_after(v2, &_dispatch_main_q, &stru_100A045C8);
}

- (void)_accessibilitySetUpQuickSpeak
{
  v2.receiver = self;
  v2.super_class = BKApplication;
  [(BKApplication *)&v2 _accessibilitySetUpQuickSpeak];
  +[THAccessibility2 loadQuickSpeakSupport];
}

- (id)_accessibilitySpeakThisPreferredHighlightColor
{
  v2 = +[IMCommonCoreAccessibility sharedInstance];
  preferredSpeakScreenHighlightColor = [v2 preferredSpeakScreenHighlightColor];

  return preferredSpeakScreenHighlightColor;
}

- (id)_accessibilitySpeakThisPreferredUnderlineColor
{
  v2 = +[IMCommonCoreAccessibility sharedInstance];
  preferredSpeakScreenUnderlineColor = [v2 preferredSpeakScreenUnderlineColor];

  return preferredSpeakScreenUnderlineColor;
}

@end