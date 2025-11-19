@interface UIInputSetHostViewAccessibility__ChatKit__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)_accessibilityScannerGroupTraits;
@end

@implementation UIInputSetHostViewAccessibility__ChatKit__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKKeyboardContentViewController"];
  [v3 validateClass:@"UIInputWindowController" hasInstanceMethod:@"inputViewSet" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIInputViewSet" hasInstanceMethod:@"inputView" withFullSignature:{"@", 0}];
}

- (unint64_t)_accessibilityScannerGroupTraits
{
  v10.receiver = self;
  v10.super_class = UIInputSetHostViewAccessibility__ChatKit__UIKit;
  v2 = [(UIInputSetHostViewAccessibility__ChatKit__UIKit *)&v10 _accessibilityScannerGroupTraits];
  if (v2)
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v4 = [v3 _rootInputWindowController];

    v5 = [v4 safeValueForKey:@"inputViewSet"];
    v6 = [v5 safeValueForKey:@"inputView"];

    v7 = [v6 _accessibilityViewController];
    NSClassFromString(&cfstr_Ckkeyboardcont.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v2 &= ~1uLL;
    }
  }

  return v2;
}

@end