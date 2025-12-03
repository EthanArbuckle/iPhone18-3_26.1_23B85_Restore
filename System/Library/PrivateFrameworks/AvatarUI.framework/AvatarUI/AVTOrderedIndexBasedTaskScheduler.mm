@interface AVTOrderedIndexBasedTaskScheduler
+ (id)indexesForReadyTasksToRunGivenScheduledTasks:(id)tasks order:(id)order readyTasks:(id)readyTasks readyRowIndex:(id)index;
+ (id)rowBaseIndexForIndex:(id)index;
- (AVTOrderedIndexBasedTaskScheduler)initWithEnvironment:(id)environment;
- (void)cancelTask:(id)task;
- (void)performStateWork:(id)work;
- (void)scheduleTask:(id)task forIndex:(unint64_t)index;
- (void)taskReady:(id)ready forIndex:(unint64_t)index;
@end

@implementation AVTOrderedIndexBasedTaskScheduler

- (AVTOrderedIndexBasedTaskScheduler)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v16.receiver = self;
  v16.super_class = AVTOrderedIndexBasedTaskScheduler;
  v5 = [(AVTOrderedIndexBasedTaskScheduler *)&v16 init];
  if (v5)
  {
    lockProvider = [environmentCopy lockProvider];
    v7 = (lockProvider)[2](lockProvider, "com.apple.AvatarUI.AVTOrderedIndexBasedScheduler.stateLock");
    stateLock = v5->_stateLock;
    v5->_stateLock = v7;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    scheduledTasks = v5->_scheduledTasks;
    v5->_scheduledTasks = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    readyTasks = v5->_readyTasks;
    v5->_readyTasks = dictionary2;

    array = [MEMORY[0x1E695DF70] array];
    scheduledTasksOrder = v5->_scheduledTasksOrder;
    v5->_scheduledTasksOrder = array;
  }

  return v5;
}

- (void)performStateWork:(id)work
{
  workCopy = work;
  stateLock = [(AVTOrderedIndexBasedTaskScheduler *)self stateLock];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__AVTOrderedIndexBasedTaskScheduler_performStateWork___block_invoke;
  v7[3] = &unk_1E7F3A8A8;
  v7[4] = self;
  v8 = workCopy;
  v6 = workCopy;
  dispatch_sync(stateLock, v7);
}

void __54__AVTOrderedIndexBasedTaskScheduler_performStateWork___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) scheduledTasks];
  v3 = [*(a1 + 32) scheduledTasksOrder];
  v4 = [*(a1 + 32) readyTasks];
  (*(v2 + 16))(v2, v5, v3, v4);
}

- (void)scheduleTask:(id)task forIndex:(unint64_t)index
{
  taskCopy = task;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__AVTOrderedIndexBasedTaskScheduler_scheduleTask_forIndex___block_invoke;
  v8[3] = &unk_1E7F3D018;
  v9 = taskCopy;
  indexCopy = index;
  v7 = taskCopy;
  [(AVTOrderedIndexBasedTaskScheduler *)self performStateWork:v8];
}

void __59__AVTOrderedIndexBasedTaskScheduler_scheduleTask_forIndex___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = MEMORY[0x1E696AD98];
  v8 = *(a1 + 40);
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = [v7 numberWithUnsignedInteger:v8];
  [v11 removeObjectForKey:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  [v10 removeObject:v13];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  [v9 removeObjectForKey:v14];

  v15 = [*(a1 + 32) copy];
  v16 = MEMORY[0x1BFB0DE80]();
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  [v11 setObject:v16 forKey:v17];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  [v10 addObject:v18];
}

- (void)taskReady:(id)ready forIndex:(unint64_t)index
{
  readyCopy = ready;
  array = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __56__AVTOrderedIndexBasedTaskScheduler_taskReady_forIndex___block_invoke;
  v15 = &unk_1E7F3D068;
  v16 = v8;
  selfCopy = self;
  v18 = array;
  v19 = readyCopy;
  v9 = array;
  v10 = readyCopy;
  v11 = v8;
  [(AVTOrderedIndexBasedTaskScheduler *)self performStateWork:&v12];
  [v9 enumerateObjectsUsingBlock:{&__block_literal_global_30, v12, v13, v14, v15}];
}

void __56__AVTOrderedIndexBasedTaskScheduler_taskReady_forIndex___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 objectForKey:*(a1 + 32)];
  v11 = v10;
  if (v10 && *(a1 + 56) == v10)
  {
    v12 = MEMORY[0x1BFB0DE80](v10);
    [v9 setObject:v12 forKey:*(a1 + 32)];

    v13 = [objc_opt_class() rowBaseIndexForIndex:*(a1 + 32)];
    v14 = [objc_opt_class() indexesForReadyTasksToRunGivenScheduledTasks:v7 order:v8 readyTasks:v9 readyRowIndex:v13];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__AVTOrderedIndexBasedTaskScheduler_taskReady_forIndex___block_invoke_2;
    v15[3] = &unk_1E7F3D040;
    v16 = *(a1 + 48);
    v17 = v9;
    v18 = v7;
    v19 = v8;
    [v14 enumerateObjectsUsingBlock:v15];
  }
}

