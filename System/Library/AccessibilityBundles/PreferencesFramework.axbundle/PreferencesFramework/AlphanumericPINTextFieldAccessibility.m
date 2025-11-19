@interface AlphanumericPINTextFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityInsertText:(id)a3;
- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)a3 withString:(id)a4;
@end

@implementation AlphanumericPINTextFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AlphanumericPINTextField" isKindOfClass:@"UITextField"];
  [v3 validateClass:@"PINView" hasInstanceMethod:@"notifyDelegatePINChanged" withFullSignature:{"v", 0}];
}

- (void)_accessibilityInsertText:(id)a3
{
  v3.receiver = self;
  v3.super_class = AlphanumericPINTextFieldAccessibility;
  [(AlphanumericPINTextFieldAccessibility *)&v3 _accessibilityInsertText:a3];
  AXPerformSafeBlock();
}

void __66__AlphanumericPINTextFieldAccessibility__accessibilityInsertText___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = *(a1 + 32);
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 delegate];
  [v4 notifyDelegatePINChanged];
}

- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)a3 withString:(id)a4
{
  v4.receiver = self;
  v4.super_class = AlphanumericPINTextFieldAccessibility;
  [(AlphanumericPINTextFieldAccessibility *)&v4 _accessibilityReplaceCharactersAtCursor:a3 withString:a4];
  AXPerformSafeBlock();
}

void __92__AlphanumericPINTextFieldAccessibility__accessibilityReplaceCharactersAtCursor_withString___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = *(a1 + 32);
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 delegate];
  [v4 notifyDelegatePINChanged];
}

@end