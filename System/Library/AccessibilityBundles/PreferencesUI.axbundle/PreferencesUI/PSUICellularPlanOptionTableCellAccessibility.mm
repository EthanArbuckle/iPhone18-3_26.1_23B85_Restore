@interface PSUICellularPlanOptionTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation PSUICellularPlanOptionTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PSUICellularPlanOptionTableCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PSUICellularPlanOptionTableCell" hasInstanceMethod:@"numberLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PSUICellularPlanOptionTableCell" hasInstanceMethod:@"centeredNameLabel" withFullSignature:{"@", 0}];
}

@end