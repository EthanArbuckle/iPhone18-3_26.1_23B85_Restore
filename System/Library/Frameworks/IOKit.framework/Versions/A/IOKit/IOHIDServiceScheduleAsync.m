@interface IOHIDServiceScheduleAsync
@end

@implementation IOHIDServiceScheduleAsync

BOOL ___IOHIDServiceScheduleAsync_block_invoke(uint64_t a1, uint64_t a2)
{
  result = IOHIDServiceFilterSetCancelHandler(a2, *(*(a1 + 32) + 432));
  if (result)
  {
    ++*(*(a1 + 32) + 444);
  }

  return result;
}

@end