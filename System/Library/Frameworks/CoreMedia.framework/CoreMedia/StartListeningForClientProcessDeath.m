@interface StartListeningForClientProcessDeath
@end

@implementation StartListeningForClientProcessDeath

uint64_t __figXPC_StartListeningForClientProcessDeath_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock(*(*(a1 + 32) + 112));
  Value = CFDictionaryGetValue(*(*(a1 + 32) + 104), *(a1 + 40));
  if (Value && !Value[4])
  {
    figXPC_ForgetProcessInfo(*(a1 + 32), *(a1 + 40));
  }

  v3 = *(*(a1 + 32) + 112);

  return FigSimpleMutexUnlock(v3);
}

@end