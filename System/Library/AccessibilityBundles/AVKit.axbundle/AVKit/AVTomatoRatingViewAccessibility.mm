@interface AVTomatoRatingViewAccessibility
- (id)accessibilityLabel;
@end

@implementation AVTomatoRatingViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(AVTomatoRatingViewAccessibility *)self safeValueForKey:@"tomatoFreshness"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  if (unsignedIntegerValue > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F299088[unsignedIntegerValue]);
  }

  return v4;
}

@end