@interface HomeWallpaperScrollViewAccessibility
- (BOOL)_accessibilityIsWallpaperEditable;
- (BOOL)isAccessibilityElement;
- (double)aspectFillScale;
- (id)_accessibilityScrollStatusFormatString;
- (id)_accessibilityZoomedString;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation HomeWallpaperScrollViewAccessibility

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(HomeWallpaperScrollViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:AXWallpaperScrollViewIdentifier];

  if (v4)
  {
    accessibilityLabel = accessibilityHomeUILocalizedString(@"wallpaper.viewfinder.label");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HomeWallpaperScrollViewAccessibility;
    accessibilityLabel = [(HomeWallpaperScrollViewAccessibility *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  accessibilityIdentifier = [(HomeWallpaperScrollViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:AXWallpaperScrollViewIdentifier];

  if (v4)
  {
    _accessibilityZoomedString = [(HomeWallpaperScrollViewAccessibility *)self _accessibilityZoomedString];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HomeWallpaperScrollViewAccessibility;
    _accessibilityZoomedString = [(HomeWallpaperScrollViewAccessibility *)&v7 accessibilityValue];
  }

  return _accessibilityZoomedString;
}

- (id)accessibilityHint
{
  accessibilityIdentifier = [(HomeWallpaperScrollViewAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:AXWallpaperScrollViewIdentifier])
  {
    _accessibilityIsWallpaperEditable = [(HomeWallpaperScrollViewAccessibility *)self _accessibilityIsWallpaperEditable];

    if (_accessibilityIsWallpaperEditable)
    {
      accessibilityHint = accessibilityHomeUILocalizedString(@"wallpaper.viewfinder.hint");
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7.receiver = self;
  v7.super_class = HomeWallpaperScrollViewAccessibility;
  accessibilityHint = [(HomeWallpaperScrollViewAccessibility *)&v7 accessibilityHint];
LABEL_6:

  return accessibilityHint;
}

- (BOOL)isAccessibilityElement
{
  accessibilityIdentifier = [(HomeWallpaperScrollViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:AXWallpaperScrollViewIdentifier];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = HomeWallpaperScrollViewAccessibility;
  return [(HomeWallpaperScrollViewAccessibility *)&v6 isAccessibilityElement];
}

- (void)accessibilityIncrement
{
  accessibilityIdentifier = [(HomeWallpaperScrollViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:AXWallpaperScrollViewIdentifier];

  if (v4)
  {
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    [v5 zoomScale];
    [v5 setZoomScale:v6 + 0.1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HomeWallpaperScrollViewAccessibility;
    [(HomeWallpaperScrollViewAccessibility *)&v7 accessibilityIncrement];
  }
}

- (void)accessibilityDecrement
{
  accessibilityIdentifier = [(HomeWallpaperScrollViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:AXWallpaperScrollViewIdentifier];

  if (v4)
  {
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    [v5 zoomScale];
    [v5 setZoomScale:v6 + -0.1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HomeWallpaperScrollViewAccessibility;
    [(HomeWallpaperScrollViewAccessibility *)&v7 accessibilityDecrement];
  }
}

- (id)_accessibilityScrollStatusFormatString
{
  accessibilityIdentifier = [(HomeWallpaperScrollViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:AXWallpaperScrollViewIdentifier];

  if (v4)
  {
    _accessibilityScrollStatusFormatString = accessibilityHomeUILocalizedString(@"wallpaper.viewfinder.position");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HomeWallpaperScrollViewAccessibility;
    _accessibilityScrollStatusFormatString = [(HomeWallpaperScrollViewAccessibility *)&v7 _accessibilityScrollStatusFormatString];
  }

  return _accessibilityScrollStatusFormatString;
}

- (unint64_t)accessibilityTraits
{
  accessibilityIdentifier = [(HomeWallpaperScrollViewAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:AXWallpaperScrollViewIdentifier])
  {
    _accessibilityIsWallpaperEditable = [(HomeWallpaperScrollViewAccessibility *)self _accessibilityIsWallpaperEditable];

    if (_accessibilityIsWallpaperEditable)
    {
      v7.receiver = self;
      v7.super_class = HomeWallpaperScrollViewAccessibility;
      return *MEMORY[0x29EDC7F60] | [(HomeWallpaperScrollViewAccessibility *)&v7 accessibilityTraits];
    }
  }

  else
  {
  }

  v6.receiver = self;
  v6.super_class = HomeWallpaperScrollViewAccessibility;
  return [(HomeWallpaperScrollViewAccessibility *)&v6 accessibilityTraits];
}

- (BOOL)_accessibilityIsWallpaperEditable
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [v2 maximumZoomScale];
  v4 = v3;
  [v2 minimumZoomScale];
  v6 = v4 != v5;

  return v6;
}

- (id)_accessibilityZoomedString
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  [v3 zoomScale];
  [(HomeWallpaperScrollViewAccessibility *)self aspectFillScale];
  v4 = AXFormatMagnificationFactor();

  return v4;
}

- (double)aspectFillScale
{
  objc_opt_class();
  v3 = [(HomeWallpaperScrollViewAccessibility *)self safeValueForKey:@"delegate"];
  v4 = [v3 safeValueForKey:@"imageView"];
  v5 = __UIAccessibilityCastAsClass();

  [v5 bounds];
  if (v6 == 0.0 || (v8 = v7, v7 == 0.0) || ((v9 = v6, [(HomeWallpaperScrollViewAccessibility *)self bounds], v11 = v10 / v9, [(HomeWallpaperScrollViewAccessibility *)self bounds], v11 >= v12 / v8) ? (v13 = v11) : (v13 = v12 / v8), v13 == 0.0))
  {
    v13 = 1.0;
  }

  return v13;
}

@end