@interface MobileCalUIViewAccessibility
- (BOOL)_accessibilityDrawsFocusRingWhenChildrenFocused;
- (BOOL)_accessibilitySupportsContentSizeCategory:(id)category;
@end

@implementation MobileCalUIViewAccessibility

- (BOOL)_accessibilitySupportsContentSizeCategory:(id)category
{
  categoryCopy = category;
  accessibilityIdentification = [(MobileCalUIViewAccessibility *)self accessibilityIdentification];
  v6 = [accessibilityIdentification isEqualToString:@"_AXYearViewIdentifier"];

  if (v6)
  {
    if ([categoryCopy isEqualToString:*MEMORY[0x29EDC80A0]])
    {
      v7 = 1;
      goto LABEL_10;
    }

    v10 = [categoryCopy isEqualToString:*MEMORY[0x29EDC8050]];
LABEL_9:
    v7 = v10;
    goto LABEL_10;
  }

  accessibilityIdentification2 = [(MobileCalUIViewAccessibility *)self accessibilityIdentification];
  v9 = [accessibilityIdentification2 isEqualToString:@"_AXMonthViewIdentifier"];

  if (!v9)
  {
    v12.receiver = self;
    v12.super_class = MobileCalUIViewAccessibility;
    v10 = [(MobileCalUIViewAccessibility *)&v12 _accessibilitySupportsContentSizeCategory:categoryCopy];
    goto LABEL_9;
  }

  v7 = UIContentSizeCategoryCompareToCategory(categoryCopy, *MEMORY[0x29EDC80A8]) == NSOrderedDescending && UIContentSizeCategoryCompareToCategory(categoryCopy, *MEMORY[0x29EDC8068]) == NSOrderedAscending;
LABEL_10:

  return v7;
}

- (BOOL)_accessibilityDrawsFocusRingWhenChildrenFocused
{
  if (![(MobileCalUIViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    return 0;
  }

  accessibilityIdentification = [(MobileCalUIViewAccessibility *)self accessibilityIdentification];
  if ([accessibilityIdentification isEqualToString:@"_AXMonthViewIdentifier"])
  {
    v4 = 1;
  }

  else
  {
    accessibilityIdentification2 = [(MobileCalUIViewAccessibility *)self accessibilityIdentification];
    v4 = [accessibilityIdentification2 isEqualToString:@"_AXYearViewIdentifier"];
  }

  return v4;
}

@end