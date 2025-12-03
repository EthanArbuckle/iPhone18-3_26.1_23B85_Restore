@interface AMSPromise
+ (AMSPromise)promiseWithAll:(id)all timeout:(double)timeout;
+ (AMSPromise)promiseWithAny:(id)any timeout:(double)timeout;
+ (AMSPromise)promiseWithError:(id)error;
+ (AMSPromise)promiseWithErrorCode:(int64_t)code title:(id)title message:(id)message underlyingError:(id)error;
+ (AMSPromise)promiseWithFlattenedPromises:(id)promises;
+ (AMSPromise)promiseWithPromiseResult:(id)result;
+ (AMSPromise)promiseWithResult:(id)result;
+ (AMSPromise)promiseWithSome:(id)some timeout:(double)timeout;
+ (BOOL)_errorIsCanceledError:(id)error;
+ (BOOL)_errorIsTimeOutError:(id)error;
+ (id)promiseFinishedWithDefaultErrorOrResult:(id)result;
+ (void)_configureFlattenedPromise:(id)promise withPromises:(id)promises results:(id)results previousError:(id)error currentPromiseIndex:(unint64_t)index;
+ (void)_enumeratePromises:(id)promises startingAt:(int64_t)at block:(id)block;
- (AMSPromise)init;
- (AMSPromise)initWithPromiseResult:(id)result;
- (AMSPromise)initWithTimeout:(double)timeout;
- (AMSPromise)promiseWithTimeout:(double)timeout;
- (BOOL)finishWithPromiseResult:(id)result;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)isFinishedWithLock;
- (BOOL)isTimedOut;
- (NSCondition)condition;
- (id)BOOLCompletionHandlerAdapter;
- (id)binaryPromiseAdapter;
- (id)binaryPromiseAdapterForClass:(Class)class;
- (id)catchWithBinaryPromiseBlock:(id)block;
- (id)catchWithBlock:(id)block;
- (id)completionHandlerAdapter;
- (id)continueWithBinaryPromiseBlock:(id)block;
- (id)continueWithBlock:(id)block;
- (id)errorOnlyCompletionHandlerAdapter;
- (id)mutablePromiseAdapter;
- (id)nilValueCompletionHandlerAdapter;
- (id)resultBeforeDate:(id)date error:(id *)error;
- (id)resultWithError:(id *)error;
- (id)resultWithTimeout:(double)timeout error:(id *)error;
- (id)thenWithBinaryPromiseBlock:(id)block;
- (id)thenWithBlock:(id)block;
- (id)valueFromAddingBlock:(id)block orCallWithResult:(id)result;
- (void)addBlock:(id)block orCallWithResult:(id)result;
- (void)addErrorBlock:(id)block;
- (void)addFinishBlock:(id)block;
- (void)addSuccessBlock:(id)block;
- (void)flushCompletionBlocksWithResult:(id)result;
- (void)resultBeforeDate:(id)date completion:(id)completion;
- (void)resultWithTimeout:(double)timeout completion:(id)completion;
- (void)stopRetainingSelf;
@end

@implementation AMSPromise

- (BOOL)isFinishedWithLock
{
  selfCopy = self;
  os_unfair_lock_assert_owner(&self->_stateLock);
  promiseResult = [(AMSPromise *)selfCopy promiseResult];
  LOBYTE(selfCopy) = promiseResult != 0;

  return selfCopy;
}

- (BOOL)isFinished
{
  os_unfair_lock_lock_with_options();
  isFinishedWithLock = [(AMSPromise *)self isFinishedWithLock];
  os_unfair_lock_unlock(&self->_stateLock);
  return isFinishedWithLock;
}

- (AMSPromise)init
{
  v6.receiver = self;
  v6.super_class = AMSPromise;
  v2 = [(AMSPromise *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AMSPromiseCompletionBlocks);
    completionBlocks = v2->_completionBlocks;
    v2->_completionBlocks = v3;

    v2->_stateLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v2->_retainedSelf, v2);
  }

  return v2;
}

