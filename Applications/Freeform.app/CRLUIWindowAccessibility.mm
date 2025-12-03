@interface CRLUIWindowAccessibility
+ (id)crlaxCastFrom:(id)from;
- (UIResponder)crlaxFirstResponder;
- (id)_crlaxCalloutBarSubviewsContainedInView:(id)view;
- (id)accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CRLUIWindowAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (UIResponder)crlaxFirstResponder
{
  crlaxTarget = [(CRLUIWindowAccessibility *)self crlaxTarget];
  firstResponder = [crlaxTarget firstResponder];

  return firstResponder;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CRLUIWindowAccessibility;
  [(CRLUIWindowAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CRLUIWindowAccessibility *)self crlaxLoadAccessibilityInformation];
}

- (id)accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  crlaxTarget = [(CRLUIWindowAccessibility *)self crlaxTarget];
  subviews = [crlaxTarget subviews];

  v10 = [subviews countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(subviews);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        NSClassFromString(@"_UIEditMenuContainerView");
        if (objc_opt_isKindOfClass())
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          subviews2 = [v14 subviews];
          v16 = [subviews2 countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v35;
            while (2)
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v35 != v18)
                {
                  objc_enumerationMutation(subviews2);
                }

                v20 = *(*(&v34 + 1) + 8 * j);
                NSClassFromString(@"_UIEditMenuListView");
                if (objc_opt_isKindOfClass())
                {
                  [v20 accessibilityFrame];
                  v46.x = x;
                  v46.y = y;
                  if (CGRectContainsPoint(v48, v46))
                  {
                    v32 = 0u;
                    v33 = 0u;
                    v30 = 0u;
                    v31 = 0u;
                    v21 = [(CRLUIWindowAccessibility *)self _crlaxCalloutBarSubviewsContainedInView:v20];
                    v22 = [v21 countByEnumeratingWithState:&v30 objects:v42 count:16];
                    if (v22)
                    {
                      v23 = v22;
                      v24 = *v31;
                      while (2)
                      {
                        for (k = 0; k != v23; k = k + 1)
                        {
                          if (*v31 != v24)
                          {
                            objc_enumerationMutation(v21);
                          }

                          v26 = *(*(&v30 + 1) + 8 * k);
                          [v26 accessibilityFrame];
                          v47.x = x;
                          v47.y = y;
                          if (CGRectContainsPoint(v49, v47))
                          {
                            v27 = v26;

                            goto LABEL_31;
                          }
                        }

                        v23 = [v21 countByEnumeratingWithState:&v30 objects:v42 count:16];
                        if (v23)
                        {
                          continue;
                        }

                        break;
                      }
                    }
                  }

                  goto LABEL_29;
                }
              }

              v17 = [subviews2 countByEnumeratingWithState:&v34 objects:v43 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

LABEL_29:

          goto LABEL_30;
        }
      }

      v11 = [subviews countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:

  v29.receiver = self;
  v29.super_class = CRLUIWindowAccessibility;
  v27 = [(CRLUIWindowAccessibility *)&v29 accessibilityHitTest:eventCopy withEvent:x, y];
LABEL_31:

  return v27;
}

- (id)_crlaxCalloutBarSubviewsContainedInView:(id)view
{
  viewCopy = view;
  v4 = +[NSMutableArray array];
  v32[0] = NSClassFromString(@"_UIEditMenuListViewCell");
  v32[1] = NSClassFromString(@"_UIEditMenuPageButton");
  v5 = [NSArray arrayWithObjects:v32 count:2];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = viewCopy;
  obj = [viewCopy subviews];
  v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = v5;
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if (objc_opt_isKindOfClass())
              {

                [v4 addObject:v10];
                goto LABEL_16;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v16 = [(CRLUIWindowAccessibility *)self _crlaxCalloutBarSubviewsContainedInView:v10];
        [v4 addObjectsFromArray:v16];

LABEL_16:
        ;
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v17 = [v4 copy];

  return v17;
}

@end