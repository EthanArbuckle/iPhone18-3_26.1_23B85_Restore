@interface STUIStatusBarCellularSignalViewAccessibility
- (id)accessibilityLabel;
@end

@implementation STUIStatusBarCellularSignalViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(STUIStatusBarCellularSignalViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29ED3ADB0](@"STUIStatusBarDualCellularSignalView", a2)];

  if (!v3 || ([(STUIStatusBarCellularSignalViewAccessibility *)self _accessibilityValueForKey:@"AXStatusBarSignalViewServiceKey"], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = MEMORY[0x29EDBD7E8];
    v6 = accessibilityLocalizedString(@"status.cellular.service");
    v4 = [v5 axAttributedStringWithString:v6];

    if (([(STUIStatusBarCellularSignalViewAccessibility *)self _accessibilityBoolValueForKey:@"PrimaryCellular"]& 1) != 0)
    {
      v7 = @"Primary";
      v8 = @"primary.cellular";
    }

    else
    {
      if (![(STUIStatusBarCellularSignalViewAccessibility *)self _accessibilityBoolValueForKey:@"SecondaryCellular"])
      {
        goto LABEL_8;
      }

      v7 = @"Secondary";
      v8 = @"secondary.cellular";
    }

    v9 = MEMORY[0x29EDBD7E8];
    v10 = accessibilityLocalizedString(v8);
    v11 = [v9 axAttributedStringWithString:v10];

    [v11 setAttribute:v7 forKey:*MEMORY[0x29EDBD990]];
    v4 = v11;
  }

LABEL_8:

  return v4;
}

@end