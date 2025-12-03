@interface AXInvertColors_SiriUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_SiriUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SiriUISashView" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"SiriUISashView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SiriUIContentLabel" isKindOfClass:@"UILabel"];
  [validationsCopy validateClass:@"SiriUISiriStatusView" hasInstanceVariable:@"_flamesView" withType:"SUICFlamesView"];
  [validationsCopy validateClass:@"SiriUISiriStatusView" hasInstanceVariable:@"_glyphView" withType:"UIView"];
  [validationsCopy validateClass:@"SiriUISiriStatusView" hasInstanceVariable:@"_touchInputView" withType:"UIView"];
  [validationsCopy validateClass:@"SiriUIContentCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"SiriUITextContainerView" hasProperty:@"textColor" withType:"@"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"SiriUISashViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SiriUIContentLabelInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SiriUIHelpButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SiriUISiriStatusViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SiriUIAudioRoutePickerButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SiriUIContentCollectionViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end