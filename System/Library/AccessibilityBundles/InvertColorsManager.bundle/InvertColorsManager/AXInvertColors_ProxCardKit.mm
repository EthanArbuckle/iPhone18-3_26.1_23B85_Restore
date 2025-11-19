@interface AXInvertColors_ProxCardKit
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_ProxCardKit

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PRXCardBottomTray" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PRXCardBottomTray" hasInstanceMethod:@"setImageView:" withFullSignature:{"v", "@", 0}];
}

@end