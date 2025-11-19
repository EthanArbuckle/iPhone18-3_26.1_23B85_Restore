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

  v5 = [v4 slotID];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x29EDBD7E8]);
    v7 = accessibilityLocalizedString(@"proactive.suggestion");
    v8 = [v6 initWithString:v7];

    v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v5];
    [v8 setAttribute:v9 forKey:*MEMORY[0x29EDBD980]];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TUIProactiveCandidateCellAccessibility;
    v8 = [(TUIProactiveCandidateCellAccessibility *)&v11 accessibilityLabel];
  }

  return v8;
}

- (BOOL)isAccessibilityElement
{
  if (AXRequestingClient() == 4)
  {
    return 1;
  }

  v4 = [(TUIProactiveCandidateCellAccessibility *)self accessibilityLabel];
  v3 = [v4 length] != 0;

  return v3;
}

@end