@interface ADUnavailableTimerStore
- (void)dismissTimersWithURLs:(id)ls completionHandler:(id)handler;
- (void)getTimerWithCompletionHandler:(id)handler;
- (void)setTimer:(id)timer completionHandler:(id)handler;
@end

@implementation ADUnavailableTimerStore

- (void)dismissTimersWithURLs:(id)ls completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    _createUnavailableError = [(ADUnavailableTimerStore *)self _createUnavailableError];
    (*(handler + 2))(handlerCopy, _createUnavailableError);
  }
}

- (void)setTimer:(id)timer completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    _createUnavailableError = [(ADUnavailableTimerStore *)self _createUnavailableError];
    (*(handler + 2))(handlerCopy, _createUnavailableError);
  }
}

- (void)getTimerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _createUnavailableError = [(ADUnavailableTimerStore *)self _createUnavailableError];
  (*(handler + 2))(handlerCopy, 0, _createUnavailableError);
}

@end