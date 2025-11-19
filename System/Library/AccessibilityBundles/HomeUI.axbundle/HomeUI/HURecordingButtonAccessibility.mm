@interface HURecordingButtonAccessibility
- (id)accessibilityAttributedLabel;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation HURecordingButtonAccessibility

- (id)accessibilityAttributedLabel
{
  v14[1] = *MEMORY[0x29EDCA608];
  v2 = [(HURecordingButtonAccessibility *)self safeSwiftValueForKey:@"currentRecordingState"];
  v3 = [v2 safeSwiftEnumCase];

  if ([v3 isEqualToString:@"recording"])
  {
    v4 = objc_alloc(MEMORY[0x29EDBA038]);
    v5 = accessibilityHomeUILocalizedString(@"record.button");
    v6 = [v4 initWithString:v5];

    v7 = [MEMORY[0x29EDB8DE0] preferredLanguages];
    v8 = [v7 firstObject];
    v9 = [v8 hasPrefix:@"en"];

    if (v9)
    {
      v13 = *MEMORY[0x29EDC7F28];
      v14[0] = @"ɻɪ.ˈkwɔɻd";
      v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      [v6 setAttributes:v10 range:{0, objc_msgSend(v6, "length")}];
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)accessibilityUserInputLabels
{
  v11[3] = *MEMORY[0x29EDCA608];
  v2 = [(HURecordingButtonAccessibility *)self safeSwiftValueForKey:@"currentRecordingState"];
  v3 = [v2 safeSwiftEnumCase];

  if ([v3 isEqualToString:@"recording"])
  {
    v4 = accessibilityHomeUILocalizedString(@"record.button");
    v11[0] = v4;
    v5 = accessibilityHomeUILocalizedString(@"record.alternative.start");
    v11[1] = v5;
    v6 = accessibilityHomeUILocalizedString(@"record.alternative.announce");
    v11[2] = v6;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v11 count:3];

LABEL_5:
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"stopped"])
  {
    v4 = accessibilityHomeUILocalizedString(@"stop.button");
    v10[0] = v4;
    v5 = accessibilityHomeUILocalizedString(@"stop.alternative.done");
    v10[1] = v5;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:2];
    goto LABEL_5;
  }

  v7 = MEMORY[0x29EDB8E90];
LABEL_7:

  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)accessibilityLabel
{
  v2 = [(HURecordingButtonAccessibility *)self safeSwiftValueForKey:@"currentRecordingState"];
  v3 = [v2 safeSwiftEnumCase];

  if ([v3 isEqualToString:@"recording"])
  {
    v4 = @"record.button";
LABEL_5:
    v5 = accessibilityHomeUILocalizedString(v4);
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"stopped"])
  {
    v4 = @"stop.button";
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end