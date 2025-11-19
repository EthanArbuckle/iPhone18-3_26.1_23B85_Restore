@interface CAMLivePhotoButtonAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CAMLivePhotoButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMLivePhotoButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMLivePhotoButtonAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityValue
{
  v2 = [(CAMLivePhotoButtonAccessibility *)self safeIntegerForKey:@"livePhotoMode"];
  v3 = @"off";
  if (v2 == 2)
  {
    v3 = @"auto";
  }

  if (v2 == 1)
  {
    v4 = @"on";
  }

  else
  {
    v4 = v3;
  }

  v5 = accessibilityCameraUILocalizedString(v4);

  return v5;
}

@end