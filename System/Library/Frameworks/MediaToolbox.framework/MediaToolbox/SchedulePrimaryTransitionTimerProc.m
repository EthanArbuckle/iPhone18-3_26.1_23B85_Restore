@interface SchedulePrimaryTransitionTimerProc
@end

@implementation SchedulePrimaryTransitionTimerProc

void __fpic_SchedulePrimaryTransitionTimerProc_block_invoke(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (fpic_GetLastCurrentItem())
  {
    v5 = 0;
    OUTLINED_FUNCTION_245_2();
    fpic_ApplyResumptionOffset();
    v3 = *(a1 + 40);
    OUTLINED_FUNCTION_266();
    fpic_GetItemEndTime();
    fpic_scheduleInterstitialAudioTransition(v3, &v4, 0);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

@end