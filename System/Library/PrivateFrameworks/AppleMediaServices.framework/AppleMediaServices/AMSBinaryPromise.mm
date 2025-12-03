@interface AMSBinaryPromise
+ (id)promiseWithAll:(id)all;
+ (id)promiseWithAny:(id)any;
+ (id)promiseWithError:(id)error;
+ (id)promiseWithFlattenedPromises:(id)promises;
+ (id)promiseWithPromise:(id)promise;
+ (id)promiseWithSuccess;
- (AMSBinaryPromise)init;
- (AMSBinaryPromise)initWithBackingPromise:(id)promise;
- (BOOL)resultWithError:(id *)error;
- (BOOL)resultWithTimeout:(double)timeout error:(id *)error;
- (id)catchWithBlock:(id)block;
- (id)catchWithPromiseBlock:(id)block successValue:(id)value;
- (id)completionHandlerAdapter;
- (id)continueWithBlock:(id)block;
- (id)continueWithPromiseBlock:(id)block;
- (id)promiseAdapter;
- (id)thenWithBlock:(id)block;
- (id)thenWithPromiseBlock:(id)block;
- (void)addErrorBlock:(id)block;
- (void)addFinishBlock:(id)block;
- (void)addSuccessBlock:(id)block;
- (void)resultWithTimeout:(double)timeout completion:(id)completion;
- (void)stopRetainingSelf;
- (void)waitUntilFinished;
- (void)waitUntilFinishedWithTimeout:(double)timeout;
@end

@implementation AMSBinaryPromise

+ (id)promiseWithSuccess
{
  if (objc_opt_class() == self)
  {
    if (_MergedGlobals_90 != -1)
    {
      dispatch_once(&_MergedGlobals_90, &__block_literal_global_13);
    }

    v5 = qword_1ED6E27C8;
  }

  else
  {
    v3 = [self alloc];
    v4 = [AMSFinishedPromise promiseWithResult:MEMORY[0x1E695E118]];
    v5 = [v3 initWithBackingPromise:v4];
  }

  return v5;
}

void __38__AMSBinaryPromise_promiseWithSuccess__block_invoke()
{
  v0 = [AMSBinaryPromise alloc];
  v3 = [AMSFinishedPromise promiseWithResult:MEMORY[0x1E695E118]];
  v1 = [(AMSBinaryPromise *)v0 initWithBackingPromise:v3];
  v2 = qword_1ED6E27C8;
  qword_1ED6E27C8 = v1;
}

- (void)stopRetainingSelf
{
  selfCopy = self;
  os_unfair_lock_lock_with_options();
  [(AMSBinaryPromise *)selfCopy setRetainedSelf:0];
  os_unfair_lock_unlock(&self->_backingPromise->super._stateLock);
}

