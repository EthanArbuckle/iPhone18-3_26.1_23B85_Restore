@interface UIBarButtonItemAccessibility__DocumentManager__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation UIBarButtonItemAccessibility__DocumentManager__UIKit

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
  v9.super_class = UIBarButtonItemAccessibility__DocumentManager__UIKit;
  v3 = [(UIBarButtonItemAccessibility__DocumentManager__UIKit *)&v9 accessibilityLabel];
  v4 = [(UIBarButtonItemAccessibility__DocumentManager__UIKit *)self safeValueForKeyPath:@"image.imageAsset"];
  v5 = [v4 safeStringForKey:@"assetName"];

  if ([v5 containsString:@"Dots"] & 1) != 0 || (objc_msgSend(v5, "containsString:", @"More") & 1) != 0 || (objc_msgSend(v5, "containsString:", @"ellipsis.circle") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"ellipsis"))
  {
    v6 = @"more";
LABEL_6:
    v7 = accessibilityLocalizedString(v6);

    v3 = v7;
    goto LABEL_7;
  }

  if ([v5 containsString:@"Duplicate"] & 1) != 0 || (objc_msgSend(v5, "containsString:", @"plus.square.on.square"))
  {
    v6 = @"duplicate";
    goto LABEL_6;
  }

  if ([v5 isEqualToString:@"folder.badge.plus"])
  {
    v6 = @"new.folder";
    goto LABEL_6;
  }

  if ([v5 isEqualToString:@"square.grid.2x2"])
  {
    v6 = @"display.mode.icons";
    goto LABEL_6;
  }

  if ([v5 isEqualToString:@"list.bullet"])
  {
    v6 = @"display.mode.list";
    goto LABEL_6;
  }

LABEL_7:

  return v3;
}

@end