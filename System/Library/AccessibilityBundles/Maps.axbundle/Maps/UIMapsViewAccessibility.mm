@interface UIMapsViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation UIMapsViewAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(UIMapsViewAccessibility *)self accessibilityIdentification];
  if ([v3 isEqualToString:@"distanceTimeView"])
  {
    v4 = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIMapsViewAccessibility;
    v4 = [(UIMapsViewAccessibility *)&v6 isAccessibilityElement];
  }

  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(UIMapsViewAccessibility *)self accessibilityIdentification];
  if ([v3 isEqualToString:@"distanceTimeView"])
  {
    v4 = [(UIMapsViewAccessibility *)self safeValueForKey:@"subviews"];
    if ([v4 count] >= 2)
    {
      v6 = [v4 objectAtIndex:0];
      v7 = [v6 accessibilityLabel];

      v8 = [v4 objectAtIndex:1];
      v9 = [v8 accessibilityLabel];

      v5 = 0;
      if (v7 && v9)
      {
        v10 = MEMORY[0x29EDBA0F8];
        v11 = AXMapsLocString(@"DISTANCE_TIME_FORMAT");
        v5 = [v10 localizedStringWithFormat:v11, v7, v9];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UIMapsViewAccessibility;
    v5 = [(UIMapsViewAccessibility *)&v13 accessibilityLabel];
  }

  return v5;
}

@end