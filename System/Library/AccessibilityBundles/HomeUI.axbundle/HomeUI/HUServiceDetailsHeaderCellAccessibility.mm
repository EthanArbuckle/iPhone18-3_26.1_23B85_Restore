@interface HUServiceDetailsHeaderCellAccessibility
- (BOOL)accessibilityHomeUIIsMessageTextViewVisible;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation HUServiceDetailsHeaderCellAccessibility

- (id)accessibilityLabel
{
  if ([(HUServiceDetailsHeaderCellAccessibility *)self accessibilityHomeUIIsMessageTextViewVisible])
  {
    v3 = [(HUServiceDetailsHeaderCellAccessibility *)self safeUIViewForKey:@"messageTextView"];
    accessibilityLabel = [v3 safeValueForKey:@"text"];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = HUServiceDetailsHeaderCellAccessibility;
    accessibilityLabel = [(HUServiceDetailsHeaderCellAccessibility *)&v6 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  if ([(HUServiceDetailsHeaderCellAccessibility *)self accessibilityHomeUIIsMessageTextViewVisible])
  {
    return *MEMORY[0x29EDC7F70];
  }

  v4.receiver = self;
  v4.super_class = HUServiceDetailsHeaderCellAccessibility;
  return [(HUServiceDetailsHeaderCellAccessibility *)&v4 accessibilityTraits];
}

- (BOOL)accessibilityHomeUIIsMessageTextViewVisible
{
  v2 = [(HUServiceDetailsHeaderCellAccessibility *)self safeUIViewForKey:@"messageTextView"];
  _accessibilityViewIsVisible = [v2 _accessibilityViewIsVisible];

  return _accessibilityViewIsVisible;
}

@end