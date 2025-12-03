@interface BFFPaneHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BFFPaneHeaderViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation BFFPaneHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BFFPaneHeaderView" hasInstanceVariable:@"_textLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"BFFPaneHeaderView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = BFFPaneHeaderViewAccessibility;
  [(BFFPaneHeaderViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(BFFPaneHeaderViewAccessibility *)self safeValueForKey:@"_textLabel"];
  v4 = [(BFFPaneHeaderViewAccessibility *)self safeValueForKey:@"_textLabel"];
  accessibilityTraits = [v4 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
}

- (BFFPaneHeaderViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = BFFPaneHeaderViewAccessibility;
  v3 = [(BFFPaneHeaderViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(BFFPaneHeaderViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end