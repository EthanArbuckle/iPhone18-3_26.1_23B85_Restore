@interface MediaPlaybackButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MediaPlaybackButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFMediaPlaybackButton" hasSwiftField:@"isPlaying" withSwiftType:"Bool"];
  [validationsCopy validateClass:@"SFMediaPlaybackButton" hasSwiftField:@"playbackType" withSwiftType:"PlaybackType"];
}

- (id)accessibilityLabel
{
  v3 = [(MediaPlaybackButtonAccessibility *)self safeSwiftValueForKey:@"playbackType"];
  safeSwiftEnumCase = [v3 safeSwiftEnumCase];

  if ([safeSwiftEnumCase isEqualToString:@"back"])
  {
    v5 = @"playback.back.button";
LABEL_5:
    accessibilityLabel = accessibilityMobileSafariLocalizedString(v5);
    goto LABEL_6;
  }

  if ([safeSwiftEnumCase isEqualToString:@"forward"])
  {
    v5 = @"playback.forward.button";
    goto LABEL_5;
  }

  if ([safeSwiftEnumCase isEqualToString:@"play"])
  {
    if (([(MediaPlaybackButtonAccessibility *)self safeSwiftBoolForKey:@"isPlaying"]& 1) != 0)
    {
      v5 = @"playback.pause.button";
    }

    else
    {
      v5 = @"playback.play.button";
    }

    goto LABEL_5;
  }

  v9.receiver = self;
  v9.super_class = MediaPlaybackButtonAccessibility;
  accessibilityLabel = [(MediaPlaybackButtonAccessibility *)&v9 accessibilityLabel];
LABEL_6:
  v7 = accessibilityLabel;

  return v7;
}

@end