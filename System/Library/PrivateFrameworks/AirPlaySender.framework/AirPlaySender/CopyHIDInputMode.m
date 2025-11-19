@interface CopyHIDInputMode
@end

@implementation CopyHIDInputMode

uint64_t __carEndpoint_CopyHIDInputMode_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 296);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = APHIDClientCopyInputModeForUUID(result, *(a1 + 48), *(a1 + 56));
    result = *(*(*(a1 + 32) + 8) + 24);
    if (result)
    {
      return __carEndpoint_CopyHIDInputMode_block_invoke_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -16726;
  }

  return result;
}

@end