@interface MobileCalUIViewAccessibility
- (BOOL)_accessibilityDrawsFocusRingWhenChildrenFocused;
- (BOOL)_accessibilitySupportsContentSizeCategory:(id)a3;
@end

@implementation MobileCalUIViewAccessibility

- (BOOL)_accessibilitySupportsContentSizeCategory:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalUIViewAccessibility *)self accessibilityIdentification];
  v6 = [v5 isEqualToString:@"_AXYearViewIdentifier"];

  if (v6)
  {
    if ([v4 isEqualToString:*MEMORY[0x29EDC80A0]])
    {
      v7 = 1;
      goto LABEL_10;
    }

    v10 = [v4 isEqualToString:*MEMORY[0x29EDC8050]];
LABEL_9:
    v7 = v10;
    goto LABEL_10;
  }

  v8 = [(MobileCalUIViewAccessibility *)self accessibilityIdentification];
  v9 = [v8 isEqualToString:@"_AXMonthViewIdentifier"];

  if (!v9)
  {
    v12.receiver = self;
    v12.super_class = MobileCalUIViewAccessibility;
    v10 = [(MobileCalUIViewAccessibility *)&v12 _accessibilitySupportsContentSizeCategory:v4];
    goto LABEL_9;
  }

  v7 = UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x29EDC80A8]) == NSOrderedDescending && UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x29EDC8068]) == NSOrderedAscending;
LABEL_10:

  return v7;
}

- (BOOL)_accessibilityDrawsFocusRingWhenChildrenFocused
{
  if (![(MobileCalUIViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    return 0;
  }

  v3 = [(MobileCalUIViewAccessibility *)self accessibilityIdentification];
  if ([v3 isEqualToString:@"_AXMonthViewIdentifier"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MobileCalUIViewAccessibility *)self accessibilityIdentification];
    v4 = [v5 isEqualToString:@"_AXYearViewIdentifier"];
  }

  return v4;
}

@end