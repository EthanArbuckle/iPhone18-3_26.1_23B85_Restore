@interface CRLAccessibilityKnobManipulator
- (void)performMoveOfKnob:(id)knob toUnscaledPosition:(CGPoint)position withTracker:(id)tracker rep:(id)rep andICC:(id)c;
@end

@implementation CRLAccessibilityKnobManipulator

- (void)performMoveOfKnob:(id)knob toUnscaledPosition:(CGPoint)position withTracker:(id)tracker rep:(id)rep andICC:(id)c
{
  y = position.y;
  x = position.x;
  knobCopy = knob;
  trackerCopy = tracker;
  repCopy = rep;
  cCopy = c;
  objc_storeStrong(&self->_tracker, tracker);
  crlaxTarget = [cCopy crlaxTarget];
  tmCoordinator = [crlaxTarget tmCoordinator];

  [tmCoordinator registerTrackerManipulator:self];
  [tmCoordinator takeControlWithTrackerManipulator:self];
  v19 = objc_opt_class();
  v20 = sub_100014370(v19, trackerCopy);
  [v20 setCurrentPosition:{x, y}];

  crlaxTarget2 = [cCopy crlaxTarget];
  dynamicOperationController = [crlaxTarget2 dynamicOperationController];

  [dynamicOperationController beginOperation];
  v23 = [NSMutableSet alloc];
  v24 = [NSSet setWithObject:repCopy];
  v25 = [v23 initWithSet:v24];

  crlaxTarget3 = [repCopy crlaxTarget];
  additionalRepsToResize = [crlaxTarget3 additionalRepsToResize];
  [v25 unionSet:additionalRepsToResize];

  [dynamicOperationController startTransformingReps:v25];
  crlaxTarget4 = [trackerCopy crlaxTarget];
  [crlaxTarget4 beginMovingKnob];

  v33 = 0;
  v29 = trackerCopy;
  v30 = objc_opt_class();
  v31 = __CRLAccessibilityCastAsClass(v30, v29, 1, &v33);
  if (v33 == 1)
  {
    abort();
  }

  v32 = v31;

  [knobCopy crlaxPosition];
  [v32 moveKnobToCanvasPosition:?];

  [dynamicOperationController handleTrackerManipulator:self];
}

@end