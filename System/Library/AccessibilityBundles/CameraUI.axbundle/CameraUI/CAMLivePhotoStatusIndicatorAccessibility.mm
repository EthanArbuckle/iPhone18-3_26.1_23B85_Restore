@interface CAMLivePhotoStatusIndicatorAccessibility
- (id)_axValueForLivePhotoMode:(int64_t)a3;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CAMLivePhotoStatusIndicatorAccessibility

- (id)accessibilityValue
{
  v3 = [(CAMLivePhotoStatusIndicatorAccessibility *)self safeValueForKey:@"livePhotoMode"];
  v4 = [v3 integerValue];

  return [(CAMLivePhotoStatusIndicatorAccessibility *)self _axValueForLivePhotoMode:v4];
}

- (id)_axValueForLivePhotoMode:(int64_t)a3
{
  v3 = @"LIVEPHOTO_MODE_BUTTON_VALUE_AUTO";
  if (a3 == 1)
  {
    v3 = @"LIVEPHOTO_MODE_BUTTON_VALUE_ON";
  }

  if (a3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"LIVEPHOTO_MODE_BUTTON_VALUE_OFF";
  }

  v5 = accessibilityCameraUILocalizedString(v4);

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMLivePhotoStatusIndicatorAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMLivePhotoStatusIndicatorAccessibility *)&v3 accessibilityTraits];
}

@end