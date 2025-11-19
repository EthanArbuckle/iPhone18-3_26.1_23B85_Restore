@interface CRLCanvasResizeKnobTrackerAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (id)crlaxHUDDisplayString;
- (void)p_updateHUD;
@end

@implementation CRLCanvasResizeKnobTrackerAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (id)crlaxHUDDisplayString
{
  v8 = 0;
  v2 = [(CRLCanvasResizeKnobTrackerAccessibility *)self crlaxTarget];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, v2, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v5 = v4;

  v6 = [v5 crlaxHudLabelText];

  return v6;
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