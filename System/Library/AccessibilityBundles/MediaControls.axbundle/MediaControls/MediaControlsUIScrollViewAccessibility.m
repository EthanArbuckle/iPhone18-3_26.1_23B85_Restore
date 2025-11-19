@interface MediaControlsUIScrollViewAccessibility
- (UIEdgeInsets)_accessibilityContentInset;
@end

@implementation MediaControlsUIScrollViewAccessibility

- (UIEdgeInsets)_accessibilityContentInset
{
  v3 = [(MediaControlsUIScrollViewAccessibility *)self accessibilityIdentification];
  if ([v3 isEqualToString:@"AXMediaControlsScrollViewIdentifier"] && (UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled()))
  {
    v4 = *MEMORY[0x29EDC80C8];
    v5 = *(MEMORY[0x29EDC80C8] + 8);
    v6 = *(MEMORY[0x29EDC80C8] + 16);
    v7 = *(MEMORY[0x29EDC80C8] + 24);
  }

  else
  {
    v16.receiver = self;
    v16.super_class = MediaControlsUIScrollViewAccessibility;
    [(MediaControlsUIScrollViewAccessibility *)&v16 _accessibilityContentInset];
    v4 = v8;
    v5 = v9;
    v6 = v10;
    v7 = v11;
  }

  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

@end