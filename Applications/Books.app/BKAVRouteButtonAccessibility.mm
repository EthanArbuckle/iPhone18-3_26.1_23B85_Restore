@interface BKAVRouteButtonAccessibility
- (id)accessibilityLabel;
- (void)setAccessibilityLabel:(id)a3;
@end

@implementation BKAVRouteButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(BKAVRouteButtonAccessibility *)self bkaxAccessibilityLabelOverride];

  if (v3)
  {
    v4 = [(BKAVRouteButtonAccessibility *)self bkaxAccessibilityLabelOverride];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BKAVRouteButtonAccessibility;
    v4 = [(BKAVRouteButtonAccessibility *)&v14 accessibilityLabel];
    if (!v4)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = [(BKAVRouteButtonAccessibility *)self imaxValueForKey:@"subviews", 0];
      v4 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
      if (v4)
      {
        v6 = *v11;
        while (2)
        {
          for (i = 0; i != v4; i = i + 1)
          {
            if (*v11 != v6)
            {
              objc_enumerationMutation(v5);
            }

            v8 = *(*(&v10 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v4 = [v8 accessibilityLabel];
              goto LABEL_14;
            }
          }

          v4 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  return v4;
}

- (void)setAccessibilityLabel:(id)a3
{
  v4 = a3;
  [(BKAVRouteButtonAccessibility *)self bkaxSetAccessibilityLabelOverride:v4];
  v5 = [(BKAVRouteButtonAccessibility *)self imaxValueForKey:@"_routePickerButton"];
  [v5 setAccessibilityLabel:v4];
}

@end