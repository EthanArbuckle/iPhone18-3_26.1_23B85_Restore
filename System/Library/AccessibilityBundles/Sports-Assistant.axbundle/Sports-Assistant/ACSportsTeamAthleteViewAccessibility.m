@interface ACSportsTeamAthleteViewAccessibility
- (id)accessibilityLabel;
@end

@implementation ACSportsTeamAthleteViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(ACSportsTeamAthleteViewAccessibility *)self safeValueForKey:@"entity"];
  v4 = [(ACSportsTeamAthleteViewAccessibility *)self safeValueForKey:@"_numberLabel"];
  v5 = [v4 accessibilityLabel];

  if (v5)
  {
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"athlete.number");
    v31 = [v6 stringWithFormat:v7, v5];
  }

  else
  {
    v31 = 0;
  }

  v8 = [(ACSportsTeamAthleteViewAccessibility *)self safeValueForKey:@"_nameLabel"];
  v30 = [v8 accessibilityLabel];

  v9 = [v3 safeValueForKey:@"position"];
  v10 = [v3 safeValueForKey:@"injured"];
  v11 = [v10 BOOLValue];

  v12 = [(ACSportsTeamAthleteViewAccessibility *)self safeValueForKey:@"_heightLabel"];
  v13 = [v12 accessibilityLabel];
  v14 = [v13 componentsSeparatedByString:@"-"];

  if ([v14 count] == 2)
  {
    v15 = MEMORY[0x29EDBA0F8];
    v16 = accessibilityLocalizedString(@"athlete.height.imperial");
    v17 = [v14 objectAtIndex:0];
    v18 = [v14 objectAtIndex:1];
    v19 = [v15 stringWithFormat:v16, v17, v18];
  }

  else
  {
    v19 = 0;
  }

  v20 = MEMORY[0x29EDBA0F8];
  v21 = accessibilityLocalizedString(@"athlete.weight.imperial");
  v22 = [(ACSportsTeamAthleteViewAccessibility *)self safeValueForKey:@"_weightLabel"];
  v23 = [v22 accessibilityLabel];
  v24 = [v20 stringWithFormat:v21, v23];

  if (v11)
  {
    v29 = accessibilityLocalizedString(@"athlete.injured");
    v26 = v30;
    v25 = v31;
    v27 = __UIAXStringForVariables();
  }

  else
  {
    v26 = v30;
    v25 = v31;
    v27 = __UIAXStringForVariables();
  }

  return v27;
}

@end