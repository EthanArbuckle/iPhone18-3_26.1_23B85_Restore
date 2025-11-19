@interface DevicePINPaneAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityHasDeletableText;
- (DevicePINPaneAccessibility)initWithFrame:(CGRect)a3;
- (id)_accessibilityResponderElement;
- (unint64_t)_accessibilityHandwritingAttributeAllowedCharacterSets;
- (unint64_t)_accessibilityHandwritingAttributePreferredCharacterSet;
- (void)_accessibilityInsertText:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)a3 withString:(id)a4;
@end

@implementation DevicePINPaneAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DevicePINPane" hasInstanceMethod:@"simplePIN" withFullSignature:{"B", 0}];
  [v3 validateClass:@"DevicePINPane" hasInstanceMethod:@"insertText:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"DevicePINPane" hasInstanceMethod:@"hasText" withFullSignature:{"B", 0}];
  [v3 validateClass:@"DevicePINPane" hasInstanceMethod:@"deleteBackward" withFullSignature:{"v", 0}];
  [v3 validateClass:@"DevicePINPane" hasInstanceMethod:@"pinView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DevicePINPane" isKindOfClass:@"PSEditingPane"];
  [v3 validateClass:@"PSEditingPane" isKindOfClass:@"UIView"];
  [v3 validateClass:@"DevicePINPane" hasInstanceVariable:@"_transitionView" withType:"UITransitionView"];
  [v3 validateClass:@"PSBulletedPINView" hasInstanceVariable:@"_passcodeField" withType:"PSPasscodeField"];
  [v3 validateClass:@"DevicePINPane" hasInstanceMethod:@"slideToNewPasscodeField:requiresKeyboard:numericOnly:transition:showsOptionsButton:" withFullSignature:{"v", "B", "B", "B", "i", "B", 0}];
}

- (DevicePINPaneAccessibility)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = DevicePINPaneAccessibility;
  v3 = [(DevicePINPaneAccessibility *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(DevicePINPaneAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  }

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = DevicePINPaneAccessibility;
  [(DevicePINPaneAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(DevicePINPaneAccessibility *)self safeValueForKey:@"_transitionView"];
  [v3 setAccessibilityViewIsModal:0];
}

- (id)_accessibilityResponderElement
{
  if (!-[DevicePINPaneAccessibility safeBoolForKey:](self, "safeBoolForKey:", @"simplePIN") || (-[DevicePINPaneAccessibility safeValueForKey:](self, "safeValueForKey:", @"pinView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 safeValueForKey:@"_passcodeField"], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v6.receiver = self;
    v6.super_class = DevicePINPaneAccessibility;
    v4 = [(DevicePINPaneAccessibility *)&v6 _accessibilityResponderElement];
  }

  return v4;
}

- (unint64_t)_accessibilityHandwritingAttributePreferredCharacterSet
{
  v2 = [(DevicePINPaneAccessibility *)self safeValueForKey:@"simplePIN"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)_accessibilityHandwritingAttributeAllowedCharacterSets
{
  v2 = [(DevicePINPaneAccessibility *)self safeValueForKey:@"simplePIN"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    return 4;
  }

  else
  {
    return 15;
  }
}

- (BOOL)_accessibilityHasDeletableText
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __60__DevicePINPaneAccessibility__accessibilityHasDeletableText__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) hasText];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_accessibilityInsertText:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    AXPerformSafeBlock();
  }
}

uint64_t __55__DevicePINPaneAccessibility__accessibilityInsertText___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _accessibilityPlayKeyboardClickSound];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 insertText:v3];
}

- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)a3 withString:(id)a4
{
  v5 = a4;
  v4 = v5;
  AXPerformSafeBlock();
}

uint64_t __81__DevicePINPaneAccessibility__accessibilityReplaceCharactersAtCursor_withString___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 48))
  {
    v2 = 0;
    do
    {
      result = [*(v1 + 32) deleteBackward];
      ++v2;
    }

    while (v2 < *(v1 + 48));
  }

  if (*(v1 + 40))
  {
    v3 = *(v1 + 32);

    return [v3 _accessibilityInsertText:?];
  }

  return result;
}

@end