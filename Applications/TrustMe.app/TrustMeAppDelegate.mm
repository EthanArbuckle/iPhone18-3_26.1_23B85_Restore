@interface TrustMeAppDelegate
- (TrustMeRotatingViewController)currentRemoteAlertController;
- (void)_dismissRemoteAlertController;
- (void)_killTimerFired;
- (void)_presentNextQueuedMessage;
- (void)_presentRemoteAlertWithInfo:(id)info replyContext:(id)context;
- (void)_queueMessage:(id)message withReplyContext:(id)context;
- (void)_scheduleTimer;
- (void)_sendResponse:(int)response;
- (void)_sheetControllerDidFinishDismissing;
- (void)_startCenter;
- (void)_trustInfoMessageReceived:(id)received userInfo:(id)info auditToken:(id *)token;
- (void)application:(id)application didFinishLaunchingSuspendedWithOptions:(id)options;
- (void)applicationWillTerminate:(id)terminate;
- (void)dealloc;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)trustCertificateViewController:(id)controller finishedWithReturnCode:(int)code;
@end

@implementation TrustMeAppDelegate

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:selfCopy];

  [(CPDistributedMessagingCenter *)selfCopy->_center unregisterForMessageName:0];
  [(NSTimer *)selfCopy->_killTimer invalidate];
  v3.receiver = selfCopy;
  v3.super_class = TrustMeAppDelegate;
  [(TrustMeAppDelegate *)&v3 dealloc];
}

- (void)_scheduleTimer
{
  v2 = [NSTimer scheduledTimerWithTimeInterval:self target:"_killTimerFired" selector:0 userInfo:0 repeats:5.0, a2];
  killTimer = self->_killTimer;
  self->_killTimer = v2;
}

- (void)_killTimerFired
{
  selfCopy = self;
  location[1] = a2;
  location[0] = *(&_CertUILogObjects + 2);
  v5 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v5;
    sub_100001060(v4);
    _os_log_impl(&_mh_execute_header, log, type, "Kill timer fired", v4, 2u);
  }

  objc_storeStrong(location, 0);
  [(TrustMeAppDelegate *)selfCopy _clearTimer];
  exit(0);
}

- (void)_sendResponse:(int)response
{
  selfCopy = self;
  v10 = a2;
  responseCopy = response;
  v4 = [NSDictionary alloc];
  v5 = [NSNumber numberWithInt:responseCopy];
  v7 = 0;
  v3 = [v4 initWithObjectsAndKeys:{kCertUITrustResponseKey, 0}];
  location = &v8;
  v8 = v3;

  [(CPDistributedMessagingCenter *)selfCopy->_center sendDelayedReply:selfCopy->_replyContext dictionary:v8];
  objc_storeStrong(location, v7);
}

- (void)_presentRemoteAlertWithInfo:(id)info replyContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v33 = 0;
  objc_storeStrong(&v33, context);
  v32 = _CertUILogObjects[2];
  v31 = 1;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    log = v32;
    type = v31;
    sub_100001060(v30);
    _os_log_impl(&_mh_execute_header, log, type, "Presenting remote alert", v30, 2u);
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&selfCopy->_replyContext, v33);
  v29 = [location[0] objectForKey:kCertUITrustTitleKey];
  v28 = [location[0] objectForKey:kCertUITrustIssuerKey];
  v27 = [location[0] objectForKey:kCertUITrustPurposeKey];
  v26 = [location[0] objectForKey:kCertUITrustExpirationKey];
  v12 = [location[0] objectForKey:kCertUITrustIsRootCertificateKey];
  bOOLValue = [v12 BOOLValue];

  v25 = bOOLValue;
  v24 = [location[0] objectForKey:kCertUITrustPropertiesKey];
  v14 = +[MCProfileConnection sharedConnection];
  v15 = [v14 effectiveBoolValueForSetting:MCFeatureUntrustedTLSPromptAllowed] != 2;

  v23 = v15;
  v22 = [location[0] objectForKey:kCertUITrustAllowCertificateTrustKey];
  if (v22)
  {
    bOOLValue2 = 0;
    if (v23)
    {
      bOOLValue2 = [v22 BOOLValue];
    }

    v23 = bOOLValue2 & 1;
  }

  v4 = [TrustCertificateViewController alloc];
  v21 = [v4 initWithTrustCertificateDelegate:selfCopy allowTrust:v23 & 1];
  LODWORD(v7) = 2;
  [v21 setCertificateInfo:v29 issuer:v28 purpose:v27 expiration:v26 isRoot:v25 & 1 properties:v24 action:v7];
  objc_storeStrong(&selfCopy->_trustController, v21);
  v8 = [SBSRemoteAlertDefinition alloc];
  v10 = +[NSBundle mainBundle];
  bundleIdentifier = [(NSBundle *)v10 bundleIdentifier];
  v20 = [v8 initWithServiceName:? viewControllerClassName:?];

  v5 = [SBSRemoteAlertHandle newHandleWithDefinition:v20 configurationContext:?];
  alertHandle = selfCopy->_alertHandle;
  selfCopy->_alertHandle = v5;

  [(SBSRemoteAlertHandle *)selfCopy->_alertHandle addObserver:selfCopy];
  v19 = objc_alloc_init(SBSRemoteAlertActivationContext);
  [v19 setReason:@"CertificateTrustApp"];
  [(SBSRemoteAlertHandle *)selfCopy->_alertHandle activateWithContext:v19];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)_dismissRemoteAlertController
{
  if (self->_trustController)
  {
    self->_remoteAlertControllerIsDismissing = 1;
    currentRemoteAlertController = [(TrustMeAppDelegate *)self currentRemoteAlertController];
    [(TrustMeRotatingViewController *)currentRemoteAlertController dismissSheetAndDismissAlert];

    objc_storeStrong(&self->_trustController, 0);
  }
}

