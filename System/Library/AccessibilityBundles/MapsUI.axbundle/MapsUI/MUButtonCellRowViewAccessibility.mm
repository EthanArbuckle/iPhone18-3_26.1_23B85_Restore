@interface MUButtonCellRowViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MUButtonCellRowViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MUButtonCellRowView" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"MUDynamicButtonCellModel" hasMethod:@"titleString" isInstanceMethod:1 isRequired:1];
}

- (id)accessibilityLabel
{
  v2 = [(MUButtonCellRowViewAccessibility *)self safeValueForKey:@"viewModel"];
  v3 = [v2 safeValueForKey:@"titleString"];

  return v3;
}

@end