- (NSCondition)condition
{
  os_unfair_lock_assert_owner(&self->_stateLock);
  condition = self->_condition;

  return condition;
}

- (void)stopRetainingSelf
{
  selfCopy = self;
  os_unfair_lock_lock_with_options();
  [(AMSPromise *)selfCopy setRetainedSelf:0];
  os_unfair_lock_unlock(&self->_stateLock);
}

- (id)completionHandlerAdapter
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__AMSPromise_completionHandlerAdapter__block_invoke;
  aBlock[3] = &unk_1E73B8618;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = [v2 copy];

  return v3;
}

- (BOOL)isTimedOut
{
  os_unfair_lock_lock_with_options();
  if ([(AMSPromise *)self isFinishedWithLock])
  {
    promiseResult = [(AMSPromise *)self promiseResult];
    error = [promiseResult error];
    v5 = [AMSPromise _errorIsTimeOutError:error];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_stateLock);
  return v5;
}

- (BOOL)isCancelled
{
  os_unfair_lock_lock_with_options();
  if ([(AMSPromise *)self isFinishedWithLock])
  {
    promiseResult = [(AMSPromise *)self promiseResult];
    error = [promiseResult error];
    v5 = [AMSPromise _errorIsCanceledError:error];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_stateLock);
  return v5;
}

- (id)binaryPromiseAdapter
{
  v3 = objc_opt_class();

  return [(AMSPromise *)self binaryPromiseAdapterForClass:v3];
}

- (id)mutablePromiseAdapter
{
  v3 = objc_alloc_init(AMSMutablePromise);
  [(AMSMutablePromise *)v3 finishWithPromise:self];

  return v3;
}

- (AMSPromise)initWithTimeout:(double)timeout
{
  v4 = [(AMSPromise *)self init];
  if (v4)
  {
    [AMSMutablePromise startTimeoutForPromise:v4 timeout:timeout];
  }

  return v4;
}

- (AMSPromise)initWithPromiseResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = AMSPromise;
  v6 = [(AMSPromise *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_promiseResult, result);
    v7->_stateLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

+ (AMSPromise)promiseWithErrorCode:(int64_t)code title:(id)title message:(id)message underlyingError:(id)error
{
  v7 = AMSError(code, title, message, error);
  v8 = [self promiseWithError:v7];

  return v8;
}

+ (AMSPromise)promiseWithError:(id)error
{
  errorCopy = error;
  if (AMSPromiseClassCompatibleWithFinishedPromise(self))
  {
    v5 = [AMSFinishedPromise promiseWithError:errorCopy];
  }

  else
  {
    v5 = objc_alloc_init(self);
    [AMSMutablePromise finishPromise:v5 withError:errorCopy];
  }

  return v5;
}

+ (AMSPromise)promiseWithResult:(id)result
{
  resultCopy = result;
  if (AMSPromiseClassCompatibleWithFinishedPromise(self))
  {
    v5 = [AMSFinishedPromise promiseWithResult:resultCopy];
  }

  else
  {
    v5 = objc_alloc_init(self);
    [AMSMutablePromise finishPromise:v5 withResult:resultCopy];
  }

  return v5;
}

+ (AMSPromise)promiseWithPromiseResult:(id)result
{
  resultCopy = result;
  if (AMSPromiseClassCompatibleWithFinishedPromise(self))
  {
    v5 = [AMSFinishedPromise promiseWithPromiseResult:resultCopy];
  }

  else
  {
    v5 = objc_alloc_init(self);
    result = [resultCopy result];
    error = [resultCopy error];
    [AMSMutablePromise finishPromise:v5 withResult:result error:error];
  }

  return v5;
}

+ (AMSPromise)promiseWithAll:(id)all timeout:(double)timeout
{
  allCopy = all;
  v7 = [[AMSMutablePromise alloc] initWithTimeout:timeout];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([allCopy count])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __37__AMSPromise_promiseWithAll_timeout___block_invoke;
    v13[3] = &unk_1E73BACA8;
    v14 = v8;
    v9 = v7;
    v15 = v9;
    [self _enumeratePromises:allCopy startingAt:0 block:v13];
    v10 = v15;
    v11 = v9;
  }

  else
  {
    [(AMSMutablePromise *)v7 finishWithResult:v8 error:0 logDuplicateFinishes:0];
  }

  return v7;
}

