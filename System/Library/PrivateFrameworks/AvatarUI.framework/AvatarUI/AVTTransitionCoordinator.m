@interface AVTTransitionCoordinator
+ (id)concurrentTransitionCoordinatorWithDelay:(double)a3;
+ (id)eventHandlerForCoordinator:(id)a3;
+ (id)synchronousTransitionCoordinator;
- (AVTTransitionCoordinator)init;
- (id)allTransitions;
- (id)transitionsMatchingModel:(id)a3;
- (void)addTransition:(id)a3;
- (void)cancelAllTransitions;
- (void)cancelTransitionsMatchingModel:(id)a3;
- (void)dealloc;
- (void)didCompleteRunningTransition:(id)a3;
- (void)startNextTransition;
@end

@implementation AVTTransitionCoordinator

+ (id)synchronousTransitionCoordinator
{
  v3 = objc_alloc_init(AVTTransitionCoordinator);
  v4 = [a1 eventHandlerForCoordinator:v3];
  v5 = [AVTTransitionSchedulerFactory synchronousTransitionSchedulerWithEventHandler:v4];
  [(AVTTransitionCoordinator *)v3 setScheduler:v5];

  return v3;
}

+ (id)concurrentTransitionCoordinatorWithDelay:(double)a3
{
  v5 = objc_alloc_init(AVTTransitionCoordinator);
  v6 = [a1 eventHandlerForCoordinator:v5];
  v7 = [AVTTransitionSchedulerFactory concurrentTransitionSchedulerWithEventHandler:v6 delay:a3];
  [(AVTTransitionCoordinator *)v5 setScheduler:v7];

  return v5;
}

+ (id)eventHandlerForCoordinator:(id)a3
{
  objc_initWeak(&location, a3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__AVTTransitionCoordinator_eventHandlerForCoordinator___block_invoke;
  v9[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v10, &location);
  v3 = MEMORY[0x1BFB0DE80](v9);
  v7 = MEMORY[0x1BFB0DE80](v3, v4, v5, v6);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __55__AVTTransitionCoordinator_eventHandlerForCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startNextTransition];
}

- (AVTTransitionCoordinator)init
{
  v8.receiver = self;
  v8.super_class = AVTTransitionCoordinator;
  v2 = [(AVTTransitionCoordinator *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    pendingTransitions = v2->_pendingTransitions;
    v2->_pendingTransitions = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    runningTransitions = v2->_runningTransitions;
    v2->_runningTransitions = v5;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(AVTTransitionCoordinator *)self scheduler];
  [v3 stop];

  v4.receiver = self;
  v4.super_class = AVTTransitionCoordinator;
  [(AVTTransitionCoordinator *)&v4 dealloc];
}

- (void)addTransition:(id)a3
{
  v4 = a3;
  v5 = [(AVTTransitionCoordinator *)self pendingTransitions];
  [v5 addObject:v4];

  v6 = [(AVTTransitionCoordinator *)self scheduler];
  [v6 scheduleEvent];
}

- (void)didCompleteRunningTransition:(id)a3
{
  v8 = a3;
  v4 = [(AVTTransitionCoordinator *)self runningTransitions];
  v5 = [v4 containsObject:v8];

  if (v5)
  {
    v6 = [(AVTTransitionCoordinator *)self runningTransitions];
    [v6 removeObject:v8];

    v7 = [(AVTTransitionCoordinator *)self scheduler];
    [v7 didCompleteEvent];
  }
}

- (void)startNextTransition
{
  v3 = [(AVTTransitionCoordinator *)self pendingTransitions];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [v4 completionHandler];
    objc_initWeak(&location, v4);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __47__AVTTransitionCoordinator_startNextTransition__block_invoke;
    v13 = &unk_1E7F3CE98;
    v6 = v5;
    v15 = v6;
    objc_copyWeak(&v16, &location);
    v14 = self;
    [v4 setCompletionHandler:&v10];
    v7 = [(AVTTransitionCoordinator *)self runningTransitions:v10];
    [v7 addObject:v4];

    v8 = [(AVTTransitionCoordinator *)self pendingTransitions];
    [v8 removeObject:v4];

    [v4 start];
    objc_destroyWeak(&v16);

    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [(AVTTransitionCoordinator *)self scheduler];
    [v9 stop];
  }
}

uint64_t __47__AVTTransitionCoordinator_startNextTransition__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    WeakRetained = [*(a1 + 32) didCompleteRunningTransition:WeakRetained];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v4);
}

- (id)transitionsMatchingModel:(id)a3
{
  v4 = a3;
  v5 = [(AVTTransitionCoordinator *)self allTransitions];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__AVTTransitionCoordinator_transitionsMatchingModel___block_invoke;
  v10[3] = &unk_1E7F3CEC0;
  v11 = v4;
  v6 = v4;
  v7 = [v5 indexesOfObjectsPassingTest:v10];
  if ([v7 count])
  {
    v8 = [v5 objectsAtIndexes:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL __53__AVTTransitionCoordinator_transitionsMatchingModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 model];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (id)allTransitions
{
  v3 = [(AVTTransitionCoordinator *)self pendingTransitions];
  v4 = [(AVTTransitionCoordinator *)self runningTransitions];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (void)cancelTransitionsMatchingModel:(id)a3
{
  v5 = [(AVTTransitionCoordinator *)self transitionsMatchingModel:a3];
  v4 = [(AVTTransitionCoordinator *)self pendingTransitions];
  [v4 removeObjectsInArray:v5];

  [v5 enumerateObjectsUsingBlock:&__block_literal_global_28];
}

- (void)cancelAllTransitions
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(AVTTransitionCoordinator *)self allTransitions];
  v4 = [(AVTTransitionCoordinator *)self pendingTransitions];
  [v4 removeAllObjects];

  v5 = [(AVTTransitionCoordinator *)self runningTransitions];
  [v5 removeAllObjects];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * v10++) cancel];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [(AVTTransitionCoordinator *)self scheduler];

  if (v11)
  {
    v12 = [(AVTTransitionCoordinator *)self scheduler];
    [v12 stop];
  }
}

@end