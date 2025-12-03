@interface UILabelAccessibility__GameCenterUI__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
@end

@implementation UILabelAccessibility__GameCenterUI__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UILabel" hasInstanceMethod:@"color" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIColor" hasInstanceMethod:@"alpha" withFullSignature:{"d", 0}];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(UILabelAccessibility__GameCenterUI__UIKit *)self safeValueForKey:@"color"];
  [v3 safeCGFloatForKey:@"alpha"];
  v5 = v4;

  v7.receiver = self;
  v7.super_class = UILabelAccessibility__GameCenterUI__UIKit;
  result = [(UILabelAccessibility__GameCenterUI__UIKit *)&v7 isAccessibilityElement];
  if (v5 <= 0.0)
  {
    return 0;
  }

  return result;
}

@end