uint64_t __37__AMSPromise_promiseWithAll_timeout___block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    [*(a1 + 32) addObject:v7];
  }

  if (v8 || (a4 & 1) != 0)
  {
    if (v8)
    {
      v10 = *(a1 + 40);
      v11 = 0;
      v12 = v8;
LABEL_10:
      [v10 finishWithResult:v11 error:v12 logDuplicateFinishes:0];
      v9 = 0;
      goto LABEL_11;
    }

LABEL_9:
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = 0;
    goto LABEL_10;
  }

  if ([*(a1 + 40) isFinished])
  {
    goto LABEL_9;
  }

  v9 = 1;
LABEL_11:

  return v9;
}

+ (AMSPromise)promiseWithAny:(id)any timeout:(double)timeout
{
  anyCopy = any;
  v7 = [[AMSMutablePromise alloc] initWithTimeout:timeout];
  if ([anyCopy count])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__AMSPromise_promiseWithAny_timeout___block_invoke;
    v10[3] = &unk_1E73BACD0;
    v11 = v7;
    [self _enumeratePromises:anyCopy startingAt:0 block:v10];
  }

  else
  {
    v8 = AMSError(2, @"Invalid Parameter", @"No promises were provided to -promiseWithAny:.", 0);
    [(AMSMutablePromise *)v7 finishWithResult:0 error:v8 logDuplicateFinishes:0];
  }

  return v7;
}

uint64_t __37__AMSPromise_promiseWithAny_timeout___block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  if (v7 || (a4 & 1) != 0 || [*(a1 + 32) isFinished])
  {
    [*(a1 + 32) finishWithResult:v7 error:v8 logDuplicateFinishes:0];
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (AMSPromise)promiseWithFlattenedPromises:(id)promises
{
  promisesCopy = promises;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [AMSPromise _configureFlattenedPromise:v4 withPromises:promisesCopy results:v5 previousError:0 currentPromiseIndex:0];

  return v4;
}

+ (AMSPromise)promiseWithSome:(id)some timeout:(double)timeout
{
  someCopy = some;
  v7 = [[AMSMutablePromise alloc] initWithTimeout:timeout];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([someCopy count])
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __38__AMSPromise_promiseWithSome_timeout___block_invoke;
    v15[3] = &unk_1E73BACF8;
    v16 = v8;
    v17 = v9;
    v10 = v7;
    v18 = v10;
    v11 = v9;
    [self _enumeratePromises:someCopy startingAt:0 block:v15];
    v12 = v18;
    v13 = v10;
  }

  else
  {
    [(AMSMutablePromise *)v7 finishWithResult:v8 error:0 logDuplicateFinishes:0];
  }

  return v7;
}

