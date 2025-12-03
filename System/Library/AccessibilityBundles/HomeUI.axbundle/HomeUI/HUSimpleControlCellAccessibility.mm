@interface HUSimpleControlCellAccessibility
- (id)accessibilityLabel;
@end

@implementation HUSimpleControlCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(HUSimpleControlCellAccessibility *)self safeValueForKey:@"controlView"];
  accessibilityLabel = [v3 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    accessibilityLabel2 = accessibilityLabel;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HUSimpleControlCellAccessibility;
    accessibilityLabel2 = [(HUSimpleControlCellAccessibility *)&v8 accessibilityLabel];
  }

  v6 = accessibilityLabel2;

  return v6;
}

@end