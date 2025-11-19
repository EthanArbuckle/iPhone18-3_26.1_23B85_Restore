@interface AXInvertColors_AppleAccountSettings
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_AppleAccountSettings

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AAUIDeviceInfoHeaderView" hasInstanceVariable:@"_deviceImageView" withType:"UIImageView"];
  [v3 validateClass:@"AAUIDeviceInfoHeaderView" hasInstanceMethod:@"_setupSubviews" withFullSignature:{"v", 0}];
}

@end