uint64_t __38__AMSPromise_promiseWithSome_timeout___block_invoke(id *a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    [a1[4] addObject:v7];
  }

  if (v8)
  {
    [a1[5] addObject:v8];
  }

  if ((a4 & 1) != 0 || [a1[6] isFinished])
  {
    if ([a1[4] count] || !objc_msgSend(a1[5], "count"))
    {
      [a1[6] finishWithResult:a1[4] error:0 logDuplicateFinishes:0];
    }

    else
    {
      v9 = [a1[5] copy];
      v10 = AMSErrorWithMultipleUnderlyingErrors(15, 0, 0, v9);

      [a1[6] finishWithResult:0 error:v10 logDuplicateFinishes:0];
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (AMSPromise)promiseWithTimeout:(double)timeout
{
  v4 = [[AMSMutablePromise alloc] initWithTimeout:timeout];
  [AMSMutablePromise finishPromise:v4 withPromise:self];

  return v4;
}

id __42__AMSPromise_unwrappedPromiseWithPromise___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ams_mapWithTransformIgnoresNil:&__block_literal_global_15_1];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

- (void)addErrorBlock:(id)block
{
  blockCopy = block;
  completionBlocks = [(AMSPromise *)self completionBlocks];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __28__AMSPromise_addErrorBlock___block_invoke;
  v11[3] = &unk_1E73B36D0;
  v12 = completionBlocks;
  v13 = blockCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__AMSPromise_addErrorBlock___block_invoke_2;
  v8[3] = &unk_1E73BAD40;
  v9 = v12;
  v10 = v13;
  v6 = v13;
  v7 = v12;
  [(AMSPromise *)self addBlock:v11 orCallWithResult:v8];
}

- (void)addFinishBlock:(id)block
{
  blockCopy = block;
  completionBlocks = [(AMSPromise *)self completionBlocks];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __29__AMSPromise_addFinishBlock___block_invoke;
  v11[3] = &unk_1E73B36D0;
  v12 = completionBlocks;
  v13 = blockCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__AMSPromise_addFinishBlock___block_invoke_2;
  v8[3] = &unk_1E73BAD40;
  v9 = v12;
  v10 = v13;
  v6 = v13;
  v7 = v12;
  [(AMSPromise *)self addBlock:v11 orCallWithResult:v8];
}

- (void)addSuccessBlock:(id)block
{
  blockCopy = block;
  completionBlocks = [(AMSPromise *)self completionBlocks];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __30__AMSPromise_addSuccessBlock___block_invoke;
  v11[3] = &unk_1E73B36D0;
  v12 = completionBlocks;
  v13 = blockCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__AMSPromise_addSuccessBlock___block_invoke_2;
  v8[3] = &unk_1E73BAD40;
  v9 = v12;
  v10 = v13;
  v6 = v13;
  v7 = v12;
  [(AMSPromise *)self addBlock:v11 orCallWithResult:v8];
}

- (void)resultBeforeDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  [date timeIntervalSinceNow];
  v7 = [(AMSPromise *)self promiseWithTimeout:?];
  [v7 resultWithCompletion:completionCopy];
}

- (id)resultBeforeDate:(id)date error:(id *)error
{
  dateCopy = date;
  +[AMSConcurrency logFaultFromSwiftConcurrencyOnInternalBuild];
  os_unfair_lock_lock(&self->_stateLock);
  if ([(AMSPromise *)self isFinishedWithLock])
  {
    promiseResult = [(AMSPromise *)self promiseResult];
    os_unfair_lock_unlock(&self->_stateLock);
LABEL_11:
    result = [(NSCondition *)promiseResult result];

    if (error && !result)
    {
      *error = [(NSCondition *)promiseResult error];
    }

    result2 = [(NSCondition *)promiseResult result];
  }

  else
  {
    condition = self->_condition;
    if (!condition)
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AB30]);
      v10 = self->_condition;
      self->_condition = v9;

      condition = self->_condition;
    }

    promiseResult = condition;
    os_unfair_lock_unlock(&self->_stateLock);
    [(NSCondition *)promiseResult lock];
    do
    {
      if ([(AMSPromise *)self conditionHasSignaled])
      {
        [(NSCondition *)promiseResult unlock];
        os_unfair_lock_lock_with_options();
        promiseResult2 = [(AMSPromise *)self promiseResult];
        os_unfair_lock_unlock(&self->_stateLock);

        promiseResult = promiseResult2;
        goto LABEL_11;
      }
    }

    while ([(NSCondition *)promiseResult waitUntilDate:dateCopy]);
    [(NSCondition *)promiseResult unlock];
    if (error)
    {
      AMSError(1, @"Promise timed out", 0, 0);
      *error = result2 = 0;
    }

    else
    {
      result2 = 0;
    }
  }

  return result2;
}

- (id)resultWithError:(id *)error
{
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [(AMSPromise *)self resultBeforeDate:distantFuture error:error];

  return v6;
}

- (void)resultWithTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  v7 = [(AMSPromise *)self promiseWithTimeout:timeout];
  [v7 resultWithCompletion:completionCopy];
}

