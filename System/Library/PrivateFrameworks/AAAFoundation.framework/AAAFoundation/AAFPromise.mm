@interface AAFPromise
+ (id)all:(id)a3;
- (AAFPromise)initWithBlock:(id)a3;
- (AAFPromise)initWithError:(id)a3;
- (AAFPromise)initWithValue:(id)a3;
- (id)_chain:(id)a3;
- (id)_placeBlock:(id)a3 onQueue:(id)a4;
- (id)catch;
- (id)catch:(id)a3;
- (id)catch:(id)a3 onQueue:(id)a4;
- (id)catchOnQueue;
- (id)then;
- (id)then:(id)a3;
- (id)then:(id)a3 onQueue:(id)a4;
- (id)thenOnQueue;
- (void)_completeWithValue:(id)a3 error:(id)a4;
- (void)_handleChainingResult:(id)a3 withCompletion:(id)a4;
- (void)_startWithBlock:(id)a3;
- (void)onComplete:(id)a3;
- (void)onComplete:(id)a3 onQueue:(id)a4;
@end

@implementation AAFPromise

- (id)catch
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __19__AAFPromise_catch__block_invoke;
  v4[3] = &unk_1E831C180;
  v4[4] = self;
  v2 = MEMORY[0x1CCA79A70](v4, a2);

  return v2;
}

- (id)then
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __18__AAFPromise_then__block_invoke;
  v4[3] = &unk_1E831C130;
  v4[4] = self;
  v2 = MEMORY[0x1CCA79A70](v4, a2);

  return v2;
}

- (AAFPromise)initWithBlock:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AAFPromise;
  v5 = [(AAFPromise *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.AAAFoundation.AAFPromise", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = [MEMORY[0x1E695DF70] array];
    callbacks = v5->_callbacks;
    v5->_callbacks = v9;

    [(AAFPromise *)v5 _startWithBlock:v4];
  }

  return v5;
}

- (AAFPromise)initWithValue:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__AAFPromise_initWithValue___block_invoke;
  v8[3] = &unk_1E831BE88;
  v9 = v4;
  v5 = v4;
  v6 = [(AAFPromise *)self initWithBlock:v8];

  return v6;
}

- (AAFPromise)initWithError:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__AAFPromise_initWithError___block_invoke;
  v8[3] = &unk_1E831BE88;
  v9 = v4;
  v5 = v4;
  v6 = [(AAFPromise *)self initWithBlock:v8];

  return v6;
}

- (void)_startWithBlock:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__AAFPromise__startWithBlock___block_invoke;
  v5[3] = &unk_1E831BEB0;
  v5[4] = self;
  v3 = a3;
  v4 = MEMORY[0x1CCA79A70](v5);
  v3[2](v3, v4);
}

- (void)_completeWithValue:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__AAFPromise__completeWithValue_error___block_invoke;
  block[3] = &unk_1E831BED8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __39__AAFPromise__completeWithValue_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 16) & 1) == 0)
  {
    *(v1 + 16) = 1;
    objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
    objc_storeStrong((*(a1 + 32) + 32), *(a1 + 48));
    v3 = *(*(a1 + 32) + 40);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(a1 + 40);
          v12 = *(a1 + 48);
          (*(*(*(&v14 + 1) + 8 * v10) + 16))(*(*(&v14 + 1) + 8 * v10));
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_chain:(id)a3
{
  v4 = a3;
  v5 = [AAFPromise alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __21__AAFPromise__chain___block_invoke;
  v9[3] = &unk_1E831BF28;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [(AAFPromise *)v5 initWithBlock:v9];

  return v7;
}

void __21__AAFPromise__chain___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __21__AAFPromise__chain___block_invoke_2;
  v7[3] = &unk_1E831BF00;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  [v4 onComplete:v7];
}

void __21__AAFPromise__chain___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _handleChainingResult:v2 withCompletion:*(a1 + 48)];
}

- (id)_placeBlock:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [AAFPromise alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__AAFPromise__placeBlock_onQueue___block_invoke;
  v13[3] = &unk_1E831BF78;
  v14 = v7;
  v15 = self;
  v16 = v6;
  v9 = v6;
  v10 = v7;
  v11 = [(AAFPromise *)v8 initWithBlock:v13];

  return v11;
}

void __34__AAFPromise__placeBlock_onQueue___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__AAFPromise__placeBlock_onQueue___block_invoke_2;
  block[3] = &unk_1E831BF50;
  v4 = a1[4];
  v5 = a1[6];
  block[4] = a1[5];
  v8 = v5;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

void __34__AAFPromise__placeBlock_onQueue___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = (*(a1[5] + 16))();
  [v2 _handleChainingResult:v3 withCompletion:a1[6]];
}

- (void)_handleChainingResult:(id)a3 withCompletion:(id)a4
{
  v9 = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 onComplete:v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = 0;
      v8 = v9;
    }

    else
    {
      v6 = v5;
      v7 = v9;
      v8 = 0;
    }

    (*(v5 + 2))(v6, v7, v8);
  }
}