void __56__AVTOrderedIndexBasedTaskScheduler_taskReady_forIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = a2;
  v5 = [v4 objectForKeyedSubscript:v7];
  v6 = MEMORY[0x1BFB0DE80]();
  [v3 addObject:v6];

  [*(a1 + 48) removeObjectForKey:v7];
  [*(a1 + 40) removeObjectForKey:v7];
  [*(a1 + 56) removeObject:v7];
}

+ (id)indexesForReadyTasksToRunGivenScheduledTasks:(id)tasks order:(id)order readyTasks:(id)readyTasks readyRowIndex:(id)index
{
  tasksCopy = tasks;
  orderCopy = order;
  readyTasksCopy = readyTasks;
  indexCopy = index;
  if (![readyTasksCopy count])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"This should only be called when we have ready tasks"];
  }

  allKeys = [readyTasksCopy allKeys];
  v15 = [allKeys sortedArrayUsingSelector:sel_compare_];

  if ([tasksCopy count])
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __113__AVTOrderedIndexBasedTaskScheduler_indexesForReadyTasksToRunGivenScheduledTasks_order_readyTasks_readyRowIndex___block_invoke;
    v33[3] = &unk_1E7F3D0B0;
    selfCopy = self;
    v16 = indexCopy;
    v34 = v16;
    if ([orderCopy indexOfObjectPassingTest:v33] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = indexCopy;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __113__AVTOrderedIndexBasedTaskScheduler_indexesForReadyTasksToRunGivenScheduledTasks_order_readyTasks_readyRowIndex___block_invoke_2;
      v30[3] = &unk_1E7F3D0B0;
      selfCopy2 = self;
      v31 = v16;
      v17 = [orderCopy indexesOfObjectsPassingTest:v30];
      v18 = [orderCopy objectsAtIndexes:v17];
      v19 = [v18 sortedArrayUsingSelector:sel_compare_];
      firstObject = [v19 firstObject];

      v21 = [readyTasksCopy objectForKey:firstObject];

      if (v21)
      {
        v22 = [orderCopy sortedArrayUsingSelector:sel_compare_];
        v23 = [MEMORY[0x1E695DF70] arrayWithObject:firstObject];
        for (i = [v22 indexOfObject:firstObject] + 1; i < objc_msgSend(v22, "count"); ++i)
        {
          v25 = [v22 objectAtIndexedSubscript:i];
          v26 = [readyTasksCopy objectForKey:v25];

          if (!v26)
          {

            break;
          }

          [v23 addObject:v25];
        }

        v27 = [v23 copy];
      }

      else
      {
        v27 = MEMORY[0x1E695E0F0];
      }

      indexCopy = v29;
    }

    else
    {
      v27 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v27 = v15;
  }

  return v27;
}

BOOL __113__AVTOrderedIndexBasedTaskScheduler_indexesForReadyTasksToRunGivenScheduledTasks_order_readyTasks_readyRowIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [objc_opt_class() rowBaseIndexForIndex:v6];

  v8 = [v7 compare:*(a1 + 32)];
  if (!v8)
  {
    *a4 = 1;
  }

  return v8 == -1;
}

uint64_t __113__AVTOrderedIndexBasedTaskScheduler_indexesForReadyTasksToRunGivenScheduledTasks_order_readyTasks_readyRowIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() rowBaseIndexForIndex:v3];

  v5 = [v4 isEqual:*(a1 + 32)];
  return v5;
}

+ (id)rowBaseIndexForIndex:(id)index
{
  v3 = MEMORY[0x1E696AD98];
  v4 = 3 * ([index unsignedIntegerValue] / 3uLL);

  return [v3 numberWithUnsignedInteger:v4];
}

void __51__AVTOrderedIndexBasedTaskScheduler_cancelAllTasks__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v6 = a2;
  [a3 removeAllObjects];
  [v6 removeAllObjects];

  [v7 removeAllObjects];
}

- (void)cancelTask:(id)task
{
  taskCopy = task;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AVTOrderedIndexBasedTaskScheduler_cancelTask___block_invoke;
  v6[3] = &unk_1E7F3D148;
  v7 = taskCopy;
  v5 = taskCopy;
  [(AVTOrderedIndexBasedTaskScheduler *)self performStateWork:v6];
}

void __48__AVTOrderedIndexBasedTaskScheduler_cancelTask___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__AVTOrderedIndexBasedTaskScheduler_cancelTask___block_invoke_2;
  v13[3] = &unk_1E7F3D120;
  v14 = *(a1 + 32);
  v9 = a2;
  v10 = MEMORY[0x1BFB0DE80](v13);
  v11 = (v10)[2](v10, v9);

  if (v11)
  {
    [v7 removeObject:v11];
  }

  v12 = (v10[2])(v10, v8);
}

id __48__AVTOrderedIndexBasedTaskScheduler_cancelTask___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__AVTOrderedIndexBasedTaskScheduler_cancelTask___block_invoke_3;
  v8[3] = &unk_1E7F3D0F8;
  v9 = *(a1 + 32);
  v4 = [v3 keysOfEntriesPassingTest:v8];
  v5 = [v4 anyObject];

  if (v5)
  {
    [v3 removeObjectForKey:v5];
    v6 = v5;
  }

  return v5;
}

uint64_t __48__AVTOrderedIndexBasedTaskScheduler_cancelTask___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = MEMORY[0x1BFB0DE80](v5);
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    *a4 = 1;
  }

  return v8;
}

@end