@interface CAMPhotoVideoModeSwitchAccessibility
- (id)accessibilityHint;
- (id)accessibilityValue;
@end

@implementation CAMPhotoVideoModeSwitchAccessibility

- (id)accessibilityValue
{
  if ([(CAMPhotoVideoModeSwitchAccessibility *)self safeUnsignedIntegerForKey:@"mode"]== 1)
  {
    v2 = @"video.mode";
  }

  else
  {
    v2 = @"photo.mode";
  }

  v3 = accessibilityCameraUILocalizedString(v2);

  return v3;
}

- (id)accessibilityHint
{
  v2 = [(CAMPhotoVideoModeSwitchAccessibility *)self safeUnsignedIntegerForKey:@"mode"];
  if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_6;
    }

    v3 = @"switch.to.photo";
  }

  else
  {
    v3 = @"switch.to.video";
  }

  v2 = accessibilityCameraUILocalizedString(v3);
LABEL_6:

  return v2;
}

@end