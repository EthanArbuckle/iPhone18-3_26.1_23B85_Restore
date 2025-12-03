@interface CRLFreehandDrawingToolkit
- ($F8C478D75979E1913FC0AA0A435BEEED)inputPointFromHoverGesture:(SEL)gesture;
- ($F8C478D75979E1913FC0AA0A435BEEED)inputPointInPKCanvasViewFromUnscaledSpace:(SEL)space;
- (BOOL)canBeginFreehandDrawingMode;
- (BOOL)currentToolAllowsDragForTouchType:(int64_t)type atUnscaledPoint:(CGPoint)point;
- (BOOL)isInDrawingMode;
- (BOOL)isInHandwritingMode;
- (BOOL)isLassoAbleToSelectMixedType;
- (BOOL)isLassoSelectionForMixedTypeEnabledInDrawingMode;
- (BOOL)isObjectEraser;
- (BOOL)supportsPencilHoverPreview;
- (BOOL)wantsToAnimateForObjectUUID:(id)d animation:(id)animation;
- (BOOL)wantsToSuppressKnobsOnTransformReps;
- (CRLColor)colorForCurrentTool;
- (CRLFreehandDrawingTool)currentTool;
- (CRLFreehandDrawingToolkit)initWithDelegate:(id)delegate uiState:(id)state;
- (PKCanvasView)pkCanvasView;
- (double)opacityForCurrentTool;
- (double)widthForCurrentTool;
- (id)animationCompletionHandlerForObjectUUID:(id)d animation:(id)animation;
- (unint64_t)freehandDrawingBehaviorForTouchType:(int64_t)type atUnscaledPoint:(CGPoint)point;
- (void)addToolkitObserver:(id)observer;
- (void)beginDrawingModeIfNeededForTouchType:(int64_t)type;
- (void)beginDrawingTransformModeIfNeeded;
- (void)containedToolDidSetWidth:(id)width;
- (void)endDrawingModeIfNeeded;
- (void)enqueueAnimationForObjectUUID:(id)d animation:(id)animation completion:(id)completion;
- (void)keepPencilShadowVisible;
- (void)p_notifyObserversOfWidthChange;
- (void)p_tearDownRunloopObserver;
- (void)removeToolkitObserver:(id)observer;
- (void)resetToMostRecentRestorableToolType;
- (void)setColorForCurrentTool:(id)tool;
- (void)setCurrentToolSelection:(unint64_t)selection;
- (void)setOpacityForCurrentTool:(double)tool;
- (void)setRulerToolShowing:(BOOL)showing;
- (void)setUpdatedToolkitUIStateFromArchive:(id)archive;
- (void)setWidthForCurrentTool:(double)tool;
- (void)updatePencilShadowToScribbleMode;
- (void)updatePencilShadowWithInputPoint:(id *)point;
@end

@implementation CRLFreehandDrawingToolkit

