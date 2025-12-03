@interface AnonymousSiriWorkflowRunnerClientDelegate
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled;
- (void)workflowRunnerClient:(id)client didStartActionWithIdentifier:(id)identifier;
- (void)workflowRunnerClient:(id)client performSiriRequest:(id)request completionHandler:(id)handler;
@end

@implementation AnonymousSiriWorkflowRunnerClientDelegate

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled
{
  clientCopy = client;
  outputCopy = output;
  selfCopy = self;
  errorCopy = error;
  AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:didFinishRunningWorkflowWithOutput:error:cancelled:)();
}

- (void)workflowRunnerClient:(id)client performSiriRequest:(id)request completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v8;
  clientCopy = client;
  requestCopy = request;
  selfCopy = self;
  AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:performSiriRequest:completionHandler:)();
}

- (void)workflowRunnerClient:(id)client didStartActionWithIdentifier:(id)identifier
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  clientCopy = client;
  selfCopy = self;
  AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:didStartActionWithIdentifier:)();
}

@end