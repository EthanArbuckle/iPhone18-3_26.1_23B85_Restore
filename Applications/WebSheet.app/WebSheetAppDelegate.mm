@interface WebSheetAppDelegate
- (void)applicationDidFinishLaunching:(id)launching;
- (void)applicationWillTerminate:(id)terminate;
- (void)handleCompleteNotificationWithRedirectURLtype:(int64_t)ltype result:(int64_t)result;
- (void)handleDismissal;
- (void)handleWebNavigationWithCompletionHandler:(id)handler;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)scrapeCredentialsUsingPOSTMessage:(id)message loginURL:(id)l;
@end

@implementation WebSheetAppDelegate

- (void)applicationDidFinishLaunching:(id)launching
{
  NSLog(@"applicationDidFinishLaunching", a2, launching);
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

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Alert deactivated - terminate", v4, 2u);
  }

  [(WSWebSheetViewController *)self->_webSheetCont dismissViewController:4];
}

- (void)applicationWillTerminate:(id)terminate
{
  if (self->_openWiFiPreferencesOnExit)
  {
    v4 = +[LSApplicationWorkspace defaultWorkspace];
    v5 = [NSURL URLWithString:@"prefs:root=WIFI"];
    [v4 openSensitiveURL:v5 withOptions:0];
  }

  [(WSWebSheetViewController *)self->_webSheetCont dismissViewController:4];
  remotePresentationController = [(WebSheetAppDelegate *)self remotePresentationController];
  [remotePresentationController dismissPresentationController:1];
}

- (void)handleWebNavigationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  NSLog(@"handleWebNavigationWithCompletionHandler");
  probeCompleteCompletionHandler = [(WebSheetAppDelegate *)self probeCompleteCompletionHandler];

  if (!probeCompleteCompletionHandler)
  {
    [(WebSheetAppDelegate *)self setProbeCompleteCompletionHandler:handlerCopy];
    NSLog(@"dispatching captive probe ...");
    selfCopy = self;
    interfaceName = [(WebSheetAppDelegate *)selfCopy interfaceName];
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
  remotePresentationController = [(WebSheetAppDelegate *)self remotePresentationController];
  [remotePresentationController dismissPresentationController:1];
}

- (void)handleCompleteNotificationWithRedirectURLtype:(int64_t)ltype result:(int64_t)result
{
  if (self->_isCompleteNotificationHandled)
  {
    NSLog(@"complete notification is already handled", a2, ltype, result);
  }

  else
  {
    NSLog(@"handleCompleteNotificationWithRedirectURLtype, result: %ld, redireURLtype: %ld", a2, result, ltype);
    if ((ltype - 1) < 3)
    {
      ltypeCopy = ltype;
    }

    else
    {
      ltypeCopy = 0;
    }

    valuePtr = ltypeCopy;
    if ((result - 1) <= 6)
    {
      v8 = dword_100003BA8[result - 1];
    }

    keys = kCNWebSheetOptionsRedirectURLType;
    values = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CNWebsheetNotifyCompleteWithOptions();
    if (result == 7)
    {
      v9 = +[UIApplication sharedApplication];
      [v9 setOpenWiFiPreferencesOnExit:1];
    }

    self->_isCompleteNotificationHandled = 1;
  }
}

- (void)scrapeCredentialsUsingPOSTMessage:(id)message loginURL:(id)l
{
  lCopy = l;
  messageCopy = message;
  NSLog(@"scrapeCredentialsUsingPOSTMessage");
  interfaceName = self->_interfaceName;
  CNScrapeCredentials();
}

@end