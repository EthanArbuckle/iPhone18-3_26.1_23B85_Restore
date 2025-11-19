@interface MediaPlaybackButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MediaPlaybackButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFMediaPlaybackButton" hasSwiftField:@"isPlaying" withSwiftType:"Bool"];
  [v3 validateClass:@"SFMediaPlaybackButton" hasSwiftField:@"playbackType" withSwiftType:"PlaybackType"];
}

- (id)accessibilityLabel
{
  v3 = [(MediaPlaybackButtonAccessibility *)self safeSwiftValueForKey:@"playbackType"];
  v4 = [v3 safeSwiftEnumCase];

  if ([v4 isEqualToString:@"back"])
  {
    v5 = @"playback.back.button";
LABEL_5:
    v6 = accessibilityMobileSafariLocalizedString(v5);
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"forward"])
  {
    v5 = @"playback.forward.button";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"play"])
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
  v6 = [(MediaPlaybackButtonAccessibility *)&v9 accessibilityLabel];
LABEL_6:
  v7 = v6;

  return v7;
}

@end