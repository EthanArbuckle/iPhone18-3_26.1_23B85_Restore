@interface PHSOSViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (void)_axMoveToCancelButton;
- (void)_axSpeakInfo;
- (void)presentMedicalID;
- (void)showSOSDialCanceled;
- (void)showSOSDialCountdown;
- (void)showSOSNotificationCanceled;
- (void)showSOSNotificationCountdown;
- (void)showSOSNotified;
- (void)showSOSNumbersList;
@end

@implementation PHSOSViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHSOSViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PHSOSViewController" hasInstanceMethod:@"sosMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PHSOSViewController" hasInstanceMethod:@"infoLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHSOSViewController" hasInstanceMethod:@"cancelButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHSOSViewController" hasInstanceMethod:@"showSOSNumbersList" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PHSOSViewController" hasInstanceMethod:@"showSOSDialCountdown" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PHSOSViewController" hasInstanceMethod:@"showSOSDialCanceled" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PHSOSViewController" hasInstanceMethod:@"showSOSNotified" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PHSOSViewController" hasInstanceMethod:@"showSOSNotificationCountdown" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PHSOSViewController" hasInstanceMethod:@"showSOSNotificationCanceled" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PHSOSViewController" hasInstanceMethod:@"presentMedicalID" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PHSOSViewController" hasInstanceMethod:@"buttonPressed:" withFullSignature:{"v", "@", 0}];
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(PHSOSViewControllerAccessibility *)self safeIntegerForKey:@"sosMode"];
  if (v3 == 1)
  {
    v6 = [(PHSOSViewControllerAccessibility *)self safeValueForKey:@"cancelButton"];
    v4 = v6;
    AXPerformSafeBlock();
  }

  return v3 == 1;
}

- (void)showSOSNumbersList
{
  v2.receiver = self;
  v2.super_class = PHSOSViewControllerAccessibility;
  [(PHSOSViewControllerAccessibility *)&v2 showSOSNumbersList];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)showSOSDialCountdown
{
  v3.receiver = self;
  v3.super_class = PHSOSViewControllerAccessibility;
  [(PHSOSViewControllerAccessibility *)&v3 showSOSDialCountdown];
  [(PHSOSViewControllerAccessibility *)self _axMoveToCancelButton];
}

- (void)showSOSDialCanceled
{
  v3.receiver = self;
  v3.super_class = PHSOSViewControllerAccessibility;
  [(PHSOSViewControllerAccessibility *)&v3 showSOSDialCanceled];
  [(PHSOSViewControllerAccessibility *)self _axSpeakInfo];
  [(PHSOSViewControllerAccessibility *)self _axMoveToCancelButton];
}

- (void)showSOSNotified
{
  v3.receiver = self;
  v3.super_class = PHSOSViewControllerAccessibility;
  [(PHSOSViewControllerAccessibility *)&v3 showSOSNotified];
  [(PHSOSViewControllerAccessibility *)self _axSpeakInfo];
  [(PHSOSViewControllerAccessibility *)self _axMoveToCancelButton];
}

- (void)showSOSNotificationCountdown
{
  v3.receiver = self;
  v3.super_class = PHSOSViewControllerAccessibility;
  [(PHSOSViewControllerAccessibility *)&v3 showSOSNotificationCountdown];
  [(PHSOSViewControllerAccessibility *)self _axMoveToCancelButton];
}

- (void)showSOSNotificationCanceled
{
  v3.receiver = self;
  v3.super_class = PHSOSViewControllerAccessibility;
  [(PHSOSViewControllerAccessibility *)&v3 showSOSNotificationCanceled];
  [(PHSOSViewControllerAccessibility *)self _axSpeakInfo];
}

- (void)presentMedicalID
{
  v2.receiver = self;
  v2.super_class = PHSOSViewControllerAccessibility;
  [(PHSOSViewControllerAccessibility *)&v2 presentMedicalID];
  UIAccessibilityPostNotification(0xBD6u, 0);
}

- (void)_axSpeakInfo
{
  objc_opt_class();
  v3 = [(PHSOSViewControllerAccessibility *)self safeValueForKey:@"infoLabel"];
  v4 = __UIAccessibilityCastAsClass();

  text = [v4 text];

  if (([text isEqualToString:_axSpeakInfo_PreviousText] & 1) == 0)
  {
    UIAccessibilitySpeakAndDoNotBeInterrupted();
    objc_storeStrong(&_axSpeakInfo_PreviousText, text);
  }
}

- (void)_axMoveToCancelButton
{
  v2 = [(PHSOSViewControllerAccessibility *)self safeValueForKey:@"cancelButton"];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7488], v2);
}

@end