@interface UIMapsViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation UIMapsViewAccessibility

- (BOOL)isAccessibilityElement
{
  accessibilityIdentification = [(UIMapsViewAccessibility *)self accessibilityIdentification];
  if ([accessibilityIdentification isEqualToString:@"distanceTimeView"])
  {
    isAccessibilityElement = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIMapsViewAccessibility;
    isAccessibilityElement = [(UIMapsViewAccessibility *)&v6 isAccessibilityElement];
  }

  return isAccessibilityElement;
}

- (id)accessibilityLabel
{
  accessibilityIdentification = [(UIMapsViewAccessibility *)self accessibilityIdentification];
  if ([accessibilityIdentification isEqualToString:@"distanceTimeView"])
  {
    v4 = [(UIMapsViewAccessibility *)self safeValueForKey:@"subviews"];
    if ([v4 count] >= 2)
    {
      v6 = [v4 objectAtIndex:0];
      accessibilityLabel = [v6 accessibilityLabel];

      v8 = [v4 objectAtIndex:1];
      accessibilityLabel2 = [v8 accessibilityLabel];

      accessibilityLabel3 = 0;
      if (accessibilityLabel && accessibilityLabel2)
      {
        v10 = MEMORY[0x29EDBA0F8];
        v11 = AXMapsLocString(@"DISTANCE_TIME_FORMAT");
        accessibilityLabel3 = [v10 localizedStringWithFormat:v11, accessibilityLabel, accessibilityLabel2];
      }
    }

    else
    {
      accessibilityLabel3 = 0;
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UIMapsViewAccessibility;
    accessibilityLabel3 = [(UIMapsViewAccessibility *)&v13 accessibilityLabel];
  }

  return accessibilityLabel3;
}

@end