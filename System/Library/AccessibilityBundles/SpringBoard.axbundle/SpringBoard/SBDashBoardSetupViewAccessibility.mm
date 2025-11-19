@interface SBDashBoardSetupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (double)setTitleString:(id)a3 forLanguage:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_addActivationLockLabels;
- (void)_axSetupActivationLockLabels;
- (void)setActivationLockWarningString:(id)a3 detailString:(id)a4 forLanguage:(id)a5;
@end

@implementation SBDashBoardSetupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBDashBoardSetupView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"SBDashBoardSetupView" hasInstanceMethod:@"setTitleString:forLanguage:" withFullSignature:{"d", "@", "@", 0}];
  [v3 validateClass:@"SBDashBoardSetupView" hasInstanceMethod:@"setActivationLockWarningString:detailString:forLanguage:" withFullSignature:{"v", "@", "@", "@", 0}];
  [v3 validateClass:@"SBDashBoardSetupView" hasInstanceVariable:@"_homeAffordanceCallToActionContainer" withType:"UIView"];
  [v3 validateClass:@"SBDashBoardSetupView" hasInstanceVariable:@"_homeAffordanceCallToActionLabel" withType:"SBUILegibilityLabel"];
  [v3 validateClass:@"SBDashBoardSetupView" hasInstanceVariable:@"_activationLockStackView" withType:"UIStackView"];
  [v3 validateClass:@"SBDashBoardSetupView" hasInstanceVariable:@"_activationLockWarningLabel" withType:"UILabel"];
  [v3 validateClass:@"SBDashBoardSetupView" hasInstanceVariable:@"_activationLockDetailLabel" withType:"UILabel"];
  [v3 validateClass:@"SBDashBoardSetupView" hasInstanceMethod:@"_addActivationLockLabels" withFullSignature:{"v", 0}];
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
  v5 = [(SBDashBoardSetupViewAccessibility *)self _accessibilitySafeStackView];
  v3 = [(SBDashBoardSetupViewAccessibility *)self safeUIViewForKey:@"_activationLockWarningLabel"];
  v4 = [(SBDashBoardSetupViewAccessibility *)self safeUIViewForKey:@"_activationLockDetailLabel"];
  [v5 _accessibilitySetOverridesInvisibility:1];
  [v3 _accessibilitySetOverridesInvisibility:1];
  [v4 _accessibilitySetOverridesInvisibility:1];
  [v5 _accessibilitySetViewIsVisible:1];
  [v3 _accessibilitySetViewIsVisible:1];
  [v4 _accessibilitySetViewIsVisible:1];
  [v5 setIsAccessibilityElement:1];
}

- (double)setTitleString:(id)a3 forLanguage:(id)a4
{
  v17[1] = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  v8 = [(SBDashBoardSetupViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v8 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  [v8 _accessibilitySetOverridesInvisibility:1];
  if (v6 && v7)
  {
    v9 = objc_alloc(MEMORY[0x29EDB9F30]);
    v16 = *MEMORY[0x29EDC7F30];
    v17[0] = v7;
    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [v9 initWithString:v6 attributes:v10];

    [v8 setAccessibilityAttributedLabel:v11];
  }

  v15.receiver = self;
  v15.super_class = SBDashBoardSetupViewAccessibility;
  [(SBDashBoardSetupViewAccessibility *)&v15 setTitleString:v6 forLanguage:v7];
  v13 = v12;

  return v13;
}

- (void)setActivationLockWarningString:(id)a3 detailString:(id)a4 forLanguage:(id)a5
{
  v19[1] = *MEMORY[0x29EDCA608];
  v17.receiver = self;
  v17.super_class = SBDashBoardSetupViewAccessibility;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(SBDashBoardSetupViewAccessibility *)&v17 setActivationLockWarningString:v10 detailString:v9 forLanguage:v8];
  v11 = [(SBDashBoardSetupViewAccessibility *)self _accessibilitySafeStackView];
  v12 = objc_alloc(MEMORY[0x29EDB9F30]);
  v13 = __AXStringForVariables();

  v18 = *MEMORY[0x29EDC7F30];
  v19[0] = v8;
  v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v19 forKeys:&v18 count:{1, v9, @"__AXStringForVariablesSentinel"}];

  v15 = [v12 initWithString:v13 attributes:v14];
  [v11 setAccessibilityAttributedLabel:v15];

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