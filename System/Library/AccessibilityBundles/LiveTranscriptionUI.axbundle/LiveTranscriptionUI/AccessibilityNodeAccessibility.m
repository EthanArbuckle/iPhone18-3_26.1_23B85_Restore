@interface AccessibilityNodeAccessibility
@end

@implementation AccessibilityNodeAccessibility

uint64_t __92__AccessibilityNodeAccessibility__LiveTranscriptionUI__SwiftUI__accessibilityExpandedStatus__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityCustomAttribute:@"AXExpanded"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end