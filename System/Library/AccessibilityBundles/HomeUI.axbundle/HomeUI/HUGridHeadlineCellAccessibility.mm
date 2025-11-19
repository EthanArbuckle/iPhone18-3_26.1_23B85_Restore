@interface HUGridHeadlineCellAccessibility
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
@end

@implementation HUGridHeadlineCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(HUGridHeadlineCellAccessibility *)self safeValueForKey:@"headlineLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (CGRect)accessibilityFrame
{
  v3 = [(HUGridHeadlineCellAccessibility *)self safeValueForKey:@"headlineLabel"];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityFrame];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = HUGridHeadlineCellAccessibility;
    [(HUGridHeadlineCellAccessibility *)&v17 accessibilityFrame];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

@end