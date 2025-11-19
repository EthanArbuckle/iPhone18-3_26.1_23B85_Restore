@interface CRLShapeControlKnobTrackerAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)crlaxShouldAnnounceValueUponEndMovingKnob;
- (id)_crlaxHUDString;
- (void)p_updateHUDAtPoint:(CGPoint)a3;
@end

@implementation CRLShapeControlKnobTrackerAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (BOOL)crlaxShouldAnnounceValueUponEndMovingKnob
{
  v2 = [(CRLShapeControlKnobTrackerAccessibility *)self _crlaxHUDString];
  v3 = [v2 length] == 0;

  return v3;
}

- (void)p_updateHUDAtPoint:(CGPoint)a3
{
  v11.receiver = self;
  v11.super_class = CRLShapeControlKnobTrackerAccessibility;
  [(CRLShapeControlKnobTrackerAccessibility *)&v11 p_updateHUDAtPoint:a3.x, a3.y];
  v4 = [(CRLShapeControlKnobTrackerAccessibility *)self _crlaxHUDString];
  v5 = +[NSDate now];
  v6 = +[CRLShapeControlKnobTrackerAccessibility _crlaxTimeOfLastHUDAnnouncement];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  v9 = +[CRLShapeControlKnobTrackerAccessibility _crlaxLastAnnouncedHUDString];
  v10 = [v4 isEqualToString:v9];

  if ([v4 length] && ((v8 <= 1.0) & v10) == 0)
  {
    [CRLShapeControlKnobTrackerAccessibility set_crlaxTimeOfLastHUDAnnouncement:v5];
    [CRLShapeControlKnobTrackerAccessibility set_crlaxLastAnnouncedHUDString:v4];
    [(CRLCanvasKnobTrackerAccessibility *)self crlaxAnnounceString:v4];
  }
}

- (id)_crlaxHUDString
{
  v3 = [(CRLShapeControlKnobTrackerAccessibility *)self crlaxTarget];
  v4 = [v3 shapeControlLayout];

  v5 = [v4 smartPathSource];
  v6 = [(CRLShapeControlKnobTrackerAccessibility *)self crlaxTarget];
  v7 = [v6 knob];
  v8 = [v5 getFeedbackStringForKnob:{objc_msgSend(v7, "tag")}];

  return v8;
}

@end