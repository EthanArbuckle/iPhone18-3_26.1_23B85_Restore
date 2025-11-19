@interface AXInvertColors_TemplateKit
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_TemplateKit

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TLKIconsView"];
  [v3 validateClass:@"TLKDescriptionView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKLabel" isKindOfClass:@"UILabel"];
  [v3 validateClass:@"TLKLabel" hasInstanceMethod:@"initWithProminence:" withFullSignature:{"@", "Q", 0}];
  [v3 validateClass:@"TLKStoreButton" isKindOfClass:@"UIButton"];
  [v3 validateClass:@"TLKStoreButton" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"tlk_updateWithCurrentAppearance" withFullSignature:{"v", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"TLKDescriptionViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"TLKLabelInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"TLKStoreButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end