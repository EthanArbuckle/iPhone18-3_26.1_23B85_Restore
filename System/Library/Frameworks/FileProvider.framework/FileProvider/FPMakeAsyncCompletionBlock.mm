@interface FPMakeAsyncCompletionBlock
@end

@implementation FPMakeAsyncCompletionBlock

void ____FPMakeAsyncCompletionBlock_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _Block_copy(*(a1 + 40));
  [v3 setTarget:v4];

  [v3 retainArguments];
  v5 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ____FPMakeAsyncCompletionBlock_block_invoke_2;
  block[3] = &unk_1E79399B0;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, block);
}

@end