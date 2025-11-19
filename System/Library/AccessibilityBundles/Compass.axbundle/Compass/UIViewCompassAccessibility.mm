@interface UIViewCompassAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityScrollStatus;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation UIViewCompassAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CompassPageViewController" hasInstanceVariable:@"_altitudeLabel" withType:"UILabel"];
  [v3 validateClass:@"CompassPageViewController" hasInstanceVariable:@"_placeLabel" withType:"UILabel"];
  [v3 validateClass:@"CompassPageViewController" hasInstanceVariable:@"_degreesSymbolLabel" withType:"UILabel"];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(UIViewCompassAccessibility *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"compassPageView"])
  {

    return 1;
  }

  v4 = [(UIViewCompassAccessibility *)self accessibilityIdentifier];
  v5 = [v4 isEqualToString:@"levelPageView"];

  if (v5)
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = UIViewCompassAccessibility;
  return [(UIViewCompassAccessibility *)&v7 isAccessibilityElement];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [(UIViewCompassAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"compassPageView"];

  if (v4)
  {
    v5 = axCompassPageViewController();
    v6 = [v5 safeValueForKey:@"_coordinatesLabel"];
    v7 = accessibilityLocalizedString(@"coordinates.hint");
    [v6 setAccessibilityHint:v7];

    v8 = [v5 safeValueForKey:@"_altitudeLabel"];
    v9 = v8;
    if (v8 && [v8 _accessibilityViewIsVisible])
    {
      [v9 setIsAccessibilityElement:1];
    }

    v10 = [v5 safeValueForKey:@"_placeLabel"];
    v11 = v10;
    if (v10 && [v10 _accessibilityViewIsVisible])
    {
      [v11 setIsAccessibilityElement:1];
    }

    v12 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{3, v6, v11, v9}];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = UIViewCompassAccessibility;
    v12 = [(UIViewCompassAccessibility *)&v14 _accessibilitySupplementaryFooterViews];
  }

  return v12;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v23 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(UIViewCompassAccessibility *)self _accessibilitySupplementaryFooterViews];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        [(UIViewCompassAccessibility *)self convertPoint:v13 toView:x, y];
        if ([v13 pointInside:v7 withEvent:?])
        {
          v14 = v13;

          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17.receiver = self;
  v17.super_class = UIViewCompassAccessibility;
  v14 = [(UIViewCompassAccessibility *)&v17 _accessibilityHitTest:v7 withEvent:x, y];
LABEL_11:

  v15 = *MEMORY[0x29EDCA608];

  return v14;
}

- (id)accessibilityLabel
{
  v3 = [(UIViewCompassAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"compassPageView"];

  if (v4)
  {
    v5 = axCompassPageViewController();
    v6 = [v5 safeValueForKey:@"_degreesLabel"];
    v7 = [v6 accessibilityLabel];

    v8 = [v5 safeValueForKey:@"_degreesSymbolLabel"];
    v9 = [v8 accessibilityLabel];

    v10 = [v5 safeValueForKey:@"_directionLabel"];
    v11 = [v10 accessibilityLabel];

    v12 = [v7 stringByAppendingString:v9];
    v13 = __UIAXStringForVariables();

LABEL_5:
    goto LABEL_7;
  }

  v14 = [(UIViewCompassAccessibility *)self accessibilityIdentifier];
  v15 = [v14 isEqualToString:@"levelPageView"];

  if (v15)
  {
    v5 = axLevelPageViewController();
    v7 = [v5 safeValueForKey:@"_degreesLabel"];
    v13 = [v7 accessibilityLabel];
    goto LABEL_5;
  }

  v17.receiver = self;
  v17.super_class = UIViewCompassAccessibility;
  v13 = [(UIViewCompassAccessibility *)&v17 accessibilityLabel];
LABEL_7:

  return v13;
}

- (id)_accessibilityScrollStatus
{
  v3 = [(UIViewCompassAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"compassPageView"];

  if (v4)
  {
    v5 = axCompassPageViewController();
    v6 = [v5 safeValueForKey:@"_coordinatesLabel"];
    v7 = [v6 accessibilityLabel];

    v8 = [(UIViewCompassAccessibility *)self accessibilityLabel];
    v9 = __UIAXStringForVariables();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIViewCompassAccessibility;
    v9 = [(UIViewCompassAccessibility *)&v11 _accessibilityScrollStatus];
  }

  return v9;
}

- (id)accessibilityHint
{
  v3 = [(UIViewCompassAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"compassPageView"];

  if (v4)
  {
    v5 = accessibilityLocalizedString(@"compass.usage.hint");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIViewCompassAccessibility;
    v5 = [(UIViewCompassAccessibility *)&v7 accessibilityHint];
  }

  return v5;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  if ((a3 - 1) > 1)
  {
    v9.receiver = self;
    v9.super_class = UIViewCompassAccessibility;
    return [(UIViewCompassAccessibility *)&v9 accessibilityScroll:a3];
  }

  else
  {
    v4 = axCompassController();
    v5 = [v4 safeValueForKey:@"_pageControl"];

    if (a3 == 2)
    {
      [v5 accessibilityIncrement];
    }

    else
    {
      [v5 accessibilityDecrement];
    }

    v7 = *MEMORY[0x29EDC7EA8];
    v8 = [v5 accessibilityValue];
    UIAccessibilityPostNotification(v7, v8);

    return 1;
  }
}

@end