@interface NTKSnowglobePromise
+ (NTKSnowglobePromise)promiseWithBlock:(id)a3;
+ (id)asyncPromiseWithBlock:(id)a3;
+ (id)lazyAsyncPromiseWithBlock:(id)a3;
+ (id)lazyPromiseWithBlock:(id)a3;
- (NTKSnowglobePromise)initWithBlock:(id)a3 lazy:(BOOL)a4 async:(BOOL)a5;
- (void)fetchWithCompletion:(id)a3;
@end

@implementation NTKSnowglobePromise

+ (id)asyncPromiseWithBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBlock:v4 lazy:0 async:1];

  return v5;
}

+ (id)lazyAsyncPromiseWithBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBlock:v4 lazy:1 async:1];

  return v5;
}

+ (NTKSnowglobePromise)promiseWithBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBlock:v4 lazy:0 async:0];

  return v5;
}

+ (id)lazyPromiseWithBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBlock:v4 lazy:1 async:0];

  return v5;
}

- (NTKSnowglobePromise)initWithBlock:(id)a3 lazy:(BOOL)a4 async:(BOOL)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = NTKSnowglobePromise;
  v9 = [(NTKSnowglobePromise *)&v15 init];
  if (v9)
  {
    v10 = MEMORY[0x23EEC6230](v8);
    block = v9->_block;
    v9->_block = v10;

    v12 = objc_opt_new();
    completions = v9->_completions;
    v9->_completions = v12;

    v9->_async = a5;
    v9->_state = 0;
    if (!a4)
    {
      [(NTKSnowglobePromise *)v9 fetchWithCompletion:0];
    }
  }

  return v9;
}

- (void)fetchWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_state != 2)
  {
    v6 = self;
    objc_sync_enter(v6);
    state = self->_state;
    switch(state)
    {
      case 2uLL:
        if (v5)
        {
          (v5)[2](v5, v6->_object);
        }

        break;
      case 1uLL:
        if (v5)
        {
          completions = v6->_completions;
          v11 = MEMORY[0x23EEC6230](v5);
          [(NSMutableArray *)completions addObject:v11];
LABEL_15:
        }

        break;
      case 0uLL:
        self->_state = 1;
        if (v5)
        {
          v8 = v6->_completions;
          v9 = MEMORY[0x23EEC6230](v5);
          [(NSMutableArray *)v8 addObject:v9];
        }

        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = sub_23C08EAF4;
        v14[3] = &unk_278BAC870;
        v14[4] = v6;
        v10 = MEMORY[0x23EEC6230](v14);
        v11 = v10;
        if (v6->_async)
        {
          v12 = dispatch_get_global_queue(25, 0);
          dispatch_async(v12, v11);
        }

        else
        {
          (*(v10 + 16))(v10);
        }

        goto LABEL_15;
    }

    objc_sync_exit(v6);

    goto LABEL_17;
  }

  (*(v4 + 2))(v4, self->_object);
LABEL_17:
}

@end