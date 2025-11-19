@interface SleepScheduleClockHandAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsValidSleepDurationIncrement:(BOOL)a3 clock:(id)a4 isAdjustingBedtime:(BOOL)a5;
- (id)_axEditCell;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)decrementComponents:(id)a3;
- (id)incrementComponents:(id)a3;
- (void)_axSpeakClockAlertIfNeeded;
@end

@implementation SleepScheduleClockHandAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SleepHealthUI.SleepScheduleClockHand" hasInstanceMethod:@"accessibilityHandIsBedtime" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SleepHealthUI.ScheduleOccurrenceComponentsEditTableViewCell" hasInstanceMethod:@"accessibilityComponentsEditView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleComponentsEditView" hasInstanceMethod:@"accessibilityComponentsHeader" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleComponentsHeader" hasInstanceMethod:@"accessibilityBedtimeTimeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleComponentsHeader" hasInstanceMethod:@"accessibilityWakeUpTimeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleComponentsEditView" hasInstanceMethod:@"accessibilityClock" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleClock" hasInstanceMethod:@"accessibilityRoundedBedtimeComponents" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleClock" hasInstanceMethod:@"accessibilityRoundedWakeUpComponents" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleClock" hasInstanceMethod:@"accessibilitySetModel:wakeUpComponents:timeInBedGoal:alarmEnabled:isForSingleDayOverride:" withFullSignature:{"v", "@", "@", "d", "B", "B", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleClock" hasInstanceMethod:@"accessibilityAlarmEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleComponentsEditView" hasInstanceMethod:@"clockDidChange:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleComponentsEditView" hasInstanceMethod:@"accessibilityClockCaption" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleClockCaption" hasInstanceMethod:@"accessibilityClockCaptionMessage" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleClock" hasInstanceMethod:@"accessibilityTimeInBed" withFullSignature:{"d", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleClock" hasInstanceMethod:@"accessibilityTimeInBedGoal" withFullSignature:{"d", 0}];
  [v3 validateClass:@"UITableViewCellAccessibilityElement"];
  [v3 validateClass:@"UITableViewCellAccessibilityElement" hasInstanceMethod:@"realTableViewCell" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SleepScheduleClockHandAccessibility *)self safeBoolForKey:@"accessibilityHandIsBedtime"];
  v4 = [(SleepScheduleClockHandAccessibility *)self _axEditCell];
  v5 = [v4 safeValueForKey:@"accessibilityComponentsEditView"];
  v6 = [v5 safeValueForKey:@"accessibilityClock"];
  v7 = [v6 safeBoolForKey:@"accessibilityAlarmEnabled"];

  v8 = @"wakeup.alarm.off";
  if (v7)
  {
    v8 = @"wakeup.alarm.on";
  }

  if (v3)
  {
    v9 = @"bedtime";
  }

  else
  {
    v9 = v8;
  }

  return accessibilityLocalizedString(v9);
}

- (id)accessibilityValue
{
  v2 = self;
  v3 = [(SleepScheduleClockHandAccessibility *)self _axEditCell];
  v4 = [v3 safeValueForKey:@"accessibilityComponentsEditView"];
  v5 = [v4 safeValueForKey:@"accessibilityComponentsHeader"];

  LODWORD(v2) = [(SleepScheduleClockHandAccessibility *)v2 safeBoolForKey:@"accessibilityHandIsBedtime"];
  objc_opt_class();
  if (v2)
  {
    v6 = @"accessibilityBedtimeTimeLabel";
  }

  else
  {
    v6 = @"accessibilityWakeUpTimeLabel";
  }

  v7 = [v5 safeValueForKey:v6];
  v8 = __UIAccessibilityCastAsClass();

  v9 = [v8 text];

  return v9;
}

