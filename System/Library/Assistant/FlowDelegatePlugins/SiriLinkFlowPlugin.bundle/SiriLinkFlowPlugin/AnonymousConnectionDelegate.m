@interface AnonymousConnectionDelegate
- (BOOL)executor:(id)a3 shouldRunShowOutputAction:(id)a4;
- (void)executor:(LNActionExecutor *)a3 environmentForViewSnippetWithCompletion:(id)a4;
- (void)executor:(id)a3 didFinishWithResult:(id)a4 error:(id)a5;
- (void)executor:(id)a3 needsActionConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsAppProtectionUnlockWithCompletionHandler:(id)a4;
- (void)executor:(id)a3 needsChoiceWithRequest:(id)a4;
- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsContinueInAppWithRequest:(id)a4;
- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4;
- (void)executor:(id)a3 needsValueWithRequest:(id)a4;
- (void)executorWillLaunchApplicationInForeground:(id)a3;
@end

@implementation AnonymousConnectionDelegate

- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  AnonymousConnectionDelegate.executor(_:needsConfirmationWith:)();
}

- (void)executor:(id)a3 needsActionConfirmationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  AnonymousConnectionDelegate.executor(_:needsActionConfirmationWith:)();
}

- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  AnonymousConnectionDelegate.executor(_:needsDisambiguationWith:)();
}

- (void)executor:(id)a3 needsValueWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  AnonymousConnectionDelegate.executor(_:needsValueWith:)();
}

- (void)executor:(id)a3 didFinishWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  AnonymousConnectionDelegate.executor(_:didFinishWith:error:)();
}

- (void)executor:(LNActionExecutor *)a3 environmentForViewSnippetWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:), v7);
}

- (BOOL)executor:(id)a3 shouldRunShowOutputAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  AnonymousConnectionDelegate.executor(_:shouldRunShowOutputAction:)();

  return 0;
}

- (void)executor:(id)a3 needsContinueInAppWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  AnonymousConnectionDelegate.executor(_:needsContinueInAppWith:)();
}

- (void)executorWillLaunchApplicationInForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  AnonymousConnectionDelegate.executorWillLaunchApplication(inForeground:)();
}

- (void)executor:(id)a3 needsChoiceWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  AnonymousConnectionDelegate.executor(_:needsChoiceWith:)();
}

- (void)executor:(id)a3 needsAppProtectionUnlockWithCompletionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = self;
  AnonymousConnectionDelegate.executor(_:needsAppProtectionUnlockWithCompletionHandler:)();
}

@end