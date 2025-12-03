@interface PHBottomBarButtonAccessibility
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation PHBottomBarButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(PHBottomBarButtonAccessibility *)self safeValueForKey:@"action"];
  integerValue = [v3 integerValue];

  if (integerValue > 19)
  {
    if (integerValue <= 21)
    {
      if (integerValue == 20)
      {
        v5 = @"camera.flip";
      }

      else
      {
        v5 = @"mute.button";
      }

      goto LABEL_19;
    }

    if (integerValue == 26)
    {
      v5 = @"call.text";
      goto LABEL_19;
    }

    if (integerValue == 22)
    {
      v5 = @"audio.route";
      goto LABEL_19;
    }
  }

  else if (integerValue > 14)
  {
    if ((integerValue - 15) < 2)
    {
      v5 = @"end.call";
      goto LABEL_19;
    }
  }

  else
  {
    if ((integerValue - 7) < 2)
    {
      v5 = @"decline.call";
      goto LABEL_19;
    }

    if (integerValue == 1)
    {
      v5 = @"answer.call";
      goto LABEL_19;
    }

    if (integerValue == 3)
    {
      v5 = @"answer.video.call";
LABEL_19:
      accessibilityLabel = accessibilityMobilePhoneLocalizedString(v5);
      goto LABEL_20;
    }
  }

  v8.receiver = self;
  v8.super_class = PHBottomBarButtonAccessibility;
  accessibilityLabel = [(PHBottomBarButtonAccessibility *)&v8 accessibilityLabel];
LABEL_20:

  return accessibilityLabel;
}

- (id)accessibilityUserInputLabels
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v9.receiver = self;
  v9.super_class = PHBottomBarButtonAccessibility;
  accessibilityUserInputLabels = [(PHBottomBarButtonAccessibility *)&v9 accessibilityUserInputLabels];
  [v3 axSafelyAddObjectsFromArray:accessibilityUserInputLabels];

  v5 = [(PHBottomBarButtonAccessibility *)self safeValueForKey:@"action"];
  integerValue = [v5 integerValue];

  if ((integerValue | 2) == 3)
  {
    v7 = accessibilityMobilePhoneLocalizedString(@"accept");
    [v3 addObject:v7];
  }

  return v3;
}

@end