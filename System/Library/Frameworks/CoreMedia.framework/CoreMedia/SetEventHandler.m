@interface SetEventHandler
@end

@implementation SetEventHandler

void __ids_SetEventHandler_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    _Block_release(v2);
    *(*(a1 + 32) + 40) = 0;
  }
}

void __usb_SetEventHandler_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (v2)
  {
    _Block_release(v2);
    *(*(a1 + 32) + 96) = 0;
  }
}

@end