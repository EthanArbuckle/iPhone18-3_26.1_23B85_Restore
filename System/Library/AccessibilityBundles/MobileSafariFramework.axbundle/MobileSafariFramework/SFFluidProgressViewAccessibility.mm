@interface SFFluidProgressViewAccessibility
@end

@implementation SFFluidProgressViewAccessibility

uint64_t __95___SFFluidProgressViewAccessibility_fluidProgressController_updateFluidProgressBar_completion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _accessibilityBoolValueForKey:@"StartedFluidProgress"];
  if (result)
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_29BFCD000, v3, OS_LOG_TYPE_INFO, "Posting fallback finish notification in case we get no other updates", v4, 2u);
    }

    UIAccessibilityPostNotification(*MEMORY[0x29EDC75E8], &unk_2A2228048);
    return [*(a1 + 32) _accessibilitySetBoolValue:0 forKey:@"StartedFluidProgress"];
  }

  return result;
}

@end