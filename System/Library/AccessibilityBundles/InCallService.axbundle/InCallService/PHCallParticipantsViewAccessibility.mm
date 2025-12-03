@interface PHCallParticipantsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsDisplayedInBanner;
- (BOOL)isAccessibilityElement;
@end

@implementation PHCallParticipantsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHCallParticipantsView" hasInstanceMethod:@"callDisplayStyleManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ICSCallDisplayStyleManager" hasInstanceMethod:@"callDisplayStyle" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PHCallParticipantsView" hasInstanceMethod:@"singleCallLabelView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHCallParticipantsView" hasInstanceMethod:@"shouldIgnoreUpdates" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PHCallParticipantsView" hasInstanceMethod:@"updateParticipantsAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"PHSingleCallParticipantLabelView" hasInstanceMethod:@"bannerButtonsView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHBannerButtonsView" hasInstanceMethod:@"rightButton" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  if (UIAccessibilityIsSwitchControlRunning())
  {
    mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
    if ([mEMORY[0x29EDBDFA0] assistiveTouchScannerSpeechEnabled])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = ![(PHCallParticipantsViewAccessibility *)self _accessibilityIsDisplayedInBanner];
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_accessibilityIsDisplayedInBanner
{
  v2 = [(PHCallParticipantsViewAccessibility *)self safeValueForKey:@"callDisplayStyleManager"];
  v3 = [v2 safeIntegerForKey:@"callDisplayStyle"] == 0;

  return v3;
}

@end