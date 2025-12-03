@interface CRLUISliderAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)isTracking;
- (CGRect)accessibilityFrame;
- (UITableViewCell)crlaxParentTableViewCell;
- (id)accessibilityLabel;
- (void)_crlaxInteractionDidStart;
- (void)_crlaxInteractionDidStop;
- (void)_crlaxPerformTargetActionsForControlEvents:(unint64_t)events;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)crlaxSetValue:(float)value andSendAction:(BOOL)action;
@end

@implementation CRLUISliderAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (UITableViewCell)crlaxParentTableViewCell
{
  superview = [(CRLUISliderAccessibility *)self superview];
  if (superview)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2Superview = [superview superview];

      superview = v2Superview;
      if (!v2Superview)
      {
        goto LABEL_8;
      }
    }

    v7 = 0;
    superview = superview;
    v4 = objc_opt_class();
    v5 = __CRLAccessibilityCastAsClass(v4, superview, 1, &v7);
    if (v7 == 1)
    {
      abort();
    }

    v2Superview = v5;
  }

  else
  {
    v2Superview = 0;
  }

LABEL_8:

  return v2Superview;
}

- (void)crlaxSetValue:(float)value andSendAction:(BOOL)action
{
  actionCopy = action;
  if (action)
  {
    [(CRLUISliderAccessibility *)self _crlaxInteractionDidStart];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100572AD4;
  v7[3] = &unk_10186FCD0;
  v7[4] = self;
  valueCopy = value;
  v9 = actionCopy;
  if (__CRLAccessibilityPerformSafeBlock(v7))
  {
    abort();
  }

  if (actionCopy)
  {
    [(CRLUISliderAccessibility *)self _crlaxInteractionDidStop];
  }
}

- (id)accessibilityLabel
{
  v8.receiver = self;
  v8.super_class = CRLUISliderAccessibility;
  accessibilityLabel = [(CRLUISliderAccessibility *)&v8 accessibilityLabel];
  if (![accessibilityLabel length])
  {
    crlaxParentTableViewCell = [(CRLUISliderAccessibility *)self crlaxParentTableViewCell];
    v5 = crlaxParentTableViewCell;
    if (crlaxParentTableViewCell)
    {
      accessibilityLabel2 = [crlaxParentTableViewCell accessibilityLabel];

      accessibilityLabel = accessibilityLabel2;
    }
  }

  return accessibilityLabel;
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
  crlaxDelegateForFrame = [(CRLUISliderAccessibility *)self crlaxDelegateForFrame];

  if (crlaxDelegateForFrame)
  {
    crlaxDelegateForFrame2 = [(CRLUISliderAccessibility *)self crlaxDelegateForFrame];
    [crlaxDelegateForFrame2 crlaxAccessibilityFrameForSlider:self];
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

- (void)_crlaxPerformTargetActionsForControlEvents:(unint64_t)events
{
  selfCopy = self;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CRLUISliderAccessibility *)selfCopy allTargets];
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
        v8 = [(CRLUISliderAccessibility *)selfCopy actionsForTarget:v7 forControlEvent:events];
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
                v14 = [v7 crlaxPerformSelectorFromString:v13 withObject:selfCopy];
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