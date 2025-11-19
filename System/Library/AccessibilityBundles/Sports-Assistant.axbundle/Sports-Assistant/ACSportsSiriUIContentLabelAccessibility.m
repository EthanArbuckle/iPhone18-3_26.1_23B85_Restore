@interface ACSportsSiriUIContentLabelAccessibility
- (CGRect)accessibilityFrame;
@end

@implementation ACSportsSiriUIContentLabelAccessibility

- (CGRect)accessibilityFrame
{
  v17.receiver = self;
  v17.super_class = ACSportsSiriUIContentLabelAccessibility;
  [(ACSportsSiriUIContentLabelAccessibility *)&v17 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(ACSportsSiriUIContentLabelAccessibility *)self _accessibilityValueForKey:@"AXIsSportsPeriodVenueLabel"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    v13 = v10 + -20.0;
  }

  else
  {
    v13 = v10;
  }

  if (v12)
  {
    v14 = v6 + 10.0;
  }

  else
  {
    v14 = v6;
  }

  v15 = v4;
  v16 = v8;
  result.size.height = v13;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

@end