void __64__SleepScheduleClockHandAccessibility_adjustClockHandIncrement___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 65);
  v4 = *(a1 + 32);
  if (v2 == 1)
  {
    v6 = a1 + 48;
    v5 = *(a1 + 48);
  }

  else
  {
    v6 = a1 + 56;
    v5 = *(a1 + 56);
  }

  v7 = *(*(v5 + 8) + 40);
  if (v3)
  {
    [v4 incrementComponents:v7];
  }

  else
  {
    [v4 decrementComponents:v7];
  }
  v8 = ;
  objc_storeStrong((*(*v6 + 8) + 40), v8);

  v9 = *(a1 + 40);
  v10 = *(*(*(a1 + 48) + 8) + 40);
  v11 = *(*(*(a1 + 56) + 8) + 40);
  [v9 safeDoubleForKey:@"accessibilityTimeInBedGoal"];
  [v9 accessibilitySetModel:v10 wakeUpComponents:v11 timeInBedGoal:objc_msgSend(*(a1 + 40) alarmEnabled:"safeBoolForKey:" isForSingleDayOverride:{@"accessibilityAlarmEnabled", 0, v12}];
  v14 = [*(a1 + 32) _axEditCell];
  v13 = [v14 safeValueForKey:@"accessibilityComponentsEditView"];
  [v13 clockDidChange:*(a1 + 40)];
}

- (BOOL)_axIsValidSleepDurationIncrement:(BOOL)a3 clock:(id)a4 isAdjustingBedtime:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v5 || v6)
  {
    [v7 safeDoubleForKey:@"accessibilityTimeInBed"];
    if (v5 || !v6)
    {
      if (v9 > 3600.0)
      {
        goto LABEL_6;
      }

LABEL_8:
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    [v7 safeDoubleForKey:@"accessibilityTimeInBed"];
  }

  if (v9 >= 72000.0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v10 = 1;
LABEL_9:

  return v10;
}

- (id)incrementComponents:(id)a3
{
  v3 = a3;
  v4 = [v3 minute];
  v5 = [v3 hour];
  if (v4 < 55)
  {
    [v3 setMinute:v4 + 5];
  }

  else
  {
    v6 = v5;
    [v3 setMinute:0];
    if (v6 < 23)
    {
      v8 = v6 + 1;
      v7 = v3;
    }

    else
    {
      v7 = v3;
      v8 = 0;
    }

    [v7 setHour:v8];
  }

  return v3;
}

- (id)decrementComponents:(id)a3
{
  v3 = a3;
  v4 = [v3 minute];
  v5 = [v3 hour];
  if (v4 <= 0)
  {
    v6 = v5;
    [v3 setMinute:55];
    if (v6 <= 0)
    {
      v8 = v3;
      v7 = 23;
    }

    else
    {
      v7 = v6 - 1;
      v8 = v3;
    }

    [v8 setHour:v7];
  }

  else
  {
    [v3 setMinute:v4 - 5];
  }

  return v3;
}

- (void)_axSpeakClockAlertIfNeeded
{
  v3 = [(SleepScheduleClockHandAccessibility *)self _axEditCell];
  v4 = [v3 safeValueForKey:@"accessibilityComponentsEditView"];
  v5 = [v4 safeValueForKey:@"accessibilityClockCaption"];
  v7 = [v5 safeStringForKey:@"accessibilityClockCaptionMessage"];

  v6 = [(SleepScheduleClockHandAccessibility *)self _axLastSpokenMessage];
  LOBYTE(v4) = [v7 isEqualToString:v6];

  if ((v4 & 1) == 0)
  {
    UIAccessibilitySpeakOrQueueIfNeeded();
    [(SleepScheduleClockHandAccessibility *)self _axSetLastSpokenMessage:v7];
  }
}

- (id)_axEditCell
{
  v2 = [(SleepScheduleClockHandAccessibility *)self accessibilityContainer];
  MEMORY[0x29ED364A0](@"SleepHealthUI.ScheduleOccurrenceComponentsEditTableViewCell");
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  MEMORY[0x29ED364A0](@"UITableViewCellAccessibilityElement");
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 safeValueForKey:@"realTableViewCell"];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

@end