@interface AnonymousSiriWorkflowRunnerClientDelegate
- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6;
- (void)workflowRunnerClient:(id)a3 didStartActionWithIdentifier:(id)a4;
- (void)workflowRunnerClient:(id)a3 performSiriRequest:(id)a4 completionHandler:(id)a5;
@end

@implementation AnonymousSiriWorkflowRunnerClientDelegate

- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  v12 = a5;
  AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:didFinishRunningWorkflowWithOutput:error:cancelled:)();
}

- (void)workflowRunnerClient:(id)a3 performSiriRequest:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  *(swift_allocObject() + 16) = v8;
  v9 = a3;
  v10 = a4;
  v11 = self;
  AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:performSiriRequest:completionHandler:)();
}

- (void)workflowRunnerClient:(id)a3 didStartActionWithIdentifier:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:didStartActionWithIdentifier:)();
}

@end