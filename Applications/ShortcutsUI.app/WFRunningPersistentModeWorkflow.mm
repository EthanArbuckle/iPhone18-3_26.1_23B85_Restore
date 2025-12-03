@interface WFRunningPersistentModeWorkflow
- (WFRunningPersistentModeWorkflow)initWithRunningContext:(id)context attribution:(id)attribution progressSubscriber:(id)subscriber;
- (void)updateWithProgress:(id)progress;
@end

@implementation WFRunningPersistentModeWorkflow

- (void)updateWithProgress:(id)progress
{
  progressCopy = progress;
  if (!progressCopy)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"WFRunningPersistentModeWorkflow.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"progress"}];
  }

  progress = self->_progress;
  self->_progress = progressCopy;
}

- (WFRunningPersistentModeWorkflow)initWithRunningContext:(id)context attribution:(id)attribution progressSubscriber:(id)subscriber
{
  contextCopy = context;
  attributionCopy = attribution;
  subscriberCopy = subscriber;
  if (contextCopy)
  {
    if (attributionCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"WFRunningPersistentModeWorkflow.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"attribution"}];

    if (subscriberCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v17 = +[NSAssertionHandler currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"WFRunningPersistentModeWorkflow.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"runningContext"}];

  if (!attributionCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (subscriberCopy)
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
    objc_storeStrong(&v13->_runningContext, context);
    objc_storeStrong(&v14->_attribution, attribution);
    objc_storeStrong(&v14->_progressSubscriber, subscriber);
    v15 = v14;
  }

  return v14;
}

@end