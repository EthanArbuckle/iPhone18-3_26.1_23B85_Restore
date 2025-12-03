@interface _MXSerialQueue
+ (id)taskCompletionQueue;
+ (id)taskInsertionQueue;
- (_MXSerialQueue)init;
- (void)addTask:(id)task;
@end

@implementation _MXSerialQueue

- (void)addTask:(id)task
{
  taskCopy = task;
  if (taskCopy)
  {
    taskInsertionQueue = [objc_opt_class() taskInsertionQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __26___MXSerialQueue_addTask___block_invoke;
    v6[3] = &unk_1E76CDA20;
    v6[4] = self;
    v7 = taskCopy;
    dispatch_sync(taskInsertionQueue, v6);
  }
}

- (_MXSerialQueue)init
{
  v6.receiver = self;
  v6.super_class = _MXSerialQueue;
  v2 = [(_MXSerialQueue *)&v6 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    previousTaskGroup = v2->_previousTaskGroup;
    v2->_previousTaskGroup = v3;
  }

  return v2;
}

+ (id)taskCompletionQueue
{
  if (taskCompletionQueue_onceToken != -1)
  {
    dispatch_once(&taskCompletionQueue_onceToken, &__block_literal_global_3_40854);
  }

  v3 = taskCompletionQueue_queue;

  return v3;
}

+ (id)taskInsertionQueue
{
  if (taskInsertionQueue_onceToken != -1)
  {
    dispatch_once(&taskInsertionQueue_onceToken, &__block_literal_global_40857);
  }

  v3 = taskInsertionQueue_queue;

  return v3;
}

@end