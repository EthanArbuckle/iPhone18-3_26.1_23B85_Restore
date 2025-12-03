@interface PKPaletteViewAccessibility
- (void)dismissPalettePopoverWithCompletion:(id)completion;
@end

@implementation PKPaletteViewAccessibility

- (void)dismissPalettePopoverWithCompletion:(id)completion
{
  completionCopy = completion;
  if (([*MEMORY[0x29EDC8008] _accessibilityBoolValueForKey:@"AXIsHitTestingPKPaletteHostViewKey"] & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = PKPaletteViewAccessibility;
    [(PKPaletteViewAccessibility *)&v5 dismissPalettePopoverWithCompletion:completionCopy];
  }
}

@end