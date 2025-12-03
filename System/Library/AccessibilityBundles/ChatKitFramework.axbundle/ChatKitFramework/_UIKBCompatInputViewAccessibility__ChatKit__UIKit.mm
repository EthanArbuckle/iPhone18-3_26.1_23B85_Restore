@interface _UIKBCompatInputViewAccessibility__ChatKit__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityElementsHidden;
@end

@implementation _UIKBCompatInputViewAccessibility__ChatKit__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKActionMenuWindow"];
  [validationsCopy validateClass:@"CKActionMenuWindow" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityElementsHidden
{
  objc_opt_class();
  nSClassFromString(&cfstr_Ckactionmenuwi.isa) = [NSClassFromString(&cfstr_Ckactionmenuwi.isa) sharedInstance];
  v3 = __UIAccessibilityCastAsClass();

  LOBYTE(nSClassFromString(&cfstr_Ckactionmenuwi.isa)) = [v3 isHidden];
  return nSClassFromString(&cfstr_Ckactionmenuwi.isa) ^ 1;
}

@end