@interface RunShortcutIntent.RunnerClientDelegate
- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6;
- (void)workflowRunnerClient:(id)a3 didStartRunningWorkflowWithProgress:(id)a4;
@end

@implementation RunShortcutIntent.RunnerClientDelegate

- (void)workflowRunnerClient:(id)a3 didStartRunningWorkflowWithProgress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100026094(v6, a4);
}

- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  v12 = a5;
  sub_100026540(v9, a4, a5);
}

@end