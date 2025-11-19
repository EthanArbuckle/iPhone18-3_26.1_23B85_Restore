@interface WFEvernoteAccessResource
+ (ENSession)evernoteSession;
+ (id)userInterfaceClasses;
- (WFEvernoteAccessResource)initWithDefinition:(id)a3;
- (id)localizedProtectedResourceDescriptionWithContext:(id)a3;
- (id)username;
- (unint64_t)status;
- (void)dealloc;
- (void)logOut;
- (void)makeAvailableWithRemoteInterface:(id)a3 completionHandler:(id)a4;
@end

@implementation WFEvernoteAccessResource

- (void)logOut
{
  v2 = [objc_opt_class() evernoteSession];
  [v2 unauthenticate];
}

- (id)username
{
  v2 = [objc_opt_class() evernoteSession];
  v3 = [v2 userDisplayName];

  return v3;
}

- (void)makeAvailableWithRemoteInterface:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__WFEvernoteAccessResource_makeAvailableWithRemoteInterface_completionHandler___block_invoke;
  v8[3] = &unk_278C20360;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 authorizeWithCompletionHandler:v8];
}

void __79__WFEvernoteAccessResource_makeAvailableWithRemoteInterface_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 refreshAvailabilityWithForcedNotification];
  (*(*(a1 + 40) + 16))();
}

- (unint64_t)status
{
  v2 = [objc_opt_class() evernoteSession];
  if ([v2 isAuthenticated])
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)localizedProtectedResourceDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"your Evernote account", @"your Evernote account");
  v5 = [v3 localize:v4];

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"ENSessionDidUnauthenticateNotification" object:0];

  v4.receiver = self;
  v4.super_class = WFEvernoteAccessResource;
  [(WFAccessResource *)&v4 dealloc];
}

- (WFEvernoteAccessResource)initWithDefinition:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFEvernoteAccessResource;
  v3 = [(WFAccessResource *)&v7 initWithDefinition:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel_refreshAvailabilityWithNotification name:@"ENSessionDidUnauthenticateNotification" object:0];

    v5 = v3;
  }

  return v3;
}

+ (id)userInterfaceClasses
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CFC6F8];
  v6[0] = *MEMORY[0x277CFC710];
  v6[1] = v2;
  v7[0] = @"WFEvernoteAccessResourceUserInterface";
  v7[1] = @"WFEvernoteAccessResourceUserInterface";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (ENSession)evernoteSession
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__WFEvernoteAccessResource_evernoteSession__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (evernoteSession_onceToken != -1)
  {
    dispatch_once(&evernoteSession_onceToken, block);
  }

  v2 = evernoteSession_evernoteSession;

  return v2;
}

void __43__WFEvernoteAccessResource_evernoteSession__block_invoke(uint64_t a1)
{
  [ENSession setSharedSessionConsumerKey:@"team146" consumerSecret:@"893f90c98d2a27dd" optionalHost:0];
  v2 = +[ENSession sharedSession];
  v3 = evernoteSession_evernoteSession;
  evernoteSession_evernoteSession = v2;

  v4 = [MEMORY[0x277D7C548] sharedManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__WFEvernoteAccessResource_evernoteSession__block_invoke_2;
  v6[3] = &__block_descriptor_40_e33_v16__0__WFInterchangeURLRequest_8l;
  v7 = *(a1 + 32);
  v5 = [v7 evernoteCallbackScheme];
  [v4 registerHandler:v6 forIncomingRequestsWithAction:0 scheme:v5];
}

void __43__WFEvernoteAccessResource_evernoteSession__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 evernoteSession];
  v4 = [v3 URL];

  [v5 handleOpenURL:v4];
}

@end