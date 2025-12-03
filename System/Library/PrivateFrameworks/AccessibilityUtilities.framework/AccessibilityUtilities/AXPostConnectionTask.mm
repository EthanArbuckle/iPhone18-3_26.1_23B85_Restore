@interface AXPostConnectionTask
- (AXPostConnectionTask)initWithConnectBlock:(id)block timeout:(double)timeout accessQueue:(id)queue;
- (void)_performTask;
- (void)performTask;
@end

@implementation AXPostConnectionTask

- (AXPostConnectionTask)initWithConnectBlock:(id)block timeout:(double)timeout accessQueue:(id)queue
{
  blockCopy = block;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = AXPostConnectionTask;
  v10 = [(AXPostConnectionTask *)&v18 init];
  if (v10)
  {
    v11 = v10;
    if (blockCopy)
    {
      [(AXPostConnectionTask *)v10 setPostConnectionBlock:blockCopy];
      v12 = [objc_alloc(MEMORY[0x1E6988750]) initWithTargetAccessQueue:queueCopy];
      [v11 setTimeoutTimer:v12];
      timeoutTimer = [v11 timeoutTimer];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65__AXPostConnectionTask_initWithConnectBlock_timeout_accessQueue___block_invoke;
      v16[3] = &unk_1E71E9B98;
      v14 = v11;
      v17 = v14;
      [timeoutTimer afterDelay:v16 processWritingBlock:timeout];

      v11 = v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __65__AXPostConnectionTask_initWithConnectBlock_timeout_accessQueue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDidTimeout:1];
  v2 = *(a1 + 32);

  return [v2 _performTask];
}

- (void)performTask
{
  timeoutTimer = [(AXPostConnectionTask *)self timeoutTimer];
  [timeoutTimer cancel];

  [(AXPostConnectionTask *)self _performTask];
}

- (void)_performTask
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AXPostConnectionTask__performTask__block_invoke;
  block[3] = &unk_1E71E9B98;
  block[4] = self;
  dispatch_async(v3, block);
}

void __36__AXPostConnectionTask__performTask__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) postConnectionBlock];
  v2[2](v2, [*(a1 + 32) didTimeout]);
}

@end