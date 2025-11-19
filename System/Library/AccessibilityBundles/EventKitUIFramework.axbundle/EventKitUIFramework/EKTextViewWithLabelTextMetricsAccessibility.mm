@interface EKTextViewWithLabelTextMetricsAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityIsLocationLink;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)_axLocationItem;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation EKTextViewWithLabelTextMetricsAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKEventDetailLocationItem"];
  [v3 validateClass:@"EKEventDetailTitleCell" hasInstanceVariable:@"_locationItems" withType:"NSMutableArray"];
  [v3 validateClass:@"EKEventDetailLocationItem" hasInstanceVariable:@"_locationTapRecognizer" withType:"UITapGestureRecognizer"];
}

- (id)_axLocationItem
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 delegate];

  NSClassFromString(&cfstr_Ekeventdetaill.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)accessibilityIsLocationLink
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = [(EKTextViewWithLabelTextMetricsAccessibility *)self _axLocationItem];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 safeValueForKey:@"_locationTapRecognizer"];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    v6 = [v5 gestureRecognizers];

    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if (v4 == *(*(&v12 + 1) + 8 * i))
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v7;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = EKTextViewWithLabelTextMetricsAccessibility;
  v3 = [(EKTextViewWithLabelTextMetricsAccessibility *)&v7 accessibilityTraits];
  v4 = [(EKTextViewWithLabelTextMetricsAccessibility *)self accessibilityIsLocationLink];
  v5 = *MEMORY[0x29EDC7F98];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(EKTextViewWithLabelTextMetricsAccessibility *)self _axURLCell];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = EKTextViewWithLabelTextMetricsAccessibility;
    v4 = [(EKTextViewWithLabelTextMetricsAccessibility *)&v6 isAccessibilityElement];
  }

  return v4;
}

- (CGRect)accessibilityFrame
{
  v3 = [(EKTextViewWithLabelTextMetricsAccessibility *)self _axURLCell];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityFrame];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = EKTextViewWithLabelTextMetricsAccessibility;
    [(EKTextViewWithLabelTextMetricsAccessibility *)&v17 accessibilityFrame];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)accessibilityLabel
{
  v3 = [(EKTextViewWithLabelTextMetricsAccessibility *)self _axURLCell];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 safeValueForKey:@"_URLTitleView"];
    v6 = [v5 accessibilityLabel];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EKTextViewWithLabelTextMetricsAccessibility;
    v6 = [(EKTextViewWithLabelTextMetricsAccessibility *)&v8 accessibilityLabel];
  }

  return v6;
}

@end