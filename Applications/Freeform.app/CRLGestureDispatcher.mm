@interface CRLGestureDispatcher
- (BOOL)gestureActionShouldBegin:(id)begin;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)p_allowTextGestureTouch:(id)touch;
- (CRLGestureDispatcher)initWithInteractiveCanvasController:(id)controller;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (id)p_getGestureTarget:(id)target;
- (void)allowSimultaneousRecognitionByRecognizerSet:(id)set;
- (void)allowSimultaneousRecognitionByRecognizers:(id)recognizers;
- (void)gestureRemovedFromView:(id)view;
- (void)handleGesture:(id)gesture;
- (void)handleGesture:(id)gesture withTarget:(id)target;
- (void)p_gestureNoLongerInFlight:(id)flight;
- (void)prioritizeRecognizer:(id)recognizer overRecognizer:(id)overRecognizer;
- (void)teardown;
@end

@implementation CRLGestureDispatcher

- (CRLGestureDispatcher)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = CRLGestureDispatcher;
  v5 = [(CRLGestureDispatcher *)&v12 init];
  if (v5)
  {
    if (!controllerCopy)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101369CF4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101369D1C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101369DCC();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLGestureDispatcher initWithInteractiveCanvasController:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGestureDispatcher.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:161 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];
    }

    [(CRLGestureDispatcher *)v5 setInteractiveCanvasController:controllerCopy];
    v9 = +[NSMutableSet set];
    firedGestures = v5->_firedGestures;
    v5->_firedGestures = v9;
  }

  return v5;
}

- (void)teardown
{
  [(NSMutableSet *)self->_firedGestures removeAllObjects];
  [(NSMutableArray *)self->_targetsInFlight removeAllObjects];
  gesturesInFlight = self->_gesturesInFlight;

  [(NSMutableArray *)gesturesInFlight removeAllObjects];
}

- (void)handleGesture:(id)gesture
{
  gestureCopy = gesture;
  cachedGestureTarget = [gestureCopy cachedGestureTarget];
  if (cachedGestureTarget)
  {
    targetsInFlight = self->_targetsInFlight;
    if (!targetsInFlight)
    {
      v7 = [[NSMutableArray alloc] initWithCapacity:2];
      v8 = self->_targetsInFlight;
      self->_targetsInFlight = v7;

      targetsInFlight = self->_targetsInFlight;
    }

    if (([(NSMutableArray *)targetsInFlight containsObject:cachedGestureTarget]& 1) == 0)
    {
      [cachedGestureTarget gestureSequenceWillBegin];
      [(NSMutableArray *)self->_targetsInFlight insertObject:cachedGestureTarget atIndex:0];
      if ([(NSMutableArray *)self->_targetsInFlight count]== 1)
      {
        interactiveCanvasController = [(CRLGestureDispatcher *)self interactiveCanvasController];
        editingCoordinator = [interactiveCanvasController editingCoordinator];
        [editingCoordinator suspendCollaborationWithReason:@"CRLTextGesturesInFlight"];
      }
    }

    firedGestures = [(CRLGestureDispatcher *)self firedGestures];
    [firedGestures addObject:gestureCopy];

    self->_runningTargetHandleGesture = 1;
    [cachedGestureTarget handleGesture:gestureCopy];
    self->_runningTargetHandleGesture = 0;
    if ([gestureCopy isDone])
    {
      [gestureCopy setTargetRep:0];
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101369DF4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101369E08();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101369E9C();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLGestureDispatcher handleGesture:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGestureDispatcher.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:184 isFatal:0 description:"gestureTarget should not be nil, shouldReceiveTouch should have failed this gesture"];
  }
}

- (void)handleGesture:(id)gesture withTarget:(id)target
{
  gestureCopy = gesture;
  targetCopy = target;
  if (!self->_runningTargetHandleGesture)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101369EC4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101369ED8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101369F6C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLGestureDispatcher handleGesture:withTarget:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLGestureDispatcher.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:221 isFatal:0 description:"handleGesture:withTarget: can only be called from a target's handleGesture: method"];
  }

  [gestureCopy setCachedGestureTarget:targetCopy];
  [(CRLGestureDispatcher *)self handleGesture:gestureCopy];
}

