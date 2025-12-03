@interface CRLMaskResizeTracker
- (BOOL)traceIfDesiredForBeginOperation;
- (BOOL)traceIfDesiredForEndOperation;
- (CGAffineTransform)p_currentResizeTransform;
- (CRLMaskResizeTracker)initWithImageRep:(id)rep;
- (void)changeDynamicLayoutsForReps:(id)reps;
- (void)commitChangesForReps:(id)reps;
- (void)willBeginDynamicOperationForReps:(id)reps;
@end

@implementation CRLMaskResizeTracker

- (CRLMaskResizeTracker)initWithImageRep:(id)rep
{
  repCopy = rep;
  if (!repCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132CD70();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132CD84();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132CE34();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLMaskResizeTracker initWithImageRep:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskResizeTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:30 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "imageRep != nil"];
  }

  v21.receiver = self;
  v21.super_class = CRLMaskResizeTracker;
  v9 = [(CRLMaskResizeTracker *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mImageRep, rep);
    imageLayout = [repCopy imageLayout];
    imageGeometry = [imageLayout imageGeometry];
    [imageGeometry frame];
    v17 = sub_100120414(v13, v14, v15, v16);
    v19 = v18;

    v10->mCenterInParentSpace.x = v17;
    v10->mCenterInParentSpace.y = v19;
  }

  return v10;
}

- (CGAffineTransform)p_currentResizeTransform
{
  mSliderValue = self->mSliderValue;
  [(CRLImageRep *)self->mImageRep maskScale];
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  CGAffineTransformMakeScale(&v10, mSliderValue / v6, mSliderValue / v6);
  v7 = sub_10011F340(self->mCenterInParentSpace.x, self->mCenterInParentSpace.y, -1.0);
  return sub_100139EB4(&v10, retstr, v7, v8);
}

- (void)willBeginDynamicOperationForReps:(id)reps
{
  repsCopy = reps;
  if ([repsCopy count] != 1 || (objc_msgSend(repsCopy, "anyObject"), v5 = objc_claimAutoreleasedReturnValue(), mImageRep = self->mImageRep, v5, v5 != mImageRep))
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132CE5C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132CE70(repsCopy, v7, v8);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132CF2C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLMaskResizeTracker willBeginDynamicOperationForReps:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskResizeTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:68 isFatal:0 description:"Unexpected rep(s) for transformation %@", repsCopy];
  }
}

- (void)changeDynamicLayoutsForReps:(id)reps
{
  repsCopy = reps;
  if ([repsCopy count] != 1 || (objc_msgSend(repsCopy, "anyObject"), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) == 0))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132CF54();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132CF68();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132CFFC();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLMaskResizeTracker changeDynamicLayoutsForReps:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskResizeTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:80 isFatal:0 description:"image mask editor not given correct reps for resize"];
  }

  imageLayout = [(CRLImageRep *)self->mImageRep imageLayout];
  isInMaskScaleMode = [imageLayout isInMaskScaleMode];

  if ((isInMaskScaleMode & 1) == 0)
  {
    [(CRLImageRep *)self->mImageRep beginDynamicallyChangingMaskScale];
  }

  imageLayout2 = [(CRLImageRep *)self->mImageRep imageLayout];
  [(CRLMaskResizeTracker *)self p_currentResizeTransform];
  [imageLayout2 resizeWithTransform:&v15];

  imageLayout3 = [(CRLImageRep *)self->mImageRep imageLayout];
  maskEditMode = [imageLayout3 maskEditMode];

  if (maskEditMode == 3)
  {
    [(CRLCanvasRep *)self->mImageRep invalidateKnobPositions];
  }
}

- (void)commitChangesForReps:(id)reps
{
  v4 = self->mImageRep;
  interactiveCanvasController = [(CRLCanvasRep *)v4 interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  v7 = [CRLCanvasCommandSelectionBehavior alloc];
  canvasEditor = [interactiveCanvasController canvasEditor];
  v9 = [(CRLCanvasCommandSelectionBehavior *)v7 initWithCanvasEditor:canvasEditor type:2];

  v41 = v9;
  [commandController openGroupWithSelectionBehavior:v9];
  actionStringForResize = [(CRLImageRep *)v4 actionStringForResize];
  [commandController setCurrentGroupActionString:actionStringForResize];

  [(CRLMaskResizeTracker *)self p_currentResizeTransform];
  v11 = [(CRLImageRep *)v4 resizedGeometryForTransform:v42];
  imageLayout = [(CRLImageRep *)v4 imageLayout];
  maskLayout = [imageLayout maskLayout];
  infoGeometry = [maskLayout infoGeometry];

  imageLayout2 = [(CRLImageRep *)v4 imageLayout];
  maskLayout2 = [imageLayout2 maskLayout];
  pathSource = [maskLayout2 pathSource];

  imageInfo = [(CRLImageRep *)v4 imageInfo];
  v39 = infoGeometry;
  v40 = v11;
  v19 = [[_TtC8Freeform30CRLCommandSetImageItemGeometry alloc] initWithImageItem:imageInfo imageGeometry:v11 maskGeometry:infoGeometry maskPathSource:pathSource];
  [commandController enqueueCommand:v19];
  [commandController closeGroup];
  [(CRLImageRep *)v4 endDynamicallyChangingMaskScale:self->mSliderValue];
  imageLayout3 = [(CRLImageRep *)v4 imageLayout];
  maskEditMode = [imageLayout3 maskEditMode];

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  layerHost = [interactiveCanvasController layerHost];
  imageHUDController = [layerHost imageHUDController];
  [imageHUDController setNotAllowedToHideHUD:1];

  [interactiveCanvasController layoutIfNeeded];
  info = [(CRLCanvasRep *)self->mImageRep info];
  v25 = [interactiveCanvasController repsForInfo:info];

  if (v25 && [v25 count] && (objc_msgSend(v25, "containsObject:", self->mImageRep) & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    v38 = maskEditMode;
    if (qword_101AD5A10 != -1)
    {
      sub_10132D024();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132D04C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132D0E0();
    }

    v26 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v26);
    }

    v27 = [NSString stringWithUTF8String:"[CRLMaskResizeTracker commitChangesForReps:]"];
    v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskResizeTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:135 isFatal:0 description:"Image rep was moved to floating to manipulate it. This will probably do something bad for template objects."];

    anyObject = [v25 anyObject];
    v30 = objc_opt_class();
    v37 = anyObject;
    v31 = sub_100014370(v30, anyObject);
    [v31 editMaskWithHUD:1];
    imageLayout4 = [v31 imageLayout];
    maskEditMode2 = [imageLayout4 maskEditMode];

    if (maskEditMode2 != v38)
    {
      if (v38 == 3)
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      [v31 beginEditingMaskInMaskEditMode:v34];
    }
  }

  layerHost2 = [interactiveCanvasController layerHost];
  imageHUDController2 = [layerHost2 imageHUDController];
  [imageHUDController2 setNotAllowedToHideHUD:0];

  +[CATransaction commit];
}

- (BOOL)traceIfDesiredForBeginOperation
{
  if (qword_101AD5A08 != -1)
  {
    sub_10132D108();
  }

  v2 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "begin resize mask with slider operation", v4, 2u);
  }

  return 1;
}

- (BOOL)traceIfDesiredForEndOperation
{
  if (qword_101AD5A08 != -1)
  {
    sub_10132D11C();
  }

  v2 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "end resize mask with slider operation", v4, 2u);
  }

  return 1;
}

@end