@interface NotifySessionsAboutEvent
@end

@implementation NotifySessionsAboutEvent

void ___NotifySessionsAboutEvent_block_invoke(uint64_t a1)
{
  v2 = APReceiverRequestProcessorCopyReceiverSession();
  if (v2)
  {
    v4 = v2;
    AirPlayReceiverSessionControl(v2, v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), 0);

    CFRelease(v4);
  }
}

@end