- (void)allowSimultaneousRecognitionByRecognizers:(id)recognizers
{
  recognizersCopy = recognizers;
  v5 = [NSMutableSet setWithObject:recognizersCopy];
  v13 = &v15;
  v6 = v14;
  if (v6)
  {
    v7 = v6;
    do
    {
      [v5 addObject:v7];
      v8 = v13++;
      v9 = *v8;

      v7 = v9;
    }

    while (v9);
  }

  simultaneitySets = self->_simultaneitySets;
  if (!simultaneitySets)
  {
    v11 = objc_alloc_init(NSMutableArray);
    v12 = self->_simultaneitySets;
    self->_simultaneitySets = v11;

    simultaneitySets = self->_simultaneitySets;
  }

  [(NSMutableArray *)simultaneitySets addObject:v5];
}

- (void)allowSimultaneousRecognitionByRecognizerSet:(id)set
{
  setCopy = set;
  simultaneitySets = self->_simultaneitySets;
  v9 = setCopy;
  if (!simultaneitySets)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_simultaneitySets;
    self->_simultaneitySets = v6;

    setCopy = v9;
    simultaneitySets = self->_simultaneitySets;
  }

  v8 = [setCopy copy];
  [(NSMutableArray *)simultaneitySets addObject:v8];
}

- (void)prioritizeRecognizer:(id)recognizer overRecognizer:(id)overRecognizer
{
  recognizerCopy = recognizer;
  overRecognizerCopy = overRecognizer;
  priorityMap = self->_priorityMap;
  if (!priorityMap)
  {
    v8 = objc_alloc_init(CRLNoCopyDictionary);
    v9 = self->_priorityMap;
    self->_priorityMap = v8;

    priorityMap = self->_priorityMap;
  }

  v10 = [(CRLNoCopyDictionary *)priorityMap objectForKey:overRecognizerCopy];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 setByAddingObject:recognizerCopy];
  }

  else
  {
    v12 = [NSSet setWithObject:recognizerCopy];
  }

  [(CRLNoCopyDictionary *)self->_priorityMap setObject:v12 forUncopiedKey:overRecognizerCopy];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  currentlyScrolling = [WeakRetained currentlyScrolling];

  if ((currentlyScrolling & 1) != 0 || ([(CRLGestureDispatcher *)self p_getGestureTarget:beginCopy], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    gestureKind = [beginCopy gestureKind];

    if (gestureKind == @"CRLWPUndefinedGestureKind")
    {
      interactiveCanvasController = [(CRLGestureDispatcher *)self interactiveCanvasController];
      layerHost = [interactiveCanvasController layerHost];
      asUIKitHost = [layerHost asUIKitHost];

      v20 = sub_1003035DC(asUIKitHost, 1, v14, v15, v16, v17, v18, v19, &OBJC_PROTOCOL___UIGestureRecognizerDelegate);
      if (v20)
      {
        v21 = v20;
        v10 = [v20 gestureRecognizerShouldBegin:beginCopy];

        v8 = 0;
        if (!v10)
        {
          goto LABEL_33;
        }

        goto LABEL_8;
      }
    }

    v8 = 0;
    LOBYTE(v10) = 0;
    goto LABEL_33;
  }

  v8 = v7;
  [beginCopy setCachedGestureTarget:v7];
LABEL_8:
  priorityMap = self->_priorityMap;
  if (priorityMap)
  {
    v23 = [(CRLNoCopyDictionary *)priorityMap objectForKey:beginCopy];
    v24 = v23;
    if (v23)
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v25 = v23;
      v26 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v26)
      {
        v33 = v26;
        v42 = v24;
        v34 = *v44;
        while (2)
        {
          for (i = 0; i != v33; i = i + 1)
          {
            if (*v44 != v34)
            {
              objc_enumerationMutation(v25);
            }

            v36 = *(*(&v43 + 1) + 8 * i);
            v37 = sub_1003035DC(beginCopy, 1, v27, v28, v29, v30, v31, v32, &OBJC_PROTOCOL___CRLGesture);
            v38 = [v36 state] == 5 && objc_msgSend(v37, "inputType") == 2;
            state = [v36 state];

            if (state)
            {
              v40 = !v38;
            }

            else
            {
              v40 = 0;
            }

            if (v40)
            {
              LOBYTE(v10) = 0;
              goto LABEL_28;
            }
          }

          v33 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }

        LOBYTE(v10) = 1;
LABEL_28:
        v24 = v42;
      }

      else
      {
        LOBYTE(v10) = 1;
      }
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

LABEL_33:

  return v10;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  v14 = sub_1003035DC(recognizerCopy, 1, v8, v9, v10, v11, v12, v13, &OBJC_PROTOCOL___CRLGesture);
  [v14 setInputType:{sub_10042B6C0(objc_msgSend(touchCopy, "type"))}];
  v15 = [v14 inputType] != 2;
  interactiveCanvasController = [(CRLGestureDispatcher *)self interactiveCanvasController];
  textInputResponder = [interactiveCanvasController textInputResponder];
  [textInputResponder setIgnorePencilInputSource:v15];

  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  layerHost = [WeakRetained layerHost];
  asUIKitHost = [layerHost asUIKitHost];

  v21 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  canvasView = [v21 canvasView];
  [touchCopy locationInView:canvasView];
  v24 = v23;
  v26 = v25;

  if ([asUIKitHost shouldIgnoreTextGesture:v14 atPoint:{v24, v26}])
  {
    goto LABEL_2;
  }

  gestureKind = [recognizerCopy gestureKind];
  if (gestureKind == @"CRLWPUndefinedGestureKind")
  {
    goto LABEL_10;
  }

  v35 = gestureKind;
  gestureKind2 = [recognizerCopy gestureKind];
  if (gestureKind2 == @"CRLWPImmediateSingleTap")
  {
    inputType = [v14 inputType];

    if (inputType)
    {
      goto LABEL_7;
    }

LABEL_10:
    v38 = sub_1003035DC(asUIKitHost, 1, v29, v30, v31, v32, v33, v34, &OBJC_PROTOCOL___UIGestureRecognizerDelegate);
    firedGestures = v38;
    if (!v38)
    {
      goto LABEL_17;
    }

    v39 = [v38 gestureRecognizer:recognizerCopy shouldReceiveTouch:touchCopy];

    if ((v39 & 1) == 0)
    {
      goto LABEL_2;
    }

    goto LABEL_12;
  }

LABEL_7:
  if (!-[CRLGestureDispatcher p_allowTextGestureTouch:](self, "p_allowTextGestureTouch:", touchCopy) && ![asUIKitHost allowTouchOutsideCanvasViewAtPoint:recognizerCopy forGesture:{v24, v26}])
  {
LABEL_2:
    LOBYTE(firedGestures) = 0;
    goto LABEL_17;
  }

LABEL_12:
  gesturesInFlight = self->_gesturesInFlight;
  if (gesturesInFlight)
  {
    if ([(NSMutableArray *)gesturesInFlight indexOfObjectIdenticalTo:recognizerCopy]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_gesturesInFlight addObject:recognizerCopy];
    }

    LOBYTE(firedGestures) = 1;
  }

  else
  {
    v41 = [[NSMutableArray alloc] initWithObjects:{recognizerCopy, 0}];
    v42 = self->_gesturesInFlight;
    self->_gesturesInFlight = v41;

    firedGestures = [(CRLGestureDispatcher *)self firedGestures];
    [firedGestures removeAllObjects];

    v43 = +[NSNotificationCenter defaultCenter];
    v47 = @"CRLTextGesturesICC";
    v44 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v48 = v44;
    LOBYTE(firedGestures) = 1;
    v45 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    [v43 postNotificationName:@"CRLTextGesturesWillBeginNotification" object:self userInfo:v45];
  }

