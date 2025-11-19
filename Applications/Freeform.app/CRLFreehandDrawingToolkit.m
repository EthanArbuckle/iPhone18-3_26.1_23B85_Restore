@interface CRLFreehandDrawingToolkit
- ($F8C478D75979E1913FC0AA0A435BEEED)inputPointFromHoverGesture:(SEL)a3;
- ($F8C478D75979E1913FC0AA0A435BEEED)inputPointInPKCanvasViewFromUnscaledSpace:(SEL)a3;
- (BOOL)canBeginFreehandDrawingMode;
- (BOOL)currentToolAllowsDragForTouchType:(int64_t)a3 atUnscaledPoint:(CGPoint)a4;
- (BOOL)isInDrawingMode;
- (BOOL)isInHandwritingMode;
- (BOOL)isLassoAbleToSelectMixedType;
- (BOOL)isLassoSelectionForMixedTypeEnabledInDrawingMode;
- (BOOL)isObjectEraser;
- (BOOL)supportsPencilHoverPreview;
- (BOOL)wantsToAnimateForObjectUUID:(id)a3 animation:(id)a4;
- (BOOL)wantsToSuppressKnobsOnTransformReps;
- (CRLColor)colorForCurrentTool;
- (CRLFreehandDrawingTool)currentTool;
- (CRLFreehandDrawingToolkit)initWithDelegate:(id)a3 uiState:(id)a4;
- (PKCanvasView)pkCanvasView;
- (double)opacityForCurrentTool;
- (double)widthForCurrentTool;
- (id)animationCompletionHandlerForObjectUUID:(id)a3 animation:(id)a4;
- (unint64_t)freehandDrawingBehaviorForTouchType:(int64_t)a3 atUnscaledPoint:(CGPoint)a4;
- (void)addToolkitObserver:(id)a3;
- (void)beginDrawingModeIfNeededForTouchType:(int64_t)a3;
- (void)beginDrawingTransformModeIfNeeded;
- (void)containedToolDidSetWidth:(id)a3;
- (void)endDrawingModeIfNeeded;
- (void)enqueueAnimationForObjectUUID:(id)a3 animation:(id)a4 completion:(id)a5;
- (void)keepPencilShadowVisible;
- (void)p_notifyObserversOfWidthChange;
- (void)p_tearDownRunloopObserver;
- (void)removeToolkitObserver:(id)a3;
- (void)resetToMostRecentRestorableToolType;
- (void)setColorForCurrentTool:(id)a3;
- (void)setCurrentToolSelection:(unint64_t)a3;
- (void)setOpacityForCurrentTool:(double)a3;
- (void)setRulerToolShowing:(BOOL)a3;
- (void)setUpdatedToolkitUIStateFromArchive:(id)a3;
- (void)setWidthForCurrentTool:(double)a3;
- (void)updatePencilShadowToScribbleMode;
- (void)updatePencilShadowWithInputPoint:(id *)a3;
@end

@implementation CRLFreehandDrawingToolkit

- (CRLFreehandDrawingToolkit)initWithDelegate:(id)a3 uiState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = CRLFreehandDrawingToolkit;
  v8 = [(CRLFreehandDrawingToolkit *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    v10 = [NSHashTable hashTableWithOptions:5];
    observers = v9->_observers;
    v9->_observers = v10;

    if (!v7)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101363824();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136384C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013638D4();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkit initWithDelegate:uiState:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkit.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:63 isFatal:0 description:"Expected to get a toolkit UI state from the document!"];

      v7 = objc_alloc_init(CRLFreehandDrawingToolkitUIState);
    }

    objc_storeStrong(&v9->_toolkitUIState, v7);
    v15 = dispatch_queue_create("com.apple.freeform.freehand-drawing.canvas-animation", 0);
    animationSerialQueue = v9->_animationSerialQueue;
    v9->_animationSerialQueue = v15;

    v17 = objc_alloc_init(NSMutableSet);
    objectUUIDsToAnimate = v9->_objectUUIDsToAnimate;
    v9->_objectUUIDsToAnimate = v17;

    v19 = objc_alloc_init(NSMutableDictionary);
    animationCompletionHandlers = v9->_animationCompletionHandlers;
    v9->_animationCompletionHandlers = v19;
  }

  return v9;
}

