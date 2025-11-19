@interface CopyCurrentEvent
@end

@implementation CopyCurrentEvent

CFTypeRef __fpic_CopyCurrentEvent_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = fpic_GetCurrentlyPlayingEvent();
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

const void *__fpirc_CopyCurrentEvent_block_invoke(void *a1)
{
  result = fpirc_GetCurrentEventWrapperOnQueue(a1[5], a1[6]);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

@end