@interface PSUICellularPlanOptionTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation PSUICellularPlanOptionTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PSUICellularPlanOptionTableCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PSUICellularPlanOptionTableCell" hasInstanceMethod:@"numberLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PSUICellularPlanOptionTableCell" hasInstanceMethod:@"centeredNameLabel" withFullSignature:{"@", 0}];
}

@end