@interface CFFileDescriptorInduceFakeReadCallBack
@end

@implementation CFFileDescriptorInduceFakeReadCallBack

void ___CFFileDescriptorInduceFakeReadCallBack_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    *(v2 + 50) = 1;
    if (!*(v2 + 48))
    {
      dispatch_suspend(v3);
      v2 = *(a1 + 32);
      *(v2 + 48) = 1;
    }

    v4 = *(v2 + 56);
    if (v4)
    {
      CFRunLoopSourceSignal(v4);
      v5 = *(*(a1 + 32) + 56);

      _CFRunLoopSourceWakeUpRunLoops(v5);
    }
  }
}

@end