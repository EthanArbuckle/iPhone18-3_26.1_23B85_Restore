@interface CRLShapeControlKnobTrackerAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)crlaxShouldAnnounceValueUponEndMovingKnob;
- (id)_crlaxHUDString;
- (void)p_updateHUDAtPoint:(CGPoint)point;
@end

@implementation CRLShapeControlKnobTrackerAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (BOOL)crlaxShouldAnnounceValueUponEndMovingKnob
{
  _crlaxHUDString = [(CRLShapeControlKnobTrackerAccessibility *)self _crlaxHUDString];
  v3 = [_crlaxHUDString length] == 0;

  return v3;
}

- (void)p_updateHUDAtPoint:(CGPoint)point
{
  v11.receiver = self;
  v11.super_class = CRLShapeControlKnobTrackerAccessibility;
  [(CRLShapeControlKnobTrackerAccessibility *)&v11 p_updateHUDAtPoint:point.x, point.y];
  _crlaxHUDString = [(CRLShapeControlKnobTrackerAccessibility *)self _crlaxHUDString];
  v5 = +[NSDate now];
  v6 = +[CRLShapeControlKnobTrackerAccessibility _crlaxTimeOfLastHUDAnnouncement];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  v9 = +[CRLShapeControlKnobTrackerAccessibility _crlaxLastAnnouncedHUDString];
  v10 = [_crlaxHUDString isEqualToString:v9];

  if ([_crlaxHUDString length] && ((v8 <= 1.0) & v10) == 0)
  {
    [CRLShapeControlKnobTrackerAccessibility set_crlaxTimeOfLastHUDAnnouncement:v5];
    [CRLShapeControlKnobTrackerAccessibility set_crlaxLastAnnouncedHUDString:_crlaxHUDString];
    [(CRLCanvasKnobTrackerAccessibility *)self crlaxAnnounceString:_crlaxHUDString];
  }
}

- (id)_crlaxHUDString
{
  crlaxTarget = [(CRLShapeControlKnobTrackerAccessibility *)self crlaxTarget];
  shapeControlLayout = [crlaxTarget shapeControlLayout];

  smartPathSource = [shapeControlLayout smartPathSource];
  crlaxTarget2 = [(CRLShapeControlKnobTrackerAccessibility *)self crlaxTarget];
  knob = [crlaxTarget2 knob];
  v8 = [smartPathSource getFeedbackStringForKnob:{objc_msgSend(knob, "tag")}];

  return v8;
}

@end