@interface SetRateWithFade
@end

@implementation SetRateWithFade

uint64_t __papc_SetRateWithFade_block_invoke(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  if (*(*(a1 + 32) + 24))
  {
    __papc_SetRateWithFade_block_invoke_cold_1();
  }

  else
  {
    papc_checkStartStopAirPlay(*(a1 + 40), *(a1 + 48));
  }

  return FigReadWriteLockUnlockForRead();
}

@end