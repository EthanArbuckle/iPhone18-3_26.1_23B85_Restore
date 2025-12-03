@interface GKSectionHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (GKSectionHeaderViewAccessibility)initWithFrame:(CGRect)frame;
@end

@implementation GKSectionHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GKSectionHeaderView" hasInstanceVariable:@"_leftLabel" withType:"GKLabel"];
  [validationsCopy validateClass:@"GKSectionHeaderView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (GKSectionHeaderViewAccessibility)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = GKSectionHeaderViewAccessibility;
  v3 = [(GKSectionHeaderViewAccessibility *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = [(GKSectionHeaderViewAccessibility *)v3 safeValueForKey:@"_leftLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];

  return v3;
}

@end