- (id)promiseAdapter
{
  v3 = objc_alloc_init(AMSMutablePromise);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__AMSBinaryPromise_promiseAdapter__block_invoke;
  v11[3] = &unk_1E73B3680;
  v4 = v3;
  v12 = v4;
  [(AMSBinaryPromise *)self addSuccessBlock:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__AMSBinaryPromise_promiseAdapter__block_invoke_2;
  v9[3] = &unk_1E73B34B8;
  v5 = v4;
  v10 = v5;
  [(AMSBinaryPromise *)self addErrorBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

- (AMSBinaryPromise)init
{
  v3 = objc_alloc_init(AMSMutablePromise);
  v4 = [(AMSBinaryPromise *)self initWithBackingPromise:v3];

  return v4;
}

- (AMSBinaryPromise)initWithBackingPromise:(id)promise
{
  promiseCopy = promise;
  v10.receiver = self;
  v10.super_class = AMSBinaryPromise;
  v6 = [(AMSBinaryPromise *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingPromise, promise);
    if ([promiseCopy isFinished])
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    objc_storeStrong(&v7->_retainedSelf, v8);
  }

  return v7;
}

+ (id)promiseWithAll:(id)all
{
  v4 = [all ams_mapWithTransform:&__block_literal_global_20];
  v5 = [AMSPromise promiseWithAll:v4];
  v6 = [v5 binaryPromiseAdapterForClass:self];

  return v6;
}

+ (id)promiseWithAny:(id)any
{
  v4 = [any ams_mapWithTransform:&__block_literal_global_3_0];
  v5 = [AMSPromise promiseWithAny:v4];
  v6 = [v5 binaryPromiseAdapterForClass:self];

  return v6;
}

+ (id)promiseWithError:(id)error
{
  errorCopy = error;
  v5 = [self alloc];
  v6 = [AMSFinishedPromise promiseWithError:errorCopy];

  v7 = [v5 initWithBackingPromise:v6];

  return v7;
}

+ (id)promiseWithFlattenedPromises:(id)promises
{
  v4 = [promises ams_mapWithTransform:&__block_literal_global_6];
  v5 = [AMSPromise promiseWithAll:v4];
  v6 = [v5 binaryPromiseAdapterForClass:self];

  return v6;
}

+ (id)promiseWithPromise:(id)promise
{
  promiseCopy = promise;
  v4 = objc_alloc_init(AMSMutableBinaryPromise);
  objc_initWeak(&location, v4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__AMSBinaryPromise_promiseWithPromise___block_invoke;
  v8[3] = &unk_1E73B4ED8;
  objc_copyWeak(&v9, &location);
  [promiseCopy addSuccessBlock:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__AMSBinaryPromise_promiseWithPromise___block_invoke_2;
  v6[3] = &unk_1E73B4F00;
  objc_copyWeak(&v7, &location);
  [promiseCopy addErrorBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v4;
}

void __39__AMSBinaryPromise_promiseWithPromise___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishWithSuccess];
}

void __39__AMSBinaryPromise_promiseWithPromise___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishWithError:v3];
}

- (void)addErrorBlock:(id)block
{
  blockCopy = block;
  backingPromise = [(AMSBinaryPromise *)self backingPromise];
  [backingPromise addErrorBlock:blockCopy];
}

- (void)addFinishBlock:(id)block
{
  blockCopy = block;
  backingPromise = [(AMSBinaryPromise *)self backingPromise];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__AMSBinaryPromise_addFinishBlock___block_invoke;
  v7[3] = &unk_1E73B4F28;
  v8 = blockCopy;
  v6 = blockCopy;
  [backingPromise addFinishBlock:v7];
}

void __35__AMSBinaryPromise_addFinishBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 BOOLValue], v5);
}

- (void)addSuccessBlock:(id)block
{
  blockCopy = block;
  backingPromise = [(AMSBinaryPromise *)self backingPromise];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__AMSBinaryPromise_addSuccessBlock___block_invoke;
  v7[3] = &unk_1E73B4F50;
  v8 = blockCopy;
  v6 = blockCopy;
  [backingPromise addSuccessBlock:v7];
}

- (BOOL)resultWithError:(id *)error
{
  backingPromise = [(AMSBinaryPromise *)self backingPromise];
  v5 = [backingPromise resultWithError:error];
  LOBYTE(error) = v5 != 0;

  return error;
}

- (void)resultWithTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  backingPromise = [(AMSBinaryPromise *)self backingPromise];
  v8 = [backingPromise promiseWithTimeout:timeout];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__AMSBinaryPromise_resultWithTimeout_completion___block_invoke;
  v13[3] = &unk_1E73B4F78;
  v9 = completionCopy;
  v14 = v9;
  [v8 addErrorBlock:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__AMSBinaryPromise_resultWithTimeout_completion___block_invoke_2;
  v11[3] = &unk_1E73B4FA0;
  v12 = v9;
  v10 = v9;
  [v8 addSuccessBlock:v11];
}

- (BOOL)resultWithTimeout:(double)timeout error:(id *)error
{
  backingPromise = [(AMSBinaryPromise *)self backingPromise];
  v7 = [backingPromise resultWithTimeout:error error:timeout];
  LOBYTE(error) = v7 != 0;

  return error;
}

- (void)waitUntilFinished
{
  backingPromise = [(AMSBinaryPromise *)self backingPromise];
  [backingPromise waitUntilFinished];
}

- (void)waitUntilFinishedWithTimeout:(double)timeout
{
  backingPromise = [(AMSBinaryPromise *)self backingPromise];
  [backingPromise waitUntilFinishedWithTimeout:timeout];
}

