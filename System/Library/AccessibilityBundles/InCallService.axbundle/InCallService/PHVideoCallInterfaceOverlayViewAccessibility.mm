@interface PHVideoCallInterfaceOverlayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityViewIsModal;
@end

@implementation PHVideoCallInterfaceOverlayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHCallParticipantsView"];
  [validationsCopy validateClass:@"PHVideoCallInterfaceOverlayView" isKindOfClass:@"UIView"];
}

- (BOOL)accessibilityViewIsModal
{
  v2 = [(PHVideoCallInterfaceOverlayViewAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29C2DAD60](@"PHCallParticipantsView", a2)];
  accessibilityViewIsModal = [v2 accessibilityViewIsModal];

  return accessibilityViewIsModal;
}

@end