- (void)addToolkitObserver:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013638FC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101363910();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101363998();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkit addToolkitObserver:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkit.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:76 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if ([(NSHashTable *)self->_observers containsObject:v4])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013639C0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013639E8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101363A70();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkit addToolkitObserver:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkit.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:77 isFatal:0 description:"Should not add a freehand drawing toolkit observer that's already added."];
  }

  [(NSHashTable *)self->_observers addObject:v4];
}

- (void)removeToolkitObserver:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101363A98();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101363AAC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101363B34();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkit removeToolkitObserver:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkit.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:83 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (![(NSHashTable *)self->_observers containsObject:v4])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101363B5C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101363B84();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101363C0C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkit removeToolkitObserver:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkit.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:84 isFatal:0 description:"Should not remove a freehand drawing toolkit observer that has not been added."];
  }

  [(NSHashTable *)self->_observers removeObject:v4];
}

- (CRLFreehandDrawingTool)currentTool
{
  cachedCurrentTool = self->_cachedCurrentTool;
  if (!cachedCurrentTool)
  {
    toolkitUIState = self->_toolkitUIState;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained interactiveCanvasControllerForFreehandDrawingTools];
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 pencilKitCanvasViewControllerForFreehandDrawingTools];
    v9 = [(CRLFreehandDrawingToolkitUIState *)toolkitUIState currentToolForInteractiveCanvasController:v6 pencilKitCanvasViewController:v8];
    v10 = self->_cachedCurrentTool;
    self->_cachedCurrentTool = v9;

    cachedCurrentTool = self->_cachedCurrentTool;
  }

  return cachedCurrentTool;
}

- (void)setCurrentToolSelection:(unint64_t)a3
{
  v5 = [(CRLFreehandDrawingToolkitUIState *)self->_toolkitUIState currentToolType];
  if (a3 == 9 || v5 != a3)
  {
    cachedCurrentTool = self->_cachedCurrentTool;
    self->_cachedCurrentTool = 0;

    self->_askedDelegateForSmartAnnotationTool = 0;
    [(CRLFreehandDrawingToolkitUIState *)self->_toolkitUIState setCurrentToolType:a3];
    v7 = [(NSHashTable *)self->_observers copy];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v12) toolkitDidUpdateCurrentToolSelection];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)resetToMostRecentRestorableToolType
{
  v3 = [(CRLFreehandDrawingToolkitUIState *)self->_toolkitUIState mostRecentRestorableToolType];
  if (v3 != [(CRLFreehandDrawingToolkitUIState *)self->_toolkitUIState currentToolType])
  {
    v4 = [(CRLFreehandDrawingToolkitUIState *)self->_toolkitUIState mostRecentRestorableToolType];

    [(CRLFreehandDrawingToolkit *)self setCurrentToolSelection:v4];
  }
}

- (CRLColor)colorForCurrentTool
{
  toolkitUIState = self->_toolkitUIState;
  v3 = [(CRLFreehandDrawingToolkit *)self currentTool];
  v4 = -[CRLFreehandDrawingToolkitUIState colorForToolType:](toolkitUIState, "colorForToolType:", [v3 type]);

  return v4;
}

- (void)setColorForCurrentTool:(id)a3
{
  [(CRLFreehandDrawingToolkitUIState *)self->_toolkitUIState setCurrentToolColor:a3];
  cachedCurrentTool = self->_cachedCurrentTool;
  self->_cachedCurrentTool = 0;

  v8 = [(CRLFreehandDrawingToolkit *)self currentTool];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  v7 = [v6 pencilKitCanvasView];
  [v8 updatePencilKitToolIfAppropriateFor:v7];
}

- (double)opacityForCurrentTool
{
  toolkitUIState = self->_toolkitUIState;
  v3 = [(CRLFreehandDrawingToolkit *)self currentTool];
  -[CRLFreehandDrawingToolkitUIState opacityForToolType:](toolkitUIState, "opacityForToolType:", [v3 type]);
  v5 = v4;

  return v5;
}

