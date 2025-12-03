@interface UISwipeActionStandardButtonAccessibility__ContactsUI__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation UISwipeActionStandardButtonAccessibility__ContactsUI__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UISwipeActionStandardButton" isKindOfClass:@"UIButton"];
  [validationsCopy validateClass:@"UIButton" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIImage" hasInstanceVariable:@"_imageAsset" withType:"UIImageAsset"];
  [validationsCopy validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v12 = 0;
  objc_opt_class();
  v3 = [(UISwipeActionStandardButtonAccessibility__ContactsUI__UIKit *)self safeUIViewForKey:@"imageView"];
  v4 = __UIAccessibilityCastAsClass();

  image = [v4 image];
  v6 = [image safeValueForKey:@"_imageAsset"];
  v7 = [v6 safeStringForKey:@"assetName"];

  if ([v7 isEqualToString:@"envelope.fill"])
  {
    accessibilityLabel = accessibilityLocalizedString(@"action.email.all");
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UISwipeActionStandardButtonAccessibility__ContactsUI__UIKit;
    accessibilityLabel = [(UISwipeActionStandardButtonAccessibility__ContactsUI__UIKit *)&v11 accessibilityLabel];
  }

  v9 = accessibilityLabel;

  return v9;
}

@end