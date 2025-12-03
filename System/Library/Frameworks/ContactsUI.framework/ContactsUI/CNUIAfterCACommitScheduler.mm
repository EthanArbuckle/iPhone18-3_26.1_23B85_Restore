@interface CNUIAfterCACommitScheduler
- (CNUIAfterCACommitScheduler)init;
- (CNUIAfterCACommitScheduler)initWithSchedulerProvider:(id)provider;
- (double)timestamp;
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancelableBlock:(id)block;
- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)dealloc;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation CNUIAfterCACommitScheduler

- (double)timestamp
{
  scheduler = [(CNUIAfterCACommitScheduler *)self scheduler];
  [scheduler timestamp];
  v4 = v3;

  return v4;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  scheduler = [(CNUIAfterCACommitScheduler *)self scheduler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__CNUIAfterCACommitScheduler_afterDelay_performBlock_qualityOfService___block_invoke;
  v13[3] = &unk_1E74E6DD0;
  v13[4] = self;
  v14 = blockCopy;
  v10 = blockCopy;
  v11 = [scheduler afterDelay:v13 performBlock:service qualityOfService:delay];

  return v11;
}

void __71__CNUIAfterCACommitScheduler_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 16);
  v3 = *(a1 + 32);
  v2(v1);
}

- (id)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  scheduler = [(CNUIAfterCACommitScheduler *)self scheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__CNUIAfterCACommitScheduler_afterDelay_performBlock___block_invoke;
  v11[3] = &unk_1E74E6DD0;
  v11[4] = self;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = [scheduler afterDelay:v11 performBlock:delay];

  return v9;
}

void __54__CNUIAfterCACommitScheduler_afterDelay_performBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 16);
  v3 = *(a1 + 32);
  v2(v1);
}

- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  scheduler = [(CNUIAfterCACommitScheduler *)self scheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__CNUIAfterCACommitScheduler_performCancelableBlock_qualityOfService___block_invoke;
  v11[3] = &unk_1E74E4720;
  v11[4] = self;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = [scheduler performCancelableBlock:v11 qualityOfService:service];

  return v9;
}

void __70__CNUIAfterCACommitScheduler_performCancelableBlock_qualityOfService___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(a1 + 32);
  v4(v3, a2);
}

- (id)performCancelableBlock:(id)block
{
  blockCopy = block;
  scheduler = [(CNUIAfterCACommitScheduler *)self scheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__CNUIAfterCACommitScheduler_performCancelableBlock___block_invoke;
  v9[3] = &unk_1E74E4720;
  v9[4] = self;
  v10 = blockCopy;
  v6 = blockCopy;
  v7 = [scheduler performCancelableBlock:v9];

  return v7;
}

void __53__CNUIAfterCACommitScheduler_performCancelableBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(a1 + 32);
  v4(v3, a2);
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  scheduler = [(CNUIAfterCACommitScheduler *)self scheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__CNUIAfterCACommitScheduler_performBlock_qualityOfService___block_invoke;
  v9[3] = &unk_1E74E6DD0;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [scheduler performBlock:v9 qualityOfService:service];
}

void __60__CNUIAfterCACommitScheduler_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 16);
  v3 = *(a1 + 32);
  v2(v1);
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  scheduler = [(CNUIAfterCACommitScheduler *)self scheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CNUIAfterCACommitScheduler_performBlock___block_invoke;
  v7[3] = &unk_1E74E6DD0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [scheduler performBlock:v7];
}

void __43__CNUIAfterCACommitScheduler_performBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 16);
  v3 = *(a1 + 32);
  v2(v1);
}

- (void)dealloc
{
  if (self->_runLoopObserver)
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveObserver(Current, self->_runLoopObserver, *MEMORY[0x1E695E8D0]);
  }

  [(CNSuspendableSchedulerDecorator *)self->_scheduler resume];
  v4.receiver = self;
  v4.super_class = CNUIAfterCACommitScheduler;
  [(CNUIAfterCACommitScheduler *)&v4 dealloc];
}

- (CNUIAfterCACommitScheduler)initWithSchedulerProvider:(id)provider
{
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = CNUIAfterCACommitScheduler;
  v5 = [(CNUIAfterCACommitScheduler *)&v12 init];
  if (v5)
  {
    inlineScheduler = [providerCopy inlineScheduler];
    v7 = [objc_alloc(MEMORY[0x1E6996848]) initWithScheduler:inlineScheduler];
    scheduler = v5->_scheduler;
    v5->_scheduler = v7;

    context.version = 0;
    context.info = v5;
    memset(&context.retain, 0, 24);
    v5->_runLoopObserver = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 2000001, _afterCACommitHandler, &context);
    Main = CFRunLoopGetMain();
    CFRunLoopAddObserver(Main, v5->_runLoopObserver, *MEMORY[0x1E695E8D0]);
    v10 = v5;
  }

  return v5;
}

- (CNUIAfterCACommitScheduler)init
{
  defaultProvider = [MEMORY[0x1E6996820] defaultProvider];
  v4 = [(CNUIAfterCACommitScheduler *)self initWithSchedulerProvider:defaultProvider];

  return v4;
}

@end