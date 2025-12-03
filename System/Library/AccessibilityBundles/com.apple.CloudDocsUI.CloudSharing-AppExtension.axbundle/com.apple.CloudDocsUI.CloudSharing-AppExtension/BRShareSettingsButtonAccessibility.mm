@interface BRShareSettingsButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation BRShareSettingsButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BRShareSettingsButton" hasInstanceMethod:@"titleLabel" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"BRShareSettingsButton" hasInstanceMethod:@"detailLabel" withFullSignature:{"v", 0}];
}

@end