- (id)resultWithTimeout:(double)timeout error:(id *)error
{
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:timeout];
  v7 = [(AMSPromise *)self resultBeforeDate:v6 error:error];

  return v7;
}

- (void)addBlock:(id)block orCallWithResult:(id)result
{
  blockCopy = block;
  resultCopy = result;
  os_unfair_lock_lock_with_options();
  promiseResult = [(AMSPromise *)self promiseResult];
  if (promiseResult)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    v8 = objc_autoreleasePoolPush();
    resultCopy[2](resultCopy, promiseResult);
    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    blockCopy[2]();
    objc_autoreleasePoolPop(v9);
    os_unfair_lock_unlock(&self->_stateLock);
  }
}

- (id)valueFromAddingBlock:(id)block orCallWithResult:(id)result
{
  blockCopy = block;
  resultCopy = result;
  os_unfair_lock_lock_with_options();
  promiseResult = [(AMSPromise *)self promiseResult];
  if (promiseResult)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    v9 = objc_autoreleasePoolPush();
    v10 = resultCopy[2](resultCopy, promiseResult);
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v10 = blockCopy[2](blockCopy);
    objc_autoreleasePoolPop(v11);
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return v10;
}

- (void)flushCompletionBlocksWithResult:(id)result
{
  resultCopy = result;
  completionBlocks = [(AMSPromise *)self completionBlocks];
  [completionBlocks flushCompletionBlocksWithPromiseResult:resultCopy];
}

- (id)catchWithBinaryPromiseBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__AMSPromise_catchWithBinaryPromiseBlock___block_invoke;
  v8[3] = &unk_1E73BAD68;
  v9 = blockCopy;
  v5 = blockCopy;
  v6 = [(AMSPromise *)self continueWithBinaryPromiseBlock:v8];

  return v6;
}

id __42__AMSPromise_catchWithBinaryPromiseBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v5)
  {
    +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
  v8 = ;
  objc_autoreleasePoolPop(v7);

  return v8;
}

- (id)catchWithBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__AMSPromise_catchWithBlock___block_invoke;
  v8[3] = &unk_1E73BAD90;
  v9 = blockCopy;
  v5 = blockCopy;
  v6 = [(AMSPromise *)self continueWithBlock:v8];

  return v6;
}

id __29__AMSPromise_catchWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v5)
  {
    [AMSPromise promiseWithResult:v5];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
  v8 = ;
  objc_autoreleasePoolPop(v7);

  return v8;
}

- (id)continueWithBinaryPromiseBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__AMSPromise_continueWithBinaryPromiseBlock___block_invoke;
  v10[3] = &unk_1E73BADE0;
  v10[4] = self;
  v11 = blockCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__AMSPromise_continueWithBinaryPromiseBlock___block_invoke_3;
  v8[3] = &unk_1E73BAE08;
  v9 = v11;
  v5 = v11;
  v6 = [(AMSPromise *)self valueFromAddingBlock:v10 orCallWithResult:v8];

  return v6;
}

AMSMutableBinaryPromise *__45__AMSPromise_continueWithBinaryPromiseBlock___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(AMSMutableBinaryPromise);
  v3 = AMSLogKey();
  v4 = [*(a1 + 32) completionBlocks];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__AMSPromise_continueWithBinaryPromiseBlock___block_invoke_2;
  v10[3] = &unk_1E73BADB8;
  v11 = v3;
  v13 = *(a1 + 40);
  v5 = v2;
  v12 = v5;
  v6 = v3;
  [v4 addCompletionBlock:v10];

  v7 = v12;
  v8 = v5;

  return v5;
}

void __45__AMSPromise_continueWithBinaryPromiseBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = AMSSetLogKey(*(a1 + 32));
  v7 = objc_autoreleasePoolPush();
  v8 = (*(*(a1 + 48) + 16))();
  [*(a1 + 40) finishWithPromise:v8];

  objc_autoreleasePoolPop(v7);
}