LABEL_17:

  return firedGestures;
}

- (BOOL)p_allowTextGestureTouch:(id)touch
{
  touchCopy = touch;
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  canvasView = [WeakRetained canvasView];
  [touchCopy locationInView:canvasView];
  v8 = v7;
  v10 = v9;

  v11 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  layerHost = [v11 layerHost];
  asUIKitHost = [layerHost asUIKitHost];

  if ([asUIKitHost touchHitsCanvasViewAtPoint:{v8, v10}])
  {
    shouldAllowTextGesturesInRestrictedGestureMode = 1;
  }

  else
  {
    v15 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    layerHost2 = [v15 layerHost];
    asiOSCVC = [layerHost2 asiOSCVC];

    delegate = [asiOSCVC delegate];
    if (objc_opt_respondsToSelector())
    {
      currentDocumentMode = [delegate currentDocumentMode];
      shouldAllowTextGesturesInRestrictedGestureMode = [currentDocumentMode shouldAllowTextGesturesInRestrictedGestureMode];
    }

    else
    {
      shouldAllowTextGesturesInRestrictedGestureMode = 0;
    }
  }

  return shouldAllowTextGesturesInRestrictedGestureMode;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  simultaneitySets = self->_simultaneitySets;
  if (simultaneitySets)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = simultaneitySets;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([v13 containsObject:{recognizerCopy, v15}] && (objc_msgSend(v13, "containsObject:", gestureRecognizerCopy) & 1) != 0)
          {
            LOBYTE(v10) = 1;
            goto LABEL_14;
          }
        }

        v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)p_getGestureTarget:(id)target
{
  targetCopy = target;
  interactiveCanvasController = [(CRLGestureDispatcher *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  textInputEditor = [editorController textInputEditor];

  v14 = sub_1003035DC(textInputEditor, 1, v8, v9, v10, v11, v12, v13, &OBJC_PROTOCOL___CRLGestureTarget);
  v21 = sub_1003035DC(interactiveCanvasController, 1, v15, v16, v17, v18, v19, v20, &OBJC_PROTOCOL___CRLGestureTarget);
  if (v14 && (v22 = [v14 canHandleGesture:targetCopy], v23 = v14, (v22 & 1) != 0) || v21 && (v24 = objc_msgSend(v21, "canHandleGesture:", targetCopy), v23 = v21, v24))
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  return v25;
}

- (BOOL)gestureActionShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = [(CRLGestureDispatcher *)self p_getGestureTarget:beginCopy];
  if (v5)
  {
    [beginCopy setCachedGestureTarget:v5];
    v6 = 1;
  }

  else
  {
    gestureKind = [beginCopy gestureKind];

    if (gestureKind == @"CRLWPUndefinedGestureKind")
    {
      WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
      layerHost = [WeakRetained layerHost];
      asUIKitHost = [layerHost asUIKitHost];
      v17 = sub_1003035DC(asUIKitHost, 1, v11, v12, v13, v14, v15, v16, &OBJC_PROTOCOL___CRLGestureDelegate);

      if (objc_opt_respondsToSelector())
      {
        v6 = [v17 gestureActionShouldBegin:beginCopy];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)gestureRemovedFromView:(id)view
{
  viewCopy = view;
  gesturesInFlight = self->_gesturesInFlight;
  if (gesturesInFlight)
  {
    v5 = objc_opt_class();
    v6 = sub_100014370(v5, viewCopy);
    v7 = [(NSMutableArray *)gesturesInFlight indexOfObjectIdenticalTo:v6];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(CRLGestureDispatcher *)self p_gestureNoLongerInFlight:viewCopy];
    }
  }
}

- (void)p_gestureNoLongerInFlight:(id)flight
{
  flightCopy = flight;
  gesturesInFlight = self->_gesturesInFlight;
  v6 = objc_opt_class();
  v7 = sub_100014370(v6, flightCopy);
  [(NSMutableArray *)gesturesInFlight removeObjectIdenticalTo:v7];

  if (![(NSMutableArray *)self->_gesturesInFlight count])
  {
    if ([(NSMutableArray *)self->_targetsInFlight count])
    {
      interactiveCanvasController = [(CRLGestureDispatcher *)self interactiveCanvasController];
      editingCoordinator = [interactiveCanvasController editingCoordinator];
      [editingCoordinator resumeCollaborationWithReason:@"CRLTextGesturesInFlight"];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v10 = self->_targetsInFlight;
      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v32 objects:v39 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v33;
        do
        {
          v14 = 0;
          do
          {
            if (*v33 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v32 + 1) + 8 * v14) gestureSequenceDidEnd];
            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v32 objects:v39 count:16];
        }

        while (v12);
      }

      [(NSMutableArray *)self->_targetsInFlight removeAllObjects];
    }

    v15 = +[NSMutableSet set];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    firedGestures = [(CRLGestureDispatcher *)self firedGestures];
    v17 = [firedGestures countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        v20 = 0;
        do
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(firedGestures);
          }

          gestureKind = [*(*(&v28 + 1) + 8 * v20) gestureKind];
          [v15 addObject:gestureKind];

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [firedGestures countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v18);
    }

    v22 = +[NSNotificationCenter defaultCenter];
    v36[0] = @"CRLTextGesturesICC";
    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v37[0] = WeakRetained;
    v37[1] = v15;
    v36[1] = @"CRLTextGesturesDidEndNotificationFiredGestureKindsKey";
    v36[2] = @"CRLTextGesturesDidEndNotificationFiredGesturesKey";
    firedGestures2 = [(CRLGestureDispatcher *)self firedGestures];
    v36[3] = @"CRLTextGesturesTerminated";
    v37[2] = firedGestures2;
    v37[3] = flightCopy;
    v25 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:4];
    [v22 postNotificationName:@"CRLTextGesturesDidEndNotification" object:self userInfo:v25];

    firedGestures3 = [(CRLGestureDispatcher *)self firedGestures];
    [firedGestures3 removeAllObjects];

    v27 = self->_gesturesInFlight;
    self->_gesturesInFlight = 0;
  }
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);

  return WeakRetained;
}

@end