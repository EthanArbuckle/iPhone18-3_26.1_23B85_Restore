@interface CRLGestureDispatcher
- (BOOL)gestureActionShouldBegin:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)p_allowTextGestureTouch:(id)a3;
- (CRLGestureDispatcher)initWithInteractiveCanvasController:(id)a3;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (id)p_getGestureTarget:(id)a3;
- (void)allowSimultaneousRecognitionByRecognizerSet:(id)a3;
- (void)allowSimultaneousRecognitionByRecognizers:(id)a3;
- (void)gestureRemovedFromView:(id)a3;
- (void)handleGesture:(id)a3;
- (void)handleGesture:(id)a3 withTarget:(id)a4;
- (void)p_gestureNoLongerInFlight:(id)a3;
- (void)prioritizeRecognizer:(id)a3 overRecognizer:(id)a4;
- (void)teardown;
@end

@implementation CRLGestureDispatcher

- (CRLGestureDispatcher)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CRLGestureDispatcher;
  v5 = [(CRLGestureDispatcher *)&v12 init];
  if (v5)
  {
    if (!v4)
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

    [(CRLGestureDispatcher *)v5 setInteractiveCanvasController:v4];
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

- (void)handleGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 cachedGestureTarget];
  if (v5)
  {
    targetsInFlight = self->_targetsInFlight;
    if (!targetsInFlight)
    {
      v7 = [[NSMutableArray alloc] initWithCapacity:2];
      v8 = self->_targetsInFlight;
      self->_targetsInFlight = v7;

      targetsInFlight = self->_targetsInFlight;
    }

    if (([(NSMutableArray *)targetsInFlight containsObject:v5]& 1) == 0)
    {
      [v5 gestureSequenceWillBegin];
      [(NSMutableArray *)self->_targetsInFlight insertObject:v5 atIndex:0];
      if ([(NSMutableArray *)self->_targetsInFlight count]== 1)
      {
        v9 = [(CRLGestureDispatcher *)self interactiveCanvasController];
        v10 = [v9 editingCoordinator];
        [v10 suspendCollaborationWithReason:@"CRLTextGesturesInFlight"];
      }
    }

    v11 = [(CRLGestureDispatcher *)self firedGestures];
    [v11 addObject:v4];

    self->_runningTargetHandleGesture = 1;
    [v5 handleGesture:v4];
    self->_runningTargetHandleGesture = 0;
    if ([v4 isDone])
    {
      [v4 setTargetRep:0];
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

- (void)handleGesture:(id)a3 withTarget:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  [v6 setCachedGestureTarget:v7];
  [(CRLGestureDispatcher *)self handleGesture:v6];
}

- (void)allowSimultaneousRecognitionByRecognizers:(id)a3
{
  v4 = a3;
  v5 = [NSMutableSet setWithObject:v4];
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

- (void)allowSimultaneousRecognitionByRecognizerSet:(id)a3
{
  v4 = a3;
  simultaneitySets = self->_simultaneitySets;
  v9 = v4;
  if (!simultaneitySets)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_simultaneitySets;
    self->_simultaneitySets = v6;

    v4 = v9;
    simultaneitySets = self->_simultaneitySets;
  }

  v8 = [v4 copy];
  [(NSMutableArray *)simultaneitySets addObject:v8];
}

- (void)prioritizeRecognizer:(id)a3 overRecognizer:(id)a4
{
  v13 = a3;
  v6 = a4;
  priorityMap = self->_priorityMap;
  if (!priorityMap)
  {
    v8 = objc_alloc_init(CRLNoCopyDictionary);
    v9 = self->_priorityMap;
    self->_priorityMap = v8;

    priorityMap = self->_priorityMap;
  }

  v10 = [(CRLNoCopyDictionary *)priorityMap objectForKey:v6];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 setByAddingObject:v13];
  }

  else
  {
    v12 = [NSSet setWithObject:v13];
  }

  [(CRLNoCopyDictionary *)self->_priorityMap setObject:v12 forUncopiedKey:v6];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v6 = [WeakRetained currentlyScrolling];

  if ((v6 & 1) != 0 || ([(CRLGestureDispatcher *)self p_getGestureTarget:v4], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [v4 gestureKind];

    if (v9 == @"CRLWPUndefinedGestureKind")
    {
      v11 = [(CRLGestureDispatcher *)self interactiveCanvasController];
      v12 = [v11 layerHost];
      v13 = [v12 asUIKitHost];

      v20 = sub_1003035DC(v13, 1, v14, v15, v16, v17, v18, v19, &OBJC_PROTOCOL___UIGestureRecognizerDelegate);
      if (v20)
      {
        v21 = v20;
        v10 = [v20 gestureRecognizerShouldBegin:v4];

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
  [v4 setCachedGestureTarget:v7];
LABEL_8:
  priorityMap = self->_priorityMap;
  if (priorityMap)
  {
    v23 = [(CRLNoCopyDictionary *)priorityMap objectForKey:v4];
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
            v37 = sub_1003035DC(v4, 1, v27, v28, v29, v30, v31, v32, &OBJC_PROTOCOL___CRLGesture);
            v38 = [v36 state] == 5 && objc_msgSend(v37, "inputType") == 2;
            v39 = [v36 state];

            if (v39)
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = sub_1003035DC(v6, 1, v8, v9, v10, v11, v12, v13, &OBJC_PROTOCOL___CRLGesture);
  [v14 setInputType:{sub_10042B6C0(objc_msgSend(v7, "type"))}];
  v15 = [v14 inputType] != 2;
  v16 = [(CRLGestureDispatcher *)self interactiveCanvasController];
  v17 = [v16 textInputResponder];
  [v17 setIgnorePencilInputSource:v15];

  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v19 = [WeakRetained layerHost];
  v20 = [v19 asUIKitHost];

  v21 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v22 = [v21 canvasView];
  [v7 locationInView:v22];
  v24 = v23;
  v26 = v25;

  if ([v20 shouldIgnoreTextGesture:v14 atPoint:{v24, v26}])
  {
    goto LABEL_2;
  }

  v28 = [v6 gestureKind];
  if (v28 == @"CRLWPUndefinedGestureKind")
  {
    goto LABEL_10;
  }

  v35 = v28;
  v36 = [v6 gestureKind];
  if (v36 == @"CRLWPImmediateSingleTap")
  {
    v37 = [v14 inputType];

    if (v37)
    {
      goto LABEL_7;
    }

LABEL_10:
    v38 = sub_1003035DC(v20, 1, v29, v30, v31, v32, v33, v34, &OBJC_PROTOCOL___UIGestureRecognizerDelegate);
    v27 = v38;
    if (!v38)
    {
      goto LABEL_17;
    }

    v39 = [v38 gestureRecognizer:v6 shouldReceiveTouch:v7];

    if ((v39 & 1) == 0)
    {
      goto LABEL_2;
    }

    goto LABEL_12;
  }

LABEL_7:
  if (!-[CRLGestureDispatcher p_allowTextGestureTouch:](self, "p_allowTextGestureTouch:", v7) && ![v20 allowTouchOutsideCanvasViewAtPoint:v6 forGesture:{v24, v26}])
  {
LABEL_2:
    LOBYTE(v27) = 0;
    goto LABEL_17;
  }

LABEL_12:
  gesturesInFlight = self->_gesturesInFlight;
  if (gesturesInFlight)
  {
    if ([(NSMutableArray *)gesturesInFlight indexOfObjectIdenticalTo:v6]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_gesturesInFlight addObject:v6];
    }

    LOBYTE(v27) = 1;
  }

  else
  {
    v41 = [[NSMutableArray alloc] initWithObjects:{v6, 0}];
    v42 = self->_gesturesInFlight;
    self->_gesturesInFlight = v41;

    v27 = [(CRLGestureDispatcher *)self firedGestures];
    [v27 removeAllObjects];

    v43 = +[NSNotificationCenter defaultCenter];
    v47 = @"CRLTextGesturesICC";
    v44 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v48 = v44;
    LOBYTE(v27) = 1;
    v45 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    [v43 postNotificationName:@"CRLTextGesturesWillBeginNotification" object:self userInfo:v45];
  }

LABEL_17:

  return v27;
}

- (BOOL)p_allowTextGestureTouch:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v6 = [WeakRetained canvasView];
  [v4 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v12 = [v11 layerHost];
  v13 = [v12 asUIKitHost];

  if ([v13 touchHitsCanvasViewAtPoint:{v8, v10}])
  {
    v14 = 1;
  }

  else
  {
    v15 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v16 = [v15 layerHost];
    v17 = [v16 asiOSCVC];

    v18 = [v17 delegate];
    if (objc_opt_respondsToSelector())
    {
      v19 = [v18 currentDocumentMode];
      v14 = [v19 shouldAllowTextGesturesInRestrictedGestureMode];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
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
          if ([v13 containsObject:{v6, v15}] && (objc_msgSend(v13, "containsObject:", v7) & 1) != 0)
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

- (id)p_getGestureTarget:(id)a3
{
  v4 = a3;
  v5 = [(CRLGestureDispatcher *)self interactiveCanvasController];
  v6 = [v5 editorController];
  v7 = [v6 textInputEditor];

  v14 = sub_1003035DC(v7, 1, v8, v9, v10, v11, v12, v13, &OBJC_PROTOCOL___CRLGestureTarget);
  v21 = sub_1003035DC(v5, 1, v15, v16, v17, v18, v19, v20, &OBJC_PROTOCOL___CRLGestureTarget);
  if (v14 && (v22 = [v14 canHandleGesture:v4], v23 = v14, (v22 & 1) != 0) || v21 && (v24 = objc_msgSend(v21, "canHandleGesture:", v4), v23 = v21, v24))
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

- (BOOL)gestureActionShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(CRLGestureDispatcher *)self p_getGestureTarget:v4];
  if (v5)
  {
    [v4 setCachedGestureTarget:v5];
    v6 = 1;
  }

  else
  {
    v7 = [v4 gestureKind];

    if (v7 == @"CRLWPUndefinedGestureKind")
    {
      WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
      v9 = [WeakRetained layerHost];
      v10 = [v9 asUIKitHost];
      v17 = sub_1003035DC(v10, 1, v11, v12, v13, v14, v15, v16, &OBJC_PROTOCOL___CRLGestureDelegate);

      if (objc_opt_respondsToSelector())
      {
        v6 = [v17 gestureActionShouldBegin:v4];
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

- (void)gestureRemovedFromView:(id)a3
{
  v8 = a3;
  gesturesInFlight = self->_gesturesInFlight;
  if (gesturesInFlight)
  {
    v5 = objc_opt_class();
    v6 = sub_100014370(v5, v8);
    v7 = [(NSMutableArray *)gesturesInFlight indexOfObjectIdenticalTo:v6];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(CRLGestureDispatcher *)self p_gestureNoLongerInFlight:v8];
    }
  }
}

- (void)p_gestureNoLongerInFlight:(id)a3
{
  v4 = a3;
  gesturesInFlight = self->_gesturesInFlight;
  v6 = objc_opt_class();
  v7 = sub_100014370(v6, v4);
  [(NSMutableArray *)gesturesInFlight removeObjectIdenticalTo:v7];

  if (![(NSMutableArray *)self->_gesturesInFlight count])
  {
    if ([(NSMutableArray *)self->_targetsInFlight count])
    {
      v8 = [(CRLGestureDispatcher *)self interactiveCanvasController];
      v9 = [v8 editingCoordinator];
      [v9 resumeCollaborationWithReason:@"CRLTextGesturesInFlight"];

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
    v16 = [(CRLGestureDispatcher *)self firedGestures];
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v38 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v28 + 1) + 8 * v20) gestureKind];
          [v15 addObject:v21];

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v28 objects:v38 count:16];
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
    v24 = [(CRLGestureDispatcher *)self firedGestures];
    v36[3] = @"CRLTextGesturesTerminated";
    v37[2] = v24;
    v37[3] = v4;
    v25 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:4];
    [v22 postNotificationName:@"CRLTextGesturesDidEndNotification" object:self userInfo:v25];

    v26 = [(CRLGestureDispatcher *)self firedGestures];
    [v26 removeAllObjects];

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