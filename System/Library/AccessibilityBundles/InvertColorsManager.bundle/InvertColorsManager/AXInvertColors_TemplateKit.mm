@interface AXInvertColors_TemplateKit
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_TemplateKit

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TLKIconsView"];
  [validationsCopy validateClass:@"TLKDescriptionView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TLKLabel" isKindOfClass:@"UILabel"];
  [validationsCopy validateClass:@"TLKLabel" hasInstanceMethod:@"initWithProminence:" withFullSignature:{"@", "Q", 0}];
  [validationsCopy validateClass:@"TLKStoreButton" isKindOfClass:@"UIButton"];
  [validationsCopy validateClass:@"TLKStoreButton" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"tlk_updateWithCurrentAppearance" withFullSignature:{"v", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"TLKDescriptionViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"TLKLabelInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"TLKStoreButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end