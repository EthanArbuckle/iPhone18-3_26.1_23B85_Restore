@interface AXMobileTimerGlue
+ (void)accessibilityInitializeBundle;
+ (void)playStartSound;
+ (void)playStopSound;
@end

@implementation AXMobileTimerGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_453 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_462];

    v3 = [objc_allocWithZone(AXMobileTimerGlue) init];
    v4 = _Failover;
    _Failover = v3;

    mEMORY[0x29EDBD690] = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690] addHandler:&__block_literal_global_572 forFramework:@"Weather"];
  }
}

uint64_t __50__AXMobileTimerGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"MTUIDigitalClockLabel"];
  [v2 validateClass:@"MTATimeView"];
  [v2 validateClass:@"MTATableViewController"];
  [v2 validateClass:@"MTATimerViewController"];
  [v2 validateClass:@"MTUIAnalogClockView"];
  [v2 validateClass:@"MTTimerManager"];
  [v2 validateClass:@"MTAStopwatchViewController"];
  [v2 validateClass:@"MTUIDigitalClockLabel" isKindOfClass:@"MTUIDateLabel"];
  [v2 validateClass:@"MTAAlarmTableViewCell" isKindOfClass:@"UITableViewCell"];
  [v2 validateClass:@"MTATimeView" hasInstanceVariable:@"_timeLabel" withType:"UILabel"];
  [v2 validateClass:@"UISegmentedControl" hasInstanceVariable:@"_segments" withType:"NSMutableArray"];
  [v2 validateClass:@"MTATimerViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [v2 validateClass:@"MTAStopwatchViewController" hasInstanceMethod:@"pauseLapTimer" withFullSignature:{"v", 0}];
  [v2 validateClass:@"MTAStopwatchViewController" hasInstanceMethod:@"startLapTimer" withFullSignature:{"v", 0}];
  [v2 validateClass:@"MTAStopwatchViewController" hasInstanceMethod:@"resumeLapTimer" withFullSignature:{"v", 0}];
  [v2 validateClass:@"MTATimerViewController" hasInstanceMethod:@"startUpdatingTimerUI" withFullSignature:{"v", 0}];
  [v2 validateClass:@"MTATimerViewController" hasInstanceMethod:@"stopUpdatingTimerUI" withFullSignature:{"v", 0}];
  [v2 validateClass:@"MTATableViewController" hasInstanceMethod:@"_numberOfItemsDidChangeAnimated:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"MTUIAlarmView" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MTUIAlarmView" hasInstanceMethod:@"repeatText" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MTUIAlarmView" hasInstanceMethod:@"enabledSwitch" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MTUIAlarmView" hasInstanceMethod:@"timeLabel" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MTATimerViewController" hasInstanceMethod:@"pauseResumeTimer:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"MTATimerViewController" hasInstanceMethod:@"startTimer:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"MTUIAnalogClockView" hasInstanceMethod:@"isNighttime" withFullSignature:{"B", 0}];
  [v2 validateClass:@"MTUIAnalogClockView" hasInstanceMethod:@"hour" withFullSignature:{"q", 0}];
  [v2 validateClass:@"MTUIAnalogClockView" hasInstanceMethod:@"minute" withFullSignature:{"q", 0}];
  [v2 validateClass:@"UIViewController" hasInstanceMethod:@"toolbarItems" withFullSignature:{"@", 0}];
  [v2 validateClass:@"Alarm"];
  [v2 validateClass:@"MTAWorldClockMapView"];
  [v2 validateClass:@"MTAWorldClockMapCityView"];
  [v2 validateClass:@"MTAWorldClockPadViewController"];
  [v2 validateClass:@"MTAWorldClockView"];
  [v2 validateClass:@"MTATimerPickerCell" hasInstanceMethod:@"picker" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MTATimerPickerCell" hasInstanceMethod:@"timeView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MTAWorldClockMapCityView" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
  [v2 validateClass:@"MTAWorldClockMapCityView" hasInstanceVariable:@"_timeLabel" withType:"UILabel"];
  [v2 validateClass:@"MTAWorldClockTableViewCell" hasInstanceVariable:@"_clockCellView" withType:"MTUIWorldClockCellView"];
  [v2 validateClass:@"MTUIAnalogClockView" hasInstanceVariable:@"_nighttime" withType:"B"];
  [v2 validateClass:@"MTUIWorldClockCellView" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MTUIWorldClockCellView" hasInstanceMethod:@"combinedLabel" withFullSignature:{"@", 0}];
  [v2 validateClass:@"Alarm" hasInstanceMethod:@"isActive" withFullSignature:{"B", 0}];
  [v2 validateClass:@"Alarm" hasInstanceMethod:@"hour" withFullSignature:{"I", 0}];
  [v2 validateClass:@"Alarm" hasInstanceMethod:@"minute" withFullSignature:{"I", 0}];
  [v2 validateClass:@"MTAWorldClockMapCityView" hasInstanceMethod:@"city" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MTAWorldClockMapView" hasInstanceMethod:@"addCity:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"MTAWorldClockMapView" hasInstanceMethod:@"removeCity:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"MTAWorldClockView" hasInstanceMethod:@"analogClock" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MTAStopwatchViewController" hasInstanceMethod:@"didAddLap:" withFullSignature:{"v", "d", 0}];
  [v2 validateClass:@"MTAStopwatchViewController" hasInstanceMethod:@"lapLapTimer" withFullSignature:{"v", 0}];

  return 1;
}

uint64_t __50__AXMobileTimerGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setOverrideProcessName:@"Clock"];
  [v2 setValidationTargetName:@"MobileTimer AX Bundle"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __50__AXMobileTimerGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"MTATimeViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MobileTimerUIButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MobileTimerUILabelAccessiblity" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTATableViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTATimerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAWorldClockTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAStopwatchViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTACircleButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTATimerPickerCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTATimerControlsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTATimerButtonsControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAWorldClockMapViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAWorldClockMapCityViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAWorldClockPadViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAWorldClockViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAWorldClockCollectionCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MT_UICollectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAStopwatchTableViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAStopwatchLapCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAWorldClockCollectionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAAlarmCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAEditAlarmVolumeCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MT_UIPageControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTATimerIntervalPickerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAAlarmEditViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAAlarmTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAAlarmTableViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAAppControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTAAlarmCollectionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTACountDownPickerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTATimerPresetViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTATimerCellViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTATimerRecentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTATimerTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MTATimerRecentCellAccessibility" canInteractWithTargetClass:1];
}

void __50__AXMobileTimerGlue_accessibilityInitializeBundle__block_invoke_5()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_576 withPreValidationHandler:&__block_literal_global_587 postValidationHandler:&__block_literal_global_593];
}

