@interface Synchronously
@end

@implementation Synchronously

void __Synchronously_ServicingMainRunLoop_block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 0x40000000;
  v1[2] = __Synchronously_ServicingMainRunLoop_block_invoke_2;
  v1[3] = &unk_1E72BA118;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v1);
}

void __Synchronously_ServicingMainRunLoop_block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  CFRunLoopSourceSignal(Synchronously_ServicingMainRunLoop::source);
  v2 = *(a1 + 40);

  CFRunLoopWakeUp(v2);
}

@end