- (CRLFreehandDrawingToolkit)initWithDelegate:(id)delegate uiState:(id)state
{
  delegateCopy = delegate;
  stateCopy = state;
  v22.receiver = self;
  v22.super_class = CRLFreehandDrawingToolkit;
  v8 = [(CRLFreehandDrawingToolkit *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [NSHashTable hashTableWithOptions:5];
    observers = v9->_observers;
    v9->_observers = v10;

    if (!stateCopy)
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

      stateCopy = objc_alloc_init(CRLFreehandDrawingToolkitUIState);
    }

    objc_storeStrong(&v9->_toolkitUIState, stateCopy);
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

- (void)addToolkitObserver:(id)observer
{
  observerCopy = observer;
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

  if ([(NSHashTable *)self->_observers containsObject:observerCopy])
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

  [(NSHashTable *)self->_observers addObject:observerCopy];
}

- (void)removeToolkitObserver:(id)observer
{
  observerCopy = observer;
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

  if (![(NSHashTable *)self->_observers containsObject:observerCopy])
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

  [(NSHashTable *)self->_observers removeObject:observerCopy];
}

- (CRLFreehandDrawingTool)currentTool
{
  cachedCurrentTool = self->_cachedCurrentTool;
  if (!cachedCurrentTool)
  {
    toolkitUIState = self->_toolkitUIState;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    interactiveCanvasControllerForFreehandDrawingTools = [WeakRetained interactiveCanvasControllerForFreehandDrawingTools];
    v7 = objc_loadWeakRetained(&self->_delegate);
    pencilKitCanvasViewControllerForFreehandDrawingTools = [v7 pencilKitCanvasViewControllerForFreehandDrawingTools];
    v9 = [(CRLFreehandDrawingToolkitUIState *)toolkitUIState currentToolForInteractiveCanvasController:interactiveCanvasControllerForFreehandDrawingTools pencilKitCanvasViewController:pencilKitCanvasViewControllerForFreehandDrawingTools];
    v10 = self->_cachedCurrentTool;
    self->_cachedCurrentTool = v9;

    cachedCurrentTool = self->_cachedCurrentTool;
  }

  return cachedCurrentTool;
}

- (void)setCurrentToolSelection:(unint64_t)selection
{
  currentToolType = [(CRLFreehandDrawingToolkitUIState *)self->_toolkitUIState currentToolType];
  if (selection == 9 || currentToolType != selection)
  {
    cachedCurrentTool = self->_cachedCurrentTool;
    self->_cachedCurrentTool = 0;

    self->_askedDelegateForSmartAnnotationTool = 0;
    [(CRLFreehandDrawingToolkitUIState *)self->_toolkitUIState setCurrentToolType:selection];
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
  mostRecentRestorableToolType = [(CRLFreehandDrawingToolkitUIState *)self->_toolkitUIState mostRecentRestorableToolType];
  if (mostRecentRestorableToolType != [(CRLFreehandDrawingToolkitUIState *)self->_toolkitUIState currentToolType])
  {
    mostRecentRestorableToolType2 = [(CRLFreehandDrawingToolkitUIState *)self->_toolkitUIState mostRecentRestorableToolType];

    [(CRLFreehandDrawingToolkit *)self setCurrentToolSelection:mostRecentRestorableToolType2];
  }
}

- (CRLColor)colorForCurrentTool
{
  toolkitUIState = self->_toolkitUIState;
  currentTool = [(CRLFreehandDrawingToolkit *)self currentTool];
  v4 = -[CRLFreehandDrawingToolkitUIState colorForToolType:](toolkitUIState, "colorForToolType:", [currentTool type]);

  return v4;
}

- (void)setColorForCurrentTool:(id)tool
{
  [(CRLFreehandDrawingToolkitUIState *)self->_toolkitUIState setCurrentToolColor:tool];
  cachedCurrentTool = self->_cachedCurrentTool;
  self->_cachedCurrentTool = 0;

  currentTool = [(CRLFreehandDrawingToolkit *)self currentTool];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pencilKitCanvasViewControllerForFreehandDrawingTools = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  pencilKitCanvasView = [pencilKitCanvasViewControllerForFreehandDrawingTools pencilKitCanvasView];
  [currentTool updatePencilKitToolIfAppropriateFor:pencilKitCanvasView];
}

- (double)opacityForCurrentTool
{
  toolkitUIState = self->_toolkitUIState;
  currentTool = [(CRLFreehandDrawingToolkit *)self currentTool];
  -[CRLFreehandDrawingToolkitUIState opacityForToolType:](toolkitUIState, "opacityForToolType:", [currentTool type]);
  v5 = v4;

  return v5;
}

- (void)setOpacityForCurrentTool:(double)tool
{
  [(CRLFreehandDrawingToolkitUIState *)self->_toolkitUIState setCurrentToolOpacity:tool];
  cachedCurrentTool = self->_cachedCurrentTool;
  self->_cachedCurrentTool = 0;

  currentTool = [(CRLFreehandDrawingToolkit *)self currentTool];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pencilKitCanvasViewControllerForFreehandDrawingTools = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  pencilKitCanvasView = [pencilKitCanvasViewControllerForFreehandDrawingTools pencilKitCanvasView];
  [currentTool updatePencilKitToolIfAppropriateFor:pencilKitCanvasView];
}

- (double)widthForCurrentTool
{
  toolkitUIState = self->_toolkitUIState;
  currentTool = [(CRLFreehandDrawingToolkit *)self currentTool];
  -[CRLFreehandDrawingToolkitUIState strokeWidthForToolType:](toolkitUIState, "strokeWidthForToolType:", [currentTool type]);
  v5 = v4;

  return v5;
}

- (void)setWidthForCurrentTool:(double)tool
{
  [(CRLFreehandDrawingToolkitUIState *)self->_toolkitUIState setCurrentToolWidth:tool];
  cachedCurrentTool = self->_cachedCurrentTool;
  self->_cachedCurrentTool = 0;

  currentTool = [(CRLFreehandDrawingToolkit *)self currentTool];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pencilKitCanvasViewControllerForFreehandDrawingTools = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  pencilKitCanvasView = [pencilKitCanvasViewControllerForFreehandDrawingTools pencilKitCanvasView];
  [currentTool updatePencilKitToolIfAppropriateFor:pencilKitCanvasView];

  [(CRLFreehandDrawingToolkit *)self p_notifyObserversOfWidthChange];
}

- (void)containedToolDidSetWidth:(id)width
{
  if (self->_cachedCurrentTool == width)
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

- (void)setRulerToolShowing:(BOOL)showing
{
  if (self->_isRulerToolShowing != showing)
  {
    self->_isRulerToolShowing = showing;
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
  pencilKitCanvasViewControllerForFreehandDrawingTools = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  pencilKitCanvasView = [pencilKitCanvasViewControllerForFreehandDrawingTools pencilKitCanvasView];

  return pencilKitCanvasView;
}

- (void)keepPencilShadowVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pencilKitCanvasViewControllerForFreehandDrawingTools = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  pencilKitCanvasView = [pencilKitCanvasViewControllerForFreehandDrawingTools pencilKitCanvasView];
  [pencilKitCanvasView _keepPencilShadowVisible];
}

- (void)updatePencilShadowWithInputPoint:(id *)point
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pencilKitCanvasViewControllerForFreehandDrawingTools = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  pencilKitCanvasView = [pencilKitCanvasViewControllerForFreehandDrawingTools pencilKitCanvasView];
  v7 = *&point->var13;
  v11[6] = *&point->var11;
  v11[7] = v7;
  var15 = point->var15;
  v8 = *&point->var5;
  v11[2] = *&point->var3;
  v11[3] = v8;
  v9 = *&point->var9;
  v11[4] = *&point->var7;
  v11[5] = v9;
  v10 = *&point->var1;
  v11[0] = point->var0;
  v11[1] = v10;
  [pencilKitCanvasView _updatePencilShadowViewWithInputPoint:v11];
}

- (void)updatePencilShadowToScribbleMode
{
  v6 = objc_alloc_init(PKHandwritingTool);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pencilKitCanvasViewControllerForFreehandDrawingTools = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  pencilKitCanvasView = [pencilKitCanvasViewControllerForFreehandDrawingTools pencilKitCanvasView];
  [pencilKitCanvasView setTool:v6];
}

- (void)beginDrawingModeIfNeededForTouchType:(int64_t)type
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

  if (type)
  {
    if (type == 1)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 toolkitDidDrawWithIndirectTouch];
    }

    else
    {
      if (type != 2)
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
  interactiveCanvasControllerForFreehandDrawingTools = [WeakRetained interactiveCanvasControllerForFreehandDrawingTools];
  if ([interactiveCanvasControllerForFreehandDrawingTools documentIsSharedReadOnly])
  {
    canBeginFreehandDrawingMode = 0;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    canBeginFreehandDrawingMode = [v6 canBeginFreehandDrawingMode];
  }

  return canBeginFreehandDrawingMode;
}

- (BOOL)isInDrawingMode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isInDrawingMode = [WeakRetained isInDrawingMode];

  return isInDrawingMode;
}

- (BOOL)isInHandwritingMode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isInHandwritingMode = [WeakRetained isInHandwritingMode];

  return isInHandwritingMode;
}

