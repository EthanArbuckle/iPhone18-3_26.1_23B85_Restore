@interface BKUIPearlCoachingControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)updateInstructionText;
@end

@implementation BKUIPearlCoachingControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BKUIPearlCoachingController" hasInstanceMethod:@"updateInstructionText" withFullSignature:{"v", 0}];
  [v3 validateClass:@"BKUIPearlCoachingController" hasInstanceMethod:@"instructionView" withFullSignature:{"@", 0}];
}

- (void)updateInstructionText
{
  v5.receiver = self;
  v5.super_class = BKUIPearlCoachingControllerAccessibility;
  [(BKUIPearlCoachingControllerAccessibility *)&v5 updateInstructionText];
  v3 = *MEMORY[0x29EDC7ED8];
  v4 = [(BKUIPearlCoachingControllerAccessibility *)self safeUIViewForKey:@"instructionView"];
  UIAccessibilityPostNotification(v3, v4);
}

@end