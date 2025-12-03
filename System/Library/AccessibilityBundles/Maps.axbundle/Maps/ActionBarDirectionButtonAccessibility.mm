@interface ActionBarDirectionButtonAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation ActionBarDirectionButtonAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = [(ActionBarDirectionButtonAccessibility *)self safeSwiftValueForKey:@"textLabel"];
  text = [v2 text];
  v4 = [text length] != 0;

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

  image = [v4 image];
  imageAsset = [image imageAsset];

  v7 = [imageAsset safeStringForKey:@"assetName"];
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
  accessibilityLabel = [v10 accessibilityLabel];
  v11 = __AXStringForVariables();

  return v11;
}

@end