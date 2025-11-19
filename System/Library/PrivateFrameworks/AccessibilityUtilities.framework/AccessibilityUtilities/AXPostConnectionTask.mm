@interface AXPostConnectionTask
- (AXPostConnectionTask)initWithConnectBlock:(id)a3 timeout:(double)a4 accessQueue:(id)a5;
- (void)_performTask;
- (void)performTask;
@end

@implementation AXPostConnectionTask

- (AXPostConnectionTask)initWithConnectBlock:(id)a3 timeout:(double)a4 accessQueue:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = AXPostConnectionTask;
  v10 = [(AXPostConnectionTask *)&v18 init];
  if (v10)
  {
    v11 = v10;
    if (v8)
    {
      [(AXPostConnectionTask *)v10 setPostConnectionBlock:v8];
      v12 = [objc_alloc(MEMORY[0x1E6988750]) initWithTargetAccessQueue:v9];
      [v11 setTimeoutTimer:v12];
      v13 = [v11 timeoutTimer];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65__AXPostConnectionTask_initWithConnectBlock_timeout_accessQueue___block_invoke;
      v16[3] = &unk_1E71E9B98;
      v14 = v11;
      v17 = v14;
      [v13 afterDelay:v16 processWritingBlock:a4];

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
  v3 = [(AXPostConnectionTask *)self timeoutTimer];
  [v3 cancel];

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