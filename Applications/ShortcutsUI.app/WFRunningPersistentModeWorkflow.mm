@interface WFRunningPersistentModeWorkflow
- (WFRunningPersistentModeWorkflow)initWithRunningContext:(id)a3 attribution:(id)a4 progressSubscriber:(id)a5;
- (void)updateWithProgress:(id)a3;
@end

@implementation WFRunningPersistentModeWorkflow

- (void)updateWithProgress:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"WFRunningPersistentModeWorkflow.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"progress"}];
  }

  progress = self->_progress;
  self->_progress = v5;
}

- (WFRunningPersistentModeWorkflow)initWithRunningContext:(id)a3 attribution:(id)a4 progressSubscriber:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"WFRunningPersistentModeWorkflow.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"attribution"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v17 = +[NSAssertionHandler currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"WFRunningPersistentModeWorkflow.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"runningContext"}];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_9:
  v19 = +[NSAssertionHandler currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"WFRunningPersistentModeWorkflow.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"progressSubscriber"}];

LABEL_4:
  v20.receiver = self;
  v20.super_class = WFRunningPersistentModeWorkflow;
  v13 = [(WFRunningPersistentModeWorkflow *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_runningContext, a3);
    objc_storeStrong(&v14->_attribution, a4);
    objc_storeStrong(&v14->_progressSubscriber, a5);
    v15 = v14;
  }

  return v14;
}

@end