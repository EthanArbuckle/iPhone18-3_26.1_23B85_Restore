@interface UIButtonBarButtonAccessibility__Music__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (UIButtonBarButtonAccessibility__Music__UIKit)initWithVisualProvider:(id)a3;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation UIButtonBarButtonAccessibility__Music__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_UIButtonBarButton" hasInstanceVariable:@"_visualProvider" withType:"_UIButtonBarButtonVisualProvider"];
  [v3 validateClass:@"_UIButtonBarButtonVisualProviderIOS" hasInstanceVariable:@"_titleButton" withType:"_UIModernBarButton"];
  [v3 validateClass:@"_UIButtonBarButton" hasInstanceMethod:@"initWithVisualProvider:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"_UIButtonBarButton" hasInstanceMethod:@"visualProvider" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_UIButtonBarButtonVisualProvider" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIButton" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIImageView" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIImage" hasInstanceMethod:@"imageAsset" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v8.receiver = self;
  v8.super_class = UIButtonBarButtonAccessibility__Music__UIKit;
  v3 = [(UIButtonBarButtonAccessibility__Music__UIKit *)&v8 accessibilityLabel];
  if (![v3 length])
  {
    v4 = [(UIButtonBarButtonAccessibility__Music__UIKit *)self safeValueForKeyPath:@"visualProvider.contentView.imageView.image.imageAsset"];
    v5 = [v4 safeStringForKey:@"assetName"];

    if ([v5 isEqualToString:@"Artist-Page-Context"])
    {
      v6 = accessibilityMusicLocalizedString(@"more.button");

      v3 = v6;
    }
  }

  return v3;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(UIButtonBarButtonAccessibility__Music__UIKit *)self accessibilityLabel];
  if (v3)
  {
    v6.receiver = self;
    v6.super_class = UIButtonBarButtonAccessibility__Music__UIKit;
    v4 = [(UIButtonBarButtonAccessibility__Music__UIKit *)&v6 isAccessibilityElement];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = UIButtonBarButtonAccessibility__Music__UIKit;
  [(UIButtonBarButtonAccessibility__Music__UIKit *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(UIButtonBarButtonAccessibility__Music__UIKit *)self safeValueForKey:@"_visualProvider"];
  v4 = [v3 safeValueForKey:@"_titleButton"];

  v5 = [v4 accessibilityLabel];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __90__UIButtonBarButtonAccessibility__Music__UIKit__accessibilityLoadAccessibilityInformation__block_invoke;
  v7[3] = &unk_29F2DD8C0;
  v8 = v5;
  v6 = v5;
  [v4 _setIsAccessibilityElementBlock:v7];
}

- (UIButtonBarButtonAccessibility__Music__UIKit)initWithVisualProvider:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIButtonBarButtonAccessibility__Music__UIKit;
  v3 = [(UIButtonBarButtonAccessibility__Music__UIKit *)&v5 initWithVisualProvider:a3];
  [(UIButtonBarButtonAccessibility__Music__UIKit *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end