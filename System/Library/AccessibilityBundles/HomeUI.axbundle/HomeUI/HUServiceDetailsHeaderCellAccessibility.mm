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
    v4 = [v3 safeValueForKey:@"text"];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = HUServiceDetailsHeaderCellAccessibility;
    v4 = [(HUServiceDetailsHeaderCellAccessibility *)&v6 accessibilityLabel];
  }

  return v4;
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
  v3 = [v2 _accessibilityViewIsVisible];

  return v3;
}

@end