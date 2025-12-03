@interface SystemIntentExecutorDelegate
- (void)executor:(id)executor didCompleteExecutionWithResult:(id)result error:(id)error;
- (void)executor:(void *)executor needsDisambiguationWithRequest:(void *)request;
@end

@implementation SystemIntentExecutorDelegate

- (void)executor:(void *)executor needsDisambiguationWithRequest:(void *)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_18F16B9EC();
}

- (void)executor:(id)executor didCompleteExecutionWithResult:(id)result error:(id)error
{
  executorCopy = executor;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_18F16B7F4(errorCopy, result, error);
}

@end