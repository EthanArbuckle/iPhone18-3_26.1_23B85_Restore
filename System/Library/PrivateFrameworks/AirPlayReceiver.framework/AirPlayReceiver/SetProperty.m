@interface SetProperty
@end

@implementation SetProperty

uint64_t __sharedUI_SetProperty_block_invoke(uint64_t a1)
{
  result = AirPlayReceiverUI_UpdateAudioMetaData(**(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __sharedUI_SetProperty_block_invoke_2(uint64_t a1)
{
  result = AirPlayReceiverUI_UpdateAudioProgress(**(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __sharedUI_SetProperty_block_invoke_3(uint64_t a1)
{
  result = AirPlayReceiverUI_SetProperty(**(a1 + 40), *(a1 + 48), 0, *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end