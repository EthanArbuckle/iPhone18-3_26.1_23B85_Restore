@interface AudioMessageRecordingAppendButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation AudioMessageRecordingAppendButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(AudioMessageRecordingAppendButtonAccessibility *)self safeSwiftValueForKey:@"duration"];
  [v2 doubleValue];
  v3 = AXDurationStringForDuration();

  v4 = accessibilityLocalizedString(@"continue.recording");
  v5 = __AXStringForVariables();

  return v5;
}

@end