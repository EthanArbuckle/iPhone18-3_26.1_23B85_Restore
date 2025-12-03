@interface _SFMultipleLineAlertActionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation _SFMultipleLineAlertActionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_SFMultipleLineAlertActionView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_SFMultipleLineAlertActionView" hasInstanceMethod:@"detailLabel" withFullSignature:{"@", 0}];
}

@end