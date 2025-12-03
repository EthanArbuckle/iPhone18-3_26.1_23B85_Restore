@interface AXInvertColors_AppleAccountSettings
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_AppleAccountSettings

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AAUIDeviceInfoHeaderView" hasInstanceVariable:@"_deviceImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"AAUIDeviceInfoHeaderView" hasInstanceMethod:@"_setupSubviews" withFullSignature:{"v", 0}];
}

@end