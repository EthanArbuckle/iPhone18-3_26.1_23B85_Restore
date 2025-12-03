@interface PreferencesPSTableCellAccessibility
- (id)accessibilityLabel;
@end

@implementation PreferencesPSTableCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(PreferencesPSTableCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  dataSource = [v3 dataSource];
  NSClassFromString(&cfstr_Listrestrictio.isa);
  if (objc_opt_isKindOfClass())
  {
    accessibilityLabel2 = [dataSource safeValueForKey:@"specifiers"];
    v6 = [(PreferencesPSTableCellAccessibility *)self safeValueForKey:@"specifier"];
    if ([accessibilityLabel2 containsObject:v6])
    {
      v7 = [v6 safeValueForKey:@"values"];
      v8 = [v7 count];

      if (v8)
      {
        v17.receiver = self;
        v17.super_class = PreferencesPSTableCellAccessibility;
        accessibilityLabel = [(PreferencesPSTableCellAccessibility *)&v17 accessibilityLabel];
        if ([accessibilityLabel length] && objc_msgSend(accessibilityLabel, "length") < 8)
        {
          v10 = accessibilityLocalizedString(@"rating.format");
          accessibilityLabel3 = [MEMORY[0x29EDBA0F8] stringWithFormat:v10, accessibilityLabel];

LABEL_12:
          goto LABEL_15;
        }
      }
    }
  }

  NSClassFromString(&cfstr_Axlanguagecell.isa);
  if (objc_opt_isKindOfClass())
  {
    textLabel = [(PreferencesPSTableCellAccessibility *)self textLabel];
    accessibilityLabel2 = [textLabel accessibilityLabel];

    accessibilityLanguage = [(PreferencesPSTableCellAccessibility *)self accessibilityLanguage];

    if (accessibilityLanguage)
    {
      accessibilityLabel3 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:accessibilityLabel2];
      accessibilityLanguage2 = [(PreferencesPSTableCellAccessibility *)self accessibilityLanguage];
      [accessibilityLabel3 setAttribute:accessibilityLanguage2 forKey:*MEMORY[0x29EDBD950]];

      goto LABEL_12;
    }
  }

  v16.receiver = self;
  v16.super_class = PreferencesPSTableCellAccessibility;
  accessibilityLabel3 = [(PreferencesPSTableCellAccessibility *)&v16 accessibilityLabel];
LABEL_15:

  return accessibilityLabel3;
}

@end