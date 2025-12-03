@interface HKListItemLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation HKListItemLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HKListItemLabel" hasInstanceMethod:@"itemView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKListItemLabel" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
}

@end