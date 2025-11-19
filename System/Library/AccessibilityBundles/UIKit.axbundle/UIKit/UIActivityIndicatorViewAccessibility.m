@interface UIActivityIndicatorViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation UIActivityIndicatorViewAccessibility

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIActivityIndicatorViewAccessibility;
  return [(UIActivityIndicatorViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v8 = self;
  location[1] = a2;
  v6.receiver = self;
  v6.super_class = UIActivityIndicatorViewAccessibility;
  location[0] = [(UIActivityIndicatorViewAccessibility *)&v6 accessibilityLabel];
  if ([location[0] length])
  {
    v9 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v4 = [(UIActivityIndicatorViewAccessibility *)v8 safeValueForKey:@"isAnimating"];
    v5 = [v4 BOOLValue];
    MEMORY[0x29EDC9740](v4);
    if (v5)
    {
      v9 = accessibilityLocalizedString(@"activity.indicator.inprogress.label");
    }

    else
    {
      v9 = accessibilityLocalizedString(@"activity.indicator.progresshalted.label");
    }
  }

  objc_storeStrong(location, 0);
  v2 = v9;

  return v2;
}

- (id)accessibilityValue
{
  v8 = self;
  location[1] = a2;
  v6.receiver = self;
  v6.super_class = UIActivityIndicatorViewAccessibility;
  location[0] = [(UIActivityIndicatorViewAccessibility *)&v6 accessibilityValue];
  if ([location[0] length])
  {
    v9 = MEMORY[0x29EDC9748](location[0]);
  }

  else if (UIAccessibilityIsVoiceOverRunning())
  {
    v9 = 0;
  }

  else
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = [(UIActivityIndicatorViewAccessibility *)v8 safeValueForKey:@"isAnimating"];
    v9 = [v4 stringWithFormat:@"%d", objc_msgSend(v5, "BOOLValue") & 1];
    MEMORY[0x29EDC9740](v5);
  }

  objc_storeStrong(location, 0);
  v2 = v9;

  return v2;
}

@end