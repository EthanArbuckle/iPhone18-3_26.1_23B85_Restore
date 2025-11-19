@interface UIDatePickerContainerViewAccessibility
@end

@implementation UIDatePickerContainerViewAccessibility

double __64___UIDatePickerContainerViewAccessibility_accessibilityElements__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained accessibilityFrame];
  v4 = v1;
  MEMORY[0x29EDC9740](WeakRetained);
  return v4;
}

double __64___UIDatePickerContainerViewAccessibility_accessibilityElements__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) accessibilityFrame];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained accessibilityActivationPoint];
  CGPointMake_0();
  v5 = v1;
  MEMORY[0x29EDC9740](WeakRetained);
  return v5;
}

uint64_t __64___UIDatePickerContainerViewAccessibility_accessibilityElements__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained accessibilityPerformEscape];
  MEMORY[0x29EDC9740](WeakRetained);
  return v3;
}

@end