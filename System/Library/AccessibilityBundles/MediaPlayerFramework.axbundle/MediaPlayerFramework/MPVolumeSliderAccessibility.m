@interface MPVolumeSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityLabel;
- (void)_layoutVolumeWarningView;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation MPVolumeSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MPVolumeSlider" hasInstanceVariable:@"_volumeController" withType:"MPVolumeController"];
  [v3 validateClass:@"MPVolumeController" hasInstanceMethod:@"volumeWarningEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MPVolumeController" hasInstanceMethod:@"EUVolumeLimit" withFullSignature:{"f", 0}];
  [v3 validateClass:@"MPVolumeController" hasInstanceMethod:@"volumeWarningState" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MPVolumeSliderAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
  {
    [(MPVolumeSliderAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    accessibilityLocalizedString(@"volumeslider");
  }
  v4 = ;

  return v4;
}

- (void)accessibilityIncrement
{
  v3 = [(MPVolumeSliderAccessibility *)self safeValueForKey:@"value"];
  [v3 floatValue];
  v5 = v4;

  v10.receiver = self;
  v10.super_class = MPVolumeSliderAccessibility;
  [(MPVolumeSliderAccessibility *)&v10 accessibilityIncrement];
  v6 = [(MPVolumeSliderAccessibility *)self safeValueForKey:@"value"];
  [v6 floatValue];
  v8 = v7;

  if (v5 != v8)
  {
    v9 = [(MPVolumeSliderAccessibility *)self safeValueForKey:@"_commitVolumeChange"];
  }
}

- (void)accessibilityDecrement
{
  v3 = [(MPVolumeSliderAccessibility *)self safeValueForKey:@"value"];
  [v3 floatValue];
  v5 = v4;

  v10.receiver = self;
  v10.super_class = MPVolumeSliderAccessibility;
  [(MPVolumeSliderAccessibility *)&v10 accessibilityDecrement];
  v6 = [(MPVolumeSliderAccessibility *)self safeValueForKey:@"value"];
  [v6 floatValue];
  v8 = v7;

  if (v5 != v8)
  {
    v9 = [(MPVolumeSliderAccessibility *)self safeValueForKey:@"_commitVolumeChange"];
  }
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(MPVolumeSliderAccessibility *)self bounds];
  v12.x = x;
  v12.y = y;
  if (CGRectContainsPoint(v13, v12))
  {
    v10.receiver = self;
    v10.super_class = MPVolumeSliderAccessibility;
    v8 = [(MPVolumeSliderAccessibility *)&v10 _accessibilityHitTest:v7 withEvent:x, y];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_layoutVolumeWarningView
{
  v22.receiver = self;
  v22.super_class = MPVolumeSliderAccessibility;
  [(MPVolumeSliderAccessibility *)&v22 _layoutVolumeWarningView];
  v3 = [(MPVolumeSliderAccessibility *)self safeValueForKey:@"_volumeController"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 safeIntegerForKey:@"volumeWarningState"];
  [v4 safeFloatForKey:@"EUVolumeLimit"];
  v7 = v6;
  [(MPVolumeSliderAccessibility *)self safeFloatForKey:@"value"];
  v9 = v8;
  v10 = MEMORY[0x29EDBA078];
  v11 = [MEMORY[0x29EDBA070] numberWithFloat:?];
  v12 = [v10 localizedStringFromNumber:v11 numberStyle:3];

  if ([v4 safeBoolForKey:@"volumeWarningEnabled"])
  {
    if (v5 == 2)
    {
      if (v9 < v7)
      {
        goto LABEL_5;
      }

LABEL_10:
      v17 = *MEMORY[0x29EDC7EA8];
      v18 = accessibilityLocalizedString(@"volume.eulimit.approach");
      UIAccessibilityPostNotification(v17, v18);

      v19 = accessibilityLocalizedString(@"volume.eulimit.approach");
      v20 = [v12 stringByAppendingFormat:@", %@", v19];

      [(MPVolumeSliderAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"axDidAddEUWarning"];
      if (UIAccessibilityIsVoiceOverRunning())
      {
        v21 = [MEMORY[0x29EDC5928] sharedAVSystemController];
        [v21 allowUserToExceedEUVolumeLimit];
      }

      v12 = v20;
      goto LABEL_13;
    }

    if (v5 == 4)
    {
      if (v9 != v7)
      {
LABEL_5:
        [(MPVolumeSliderAccessibility *)self _accessibilityBoolValueForKey:@"axDidAddEUWarning"];
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  if ([(MPVolumeSliderAccessibility *)self _accessibilityBoolValueForKey:@"axDidAddEUWarning"]&& v5 == 3)
  {
    v13 = *MEMORY[0x29EDC7EA8];
    v14 = accessibilityLocalizedString(@"volume.eulimit.warning");
    UIAccessibilityPostNotification(v13, v14);

    v15 = accessibilityLocalizedString(@"volume.eulimit.warning");
    v16 = [v12 stringByAppendingFormat:@", %@", v15];

    [(MPVolumeSliderAccessibility *)self _accessibilitySetBoolValue:0 forKey:@"axDidAddEUWarning"];
    v12 = v16;
  }

LABEL_13:
  [(MPVolumeSliderAccessibility *)self setAccessibilityValue:v12];
}

@end