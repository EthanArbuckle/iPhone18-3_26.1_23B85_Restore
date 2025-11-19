@interface UIMapsButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation UIMapsButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(UIMapsButtonAccessibility *)self safeValueForKey:@"_accessibilityImagePath"];
  if ([v3 hasPrefix:@"UIButtonBarListIcon"])
  {
    v4 = @"LIST_BUTTON";
LABEL_5:
    v5 = AXMapsLocString(v4);
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"location.bottomleft.forward.to.point.topright.scurvepath.dashed"])
  {
    v4 = @"CUSTOM_ROUTE_RECENTER";
    goto LABEL_5;
  }

  v8.receiver = self;
  v8.super_class = UIMapsButtonAccessibility;
  v5 = [(UIMapsButtonAccessibility *)&v8 accessibilityLabel];
LABEL_7:
  v6 = v5;

  return v6;
}

@end