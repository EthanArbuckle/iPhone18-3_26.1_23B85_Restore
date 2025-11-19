@interface IMRadialProgressButtonAccessibility
- (id)accessibilityHint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation IMRadialProgressButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v2 = UIAccessibilityTraitUpdatesFrequently;
  v4.receiver = self;
  v4.super_class = IMRadialProgressButtonAccessibility;
  return [(IMRadialProgressButtonAccessibility *)&v4 accessibilityTraits]| v2;
}

- (id)accessibilityHint
{
  if ([(IMRadialProgressButtonAccessibility *)self isSelected])
  {
    v2 = @"tap.to.resume.hint.iOS";
  }

  else
  {
    v2 = @"tap.to.resume.pause.iOS";
  }

  v3 = IMAXLocString(v2);

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(IMRadialProgressButtonAccessibility *)self imaxValueForKey:@"superview"];

  if (v3)
  {
    v4 = [(IMRadialProgressButtonAccessibility *)self imaxValueForKey:@"_progress"];
    [v4 floatValue];
    v6 = [NSNumberFormatter imaxLocalizedPercentage:0 maximumNumberOfDigitsAfterDecimalSeparator:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end