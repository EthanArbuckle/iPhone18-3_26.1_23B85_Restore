@interface AVTTransitionCoordinator
+ (id)concurrentTransitionCoordinatorWithDelay:(double)delay;
+ (id)eventHandlerForCoordinator:(id)coordinator;
+ (id)synchronousTransitionCoordinator;
- (AVTTransitionCoordinator)init;
- (id)allTransitions;
- (id)transitionsMatchingModel:(id)model;
- (void)addTransition:(id)transition;
- (void)cancelAllTransitions;
- (void)cancelTransitionsMatchingModel:(id)model;
- (void)dealloc;
- (void)didCompleteRunningTransition:(id)transition;
- (void)startNextTransition;
@end

@implementation AVTTransitionCoordinator

+ (id)synchronousTransitionCoordinator
{
  v3 = objc_alloc_init(AVTTransitionCoordinator);
  v4 = [self eventHandlerForCoordinator:v3];
  v5 = [AVTTransitionSchedulerFactory synchronousTransitionSchedulerWithEventHandler:v4];
  [(AVTTransitionCoordinator *)v3 setScheduler:v5];

  return v3;
}

+ (id)concurrentTransitionCoordinatorWithDelay:(double)delay
{
  v5 = objc_alloc_init(AVTTransitionCoordinator);
  v6 = [self eventHandlerForCoordinator:v5];
  v7 = [AVTTransitionSchedulerFactory concurrentTransitionSchedulerWithEventHandler:v6 delay:delay];
  [(AVTTransitionCoordinator *)v5 setScheduler:v7];

  return v5;
}

+ (id)eventHandlerForCoordinator:(id)coordinator
{
  objc_initWeak(&location, coordinator);
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
    array = [MEMORY[0x1E695DF70] array];
    pendingTransitions = v2->_pendingTransitions;
    v2->_pendingTransitions = array;

    array2 = [MEMORY[0x1E695DF70] array];
    runningTransitions = v2->_runningTransitions;
    v2->_runningTransitions = array2;
  }

  return v2;
}

- (void)dealloc
{
  scheduler = [(AVTTransitionCoordinator *)self scheduler];
  [scheduler stop];

  v4.receiver = self;
  v4.super_class = AVTTransitionCoordinator;
  [(AVTTransitionCoordinator *)&v4 dealloc];
}

- (void)addTransition:(id)transition
{
  transitionCopy = transition;
  pendingTransitions = [(AVTTransitionCoordinator *)self pendingTransitions];
  [pendingTransitions addObject:transitionCopy];

  scheduler = [(AVTTransitionCoordinator *)self scheduler];
  [scheduler scheduleEvent];
}

- (void)didCompleteRunningTransition:(id)transition
{
  transitionCopy = transition;
  runningTransitions = [(AVTTransitionCoordinator *)self runningTransitions];
  v5 = [runningTransitions containsObject:transitionCopy];

  if (v5)
  {
    runningTransitions2 = [(AVTTransitionCoordinator *)self runningTransitions];
    [runningTransitions2 removeObject:transitionCopy];

    scheduler = [(AVTTransitionCoordinator *)self scheduler];
    [scheduler didCompleteEvent];
  }
}

- (void)startNextTransition
{
  pendingTransitions = [(AVTTransitionCoordinator *)self pendingTransitions];
  firstObject = [pendingTransitions firstObject];

  if (firstObject)
  {
    completionHandler = [firstObject completionHandler];
    objc_initWeak(&location, firstObject);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __47__AVTTransitionCoordinator_startNextTransition__block_invoke;
    v13 = &unk_1E7F3CE98;
    v6 = completionHandler;
    v15 = v6;
    objc_copyWeak(&v16, &location);
    selfCopy = self;
    [firstObject setCompletionHandler:&v10];
    v7 = [(AVTTransitionCoordinator *)self runningTransitions:v10];
    [v7 addObject:firstObject];

    pendingTransitions2 = [(AVTTransitionCoordinator *)self pendingTransitions];
    [pendingTransitions2 removeObject:firstObject];

    [firstObject start];
    objc_destroyWeak(&v16);

    objc_destroyWeak(&location);
  }

  else
  {
    scheduler = [(AVTTransitionCoordinator *)self scheduler];
    [scheduler stop];
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

- (id)transitionsMatchingModel:(id)model
{
  modelCopy = model;
  allTransitions = [(AVTTransitionCoordinator *)self allTransitions];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__AVTTransitionCoordinator_transitionsMatchingModel___block_invoke;
  v10[3] = &unk_1E7F3CEC0;
  v11 = modelCopy;
  v6 = modelCopy;
  v7 = [allTransitions indexesOfObjectsPassingTest:v10];
  if ([v7 count])
  {
    v8 = [allTransitions objectsAtIndexes:v7];
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
  pendingTransitions = [(AVTTransitionCoordinator *)self pendingTransitions];
  runningTransitions = [(AVTTransitionCoordinator *)self runningTransitions];
  v5 = [pendingTransitions arrayByAddingObjectsFromArray:runningTransitions];

  return v5;
}

- (void)cancelTransitionsMatchingModel:(id)model
{
  v5 = [(AVTTransitionCoordinator *)self transitionsMatchingModel:model];
  pendingTransitions = [(AVTTransitionCoordinator *)self pendingTransitions];
  [pendingTransitions removeObjectsInArray:v5];

  [v5 enumerateObjectsUsingBlock:&__block_literal_global_28];
}

- (void)cancelAllTransitions
{
  v18 = *MEMORY[0x1E69E9840];
  allTransitions = [(AVTTransitionCoordinator *)self allTransitions];
  pendingTransitions = [(AVTTransitionCoordinator *)self pendingTransitions];
  [pendingTransitions removeAllObjects];

  runningTransitions = [(AVTTransitionCoordinator *)self runningTransitions];
  [runningTransitions removeAllObjects];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = allTransitions;
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

  scheduler = [(AVTTransitionCoordinator *)self scheduler];

  if (scheduler)
  {
    scheduler2 = [(AVTTransitionCoordinator *)self scheduler];
    [scheduler2 stop];
  }
}

@end