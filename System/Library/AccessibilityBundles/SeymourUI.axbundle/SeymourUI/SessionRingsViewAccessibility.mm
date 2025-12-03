@interface SessionRingsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)accessibilityFrame;
- (unint64_t)accessibilityTraits;
- (void)displayHighlightWithDuration:(double)duration;
@end

@implementation SessionRingsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SeymourUI.SessionRingsView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SeymourUI.SessionRingsView" hasSwiftField:@"ringsPlatter" withSwiftType:"UIView"];
  [validationsCopy validateClass:@"SeymourUI.SessionRingsView" hasInstanceMethod:@"displayHighlightWithDuration:" withFullSignature:{"v", "d", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SessionRingsViewAccessibility;
  return *MEMORY[0x29EDC7FF0] | [(SessionRingsViewAccessibility *)&v3 accessibilityTraits];
}

- (CGRect)accessibilityFrame
{
  objc_opt_class();
  v3 = [(SessionRingsViewAccessibility *)self safeSwiftValueForKey:@"ringsPlatter"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4 && ([v4 superview], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    [v4 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    superview = [v4 superview];
    v23.origin.x = v7;
    v23.origin.y = v9;
    v23.size.width = v11;
    v23.size.height = v13;
    v24 = UIAccessibilityConvertFrameToScreenCoordinates(v23, superview);
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
  }

  else
  {
    x = *MEMORY[0x29EDB90E0];
    y = *(MEMORY[0x29EDB90E0] + 8);
    width = *(MEMORY[0x29EDB90E0] + 16);
    height = *(MEMORY[0x29EDB90E0] + 24);
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)displayHighlightWithDuration:(double)duration
{
  v3.receiver = self;
  v3.super_class = SessionRingsViewAccessibility;
  [(SessionRingsViewAccessibility *)&v3 displayHighlightWithDuration:?];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __62__SessionRingsViewAccessibility_displayHighlightWithDuration___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, MEMORY[0x29ED34A70](@"ARUIRingsView")}];
  v2 = [*(a1 + 32) _accessibilityTextForSubhierarchyIncludingHeaders:0 focusableItems:1 exclusions:0 classExclusions:v3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v2);
}

@end