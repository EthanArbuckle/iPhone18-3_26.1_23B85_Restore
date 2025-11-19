@interface ACSERetryController
- (ACSERetryController)initWithMaxNumberOfRetries:(unint64_t)a3 block:(id)a4;
- (BOOL)retryAfterSeconds:(unint64_t)a3;
@end

@implementation ACSERetryController

- (ACSERetryController)initWithMaxNumberOfRetries:(unint64_t)a3 block:(id)a4
{
  v12.receiver = self;
  v12.super_class = ACSERetryController;
  v5 = a4;
  v6 = [(ACSERetryController *)&v12 init];
  v6->_numberOfAttempts = 0;
  v6->_maxNumberOfRetries = a3;
  v7 = dispatch_queue_create("com.apple.icq.retrycontroller", 0);
  queue = v6->_queue;
  v6->_queue = v7;

  v9 = _Block_copy(v5);
  executionBlock = v6->_executionBlock;
  v6->_executionBlock = v9;

  return v6;
}

- (BOOL)retryAfterSeconds:(unint64_t)a3
{
  numberOfAttempts = self->_numberOfAttempts;
  maxNumberOfRetries = self->_maxNumberOfRetries;
  if (numberOfAttempts <= maxNumberOfRetries)
  {
    self->_numberOfAttempts = numberOfAttempts + 1;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy_;
    v11[4] = __Block_byref_object_dispose_;
    v12 = _Block_copy(self->_executionBlock);
    v7 = dispatch_time(0, 1000000000 * a3);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__ACSERetryController_retryAfterSeconds___block_invoke;
    block[3] = &unk_278BBCEA8;
    block[4] = v11;
    dispatch_after(v7, queue, block);
    _Block_object_dispose(v11, 8);
  }

  return numberOfAttempts <= maxNumberOfRetries;
}

@end