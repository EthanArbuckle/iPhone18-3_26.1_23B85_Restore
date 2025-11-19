@interface WFWaitForReadingListCompletionActionOperation
- (void)addCompletionHandlerIfRunning:(id)a3;
@end

@implementation WFWaitForReadingListCompletionActionOperation

- (void)addCompletionHandlerIfRunning:(id)a3
{
  v3 = a3;
  v4 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__WFWaitForReadingListCompletionActionOperation_addCompletionHandlerIfRunning___block_invoke;
  block[3] = &unk_278C22470;
  v7 = v3;
  v5 = v3;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

@end