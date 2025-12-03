@interface MobileTimerAssistantAlarmSnippetCellAccessibility
- (CGPoint)accessibilityActivationPoint;
- (MobileTimerAssistantAlarmSnippetCellAccessibility)init;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MobileTimerAssistantAlarmSnippetCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(MobileTimerAssistantAlarmSnippetCellAccessibility *)self safeValueForKey:@"_alarmView"];
  v4 = [v3 safeValueForKey:@"repeatText"];

  v5 = [(MobileTimerAssistantAlarmSnippetCellAccessibility *)self safeValueForKey:@"alarm"];
  v6 = [v5 safeValueForKey:@"hour"];
  integerValue = [v6 integerValue];

  v8 = [v5 safeValueForKey:@"minute"];
  integerValue2 = [v8 integerValue];

  currentCalendar = [MEMORY[0x29EDB8D98] currentCalendar];
  date = [MEMORY[0x29EDB8DB0] date];
  v12 = [currentCalendar components:28 fromDate:date];

  [v12 setHour:integerValue];
  [v12 setMinute:integerValue2];
  v13 = [currentCalendar dateFromComponents:v12];
  v14 = [MEMORY[0x29EDB9F78] localizedStringFromDate:v13 dateStyle:0 timeStyle:1];
  v15 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v14];
  [v15 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD888]];
  if ([v4 length])
  {
    v16 = MEMORY[0x29EDBA0F8];
    v17 = accessibilityLocalizedString(@"alarm.cell.repeat.text");
    v20 = [v16 stringWithFormat:v17, v4];
    v18 = __UIAXStringForVariables();
  }

  else
  {
    v18 = v15;
  }

  return v18;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = MobileTimerAssistantAlarmSnippetCellAccessibility;
  accessibilityTraits = [(MobileTimerAssistantAlarmSnippetCellAccessibility *)&v8 accessibilityTraits];
  v4 = [(MobileTimerAssistantAlarmSnippetCellAccessibility *)self safeValueForKey:@"_alarmView"];
  v5 = [v4 safeValueForKey:@"enabledSwitch"];
  v6 = [v5 accessibilityTraits] | accessibilityTraits;

  return *MEMORY[0x29EDC7F70] ^ v6;
}

- (id)accessibilityValue
{
  v2 = [(MobileTimerAssistantAlarmSnippetCellAccessibility *)self safeValueForKey:@"_alarmView"];
  v3 = [v2 safeValueForKey:@"enabledSwitch"];
  accessibilityValue = [v3 accessibilityValue];

  return accessibilityValue;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(MobileTimerAssistantAlarmSnippetCellAccessibility *)self safeValueForKey:@"_alarmView"];
  v3 = [v2 safeValueForKey:@"enabledSwitch"];
  [v3 accessibilityActivationPoint];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (MobileTimerAssistantAlarmSnippetCellAccessibility)init
{
  v7.receiver = self;
  v7.super_class = MobileTimerAssistantAlarmSnippetCellAccessibility;
  v2 = [(MobileTimerAssistantAlarmSnippetCellAccessibility *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(MobileTimerAssistantAlarmSnippetCellAccessibility *)v2 safeValueForKey:@"_alarmView"];
    v5 = [v4 safeValueForKey:@"enabledSwitch"];
    [v5 setIsAccessibilityElement:0];
  }

  return v3;
}

@end