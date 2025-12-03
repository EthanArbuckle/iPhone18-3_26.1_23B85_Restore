@interface WFLocalNotificationAccessResource
+ (void)requestLocalNotificationsAuthorizationWithCompletionHandler:(id)handler;
- (void)makeAvailableWithUserInterface:(id)interface completionHandler:(id)handler;
@end

@implementation WFLocalNotificationAccessResource

+ (void)requestLocalNotificationsAuthorizationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = WFWorkflowUserNotificationCenter();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __97__WFLocalNotificationAccessResource_requestLocalNotificationsAuthorizationWithCompletionHandler___block_invoke;
  v6[3] = &unk_278C1CBC0;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [v4 requestAuthorizationWithOptions:6 completionHandler:v6];
}

uint64_t __97__WFLocalNotificationAccessResource_requestLocalNotificationsAuthorizationWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)makeAvailableWithUserInterface:(id)interface completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_opt_class();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__WFLocalNotificationAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke;
  v8[3] = &unk_278C20360;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [v6 requestLocalNotificationsAuthorizationWithCompletionHandler:v8];
}

void __86__WFLocalNotificationAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__WFLocalNotificationAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2;
  v8[3] = &unk_278C1BC70;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t __86__WFLocalNotificationAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) refreshAvailabilityWithNotification];
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

@end