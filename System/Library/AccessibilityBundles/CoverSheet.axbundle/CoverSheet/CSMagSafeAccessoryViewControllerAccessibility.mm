@interface CSMagSafeAccessoryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation CSMagSafeAccessoryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CSMagSafeAccessoryViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CSMagSafeAccessoryViewController" isKindOfClass:@"CSAccessoryViewController"];
  [validationsCopy validateClass:@"CSMagSafeAccessoryViewController" hasInstanceMethod:@"accessory" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSMagSafeAccessory" hasInstanceMethod:@"primaryColor" withFullSignature:{"@", 0}];
}

@end