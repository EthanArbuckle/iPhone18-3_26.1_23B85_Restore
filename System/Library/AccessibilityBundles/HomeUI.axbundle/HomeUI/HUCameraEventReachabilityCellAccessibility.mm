@interface HUCameraEventReachabilityCellAccessibility
- (id)_axReachabilityEvent;
- (id)accessibilityLabel;
@end

@implementation HUCameraEventReachabilityCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(HUCameraEventReachabilityCellAccessibility *)self _axReachabilityEvent];
  v4 = [MEMORY[0x29EDB8DB0] date];
  v5 = [v3 startEvent];
  v6 = MEMORY[0x29EDC5360];
  v7 = [v5 dateOfOccurrence];
  v8 = [v6 attributedShortTimeStringFromDate:v7];
  v9 = [v8 string];

  v10 = MEMORY[0x29EDC5360];
  v11 = [v5 dateOfOccurrence];
  v12 = [v10 localizerKeyDayNameFromDate:v11];

  v13 = [v5 dateOfOccurrence];
  [v4 timeIntervalSinceDate:v13];
  v15 = v14;

  if (v15 > 604800.0)
  {
    v16 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Last%@", v12];

    v12 = v16;
  }

  v17 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"HUCameraEventRecordingCellAccessibilityLabelSignificantEventTimeOn%@Format", v12];
  v18 = MEMORY[0x29EDBA0F8];
  v19 = accessibilityHomeUILocalizedString(v17);
  v20 = [v18 stringWithFormat:v19, v9];

  v21 = [(HUCameraEventReachabilityCellAccessibility *)self _axReachabilityEvent];
  [v21 duration];
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