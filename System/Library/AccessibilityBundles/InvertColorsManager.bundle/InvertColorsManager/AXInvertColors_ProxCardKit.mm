@interface AXInvertColors_ProxCardKit
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_ProxCardKit

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PRXCardBottomTray" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PRXCardBottomTray" hasInstanceMethod:@"setImageView:" withFullSignature:{"v", "@", 0}];
}

@end