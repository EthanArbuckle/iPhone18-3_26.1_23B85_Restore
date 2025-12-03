@interface BKAVRouteButtonAccessibility
- (id)accessibilityLabel;
- (void)setAccessibilityLabel:(id)label;
@end

@implementation BKAVRouteButtonAccessibility

- (id)accessibilityLabel
{
  bkaxAccessibilityLabelOverride = [(BKAVRouteButtonAccessibility *)self bkaxAccessibilityLabelOverride];

  if (bkaxAccessibilityLabelOverride)
  {
    bkaxAccessibilityLabelOverride2 = [(BKAVRouteButtonAccessibility *)self bkaxAccessibilityLabelOverride];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BKAVRouteButtonAccessibility;
    bkaxAccessibilityLabelOverride2 = [(BKAVRouteButtonAccessibility *)&v14 accessibilityLabel];
    if (!bkaxAccessibilityLabelOverride2)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = [(BKAVRouteButtonAccessibility *)self imaxValueForKey:@"subviews", 0];
      bkaxAccessibilityLabelOverride2 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
      if (bkaxAccessibilityLabelOverride2)
      {
        v6 = *v11;
        while (2)
        {
          for (i = 0; i != bkaxAccessibilityLabelOverride2; i = i + 1)
          {
            if (*v11 != v6)
            {
              objc_enumerationMutation(v5);
            }

            v8 = *(*(&v10 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              bkaxAccessibilityLabelOverride2 = [v8 accessibilityLabel];
              goto LABEL_14;
            }
          }

          bkaxAccessibilityLabelOverride2 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
          if (bkaxAccessibilityLabelOverride2)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  return bkaxAccessibilityLabelOverride2;
}

- (void)setAccessibilityLabel:(id)label
{
  labelCopy = label;
  [(BKAVRouteButtonAccessibility *)self bkaxSetAccessibilityLabelOverride:labelCopy];
  v5 = [(BKAVRouteButtonAccessibility *)self imaxValueForKey:@"_routePickerButton"];
  [v5 setAccessibilityLabel:labelCopy];
}

@end