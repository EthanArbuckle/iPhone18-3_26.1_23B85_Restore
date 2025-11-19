@interface AMSBinaryPromise
+ (id)promiseWithAll:(id)a3;
+ (id)promiseWithAny:(id)a3;
+ (id)promiseWithError:(id)a3;
+ (id)promiseWithFlattenedPromises:(id)a3;
+ (id)promiseWithPromise:(id)a3;
+ (id)promiseWithSuccess;
- (AMSBinaryPromise)init;
- (AMSBinaryPromise)initWithBackingPromise:(id)a3;
- (BOOL)resultWithError:(id *)a3;
- (BOOL)resultWithTimeout:(double)a3 error:(id *)a4;
- (id)catchWithBlock:(id)a3;
- (id)catchWithPromiseBlock:(id)a3 successValue:(id)a4;
- (id)completionHandlerAdapter;
- (id)continueWithBlock:(id)a3;
- (id)continueWithPromiseBlock:(id)a3;
- (id)promiseAdapter;
- (id)thenWithBlock:(id)a3;
- (id)thenWithPromiseBlock:(id)a3;
- (void)addErrorBlock:(id)a3;
- (void)addFinishBlock:(id)a3;
- (void)addSuccessBlock:(id)a3;
- (void)resultWithTimeout:(double)a3 completion:(id)a4;
- (void)stopRetainingSelf;
- (void)waitUntilFinished;
- (void)waitUntilFinishedWithTimeout:(double)a3;
@end

@implementation AMSBinaryPromise

+ (id)promiseWithSuccess
{
  if (objc_opt_class() == a1)
  {
    if (_MergedGlobals_90 != -1)
    {
      dispatch_once(&_MergedGlobals_90, &__block_literal_global_13);
    }

    v5 = qword_1ED6E27C8;
  }

  else
  {
    v3 = [a1 alloc];
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
  v3 = self;
  os_unfair_lock_lock_with_options();
  [(AMSBinaryPromise *)v3 setRetainedSelf:0];
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

- (AMSBinaryPromise)initWithBackingPromise:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = AMSBinaryPromise;
  v6 = [(AMSBinaryPromise *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingPromise, a3);
    if ([v5 isFinished])
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

+ (id)promiseWithAll:(id)a3
{
  v4 = [a3 ams_mapWithTransform:&__block_literal_global_20];
  v5 = [AMSPromise promiseWithAll:v4];
  v6 = [v5 binaryPromiseAdapterForClass:a1];

  return v6;
}

+ (id)promiseWithAny:(id)a3
{
  v4 = [a3 ams_mapWithTransform:&__block_literal_global_3_0];
  v5 = [AMSPromise promiseWithAny:v4];
  v6 = [v5 binaryPromiseAdapterForClass:a1];

  return v6;
}

+ (id)promiseWithError:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [AMSFinishedPromise promiseWithError:v4];

  v7 = [v5 initWithBackingPromise:v6];

  return v7;
}

+ (id)promiseWithFlattenedPromises:(id)a3
{
  v4 = [a3 ams_mapWithTransform:&__block_literal_global_6];
  v5 = [AMSPromise promiseWithAll:v4];
  v6 = [v5 binaryPromiseAdapterForClass:a1];

  return v6;
}

+ (id)promiseWithPromise:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AMSMutableBinaryPromise);
  objc_initWeak(&location, v4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__AMSBinaryPromise_promiseWithPromise___block_invoke;
  v8[3] = &unk_1E73B4ED8;
  objc_copyWeak(&v9, &location);
  [v3 addSuccessBlock:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__AMSBinaryPromise_promiseWithPromise___block_invoke_2;
  v6[3] = &unk_1E73B4F00;
  objc_copyWeak(&v7, &location);
  [v3 addErrorBlock:v6];
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

- (void)addErrorBlock:(id)a3
{
  v4 = a3;
  v5 = [(AMSBinaryPromise *)self backingPromise];
  [v5 addErrorBlock:v4];
}

- (void)addFinishBlock:(id)a3
{
  v4 = a3;
  v5 = [(AMSBinaryPromise *)self backingPromise];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__AMSBinaryPromise_addFinishBlock___block_invoke;
  v7[3] = &unk_1E73B4F28;
  v8 = v4;
  v6 = v4;
  [v5 addFinishBlock:v7];
}

void __35__AMSBinaryPromise_addFinishBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 BOOLValue], v5);
}

