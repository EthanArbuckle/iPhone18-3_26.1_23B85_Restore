@interface VLFScanningInstructionViewAccessibility
- (void)updateForCurrentState;
@end

@implementation VLFScanningInstructionViewAccessibility

- (void)updateForCurrentState
{
  v2.receiver = self;
  v2.super_class = VLFScanningInstructionViewAccessibility;
  [(VLFScanningInstructionViewAccessibility *)&v2 updateForCurrentState];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end