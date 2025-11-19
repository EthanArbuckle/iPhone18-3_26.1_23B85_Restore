@interface ASDPromise
+ (ASDPromise)promiseWithError:(id)a3;
+ (ASDPromise)promiseWithValue:(id)a3;
+ (id)onScheduler:(id)a3 usingBlock:(id)a4;
- (ASDPromise)initWithError:(id)a3;
- (ASDPromise)initWithValue:(id)a3;
- (BOOL)isResolved;
- (id)completionHandlerAdapter;
- (id)flatMapUsingTransformer:(id)a3 onScheduler:(id)a4;
- (id)initOnScheduler:(id)a3 withExecutor:(id)a4;
- (id)initWithState:(void *)a3 result:;
- (id)joinWithPromise:(id)a3;
- (id)mapUsingTransformer:(id)a3 onScheduler:(id)a4;
- (void)_invokeExecutor:(void *)a3 onScheduler:;
- (void)alwaysPerform:(id)a3 onScheduler:(id)a4;
- (void)rejectWithError:(id)a3;
- (void)resolveWithValue:(id)a3;
- (void)thenPerform:(id)a3 orCatchError:(id)a4 onScheduler:(id)a5;
@end

@implementation ASDPromise

+ (id)onScheduler:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initOnScheduler:v7 withExecutor:v6];

  return v8;
}

+ (ASDPromise)promiseWithValue:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithValue:v4];

  return v5;
}

+ (ASDPromise)promiseWithError:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithError:v4];

  return v5;
}

- (id)initWithState:(void *)a3 result:
{
  v6 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = ASDPromise;
    a1 = objc_msgSendSuper2(&v12, sel_init);
    if (a1)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696AE68]);
      v8 = a1[3];
      a1[3] = v7;

      a1[2] = a2;
      objc_storeStrong(a1 + 4, a3);
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = a1[1];
      a1[1] = v9;
    }
  }

  return a1;
}

- (ASDPromise)initWithValue:(id)a3
{
  v4 = [ASDPromiseResult resultWithValue:a3];
  v5 = [(ASDPromise *)&self->super.isa initWithState:v4 result:?];

  return v5;
}

- (ASDPromise)initWithError:(id)a3
{
  v4 = [ASDPromiseResult resultWithError:a3];
  v5 = [(ASDPromise *)&self->super.isa initWithState:v4 result:?];

  return v5;
}

- (id)initOnScheduler:(id)a3 withExecutor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASDPromise *)self init];
  v9 = v8;
  if (v8)
  {
    [(ASDPromise *)v8 _invokeExecutor:v7 onScheduler:v6];
  }

  return v9;
}

- (void)_invokeExecutor:(void *)a3 onScheduler:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__ASDPromise__invokeExecutor_onScheduler___block_invoke;
    v7[3] = &unk_1E7CDB890;
    v7[4] = a1;
    v8 = v5;
    [a3 scheduleBlock:v7];
  }
}

- (BOOL)isResolved
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateLock = self->_stateLock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__ASDPromise_isResolved__block_invoke;
  v5[3] = &unk_1E7CDB840;
  v5[4] = self;
  v5[5] = &v6;
  ASDWithLock(stateLock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)alwaysPerform:(id)a3 onScheduler:(id)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__ASDPromise_alwaysPerform_onScheduler___block_invoke;
  v10[3] = &unk_1E7CDD770;
  v11 = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__ASDPromise_alwaysPerform_onScheduler___block_invoke_2;
  v8[3] = &unk_1E7CDB730;
  v9 = v11;
  v7 = v11;
  [(ASDPromise *)self thenPerform:v10 orCatchError:v8 onScheduler:a4];
}

- (void)thenPerform:(id)a3 orCatchError:(id)a4 onScheduler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  stateLock = self->_stateLock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__ASDPromise_thenPerform_orCatchError_onScheduler___block_invoke;
  v15[3] = &unk_1E7CDD7B8;
  v18 = v8;
  v19 = v9;
  v16 = v10;
  v17 = self;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  ASDWithLock(stateLock, v15);
}

uint64_t __51__ASDPromise_thenPerform_orCatchError_onScheduler___block_invoke(void *a1)
{
  v2 = [[ASDPromiseObserver alloc] initWithValueBlock:a1[6] errorBlock:a1[7] scheduler:a1[4]];
  v3 = a1[5];
  v4 = *(v3 + 16);
  switch(v4)
  {
    case 2:
      v9 = v2;
      v5 = [v3 result];
      v6 = [v5 error];
      [(ASDPromiseObserver *)v9 notifyRejectedWithError:v6];
      goto LABEL_7;
    case 1:
      v8 = v2;
      v5 = [v3 result];
      v6 = [v5 value];
      [(ASDPromiseObserver *)v8 notifyResolvedWithValue:v6];
LABEL_7:

      break;
    case 0:
      [*(v3 + 8) addObject:v2];
      break;
  }

  return MEMORY[0x1EEE66BB8]();
}

