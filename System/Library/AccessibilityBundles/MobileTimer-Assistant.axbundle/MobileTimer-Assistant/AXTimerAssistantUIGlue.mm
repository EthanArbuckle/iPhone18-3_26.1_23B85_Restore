@interface AXTimerAssistantUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXTimerAssistantUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_336 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_345];

    _Failover = [objc_allocWithZone(AXTimerAssistantUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __55__AXTimerAssistantUIGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"MobileTimerAssistantAlarmSnippetCell"];
  [v2 validateClass:@"MobileTimerAssistantTimerSnippetCell"];
  [v2 validateClass:@"TimerSnippetTimeView"];
  [v2 validateClass:@"SAAlarmObject"];
  [v2 validateClass:@"TimerSnippetTimeView" hasInstanceMethod:@"updateDisplayWithTime:" withFullSignature:{"B", "d", 0}];
  [v2 validateClass:@"MTUIAlarmView" hasInstanceMethod:@"repeatText" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MTUIAlarmView" hasInstanceMethod:@"enabledSwitch" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MTUIWorldClockCellView" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MTUIWorldClockCellView" hasInstanceMethod:@"combinedLabel" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MobileTimerAssistantAlarmSnippetCell" hasInstanceVariable:@"_alarmView" withType:"MTUIAlarmView"];
  [v2 validateClass:@"MobileTimerAssistantWorldClockSnippetCell" hasInstanceVariable:@"_clockCellView" withType:"MTUIWorldClockCellView"];
  [v2 validateClass:@"TimerSnippetTimeView" hasInstanceVariable:@"_running" withType:"c"];
  [v2 validateClass:@"TimerSnippetTimeView" hasInstanceVariable:@"_fireTime" withType:"d"];

  return 1;
}

uint64_t __55__AXTimerAssistantUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Timer Assistant UI AX Bundle"];
  [v2 setOverrideProcessName:@"Timer Assistant UI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __55__AXTimerAssistantUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"MobileTimerAssistantAlarmSnippetCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MobileTimerAssistantTimerSnippetCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MobileTimerAssistantWorldClockSnippetCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TimerSnippetTimeViewAccessibility" canInteractWithTargetClass:1];
}

@end