@interface ContainerHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_initViews;
- (void)didMoveToWindow;
@end

@implementation ContainerHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ContainerHeaderView" hasInstanceMethod:@"_initViews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ContainerHeaderView" isKindOfClass:@"UIView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = ContainerHeaderViewAccessibility;
  [(ContainerHeaderViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)_initViews
{
  v2.receiver = self;
  v2.super_class = ContainerHeaderViewAccessibility;
  [(ContainerHeaderViewAccessibility *)&v2 _initViews];
}

- (void)didMoveToWindow
{
  v2.receiver = self;
  v2.super_class = ContainerHeaderViewAccessibility;
  [(ContainerHeaderViewAccessibility *)&v2 didMoveToWindow];
}

@end