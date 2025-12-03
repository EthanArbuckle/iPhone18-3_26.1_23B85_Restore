@interface SADistance(AssistantUIAdditions)
- (id)afui_abbreviatedUnit;
- (id)afui_metersValue;
- (uint64_t)afui_compare:()AssistantUIAdditions;
@end

@implementation SADistance(AssistantUIAdditions)

- (id)afui_abbreviatedUnit
{
  unit = [self unit];
  if ([unit isEqualToString:*MEMORY[0x277D47D40]])
  {
    afui_assistantUIFrameworkBundle = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v3 = afui_assistantUIFrameworkBundle;
    v4 = @"FEET_ABBREVIATION";
LABEL_9:
    v5 = [afui_assistantUIFrameworkBundle assistantUILocalizedStringForKey:v4 table:@"Localizable"];

    goto LABEL_10;
  }

  if ([unit isEqualToString:*MEMORY[0x277D47D58]])
  {
    afui_assistantUIFrameworkBundle = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v3 = afui_assistantUIFrameworkBundle;
    v4 = @"MILES_ABBREVIATION";
    goto LABEL_9;
  }

  if ([unit isEqualToString:*MEMORY[0x277D47D50]])
  {
    afui_assistantUIFrameworkBundle = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v3 = afui_assistantUIFrameworkBundle;
    v4 = @"METERS_ABBREVIATION";
    goto LABEL_9;
  }

  if ([unit isEqualToString:*MEMORY[0x277D47D48]])
  {
    afui_assistantUIFrameworkBundle = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v3 = afui_assistantUIFrameworkBundle;
    v4 = @"KILOMETERS_ABBREVIATION";
    goto LABEL_9;
  }

  v5 = unit;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [SADistance(AssistantUIAdditions) afui_abbreviatedUnit];
    v5 = unit;
  }

LABEL_10:

  return v5;
}

- (id)afui_metersValue
{
  v15[4] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D47D48];
  v14[0] = *MEMORY[0x277D47D40];
  v14[1] = v2;
  v15[0] = &unk_28532BD20;
  v15[1] = &unk_28532BD30;
  v3 = *MEMORY[0x277D47D58];
  v14[2] = *MEMORY[0x277D47D50];
  v14[3] = v3;
  v15[2] = &unk_28532BD40;
  v15[3] = &unk_28532BD50;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  unit = [self unit];
  v6 = [v4 objectForKey:unit];
  [v6 doubleValue];
  v8 = v7;

  value = [self value];
  [value doubleValue];
  v11 = v10;

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v8 * v11];

  return v12;
}

- (uint64_t)afui_compare:()AssistantUIAdditions
{
  v4 = a3;
  afui_metersValue = [self afui_metersValue];
  afui_metersValue2 = [v4 afui_metersValue];

  v7 = [afui_metersValue compare:afui_metersValue2];
  return v7;
}

@end