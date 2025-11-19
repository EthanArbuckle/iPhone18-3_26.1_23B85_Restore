@interface CallRequestCallbackBlock
@end

@implementation CallRequestCallbackBlock

void ___CallRequestCallbackBlock_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 32);

  _Block_release(v5);
}

@end