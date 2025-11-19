@interface UIMapsSegmentAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation UIMapsSegmentAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TransportTypePicker"];
  [v3 validateClass:@"UISegmentedControl" hasInstanceVariable:@"_segments" withType:"NSMutableArray"];
}

- (id)accessibilityLabel
{
  v3 = [(UIMapsSegmentAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v4 = [v3 accessibilityIdentification];
  if (![v4 isEqualToString:@"arrowsButton"])
  {
    goto LABEL_6;
  }

  v5 = [v3 safeValueForKey:@"_segments"];
  if ([v5 count] != 2)
  {
LABEL_5:

LABEL_6:
    v11.receiver = self;
    v11.super_class = UIMapsSegmentAccessibility;
    v8 = [(UIMapsSegmentAccessibility *)&v11 accessibilityLabel];
    goto LABEL_7;
  }

  v6 = [v5 objectAtIndex:0];

  if (v6 == self)
  {
    v10 = @"BACK_DIRECTION";
  }

  else
  {
    v7 = [v5 objectAtIndex:1];

    if (v7 != self)
    {
      goto LABEL_5;
    }

    v10 = @"FORWARD_DIRECTION";
  }

  v8 = AXMapsLocString(v10);

LABEL_7:

  return v8;
}

@end