- (id)mapUsingTransformer:(id)a3 onScheduler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(ASDPromise);
  if (!v7)
  {
    v7 = objc_alloc_init(ASDSyncTaskScheduler);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__ASDPromise_mapUsingTransformer_onScheduler___block_invoke;
  v16[3] = &unk_1E7CDD3F0;
  v18 = v6;
  v17 = v8;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__ASDPromise_mapUsingTransformer_onScheduler___block_invoke_2;
  v14[3] = &unk_1E7CDB980;
  v9 = v17;
  v15 = v9;
  v10 = v6;
  [(ASDPromise *)self thenPerform:v16 orCatchError:v14 onScheduler:v7];
  v11 = v15;
  v12 = v9;

  return v9;
}

void __46__ASDPromise_mapUsingTransformer_onScheduler___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) resolveWithValue:v2];
}

- (id)flatMapUsingTransformer:(id)a3 onScheduler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(ASDPromise);
  if (!v7)
  {
    v7 = objc_alloc_init(ASDSyncTaskScheduler);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __50__ASDPromise_flatMapUsingTransformer_onScheduler___block_invoke;
  v17[3] = &unk_1E7CDD808;
  v20 = v6;
  v18 = v8;
  v19 = v7;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__ASDPromise_flatMapUsingTransformer_onScheduler___block_invoke_4;
  v15[3] = &unk_1E7CDB980;
  v9 = v18;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  [(ASDPromise *)self thenPerform:v17 orCatchError:v15 onScheduler:v10];
  v12 = v16;
  v13 = v9;

  return v9;
}

void __50__ASDPromise_flatMapUsingTransformer_onScheduler___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 48) + 16))();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__ASDPromise_flatMapUsingTransformer_onScheduler___block_invoke_2;
  v5[3] = &unk_1E7CDD7E0;
  v6 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__ASDPromise_flatMapUsingTransformer_onScheduler___block_invoke_3;
  v3[3] = &unk_1E7CDB980;
  v4 = *(a1 + 32);
  [v2 thenPerform:v5 orCatchError:v3 onScheduler:*(a1 + 40)];
}

- (id)joinWithPromise:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ASDPromise);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __30__ASDPromise_joinWithPromise___block_invoke;
  v14[3] = &unk_1E7CDD830;
  v15 = v4;
  v16 = v5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __30__ASDPromise_joinWithPromise___block_invoke_4;
  v12[3] = &unk_1E7CDB980;
  v6 = v16;
  v13 = v6;
  v7 = v4;
  v8 = objc_opt_new();
  [(ASDPromise *)self thenPerform:v14 orCatchError:v12 onScheduler:v8];

  v9 = v13;
  v10 = v6;

  return v6;
}

void __30__ASDPromise_joinWithPromise___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __30__ASDPromise_joinWithPromise___block_invoke_2;
  v9[3] = &unk_1E7CDD830;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__ASDPromise_joinWithPromise___block_invoke_3;
  v7[3] = &unk_1E7CDB980;
  v8 = *(a1 + 40);
  v5 = v3;
  v6 = objc_opt_new();
  [v4 thenPerform:v9 orCatchError:v7 onScheduler:v6];
}

void __30__ASDPromise_joinWithPromise___block_invoke_2(uint64_t a1, void *a2)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v7[0] = *(a1 + 40);
  v7[1] = a2;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = [v3 arrayWithObjects:v7 count:2];
  [v2 resolveWithValue:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (id)completionHandlerAdapter
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__ASDPromise_completionHandlerAdapter__block_invoke;
  v4[3] = &unk_1E7CDD858;
  v4[4] = self;
  v2 = MEMORY[0x1B8CBC4F0](v4, a2);

  return v2;
}

uint64_t __38__ASDPromise_completionHandlerAdapter__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 resolveWithValue:a2];
  }

  else
  {
    return [v2 rejectWithError:?];
  }
}

- (void)resolveWithValue:(id)a3
{
  v4 = a3;
  stateLock = self->_stateLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__ASDPromise_resolveWithValue___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  ASDWithLock(stateLock, v7);
}

uint64_t __31__ASDPromise_resolveWithValue___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Promises may only be resolved once!"];
  }

  v2 = [ASDPromiseResult resultWithValue:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  *(*(a1 + 32) + 16) = 1;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(*(a1 + 32) + 8);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v9++) notifyResolvedWithValue:{*(a1 + 40), v12}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  result = [*(*(a1 + 32) + 8) removeAllObjects];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)rejectWithError:(id)a3
{
  v4 = a3;
  stateLock = self->_stateLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__ASDPromise_rejectWithError___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  ASDWithLock(stateLock, v7);
}

uint64_t __30__ASDPromise_rejectWithError___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Promises may only be resolved once!"];
  }

  v2 = [ASDPromiseResult resultWithError:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  *(*(a1 + 32) + 16) = 2;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(*(a1 + 32) + 8);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v9++) notifyRejectedWithError:{*(a1 + 40), v12}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  result = [*(*(a1 + 32) + 8) removeAllObjects];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __42__ASDPromise__invokeExecutor_onScheduler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__ASDPromise__invokeExecutor_onScheduler___block_invoke_2;
  v4[3] = &unk_1E7CDD7E0;
  v1 = *(a1 + 40);
  v5 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__ASDPromise__invokeExecutor_onScheduler___block_invoke_3;
  v3[3] = &unk_1E7CDB980;
  v3[4] = v5;
  return (*(v1 + 16))(v1, v4, v3);
}

@end