- (void)_sheetControllerDidFinishDismissing
{
  if (self->_remoteAlertControllerIsDismissing)
  {
    self->_remoteAlertControllerIsDismissing = 0;
    if ([(NSMutableArray *)self->_queuedMessages count])
    {
      [(TrustMeAppDelegate *)self _presentNextQueuedMessage];
    }

    else
    {
      [(TrustMeAppDelegate *)self _scheduleTimer];
    }
  }
}

- (void)trustCertificateViewController:(id)controller finishedWithReturnCode:(int)code
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v5 = 0;
  if (code == 1)
  {
    v5 = 2;
  }

  [(TrustMeAppDelegate *)selfCopy _sendResponse:v5];
  objc_storeStrong(&selfCopy->_replyContext, 0);
  [(TrustMeAppDelegate *)selfCopy _dismissRemoteAlertController];
  objc_storeStrong(location, 0);
}

- (void)_presentNextQueuedMessage
{
  selfCopy = self;
  v3[1] = a2;
  v3[0] = [(NSMutableArray *)self->_queuedMessages objectAtIndex:?];
  [(NSMutableArray *)selfCopy->_queuedMessages removeObjectAtIndex:0];
  v2 = [(NSMutableArray *)selfCopy->_queuedReplyContexts objectAtIndex:0];
  [(NSMutableArray *)selfCopy->_queuedReplyContexts removeObjectAtIndex:0];
  [(TrustMeAppDelegate *)selfCopy _presentRemoteAlertWithInfo:v3[0] replyContext:v2];
  objc_storeStrong(&v2, 0);
  objc_storeStrong(v3, 0);
}

- (void)_queueMessage:(id)message withReplyContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v9 = 0;
  objc_storeStrong(&v9, context);
  if (!selfCopy->_queuedMessages)
  {
    v4 = objc_alloc_init(NSMutableArray);
    queuedMessages = selfCopy->_queuedMessages;
    selfCopy->_queuedMessages = v4;
  }

  if (selfCopy->_queuedReplyContexts)
  {
    v6 = objc_alloc_init(NSMutableArray);
    queuedReplyContexts = selfCopy->_queuedReplyContexts;
    selfCopy->_queuedReplyContexts = v6;
  }

  [(NSMutableArray *)selfCopy->_queuedMessages addObject:location[0]];
  [(NSMutableArray *)selfCopy->_queuedReplyContexts addObject:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_trustInfoMessageReceived:(id)received userInfo:(id)info auditToken:(id *)token
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, received);
  v13 = 0;
  objc_storeStrong(&v13, info);
  v12[1] = token;
  v12[0] = _CertUILogObjects[2];
  v11 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v12[0], OS_LOG_TYPE_INFO))
  {
    sub_100001C10(v17, location[0]);
    _os_log_impl(&_mh_execute_header, v12[0], v11, "Got message %@", v17, 0xCu);
  }

  objc_storeStrong(v12, 0);
  if ([location[0] isEqualToString:kCertUIPresentTrustInfoMessage])
  {
    [(TrustMeAppDelegate *)selfCopy _clearTimer];
    delayReply = [(CPDistributedMessagingCenter *)selfCopy->_center delayReply];
    if (selfCopy->_trustController)
    {
      [(TrustMeAppDelegate *)selfCopy _queueMessage:v13 withReplyContext:delayReply];
    }

    else
    {
      [(TrustMeAppDelegate *)selfCopy _presentRemoteAlertWithInfo:v13 replyContext:delayReply];
    }

    objc_storeStrong(&delayReply, 0);
    v8 = 0;
  }

  else
  {
    oslog = _CertUILogObjects[2];
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100001C10(v16, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, v9, "Ignoring message %@", v16, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v8 = 1;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_startCenter
{
  v2 = [CPDistributedMessagingCenter centerNamed:kCertUIMessagingCenterActualName];
  center = self->_center;
  self->_center = v2;

  [(CPDistributedMessagingCenter *)self->_center registerForMessageName:kCertUIPresentTrustInfoMessage target:self selector:"_trustInfoMessageReceived:userInfo:auditToken:"];
  [(CPDistributedMessagingCenter *)self->_center runServerOnCurrentThread];
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, deactivate);
  oslog = _CertUILogObjects[2];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100001E10(v6, selfCopy->_trustController != 0);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Alert deactivated while there was a trust controller already :%{BOOL}d", v6, 8u);
  }

  objc_storeStrong(&oslog, 0);
  if (selfCopy->_trustController)
  {
    exit(0);
  }

  objc_storeStrong(location, 0);
}

- (void)applicationWillTerminate:(id)terminate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, terminate);
  [(CPDistributedMessagingCenter *)selfCopy->_center unregisterForMessageName:0];
  objc_storeStrong(&selfCopy->_center, 0);
  [(TrustMeAppDelegate *)selfCopy _dismissRemoteAlertController];
  objc_storeStrong(location, 0);
}

- (void)application:(id)application didFinishLaunchingSuspendedWithOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, application);
  v6 = 0;
  objc_storeStrong(&v6, options);
  v5 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v5 addObserver:selfCopy selector:"_sheetControllerDidFinishDismissing" name:kCertificateViewControllerDismissedNotification object:0];

  [(TrustMeAppDelegate *)selfCopy _startCenter];
  [(TrustMeAppDelegate *)selfCopy _scheduleTimer];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (TrustMeRotatingViewController)currentRemoteAlertController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentRemoteAlertController);

  return WeakRetained;
}

@end