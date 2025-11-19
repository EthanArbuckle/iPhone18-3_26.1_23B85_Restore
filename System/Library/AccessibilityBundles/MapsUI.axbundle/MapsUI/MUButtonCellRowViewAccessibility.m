@interface MUButtonCellRowViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MUButtonCellRowViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MUButtonCellRowView" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"MUDynamicButtonCellModel" hasMethod:@"titleString" isInstanceMethod:1 isRequired:1];
}

- (id)accessibilityLabel
{
  v2 = [(MUButtonCellRowViewAccessibility *)self safeValueForKey:@"viewModel"];
  v3 = [v2 safeValueForKey:@"titleString"];

  return v3;
}

@end