@interface NTKSnowglobePromise
+ (NTKSnowglobePromise)promiseWithBlock:(id)block;
+ (id)asyncPromiseWithBlock:(id)block;
+ (id)lazyAsyncPromiseWithBlock:(id)block;
+ (id)lazyPromiseWithBlock:(id)block;
- (NTKSnowglobePromise)initWithBlock:(id)block lazy:(BOOL)lazy async:(BOOL)async;
- (void)fetchWithCompletion:(id)completion;
@end

@implementation NTKSnowglobePromise

+ (id)asyncPromiseWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithBlock:blockCopy lazy:0 async:1];

  return v5;
}

+ (id)lazyAsyncPromiseWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithBlock:blockCopy lazy:1 async:1];

  return v5;
}

+ (NTKSnowglobePromise)promiseWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithBlock:blockCopy lazy:0 async:0];

  return v5;
}

+ (id)lazyPromiseWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithBlock:blockCopy lazy:1 async:0];

  return v5;
}

- (NTKSnowglobePromise)initWithBlock:(id)block lazy:(BOOL)lazy async:(BOOL)async
{
  blockCopy = block;
  v15.receiver = self;
  v15.super_class = NTKSnowglobePromise;
  v9 = [(NTKSnowglobePromise *)&v15 init];
  if (v9)
  {
    v10 = MEMORY[0x23EEC6230](blockCopy);
    block = v9->_block;
    v9->_block = v10;

    v12 = objc_opt_new();
    completions = v9->_completions;
    v9->_completions = v12;

    v9->_async = async;
    v9->_state = 0;
    if (!lazy)
    {
      [(NTKSnowglobePromise *)v9 fetchWithCompletion:0];
    }
  }

  return v9;
}

- (void)fetchWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_state != 2)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    state = self->_state;
    switch(state)
    {
      case 2uLL:
        if (v5)
        {
          (v5)[2](v5, selfCopy->_object);
        }

        break;
      case 1uLL:
        if (v5)
        {
          completions = selfCopy->_completions;
          v11 = MEMORY[0x23EEC6230](v5);
          [(NSMutableArray *)completions addObject:v11];
LABEL_15:
        }

        break;
      case 0uLL:
        self->_state = 1;
        if (v5)
        {
          v8 = selfCopy->_completions;
          v9 = MEMORY[0x23EEC6230](v5);
          [(NSMutableArray *)v8 addObject:v9];
        }

        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = sub_23C08EAF4;
        v14[3] = &unk_278BAC870;
        v14[4] = selfCopy;
        v10 = MEMORY[0x23EEC6230](v14);
        v11 = v10;
        if (selfCopy->_async)
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

    objc_sync_exit(selfCopy);

    goto LABEL_17;
  }

  (*(completionCopy + 2))(completionCopy, self->_object);
LABEL_17:
}

@end