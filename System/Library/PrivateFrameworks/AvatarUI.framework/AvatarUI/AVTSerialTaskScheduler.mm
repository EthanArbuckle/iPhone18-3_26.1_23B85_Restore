@interface AVTSerialTaskScheduler
+ (id)fifoScheduler;
+ (id)fifoSchedulerWithEnvironment:(id)environment;
+ (id)lifoScheduler;
+ (id)lifoSchedulerWithEnvironment:(id)environment;
+ (id)nextTaskToRunForPriorityTasks:(id)tasks backlogTasks:(id)backlogTasks order:(int64_t)order;
- (AVTSerialTaskScheduler)initWithEnvironment:(id)environment order:(int64_t)order;
- (void)didCompleteTask:(id)task;
- (void)lowerTaskPriority:(id)priority;
- (void)performStateWork:(id)work;
- (void)scheduleTask:(id)task;
- (void)startTask:(id)task;
@end

@implementation AVTSerialTaskScheduler

+ (id)lifoScheduler
{
  defaultEnvironment = [MEMORY[0x1E698E330] defaultEnvironment];
  v4 = [self lifoSchedulerWithEnvironment:defaultEnvironment];

  return v4;
}

+ (id)fifoScheduler
{
  defaultEnvironment = [MEMORY[0x1E698E330] defaultEnvironment];
  v4 = [self fifoSchedulerWithEnvironment:defaultEnvironment];

  return v4;
}

+ (id)lifoSchedulerWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = [[self alloc] initWithEnvironment:environmentCopy order:1];

  return v5;
}

+ (id)fifoSchedulerWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = [[self alloc] initWithEnvironment:environmentCopy order:0];

  return v5;
}

- (AVTSerialTaskScheduler)initWithEnvironment:(id)environment order:(int64_t)order
{
  environmentCopy = environment;
  v16.receiver = self;
  v16.super_class = AVTSerialTaskScheduler;
  v7 = [(AVTSerialTaskScheduler *)&v16 init];
  if (v7)
  {
    array = [MEMORY[0x1E695DF70] array];
    priorityTasks = v7->_priorityTasks;
    v7->_priorityTasks = array;

    array2 = [MEMORY[0x1E695DF70] array];
    backlogTasks = v7->_backlogTasks;
    v7->_backlogTasks = array2;

    v7->_order = order;
    lockProvider = [environmentCopy lockProvider];
    v13 = (lockProvider)[2](lockProvider, "com.apple.AvatarUI.AVTLIFOScheduler.stateLock");
    stateLock = v7->_stateLock;
    v7->_stateLock = v13;
  }

  return v7;
}

- (void)performStateWork:(id)work
{
  workCopy = work;
  stateLock = [(AVTSerialTaskScheduler *)self stateLock];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AVTSerialTaskScheduler_performStateWork___block_invoke;
  v7[3] = &unk_1E7F3A8A8;
  v7[4] = self;
  v8 = workCopy;
  v6 = workCopy;
  dispatch_sync(stateLock, v7);
}

void __43__AVTSerialTaskScheduler_performStateWork___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) priorityTasks];
  v3 = [*(a1 + 32) backlogTasks];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)scheduleTask:(id)task
{
  taskCopy = task;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [taskCopy copy];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __39__AVTSerialTaskScheduler_scheduleTask___block_invoke;
  v10 = &unk_1E7F3BEA8;
  v6 = v5;
  v11 = v6;
  v12 = &v13;
  [(AVTSerialTaskScheduler *)self performStateWork:&v7];
  if (*(v14 + 24) == 1)
  {
    [(AVTSerialTaskScheduler *)self startTask:v6, v7, v8, v9, v10];
  }

  _Block_object_dispose(&v13, 8);
}

void __39__AVTSerialTaskScheduler_scheduleTask___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = MEMORY[0x1BFB0DE80](v5);
  [v6 addObject:v7];

  v8 = [v6 count];
  v9 = v8 == 1 && [v10 count] == 0;
  *(*(*(a1 + 40) + 8) + 24) = v9;
}

- (void)startTask:(id)task
{
  taskCopy = task;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __36__AVTSerialTaskScheduler_startTask___block_invoke;
  v9 = &unk_1E7F3B020;
  objc_copyWeak(&v11, &location);
  v5 = taskCopy;
  v10 = v5;
  taskCopy[2]();

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __36__AVTSerialTaskScheduler_startTask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didCompleteTask:*(a1 + 32)];
}

- (void)didCompleteTask:(id)task
{
  taskCopy = task;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__11;
  v13 = __Block_byref_object_dispose__11;
  v14 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__AVTSerialTaskScheduler_didCompleteTask___block_invoke;
  v6[3] = &unk_1E7F3BEF8;
  v5 = taskCopy;
  v7 = v5;
  v8 = &v9;
  v6[4] = self;
  [(AVTSerialTaskScheduler *)self performStateWork:v6];
  if (v10[5])
  {
    [(AVTSerialTaskScheduler *)self startTask:?];
  }

  _Block_object_dispose(&v9, 8);
}

void __42__AVTSerialTaskScheduler_didCompleteTask___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__AVTSerialTaskScheduler_didCompleteTask___block_invoke_2;
  v13[3] = &unk_1E7F3BED0;
  v14 = *(a1 + 40);
  v7 = MEMORY[0x1BFB0DE80](v13);
  v8 = (v7)[2](v7, v5);
  v9 = (v7)[2](v7, v6);
  if ((v8 & 1) != 0 || v9)
  {
    v10 = [objc_opt_class() nextTaskToRunForPriorityTasks:v5 backlogTasks:v6 order:{objc_msgSend(*(a1 + 32), "order")}];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

BOOL __42__AVTSerialTaskScheduler_didCompleteTask___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1BFB0DE80](*(a1 + 32));
  v5 = [v3 indexOfObject:v4];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 removeObjectAtIndex:v5];
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

void __40__AVTSerialTaskScheduler_cancelAllTasks__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 removeAllObjects];
  [v4 removeAllObjects];
}

- (void)lowerTaskPriority:(id)priority
{
  priorityCopy = priority;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__AVTSerialTaskScheduler_lowerTaskPriority___block_invoke;
  v6[3] = &unk_1E7F3BF40;
  v7 = priorityCopy;
  v5 = priorityCopy;
  [(AVTSerialTaskScheduler *)self performStateWork:v6];
}

void __44__AVTSerialTaskScheduler_lowerTaskPriority___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = MEMORY[0x1BFB0DE80](*(a1 + 32));
  v7 = [v10 indexOfObject:v6];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v10 objectAtIndexedSubscript:v7];
    [v10 removeObjectAtIndex:v7];
    v9 = MEMORY[0x1BFB0DE80](v8);
    [v5 addObject:v9];
  }
}

+ (id)nextTaskToRunForPriorityTasks:(id)tasks backlogTasks:(id)backlogTasks order:(int64_t)order
{
  tasksCopy = tasks;
  backlogTasksCopy = backlogTasks;
  if ([tasksCopy count])
  {
    v9 = tasksCopy;
  }

  else
  {
    v9 = backlogTasksCopy;
  }

  v10 = v9;
  if (![v10 count])
  {
    v12 = 0;
    goto LABEL_13;
  }

  if (order)
  {
    if (order != 1)
    {
      v13 = 0;
      goto LABEL_12;
    }

    lastObject = [v10 lastObject];
  }

  else
  {
    lastObject = [v10 firstObject];
  }

  v13 = lastObject;
LABEL_12:
  v12 = MEMORY[0x1BFB0DE80](v13);

LABEL_13:

  return v12;
}

@end