- (void)setOpacityForCurrentTool:(double)a3
{
  [(CRLFreehandDrawingToolkitUIState *)self->_toolkitUIState setCurrentToolOpacity:a3];
  cachedCurrentTool = self->_cachedCurrentTool;
  self->_cachedCurrentTool = 0;

  v8 = [(CRLFreehandDrawingToolkit *)self currentTool];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  v7 = [v6 pencilKitCanvasView];
  [v8 updatePencilKitToolIfAppropriateFor:v7];
}

- (double)widthForCurrentTool
{
  toolkitUIState = self->_toolkitUIState;
  v3 = [(CRLFreehandDrawingToolkit *)self currentTool];
  -[CRLFreehandDrawingToolkitUIState strokeWidthForToolType:](toolkitUIState, "strokeWidthForToolType:", [v3 type]);
  v5 = v4;

  return v5;
}

- (void)setWidthForCurrentTool:(double)a3
{
  [(CRLFreehandDrawingToolkitUIState *)self->_toolkitUIState setCurrentToolWidth:a3];
  cachedCurrentTool = self->_cachedCurrentTool;
  self->_cachedCurrentTool = 0;

  v5 = [(CRLFreehandDrawingToolkit *)self currentTool];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  v8 = [v7 pencilKitCanvasView];
  [v5 updatePencilKitToolIfAppropriateFor:v8];

  [(CRLFreehandDrawingToolkit *)self p_notifyObserversOfWidthChange];
}

- (void)containedToolDidSetWidth:(id)a3
{
  if (self->_cachedCurrentTool == a3)
  {
    [(CRLFreehandDrawingToolkit *)self p_notifyObserversOfWidthChange];
  }
}

- (void)p_notifyObserversOfWidthChange
{
  v2 = [(NSHashTable *)self->_observers copy];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) toolkitDidUpdateCurrentToolWidth];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setRulerToolShowing:(BOOL)a3
{
  if (self->_isRulerToolShowing != a3)
  {
    self->_isRulerToolShowing = a3;
    v3 = [(NSHashTable *)self->_observers copy];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8) toolkitDidUpdateRulerVisibility];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (PKCanvasView)pkCanvasView
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  v4 = [v3 pencilKitCanvasView];

  return v4;
}

- (void)keepPencilShadowVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v2 = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  v3 = [v2 pencilKitCanvasView];
  [v3 _keepPencilShadowVisible];
}

- (void)updatePencilShadowWithInputPoint:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  v6 = [v5 pencilKitCanvasView];
  v7 = *&a3->var13;
  v11[6] = *&a3->var11;
  v11[7] = v7;
  var15 = a3->var15;
  v8 = *&a3->var5;
  v11[2] = *&a3->var3;
  v11[3] = v8;
  v9 = *&a3->var9;
  v11[4] = *&a3->var7;
  v11[5] = v9;
  v10 = *&a3->var1;
  v11[0] = a3->var0;
  v11[1] = v10;
  [v6 _updatePencilShadowViewWithInputPoint:v11];
}

- (void)updatePencilShadowToScribbleMode
{
  v6 = objc_alloc_init(PKHandwritingTool);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  v5 = [v4 pencilKitCanvasView];
  [v5 setTool:v6];
}

- (void)beginDrawingModeIfNeededForTouchType:(int64_t)a3
{
  if (![(CRLFreehandDrawingToolkit *)self canBeginFreehandDrawingMode])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101363C34();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101363C48();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101363CD0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkit beginDrawingModeIfNeededForTouchType:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkit.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:213 isFatal:0 description:"Should only try to begin drawing mode when it's allowed."];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained beginDrawingModeIfNeeded];

  if (a3)
  {
    if (a3 == 1)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 toolkitDidDrawWithIndirectTouch];
    }

    else
    {
      if (a3 != 2)
      {
        return;
      }

      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 toolkitDidDrawWithPencil];
    }
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 toolkitDidDrawWithFinger];
  }
}

- (void)endDrawingModeIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained endDrawingModeIfNeeded];
}

