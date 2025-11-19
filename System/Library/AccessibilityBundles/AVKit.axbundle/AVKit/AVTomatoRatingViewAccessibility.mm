@interface AVTomatoRatingViewAccessibility
- (id)accessibilityLabel;
@end

@implementation AVTomatoRatingViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(AVTomatoRatingViewAccessibility *)self safeValueForKey:@"tomatoFreshness"];
  v3 = [v2 unsignedIntegerValue];

  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F299088[v3]);
  }

  return v4;
}

@end