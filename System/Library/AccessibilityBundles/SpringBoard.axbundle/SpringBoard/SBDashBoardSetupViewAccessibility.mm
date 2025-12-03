@interface SBDashBoardSetupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (double)setTitleString:(id)string forLanguage:(id)language;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_addActivationLockLabels;
- (void)_axSetupActivationLockLabels;
- (void)setActivationLockWarningString:(id)string detailString:(id)detailString forLanguage:(id)language;
@end

@implementation SBDashBoardSetupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBDashBoardSetupView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SBDashBoardSetupView" hasInstanceMethod:@"setTitleString:forLanguage:" withFullSignature:{"d", "@", "@", 0}];
  [validationsCopy validateClass:@"SBDashBoardSetupView" hasInstanceMethod:@"setActivationLockWarningString:detailString:forLanguage:" withFullSignature:{"v", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"SBDashBoardSetupView" hasInstanceVariable:@"_homeAffordanceCallToActionContainer" withType:"UIView"];
  [validationsCopy validateClass:@"SBDashBoardSetupView" hasInstanceVariable:@"_homeAffordanceCallToActionLabel" withType:"SBUILegibilityLabel"];
  [validationsCopy validateClass:@"SBDashBoardSetupView" hasInstanceVariable:@"_activationLockStackView" withType:"UIStackView"];
  [validationsCopy validateClass:@"SBDashBoardSetupView" hasInstanceVariable:@"_activationLockWarningLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SBDashBoardSetupView" hasInstanceVariable:@"_activationLockDetailLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SBDashBoardSetupView" hasInstanceMethod:@"_addActivationLockLabels" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SBDashBoardSetupViewAccessibility;
  [(SBDashBoardSetupViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBDashBoardSetupViewAccessibility *)self safeValueForKey:@"_homeAffordanceCallToActionContainer"];
  [v3 _accessibilitySetOverridesInvisibility:1];

  v4 = [(SBDashBoardSetupViewAccessibility *)self safeValueForKey:@"_homeAffordanceCallToActionLabel"];
  [v4 accessibilitySetIdentification:@"HomeAffordanceLabel"];

  [(SBDashBoardSetupViewAccessibility *)self _axSetupActivationLockLabels];
}

- (void)_axSetupActivationLockLabels
{
  _accessibilitySafeStackView = [(SBDashBoardSetupViewAccessibility *)self _accessibilitySafeStackView];
  v3 = [(SBDashBoardSetupViewAccessibility *)self safeUIViewForKey:@"_activationLockWarningLabel"];
  v4 = [(SBDashBoardSetupViewAccessibility *)self safeUIViewForKey:@"_activationLockDetailLabel"];
  [_accessibilitySafeStackView _accessibilitySetOverridesInvisibility:1];
  [v3 _accessibilitySetOverridesInvisibility:1];
  [v4 _accessibilitySetOverridesInvisibility:1];
  [_accessibilitySafeStackView _accessibilitySetViewIsVisible:1];
  [v3 _accessibilitySetViewIsVisible:1];
  [v4 _accessibilitySetViewIsVisible:1];
  [_accessibilitySafeStackView setIsAccessibilityElement:1];
}

- (double)setTitleString:(id)string forLanguage:(id)language
{
  v17[1] = *MEMORY[0x29EDCA608];
  stringCopy = string;
  languageCopy = language;
  v8 = [(SBDashBoardSetupViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v8 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  [v8 _accessibilitySetOverridesInvisibility:1];
  if (stringCopy && languageCopy)
  {
    v9 = objc_alloc(MEMORY[0x29EDB9F30]);
    v16 = *MEMORY[0x29EDC7F30];
    v17[0] = languageCopy;
    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [v9 initWithString:stringCopy attributes:v10];

    [v8 setAccessibilityAttributedLabel:v11];
  }

  v15.receiver = self;
  v15.super_class = SBDashBoardSetupViewAccessibility;
  [(SBDashBoardSetupViewAccessibility *)&v15 setTitleString:stringCopy forLanguage:languageCopy];
  v13 = v12;

  return v13;
}

- (void)setActivationLockWarningString:(id)string detailString:(id)detailString forLanguage:(id)language
{
  v19[1] = *MEMORY[0x29EDCA608];
  v17.receiver = self;
  v17.super_class = SBDashBoardSetupViewAccessibility;
  languageCopy = language;
  detailStringCopy = detailString;
  stringCopy = string;
  [(SBDashBoardSetupViewAccessibility *)&v17 setActivationLockWarningString:stringCopy detailString:detailStringCopy forLanguage:languageCopy];
  _accessibilitySafeStackView = [(SBDashBoardSetupViewAccessibility *)self _accessibilitySafeStackView];
  v12 = objc_alloc(MEMORY[0x29EDB9F30]);
  v13 = __AXStringForVariables();

  v18 = *MEMORY[0x29EDC7F30];
  v19[0] = languageCopy;
  v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v19 forKeys:&v18 count:{1, detailStringCopy, @"__AXStringForVariablesSentinel"}];

  v15 = [v12 initWithString:v13 attributes:v14];
  [_accessibilitySafeStackView setAccessibilityAttributedLabel:v15];

  LODWORD(v15) = *MEMORY[0x29EDC7ED8];
  v16 = [(SBDashBoardSetupViewAccessibility *)self safeUIViewForKey:@"_activationLockStackView"];
  UIAccessibilityPostNotification(v15, v16);
}

- (void)_addActivationLockLabels
{
  v3.receiver = self;
  v3.super_class = SBDashBoardSetupViewAccessibility;
  [(SBDashBoardSetupViewAccessibility *)&v3 _addActivationLockLabels];
  [(SBDashBoardSetupViewAccessibility *)self _axSetupActivationLockLabels];
}

@end