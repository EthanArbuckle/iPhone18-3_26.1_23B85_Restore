@interface AnonymousConnectionDelegate
- (BOOL)executor:(id)executor shouldRunShowOutputAction:(id)action;
- (void)executor:(LNActionExecutor *)executor environmentForViewSnippetWithCompletion:(id)completion;
- (void)executor:(id)executor didFinishWithResult:(id)result error:(id)error;
- (void)executor:(id)executor needsActionConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsAppProtectionUnlockWithCompletionHandler:(id)handler;
- (void)executor:(id)executor needsChoiceWithRequest:(id)request;
- (void)executor:(id)executor needsConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsContinueInAppWithRequest:(id)request;
- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request;
- (void)executor:(id)executor needsValueWithRequest:(id)request;
- (void)executorWillLaunchApplicationInForeground:(id)foreground;
@end

@implementation AnonymousConnectionDelegate

- (void)executor:(id)executor needsConfirmationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  AnonymousConnectionDelegate.executor(_:needsConfirmationWith:)();
}

- (void)executor:(id)executor needsActionConfirmationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  AnonymousConnectionDelegate.executor(_:needsActionConfirmationWith:)();
}

- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  AnonymousConnectionDelegate.executor(_:needsDisambiguationWith:)();
}

- (void)executor:(id)executor needsValueWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  AnonymousConnectionDelegate.executor(_:needsValueWith:)();
}

- (void)executor:(id)executor didFinishWithResult:(id)result error:(id)error
{
  executorCopy = executor;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  AnonymousConnectionDelegate.executor(_:didFinishWith:error:)();
}

- (void)executor:(LNActionExecutor *)executor environmentForViewSnippetWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = executor;
  v7[3] = v6;
  v7[4] = self;
  executorCopy = executor;
  selfCopy = self;

  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:), v7);
}

- (BOOL)executor:(id)executor shouldRunShowOutputAction:(id)action
{
  executorCopy = executor;
  actionCopy = action;
  selfCopy = self;
  AnonymousConnectionDelegate.executor(_:shouldRunShowOutputAction:)();

  return 0;
}

- (void)executor:(id)executor needsContinueInAppWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  AnonymousConnectionDelegate.executor(_:needsContinueInAppWith:)();
}

- (void)executorWillLaunchApplicationInForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  AnonymousConnectionDelegate.executorWillLaunchApplication(inForeground:)();
}

- (void)executor:(id)executor needsChoiceWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  AnonymousConnectionDelegate.executor(_:needsChoiceWith:)();
}

- (void)executor:(id)executor needsAppProtectionUnlockWithCompletionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v6;
  executorCopy = executor;
  selfCopy = self;
  AnonymousConnectionDelegate.executor(_:needsAppProtectionUnlockWithCompletionHandler:)();
}

@end