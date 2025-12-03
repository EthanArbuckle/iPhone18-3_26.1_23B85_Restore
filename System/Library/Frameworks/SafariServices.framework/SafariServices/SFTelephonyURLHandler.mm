@interface SFTelephonyURLHandler
+ (id)sharedInstance;
- (BOOL)openURLForDialRequest:(id)request withScene:(id)scene completionHandler:(id)handler;
- (SFTelephonyURLHandler)init;
- (void)addObserverForRequest:(id)request;
- (void)removeObserverForRequest:(id)request;
@end

@implementation SFTelephonyURLHandler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SFTelephonyURLHandler sharedInstance];
  }

  v3 = sharedInstance_handler;

  return v3;
}

void __39__SFTelephonyURLHandler_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SFTelephonyURLHandler);
  v1 = sharedInstance_handler;
  sharedInstance_handler = v0;
}

- (SFTelephonyURLHandler)init
{
  v6.receiver = self;
  v6.super_class = SFTelephonyURLHandler;
  v2 = [(SFTelephonyURLHandler *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pendingRequests = v2->_pendingRequests;
    v2->_pendingRequests = v3;
  }

  return v2;
}

- (BOOL)openURLForDialRequest:(id)request withScene:(id)scene completionHandler:(id)handler
{
  requestCopy = request;
  sceneCopy = scene;
  if (handler)
  {
    handlerCopy = handler;
    v11 = [[SFTelephonyURLRequest alloc] initWithCompletionHandler:handlerCopy];

    successNotificationName = [(SFTelephonyURLRequest *)v11 successNotificationName];
    [requestCopy setSuccessNotification:successNotificationName];

    failureNotificationName = [(SFTelephonyURLRequest *)v11 failureNotificationName];
    [requestCopy setFailureNotification:failureNotificationName];

    [(SFTelephonyURLHandler *)self addObserverForRequest:v11];
  }

  v14 = [requestCopy URL];
  [sceneCopy openURL:v14 options:0 completionHandler:0];

  return 1;
}

- (void)addObserverForRequest:(id)request
{
  requestCopy = request;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  failureNotificationName = [requestCopy failureNotificationName];
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, dialRequestNotificationHandler, failureNotificationName, 0, 1028);

  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  successNotificationName = [requestCopy successNotificationName];
  CFNotificationCenterAddObserver(v7, self, dialRequestNotificationHandler, successNotificationName, 0, 1028);

  pendingRequests = [(SFTelephonyURLHandler *)self pendingRequests];
  [pendingRequests addObject:requestCopy];
}

- (void)removeObserverForRequest:(id)request
{
  requestCopy = request;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  successNotificationName = [requestCopy successNotificationName];
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, successNotificationName, 0);

  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  failureNotificationName = [requestCopy failureNotificationName];
  CFNotificationCenterRemoveObserver(v7, self, failureNotificationName, 0);

  pendingRequests = [(SFTelephonyURLHandler *)self pendingRequests];
  [pendingRequests removeObject:requestCopy];
}

@end