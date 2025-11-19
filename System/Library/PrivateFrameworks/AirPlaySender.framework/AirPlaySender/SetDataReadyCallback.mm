@interface SetDataReadyCallback
@end

@implementation SetDataReadyCallback

void __carplaySource_SetDataReadyCallback_block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 200) = *(a1 + 40);
  dispatch_retain(*(*(a1 + 32) + 200));
  *(*(a1 + 32) + 248) = *(a1 + 48);
  *(*(a1 + 32) + 256) = *(a1 + 56);
  *(*(a1 + 32) + 100) = *(a1 + 64);
}

void __carplaySource_SetDataReadyCallback_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 248) = 0;
  *(*(a1 + 32) + 256) = 0;
  v2 = *(*(a1 + 32) + 200);
  if (v2)
  {
    dispatch_release(v2);
    *(*(a1 + 32) + 200) = 0;
  }
}

@end