@interface WFPinboardAccessResource
+ (id)pinboardPassword;
+ (id)pinboardToken;
+ (id)pinboardUsername;
+ (id)userInterfaceClasses;
- (id)localizedProtectedResourceDescriptionWithContext:(id)a3;
- (id)username;
- (unint64_t)status;
- (void)logOut;
- (void)makeAvailableWithRemoteInterface:(id)a3 completionHandler:(id)a4;
@end

@implementation WFPinboardAccessResource

+ (id)userInterfaceClasses
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CFC6F8];
  v6[0] = *MEMORY[0x277CFC710];
  v6[1] = v2;
  v7[0] = @"WFPinboardAccessResourceUserInterface";
  v7[1] = @"WFPinboardAccessResourceUserInterface";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)pinboardToken
{
  v2 = [a1 pinboardUsername];
  v3 = v2;
  if (v2)
  {
    v4 = WFPinboardGetSecretForUsername(v2, @"token");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)pinboardPassword
{
  v2 = [a1 pinboardUsername];
  v3 = v2;
  if (v2)
  {
    v4 = WFPinboardGetSecretForUsername(v2, @"password");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)pinboardUsername
{
  v2 = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  v3 = [v2 objectForKey:@"WFPinboardUsername"];

  return v3;
}

- (void)logOut
{
  v4 = [(WFPinboardAccessResource *)self username];
  v3 = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  [v3 removeObjectForKey:@"WFPinboardUsername"];

  WFPinboardStoreSecretForUsername(v4, 0, @"password");
  WFPinboardStoreSecretForUsername(v4, 0, @"token");
  [(WFResource *)self refreshAvailabilityWithNotification];
}

- (id)username
{
  v2 = objc_opt_class();

  return [v2 pinboardUsername];
}

- (void)makeAvailableWithRemoteInterface:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__WFPinboardAccessResource_makeAvailableWithRemoteInterface_completionHandler___block_invoke;
  v8[3] = &unk_278C20360;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 authorizeWithCompletionHandler:v8];
}

void __79__WFPinboardAccessResource_makeAvailableWithRemoteInterface_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 refreshAvailabilityWithForcedNotification];
  (*(*(a1 + 40) + 16))();
}

- (unint64_t)status
{
  v3 = [objc_opt_class() pinboardUsername];
  v4 = [v3 length];
  if (v4)
  {
    v2 = [objc_opt_class() pinboardPassword];
    if ([v2 length])
    {
      v5 = 4;
LABEL_8:

      goto LABEL_9;
    }
  }

  v6 = [objc_opt_class() pinboardToken];
  if ([v6 length])
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  if (v4)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (id)localizedProtectedResourceDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"your Pinboard account", @"your Pinboard account");
  v5 = [v3 localize:v4];

  return v5;
}

@end