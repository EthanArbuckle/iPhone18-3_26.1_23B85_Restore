@interface PKPaymentAuthorizationFooterViewAccessibility
@end

@implementation PKPaymentAuthorizationFooterViewAccessibility

void __89__PKPaymentAuthorizationFooterViewAccessibility_setState_string_animated_withCompletion___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v4[1] = @"PKPaymentProgressState";
  v5[0] = @"ViewDidAppear";
  v4[0] = @"event";
  v1 = [MEMORY[0x29EDBA070] numberWithInteger:*(a1 + 32)];
  v5[1] = v1;
  v2 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  UIAccessibilityPostNotification(0xFA2u, v2);

  v3 = *MEMORY[0x29EDCA608];
}

@end