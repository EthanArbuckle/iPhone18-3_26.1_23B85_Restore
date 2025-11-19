@interface PURedeyeToolControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)centerToolbarView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_animateFailureAppearance;
- (void)_animateInstructionAppearance;
- (void)_showChangeIndicatorAtPoint:(CGPoint)a3 isFailure:(BOOL)a4;
- (void)didBecomeActiveTool;
@end

@implementation PURedeyeToolControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PURedeyeToolController" hasInstanceMethod:@"centerToolbarView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PURedeyeToolController" hasInstanceMethod:@"_animateInstructionAppearance" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PURedeyeToolController" hasInstanceMethod:@"_animateFailureAppearance" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PURedeyeToolController" hasInstanceMethod:@"didBecomeActiveTool" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PURedeyeToolController" hasInstanceVariable:@"_instructionLabel" withType:"CEKBadgeTextView"];
  [v3 validateClass:@"PURedeyeToolController" hasInstanceVariable:@"_failureLabel" withType:"CEKBadgeTextView"];
  [v3 validateClass:@"PURedeyeToolController" hasInstanceMethod:@"_showChangeIndicatorAtPoint:isFailure:" withFullSignature:{"v", "{CGPoint=dd}", "B", 0}];
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
  v2 = [(PURedeyeToolControllerAccessibility *)&v4 centerToolbarView];
  [v2 _setAccessibilityTraitsBlock:&__block_literal_global_506];

  return v2;
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

- (void)_showChangeIndicatorAtPoint:(CGPoint)a3 isFailure:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = PURedeyeToolControllerAccessibility;
  [(PURedeyeToolControllerAccessibility *)&v6 _showChangeIndicatorAtPoint:a3.x isFailure:a3.y];
  if (!a4)
  {
    v5 = accessibilityPULocalizedString(@"red.eye.corrected");
    UIAccessibilitySpeak();
  }
}

@end