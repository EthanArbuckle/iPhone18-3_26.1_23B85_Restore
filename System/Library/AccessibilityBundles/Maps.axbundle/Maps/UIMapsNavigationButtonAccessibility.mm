@interface UIMapsNavigationButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation UIMapsNavigationButtonAccessibility

- (id)accessibilityLabel
{
  accessibilityIdentification = [(UIMapsNavigationButtonAccessibility *)self accessibilityIdentification];
  if ([accessibilityIdentification isEqualToString:@"swapDirectionsButton"])
  {
    v4 = AXMapsLocString(@"SWAP_DIRECTIONS");
    goto LABEL_8;
  }

  v5 = [(UIMapsNavigationButtonAccessibility *)self safeValueForKey:@"_accessibilityImagePath"];
  if ([v5 hasPrefix:@"DirectionsListView"] || objc_msgSend(v5, "hasPrefix:", @"UIButtonBarListIcon"))
  {
    v6 = @"LIST_BUTTON";
  }

  else
  {
    if (![v5 isEqualToString:@"DirectionsSwitch.png"])
    {
      v9.receiver = self;
      v9.super_class = UIMapsNavigationButtonAccessibility;
      accessibilityLabel = [(UIMapsNavigationButtonAccessibility *)&v9 accessibilityLabel];
      goto LABEL_7;
    }

    v6 = @"MINIMIZE_BUTTON";
  }

  accessibilityLabel = AXMapsLocString(v6);
LABEL_7:
  v4 = accessibilityLabel;

LABEL_8:

  return v4;
}

@end