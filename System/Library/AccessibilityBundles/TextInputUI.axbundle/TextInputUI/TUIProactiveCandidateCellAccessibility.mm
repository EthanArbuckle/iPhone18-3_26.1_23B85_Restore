@interface TUIProactiveCandidateCellAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation TUIProactiveCandidateCellAccessibility

- (id)accessibilityLabel
{
  v12 = 0;
  objc_opt_class();
  v3 = [(TUIProactiveCandidateCellAccessibility *)self safeValueForKey:@"candidate"];
  v4 = __UIAccessibilityCastAsClass();

  slotID = [v4 slotID];
  if (slotID)
  {
    v6 = objc_alloc(MEMORY[0x29EDBD7E8]);
    v7 = accessibilityLocalizedString(@"proactive.suggestion");
    accessibilityLabel = [v6 initWithString:v7];

    v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:slotID];
    [accessibilityLabel setAttribute:v9 forKey:*MEMORY[0x29EDBD980]];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TUIProactiveCandidateCellAccessibility;
    accessibilityLabel = [(TUIProactiveCandidateCellAccessibility *)&v11 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (BOOL)isAccessibilityElement
{
  if (AXRequestingClient() == 4)
  {
    return 1;
  }

  accessibilityLabel = [(TUIProactiveCandidateCellAccessibility *)self accessibilityLabel];
  v3 = [accessibilityLabel length] != 0;

  return v3;
}

@end