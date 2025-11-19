@interface PXCMMAssetsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_createAddButton;
@end

@implementation PXCMMAssetsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXCMMAssetsViewController" hasInstanceMethod:@"_createAddButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXCMMTileReusableView" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
}

- (id)_createAddButton
{
  v7.receiver = self;
  v7.super_class = PXCMMAssetsViewControllerAccessibility;
  v2 = [(PXCMMAssetsViewControllerAccessibility *)&v7 _createAddButton];
  objc_opt_class();
  v3 = [v2 safeValueForKey:@"view"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = accessibilityPhotosUICoreLocalizedString(@"add.photo");
  [v4 setAccessibilityLabel:v5];

  return v2;
}

@end