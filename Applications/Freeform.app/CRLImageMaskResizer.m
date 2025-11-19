@interface CRLImageMaskResizer
- (CRLImageMaskResizer)initWithInteractiveCanvasController:(id)a3;
- (void)beginResizingRep:(id)a3;
- (void)endResizingRepAtScale:(double)a3;
- (void)operationDidEnd;
- (void)updateResizeToScale:(double)a3;
@end

@implementation CRLImageMaskResizer

- (CRLImageMaskResizer)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101372E58();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101372E6C(v5, v6);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101372F28();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v7, v5);
    }

    v8 = [NSString stringWithUTF8String:"[CRLImageMaskResizer initWithInteractiveCanvasController:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageMaskResizer.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:28 isFatal:0 description:"invalid nil value for '%{public}s'", "interactiveCanvasController"];
  }

  v13.receiver = self;
  v13.super_class = CRLImageMaskResizer;
  v10 = [(CRLImageMaskResizer *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_interactiveCanvasController, v4);
  }

  return v11;
}

- (void)beginResizingRep:(id)a3
{
  v19 = a3;
  v4 = objc_opt_class();
  v5 = sub_100013F00(v4, v19);
  v6 = v5;
  if (self->_maskResizeTracker)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7)
  {
    self->_readyToEnd = 0;
    v8 = [[CRLMaskResizeTracker alloc] initWithImageRep:v5];
    maskResizeTracker = self->_maskResizeTracker;
    self->_maskResizeTracker = v8;

    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v11 = [WeakRetained tmCoordinator];
    [v11 registerTrackerManipulator:self];

    v12 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v13 = [v12 tmCoordinator];
    [v13 takeControlWithTrackerManipulator:self];

    v14 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v15 = [v14 dynamicOperationController];
    [v15 beginOperation];

    v16 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v17 = [v16 dynamicOperationController];
    v18 = [NSSet setWithObject:v19];
    [v17 startTransformingReps:v18];
  }
}

- (void)updateResizeToScale:(double)a3
{
  maskResizeTracker = self->_maskResizeTracker;
  if (maskResizeTracker)
  {
    [(CRLMaskResizeTracker *)maskResizeTracker setSliderValue:a3];
    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v5 = [WeakRetained dynamicOperationController];
    [v5 handleTrackerManipulator:self];
  }
}

- (void)endResizingRepAtScale:(double)a3
{
  maskResizeTracker = self->_maskResizeTracker;
  if (maskResizeTracker)
  {
    self->_readyToEnd = 1;
    [(CRLMaskResizeTracker *)maskResizeTracker setSliderValue:a3];
    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v5 = [WeakRetained dynamicOperationController];
    [v5 handleTrackerManipulator:self];
  }
}

- (void)operationDidEnd
{
  maskResizeTracker = self->_maskResizeTracker;
  self->_maskResizeTracker = 0;
}

@end