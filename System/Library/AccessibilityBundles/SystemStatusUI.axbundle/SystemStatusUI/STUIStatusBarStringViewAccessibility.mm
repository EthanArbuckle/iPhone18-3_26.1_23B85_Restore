@interface STUIStatusBarStringViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation STUIStatusBarStringViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STUIStatusBarStringView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v18 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = MEMORY[0x29EDBD7E8];
  v5 = [v3 text];
  v6 = [v4 axAttributedStringWithString:v5];

  v7 = [(STUIStatusBarStringViewAccessibility *)self _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsTime"];
  v8 = MEMORY[0x29EDB8F00];
  if ((v7 & 1) != 0 || [(STUIStatusBarStringViewAccessibility *)self _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsPillTime"])
  {
    v9 = MEMORY[0x29EDBD7E8];
    v10 = [MEMORY[0x29EDB8DB0] date];
    v11 = AXDateStringForFormat();
    v12 = [v9 axAttributedStringWithString:v11];

    [v12 setAttribute:*v8 forKey:*MEMORY[0x29EDBD888]];
    v6 = v12;
  }

  if ([(STUIStatusBarStringViewAccessibility *)self _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsDate"])
  {
    [v6 setAttribute:*v8 forKey:*MEMORY[0x29EDBD898]];
  }

  if ([(STUIStatusBarStringViewAccessibility *)self _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsBreadcrumb"])
  {
    v17.receiver = self;
    v17.super_class = STUIStatusBarStringViewAccessibility;
    v13 = [(STUIStatusBarStringViewAccessibility *)&v17 accessibilityLabel];
LABEL_11:
    v14 = v13;
    goto LABEL_12;
  }

  if (![(STUIStatusBarStringViewAccessibility *)self _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsDataNetwork"]|| (v16.receiver = self, v16.super_class = STUIStatusBarStringViewAccessibility, [(STUIStatusBarStringViewAccessibility *)&v16 accessibilityLabel], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = v6;
    goto LABEL_11;
  }

LABEL_12:

  return v14;
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarStringViewAccessibility;
  v3 = *MEMORY[0x29EDC7580] | [(STUIStatusBarStringViewAccessibility *)&v5 accessibilityTraits]| *MEMORY[0x29EDC74F8];
  if (([(STUIStatusBarStringViewAccessibility *)self _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsTime"]& 1) != 0 || [(STUIStatusBarStringViewAccessibility *)self _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsPillTime"])
  {
    v3 |= *MEMORY[0x29EDC7FF0];
  }

  return v3;
}

- (BOOL)isAccessibilityElement
{
  if (([(STUIStatusBarStringViewAccessibility *)self _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsPillTime"]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = STUIStatusBarStringViewAccessibility;
  return [(STUIStatusBarStringViewAccessibility *)&v4 isAccessibilityElement];
}

- (BOOL)canBecomeFocused
{
  v8.receiver = self;
  v8.super_class = STUIStatusBarStringViewAccessibility;
  v3 = [(STUIStatusBarStringViewAccessibility *)&v8 canBecomeFocused];
  v4 = __UIAccessibilitySafeClass();
  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    return [(STUIStatusBarStringViewAccessibility *)self accessibilityRespondsToUserInteraction];
  }

  return v3;
}

@end