- (BOOL)isLassoSelectionForMixedTypeEnabledInDrawingMode
{
  v3 = [CRLFeatureFlagsHelper isOSFeatureEnabled:1];
  currentTool = [(CRLFreehandDrawingToolkit *)self currentTool];
  type = [currentTool type];

  if (!v3 || ![(CRLFreehandDrawingToolkit *)self isInDrawingMode]|| type != 10)
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

  toolkitUIState = [(CRLFreehandDrawingToolkit *)self toolkitUIState];
  v4 = [toolkitUIState currentLassoType] == 0;

  return v4;
}

- (BOOL)wantsToSuppressKnobsOnTransformReps
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  wantsToSuppressKnobsOnTransformReps = [WeakRetained wantsToSuppressKnobsOnTransformReps];

  return wantsToSuppressKnobsOnTransformReps;
}

- (unint64_t)freehandDrawingBehaviorForTouchType:(int64_t)type atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  isInDrawingMode = [(CRLFreehandDrawingToolkit *)self isInDrawingMode];
  v9 = isInDrawingMode;
  if (type != 2 && !isInDrawingMode)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  interactiveCanvasControllerForFreehandDrawingTools = [WeakRetained interactiveCanvasControllerForFreehandDrawingTools];

  if ([interactiveCanvasControllerForFreehandDrawingTools documentIsSharedReadOnly])
  {
    v10 = 0;
  }

  else
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = [v13 freehandDrawingBehaviorAtUnscaledPoint:{x, y}];

    currentTool = [(CRLFreehandDrawingToolkit *)self currentTool];
    type = [currentTool type];

    if (type == 9 && (v14 - 1) < 2)
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

      if (v14 == 2 && type == 10)
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

