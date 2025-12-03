@interface RemoteAppIntentsActor.PerformActionExecutorDelegate
- (void)executor:(id)executor needsActionConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsChoiceWithRequest:(id)request;
- (void)executor:(id)executor needsConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsContinueInAppWithRequest:(id)request;
- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request;
- (void)executor:(id)executor needsValueWithRequest:(id)request;
@end

@implementation RemoteAppIntentsActor.PerformActionExecutorDelegate

- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_221A6A6A4(executorCopy, requestCopy, sub_221A5F368);
}

- (void)executor:(id)executor needsChoiceWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_221A6A6A4(executorCopy, requestCopy, sub_221A5F804);
}

- (void)executor:(id)executor needsValueWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_221A6A6A4(executorCopy, requestCopy, sub_221A5F368);
}

- (void)executor:(id)executor needsConfirmationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_221A6A6A4(executorCopy, requestCopy, sub_221A5F368);
}

- (void)executor:(id)executor needsActionConfirmationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_221A6A6A4(executorCopy, requestCopy, sub_221A5F368);
}

- (void)executor:(id)executor needsContinueInAppWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_221A6A6A4(executorCopy, requestCopy, sub_221A5F368);
}

@end