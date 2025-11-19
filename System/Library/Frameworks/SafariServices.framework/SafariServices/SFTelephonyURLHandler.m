@interface SFTelephonyURLHandler
+ (id)sharedInstance;
- (BOOL)openURLForDialRequest:(id)a3 withScene:(id)a4 completionHandler:(id)a5;
- (SFTelephonyURLHandler)init;
- (void)addObserverForRequest:(id)a3;
- (void)removeObserverForRequest:(id)a3;
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

- (BOOL)openURLForDialRequest:(id)a3 withScene:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v10 = a5;
    v11 = [[SFTelephonyURLRequest alloc] initWithCompletionHandler:v10];

    v12 = [(SFTelephonyURLRequest *)v11 successNotificationName];
    [v8 setSuccessNotification:v12];

    v13 = [(SFTelephonyURLRequest *)v11 failureNotificationName];
    [v8 setFailureNotification:v13];

    [(SFTelephonyURLHandler *)self addObserverForRequest:v11];
  }

  v14 = [v8 URL];
  [v9 openURL:v14 options:0 completionHandler:0];

  return 1;
}

- (void)addObserverForRequest:(id)a3
{
  v4 = a3;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v6 = [v4 failureNotificationName];
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, dialRequestNotificationHandler, v6, 0, 1028);

  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  v8 = [v4 successNotificationName];
  CFNotificationCenterAddObserver(v7, self, dialRequestNotificationHandler, v8, 0, 1028);

  v9 = [(SFTelephonyURLHandler *)self pendingRequests];
  [v9 addObject:v4];
}

- (void)removeObserverForRequest:(id)a3
{
  v4 = a3;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v6 = [v4 successNotificationName];
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v6, 0);

  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  v8 = [v4 failureNotificationName];
  CFNotificationCenterRemoveObserver(v7, self, v8, 0);

  v9 = [(SFTelephonyURLHandler *)self pendingRequests];
  [v9 removeObject:v4];
}

@end