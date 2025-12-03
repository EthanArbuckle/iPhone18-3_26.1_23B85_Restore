@interface UIBarButtonItemAccessibility__Tips__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation UIBarButtonItemAccessibility__Tips__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIBarButtonItem" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIImage" hasInstanceMethod:@"imageAsset" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v9.receiver = self;
  v9.super_class = UIBarButtonItemAccessibility__Tips__UIKit;
  accessibilityLabel = [(UIBarButtonItemAccessibility__Tips__UIKit *)&v9 accessibilityLabel];
  v4 = [(UIBarButtonItemAccessibility__Tips__UIKit *)self safeValueForKeyPath:@"image.imageAsset"];
  v5 = [v4 safeStringForKey:@"assetName"];

  if ([v5 isEqualToString:@"bookmark"])
  {
    v6 = @"Save";
  }

  else
  {
    if (![v5 isEqualToString:@"bookmark.fill"])
    {
      goto LABEL_6;
    }

    v6 = @"Remove from Saved Tips";
  }

  v7 = accessibilityLocalizedString(v6);

  accessibilityLabel = v7;
LABEL_6:

  return accessibilityLabel;
}

@end