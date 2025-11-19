@interface WFCalendarAccessResource
- (void)makeAvailableWithUserInterface:(id)a3 completionHandler:(id)a4;
@end

@implementation WFCalendarAccessResource

- (void)makeAvailableWithUserInterface:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  WFClearWorkflowEventStore();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__WFCalendarAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke;
  v7[3] = &unk_278C22448;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __77__WFCalendarAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) refreshAvailabilityWithForcedNotification];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

@end