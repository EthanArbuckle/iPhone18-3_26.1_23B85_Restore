@interface AVTCoalescingInvertingTaskScheduler
- (AVTCoalescingInvertingTaskScheduler)initWithBackingScheduler:(id)a3 coalescingQueue:(id)a4 delay:(double)a5 environment:(id)a6;
- (void)cancelAllTasks;
- (void)performStateWork:(id)a3;
- (void)scheduleTask:(id)a3;
- (void)startTasksFrom:(id)a3;
@end

@implementation AVTCoalescingInvertingTaskScheduler

- (AVTCoalescingInvertingTaskScheduler)initWithBackingScheduler:(id)a3 coalescingQueue:(id)a4 delay:(double)a5 environment:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = AVTCoalescingInvertingTaskScheduler;
  v14 = [(AVTCoalescingInvertingTaskScheduler *)&v21 init];
  if (v14)
  {
    v15 = [MEMORY[0x1E695DF70] array];
    tasks = v14->_tasks;
    v14->_tasks = v15;

    objc_storeStrong(&v14->_coalescingQueue, a4);
    v14->_coalesingDelay = a5;
    v17 = [v13 lockProvider];
    v18 = (v17)[2](v17, "com.apple.AvatarUI.AVTCoalescingInvertingScheduler.stateLock");
    stateLock = v14->_stateLock;
    v14->_stateLock = v18;

    objc_storeStrong(&v14->_backingScheduler, a3);
  }

  return v14;
}

- (void)performStateWork:(id)a3
{
  v4 = a3;
  v5 = [(AVTCoalescingInvertingTaskScheduler *)self stateLock];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__AVTCoalescingInvertingTaskScheduler_performStateWork___block_invoke;
  v7[3] = &unk_1E7F3A8A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __56__AVTCoalescingInvertingTaskScheduler_performStateWork___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) tasks];
  (*(v1 + 16))(v1, v2);
}

- (void)scheduleTask:(id)a3
{
  v4 = MEMORY[0x1BFB0DE80](a3, a2);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__AVTCoalescingInvertingTaskScheduler_scheduleTask___block_invoke;
  v12[3] = &unk_1E7F3AC78;
  v5 = v4;
  v13 = v5;
  [(AVTCoalescingInvertingTaskScheduler *)self performStateWork:v12];
  [(AVTCoalescingInvertingTaskScheduler *)self coalesingDelay];
  v7 = dispatch_time(0, (v6 * 1000000000.0));
  v8 = [(AVTCoalescingInvertingTaskScheduler *)self coalescingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AVTCoalescingInvertingTaskScheduler_scheduleTask___block_invoke_2;
  block[3] = &unk_1E7F3ACA0;
  block[4] = self;
  v11 = v5;
  v9 = v5;
  dispatch_after(v7, v8, block);
}

void __52__AVTCoalescingInvertingTaskScheduler_scheduleTask___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = MEMORY[0x1BFB0DE80](v2);
  [v3 insertObject:v4 atIndex:0];
}

- (void)startTasksFrom:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__AVTCoalescingInvertingTaskScheduler_startTasksFrom___block_invoke;
  v16[3] = &unk_1E7F3ACC8;
  v5 = v4;
  v17 = v5;
  v18 = &v19;
  [(AVTCoalescingInvertingTaskScheduler *)self performStateWork:v16];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v20[5];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v25 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [(AVTCoalescingInvertingTaskScheduler *)self backingScheduler];
        [v11 scheduleTask:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v25 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v19, 8);
}

void __54__AVTCoalescingInvertingTaskScheduler_startTasksFrom___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = MEMORY[0x1BFB0DE80](*(a1 + 32));
  v4 = [v8 containsObject:v3];

  if (v4)
  {
    v5 = [v8 copy];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [v8 removeAllObjects];
  }
}

- (void)cancelAllTasks
{
  [(AVTCoalescingInvertingTaskScheduler *)self performStateWork:&__block_literal_global_2];
  v3 = [(AVTCoalescingInvertingTaskScheduler *)self backingScheduler];
  [v3 cancelAllTasks];
}

@end