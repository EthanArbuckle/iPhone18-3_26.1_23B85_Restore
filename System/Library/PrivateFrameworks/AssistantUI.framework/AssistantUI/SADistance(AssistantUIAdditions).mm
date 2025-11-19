@interface SADistance(AssistantUIAdditions)
- (id)afui_abbreviatedUnit;
- (id)afui_metersValue;
- (uint64_t)afui_compare:()AssistantUIAdditions;
@end

@implementation SADistance(AssistantUIAdditions)

- (id)afui_abbreviatedUnit
{
  v1 = [a1 unit];
  if ([v1 isEqualToString:*MEMORY[0x277D47D40]])
  {
    v2 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v3 = v2;
    v4 = @"FEET_ABBREVIATION";
LABEL_9:
    v5 = [v2 assistantUILocalizedStringForKey:v4 table:@"Localizable"];

    goto LABEL_10;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D47D58]])
  {
    v2 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v3 = v2;
    v4 = @"MILES_ABBREVIATION";
    goto LABEL_9;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D47D50]])
  {
    v2 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v3 = v2;
    v4 = @"METERS_ABBREVIATION";
    goto LABEL_9;
  }

  if ([v1 isEqualToString:*MEMORY[0x277D47D48]])
  {
    v2 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v3 = v2;
    v4 = @"KILOMETERS_ABBREVIATION";
    goto LABEL_9;
  }

  v5 = v1;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [SADistance(AssistantUIAdditions) afui_abbreviatedUnit];
    v5 = v1;
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
  v5 = [a1 unit];
  v6 = [v4 objectForKey:v5];
  [v6 doubleValue];
  v8 = v7;

  v9 = [a1 value];
  [v9 doubleValue];
  v11 = v10;

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v8 * v11];

  return v12;
}

- (uint64_t)afui_compare:()AssistantUIAdditions
{
  v4 = a3;
  v5 = [a1 afui_metersValue];
  v6 = [v4 afui_metersValue];

  v7 = [v5 compare:v6];
  return v7;
}

@end