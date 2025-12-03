@interface ContainerHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_initViews;
- (void)didMoveToWindow;
@end

@implementation ContainerHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ContainerHeaderView" hasInstanceMethod:@"_initViews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"ContainerHeaderView" isKindOfClass:@"UIView"];
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