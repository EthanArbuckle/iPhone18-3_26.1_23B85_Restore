@interface BFFPaneHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BFFPaneHeaderViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation BFFPaneHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BFFPaneHeaderView" hasInstanceVariable:@"_textLabel" withType:"UILabel"];
  [v3 validateClass:@"BFFPaneHeaderView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = BFFPaneHeaderViewAccessibility;
  [(BFFPaneHeaderViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(BFFPaneHeaderViewAccessibility *)self safeValueForKey:@"_textLabel"];
  v4 = [(BFFPaneHeaderViewAccessibility *)self safeValueForKey:@"_textLabel"];
  v5 = [v4 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v5];
}

- (BFFPaneHeaderViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = BFFPaneHeaderViewAccessibility;
  v3 = [(BFFPaneHeaderViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(BFFPaneHeaderViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end