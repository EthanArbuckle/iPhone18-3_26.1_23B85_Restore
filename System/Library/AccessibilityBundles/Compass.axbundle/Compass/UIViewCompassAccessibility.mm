@interface UIViewCompassAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilityScrollStatus;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation UIViewCompassAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CompassPageViewController" hasInstanceVariable:@"_altitudeLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CompassPageViewController" hasInstanceVariable:@"_placeLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CompassPageViewController" hasInstanceVariable:@"_degreesSymbolLabel" withType:"UILabel"];
}

- (BOOL)isAccessibilityElement
{
  accessibilityIdentifier = [(UIViewCompassAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"compassPageView"])
  {

    return 1;
  }

  accessibilityIdentifier2 = [(UIViewCompassAccessibility *)self accessibilityIdentifier];
  v5 = [accessibilityIdentifier2 isEqualToString:@"levelPageView"];

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
  accessibilityIdentifier = [(UIViewCompassAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"compassPageView"];

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

    _accessibilitySupplementaryFooterViews = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{3, v6, v11, v9}];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = UIViewCompassAccessibility;
    _accessibilitySupplementaryFooterViews = [(UIViewCompassAccessibility *)&v14 _accessibilitySupplementaryFooterViews];
  }

  return _accessibilitySupplementaryFooterViews;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v23 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  _accessibilitySupplementaryFooterViews = [(UIViewCompassAccessibility *)self _accessibilitySupplementaryFooterViews];
  v9 = [_accessibilitySupplementaryFooterViews countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(_accessibilitySupplementaryFooterViews);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        [(UIViewCompassAccessibility *)self convertPoint:v13 toView:x, y];
        if ([v13 pointInside:eventCopy withEvent:?])
        {
          v14 = v13;

          goto LABEL_11;
        }
      }

      v10 = [_accessibilitySupplementaryFooterViews countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17.receiver = self;
  v17.super_class = UIViewCompassAccessibility;
  v14 = [(UIViewCompassAccessibility *)&v17 _accessibilityHitTest:eventCopy withEvent:x, y];
LABEL_11:

  v15 = *MEMORY[0x29EDCA608];

  return v14;
}

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(UIViewCompassAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"compassPageView"];

  if (v4)
  {
    v5 = axCompassPageViewController();
    v6 = [v5 safeValueForKey:@"_degreesLabel"];
    accessibilityLabel = [v6 accessibilityLabel];

    v8 = [v5 safeValueForKey:@"_degreesSymbolLabel"];
    accessibilityLabel2 = [v8 accessibilityLabel];

    v10 = [v5 safeValueForKey:@"_directionLabel"];
    accessibilityLabel3 = [v10 accessibilityLabel];

    v12 = [accessibilityLabel stringByAppendingString:accessibilityLabel2];
    v7AccessibilityLabel = __UIAXStringForVariables();

LABEL_5:
    goto LABEL_7;
  }

  accessibilityIdentifier2 = [(UIViewCompassAccessibility *)self accessibilityIdentifier];
  v15 = [accessibilityIdentifier2 isEqualToString:@"levelPageView"];

  if (v15)
  {
    v5 = axLevelPageViewController();
    accessibilityLabel = [v5 safeValueForKey:@"_degreesLabel"];
    v7AccessibilityLabel = [accessibilityLabel accessibilityLabel];
    goto LABEL_5;
  }

  v17.receiver = self;
  v17.super_class = UIViewCompassAccessibility;
  v7AccessibilityLabel = [(UIViewCompassAccessibility *)&v17 accessibilityLabel];
LABEL_7:

  return v7AccessibilityLabel;
}

- (id)_accessibilityScrollStatus
{
  accessibilityIdentifier = [(UIViewCompassAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"compassPageView"];

  if (v4)
  {
    v5 = axCompassPageViewController();
    v6 = [v5 safeValueForKey:@"_coordinatesLabel"];
    accessibilityLabel = [v6 accessibilityLabel];

    accessibilityLabel2 = [(UIViewCompassAccessibility *)self accessibilityLabel];
    _accessibilityScrollStatus = __UIAXStringForVariables();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIViewCompassAccessibility;
    _accessibilityScrollStatus = [(UIViewCompassAccessibility *)&v11 _accessibilityScrollStatus];
  }

  return _accessibilityScrollStatus;
}

- (id)accessibilityHint
{
  accessibilityIdentifier = [(UIViewCompassAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"compassPageView"];

  if (v4)
  {
    accessibilityHint = accessibilityLocalizedString(@"compass.usage.hint");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIViewCompassAccessibility;
    accessibilityHint = [(UIViewCompassAccessibility *)&v7 accessibilityHint];
  }

  return accessibilityHint;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if ((scroll - 1) > 1)
  {
    v9.receiver = self;
    v9.super_class = UIViewCompassAccessibility;
    return [(UIViewCompassAccessibility *)&v9 accessibilityScroll:scroll];
  }

  else
  {
    v4 = axCompassController();
    v5 = [v4 safeValueForKey:@"_pageControl"];

    if (scroll == 2)
    {
      [v5 accessibilityIncrement];
    }

    else
    {
      [v5 accessibilityDecrement];
    }

    v7 = *MEMORY[0x29EDC7EA8];
    accessibilityValue = [v5 accessibilityValue];
    UIAccessibilityPostNotification(v7, accessibilityValue);

    return 1;
  }
}

@end