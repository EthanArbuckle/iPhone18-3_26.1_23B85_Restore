@interface UIButtonBarButtonAccessibility__Music__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (UIButtonBarButtonAccessibility__Music__UIKit)initWithVisualProvider:(id)provider;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation UIButtonBarButtonAccessibility__Music__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_UIButtonBarButton" hasInstanceVariable:@"_visualProvider" withType:"_UIButtonBarButtonVisualProvider"];
  [validationsCopy validateClass:@"_UIButtonBarButtonVisualProviderIOS" hasInstanceVariable:@"_titleButton" withType:"_UIModernBarButton"];
  [validationsCopy validateClass:@"_UIButtonBarButton" hasInstanceMethod:@"initWithVisualProvider:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"_UIButtonBarButton" hasInstanceMethod:@"visualProvider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UIButtonBarButtonVisualProvider" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIButton" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIImageView" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIImage" hasInstanceMethod:@"imageAsset" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v8.receiver = self;
  v8.super_class = UIButtonBarButtonAccessibility__Music__UIKit;
  accessibilityLabel = [(UIButtonBarButtonAccessibility__Music__UIKit *)&v8 accessibilityLabel];
  if (![accessibilityLabel length])
  {
    v4 = [(UIButtonBarButtonAccessibility__Music__UIKit *)self safeValueForKeyPath:@"visualProvider.contentView.imageView.image.imageAsset"];
    v5 = [v4 safeStringForKey:@"assetName"];

    if ([v5 isEqualToString:@"Artist-Page-Context"])
    {
      v6 = accessibilityMusicLocalizedString(@"more.button");

      accessibilityLabel = v6;
    }
  }

  return accessibilityLabel;
}

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [(UIButtonBarButtonAccessibility__Music__UIKit *)self accessibilityLabel];
  if (accessibilityLabel)
  {
    v6.receiver = self;
    v6.super_class = UIButtonBarButtonAccessibility__Music__UIKit;
    isAccessibilityElement = [(UIButtonBarButtonAccessibility__Music__UIKit *)&v6 isAccessibilityElement];
  }

  else
  {
    isAccessibilityElement = 0;
  }

  return isAccessibilityElement;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = UIButtonBarButtonAccessibility__Music__UIKit;
  [(UIButtonBarButtonAccessibility__Music__UIKit *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(UIButtonBarButtonAccessibility__Music__UIKit *)self safeValueForKey:@"_visualProvider"];
  v4 = [v3 safeValueForKey:@"_titleButton"];

  accessibilityLabel = [v4 accessibilityLabel];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __90__UIButtonBarButtonAccessibility__Music__UIKit__accessibilityLoadAccessibilityInformation__block_invoke;
  v7[3] = &unk_29F2DD8C0;
  v8 = accessibilityLabel;
  v6 = accessibilityLabel;
  [v4 _setIsAccessibilityElementBlock:v7];
}

- (UIButtonBarButtonAccessibility__Music__UIKit)initWithVisualProvider:(id)provider
{
  v5.receiver = self;
  v5.super_class = UIButtonBarButtonAccessibility__Music__UIKit;
  v3 = [(UIButtonBarButtonAccessibility__Music__UIKit *)&v5 initWithVisualProvider:provider];
  [(UIButtonBarButtonAccessibility__Music__UIKit *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end