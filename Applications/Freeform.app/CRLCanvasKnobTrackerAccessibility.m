@interface CRLCanvasKnobTrackerAccessibility
+ (id)crlaxCastFrom:(id)a3;
+ (id)crlaxKnobTrackerWithRep:(id)a3 knob:(id)a4;
- (CGRect)crlaxCurrentBoundsForStandardKnobs;
- (CRLCanvasKnobAccessibility)crlaxKnob;
- (void)crlaxAnnounceString:(id)a3;
- (void)crlaxPerformBlockWhilePreventingDisplayOfCurrentValueHUD:(id)a3;
- (void)endMovingKnob;
@end

@implementation CRLCanvasKnobTrackerAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

+ (id)crlaxKnobTrackerWithRep:(id)a3 knob:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1004FF258;
  v21 = sub_1004FF268;
  v22 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1004FF270;
  v12[3] = &unk_10185DF18;
  v15 = &v17;
  v16 = a1;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  if (__CRLAccessibilityPerformSafeBlock(v12))
  {
    abort();
  }

  v10 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v10;
}

- (CRLCanvasKnobAccessibility)crlaxKnob
{
  v8 = 0;
  v2 = [(CRLCanvasKnobTrackerAccessibility *)self crlaxTarget];
  v3 = [v2 knob];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (CGRect)crlaxCurrentBoundsForStandardKnobs
{
  v2 = [(CRLCanvasKnobTrackerAccessibility *)self crlaxTarget];
  [v2 currentBoundsForStandardKnobs];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)crlaxPerformBlockWhilePreventingDisplayOfCurrentValueHUD:(id)a3
{
  v4 = a3;
  if ([(CRLCanvasKnobTrackerAccessibility *)self _crlaxIsPerformingBlockWhilePreventingDisplayOfCurrentValueHUD])
  {
    v4[2]();
  }

  else
  {
    [(CRLCanvasKnobTrackerAccessibility *)self _crlaxSetIsPerformingBlockWhilePreventingDisplayOfCurrentValueHUD:1];
    v4[2]();
    [(CRLCanvasKnobTrackerAccessibility *)self _crlaxSetIsPerformingBlockWhilePreventingDisplayOfCurrentValueHUD:0];
  }
}

- (void)crlaxAnnounceString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    CRLAccessibilityPostAnnouncementNotification(0, v3);
  }
}

- (void)endMovingKnob
{
  v5.receiver = self;
  v5.super_class = CRLCanvasKnobTrackerAccessibility;
  [(CRLCanvasKnobTrackerAccessibility *)&v5 endMovingKnob];
  if ([(CRLCanvasKnobTrackerAccessibility *)self crlaxShouldAnnounceValueUponEndMovingKnob])
  {
    v3 = [(CRLCanvasKnobTrackerAccessibility *)self crlaxKnob];
    v4 = [v3 crlaxValue];
    [(CRLCanvasKnobTrackerAccessibility *)self crlaxAnnounceString:v4];
  }
}

@end