id __45__AMSPromise_continueWithBinaryPromiseBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = [v3 result];
  v7 = [v3 error];
  v8 = (*(v5 + 16))(v5, v6, v7);

  objc_autoreleasePoolPop(v4);

  return v8;
}

- (id)continueWithBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__AMSPromise_continueWithBlock___block_invoke;
  v10[3] = &unk_1E73BADE0;
  v10[4] = self;
  v11 = blockCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__AMSPromise_continueWithBlock___block_invoke_3;
  v8[3] = &unk_1E73BAE08;
  v9 = v11;
  v5 = v11;
  v6 = [(AMSPromise *)self valueFromAddingBlock:v10 orCallWithResult:v8];

  return v6;
}

AMSMutablePromise *__32__AMSPromise_continueWithBlock___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(AMSMutablePromise);
  v3 = AMSLogKey();
  v4 = [*(a1 + 32) completionBlocks];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__AMSPromise_continueWithBlock___block_invoke_2;
  v10[3] = &unk_1E73BADB8;
  v11 = v3;
  v13 = *(a1 + 40);
  v5 = v2;
  v12 = v5;
  v6 = v3;
  [v4 addCompletionBlock:v10];

  v7 = v12;
  v8 = v5;

  return v5;
}

void __32__AMSPromise_continueWithBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = AMSSetLogKey(*(a1 + 32));
  v7 = objc_autoreleasePoolPush();
  v8 = (*(*(a1 + 48) + 16))();
  [*(a1 + 40) finishWithPromise:v8];

  objc_autoreleasePoolPop(v7);
}

id __32__AMSPromise_continueWithBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = [v3 result];
  v7 = [v3 error];
  v8 = (*(v5 + 16))(v5, v6, v7);

  objc_autoreleasePoolPop(v4);

  return v8;
}

- (id)thenWithBinaryPromiseBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__AMSPromise_thenWithBinaryPromiseBlock___block_invoke;
  v8[3] = &unk_1E73BAD68;
  v9 = blockCopy;
  v5 = blockCopy;
  v6 = [(AMSPromise *)self continueWithBinaryPromiseBlock:v8];

  return v6;
}

id __41__AMSPromise_thenWithBinaryPromiseBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    [AMSBinaryPromise promiseWithError:v6];
  }
  v8 = ;
  objc_autoreleasePoolPop(v7);

  return v8;
}

- (id)thenWithBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__AMSPromise_thenWithBlock___block_invoke;
  v8[3] = &unk_1E73BAD90;
  v9 = blockCopy;
  v5 = blockCopy;
  v6 = [(AMSPromise *)self continueWithBlock:v8];

  return v6;
}

id __28__AMSPromise_thenWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    [AMSPromise promiseWithError:v6];
  }
  v8 = ;
  objc_autoreleasePoolPop(v7);

  return v8;
}

- (id)BOOLCompletionHandlerAdapter
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__AMSPromise_BOOLCompletionHandlerAdapter__block_invoke;
  aBlock[3] = &unk_1E73B3168;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = [v2 copy];

  return v3;
}

void __42__AMSPromise_BOOLCompletionHandlerAdapter__block_invoke(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = a3;
    v6 = [v4 numberWithBool:1];
    [AMSMutablePromise finishPromise:"finishPromise:withResult:error:" withResult:v3 error:?];
  }

  else
  {
    v6 = a3;
    [AMSMutablePromise finishPromise:v3 withResult:0 error:?];
  }
}

- (id)errorOnlyCompletionHandlerAdapter
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__AMSPromise_errorOnlyCompletionHandlerAdapter__block_invoke;
  aBlock[3] = &unk_1E73B34B8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = [v2 copy];

  return v3;
}

BOOL __47__AMSPromise_errorOnlyCompletionHandlerAdapter__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [AMSMutablePromise finishPromise:v2 withError:a2];
  }

  else
  {
    return [AMSMutablePromise finishPromise:v2 withResult:MEMORY[0x1E695E118]];
  }
}

- (id)nilValueCompletionHandlerAdapter
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__AMSPromise_nilValueCompletionHandlerAdapter__block_invoke;
  aBlock[3] = &unk_1E73B8618;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = [v2 copy];

  return v3;
}

