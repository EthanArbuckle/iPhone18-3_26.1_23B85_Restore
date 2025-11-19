@interface UIMapsNavigationButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation UIMapsNavigationButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(UIMapsNavigationButtonAccessibility *)self accessibilityIdentification];
  if ([v3 isEqualToString:@"swapDirectionsButton"])
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
      v7 = [(UIMapsNavigationButtonAccessibility *)&v9 accessibilityLabel];
      goto LABEL_7;
    }

    v6 = @"MINIMIZE_BUTTON";
  }

  v7 = AXMapsLocString(v6);
LABEL_7:
  v4 = v7;

LABEL_8:

  return v4;
}

@end