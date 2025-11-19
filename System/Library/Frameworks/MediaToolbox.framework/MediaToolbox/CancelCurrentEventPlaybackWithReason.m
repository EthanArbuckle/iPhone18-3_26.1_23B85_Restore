@interface CancelCurrentEventPlaybackWithReason
@end

@implementation CancelCurrentEventPlaybackWithReason

const void *__fpic_CancelCurrentEventPlaybackWithReason_block_invoke(uint64_t a1)
{
  result = fpic_GetCurrentlyPlayingEvent();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end