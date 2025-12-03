@interface UIInputSetHostViewAccessibility__ChatKit__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)_accessibilityScannerGroupTraits;
@end

@implementation UIInputSetHostViewAccessibility__ChatKit__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKKeyboardContentViewController"];
  [validationsCopy validateClass:@"UIInputWindowController" hasInstanceMethod:@"inputViewSet" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIInputViewSet" hasInstanceMethod:@"inputView" withFullSignature:{"@", 0}];
}

- (unint64_t)_accessibilityScannerGroupTraits
{
  v10.receiver = self;
  v10.super_class = UIInputSetHostViewAccessibility__ChatKit__UIKit;
  _accessibilityScannerGroupTraits = [(UIInputSetHostViewAccessibility__ChatKit__UIKit *)&v10 _accessibilityScannerGroupTraits];
  if (_accessibilityScannerGroupTraits)
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    _rootInputWindowController = [v3 _rootInputWindowController];

    v5 = [_rootInputWindowController safeValueForKey:@"inputViewSet"];
    v6 = [v5 safeValueForKey:@"inputView"];

    _accessibilityViewController = [v6 _accessibilityViewController];
    NSClassFromString(&cfstr_Ckkeyboardcont.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      _accessibilityScannerGroupTraits &= ~1uLL;
    }
  }

  return _accessibilityScannerGroupTraits;
}

@end