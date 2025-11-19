@interface _UIKBCompatInputViewAccessibility__ChatKit__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityElementsHidden;
@end

@implementation _UIKBCompatInputViewAccessibility__ChatKit__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKActionMenuWindow"];
  [v3 validateClass:@"CKActionMenuWindow" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityElementsHidden
{
  objc_opt_class();
  v2 = [NSClassFromString(&cfstr_Ckactionmenuwi.isa) sharedInstance];
  v3 = __UIAccessibilityCastAsClass();

  LOBYTE(v2) = [v3 isHidden];
  return v2 ^ 1;
}

@end