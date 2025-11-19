@interface PHCallParticipantsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsDisplayedInBanner;
- (BOOL)isAccessibilityElement;
@end

@implementation PHCallParticipantsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PHCallParticipantsView" hasInstanceMethod:@"callDisplayStyleManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ICSCallDisplayStyleManager" hasInstanceMethod:@"callDisplayStyle" withFullSignature:{"q", 0}];
  [v3 validateClass:@"PHCallParticipantsView" hasInstanceMethod:@"singleCallLabelView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHCallParticipantsView" hasInstanceMethod:@"shouldIgnoreUpdates" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHCallParticipantsView" hasInstanceMethod:@"updateParticipantsAnimated:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"PHSingleCallParticipantLabelView" hasInstanceMethod:@"bannerButtonsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHBannerButtonsView" hasInstanceMethod:@"rightButton" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  if (UIAccessibilityIsSwitchControlRunning())
  {
    v3 = [MEMORY[0x29EDBDFA0] sharedInstance];
    if ([v3 assistiveTouchScannerSpeechEnabled])
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