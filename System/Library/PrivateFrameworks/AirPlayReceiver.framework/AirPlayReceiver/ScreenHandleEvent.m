@interface ScreenHandleEvent
@end

@implementation ScreenHandleEvent

void ___ScreenHandleEvent_block_invoke(uint64_t a1)
{
  AirPlayReceiverSessionForceKeyFrame(*(a1 + 32), 0, 0);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

@end