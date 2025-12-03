@interface ConcurrentEvaluationService
- (ConcurrentEvaluationService)initWithManager:(id)manager replyQueue:(id)queue;
- (LACEvaluationRequestProcessor)processor;
@end

@implementation ConcurrentEvaluationService

- (ConcurrentEvaluationService)initWithManager:(id)manager replyQueue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = ConcurrentEvaluationService;
  v9 = [(ConcurrentEvaluationService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_manager, manager);
    objc_storeStrong(&v10->_replyQueue, queue);
  }

  return v10;
}

- (LACEvaluationRequestProcessor)processor
{
  v2 = [[LACConcurrentEvaluationController alloc] initWithManager:self->_manager replyQueue:self->_replyQueue];

  return v2;
}

@end