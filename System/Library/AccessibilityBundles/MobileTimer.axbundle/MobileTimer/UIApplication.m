@interface UIApplication
@end

@implementation UIApplication

uint64_t __84__UIApplication_MobileTimerUIApplicationAccessibility__accessibilityPerformMagicTap__block_invoke(uint64_t a1)
{
  [*(a1 + 32) pauseLapTimer];
  result = +[AXMobileTimerGlue playStopSound];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

uint64_t __84__UIApplication_MobileTimerUIApplicationAccessibility__accessibilityPerformMagicTap__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) startLapTimer];
  result = +[AXMobileTimerGlue playStartSound];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

uint64_t __84__UIApplication_MobileTimerUIApplicationAccessibility__accessibilityPerformMagicTap__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) resumeLapTimer];
  result = +[AXMobileTimerGlue playStartSound];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void __84__UIApplication_MobileTimerUIApplicationAccessibility__accessibilityPerformMagicTap__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  MEMORY[0x29C2E1AE0](@"MTATimerViewController");
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) safeValueForKey:@"timerManager"];
    v4 = [v3 safeValueForKey:@"getCurrentTimerSync"];
    v5 = [v4 safeValueForKey:@"state"];
    v6 = [v5 integerValue];

    if (v6 == 1)
    {
      [*(a1 + 32) startTimer:0];
    }

    else
    {
      if (v6 != 2)
      {
        if (v6 == 3)
        {
          [*(a1 + 32) pauseResumeTimer:0];
          +[AXMobileTimerGlue playStopSound];
        }

        goto LABEL_9;
      }

      [*(a1 + 32) pauseResumeTimer:0];
    }

    +[AXMobileTimerGlue playStartSound];
LABEL_9:
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

@end