- (void)beginDrawingTransformModeIfNeeded
{
  if (![(CRLFreehandDrawingToolkit *)self isInDrawingMode])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101363CF8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101363D0C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101363D94();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolkit beginDrawingTransformModeIfNeeded]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolkit.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:230 isFatal:0 description:"Transform mode can only begin when drawing mode is already active."];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained beginDrawingTransformModeIfNeeded];
}

- (BOOL)canBeginFreehandDrawingMode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained interactiveCanvasControllerForFreehandDrawingTools];
  if ([v4 documentIsSharedReadOnly])
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v5 = [v6 canBeginFreehandDrawingMode];
  }

  return v5;
}

- (BOOL)isInDrawingMode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained isInDrawingMode];

  return v3;
}

- (BOOL)isInHandwritingMode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained isInHandwritingMode];

  return v3;
}

- (BOOL)isLassoSelectionForMixedTypeEnabledInDrawingMode
{
  v3 = [CRLFeatureFlagsHelper isOSFeatureEnabled:1];
  v4 = [(CRLFreehandDrawingToolkit *)self currentTool];
  v5 = [v4 type];

  if (!v3 || ![(CRLFreehandDrawingToolkit *)self isInDrawingMode]|| v5 != 10)
  {
    return 0;
  }

  return [(CRLFreehandDrawingToolkit *)self isLassoAbleToSelectMixedType];
}

- (BOOL)isLassoAbleToSelectMixedType
{
  if (![CRLFeatureFlagsHelper isOSFeatureEnabled:1])
  {
    return 0;
  }

  v3 = [(CRLFreehandDrawingToolkit *)self toolkitUIState];
  v4 = [v3 currentLassoType] == 0;

  return v4;
}

- (BOOL)wantsToSuppressKnobsOnTransformReps
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained wantsToSuppressKnobsOnTransformReps];

  return v3;
}

- (unint64_t)freehandDrawingBehaviorForTouchType:(int64_t)a3 atUnscaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = [(CRLFreehandDrawingToolkit *)self isInDrawingMode];
  v9 = v8;
  if (a3 != 2 && !v8)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained interactiveCanvasControllerForFreehandDrawingTools];

  if ([v12 documentIsSharedReadOnly])
  {
    v10 = 0;
  }

  else
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = [v13 freehandDrawingBehaviorAtUnscaledPoint:{x, y}];

    v15 = [(CRLFreehandDrawingToolkit *)self currentTool];
    v16 = [v15 type];

    if (v16 == 9 && (v14 - 1) < 2)
    {
      v10 = 3;
    }

    else
    {
      v17 = 2;
      if (v9)
      {
        v17 = 3;
      }

      if (v14 == 2 && v16 == 10)
      {
        v10 = v17;
      }

      else
      {
        v10 = v14;
      }
    }
  }

  return v10;
}

- (BOOL)currentToolAllowsDragForTouchType:(int64_t)a3 atUnscaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if (![(CRLFreehandDrawingToolkit *)self isInDrawingMode])
  {
    return 1;
  }

  v8 = [(CRLFreehandDrawingToolkit *)self currentTool];
  v9 = [v8 wantsDragForTouchType:a3 atUnscaledPoint:{x, y}];

  return v9;
}

- (void)enqueueAnimationForObjectUUID:(id)a3 animation:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  animationSerialQueue = self->_animationSerialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003B6744;
  v15[3] = &unk_101842D00;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(animationSerialQueue, v15);
}

- (BOOL)wantsToAnimateForObjectUUID:(id)a3 animation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  animationSerialQueue = self->_animationSerialQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003B68DC;
  v12[3] = &unk_101842C40;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  v9 = v7;
  v10 = v6;
  dispatch_sync(animationSerialQueue, v12);
  LOBYTE(animationSerialQueue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return animationSerialQueue;
}

