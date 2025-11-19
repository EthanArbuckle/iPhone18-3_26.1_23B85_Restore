@interface AXInvertColors_DisplayAndBrightnessSettings
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_DisplayAndBrightnessSettings

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DBSDeviceAppearanceOptionView" hasInstanceMethod:@"_previewImageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DBSDeviceAppearanceOptionView" hasInstanceMethod:@"_configureView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"DBSDeviceAppearanceOptionView" hasInstanceMethod:@"traitCollectionDidChange:" withFullSignature:{"v", "@", 0}];
}

@end