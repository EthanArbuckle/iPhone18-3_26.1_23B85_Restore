@interface Finalize
@end

@implementation Finalize

void __standardKeepAliveController_Finalize_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v3, HostTimeClock);
  standardKeepAliveController_timerFiredCheck(v1, &v3, 0);
}

@end