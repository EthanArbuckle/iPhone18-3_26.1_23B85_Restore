@interface PHBottomBarButtonAccessibility
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation PHBottomBarButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(PHBottomBarButtonAccessibility *)self safeValueForKey:@"action"];
  v4 = [v3 integerValue];

  if (v4 > 19)
  {
    if (v4 <= 21)
    {
      if (v4 == 20)
      {
        v5 = @"camera.flip";
      }

      else
      {
        v5 = @"mute.button";
      }

      goto LABEL_19;
    }

    if (v4 == 26)
    {
      v5 = @"call.text";
      goto LABEL_19;
    }

    if (v4 == 22)
    {
      v5 = @"audio.route";
      goto LABEL_19;
    }
  }

  else if (v4 > 14)
  {
    if ((v4 - 15) < 2)
    {
      v5 = @"end.call";
      goto LABEL_19;
    }
  }

  else
  {
    if ((v4 - 7) < 2)
    {
      v5 = @"decline.call";
      goto LABEL_19;
    }

    if (v4 == 1)
    {
      v5 = @"answer.call";
      goto LABEL_19;
    }

    if (v4 == 3)
    {
      v5 = @"answer.video.call";
LABEL_19:
      v6 = accessibilityMobilePhoneLocalizedString(v5);
      goto LABEL_20;
    }
  }

  v8.receiver = self;
  v8.super_class = PHBottomBarButtonAccessibility;
  v6 = [(PHBottomBarButtonAccessibility *)&v8 accessibilityLabel];
LABEL_20:

  return v6;
}

- (id)accessibilityUserInputLabels
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v9.receiver = self;
  v9.super_class = PHBottomBarButtonAccessibility;
  v4 = [(PHBottomBarButtonAccessibility *)&v9 accessibilityUserInputLabels];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(PHBottomBarButtonAccessibility *)self safeValueForKey:@"action"];
  v6 = [v5 integerValue];

  if ((v6 | 2) == 3)
  {
    v7 = accessibilityMobilePhoneLocalizedString(@"accept");
    [v3 addObject:v7];
  }

  return v3;
}

@end