@interface WGWidgetPlatterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation WGWidgetPlatterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WGWidgetPlatterView" hasInstanceVariable:@"_headerContentView" withType:"WGPlatterHeaderContentView"];
  [validationsCopy validateClass:@"WGWidgetPlatterView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(WGWidgetPlatterViewAccessibility *)self safeValueForKey:@"_headerContentView"];
  v5 = [(WGWidgetPlatterViewAccessibility *)self safeValueForKey:@"contentView"];
  v6 = [v3 axArrayByIgnoringNilElementsWithCount:{2, v4, v5}];

  return v6;
}

@end