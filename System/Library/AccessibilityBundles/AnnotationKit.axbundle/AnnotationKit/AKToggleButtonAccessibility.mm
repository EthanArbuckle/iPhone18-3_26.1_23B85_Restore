@interface AKToggleButtonAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation AKToggleButtonAccessibility

- (id)accessibilityLabel
{
  v17 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 imageForState:0];

  accessibilityIdentifier = [v4 accessibilityIdentifier];
  if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Line_Stroke_Thin"])
  {
    v6 = @"line.shape.none";
LABEL_3:
    v7 = accessibilityLocalizedString(v6);
    v8 = @"stroke.description.thickness.thin";
LABEL_10:
    v15 = accessibilityLocalizedString(v8);
    v11 = __UIAXStringForVariables();

    goto LABEL_11;
  }

  if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Line_Stroke_Medium"])
  {
    v9 = @"line.shape.none";
LABEL_6:
    v7 = accessibilityLocalizedString(v9);
    v8 = @"stroke.description.thickness.medium";
    goto LABEL_10;
  }

  if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Line_Stroke_Thick"])
  {
    v10 = @"line.shape.none";
LABEL_9:
    v7 = accessibilityLocalizedString(v10);
    v8 = @"stroke.description.thickness.thick";
    goto LABEL_10;
  }

  if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Arrow_Stroke_Thin"])
  {
    v6 = @"line.shape.single";
    goto LABEL_3;
  }

  if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Arrow_Stroke_Medium"])
  {
    v9 = @"line.shape.single";
    goto LABEL_6;
  }

  if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Arrow_Stroke_Thick"])
  {
    v10 = @"line.shape.single";
    goto LABEL_9;
  }

  if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_ArrowDouble_Stroke_Thin"])
  {
    v6 = @"line.shape.double";
    goto LABEL_3;
  }

  if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_ArrowDouble_Stroke_Medium"])
  {
    v9 = @"line.shape.double";
    goto LABEL_6;
  }

  if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_ArrowDouble_Stroke_Thick"])
  {
    v10 = @"line.shape.double";
    goto LABEL_9;
  }

  if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Circle_Filled"])
  {
    goto LABEL_27;
  }

  if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Circle_Stroke_Thin"])
  {
LABEL_29:
    v13 = @"stroke.description.thickness.thin";
    goto LABEL_34;
  }

  if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Circle_Stroke_Medium"])
  {
LABEL_31:
    v13 = @"stroke.description.thickness.medium";
    goto LABEL_34;
  }

  if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Circle_Stroke_Thick"])
  {
LABEL_33:
    v13 = @"stroke.description.thickness.thick";
    goto LABEL_34;
  }

  if (![accessibilityIdentifier hasPrefix:@"AK_Attribute_Bubble_Filled"])
  {
    if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Bubble_Stroke_Thin"])
    {
      goto LABEL_29;
    }

    if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Bubble_Stroke_Medium"])
    {
      goto LABEL_31;
    }

    if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Bubble_Stroke_Thick"])
    {
      goto LABEL_33;
    }

    if (![accessibilityIdentifier hasPrefix:@"AK_Attribute_Triangle_Filled"])
    {
      if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Triangle_Stroke_Thin"])
      {
        goto LABEL_29;
      }

      if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Triangle_Stroke_Medium"])
      {
        goto LABEL_31;
      }

      if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Triangle_Stroke_Thick"])
      {
        goto LABEL_33;
      }

      if (![accessibilityIdentifier hasPrefix:@"AK_Attribute_Square_Filled"])
      {
        if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Square_Stroke_Thin"])
        {
          goto LABEL_29;
        }

        if ([accessibilityIdentifier hasPrefix:@"AK_Attribute_Square_Stroke_Medium"])
        {
          goto LABEL_31;
        }

        if (![accessibilityIdentifier hasPrefix:@"AK_Attribute_Square_Stroke_Thick"])
        {
          v16.receiver = self;
          v16.super_class = AKToggleButtonAccessibility;
          accessibilityLabel = [(AKToggleButtonAccessibility *)&v16 accessibilityLabel];
          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }
  }

LABEL_27:
  v13 = @"stroke.description.filled";
LABEL_34:
  accessibilityLabel = accessibilityLocalizedString(v13);
LABEL_35:
  v11 = accessibilityLabel;
LABEL_11:

  return v11;
}

- (id)accessibilityValue
{
  if ([(AKToggleButtonAccessibility *)self safeBoolForKey:@"isSelected"])
  {
    return @"1";
  }

  else
  {
    return @"0";
  }
}

@end