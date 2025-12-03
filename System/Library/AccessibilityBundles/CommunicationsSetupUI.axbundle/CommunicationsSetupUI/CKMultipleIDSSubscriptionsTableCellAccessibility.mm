@interface CKMultipleIDSSubscriptionsTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation CKMultipleIDSSubscriptionsTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKMultipleIDSSubscriptionsTableCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMultipleIDSSubscriptionsTableCell" hasInstanceMethod:@"numberLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMultipleIDSSubscriptionsTableCell" hasInstanceMethod:@"centeredNameLabel" withFullSignature:{"@", 0}];
}

@end