@interface ADUnavailableTimerStore
- (void)dismissTimersWithURLs:(id)a3 completionHandler:(id)a4;
- (void)getTimerWithCompletionHandler:(id)a3;
- (void)setTimer:(id)a3 completionHandler:(id)a4;
@end

@implementation ADUnavailableTimerStore

- (void)dismissTimersWithURLs:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = [(ADUnavailableTimerStore *)self _createUnavailableError];
    (*(a4 + 2))(v6, v7);
  }
}

- (void)setTimer:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = [(ADUnavailableTimerStore *)self _createUnavailableError];
    (*(a4 + 2))(v6, v7);
  }
}

- (void)getTimerWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = [(ADUnavailableTimerStore *)self _createUnavailableError];
  (*(a3 + 2))(v5, 0, v6);
}

@end