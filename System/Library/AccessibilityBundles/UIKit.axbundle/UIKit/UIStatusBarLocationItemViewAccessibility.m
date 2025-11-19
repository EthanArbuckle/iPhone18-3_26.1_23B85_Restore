@interface UIStatusBarLocationItemViewAccessibility
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIStatusBarLocationItemViewAccessibility

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarLocationItemViewAccessibility;
  return [(UIStatusBarLocationItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580];
}

- (id)accessibilityLabel
{
  v3 = [(UIStatusBarLocationItemViewAccessibility *)self safeValueForKey:@"_iconType"];
  v4 = [v3 intValue];
  MEMORY[0x29EDC9740](v3);
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = accessibilityLocalizedString(@"status.location.geofence");
    }

    else if (v4 == 2)
    {
      v5 = accessibilityLocalizedString(@"status.location.prominent");
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = accessibilityLocalizedString(@"status.location.icon");
  }

  return v5;
}

- (id)accessibilityIdentifier
{
  v3 = [(UIStatusBarLocationItemViewAccessibility *)self safeValueForKey:@"_iconType"];
  v4 = [v3 intValue];
  MEMORY[0x29EDC9740](v3);
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = MEMORY[0x29EDC9748](@"GeofenceLocationTrackingOn");
    }

    else if (v4 == 2)
    {
      v5 = MEMORY[0x29EDC9748](@"ProminentLocationTrackingOn");
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = MEMORY[0x29EDC9748](@"StandardLocationTrackingOn");
  }

  return v5;
}

@end