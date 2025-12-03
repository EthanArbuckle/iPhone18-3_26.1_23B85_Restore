@interface PHSingleCallParticipantLabelViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetUpCallDetailsViewButton;
- (void)setUpCallDetailsViewButton;
@end

@implementation PHSingleCallParticipantLabelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHSingleCallParticipantLabelView" hasInstanceVariable:@"_statusLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PHSingleCallParticipantLabelView" hasProperty:@"callDetailsViewButton" withType:"@"];
  [validationsCopy validateClass:@"PHSingleCallParticipantLabelView" hasInstanceMethod:@"setUpCallDetailsViewButton" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v15.receiver = self;
  v15.super_class = PHSingleCallParticipantLabelViewAccessibility;
  [(PHSingleCallParticipantLabelViewAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  v3 = [(PHSingleCallParticipantLabelViewAccessibility *)self safeValueForKey:@"_statusLabel"];
  accessibilityTraits = [v3 accessibilityTraits];
  v5 = *MEMORY[0x29EDC7FF0];

  v6 = [(PHSingleCallParticipantLabelViewAccessibility *)self safeValueForKey:@"_statusLabel"];
  [v6 setAccessibilityTraits:v5 | accessibilityTraits];

  LOBYTE(location) = 0;
  objc_opt_class();
  v7 = [(PHSingleCallParticipantLabelViewAccessibility *)self safeValueForKey:@"_statusLabel"];
  v8 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, v8);
  v9 = MEMORY[0x29EDCA5F8];
  v10 = 3221225472;
  v11 = __91__PHSingleCallParticipantLabelViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v12 = &unk_29F2C8BA8;
  objc_copyWeak(&v13, &location);
  [v8 _setAccessibilityLabelBlock:&v9];
  [(PHSingleCallParticipantLabelViewAccessibility *)self _axSetUpCallDetailsViewButton:v9];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

id __91__PHSingleCallParticipantLabelViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained text];

  v3 = [MEMORY[0x29EDBA0D0] regularExpressionWithPattern:@"((\\d{1 options:2}:)?\\d{2}:\\d{2})" error:{1, 0}];
  v4 = [v3 matchesInString:v2 options:0 range:{0, objc_msgSend(v2, "length")}];
  if ([v4 count] == 1)
  {
    v5 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v2];
    v6 = [v4 firstObject];
    [v6 range];
    v8 = v7;

    if (v8 > 5)
    {
      v18 = *MEMORY[0x29EDBD8B8];
      v19 = MEMORY[0x29EDB8EB0];
      v9 = MEMORY[0x29EDB8DC0];
      v10 = &v19;
      v11 = &v18;
    }

    else
    {
      v20 = *MEMORY[0x29EDBD8C0];
      v21[0] = MEMORY[0x29EDB8EB0];
      v9 = MEMORY[0x29EDB8DC0];
      v10 = v21;
      v11 = &v20;
    }

    v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
    v13 = [v4 firstObject];
    v14 = [v13 range];
    [v5 setAttributes:v12 withRange:{v14, v15}];
  }

  else
  {
    v5 = v2;
  }

  v16 = *MEMORY[0x29EDCA608];

  return v5;
}

- (void)setUpCallDetailsViewButton
{
  v3.receiver = self;
  v3.super_class = PHSingleCallParticipantLabelViewAccessibility;
  [(PHSingleCallParticipantLabelViewAccessibility *)&v3 setUpCallDetailsViewButton];
  [(PHSingleCallParticipantLabelViewAccessibility *)self _axSetUpCallDetailsViewButton];
}

- (void)_axSetUpCallDetailsViewButton
{
  v2 = [(PHSingleCallParticipantLabelViewAccessibility *)self safeUIViewForKey:@"callDetailsViewButton"];
  [v2 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
}

@end