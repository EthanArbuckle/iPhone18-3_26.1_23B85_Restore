@interface WebSheetAppDelegate
- (void)applicationDidFinishLaunching:(id)a3;
- (void)applicationWillTerminate:(id)a3;
- (void)handleCompleteNotificationWithRedirectURLtype:(int64_t)a3 result:(int64_t)a4;
- (void)handleDismissal;
- (void)handleWebNavigationWithCompletionHandler:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)scrapeCredentialsUsingPOSTMessage:(id)a3 loginURL:(id)a4;
@end

@implementation WebSheetAppDelegate

- (void)applicationDidFinishLaunching:(id)a3
{
  NSLog(@"applicationDidFinishLaunching", a2, a3);
  v4 = objc_alloc_init(WSWebSheetViewController);
  webSheetCont = self->_webSheetCont;
  self->_webSheetCont = v4;

  objc_storeStrong(&self->_showWebSheetContext.viewCont, self->_webSheetCont);
  objc_storeStrong(&self->_showWebSheetContext.delegate, self);
  if (!CNIAmTheWebsheetApp2())
  {
    NSLog(@"An error occurred when the WebSheet tried to check in.");
    v6 = UIApp;

    [v6 terminateWithSuccess];
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Alert deactivated - terminate", v4, 2u);
  }

  [(WSWebSheetViewController *)self->_webSheetCont dismissViewController:4];
}

- (void)applicationWillTerminate:(id)a3
{
  if (self->_openWiFiPreferencesOnExit)
  {
    v4 = +[LSApplicationWorkspace defaultWorkspace];
    v5 = [NSURL URLWithString:@"prefs:root=WIFI"];
    [v4 openSensitiveURL:v5 withOptions:0];
  }

  [(WSWebSheetViewController *)self->_webSheetCont dismissViewController:4];
  v6 = [(WebSheetAppDelegate *)self remotePresentationController];
  [v6 dismissPresentationController:1];
}

- (void)handleWebNavigationWithCompletionHandler:(id)a3
{
  v10 = a3;
  NSLog(@"handleWebNavigationWithCompletionHandler");
  v4 = [(WebSheetAppDelegate *)self probeCompleteCompletionHandler];

  if (!v4)
  {
    [(WebSheetAppDelegate *)self setProbeCompleteCompletionHandler:v10];
    NSLog(@"dispatching captive probe ...");
    v5 = self;
    v6 = [(WebSheetAppDelegate *)v5 interfaceName];
    v7 = CNProberCreate();

    if (v7)
    {
      RunLoopSource = CNProberCreateRunLoopSource();
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopCommonModes);
      CFRelease(RunLoopSource);
    }

    else
    {
      NSLog(@"CNProberCreate failed");
    }
  }
}

- (void)handleDismissal
{
  NSLog(@"handleDismissal", a2);
  v3 = [(WebSheetAppDelegate *)self remotePresentationController];
  [v3 dismissPresentationController:1];
}

- (void)handleCompleteNotificationWithRedirectURLtype:(int64_t)a3 result:(int64_t)a4
{
  if (self->_isCompleteNotificationHandled)
  {
    NSLog(@"complete notification is already handled", a2, a3, a4);
  }

  else
  {
    NSLog(@"handleCompleteNotificationWithRedirectURLtype, result: %ld, redireURLtype: %ld", a2, a4, a3);
    if ((a3 - 1) < 3)
    {
      v7 = a3;
    }

    else
    {
      v7 = 0;
    }

    valuePtr = v7;
    if ((a4 - 1) <= 6)
    {
      v8 = dword_100003BA8[a4 - 1];
    }

    keys = kCNWebSheetOptionsRedirectURLType;
    values = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CNWebsheetNotifyCompleteWithOptions();
    if (a4 == 7)
    {
      v9 = +[UIApplication sharedApplication];
      [v9 setOpenWiFiPreferencesOnExit:1];
    }

    self->_isCompleteNotificationHandled = 1;
  }
}

- (void)scrapeCredentialsUsingPOSTMessage:(id)a3 loginURL:(id)a4
{
  v6 = a4;
  v8 = a3;
  NSLog(@"scrapeCredentialsUsingPOSTMessage");
  interfaceName = self->_interfaceName;
  CNScrapeCredentials();
}

@end