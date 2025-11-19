@interface CRLUISliderAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)isTracking;
- (CGRect)accessibilityFrame;
- (UITableViewCell)crlaxParentTableViewCell;
- (id)accessibilityLabel;
- (void)_crlaxInteractionDidStart;
- (void)_crlaxInteractionDidStop;
- (void)_crlaxPerformTargetActionsForControlEvents:(unint64_t)a3;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)crlaxSetValue:(float)a3 andSendAction:(BOOL)a4;
@end

@implementation CRLUISliderAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (UITableViewCell)crlaxParentTableViewCell
{
  v2 = [(CRLUISliderAccessibility *)self superview];
  if (v2)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    v7 = 0;
    v2 = v2;
    v4 = objc_opt_class();
    v5 = __CRLAccessibilityCastAsClass(v4, v2, 1, &v7);
    if (v7 == 1)
    {
      abort();
    }

    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

LABEL_8:

  return v3;
}

- (void)crlaxSetValue:(float)a3 andSendAction:(BOOL)a4
{
  v4 = a4;
  if (a4)
  {
    [(CRLUISliderAccessibility *)self _crlaxInteractionDidStart];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100572AD4;
  v7[3] = &unk_10186FCD0;
  v7[4] = self;
  v8 = a3;
  v9 = v4;
  if (__CRLAccessibilityPerformSafeBlock(v7))
  {
    abort();
  }

  if (v4)
  {
    [(CRLUISliderAccessibility *)self _crlaxInteractionDidStop];
  }
}

- (id)accessibilityLabel
{
  v8.receiver = self;
  v8.super_class = CRLUISliderAccessibility;
  v3 = [(CRLUISliderAccessibility *)&v8 accessibilityLabel];
  if (![v3 length])
  {
    v4 = [(CRLUISliderAccessibility *)self crlaxParentTableViewCell];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 accessibilityLabel];

      v3 = v6;
    }
  }

  return v3;
}

- (void)accessibilityIncrement
{
  [(CRLUISliderAccessibility *)self _crlaxInteractionDidStart];
  v3.receiver = self;
  v3.super_class = CRLUISliderAccessibility;
  [(CRLUISliderAccessibility *)&v3 accessibilityIncrement];
  [(CRLUISliderAccessibility *)self _crlaxInteractionDidStop];
}

- (void)accessibilityDecrement
{
  [(CRLUISliderAccessibility *)self _crlaxInteractionDidStart];
  v3.receiver = self;
  v3.super_class = CRLUISliderAccessibility;
  [(CRLUISliderAccessibility *)&v3 accessibilityDecrement];
  [(CRLUISliderAccessibility *)self _crlaxInteractionDidStop];
}

- (CGRect)accessibilityFrame
{
  v3 = [(CRLUISliderAccessibility *)self crlaxDelegateForFrame];

  if (v3)
  {
    v4 = [(CRLUISliderAccessibility *)self crlaxDelegateForFrame];
    [v4 crlaxAccessibilityFrameForSlider:self];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = CRLUISliderAccessibility;
    [(CRLUISliderAccessibility *)&v21 accessibilityFrame];
    v6 = v13;
    v8 = v14;
    v10 = v15;
    v12 = v16;
  }

  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)isTracking
{
  if ([(CRLUISliderAccessibility *)self _crlaxShouldForceIsTracking])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CRLUISliderAccessibility;
  return [(CRLUISliderAccessibility *)&v4 isTracking];
}

- (void)_crlaxPerformTargetActionsForControlEvents:(unint64_t)a3
{
  v3 = self;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CRLUISliderAccessibility *)v3 allTargets];
  v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v17 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v8 = [(CRLUISliderAccessibility *)v3 actionsForTarget:v7 forControlEvent:a3];
        v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v20;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v19 + 1) + 8 * j);
              if ([v13 hasSuffix:@":"])
              {
                v14 = [v7 crlaxPerformSelectorFromString:v13 withObject:v3];
              }

              else
              {
                v15 = [v7 crlaxPerformSelectorFromString:v13];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v10);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }
}

- (void)_crlaxInteractionDidStart
{
  if ([(CRLUISliderAccessibility *)self _crlaxShouldForceIsTracking])
  {
    if (CRLAccessibilityShouldPerformValidationChecks())
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Mismatched calls to crlaxM<Start|End>SliderInteraction", v4, v5, v6, v7, v8, v9))
      {
        abort();
      }
    }
  }

  else
  {
    [(CRLUISliderAccessibility *)self _crlaxSetShouldForceIsTracking:1];

    [(CRLUISliderAccessibility *)self _crlaxPerformTargetActionsForControlEvents:1];
  }
}

- (void)_crlaxInteractionDidStop
{
  if ([(CRLUISliderAccessibility *)self _crlaxShouldForceIsTracking])
  {
    [(CRLUISliderAccessibility *)self _crlaxSetShouldForceIsTracking:0];

    [(CRLUISliderAccessibility *)self _crlaxPerformTargetActionsForControlEvents:64];
  }

  else if (CRLAccessibilityShouldPerformValidationChecks())
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
    if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Mismatched calls to crlaxM<Start|End>SliderInteraction", v4, v5, v6, v7, v8, v9))
    {
      abort();
    }
  }
}

@end