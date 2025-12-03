@interface RunShortcutIntent.RunnerClientDelegate
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled;
- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress;
@end

@implementation RunShortcutIntent.RunnerClientDelegate

- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress
{
  clientCopy = client;
  progressCopy = progress;
  selfCopy = self;
  sub_100026094(clientCopy, progress);
}

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled
{
  clientCopy = client;
  outputCopy = output;
  selfCopy = self;
  errorCopy = error;
  sub_100026540(clientCopy, output, error);
}

@end