@interface AXInvertColors_DisplayAndBrightnessSettings
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_DisplayAndBrightnessSettings

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DBSDeviceAppearanceOptionView" hasInstanceMethod:@"_previewImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DBSDeviceAppearanceOptionView" hasInstanceMethod:@"_configureView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"DBSDeviceAppearanceOptionView" hasInstanceMethod:@"traitCollectionDidChange:" withFullSignature:{"v", "@", 0}];
}

@end