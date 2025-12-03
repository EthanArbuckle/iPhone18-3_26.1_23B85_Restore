@interface AlphanumericPINTextFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityInsertText:(id)text;
- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)cursor withString:(id)string;
@end

@implementation AlphanumericPINTextFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AlphanumericPINTextField" isKindOfClass:@"UITextField"];
  [validationsCopy validateClass:@"PINView" hasInstanceMethod:@"notifyDelegatePINChanged" withFullSignature:{"v", 0}];
}

- (void)_accessibilityInsertText:(id)text
{
  v3.receiver = self;
  v3.super_class = AlphanumericPINTextFieldAccessibility;
  [(AlphanumericPINTextFieldAccessibility *)&v3 _accessibilityInsertText:text];
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

- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)cursor withString:(id)string
{
  v4.receiver = self;
  v4.super_class = AlphanumericPINTextFieldAccessibility;
  [(AlphanumericPINTextFieldAccessibility *)&v4 _accessibilityReplaceCharactersAtCursor:cursor withString:string];
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