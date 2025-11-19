@interface SRSpeechAlternativeTapToEditCellViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (SRSpeechAlternativeTapToEditCellViewAccessibility)init;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateTapToEditLabel;
@end

@implementation SRSpeechAlternativeTapToEditCellViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SRSpeechAlternativeTapToEditCellView" hasInstanceMethod:@"init" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SRSpeechAlternativeTapToEditCellView" hasInstanceVariable:@"_tapToEditLabel" withType:"UILabel"];
}

- (void)_axAnnotateTapToEditLabel
{
  v2 = [(SRSpeechAlternativeTapToEditCellViewAccessibility *)self safeValueForKey:@"_tapToEditLabel"];
  [v2 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SRSpeechAlternativeTapToEditCellViewAccessibility;
  [(SRSpeechAlternativeTapToEditCellViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SRSpeechAlternativeTapToEditCellViewAccessibility *)self _axAnnotateTapToEditLabel];
}

- (SRSpeechAlternativeTapToEditCellViewAccessibility)init
{
  v5.receiver = self;
  v5.super_class = SRSpeechAlternativeTapToEditCellViewAccessibility;
  v2 = [(SRSpeechAlternativeTapToEditCellViewAccessibility *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SRSpeechAlternativeTapToEditCellViewAccessibility *)v2 _axAnnotateTapToEditLabel];
  }

  return v3;
}

@end