void __46__AMSPromise_nilValueCompletionHandlerAdapter__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v8 | v5)
  {
    if (v8)
    {
      [AMSMutablePromise finishPromise:v6 withResult:?];
    }

    else
    {
      [AMSMutablePromise finishPromise:v6 withError:v5];
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DFB0] null];
    [AMSMutablePromise finishPromise:v6 withResult:v7];
  }
}

+ (void)_configureFlattenedPromise:(id)promise withPromises:(id)promises results:(id)results previousError:(id)error currentPromiseIndex:(unint64_t)index
{
  promiseCopy = promise;
  promisesCopy = promises;
  resultsCopy = results;
  errorCopy = error;
  v15 = [promisesCopy objectAtIndexedSubscript:index];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __96__AMSPromise__configureFlattenedPromise_withPromises_results_previousError_currentPromiseIndex___block_invoke;
  v30[3] = &unk_1E73BAE30;
  v16 = resultsCopy;
  v31 = v16;
  indexCopy = index;
  v17 = promisesCopy;
  v32 = v17;
  v18 = promiseCopy;
  v33 = v18;
  v19 = errorCopy;
  v34 = v19;
  [v15 addSuccessBlock:v30];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __96__AMSPromise__configureFlattenedPromise_withPromises_results_previousError_currentPromiseIndex___block_invoke_2;
  v24[3] = &unk_1E73BAE58;
  v28 = v16;
  indexCopy2 = index;
  v25 = v19;
  v26 = v17;
  v27 = v18;
  v20 = v16;
  v21 = v18;
  v22 = v17;
  v23 = v19;
  [v15 addErrorBlock:v24];
}

uint64_t __96__AMSPromise__configureFlattenedPromise_withPromises_results_previousError_currentPromiseIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v3 = *(a1 + 64);
  v4 = [*(a1 + 40) count];
  v5 = *(a1 + 48);
  if (v3 == v4 - 1)
  {
    v6 = *(a1 + 32);

    return [AMSMutablePromise finishPromise:v5 withResult:v6];
  }

  else
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64) + 1;

    return [AMSPromise _configureFlattenedPromise:v5 withPromises:v8 results:v9 previousError:v10 currentPromiseIndex:v11];
  }
}

void __96__AMSPromise__configureFlattenedPromise_withPromises_results_previousError_currentPromiseIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v3 code];
  v6 = [v3 ams_title];
  v7 = [v3 ams_message];
  v8 = [v3 userInfo];

  v12 = AMSCustomError(v4, v5, v6, v7, v8, *(a1 + 32));

  v9 = *(a1 + 64);
  v10 = [*(a1 + 40) count];
  v11 = *(a1 + 48);
  if (v9 == v10 - 1)
  {
    [AMSMutablePromise finishPromise:v11 withError:v12];
  }

  else
  {
    [AMSPromise _configureFlattenedPromise:v11 withPromises:*(a1 + 40) results:*(a1 + 56) previousError:v12 currentPromiseIndex:*(a1 + 64) + 1];
  }
}

+ (void)_enumeratePromises:(id)promises startingAt:(int64_t)at block:(id)block
{
  promisesCopy = promises;
  blockCopy = block;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__AMSPromise__enumeratePromises_startingAt_block___block_invoke;
  aBlock[3] = &unk_1E73BAE80;
  v9 = promisesCopy;
  v31 = v9;
  v10 = blockCopy;
  v32 = v10;
  v11 = _Block_copy(aBlock);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  while (at < [v9 count] && (v27[3] & 1) != 0)
  {
    v12 = [v9 objectAtIndexedSubscript:at];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __50__AMSPromise__enumeratePromises_startingAt_block___block_invoke_2;
    v19[3] = &unk_1E73BAED0;
    v13 = v12;
    v20 = v13;
    v14 = v11;
    v22 = v14;
    atCopy = at;
    v21 = v9;
    v23 = v10;
    v24 = &v26;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__AMSPromise__enumeratePromises_startingAt_block___block_invoke_4;
    v15[3] = &unk_1E73BAEF8;
    v17 = &v26;
    v16 = v14;
    atCopy2 = at;
    [v13 addBlock:v19 orCallWithResult:v15];

    ++at;
  }

  _Block_object_dispose(&v26, 8);
}

