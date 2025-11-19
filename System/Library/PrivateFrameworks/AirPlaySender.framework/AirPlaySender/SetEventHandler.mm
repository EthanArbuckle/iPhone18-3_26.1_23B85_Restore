@interface SetEventHandler
@end

@implementation SetEventHandler

void __vdsink_SetEventHandler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 88);
  if (v3)
  {
    _Block_release(v3);
    v2 = *(a1 + 40);
  }

  *(v2 + 88) = *(a1 + 32);
}

@end