- (id)catchWithBlock:(id)block
{
  blockCopy = block;
  backingPromise = [(AMSBinaryPromise *)self backingPromise];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__AMSBinaryPromise_catchWithBlock___block_invoke;
  v10[3] = &unk_1E73B4FC8;
  v11 = blockCopy;
  v6 = blockCopy;
  v7 = [backingPromise catchWithBlock:v10];
  v8 = [v7 binaryPromiseAdapterForClass:objc_opt_class()];

  return v8;
}

id __35__AMSBinaryPromise_catchWithBlock___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 promiseAdapter];

  return v2;
}

- (id)catchWithPromiseBlock:(id)block successValue:(id)value
{
  blockCopy = block;
  valueCopy = value;
  backingPromise = [(AMSBinaryPromise *)self backingPromise];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__AMSBinaryPromise_catchWithPromiseBlock_successValue___block_invoke;
  v13[3] = &unk_1E73B4FF0;
  v14 = valueCopy;
  v15 = blockCopy;
  v9 = blockCopy;
  v10 = valueCopy;
  v11 = [backingPromise continueWithBlock:v13];

  return v11;
}

id __55__AMSBinaryPromise_catchWithPromiseBlock_successValue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 BOOLValue])
  {
    [AMSPromise promiseWithResult:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
  v6 = ;

  return v6;
}

- (id)continueWithBlock:(id)block
{
  blockCopy = block;
  backingPromise = [(AMSBinaryPromise *)self backingPromise];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__AMSBinaryPromise_continueWithBlock___block_invoke;
  v10[3] = &unk_1E73B5018;
  v11 = blockCopy;
  v6 = blockCopy;
  v7 = [backingPromise continueWithBlock:v10];
  v8 = [v7 binaryPromiseAdapterForClass:objc_opt_class()];

  return v8;
}

id __38__AMSBinaryPromise_continueWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v8 = [v5 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(v7 + 16))(v7, v8, v6);
  v10 = [v9 promiseAdapter];

  return v10;
}

- (id)continueWithPromiseBlock:(id)block
{
  blockCopy = block;
  backingPromise = [(AMSBinaryPromise *)self backingPromise];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__AMSBinaryPromise_continueWithPromiseBlock___block_invoke;
  v9[3] = &unk_1E73B5018;
  v10 = blockCopy;
  v6 = blockCopy;
  v7 = [backingPromise continueWithBlock:v9];

  return v7;
}

id __45__AMSBinaryPromise_continueWithPromiseBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = (*(v4 + 16))(v4, [a2 BOOLValue], v5);

  return v6;
}

- (id)thenWithBlock:(id)block
{
  blockCopy = block;
  backingPromise = [(AMSBinaryPromise *)self backingPromise];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__AMSBinaryPromise_thenWithBlock___block_invoke;
  v10[3] = &unk_1E73B5040;
  v11 = blockCopy;
  v6 = blockCopy;
  v7 = [backingPromise thenWithBlock:v10];
  v8 = [v7 binaryPromiseAdapterForClass:objc_opt_class()];

  return v8;
}

id __34__AMSBinaryPromise_thenWithBlock___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 promiseAdapter];

  return v2;
}

- (id)thenWithPromiseBlock:(id)block
{
  blockCopy = block;
  backingPromise = [(AMSBinaryPromise *)self backingPromise];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__AMSBinaryPromise_thenWithPromiseBlock___block_invoke;
  v9[3] = &unk_1E73B5040;
  v10 = blockCopy;
  v6 = blockCopy;
  v7 = [backingPromise thenWithBlock:v9];

  return v7;
}

- (id)completionHandlerAdapter
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__AMSBinaryPromise_completionHandlerAdapter__block_invoke;
  aBlock[3] = &unk_1E73B3168;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = [v2 copy];

  return v3;
}

BOOL __44__AMSBinaryPromise_completionHandlerAdapter__block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    return [AMSMutableBinaryPromise finishPromise:v4 withSuccess:1];
  }

  else
  {
    return [AMSMutableBinaryPromise finishPromise:v4 withError:a3];
  }
}

@end