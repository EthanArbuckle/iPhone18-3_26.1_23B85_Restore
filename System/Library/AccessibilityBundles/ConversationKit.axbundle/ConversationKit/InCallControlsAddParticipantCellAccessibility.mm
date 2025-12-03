@interface InCallControlsAddParticipantCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation InCallControlsAddParticipantCellAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = InCallControlsAddParticipantCellAccessibility;
  accessibilityTraits = [(InCallControlsAddParticipantCellAccessibility *)&v7 accessibilityTraits];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = *MEMORY[0x29EDC7F70] | accessibilityTraits;
  LODWORD(accessibilityTraits) = [v3 isUserInteractionEnabled];

  v5 = *MEMORY[0x29EDC7FA8];
  if (accessibilityTraits)
  {
    v5 = 0;
  }

  return v4 | v5;
}

@end