@interface GKSectionHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (GKSectionHeaderViewAccessibility)initWithFrame:(CGRect)a3;
@end

@implementation GKSectionHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GKSectionHeaderView" hasInstanceVariable:@"_leftLabel" withType:"GKLabel"];
  [v3 validateClass:@"GKSectionHeaderView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (GKSectionHeaderViewAccessibility)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = GKSectionHeaderViewAccessibility;
  v3 = [(GKSectionHeaderViewAccessibility *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(GKSectionHeaderViewAccessibility *)v3 safeValueForKey:@"_leftLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];

  return v3;
}

@end