@interface CKMultipleIDSSubscriptionsTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation CKMultipleIDSSubscriptionsTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKMultipleIDSSubscriptionsTableCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMultipleIDSSubscriptionsTableCell" hasInstanceMethod:@"numberLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMultipleIDSSubscriptionsTableCell" hasInstanceMethod:@"centeredNameLabel" withFullSignature:{"@", 0}];
}

@end