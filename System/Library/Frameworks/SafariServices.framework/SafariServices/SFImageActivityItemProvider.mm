@interface SFImageActivityItemProvider
@end

@implementation SFImageActivityItemProvider

void __42___SFImageActivityItemProvider__imageData__block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v3 = a2;
  v4 = [MEMORY[0x1E695DFD0] currentRunLoop];

  CFRunLoopWakeUp([v4 getCFRunLoop]);
}

@end