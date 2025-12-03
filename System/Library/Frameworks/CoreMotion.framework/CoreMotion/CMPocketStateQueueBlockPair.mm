@interface CMPocketStateQueueBlockPair
- (CMPocketStateQueueBlockPair)initWithQueue:(id)queue andBlock:(id)block;
- (void)dealloc;
- (void)dispatchWithState:(int64_t)state andError:(id)error;
@end

@implementation CMPocketStateQueueBlockPair

- (CMPocketStateQueueBlockPair)initWithQueue:(id)queue andBlock:(id)block
{
  v9.receiver = self;
  v9.super_class = CMPocketStateQueueBlockPair;
  v6 = [(CMPocketStateQueueBlockPair *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->fQueryQueue = queue;
    v6->fQueryBlock = _Block_copy(block);
    dispatch_retain(v7->fQueryQueue);
  }

  return v7;
}

- (void)dispatchWithState:(int64_t)state andError:(id)error
{
  kdebug_trace();
  fQueryQueue = self->fQueryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7237BC;
  block[3] = &unk_1E75357B8;
  block[5] = error;
  block[6] = state;
  block[4] = self;
  dispatch_async(fQueryQueue, block);
}

- (void)dealloc
{
  dispatch_release(self->fQueryQueue);
  self->fQueryQueue = 0;
  _Block_release(self->fQueryBlock);
  self->fQueryBlock = 0;
  v3.receiver = self;
  v3.super_class = CMPocketStateQueueBlockPair;
  [(CMPocketStateQueueBlockPair *)&v3 dealloc];
}

@end