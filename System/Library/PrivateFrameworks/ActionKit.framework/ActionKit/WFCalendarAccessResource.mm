@interface WFCalendarAccessResource
- (void)makeAvailableWithUserInterface:(id)interface completionHandler:(id)handler;
@end

@implementation WFCalendarAccessResource

- (void)makeAvailableWithUserInterface:(id)interface completionHandler:(id)handler
{
  handlerCopy = handler;
  WFClearWorkflowEventStore();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__WFCalendarAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke;
  v7[3] = &unk_278C22448;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __77__WFCalendarAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) refreshAvailabilityWithForcedNotification];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

@end