uint64_t __50__AXMobileTimerGlue_accessibilityInitializeBundle__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"City" hasInstanceMethod:@"temperature" withFullSignature:{"@", 0}];
  [v2 validateClass:@"City" hasInstanceMethod:@"conditionCode" withFullSignature:{"q", 0}];

  return 1;
}

uint64_t __50__AXMobileTimerGlue_accessibilityInitializeBundle__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 setValidationTargetName:@"MobileTimer - Weather Combo Framework AX Bundle"];

  return MEMORY[0x2A1C5E698](v2);
}

+ (void)playStopSound
{
  v3 = playStopSound_StopSound;
  if (playStopSound_StopSound)
  {
  }

  else
  {
    v4 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.MobileTimer.axbundle"];
    v5 = MEMORY[0x29EDB8E70];
    v6 = [v4 pathForResource:@"timer-stop" ofType:@"aiff"];
    v7 = [v5 fileURLWithPath:v6];

    AudioServicesCreateSystemSoundID(v7, &playStopSound_StopSound);
    v3 = playStopSound_StopSound;
  }

  AudioServicesPlaySystemSound(v3);
}

+ (void)playStartSound
{
  v3 = playStartSound_StartSound;
  if (playStartSound_StartSound)
  {
  }

  else
  {
    v4 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.MobileTimer.axbundle"];
    v5 = MEMORY[0x29EDB8E70];
    v6 = [v4 pathForResource:@"timer-start" ofType:@"aiff"];
    v7 = [v5 fileURLWithPath:v6];

    AudioServicesCreateSystemSoundID(v7, &playStartSound_StartSound);
    v3 = playStartSound_StartSound;
  }

  AudioServicesPlaySystemSound(v3);
}

@end