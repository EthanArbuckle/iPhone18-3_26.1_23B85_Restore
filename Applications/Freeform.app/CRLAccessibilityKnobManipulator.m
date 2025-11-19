@interface CRLAccessibilityKnobManipulator
- (void)performMoveOfKnob:(id)a3 toUnscaledPosition:(CGPoint)a4 withTracker:(id)a5 rep:(id)a6 andICC:(id)a7;
@end

@implementation CRLAccessibilityKnobManipulator

- (void)performMoveOfKnob:(id)a3 toUnscaledPosition:(CGPoint)a4 withTracker:(id)a5 rep:(id)a6 andICC:(id)a7
{
  y = a4.y;
  x = a4.x;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  objc_storeStrong(&self->_tracker, a5);
  v17 = [v16 crlaxTarget];
  v18 = [v17 tmCoordinator];

  [v18 registerTrackerManipulator:self];
  [v18 takeControlWithTrackerManipulator:self];
  v19 = objc_opt_class();
  v20 = sub_100014370(v19, v14);
  [v20 setCurrentPosition:{x, y}];

  v21 = [v16 crlaxTarget];
  v22 = [v21 dynamicOperationController];

  [v22 beginOperation];
  v23 = [NSMutableSet alloc];
  v24 = [NSSet setWithObject:v15];
  v25 = [v23 initWithSet:v24];

  v26 = [v15 crlaxTarget];
  v27 = [v26 additionalRepsToResize];
  [v25 unionSet:v27];

  [v22 startTransformingReps:v25];
  v28 = [v14 crlaxTarget];
  [v28 beginMovingKnob];

  v33 = 0;
  v29 = v14;
  v30 = objc_opt_class();
  v31 = __CRLAccessibilityCastAsClass(v30, v29, 1, &v33);
  if (v33 == 1)
  {
    abort();
  }

  v32 = v31;

  [v13 crlaxPosition];
  [v32 moveKnobToCanvasPosition:?];

  [v22 handleTrackerManipulator:self];
}

@end