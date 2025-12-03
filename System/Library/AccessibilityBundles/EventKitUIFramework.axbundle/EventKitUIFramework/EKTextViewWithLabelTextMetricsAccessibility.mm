@interface EKTextViewWithLabelTextMetricsAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityIsLocationLink;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)_axLocationItem;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation EKTextViewWithLabelTextMetricsAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKEventDetailLocationItem"];
  [validationsCopy validateClass:@"EKEventDetailTitleCell" hasInstanceVariable:@"_locationItems" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"EKEventDetailLocationItem" hasInstanceVariable:@"_locationTapRecognizer" withType:"UITapGestureRecognizer"];
}

- (id)_axLocationItem
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  delegate = [v2 delegate];

  NSClassFromString(&cfstr_Ekeventdetaill.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = delegate;
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
  _axLocationItem = [(EKTextViewWithLabelTextMetricsAccessibility *)self _axLocationItem];
  v3 = _axLocationItem;
  if (_axLocationItem)
  {
    v4 = [_axLocationItem safeValueForKey:@"_locationTapRecognizer"];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    gestureRecognizers = [v5 gestureRecognizers];

    v7 = [gestureRecognizers countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(gestureRecognizers);
          }

          if (v4 == *(*(&v12 + 1) + 8 * i))
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }

        v7 = [gestureRecognizers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  accessibilityTraits = [(EKTextViewWithLabelTextMetricsAccessibility *)&v7 accessibilityTraits];
  accessibilityIsLocationLink = [(EKTextViewWithLabelTextMetricsAccessibility *)self accessibilityIsLocationLink];
  v5 = *MEMORY[0x29EDC7F98];
  if (!accessibilityIsLocationLink)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (BOOL)isAccessibilityElement
{
  _axURLCell = [(EKTextViewWithLabelTextMetricsAccessibility *)self _axURLCell];
  if (_axURLCell)
  {
    isAccessibilityElement = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = EKTextViewWithLabelTextMetricsAccessibility;
    isAccessibilityElement = [(EKTextViewWithLabelTextMetricsAccessibility *)&v6 isAccessibilityElement];
  }

  return isAccessibilityElement;
}

- (CGRect)accessibilityFrame
{
  _axURLCell = [(EKTextViewWithLabelTextMetricsAccessibility *)self _axURLCell];
  v4 = _axURLCell;
  if (_axURLCell)
  {
    [_axURLCell accessibilityFrame];
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
  _axURLCell = [(EKTextViewWithLabelTextMetricsAccessibility *)self _axURLCell];
  v4 = _axURLCell;
  if (_axURLCell)
  {
    v5 = [_axURLCell safeValueForKey:@"_URLTitleView"];
    accessibilityLabel = [v5 accessibilityLabel];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EKTextViewWithLabelTextMetricsAccessibility;
    accessibilityLabel = [(EKTextViewWithLabelTextMetricsAccessibility *)&v8 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end