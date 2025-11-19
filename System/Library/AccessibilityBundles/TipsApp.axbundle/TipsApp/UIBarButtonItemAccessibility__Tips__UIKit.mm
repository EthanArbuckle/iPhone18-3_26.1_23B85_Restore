@interface UIBarButtonItemAccessibility__Tips__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation UIBarButtonItemAccessibility__Tips__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIBarButtonItem" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIImage" hasInstanceMethod:@"imageAsset" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v9.receiver = self;
  v9.super_class = UIBarButtonItemAccessibility__Tips__UIKit;
  v3 = [(UIBarButtonItemAccessibility__Tips__UIKit *)&v9 accessibilityLabel];
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

  v3 = v7;
LABEL_6:

  return v3;
}

@end