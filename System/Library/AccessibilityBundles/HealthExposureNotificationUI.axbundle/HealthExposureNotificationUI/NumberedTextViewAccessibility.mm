@interface NumberedTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation NumberedTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HealthExposureNotificationUI.NumberedTextView" hasInstanceMethod:@"number" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"HealthExposureNotificationUI.NumberedTextView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HealthExposureNotificationUI.NumberedTextView" hasInstanceMethod:@"details" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(NumberedTextViewAccessibility *)self safeIntegerForKey:@"number"];
  v4 = [(NumberedTextViewAccessibility *)self safeStringForKey:@"title"];
  v5 = [(NumberedTextViewAccessibility *)self safeStringForKey:@"details"];
  v6 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:@"%ld", v3];
  v7 = __UIAXStringForVariables();

  return v7;
}

@end