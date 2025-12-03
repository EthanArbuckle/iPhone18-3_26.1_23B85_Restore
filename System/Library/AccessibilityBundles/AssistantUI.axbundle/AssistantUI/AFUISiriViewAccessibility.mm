@interface AFUISiriViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityFuzzyHitTestElements;
- (id)accessibilityElements;
- (id)automationElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateReportBug;
- (void)layoutSubviews;
@end

@implementation AFUISiriViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AFUISiriView" hasInstanceVariable:@"_reportBugButton" withType:"SiriUIContentButton"];
  [validationsCopy validateClass:@"AFUISiriView" hasInstanceVariable:@"_siriStatusView" withType:"UIView<SiriUISiriStatusViewProtocol>"];
  [validationsCopy validateClass:@"AFUISiriView" hasInstanceVariable:@"_helpButton" withType:"SiriUIHelpButton"];
  [validationsCopy validateClass:@"AFUISiriView" hasInstanceVariable:@"_audioRoutePickerButton" withType:"SiriUIAudioRoutePickerButton"];
  [validationsCopy validateClass:@"AFUISiriView" hasInstanceVariable:@"_lockContainerView" withType:"AFUIPasscodeContainerView"];
  [validationsCopy validateClass:@"AFUISiriView" hasInstanceVariable:@"_lockViewHidden" withType:"BOOL"];
  [validationsCopy validateClass:@"AFUISiriView" hasInstanceMethod:@"configureReportBugButtonToShowHoldToTalkState:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"AFUISiriView" hasInstanceMethod:@"remoteContentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AFUISiriView" hasInstanceMethod:@"_animateButtonsHidden:" withFullSignature:{"v", "B", 0}];
}

- (id)automationElements
{
  v7.receiver = self;
  v7.super_class = AFUISiriViewAccessibility;
  automationElements = [(AFUISiriViewAccessibility *)&v7 automationElements];
  v4 = [(AFUISiriViewAccessibility *)self safeValueForKey:@"remoteContentView"];
  if (v4 && ([automationElements containsObject:v4] & 1) == 0)
  {
    v5 = [automationElements arrayByAddingObject:v4];

    automationElements = v5;
  }

  return automationElements;
}

- (id)accessibilityElements
{
  v14[1] = *MEMORY[0x29EDCA608];
  if (([(AFUISiriViewAccessibility *)self safeBoolForKey:@"_lockViewHidden"]& 1) != 0 || ([(AFUISiriViewAccessibility *)self safeValueForKey:@"_lockContainerView"], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v6 = AFPreferencesTypeToSiriEnabled();
    v7 = MEMORY[0x29EDB8D80];
    v4 = [(AFUISiriViewAccessibility *)self safeValueForKey:@"remoteContentView"];
    if (v6)
    {
      v8 = [(AFUISiriViewAccessibility *)self safeValueForKey:@"_audioRoutePickerButton"];
      v5 = [v7 axArrayByIgnoringNilElementsWithCount:{2, v4, v8}];
    }

    else
    {
      v8 = [(AFUISiriViewAccessibility *)self safeValueForKey:@"_helpButton"];
      v9 = [(AFUISiriViewAccessibility *)self safeValueForKey:@"_siriStatusView"];
      v10 = [(AFUISiriViewAccessibility *)self safeValueForKey:@"_reportBugButton"];
      v11 = [(AFUISiriViewAccessibility *)self safeValueForKey:@"_audioRoutePickerButton"];
      v5 = [v7 axArrayByIgnoringNilElementsWithCount:{5, v4, v8, v9, v10, v11}];
    }
  }

  else
  {
    v4 = [(AFUISiriViewAccessibility *)self safeValueForKey:@"_lockContainerView"];
    v14[0] = v4;
    v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v14 count:1];
  }

  v12 = *MEMORY[0x29EDCA608];

  return v5;
}

- (id)_accessibilityFuzzyHitTestElements
{
  accessibilityElements = [(AFUISiriViewAccessibility *)self accessibilityElements];
  reverseObjectEnumerator = [accessibilityElements reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AFUISiriViewAccessibility;
  [(AFUISiriViewAccessibility *)&v3 layoutSubviews];
  [(AFUISiriViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axUpdateReportBug
{
  v3 = [(AFUISiriViewAccessibility *)self safeValueForKey:@"_reportBugButton"];
  [v3 setIsAccessibilityElement:1];

  v5 = [(AFUISiriViewAccessibility *)self safeValueForKey:@"_reportBugButton"];
  v4 = AssistantUIAccessibilityLocalizedString(@"assistant.reportbug.label");
  [v5 setAccessibilityLabel:v4];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = AFUISiriViewAccessibility;
  [(AFUISiriViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(AFUISiriViewAccessibility *)self _axUpdateReportBug];
}

@end