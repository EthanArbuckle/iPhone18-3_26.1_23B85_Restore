@interface ConcurrentEvaluationService
- (ConcurrentEvaluationService)initWithManager:(id)a3 replyQueue:(id)a4;
- (LACEvaluationRequestProcessor)processor;
@end

@implementation ConcurrentEvaluationService

- (ConcurrentEvaluationService)initWithManager:(id)a3 replyQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ConcurrentEvaluationService;
  v9 = [(ConcurrentEvaluationService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_manager, a3);
    objc_storeStrong(&v10->_replyQueue, a4);
  }

  return v10;
}

- (LACEvaluationRequestProcessor)processor
{
  v2 = [[LACConcurrentEvaluationController alloc] initWithManager:self->_manager replyQueue:self->_replyQueue];

  return v2;
}

@end