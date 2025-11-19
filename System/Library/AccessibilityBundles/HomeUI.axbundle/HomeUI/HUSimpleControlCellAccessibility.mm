@interface HUSimpleControlCellAccessibility
- (id)accessibilityLabel;
@end

@implementation HUSimpleControlCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(HUSimpleControlCellAccessibility *)self safeValueForKey:@"controlView"];
  v4 = [v3 accessibilityLabel];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HUSimpleControlCellAccessibility;
    v5 = [(HUSimpleControlCellAccessibility *)&v8 accessibilityLabel];
  }

  v6 = v5;

  return v6;
}

@end