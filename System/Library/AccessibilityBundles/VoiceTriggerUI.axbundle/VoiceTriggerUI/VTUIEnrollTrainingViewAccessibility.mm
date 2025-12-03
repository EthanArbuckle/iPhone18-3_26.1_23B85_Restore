@interface VTUIEnrollTrainingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (VTUIEnrollTrainingViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setupUI;
@end

@implementation VTUIEnrollTrainingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VTUIEnrollTrainingView" hasInstanceVariable:@"_instructionPagedLabel" withType:"VTUIPagedLabel"];
  [validationsCopy validateClass:@"VTUIEnrollTrainingView" hasInstanceVariable:@"_radarButton" withType:"SiriUIContentButton"];
  [validationsCopy validateClass:@"VTUIPagedLabel" hasInstanceVariable:@"_instructionLabelLeft" withType:"UILabel"];
  [validationsCopy validateClass:@"VTUIPagedLabel" hasInstanceVariable:@"_instructionLabelRight" withType:"UILabel"];
  [validationsCopy validateClass:@"VTUIEnrollTrainingView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"VTUIEnrollTrainingView" hasInstanceMethod:@"_setupUI" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"VTUIEnrollTrainingView" hasInstanceMethod:@"orbView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = VTUIEnrollTrainingViewAccessibility;
  [(VTUIEnrollTrainingViewAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  v3 = [(VTUIEnrollTrainingViewAccessibility *)self safeValueForKey:@"_radarButton"];
  v4 = accessibilityLocalizedString(@"button.radar");
  [v3 setAccessibilityLabel:v4];

  v5 = [(VTUIEnrollTrainingViewAccessibility *)self safeValueForKey:@"_instructionPagedLabel"];
  v6 = [v5 safeValueForKey:@"_instructionLabelLeft"];
  v7 = MEMORY[0x29EDB8EB0];
  [v6 _accessibilitySetRetainedValue:MEMORY[0x29EDB8EB0] forKey:@"AXIsInstructionLabel"];

  v8 = [(VTUIEnrollTrainingViewAccessibility *)self safeValueForKey:@"_instructionPagedLabel"];
  v9 = [v8 safeValueForKey:@"_instructionLabelRight"];
  [v9 _accessibilitySetRetainedValue:v7 forKey:@"AXIsInstructionLabel"];
}

- (VTUIEnrollTrainingViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = VTUIEnrollTrainingViewAccessibility;
  v3 = [(VTUIEnrollTrainingViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(VTUIEnrollTrainingViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

- (void)_setupUI
{
  v3.receiver = self;
  v3.super_class = VTUIEnrollTrainingViewAccessibility;
  [(VTUIEnrollTrainingViewAccessibility *)&v3 _setupUI];
  [(VTUIEnrollTrainingViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end