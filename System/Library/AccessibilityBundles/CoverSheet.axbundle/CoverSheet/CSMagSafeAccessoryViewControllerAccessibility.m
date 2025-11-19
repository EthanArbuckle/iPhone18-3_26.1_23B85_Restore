@interface CSMagSafeAccessoryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation CSMagSafeAccessoryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CSMagSafeAccessoryViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CSMagSafeAccessoryViewController" isKindOfClass:@"CSAccessoryViewController"];
  [v3 validateClass:@"CSMagSafeAccessoryViewController" hasInstanceMethod:@"accessory" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSMagSafeAccessory" hasInstanceMethod:@"primaryColor" withFullSignature:{"@", 0}];
}

@end