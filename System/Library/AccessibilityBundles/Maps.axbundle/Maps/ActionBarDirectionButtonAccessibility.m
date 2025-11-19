@interface ActionBarDirectionButtonAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation ActionBarDirectionButtonAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = [(ActionBarDirectionButtonAccessibility *)self safeSwiftValueForKey:@"textLabel"];
  v3 = [v2 text];
  v4 = [v3 length] != 0;

  return v4;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(ActionBarDirectionButtonAccessibility *)self safeSwiftValueForKey:@"symbolImageView"];
  v4 = __UIAccessibilityCastAsClass();

  if (!v4)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v5 = [v4 image];
  v6 = [v5 imageAsset];

  v7 = [v6 safeStringForKey:@"assetName"];
  if ([v7 isEqualToString:@"car.fill"])
  {
    v8 = @"CAR_DIRECTIONS";
  }

  else if ([v7 isEqualToString:@"figure.walk"])
  {
    v8 = @"WALKING_DIRECTIONS";
  }

  else if ([v7 isEqualToString:@"tram.fill"])
  {
    v8 = @"BUS_DIRECTIONS";
  }

  else
  {
    if (![v7 isEqualToString:@"bicycle"])
    {
      v9 = 0;
      goto LABEL_12;
    }

    v8 = @"CYCLING_DIRECTIONS";
  }

  v9 = AXMapsLocString(v8);
LABEL_12:

LABEL_13:
  v10 = [(ActionBarDirectionButtonAccessibility *)self safeSwiftValueForKey:@"textLabel"];
  v13 = [v10 accessibilityLabel];
  v11 = __AXStringForVariables();

  return v11;
}

@end