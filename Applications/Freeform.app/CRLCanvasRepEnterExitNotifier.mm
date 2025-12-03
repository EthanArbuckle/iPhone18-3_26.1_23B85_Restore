@interface CRLCanvasRepEnterExitNotifier
- (CRLCanvasRepEnterExitNotifier)initWithInteractiveCanvasController:(id)controller;
- (void)cursorEnteredAtPoint:(CGPoint)point withPlatformObject:(id)object;
- (void)cursorExitedAtPoint:(CGPoint)point withPlatformObject:(id)object;
- (void)p_updateEnteredKnobsAtPoint:(CGPoint)point withPlatformObject:(id)object;
- (void)p_updateEnteredRepsAtPoint:(CGPoint)point withPlatformObject:(id)object;
- (void)updateEnteredExitedRepStateAtPoint:(CGPoint)point withPlatformObject:(id)object;
@end

@implementation CRLCanvasRepEnterExitNotifier

- (CRLCanvasRepEnterExitNotifier)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = CRLCanvasRepEnterExitNotifier;
  v5 = [(CRLCanvasRepEnterExitNotifier *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_interactiveCanvasController, controllerCopy);
    v7 = objc_alloc_init(NSMutableSet);
    currentlyHitReps = v6->_currentlyHitReps;
    v6->_currentlyHitReps = v7;
  }

  return v6;
}

- (void)cursorEnteredAtPoint:(CGPoint)point withPlatformObject:(id)object
{
  y = point.y;
  x = point.x;
  objectCopy = object;
  [(CRLCanvasRepEnterExitNotifier *)self p_updateEnteredKnobsAtPoint:objectCopy withPlatformObject:x, y];
  [(CRLCanvasRepEnterExitNotifier *)self p_updateEnteredRepsAtPoint:objectCopy withPlatformObject:x, y];
}

- (void)updateEnteredExitedRepStateAtPoint:(CGPoint)point withPlatformObject:(id)object
{
  y = point.y;
  x = point.x;
  objectCopy = object;
  [(CRLCanvasRepEnterExitNotifier *)self p_updateEnteredKnobsAtPoint:objectCopy withPlatformObject:x, y];
  [(CRLCanvasRepEnterExitNotifier *)self p_updateEnteredRepsAtPoint:objectCopy withPlatformObject:x, y];
}

- (void)cursorExitedAtPoint:(CGPoint)point withPlatformObject:(id)object
{
  y = point.y;
  x = point.x;
  objectCopy = object;
  self->_currentlyExiting = 1;
  [(CRLCanvasKnob *)self->_overKnob cursorExitedKnobAtPoint:objectCopy withPlatformObject:x, y];
  overKnob = self->_overKnob;
  self->_overKnob = 0;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_currentlyHitReps;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) cursorExitedAtPoint:objectCopy withPlatformObject:{x, y, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  [(NSMutableSet *)self->_currentlyHitReps removeAllObjects];
  self->_currentlyExiting = 0;
}

- (void)p_updateEnteredKnobsAtPoint:(CGPoint)point withPlatformObject:(id)object
{
  y = point.y;
  x = point.x;
  objectCopy = object;
  if (!self->_currentlyExiting)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v14 = 0;
    v9 = [WeakRetained hitKnobAtPoint:0 inputType:&v14 returningRep:{x, y}];
    v10 = v14;

    overKnob = self->_overKnob;
    p_overKnob = &self->_overKnob;
    v11 = overKnob;
    if (v9 == overKnob)
    {
      [(CRLCanvasKnob *)v11 cursorMovedAtPoint:objectCopy withPlatformObject:x, y];
      goto LABEL_10;
    }

    if (v9 && v11)
    {
      if ([(CRLCanvasKnob *)v9 transferCursorInsideStateIfDesiredFromKnob:?])
      {
LABEL_8:
        objc_storeStrong(p_overKnob, v9);
LABEL_10:

        goto LABEL_11;
      }

      v11 = *p_overKnob;
    }

    [(CRLCanvasKnob *)v11 cursorExitedKnobAtPoint:objectCopy withPlatformObject:x, y];
    [(CRLCanvasKnob *)v9 cursorEnteredKnobAtPoint:objectCopy withPlatformObject:x, y];
    goto LABEL_8;
  }

LABEL_11:
}

- (void)p_updateEnteredRepsAtPoint:(CGPoint)point withPlatformObject:(id)object
{
  y = point.y;
  x = point.x;
  objectCopy = object;
  if (!self->_currentlyExiting)
  {
    v8 = self->_currentlyHitReps;
    v9 = objc_alloc_init(NSMutableSet);
    currentlyHitReps = self->_currentlyHitReps;
    self->_currentlyHitReps = v9;

    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v12 = [WeakRetained hitRep:1 withPrecision:{x, y}];

    v13 = v12;
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      do
      {
        [(NSMutableSet *)self->_currentlyHitReps addObject:v15];
        parentRep = [v15 parentRep];

        v15 = parentRep;
      }

      while (parentRep);
    }

    v17 = [(NSMutableSet *)v8 mutableCopy];
    [v17 minusSet:self->_currentlyHitReps];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v44;
      do
      {
        v22 = 0;
        do
        {
          if (*v44 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v43 + 1) + 8 * v22) cursorExitedAtPoint:objectCopy withPlatformObject:{x, y}];
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v20);
    }

    v23 = [(NSMutableSet *)self->_currentlyHitReps mutableCopy];
    [v23 minusSet:v8];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v40;
      do
      {
        v28 = 0;
        do
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [*(*(&v39 + 1) + 8 * v28) cursorEnteredAtPoint:objectCopy withPlatformObject:{x, y}];
          v28 = v28 + 1;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v26);
    }

    if (v14)
    {
      if ([(NSMutableSet *)v8 containsObject:v14])
      {
        [v14 cursorMovedAtPoint:objectCopy withPlatformObject:{x, y}];
      }

      v29 = [(NSMutableSet *)self->_currentlyHitReps mutableCopy];
      [v29 removeObject:v14];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v30 = v29;
      v31 = [v30 countByEnumeratingWithState:&v35 objects:v47 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v36;
        do
        {
          v34 = 0;
          do
          {
            if (*v36 != v33)
            {
              objc_enumerationMutation(v30);
            }

            [*(*(&v35 + 1) + 8 * v34) cursorMovedAtPoint:objectCopy withPlatformObject:{x, y, v35}];
            v34 = v34 + 1;
          }

          while (v32 != v34);
          v32 = [v30 countByEnumeratingWithState:&v35 objects:v47 count:16];
        }

        while (v32);
      }
    }
  }
}

@end