- (void)addSuccessBlock:(id)a3
{
  v4 = a3;
  v5 = [(AMSBinaryPromise *)self backingPromise];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__AMSBinaryPromise_addSuccessBlock___block_invoke;
  v7[3] = &unk_1E73B4F50;
  v8 = v4;
  v6 = v4;
  [v5 addSuccessBlock:v7];
}

- (BOOL)resultWithError:(id *)a3
{
  v4 = [(AMSBinaryPromise *)self backingPromise];
  v5 = [v4 resultWithError:a3];
  LOBYTE(a3) = v5 != 0;

  return a3;
}

- (void)resultWithTimeout:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(AMSBinaryPromise *)self backingPromise];
  v8 = [v7 promiseWithTimeout:a3];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__AMSBinaryPromise_resultWithTimeout_completion___block_invoke;
  v13[3] = &unk_1E73B4F78;
  v9 = v6;
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

- (BOOL)resultWithTimeout:(double)a3 error:(id *)a4
{
  v6 = [(AMSBinaryPromise *)self backingPromise];
  v7 = [v6 resultWithTimeout:a4 error:a3];
  LOBYTE(a4) = v7 != 0;

  return a4;
}

- (void)waitUntilFinished
{
  v2 = [(AMSBinaryPromise *)self backingPromise];
  [v2 waitUntilFinished];
}

- (void)waitUntilFinishedWithTimeout:(double)a3
{
  v4 = [(AMSBinaryPromise *)self backingPromise];
  [v4 waitUntilFinishedWithTimeout:a3];
}

- (id)catchWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(AMSBinaryPromise *)self backingPromise];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__AMSBinaryPromise_catchWithBlock___block_invoke;
  v10[3] = &unk_1E73B4FC8;
  v11 = v4;
  v6 = v4;
  v7 = [v5 catchWithBlock:v10];
  v8 = [v7 binaryPromiseAdapterForClass:objc_opt_class()];

  return v8;
}

id __35__AMSBinaryPromise_catchWithBlock___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 promiseAdapter];

  return v2;
}

- (id)catchWithPromiseBlock:(id)a3 successValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSBinaryPromise *)self backingPromise];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__AMSBinaryPromise_catchWithPromiseBlock_successValue___block_invoke;
  v13[3] = &unk_1E73B4FF0;
  v14 = v7;
  v15 = v6;
  v9 = v6;
  v10 = v7;
  v11 = [v8 continueWithBlock:v13];

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

- (id)continueWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(AMSBinaryPromise *)self backingPromise];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__AMSBinaryPromise_continueWithBlock___block_invoke;
  v10[3] = &unk_1E73B5018;
  v11 = v4;
  v6 = v4;
  v7 = [v5 continueWithBlock:v10];
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

- (id)continueWithPromiseBlock:(id)a3
{
  v4 = a3;
  v5 = [(AMSBinaryPromise *)self backingPromise];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__AMSBinaryPromise_continueWithPromiseBlock___block_invoke;
  v9[3] = &unk_1E73B5018;
  v10 = v4;
  v6 = v4;
  v7 = [v5 continueWithBlock:v9];

  return v7;
}

id __45__AMSBinaryPromise_continueWithPromiseBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = (*(v4 + 16))(v4, [a2 BOOLValue], v5);

  return v6;
}

- (id)thenWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(AMSBinaryPromise *)self backingPromise];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__AMSBinaryPromise_thenWithBlock___block_invoke;
  v10[3] = &unk_1E73B5040;
  v11 = v4;
  v6 = v4;
  v7 = [v5 thenWithBlock:v10];
  v8 = [v7 binaryPromiseAdapterForClass:objc_opt_class()];

  return v8;
}

id __34__AMSBinaryPromise_thenWithBlock___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 promiseAdapter];

  return v2;
}

- (id)thenWithPromiseBlock:(id)a3
{
  v4 = a3;
  v5 = [(AMSBinaryPromise *)self backingPromise];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__AMSBinaryPromise_thenWithPromiseBlock___block_invoke;
  v9[3] = &unk_1E73B5040;
  v10 = v4;
  v6 = v4;
  v7 = [v5 thenWithBlock:v9];

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