@interface WFPocketAccessResource
- (PocketAPI)pocket;
- (id)localizedProtectedResourceDescriptionWithContext:(id)context;
- (id)pocketCallbackScheme;
- (id)username;
- (unint64_t)status;
- (void)logOut;
- (void)makeAvailableWithUserInterface:(id)interface completionHandler:(id)handler;
- (void)pocketAPI:(id)i hadLoginError:(id)error;
- (void)pocketAPI:(id)i requestedOpenURL:(id)l completionHandler:(id)handler;
- (void)pocketAPILoggedIn:(id)in;
- (void)refreshAvailabilityWithNotification:(BOOL)notification;
@end

@implementation WFPocketAccessResource

- (void)logOut
{
  pocket = [(WFPocketAccessResource *)self pocket];
  [pocket logout];

  [(WFResource *)self refreshAvailabilityWithForcedNotification];
}

- (id)username
{
  pocket = [(WFPocketAccessResource *)self pocket];
  username = [pocket username];

  return username;
}

- (void)pocketAPI:(id)i requestedOpenURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277CFC248];
  lCopy = l;
  sharedContext = [v7 sharedContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__WFPocketAccessResource_pocketAPI_requestedOpenURL_completionHandler___block_invoke;
  v11[3] = &unk_278C1CBC0;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [sharedContext openURL:lCopy completionHandler:v11];
}

- (void)pocketAPI:(id)i hadLoginError:(id)error
{
  errorCopy = error;
  loginHandler = [(WFPocketAccessResource *)self loginHandler];

  if (loginHandler)
  {
    loginHandler2 = [(WFPocketAccessResource *)self loginHandler];
    if ([errorCopy code] == 158)
    {
      v7 = 0;
    }

    else
    {
      v7 = errorCopy;
    }

    (loginHandler2)[2](loginHandler2, 0, v7);

    [(WFPocketAccessResource *)self setLoginHandler:0];
    [(WFResource *)self refreshAvailabilityWithForcedNotification];
  }
}

- (void)pocketAPILoggedIn:(id)in
{
  loginHandler = [(WFPocketAccessResource *)self loginHandler];

  if (loginHandler)
  {
    loginHandler2 = [(WFPocketAccessResource *)self loginHandler];
    loginHandler2[2](loginHandler2, 1, 0);

    [(WFPocketAccessResource *)self setLoginHandler:0];

    [(WFResource *)self refreshAvailabilityWithForcedNotification];
  }
}

- (void)refreshAvailabilityWithNotification:(BOOL)notification
{
  if (notification)
  {
    v3.receiver = self;
    v3.super_class = WFPocketAccessResource;
    [(WFAccessResource *)&v3 refreshAvailabilityWithNotification:1];
  }
}

- (void)makeAvailableWithUserInterface:(id)interface completionHandler:(id)handler
{
  handlerCopy = handler;
  userInterfaceType = [interface userInterfaceType];
  v7 = [userInterfaceType isEqualToString:*MEMORY[0x277CFC718]];

  if (v7 || ([MEMORY[0x277CFC248] sharedContext], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "applicationOrNil"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
  {
    wfUnsupportedUserInterfaceError = [MEMORY[0x277CCA9B8] wfUnsupportedUserInterfaceError];
    handlerCopy[2](handlerCopy, 0, wfUnsupportedUserInterfaceError);
  }

  else
  {
    [(WFPocketAccessResource *)self setLoginHandler:handlerCopy];
    wfUnsupportedUserInterfaceError = [(WFPocketAccessResource *)self pocket];
    [wfUnsupportedUserInterfaceError loginWithDelegate:self];
  }
}

- (unint64_t)status
{
  pocket = [(WFPocketAccessResource *)self pocket];
  if ([pocket isLoggedIn])
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)pocketCallbackScheme
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [@"36486-fbcaffd4ccb4dcdcce449a20" componentsSeparatedByString:@"-"];
  firstObject = [v3 firstObject];
  v5 = [v2 stringWithFormat:@"pocketapp%@", firstObject];

  return v5;
}

- (id)localizedProtectedResourceDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"your Pocket account", @"your Pocket account");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (PocketAPI)pocket
{
  pocket = self->_pocket;
  if (!pocket)
  {
    v4 = +[PocketAPI sharedAPI];
    [v4 setConsumerKey:@"36486-fbcaffd4ccb4dcdcce449a20"];

    v5 = +[PocketAPI sharedAPI];
    v6 = self->_pocket;
    self->_pocket = v5;

    mEMORY[0x277D7C548] = [MEMORY[0x277D7C548] sharedManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __32__WFPocketAccessResource_pocket__block_invoke;
    v10[3] = &unk_278C192C0;
    v10[4] = self;
    pocketCallbackScheme = [(WFPocketAccessResource *)self pocketCallbackScheme];
    [mEMORY[0x277D7C548] registerHandler:v10 forIncomingRequestsWithAction:0 scheme:pocketCallbackScheme];

    pocket = self->_pocket;
  }

  return pocket;
}

void __32__WFPocketAccessResource_pocket__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 pocket];
  v4 = [v3 URL];

  [v5 handleOpenURL:v4];
}

@end