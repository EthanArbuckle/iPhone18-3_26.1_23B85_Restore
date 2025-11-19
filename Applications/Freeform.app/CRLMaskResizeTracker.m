@interface CRLMaskResizeTracker
- (BOOL)traceIfDesiredForBeginOperation;
- (BOOL)traceIfDesiredForEndOperation;
- (CGAffineTransform)p_currentResizeTransform;
- (CRLMaskResizeTracker)initWithImageRep:(id)a3;
- (void)changeDynamicLayoutsForReps:(id)a3;
- (void)commitChangesForReps:(id)a3;
- (void)willBeginDynamicOperationForReps:(id)a3;
@end

@implementation CRLMaskResizeTracker

- (CRLMaskResizeTracker)initWithImageRep:(id)a3
{
  v5 = a3;
  if (!v5)
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
    objc_storeStrong(&v9->mImageRep, a3);
    v11 = [v5 imageLayout];
    v12 = [v11 imageGeometry];
    [v12 frame];
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

- (void)willBeginDynamicOperationForReps:(id)a3
{
  v4 = a3;
  if ([v4 count] != 1 || (objc_msgSend(v4, "anyObject"), v5 = objc_claimAutoreleasedReturnValue(), mImageRep = self->mImageRep, v5, v5 != mImageRep))
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132CE5C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132CE70(v4, v7, v8);
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
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:68 isFatal:0 description:"Unexpected rep(s) for transformation %@", v4];
  }
}

- (void)changeDynamicLayoutsForReps:(id)a3
{
  v4 = a3;
  if ([v4 count] != 1 || (objc_msgSend(v4, "anyObject"), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) == 0))
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

  v10 = [(CRLImageRep *)self->mImageRep imageLayout];
  v11 = [v10 isInMaskScaleMode];

  if ((v11 & 1) == 0)
  {
    [(CRLImageRep *)self->mImageRep beginDynamicallyChangingMaskScale];
  }

  v12 = [(CRLImageRep *)self->mImageRep imageLayout];
  [(CRLMaskResizeTracker *)self p_currentResizeTransform];
  [v12 resizeWithTransform:&v15];

  v13 = [(CRLImageRep *)self->mImageRep imageLayout];
  v14 = [v13 maskEditMode];

  if (v14 == 3)
  {
    [(CRLCanvasRep *)self->mImageRep invalidateKnobPositions];
  }
}

- (void)commitChangesForReps:(id)a3
{
  v4 = self->mImageRep;
  v5 = [(CRLCanvasRep *)v4 interactiveCanvasController];
  v6 = [v5 commandController];
  v7 = [CRLCanvasCommandSelectionBehavior alloc];
  v8 = [v5 canvasEditor];
  v9 = [(CRLCanvasCommandSelectionBehavior *)v7 initWithCanvasEditor:v8 type:2];

  v41 = v9;
  [v6 openGroupWithSelectionBehavior:v9];
  v10 = [(CRLImageRep *)v4 actionStringForResize];
  [v6 setCurrentGroupActionString:v10];

  [(CRLMaskResizeTracker *)self p_currentResizeTransform];
  v11 = [(CRLImageRep *)v4 resizedGeometryForTransform:v42];
  v12 = [(CRLImageRep *)v4 imageLayout];
  v13 = [v12 maskLayout];
  v14 = [v13 infoGeometry];

  v15 = [(CRLImageRep *)v4 imageLayout];
  v16 = [v15 maskLayout];
  v17 = [v16 pathSource];

  v18 = [(CRLImageRep *)v4 imageInfo];
  v39 = v14;
  v40 = v11;
  v19 = [[_TtC8Freeform30CRLCommandSetImageItemGeometry alloc] initWithImageItem:v18 imageGeometry:v11 maskGeometry:v14 maskPathSource:v17];
  [v6 enqueueCommand:v19];
  [v6 closeGroup];
  [(CRLImageRep *)v4 endDynamicallyChangingMaskScale:self->mSliderValue];
  v20 = [(CRLImageRep *)v4 imageLayout];
  v21 = [v20 maskEditMode];

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v22 = [v5 layerHost];
  v23 = [v22 imageHUDController];
  [v23 setNotAllowedToHideHUD:1];

  [v5 layoutIfNeeded];
  v24 = [(CRLCanvasRep *)self->mImageRep info];
  v25 = [v5 repsForInfo:v24];

  if (v25 && [v25 count] && (objc_msgSend(v25, "containsObject:", self->mImageRep) & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    v38 = v21;
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

    v29 = [v25 anyObject];
    v30 = objc_opt_class();
    v37 = v29;
    v31 = sub_100014370(v30, v29);
    [v31 editMaskWithHUD:1];
    v32 = [v31 imageLayout];
    v33 = [v32 maskEditMode];

    if (v33 != v38)
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

  v35 = [v5 layerHost];
  v36 = [v35 imageHUDController];
  [v36 setNotAllowedToHideHUD:0];

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