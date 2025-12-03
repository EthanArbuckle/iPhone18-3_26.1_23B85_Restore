@interface WFWaitForReadingListCompletionActionOperation
- (void)addCompletionHandlerIfRunning:(id)running;
@end

@implementation WFWaitForReadingListCompletionActionOperation

- (void)addCompletionHandlerIfRunning:(id)running
{
  runningCopy = running;
  v4 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__WFWaitForReadingListCompletionActionOperation_addCompletionHandlerIfRunning___block_invoke;
  block[3] = &unk_278C22470;
  v7 = runningCopy;
  v5 = runningCopy;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

@end