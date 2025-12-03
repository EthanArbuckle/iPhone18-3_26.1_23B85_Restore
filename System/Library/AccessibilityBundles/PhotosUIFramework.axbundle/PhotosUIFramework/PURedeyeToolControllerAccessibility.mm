@interface PURedeyeToolControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)centerToolbarView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_animateFailureAppearance;
- (void)_animateInstructionAppearance;
- (void)_showChangeIndicatorAtPoint:(CGPoint)point isFailure:(BOOL)failure;
- (void)didBecomeActiveTool;
@end

@implementation PURedeyeToolControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PURedeyeToolController" hasInstanceMethod:@"centerToolbarView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PURedeyeToolController" hasInstanceMethod:@"_animateInstructionAppearance" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PURedeyeToolController" hasInstanceMethod:@"_animateFailureAppearance" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PURedeyeToolController" hasInstanceMethod:@"didBecomeActiveTool" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PURedeyeToolController" hasInstanceVariable:@"_instructionLabel" withType:"CEKBadgeTextView"];
  [validationsCopy validateClass:@"PURedeyeToolController" hasInstanceVariable:@"_failureLabel" withType:"CEKBadgeTextView"];
  [validationsCopy validateClass:@"PURedeyeToolController" hasInstanceMethod:@"_showChangeIndicatorAtPoint:isFailure:" withFullSignature:{"v", "{CGPoint=dd}", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PURedeyeToolControllerAccessibility;
  [(PURedeyeToolControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PURedeyeToolControllerAccessibility *)self safeUIViewForKey:@"centerToolbarView"];
  [v3 _setAccessibilityTraitsBlock:&__block_literal_global_12];
}

- (id)centerToolbarView
{
  v4.receiver = self;
  v4.super_class = PURedeyeToolControllerAccessibility;
  centerToolbarView = [(PURedeyeToolControllerAccessibility *)&v4 centerToolbarView];
  [centerToolbarView _setAccessibilityTraitsBlock:&__block_literal_global_506];

  return centerToolbarView;
}

- (void)_animateInstructionAppearance
{
  v4.receiver = self;
  v4.super_class = PURedeyeToolControllerAccessibility;
  [(PURedeyeToolControllerAccessibility *)&v4 _animateInstructionAppearance];
  v3 = [(PURedeyeToolControllerAccessibility *)self _accessibilityStringForLabelKeyValues:@"_instructionLabel"];
  UIAccessibilitySpeak();
}

- (void)_animateFailureAppearance
{
  v4.receiver = self;
  v4.super_class = PURedeyeToolControllerAccessibility;
  [(PURedeyeToolControllerAccessibility *)&v4 _animateFailureAppearance];
  v3 = [(PURedeyeToolControllerAccessibility *)self _accessibilityStringForLabelKeyValues:@"_failureLabel"];
  UIAccessibilitySpeak();
}

- (void)didBecomeActiveTool
{
  v4.receiver = self;
  v4.super_class = PURedeyeToolControllerAccessibility;
  [(PURedeyeToolControllerAccessibility *)&v4 didBecomeActiveTool];
  v3 = [(PURedeyeToolControllerAccessibility *)self _accessibilityStringForLabelKeyValues:@"_instructionLabel"];
  UIAccessibilitySpeak();
}

- (void)_showChangeIndicatorAtPoint:(CGPoint)point isFailure:(BOOL)failure
{
  v6.receiver = self;
  v6.super_class = PURedeyeToolControllerAccessibility;
  [(PURedeyeToolControllerAccessibility *)&v6 _showChangeIndicatorAtPoint:point.x isFailure:point.y];
  if (!failure)
  {
    v5 = accessibilityPULocalizedString(@"red.eye.corrected");
    UIAccessibilitySpeak();
  }
}

@end