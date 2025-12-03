@interface AXActionCoalescer
+ (id)mainQueueCoalescerWithBlock:(id)block;
- (AXActionCoalescer)initWithQueue:(id)queue block:(id)block;
- (void)performCoalescedAsynchronously;
@end

@implementation AXActionCoalescer

- (AXActionCoalescer)initWithQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v16.receiver = self;
  v16.super_class = AXActionCoalescer;
  v9 = [(AXActionCoalescer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_targetQueue, queue);
    v11 = [blockCopy copy];
    block = v10->_block;
    v10->_block = v11;

    v13 = dispatch_queue_create("com.apple.accessibility.AXRunloopCoalescer", 0);
    consistencyQueue = v10->_consistencyQueue;
    v10->_consistencyQueue = v13;

    v10->_coalescing = 0;
  }

  return v10;
}

+ (id)mainQueueCoalescerWithBlock:(id)block
{
  blockCopy = block;
  v5 = [self alloc];
  v6 = [v5 initWithQueue:MEMORY[0x1E69E96A0] block:blockCopy];

  return v6;
}

- (void)performCoalescedAsynchronously
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  consistencyQueue = self->_consistencyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__AXActionCoalescer_performCoalescedAsynchronously__block_invoke;
  block[3] = &unk_1E71EA1D8;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(consistencyQueue, block);
  if ((v8[3] & 1) == 0)
  {
    targetQueue = self->_targetQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__AXActionCoalescer_performCoalescedAsynchronously__block_invoke_2;
    v5[3] = &unk_1E71E9B98;
    v5[4] = self;
    dispatch_async(targetQueue, v5);
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __51__AXActionCoalescer_performCoalescedAsynchronously__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 32);
  v1 = *(result + 32);
  if ((*(v1 + 32) & 1) == 0)
  {
    *(v1 + 32) = 1;
  }

  return result;
}

void __51__AXActionCoalescer_performCoalescedAsynchronously__block_invoke_2(uint64_t a1)
{
  (*(*(*(a1 + 32) + 16) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__AXActionCoalescer_performCoalescedAsynchronously__block_invoke_3;
  block[3] = &unk_1E71E9B98;
  block[4] = v2;
  dispatch_sync(v3, block);
}

@end