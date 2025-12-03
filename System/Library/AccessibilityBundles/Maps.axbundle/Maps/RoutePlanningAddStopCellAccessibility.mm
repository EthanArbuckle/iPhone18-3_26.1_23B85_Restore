@interface RoutePlanningAddStopCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation RoutePlanningAddStopCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"RoutePlanningAddStopCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"RoutePlanningAddStopCell" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(RoutePlanningAddStopCellAccessibility *)self safeBoolForKey:@"isEnabled"];
  v4 = *MEMORY[0x29EDC7FA8];
  if (v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

@end