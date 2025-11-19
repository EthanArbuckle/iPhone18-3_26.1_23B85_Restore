@interface PHVideoCallInterfaceOverlayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityViewIsModal;
@end

@implementation PHVideoCallInterfaceOverlayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PHCallParticipantsView"];
  [v3 validateClass:@"PHVideoCallInterfaceOverlayView" isKindOfClass:@"UIView"];
}

- (BOOL)accessibilityViewIsModal
{
  v2 = [(PHVideoCallInterfaceOverlayViewAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29C2DAD60](@"PHCallParticipantsView", a2)];
  v3 = [v2 accessibilityViewIsModal];

  return v3;
}

@end