@interface PKPaletteViewAccessibility
- (void)dismissPalettePopoverWithCompletion:(id)a3;
@end

@implementation PKPaletteViewAccessibility

- (void)dismissPalettePopoverWithCompletion:(id)a3
{
  v4 = a3;
  if (([*MEMORY[0x29EDC8008] _accessibilityBoolValueForKey:@"AXIsHitTestingPKPaletteHostViewKey"] & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = PKPaletteViewAccessibility;
    [(PKPaletteViewAccessibility *)&v5 dismissPalettePopoverWithCompletion:v4];
  }
}

@end