- (BOOL)currentToolAllowsDragForTouchType:(int64_t)type atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(CRLFreehandDrawingToolkit *)self isInDrawingMode])
  {
    return 1;
  }

  currentTool = [(CRLFreehandDrawingToolkit *)self currentTool];
  v9 = [currentTool wantsDragForTouchType:type atUnscaledPoint:{x, y}];

  return v9;
}

- (void)enqueueAnimationForObjectUUID:(id)d animation:(id)animation completion:(id)completion
{
  dCopy = d;
  animationCopy = animation;
  completionCopy = completion;
  animationSerialQueue = self->_animationSerialQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003B6744;
  v15[3] = &unk_101842D00;
  v16 = dCopy;
  v17 = animationCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = animationCopy;
  v14 = dCopy;
  dispatch_sync(animationSerialQueue, v15);
}

- (BOOL)wantsToAnimateForObjectUUID:(id)d animation:(id)animation
{
  dCopy = d;
  animationCopy = animation;
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
  v13 = dCopy;
  v14 = animationCopy;
  v15 = &v16;
  v9 = animationCopy;
  v10 = dCopy;
  dispatch_sync(animationSerialQueue, v12);
  LOBYTE(animationSerialQueue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return animationSerialQueue;
}

- (id)animationCompletionHandlerForObjectUUID:(id)d animation:(id)animation
{
  dCopy = d;
  animationCopy = animation;
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
  v14 = dCopy;
  v15 = animationCopy;
  selfCopy = self;
  v17 = &v18;
  v9 = animationCopy;
  v10 = dCopy;
  dispatch_sync(animationSerialQueue, v13);
  v11 = objc_retainBlock(v19[5]);

  _Block_object_dispose(&v18, 8);

  return v11;
}

- (void)setUpdatedToolkitUIStateFromArchive:(id)archive
{
  objc_storeStrong(&self->_toolkitUIState, archive);
  archiveCopy = archive;
  cachedCurrentTool = self->_cachedCurrentTool;
  self->_cachedCurrentTool = 0;

  currentTool = [(CRLFreehandDrawingToolkit *)self currentTool];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pencilKitCanvasViewControllerForFreehandDrawingTools = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  pencilKitCanvasView = [pencilKitCanvasViewControllerForFreehandDrawingTools pencilKitCanvasView];
  [currentTool updatePencilKitToolIfAppropriateFor:pencilKitCanvasView];
}

- ($F8C478D75979E1913FC0AA0A435BEEED)inputPointFromHoverGesture:(SEL)gesture
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
  pencilKitCanvasViewControllerForFreehandDrawingTools = [WeakRetained pencilKitCanvasViewControllerForFreehandDrawingTools];
  pencilKitCanvasView = [pencilKitCanvasViewControllerForFreehandDrawingTools pencilKitCanvasView];

  [v10 locationInView:pencilKitCanvasView];
  retstr->var0.var0.x = v13;
  retstr->var0.var0.y = v14;
  [v10 zOffset];
  v16 = v15;
  +[PKHoverSettings maxHoverHeight];
  retstr->var6 = v16 * v17;
  retstr->var7 = CACurrentMediaTime();
  [v10 altitudeAngle];
  retstr->var3 = sub_1004C3240(1.57079633 - v18, 0.0, 1.57079633);
  [v10 azimuthAngleInView:pencilKitCanvasView];
  v20 = v19;

  sub_1001210C4(v20 + -3.14159265);
  retstr->var2 = v21;
  retstr->var1 = 1.0;

  return result;
}

- ($F8C478D75979E1913FC0AA0A435BEEED)inputPointInPKCanvasViewFromUnscaledSpace:(SEL)space
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  interactiveCanvasControllerForFreehandDrawingTools = [WeakRetained interactiveCanvasControllerForFreehandDrawingTools];
  canvasView = [interactiveCanvasControllerForFreehandDrawingTools canvasView];
  unscaledCoordinateSpace = [canvasView unscaledCoordinateSpace];
  v11 = objc_loadWeakRetained(&self->_delegate);
  pencilKitCanvasViewControllerForFreehandDrawingTools = [v11 pencilKitCanvasViewControllerForFreehandDrawingTools];
  pencilKitCanvasView = [pencilKitCanvasViewControllerForFreehandDrawingTools pencilKitCanvasView];
  coordinateSpace = [pencilKitCanvasView coordinateSpace];
  [unscaledCoordinateSpace convertPoint:coordinateSpace toCoordinateSpace:{a4->var0.var0.x, a4->var0.var0.y}];
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
  selfCopy = self;
  v3 = sub_100D89D88();

  return v3 != 3;
}

- (BOOL)isObjectEraser
{
  selfCopy = self;
  v3 = sub_100D89D88();

  return v3 == 1;
}

@end