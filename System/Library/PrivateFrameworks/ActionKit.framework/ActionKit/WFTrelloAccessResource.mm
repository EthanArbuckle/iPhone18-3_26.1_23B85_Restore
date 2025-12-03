@interface WFTrelloAccessResource
+ (id)userInterfaceClasses;
- (void)makeAvailableWithRemoteInterface:(id)interface completionHandler:(id)handler;
@end

@implementation WFTrelloAccessResource

+ (id)userInterfaceClasses
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CFC6F8];
  v6[0] = *MEMORY[0x277CFC710];
  v6[1] = v2;
  v7[0] = @"WFTrelloAccessResourceUserInterface";
  v7[1] = @"WFTrelloAccessResourceUserInterface";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)makeAvailableWithRemoteInterface:(id)interface completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__WFTrelloAccessResource_makeAvailableWithRemoteInterface_completionHandler___block_invoke;
  v8[3] = &unk_278C20360;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [interface authorizeWithCompletionHandler:v8];
}

void __77__WFTrelloAccessResource_makeAvailableWithRemoteInterface_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 refreshAvailabilityWithForcedNotification];
  (*(*(a1 + 40) + 16))();
}

@end