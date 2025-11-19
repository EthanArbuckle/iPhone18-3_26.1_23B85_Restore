@interface AVNowPlayingTransportBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)_axStringForElapsedAndRemainingTime;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateRemainingTimeText;
- (void)setHint:(int64_t)a3;
@end

@implementation AVNowPlayingTransportBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVNowPlayingTransportBar" isKindOfClass:@"UIView"];
  [v3 validateClass:@"AVNowPlayingTransportBar" hasInstanceMethod:@"createViews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AVNowPlayingTransportBar" hasInstanceMethod:@"_updateRemainingTimeText" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AVNowPlayingTransportBar" hasInstanceMethod:@"setHint:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"AVNowPlayingTransportBar" hasInstanceVariable:@"_elapsedTimeLabel" withType:"AVAnimatingLabel"];
  [v3 validateClass:@"AVNowPlayingTransportBar" hasInstanceVariable:@"_startTimeLabel" withType:"UILabel"];
  [v3 validateClass:@"AVNowPlayingTransportBar" hasInstanceVariable:@"_remainingTimeLabel" withType:"AVAnimatingLabel"];
  [v3 validateClass:@"AVNowPlayingTransportBar" hasInstanceVariable:@"_clonedPlayer" withType:"AVPlayer"];
  [v3 validateClass:@"AVNowPlayingTransportBar" hasInstanceMethod:@"frameSource" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  v7 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  if (UIAccessibilityIsVoiceOverRunning() && ([v3 _accessibilityViewIsVisible] & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AVNowPlayingTransportBarAccessibility;
    v4 = [(AVNowPlayingTransportBarAccessibility *)&v6 isAccessibilityElement];
  }

  return v4;
}

- (id)accessibilityLabel
{
  v2 = [(AVNowPlayingTransportBarAccessibility *)self safeValueForKey:@"_remainingTimeLabel"];
  v3 = [v2 _accessibilityViewIsVisible];

  if (v3)
  {
    v4 = accessibilityLocalizedString(@"transport.bar.label");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateRemainingTimeText
{
  v14.receiver = self;
  v14.super_class = AVNowPlayingTransportBarAccessibility;
  [(AVNowPlayingTransportBarAccessibility *)&v14 _updateRemainingTimeText];
  v3 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v4 = [v3 voiceOverPreferredTVInteractionMode];

  if (v4 == 1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = [(AVNowPlayingTransportBarAccessibility *)self _accessibilityValueForKey:@"kAXLastPlayStateAnnouncementTime"];
    [v6 doubleValue];
    v8 = v7;

    objc_opt_class();
    v9 = [(AVNowPlayingTransportBarAccessibility *)self safeValueForKey:@"_clonedPlayer"];
    v10 = __UIAccessibilityCastAsClass();

    if (Current - v8 > 3.0)
    {
      [v10 rate];
      if (fabsf(v11) > 1.0)
      {
        v12 = [(AVNowPlayingTransportBarAccessibility *)self _axStringForElapsedAndRemainingTime];
        UIAccessibilitySpeakIfNotSpeaking();

        v13 = [MEMORY[0x29EDBA070] numberWithDouble:CFAbsoluteTimeGetCurrent()];
        [(AVNowPlayingTransportBarAccessibility *)self _accessibilitySetRetainedValue:v13 forKey:@"kAXLastPlayStateAnnouncementTime"];
      }
    }
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = AVNowPlayingTransportBarAccessibility;
  [(AVNowPlayingTransportBarAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(AVNowPlayingTransportBarAccessibility *)self safeValueForKey:@"_elapsedTimeLabel"];
  [v3 setAccessibilityIdentifier:@"AXElapsedTime"];

  v4 = [(AVNowPlayingTransportBarAccessibility *)self safeValueForKey:@"_startTimeLabel"];
  [v4 setAccessibilityIdentifier:@"AXStartTime"];

  v5 = [(AVNowPlayingTransportBarAccessibility *)self safeValueForKey:@"_currentClockTimeLabel"];
  [v5 setAccessibilityIdentifier:@"AXCurrentClock"];

  v6 = [(AVNowPlayingTransportBarAccessibility *)self safeValueForKey:@"_endingClockTimeLabel"];
  [v6 setAccessibilityIdentifier:@"AXEndingClock"];

  v7 = [(AVNowPlayingTransportBarAccessibility *)self safeValueForKey:@"_remainingTimeLabel"];
  [v7 setAccessibilityIdentifier:@"AXRemainingTime"];
}

- (id)_axStringForElapsedAndRemainingTime
{
  v3 = [(AVNowPlayingTransportBarAccessibility *)self safeBoolForKey:@"displaysClockTimes"];
  if (v3)
  {
    v4 = @"_currentClockTimeLabel";
  }

  else
  {
    v4 = @"_elapsedTimeLabel";
  }

  v5 = [(AVNowPlayingTransportBarAccessibility *)self safeUIViewForKey:v4];
  v6 = [v5 _accessibilityViewIsVisible];
  v7 = [v5 accessibilityLabel];
  if ([v7 length])
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    if (v3)
    {
      v10 = @"media.time.current";
    }

    else
    {
      v10 = @"media.time.elapsed";
    }

    v11 = accessibilityLocalizedString(v10);
    v9 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v11, v7];
  }

  if (v3)
  {
    v12 = @"_endingClockTimeLabel";
  }

  else
  {
    v12 = @"_remainingTimeLabel";
  }

  v13 = [(AVNowPlayingTransportBarAccessibility *)self safeUIViewForKey:v12];
  v14 = [v13 _accessibilityViewIsVisible];
  v15 = [v13 accessibilityLabel];
  if ([v15 length])
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    if (v3)
    {
      v18 = @"media.time.ending";
    }

    else
    {
      v18 = @"media.time.remaining";
    }

    v19 = accessibilityLocalizedString(v18);
    v17 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v19, v15];
  }

  v20 = __UIAXStringForVariables();

  return v20;
}

- (void)setHint:(int64_t)a3
{
  v5 = [(AVNowPlayingTransportBarAccessibility *)self safeValueForKey:@"_hint"];
  v6 = [v5 integerValue];

  v13.receiver = self;
  v13.super_class = AVNowPlayingTransportBarAccessibility;
  [(AVNowPlayingTransportBarAccessibility *)&v13 setHint:a3];
  if (v6 != a3)
  {
    if (a3 <= 4)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v7 = @"tv.player.fastforwarding";
        }

        else
        {
          if (a3 != 2)
          {
            return;
          }

          v7 = @"tv.player.rewinding";
        }

LABEL_17:
        v12 = accessibilityLocalizedString(v7);
        if (!v12)
        {
          return;
        }

        goto LABEL_18;
      }

LABEL_12:
      UIAccessibilityPostNotification(0xBD5u, 0);
      return;
    }

    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        v7 = @"next.track";
      }

      else
      {
        v7 = @"previous.track";
      }

      goto LABEL_17;
    }

    if (a3 != 8)
    {
      if (a3 != 7)
      {
        return;
      }

      goto LABEL_12;
    }

    v8 = MEMORY[0x29EDBA0F8];
    v9 = accessibilityLocalizedString(@"tv.player.paused.with.remaining");
    v10 = [(AVNowPlayingTransportBarAccessibility *)self safeValueForKey:@"remainingTimeLabel"];
    v11 = [v10 accessibilityLabel];
    v12 = [v8 localizedStringWithFormat:v9, v11];

    if (v12)
    {
LABEL_18:
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v12);
    }
  }
}

@end