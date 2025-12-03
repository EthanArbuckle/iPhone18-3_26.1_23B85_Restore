@interface CRLCanvasResizeKnobTrackerAccessibility
+ (id)crlaxCastFrom:(id)from;
- (id)crlaxHUDDisplayString;
- (void)p_updateHUD;
@end

@implementation CRLCanvasResizeKnobTrackerAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (id)crlaxHUDDisplayString
{
  v8 = 0;
  crlaxTarget = [(CRLCanvasResizeKnobTrackerAccessibility *)self crlaxTarget];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, crlaxTarget, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v5 = v4;

  crlaxHudLabelText = [v5 crlaxHudLabelText];

  return crlaxHudLabelText;
}

- (void)p_updateHUD
{
  if (![(CRLCanvasKnobTrackerAccessibility *)self crlaxIsPerformingBlockWhilePreventingDisplayOfCurrentValueHUD])
  {
    v3.receiver = self;
    v3.super_class = CRLCanvasResizeKnobTrackerAccessibility;
    [(CRLCanvasResizeKnobTrackerAccessibility *)&v3 p_updateHUD];
  }
}

@end