- (void)onComplete:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__AAFPromise_onComplete___block_invoke;
  v7[3] = &unk_1E831BFC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __25__AAFPromise_onComplete___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 1)
  {
    v3 = *(a1 + 40);
    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    v6 = *(*(a1 + 40) + 16);

    v6();
  }

  else
  {
    v7 = v2;
    v8 = *(*(a1 + 32) + 40);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __25__AAFPromise_onComplete___block_invoke_2;
    v14 = &unk_1E831BFA0;
    v15 = v7;
    v16 = *(a1 + 40);
    v9 = v7;
    v10 = MEMORY[0x1CCA79A70](&v11);
    [v8 addObject:{v10, v11, v12, v13, v14}];
  }
}

- (void)onComplete:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33__AAFPromise_onComplete_onQueue___block_invoke;
  v10[3] = &unk_1E831BFA0;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(AAFPromise *)self onComplete:v10];
}

void __33__AAFPromise_onComplete_onQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__AAFPromise_onComplete_onQueue___block_invoke_2;
  block[3] = &unk_1E831BFF0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (id)then:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __19__AAFPromise_then___block_invoke;
  v8[3] = &unk_1E831C018;
  v9 = v4;
  v5 = v4;
  v6 = [(AAFPromise *)self _chain:v8];

  return v6;
}

id __19__AAFPromise_then___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = (*(*(a1 + 32) + 16))();
  }

  v7 = v6;

  return v7;
}

- (id)then:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __27__AAFPromise_then_onQueue___block_invoke;
  v12[3] = &unk_1E831C068;
  v13 = v7;
  v14 = v6;
  v12[4] = self;
  v8 = v7;
  v9 = v6;
  v10 = [(AAFPromise *)self then:v12];

  return v10;
}

id __27__AAFPromise_then_onQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __27__AAFPromise_then_onQueue___block_invoke_2;
  v10[3] = &unk_1E831C040;
  v5 = *(a1 + 48);
  v11 = v3;
  v12 = v5;
  v6 = *(a1 + 40);
  v7 = v3;
  v8 = [v4 _placeBlock:v10 onQueue:v6];

  return v8;
}

- (id)catch:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __20__AAFPromise_catch___block_invoke;
  v8[3] = &unk_1E831C018;
  v9 = v4;
  v5 = v4;
  v6 = [(AAFPromise *)self _chain:v8];

  return v6;
}

id __20__AAFPromise_catch___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (id)catch:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __28__AAFPromise_catch_onQueue___block_invoke;
  v12[3] = &unk_1E831C068;
  v13 = v7;
  v14 = v6;
  v12[4] = self;
  v8 = v7;
  v9 = v6;
  v10 = [(AAFPromise *)self catch:v12];

  return v10;
}

id __28__AAFPromise_catch_onQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__AAFPromise_catch_onQueue___block_invoke_2;
  v10[3] = &unk_1E831C040;
  v5 = *(a1 + 48);
  v11 = v3;
  v12 = v5;
  v6 = *(a1 + 40);
  v7 = v3;
  v8 = [v4 _placeBlock:v10 onQueue:v6];

  return v8;
}

+ (id)all:(id)a3
{
  v3 = [a3 copy];
  v4 = [AAFPromise alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __18__AAFPromise_all___block_invoke;
  v8[3] = &unk_1E831BE88;
  v9 = v3;
  v5 = v3;
  v6 = [(AAFPromise *)v4 initWithBlock:v8];

  return v6;
}

void __18__AAFPromise_all___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v5 = dispatch_group_create();
  v6 = dispatch_queue_create("com.apple.AAAFoundation.AAFPromise.all", 0);
  if ([*(a1 + 32) count])
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v4 addObject:v8];

      dispatch_group_enter(v5);
      ++v7;
    }

    while ([*(a1 + 32) count] > v7);
  }

  v9 = *(a1 + 32);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __18__AAFPromise_all___block_invoke_2;
  v20[3] = &unk_1E831C0E0;
  v10 = v3;
  v24 = v10;
  v21 = v6;
  v11 = v4;
  v22 = v11;
  v23 = v5;
  v12 = v5;
  v13 = v6;
  [v9 enumerateObjectsUsingBlock:v20];
  v14 = dispatch_get_global_queue(21, 0);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __18__AAFPromise_all___block_invoke_5;
  v17[3] = &unk_1E831C108;
  v18 = v11;
  v19 = v10;
  v15 = v11;
  v16 = v10;
  dispatch_group_notify(v12, v14, v17);
}

void __18__AAFPromise_all___block_invoke_2(id *a1, void *a2, uint64_t a3)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __18__AAFPromise_all___block_invoke_3;
  v11[3] = &unk_1E831C0B8;
  v6 = a1[7];
  v7 = a1[4];
  v8 = a1[5];
  v14 = a3;
  *&v9 = a1[6];
  *(&v9 + 1) = v6;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  [a2 onComplete:v11];
}

void __18__AAFPromise_all___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __18__AAFPromise_all___block_invoke_4;
    block[3] = &unk_1E831C090;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 64);
    v11 = v8;
    v13 = v9;
    v12 = v5;
    dispatch_sync(v7, block);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __18__AAFPromise_all___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2, 0);
}

- (id)thenOnQueue
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __25__AAFPromise_thenOnQueue__block_invoke;
  v4[3] = &unk_1E831C158;
  v4[4] = self;
  v2 = MEMORY[0x1CCA79A70](v4, a2);

  return v2;
}

- (id)catchOnQueue
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __26__AAFPromise_catchOnQueue__block_invoke;
  v4[3] = &unk_1E831C158;
  v4[4] = self;
  v2 = MEMORY[0x1CCA79A70](v4, a2);

  return v2;
}

@end