- (id)animationCompletionHandlerForObjectUUID:(id)a3 animation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1003B6BB4;
  v22 = sub_1003B6BE0;
  v23 = 0;
  animationSerialQueue = self->_animationSerialQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003B6BE8;
  v13[3] = &unk_101847568;
  v14 = v6;
  v15 = v7;
  v16 = self;
  v17 = &v18;
  v9 = v7;
  v10 = v6;
  dispatch_sync(animationSerialQueue, v13);
  v11 = objc_retainBlock(v19[5]);

  _Block_object_dispose(&v18, 8);

  return v11;
}

- (void)setUpdatedToolkitUIStateFromArchive:(id)a3
{
  objc_storeStrong(&self->_toolkitUIState, a3);
  v5 = a3;
  cachedCurrentTool = self->_cachedCurrentTool;
  self->_cachedCurrentTool = 0;

  v10 = [(CRLFreehandDrawingToolkit *)self currentTool];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  v9 = [v8 pencilKitCanvasView];
  [v10 updatePencilKitToolIfAppropriateFor:v9];
}

- ($F8C478D75979E1913FC0AA0A435BEEED)inputPointFromHoverGesture:(SEL)a3
{
  v6 = *(&PKInputPointZero + 7);
  *&retstr->var11 = *(&PKInputPointZero + 6);
  *&retstr->var13 = v6;
  retstr->var15 = *(&PKInputPointZero + 16);
  v7 = *(&PKInputPointZero + 3);
  *&retstr->var3 = *(&PKInputPointZero + 2);
  *&retstr->var5 = v7;
  v8 = *(&PKInputPointZero + 5);
  *&retstr->var7 = *(&PKInputPointZero + 4);
  *&retstr->var9 = v8;
  v9 = *(&PKInputPointZero + 1);
  retstr->var0 = *&PKInputPointZero;
  *&retstr->var1 = v9;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  v23 = [v12 pencilKitCanvasView];

  [v10 locationInView:v23];
  retstr->var0.var0.x = v13;
  retstr->var0.var0.y = v14;
  [v10 zOffset];
  v16 = v15;
  +[PKHoverSettings maxHoverHeight];
  retstr->var6 = v16 * v17;
  retstr->var7 = CACurrentMediaTime();
  [v10 altitudeAngle];
  retstr->var3 = sub_1004C3240(1.57079633 - v18, 0.0, 1.57079633);
  [v10 azimuthAngleInView:v23];
  v20 = v19;

  sub_1001210C4(v20 + -3.14159265);
  retstr->var2 = v21;
  retstr->var1 = 1.0;

  return result;
}

- ($F8C478D75979E1913FC0AA0A435BEEED)inputPointInPKCanvasViewFromUnscaledSpace:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained interactiveCanvasControllerForFreehandDrawingTools];
  v9 = [v8 canvasView];
  v10 = [v9 unscaledCoordinateSpace];
  v11 = objc_loadWeakRetained(&self->_delegate);
  v12 = [v11 pencilKitCanvasViewControllerForFreehandDrawingTools];
  v13 = [v12 pencilKitCanvasView];
  v14 = [v13 coordinateSpace];
  [v10 convertPoint:v14 toCoordinateSpace:{a4->var0.var0.x, a4->var0.var0.y}];
  v16 = v15;
  v18 = v17;

  a4->var0.var0.x = v16;
  a4->var0.var0.y = v18;
  v20 = *&a4->var13;
  *&retstr->var11 = *&a4->var11;
  *&retstr->var13 = v20;
  retstr->var15 = a4->var15;
  v21 = *&a4->var5;
  *&retstr->var3 = *&a4->var3;
  *&retstr->var5 = v21;
  v22 = *&a4->var9;
  *&retstr->var7 = *&a4->var7;
  *&retstr->var9 = v22;
  v23 = *&a4->var1;
  retstr->var0 = a4->var0;
  *&retstr->var1 = v23;
  return result;
}

- (void)p_tearDownRunloopObserver
{
  animationSerialQueue = self->_animationSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003B6FF0;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_sync(animationSerialQueue, block);
}

- (BOOL)supportsPencilHoverPreview
{
  v2 = self;
  v3 = sub_100D89D88();

  return v3 != 3;
}

- (BOOL)isObjectEraser
{
  v2 = self;
  v3 = sub_100D89D88();

  return v3 == 1;
}

@end