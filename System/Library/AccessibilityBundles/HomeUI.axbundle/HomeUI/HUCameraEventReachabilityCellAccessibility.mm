@interface HUCameraEventReachabilityCellAccessibility
- (id)_axReachabilityEvent;
- (id)accessibilityLabel;
@end

@implementation HUCameraEventReachabilityCellAccessibility

- (id)accessibilityLabel
{
  _axReachabilityEvent = [(HUCameraEventReachabilityCellAccessibility *)self _axReachabilityEvent];
  date = [MEMORY[0x29EDB8DB0] date];
  startEvent = [_axReachabilityEvent startEvent];
  v6 = MEMORY[0x29EDC5360];
  dateOfOccurrence = [startEvent dateOfOccurrence];
  v8 = [v6 attributedShortTimeStringFromDate:dateOfOccurrence];
  string = [v8 string];

  v10 = MEMORY[0x29EDC5360];
  dateOfOccurrence2 = [startEvent dateOfOccurrence];
  v12 = [v10 localizerKeyDayNameFromDate:dateOfOccurrence2];

  dateOfOccurrence3 = [startEvent dateOfOccurrence];
  [date timeIntervalSinceDate:dateOfOccurrence3];
  v15 = v14;

  if (v15 > 604800.0)
  {
    v16 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Last%@", v12];

    v12 = v16;
  }

  v17 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"HUCameraEventRecordingCellAccessibilityLabelSignificantEventTimeOn%@Format", v12];
  v18 = MEMORY[0x29EDBA0F8];
  v19 = accessibilityHomeUILocalizedString(v17);
  v20 = [v18 stringWithFormat:v19, string];

  _axReachabilityEvent2 = [(HUCameraEventReachabilityCellAccessibility *)self _axReachabilityEvent];
  [_axReachabilityEvent2 duration];
  v22 = AXDurationStringForDuration();

  v23 = accessibilityHomeUILocalizedString(@"camera.clip.offline.event");
  v24 = __AXStringForVariables();

  return v24;
}

- (id)_axReachabilityEvent
{
  objc_opt_class();
  v3 = [(HUCameraEventReachabilityCellAccessibility *)self safeValueForKey:@"reachabilityEvent"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

@end