@interface WFPocketAccessResource
- (PocketAPI)pocket;
- (id)localizedProtectedResourceDescriptionWithContext:(id)a3;
- (id)pocketCallbackScheme;
- (id)username;
- (unint64_t)status;
- (void)logOut;
- (void)makeAvailableWithUserInterface:(id)a3 completionHandler:(id)a4;
- (void)pocketAPI:(id)a3 hadLoginError:(id)a4;
- (void)pocketAPI:(id)a3 requestedOpenURL:(id)a4 completionHandler:(id)a5;
- (void)pocketAPILoggedIn:(id)a3;
- (void)refreshAvailabilityWithNotification:(BOOL)a3;
@end

@implementation WFPocketAccessResource

- (void)logOut
{
  v3 = [(WFPocketAccessResource *)self pocket];
  [v3 logout];

  [(WFResource *)self refreshAvailabilityWithForcedNotification];
}

- (id)username
{
  v2 = [(WFPocketAccessResource *)self pocket];
  v3 = [v2 username];

  return v3;
}

- (void)pocketAPI:(id)a3 requestedOpenURL:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = MEMORY[0x277CFC248];
  v8 = a4;
  v9 = [v7 sharedContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__WFPocketAccessResource_pocketAPI_requestedOpenURL_completionHandler___block_invoke;
  v11[3] = &unk_278C1CBC0;
  v12 = v6;
  v10 = v6;
  [v9 openURL:v8 completionHandler:v11];
}

- (void)pocketAPI:(id)a3 hadLoginError:(id)a4
{
  v8 = a4;
  v5 = [(WFPocketAccessResource *)self loginHandler];

  if (v5)
  {
    v6 = [(WFPocketAccessResource *)self loginHandler];
    if ([v8 code] == 158)
    {
      v7 = 0;
    }

    else
    {
      v7 = v8;
    }

    (v6)[2](v6, 0, v7);

    [(WFPocketAccessResource *)self setLoginHandler:0];
    [(WFResource *)self refreshAvailabilityWithForcedNotification];
  }
}

- (void)pocketAPILoggedIn:(id)a3
{
  v4 = [(WFPocketAccessResource *)self loginHandler];

  if (v4)
  {
    v5 = [(WFPocketAccessResource *)self loginHandler];
    v5[2](v5, 1, 0);

    [(WFPocketAccessResource *)self setLoginHandler:0];

    [(WFResource *)self refreshAvailabilityWithForcedNotification];
  }
}

- (void)refreshAvailabilityWithNotification:(BOOL)a3
{
  if (a3)
  {
    v3.receiver = self;
    v3.super_class = WFPocketAccessResource;
    [(WFAccessResource *)&v3 refreshAvailabilityWithNotification:1];
  }
}

- (void)makeAvailableWithUserInterface:(id)a3 completionHandler:(id)a4
{
  v11 = a4;
  v6 = [a3 userInterfaceType];
  v7 = [v6 isEqualToString:*MEMORY[0x277CFC718]];

  if (v7 || ([MEMORY[0x277CFC248] sharedContext], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "applicationOrNil"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
  {
    v10 = [MEMORY[0x277CCA9B8] wfUnsupportedUserInterfaceError];
    v11[2](v11, 0, v10);
  }

  else
  {
    [(WFPocketAccessResource *)self setLoginHandler:v11];
    v10 = [(WFPocketAccessResource *)self pocket];
    [v10 loginWithDelegate:self];
  }
}

- (unint64_t)status
{
  v2 = [(WFPocketAccessResource *)self pocket];
  if ([v2 isLoggedIn])
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
  v4 = [v3 firstObject];
  v5 = [v2 stringWithFormat:@"pocketapp%@", v4];

  return v5;
}

- (id)localizedProtectedResourceDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"your Pocket account", @"your Pocket account");
  v5 = [v3 localize:v4];

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

    v7 = [MEMORY[0x277D7C548] sharedManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __32__WFPocketAccessResource_pocket__block_invoke;
    v10[3] = &unk_278C192C0;
    v10[4] = self;
    v8 = [(WFPocketAccessResource *)self pocketCallbackScheme];
    [v7 registerHandler:v10 forIncomingRequestsWithAction:0 scheme:v8];

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