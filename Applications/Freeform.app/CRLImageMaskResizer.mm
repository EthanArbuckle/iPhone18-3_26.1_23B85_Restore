@interface CRLImageMaskResizer
- (CRLImageMaskResizer)initWithInteractiveCanvasController:(id)controller;
- (void)beginResizingRep:(id)rep;
- (void)endResizingRepAtScale:(double)scale;
- (void)operationDidEnd;
- (void)updateResizeToScale:(double)scale;
@end

@implementation CRLImageMaskResizer

- (CRLImageMaskResizer)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
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
    objc_storeWeak(&v10->_interactiveCanvasController, controllerCopy);
  }

  return v11;
}

- (void)beginResizingRep:(id)rep
{
  repCopy = rep;
  v4 = objc_opt_class();
  v5 = sub_100013F00(v4, repCopy);
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
    tmCoordinator = [WeakRetained tmCoordinator];
    [tmCoordinator registerTrackerManipulator:self];

    v12 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    tmCoordinator2 = [v12 tmCoordinator];
    [tmCoordinator2 takeControlWithTrackerManipulator:self];

    v14 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    dynamicOperationController = [v14 dynamicOperationController];
    [dynamicOperationController beginOperation];

    v16 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    dynamicOperationController2 = [v16 dynamicOperationController];
    v18 = [NSSet setWithObject:repCopy];
    [dynamicOperationController2 startTransformingReps:v18];
  }
}

- (void)updateResizeToScale:(double)scale
{
  maskResizeTracker = self->_maskResizeTracker;
  if (maskResizeTracker)
  {
    [(CRLMaskResizeTracker *)maskResizeTracker setSliderValue:scale];
    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    dynamicOperationController = [WeakRetained dynamicOperationController];
    [dynamicOperationController handleTrackerManipulator:self];
  }
}

- (void)endResizingRepAtScale:(double)scale
{
  maskResizeTracker = self->_maskResizeTracker;
  if (maskResizeTracker)
  {
    self->_readyToEnd = 1;
    [(CRLMaskResizeTracker *)maskResizeTracker setSliderValue:scale];
    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    dynamicOperationController = [WeakRetained dynamicOperationController];
    [dynamicOperationController handleTrackerManipulator:self];
  }
}

- (void)operationDidEnd
{
  maskResizeTracker = self->_maskResizeTracker;
  self->_maskResizeTracker = 0;
}

@end