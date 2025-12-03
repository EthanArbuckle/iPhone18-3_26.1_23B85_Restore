@interface CRLCanvasKnobTrackerAccessibility
+ (id)crlaxCastFrom:(id)from;
+ (id)crlaxKnobTrackerWithRep:(id)rep knob:(id)knob;
- (CGRect)crlaxCurrentBoundsForStandardKnobs;
- (CRLCanvasKnobAccessibility)crlaxKnob;
- (void)crlaxAnnounceString:(id)string;
- (void)crlaxPerformBlockWhilePreventingDisplayOfCurrentValueHUD:(id)d;
- (void)endMovingKnob;
@end

@implementation CRLCanvasKnobTrackerAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

+ (id)crlaxKnobTrackerWithRep:(id)rep knob:(id)knob
{
  repCopy = rep;
  knobCopy = knob;
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
  selfCopy = self;
  v8 = repCopy;
  v13 = v8;
  v9 = knobCopy;
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
  crlaxTarget = [(CRLCanvasKnobTrackerAccessibility *)self crlaxTarget];
  knob = [crlaxTarget knob];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, knob, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (CGRect)crlaxCurrentBoundsForStandardKnobs
{
  crlaxTarget = [(CRLCanvasKnobTrackerAccessibility *)self crlaxTarget];
  [crlaxTarget currentBoundsForStandardKnobs];
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

- (void)crlaxPerformBlockWhilePreventingDisplayOfCurrentValueHUD:(id)d
{
  dCopy = d;
  if ([(CRLCanvasKnobTrackerAccessibility *)self _crlaxIsPerformingBlockWhilePreventingDisplayOfCurrentValueHUD])
  {
    dCopy[2]();
  }

  else
  {
    [(CRLCanvasKnobTrackerAccessibility *)self _crlaxSetIsPerformingBlockWhilePreventingDisplayOfCurrentValueHUD:1];
    dCopy[2]();
    [(CRLCanvasKnobTrackerAccessibility *)self _crlaxSetIsPerformingBlockWhilePreventingDisplayOfCurrentValueHUD:0];
  }
}

- (void)crlaxAnnounceString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    CRLAccessibilityPostAnnouncementNotification(0, stringCopy);
  }
}

- (void)endMovingKnob
{
  v5.receiver = self;
  v5.super_class = CRLCanvasKnobTrackerAccessibility;
  [(CRLCanvasKnobTrackerAccessibility *)&v5 endMovingKnob];
  if ([(CRLCanvasKnobTrackerAccessibility *)self crlaxShouldAnnounceValueUponEndMovingKnob])
  {
    crlaxKnob = [(CRLCanvasKnobTrackerAccessibility *)self crlaxKnob];
    crlaxValue = [crlaxKnob crlaxValue];
    [(CRLCanvasKnobTrackerAccessibility *)self crlaxAnnounceString:crlaxValue];
  }
}

@end