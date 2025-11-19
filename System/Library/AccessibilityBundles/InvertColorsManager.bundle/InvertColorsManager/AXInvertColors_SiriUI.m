@interface AXInvertColors_SiriUI
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_SiriUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SiriUISashView" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
  [v3 validateClass:@"SiriUISashView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"SiriUIContentLabel" isKindOfClass:@"UILabel"];
  [v3 validateClass:@"SiriUISiriStatusView" hasInstanceVariable:@"_flamesView" withType:"SUICFlamesView"];
  [v3 validateClass:@"SiriUISiriStatusView" hasInstanceVariable:@"_glyphView" withType:"UIView"];
  [v3 validateClass:@"SiriUISiriStatusView" hasInstanceVariable:@"_touchInputView" withType:"UIView"];
  [v3 validateClass:@"SiriUIContentCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"SiriUITextContainerView" hasProperty:@"textColor" withType:"@"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"SiriUISashViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SiriUIContentLabelInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SiriUIHelpButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SiriUISiriStatusViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SiriUIAudioRoutePickerButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SiriUIContentCollectionViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end