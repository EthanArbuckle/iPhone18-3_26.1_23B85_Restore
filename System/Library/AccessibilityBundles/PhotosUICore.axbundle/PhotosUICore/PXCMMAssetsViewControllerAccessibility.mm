@interface PXCMMAssetsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_createAddButton;
@end

@implementation PXCMMAssetsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXCMMAssetsViewController" hasInstanceMethod:@"_createAddButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCMMTileReusableView" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
}

- (id)_createAddButton
{
  v7.receiver = self;
  v7.super_class = PXCMMAssetsViewControllerAccessibility;
  _createAddButton = [(PXCMMAssetsViewControllerAccessibility *)&v7 _createAddButton];
  objc_opt_class();
  v3 = [_createAddButton safeValueForKey:@"view"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = accessibilityPhotosUICoreLocalizedString(@"add.photo");
  [v4 setAccessibilityLabel:v5];

  return _createAddButton;
}

@end