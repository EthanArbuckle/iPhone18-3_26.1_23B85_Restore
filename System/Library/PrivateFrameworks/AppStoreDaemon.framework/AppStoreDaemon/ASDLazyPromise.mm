@interface ASDLazyPromise
- (id)initOnScheduler:(id)a3 withExecutor:(id)a4;
- (id)joinWithPromise:(id)a3;
- (void)thenPerform:(id)a3 orCatchError:(id)a4 onScheduler:(id)a5;
@end

@implementation ASDLazyPromise

- (id)initOnScheduler:(id)a3 withExecutor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = ASDLazyPromise;
  v9 = [(ASDPromise *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    executor = v9->_executor;
    v9->_executor = v10;

    objc_storeStrong(&v9->_scheduler, a3);
  }

  return v9;
}

- (void)thenPerform:(id)a3 orCatchError:(id)a4 onScheduler:(id)a5
{
  stateLock = self->super._stateLock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__ASDLazyPromise_thenPerform_orCatchError_onScheduler___block_invoke;
  v13[3] = &unk_1E7CDB930;
  v13[4] = self;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  ASDWithLock(stateLock, v13);
  v12.receiver = self;
  v12.super_class = ASDLazyPromise;
  [(ASDPromise *)&v12 thenPerform:v11 orCatchError:v10 onScheduler:v9];
}

void __55__ASDLazyPromise_thenPerform_orCatchError_onScheduler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    [(ASDPromise *)v2 _invokeExecutor:v3 onScheduler:*(v2 + 48)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

- (id)joinWithPromise:(id)a3
{
  v4 = a3;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __34__ASDLazyPromise_joinWithPromise___block_invoke;
  v13 = &unk_1E7CDD8A8;
  v14 = self;
  v15 = v4;
  v5 = v4;
  v6 = MEMORY[0x1B8CBC4F0](&v10);
  v7 = +[ASDSyncTaskScheduler sharedInstance];
  v8 = [(ASDPromise *)ASDLazyPromise onScheduler:v7 usingBlock:v6, v10, v11, v12, v13, v14];

  return v8;
}

void __34__ASDLazyPromise_joinWithPromise___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__ASDLazyPromise_joinWithPromise___block_invoke_2;
  v13[3] = &unk_1E7CDD880;
  v7 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v5;
  v16 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__ASDLazyPromise_joinWithPromise___block_invoke_5;
  v11[3] = &unk_1E7CDB730;
  v12 = v16;
  v8 = v16;
  v9 = v5;
  v10 = objc_opt_new();
  [v7 thenPerform:v13 orCatchError:v11 onScheduler:v10];
}

void __34__ASDLazyPromise_joinWithPromise___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__ASDLazyPromise_joinWithPromise___block_invoke_3;
  v10[3] = &unk_1E7CDD3F0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__ASDLazyPromise_joinWithPromise___block_invoke_4;
  v8[3] = &unk_1E7CDB730;
  v9 = *(a1 + 48);
  v6 = v3;
  v7 = objc_opt_new();
  [v4 thenPerform:v10 orCatchError:v8 onScheduler:v7];
}

void __34__ASDLazyPromise_joinWithPromise___block_invoke_3(uint64_t a1, void *a2)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v7[0] = *(a1 + 32);
  v7[1] = a2;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = [v3 arrayWithObjects:v7 count:2];
  (*(v2 + 16))(v2, v5);

  v6 = *MEMORY[0x1E69E9840];
}

@end