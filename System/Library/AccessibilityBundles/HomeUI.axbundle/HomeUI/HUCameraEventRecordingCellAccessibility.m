@interface HUCameraEventRecordingCellAccessibility
- (id)_axStringForSignificantEvents;
- (id)accessibilityCustomActions;
- (id)accessibilityValue;
@end

@implementation HUCameraEventRecordingCellAccessibility

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(HUCameraEventRecordingCellAccessibility *)self safeValueForKey:@"recordingEvent"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 duration];
  v5 = AXDurationStringForDuration();

  return v5;
}

- (id)accessibilityCustomActions
{
  v8[1] = *MEMORY[0x29EDCA608];
  v2 = objc_alloc(MEMORY[0x29EDC78E0]);
  v3 = accessibilityHomeUILocalizedString(@"scrubber.timescale.toggle");
  v4 = [v2 initWithName:v3 actionHandler:&__block_literal_global_3];
  v8[0] = v4;
  v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x29EDCA608];

  return v5;
}

uint64_t __69__HUCameraEventRecordingCellAccessibility_accessibilityCustomActions__block_invoke()
{
  v0 = [MEMORY[0x29EDBA068] defaultCenter];
  [v0 postNotificationName:AXToggleClipTimescaleNotification object:0];

  return 1;
}

- (id)_axStringForSignificantEvents
{
  objc_opt_class();
  v3 = [(HUCameraEventRecordingCellAccessibility *)self safeValueForKey:@"recordingEvent"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 hf_sortedSignificantEvents];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = [&stru_2A21C2B40 mutableCopy];
  v6 = [MEMORY[0x29EDB8DB0] date];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __72__HUCameraEventRecordingCellAccessibility__axStringForSignificantEvents__block_invoke;
  v10[3] = &unk_29F2C6C98;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  [v5 enumerateObjectsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __72__HUCameraEventRecordingCellAccessibility__axStringForSignificantEvents__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v29 = v5;
  if (a3)
  {
    [*(*(*(a1 + 40) + 8) + 40) appendString:{@", "}];
    v5 = v29;
  }

  v6 = MEMORY[0x29EDC5360];
  v7 = [v5 dateOfOccurrence];
  v8 = [v6 attributedShortTimeStringFromDate:v7];
  v9 = [v8 string];

  v10 = MEMORY[0x29EDC5360];
  v11 = [v29 dateOfOccurrence];
  v12 = [v10 localizerKeyDayNameFromDate:v11];

  v13 = *(a1 + 32);
  v14 = [v29 dateOfOccurrence];
  [v13 timeIntervalSinceDate:v14];
  v16 = v15;

  if (v16 > 604800.0)
  {
    v17 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Last%@", v12];

    v12 = v17;
  }

  v18 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"HUCameraEventRecordingCellAccessibilityLabelSignificantEventTimeOn%@Format", v12];
  v19 = MEMORY[0x29EDBA0F8];
  v20 = accessibilityHomeUILocalizedString(v18);
  v21 = [v19 stringWithFormat:v20, v9];

  v22 = [v29 hf_faceClassificationName];
  if (v22)
  {
    v23 = *(*(*(a1 + 40) + 8) + 40);
    v24 = accessibilityHomeUILocalizedString(@"HFCameraSignificantEventReasonFamiliarFace");
    [v23 appendFormat:v24, v22, v21];
  }

  else
  {
    v25 = MEMORY[0x29EDBA0F8];
    v26 = [v29 hf_reasonKey];
    v24 = [v25 stringWithFormat:@"HFCameraSignificantEventReason%@", v26];

    v27 = *(*(*(a1 + 40) + 8) + 40);
    v28 = accessibilityHomeUILocalizedString(v24);
    [v27 appendFormat:v28, v21];
  }
}

@end