@interface UISwipeActionStandardButtonAccessibility__ContactsUI__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation UISwipeActionStandardButtonAccessibility__ContactsUI__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UISwipeActionStandardButton" isKindOfClass:@"UIButton"];
  [v3 validateClass:@"UIButton" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIImage" hasInstanceVariable:@"_imageAsset" withType:"UIImageAsset"];
  [v3 validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v12 = 0;
  objc_opt_class();
  v3 = [(UISwipeActionStandardButtonAccessibility__ContactsUI__UIKit *)self safeUIViewForKey:@"imageView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 image];
  v6 = [v5 safeValueForKey:@"_imageAsset"];
  v7 = [v6 safeStringForKey:@"assetName"];

  if ([v7 isEqualToString:@"envelope.fill"])
  {
    v8 = accessibilityLocalizedString(@"action.email.all");
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UISwipeActionStandardButtonAccessibility__ContactsUI__UIKit;
    v8 = [(UISwipeActionStandardButtonAccessibility__ContactsUI__UIKit *)&v11 accessibilityLabel];
  }

  v9 = v8;

  return v9;
}

@end