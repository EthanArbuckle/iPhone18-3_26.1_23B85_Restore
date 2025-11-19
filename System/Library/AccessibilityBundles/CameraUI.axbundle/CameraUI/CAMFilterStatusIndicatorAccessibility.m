@interface CAMFilterStatusIndicatorAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CAMFilterStatusIndicatorAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMFilterStatusIndicatorAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMFilterStatusIndicatorAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityValue
{
  if ([(CAMFilterStatusIndicatorAccessibility *)self safeBoolForKey:@"isOn"])
  {
    v2 = @"on.state";
  }

  else
  {
    v2 = @"off.state";
  }

  v3 = accessibilityCameraUILocalizedString(v2);

  return v3;
}

@end