uint64_t __50__AMSPromise__enumeratePromises_startingAt_block___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) count];
  v10 = (v9 - 1 != a4) & (*(*(a1 + 40) + 16))();
  if ((v10 & 1) == 0)
  {
    for (i = a4 + 1; i < [*(a1 + 32) count]; ++i)
    {
      v12 = [*(a1 + 32) objectAtIndexedSubscript:i];
      [AMSMutablePromise cancelPromise:v12];
    }
  }

  return v10;
}

void __50__AMSPromise__enumeratePromises_startingAt_block___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlocks];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AMSPromise__enumeratePromises_startingAt_block___block_invoke_3;
  v5[3] = &unk_1E73BAEA8;
  v3 = *(a1 + 48);
  v4 = *(a1 + 72);
  v7 = v3;
  v9 = v4;
  v6 = *(a1 + 40);
  v8 = *(a1 + 56);
  [v2 addCompletionBlock:v5];
  *(*(*(a1 + 64) + 8) + 24) = 0;
}

uint64_t __50__AMSPromise__enumeratePromises_startingAt_block___block_invoke_3(void *a1)
{
  result = (*(a1[5] + 16))();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[6];
    v5 = a1[7] + 1;

    return [AMSPromise _enumeratePromises:v3 startingAt:v5 block:v4];
  }

  return result;
}

void __50__AMSPromise__enumeratePromises_startingAt_block___block_invoke_4(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v6 = [v4 result];
  v5 = [v4 error];

  *(*(a1[5] + 8) + 24) = (*(v3 + 16))(v3, v6, v5, a1[6]);
}

+ (BOOL)_errorIsCanceledError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    v5 = [errorCopy code] == 3072;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_errorIsTimeOutError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:@"AMSErrorDomain"])
  {
    v5 = [errorCopy code] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)binaryPromiseAdapterForClass:(Class)class
{
  v5[4] = class;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__AMSPromise_binaryPromiseAdapterForClass___block_invoke;
  v6[3] = &unk_1E73BAF20;
  v6[4] = self;
  v6[5] = class;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AMSPromise_binaryPromiseAdapterForClass___block_invoke_3;
  v5[3] = &__block_descriptor_40_e26__16__0__AMSPromiseResult_8lu32l8;
  v3 = [(AMSPromise *)self valueFromAddingBlock:v6 orCallWithResult:v5];

  return v3;
}

id __43__AMSPromise_binaryPromiseAdapterForClass___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(*(a1 + 40));
  v3 = [*(a1 + 32) completionBlocks];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__AMSPromise_binaryPromiseAdapterForClass___block_invoke_2;
  v6[3] = &unk_1E73B8618;
  v4 = v2;
  v7 = v4;
  [v3 addCompletionBlock:v6];

  return v4;
}

id __43__AMSPromise_binaryPromiseAdapterForClass___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 result];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 promiseWithSuccess];
  }

  else
  {
    v7 = [v3 error];
    v6 = [v5 promiseWithError:v7];
  }

  return v6;
}

- (BOOL)finishWithPromiseResult:(id)result
{
  resultCopy = result;
  result = [resultCopy result];
  error = [resultCopy error];

  LOBYTE(self) = [AMSMutablePromise finishPromise:self withResult:result error:error];
  return self;
}

+ (id)promiseFinishedWithDefaultErrorOrResult:(id)result
{
  resultCopy = result;
  v10 = AMSErrorWithFormat(12, @"No result found.", @"Completed promise without result.", v5, v6, v7, v8, v9, v13);
  if (resultCopy)
  {
    [self promiseWithResult:resultCopy];
  }

  else
  {
    [self promiseWithError:v10];
  }
  v11 = ;

  return v11;
}

@end