@interface PedestrianARInstructionContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PedestrianARInstructionContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PedestrianARInstructionContainerView" hasInstanceMethod:@"topLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PedestrianARInstructionContainerView" hasInstanceMethod:@"bottomLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PedestrianARInstructionContainerViewAccessibility *)self safeUIViewForKey:@"topLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(PedestrianARInstructionContainerViewAccessibility *)self safeUIViewForKey:@"bottomLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = __AXStringForVariables();

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PedestrianARInstructionContainerViewAccessibility;
  return *MEMORY[0x29EDC7FF0] | [(PedestrianARInstructionContainerViewAccessibility *)&v3 accessibilityTraits];
}

@end