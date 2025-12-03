@interface CRLCanvasRepRotateTracker
- (BOOL)traceIfDesiredForBeginOperation;
- (BOOL)traceIfDesiredForEndOperation;
- (CGAffineTransform)rotateTransform;
- (CGPoint)centerForRotation;
- (CGPoint)p_scaledCenterForRotation;
- (CGPoint)scaledHUDPosition;
- (CGPoint)unscaledCenterForRotation;
- (CRLCanvasRepRotateTracker)initWithRep:(id)rep;
- (NSArray)decoratorOverlayRenderables;
- (NSSet)repsBeingRotated;
- (id)repsToHide;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)changeDynamicLayoutsForReps:(id)reps;
- (void)commitChangesForReps:(id)reps;
- (void)dealloc;
- (void)p_begin;
- (void)p_hideGuideRenderable;
- (void)p_hideHUD;
- (void)p_sproingHUD;
- (void)p_updateCenterForRotationIfNecessary;
- (void)p_updateGuideRenderableWithAngle:(double)angle didSnap:(BOOL)snap;
- (void)p_updateHUDWithAngle:(double)angle;
- (void)setUnscaledCenterForRotation:(CGPoint)rotation;
- (void)willBeginDynamicOperationForReps:(id)reps;
@end

@implementation CRLCanvasRepRotateTracker

- (CRLCanvasRepRotateTracker)initWithRep:(id)rep
{
  repCopy = rep;
  v27.receiver = self;
  v27.super_class = CRLCanvasRepRotateTracker;
  v5 = [(CRLCanvasRepRotateTracker *)&v27 init];
  if (v5)
  {
    if (!repCopy)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101395C84();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101395CAC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101395D5C();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLCanvasRepRotateTracker initWithRep:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepRotateTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:87 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
    }

    [v5 setRep:repCopy];
    v5[105] = 1;
    *(v5 + 24) = xmmword_1014629E0;
    [*(v5 + 1) angleForRotation];
    *(v5 + 10) = v9;
    *(v5 + 11) = v9;
    v10 = [v5 rep];
    layout = [v10 layout];
    parent = [layout parent];

    v13 = *(v5 + 10);
    if (parent)
    {
      v14 = sub_100120F98(v13 * 0.0174532925);
      v16 = v15;
      v17 = [v5 rep];
      layout2 = [v17 layout];
      parent2 = [layout2 parent];
      v20 = parent2;
      if (parent2)
      {
        [parent2 transformInRoot];
      }

      else
      {
        memset(&v25, 0, sizeof(v25));
      }

      CGAffineTransformInvert(&v26, &v25);
      v21 = sub_10012119C(&v26, v14, v16);
      v23 = v22;

      v13 = sub_1001208D0(v21, v23) * 57.2957795;
      *(v5 + 10) = v13;
    }

    *(v5 + 7) = v13;
    *(v5 + 8) = v13;
    *(v5 + 9) = 0;
    v5[107] = 1;
  }

  return v5;
}

- (void)dealloc
{
  [(CRLCanvasRepRotateTracker *)self p_hideHUD];
  [(CRLCanvasRenderable *)self->mGuideRenderable setDelegate:0];
  v3.receiver = self;
  v3.super_class = CRLCanvasRepRotateTracker;
  [(CRLCanvasRepRotateTracker *)&v3 dealloc];
}

- (void)willBeginDynamicOperationForReps:(id)reps
{
  interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  if ([interactiveCanvasController shouldSupportedDynamicOperationsEnqueueCommandsInRealTime])
  {
    allowsSupportedDynamicOperationsToBeRealTime = [(CRLCanvasRep *)self->mRep allowsSupportedDynamicOperationsToBeRealTime];

    if (allowsSupportedDynamicOperationsToBeRealTime)
    {
      self->mIsEnqueueingCommandsInRealTime = 1;
    }
  }

  else
  {
  }
}

- (void)changeDynamicLayoutsForReps:(id)reps
{
  repsCopy = reps;
  if ([repsCopy count] != 1 || (objc_msgSend(repsCopy, "anyObject"), v5 = objc_claimAutoreleasedReturnValue(), mRep = self->mRep, v5, v5 != mRep))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101395D84();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101395D98();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101395E38();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLCanvasRepRotateTracker changeDynamicLayoutsForReps:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepRotateTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:186 isFatal:0 description:"attempting to rotate more than one rep, or the wrong rep"];
  }

  if ([(CRLCanvasRepRotateTracker *)self isWaitingToBeginRotation])
  {
    [(CRLCanvasRepRotateTracker *)self p_updateCenterForRotationIfNecessary];
    [(CRLCanvasRepRotateTracker *)self p_updateHUDWithAngle:self->mOriginalAngleInDegrees];
    [(CRLCanvasRepRotateTracker *)self p_sproingHUD];
    if ([(CRLCanvasRepRotateTracker *)self shouldShowGuides])
    {
      [(CRLCanvasRepRotateTracker *)self p_updateGuideRenderableWithAngle:0 didSnap:self->mOriginalAngleInDegrees];
    }
  }

  else
  {
    if (!self->mDidBeginRotation)
    {
      [(CRLCanvasRepRotateTracker *)self p_begin];
      [(CRLCanvasRepRotateTracker *)self p_sproingHUD];
      self->mDidBeginRotation = 1;
    }

    sub_1001208E0(self->mCurrentPhysicalAngleInDegrees + self->mRotateDeltaInRadians * 180.0 / 3.14159265);
    self->mCurrentLogicalAngleInDegrees = v10;
    self->mCurrentPhysicalAngleInDegrees = v10;
    self->mRotateDeltaInRadians = 0.0;
    v11 = vabdd_f64(v10, self->mOriginalAngleInDegrees);
    mMovedMinimumDistance = self->mMovedMinimumDistance;
    if (!mMovedMinimumDistance)
    {
      mMovedMinimumDistance = v11 > 10.0;
      if (v11 >= 350.0)
      {
        mMovedMinimumDistance = 0;
      }

      self->mMovedMinimumDistance = mMovedMinimumDistance;
    }

    mSnapThreshold = self->mSnapThreshold;
    if (mSnapThreshold > 20.0)
    {
      goto LABEL_25;
    }

    v14 = v11 > 5.0;
    if (v11 >= 355.0)
    {
      v14 = 0;
    }

    if (v14 || mMovedMinimumDistance)
    {
LABEL_25:
      v15 = v10 / 45.0;
      v16 = floorf(v15);
      if (fabs(-(v10 - v16 * 45.0)) >= fabs(-(v10 - (v16 + 1.0) * 45.0)))
      {
        v17 = -(v10 - (v16 + 1.0) * 45.0);
      }

      else
      {
        v17 = -(v10 - v16 * 45.0);
      }

      v18 = fabs(v17);
      v19 = v18 <= mSnapThreshold;
      if (v18 > mSnapThreshold)
      {
        v17 = 0.0;
      }

      else
      {
        sub_1001208E0(v10 + v17);
      }

      self->mCurrentLogicalAngleInDegrees = v10;
    }

    else
    {
      v19 = 0;
      v17 = 0.0;
    }

    self->mPreviousSnap = v17;
    [(CRLCanvasRep *)self->mRep dynamicallyRotatingWithTracker:self];
    [(CRLCanvasRepRotateTracker *)self p_updateHUDWithAngle:self->mCurrentLogicalAngleInDegrees];
    if ([(CRLCanvasRepRotateTracker *)self shouldShowGuides])
    {
      [(CRLCanvasRepRotateTracker *)self p_updateGuideRenderableWithAngle:v19 didSnap:self->mCurrentLogicalAngleInDegrees];
    }

    layout = [(CRLCanvasRep *)self->mRep layout];
    layoutController = [layout layoutController];
    layout2 = [(CRLCanvasRep *)self->mRep layout];
    [layoutController validateLayoutWithDependencies:layout2];
  }
}

- (CGAffineTransform)rotateTransform
{
  mCurrentLogicalAngleInDegrees = self->mCurrentLogicalAngleInDegrees;
  v6 = [(CRLCanvasRepRotateTracker *)self rep];
  layout = [v6 layout];
  parent = [layout parent];

  if (parent)
  {
    v9 = sub_100120F98(self->mCurrentLogicalAngleInDegrees * 0.0174532925);
    v11 = v10;
    v12 = [(CRLCanvasRepRotateTracker *)self rep];
    layout2 = [v12 layout];
    parent2 = [layout2 parent];
    v15 = parent2;
    if (parent2)
    {
      [parent2 transformInRoot];
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
    }

    v16 = sub_10012119C(&v25, v9, v11);
    v18 = v17;

    mCurrentLogicalAngleInDegrees = sub_1001208D0(v16, v18) * 57.2957795;
  }

  v19 = self->mOriginalAngleForRotationInDegrees - mCurrentLogicalAngleInDegrees;
  x = self->mCenterForRotation.x;
  y = self->mCenterForRotation.y;
  CGAffineTransformMakeTranslation(&t1, -x, -y);
  CGAffineTransformMakeRotation(&v23, v19 * 0.0174532925);
  CGAffineTransformConcat(&v25, &t1, &v23);
  CGAffineTransformMakeTranslation(&t1, x, y);
  return CGAffineTransformConcat(retstr, &v25, &t1);
}

- (void)commitChangesForReps:(id)reps
{
  if (self->mDidBeginRotation)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
    commandController = [interactiveCanvasController commandController];
    if ([(CRLCanvasRepRotateTracker *)self isInspectorDrivenTracking])
    {
      infosForCurrentSelectionPath = [interactiveCanvasController infosForCurrentSelectionPath];
      v7 = +[NSMutableSet set];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = infosForCurrentSelectionPath;
      v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v25;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v25 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v24 + 1) + 8 * i);
            v14 = [interactiveCanvasController layoutForInfo:{v13, v24}];
            if ([v14 supportsRotation])
            {
              [v7 addObject:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v10);
      }

      canvasEditor = [interactiveCanvasController canvasEditor];
      v16 = [canvasEditor selectionPathWithInfos:v7];
    }

    else
    {
      canvasEditor2 = [interactiveCanvasController canvasEditor];
      info = [(CRLCanvasRep *)self->mRep info];
      v19 = [NSSet setWithObject:info];
      v16 = [canvasEditor2 selectionPathWithInfos:v19];
    }

    v20 = [[CRLCommandSelectionBehavior alloc] initWithCommitSelectionPath:0 forwardSelectionPath:v16 reverseSelectionPath:v16];
    [commandController openGroupWithSelectionBehavior:v20];
    actionStringForRotate = [(CRLCanvasRep *)self->mRep actionStringForRotate];
    [commandController setCurrentGroupActionString:actionStringForRotate];

    [(CRLCanvasRep *)self->mRep dynamicRotateDidEndWithTracker:self];
    if ([(CRLCanvasRep *)self->mRep shouldRasterizeRenderableDuringRotation])
    {
      interactiveCanvasController2 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
      v23 = [interactiveCanvasController2 renderableForRep:self->mRep];
      [v23 setShouldRasterize:0];
    }

    if ([(CRLCanvasRepRotateTracker *)self isInspectorDrivenTracking])
    {
      [(CRLCanvasRep *)self->mRep setShowKnobsDuringManipulation:0];
    }

    [commandController closeGroup];
    if (self->mIsEnqueueingCommandsInRealTime)
    {
      [commandController closeGroup];
    }
  }

  [(CRLCanvasRepRotateTracker *)self p_hideHUD];
  [(CRLCanvasRepRotateTracker *)self p_hideGuideRenderable];
}

- (BOOL)traceIfDesiredForBeginOperation
{
  if (qword_101AD5A08 != -1)
  {
    sub_101395E60();
  }

  v2 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "begin rotate operation", v4, 2u);
  }

  return 1;
}

- (BOOL)traceIfDesiredForEndOperation
{
  if (qword_101AD5A08 != -1)
  {
    sub_101395E74();
  }

  v3 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
  {
    v4 = self->mCurrentLogicalAngleInDegrees - self->mOriginalAngleInDegrees;
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "end rotate operation. rotated by %f degrees", &v6, 0xCu);
  }

  return 1;
}

- (id)repsToHide
{
  v3 = objc_opt_new();
  v4 = [(CRLCanvasRepRotateTracker *)self rep];
  parentRep = [v4 parentRep];

  layout = [parentRep layout];
  v7 = [(CRLCanvasRepRotateTracker *)self rep];
  layout2 = [v7 layout];
  v9 = [layout childLayoutIsCurrentlyHiddenWhileManipulating:layout2];

  if (v9)
  {
    v10 = [(CRLCanvasRepRotateTracker *)self rep];
    v11 = [NSSet setWithObject:v10];

    v3 = v11;
  }

  return v3;
}

- (NSArray)decoratorOverlayRenderables
{
  if (self->mGuideRenderable)
  {
    mGuideRenderable = self->mGuideRenderable;
    v2 = [NSArray arrayWithObjects:&mGuideRenderable count:1];
  }

  else
  {
    v2 = &__NSArray0__struct;
  }

  return v2;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v5 = [stop valueForKey:{@"icc", finished}];
  [v5 removeDecorator:self];
}

- (void)p_begin
{
  interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  [interactiveCanvasController endEditing];
  if (self->mIsEnqueueingCommandsInRealTime)
  {
    commandController = [interactiveCanvasController commandController];
    [commandController openGroup];
    [commandController enableRealTimeSyncProgressiveEnqueuingInCurrentGroup];
  }

  v4 = [(CRLCanvasRepRotateTracker *)self rep];
  if ([v4 shouldRasterizeRenderableDuringRotation])
  {
    v5 = [interactiveCanvasController renderableForRep:v4];
    [v5 setShouldRasterize:1];
    [v5 contentsScale];
    [v5 setRasterizationScale:?];
  }

  [v4 dynamicRotateDidBegin];
  [v4 setShowKnobsDuringManipulation:{-[CRLCanvasRepRotateTracker isInspectorDrivenTracking](self, "isInspectorDrivenTracking")}];
  [(CRLCanvasRepRotateTracker *)self p_updateCenterForRotationIfNecessary];
}

- (void)p_updateCenterForRotationIfNecessary
{
  if (self->mCenterForRotation.x == INFINITY && self->mCenterForRotation.y == INFINITY)
  {
    v4 = [(CRLCanvasRepRotateTracker *)self rep];
    layout = [v4 layout];

    originalGeometry = [layout originalGeometry];
    [layout centerForRotation];
    if (originalGeometry)
    {
      v12 = v8;
      v13 = v7;
      [originalGeometry transform];
      v8 = v12;
      v7 = v13;
      v10 = v14;
      v9 = v15;
      v11 = v16;
    }

    else
    {
      v11 = 0uLL;
      v10 = 0uLL;
      v9 = 0uLL;
    }

    self->mCenterForRotation = vaddq_f64(v11, vmlaq_n_f64(vmulq_n_f64(v9, v8), v10, v7));
  }
}

- (CGPoint)p_scaledCenterForRotation
{
  interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  [(CRLCanvasRepRotateTracker *)self unscaledCenterForRotation];
  [interactiveCanvasController convertUnscaledToBoundsPoint:?];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)unscaledCenterForRotation
{
  layout = [(CRLCanvasRep *)self->mRep layout];
  originalGeometry = [layout originalGeometry];

  if (!originalGeometry)
  {
    memset(&v31, 0, sizeof(v31));
    layout2 = [(CRLCanvasRep *)self->mRep layout];
    geometry = [layout2 geometry];
    v10 = geometry;
    if (geometry)
    {
      [geometry transform];
    }

    else
    {
      memset(&v30, 0, sizeof(v30));
    }

    CGAffineTransformInvert(&v31, &v30);

    x = self->mCenterForRotation.x;
    y = self->mCenterForRotation.y;
    v13 = v31.tx + y * v31.c + v31.a * x;
    v14 = v31.ty + y * v31.d + v31.b * x;
    layout3 = [(CRLCanvasRep *)self->mRep layout];
    v16 = layout3;
    if (layout3)
    {
      [layout3 transformInRoot];
      goto LABEL_12;
    }

LABEL_13:
    ty = 0.0;
    d = 0.0;
    b = 0.0;
    tx = 0.0;
    c = 0.0;
    a = 0.0;
    goto LABEL_14;
  }

  memset(&v31, 0, sizeof(v31));
  layout4 = [(CRLCanvasRep *)self->mRep layout];
  originalGeometry2 = [layout4 originalGeometry];
  v7 = originalGeometry2;
  if (originalGeometry2)
  {
    [originalGeometry2 transform];
  }

  else
  {
    memset(&v30, 0, sizeof(v30));
  }

  CGAffineTransformInvert(&v31, &v30);

  v11 = self->mCenterForRotation.x;
  v12 = self->mCenterForRotation.y;
  v13 = v31.tx + v12 * v31.c + v31.a * v11;
  v14 = v31.ty + v12 * v31.d + v31.b * v11;
  layout5 = [(CRLCanvasRep *)self->mRep layout];
  v16 = layout5;
  if (!layout5)
  {
    goto LABEL_13;
  }

  [layout5 originalTransformInRoot];
LABEL_12:
  b = v30.b;
  a = v30.a;
  d = v30.d;
  c = v30.c;
  ty = v30.ty;
  tx = v30.tx;
LABEL_14:
  v26 = tx + v14 * c + a * v13;
  v27 = ty + v14 * d + b * v13;

  v28 = v26;
  v29 = v27;
  result.y = v29;
  result.x = v28;
  return result;
}

- (void)setUnscaledCenterForRotation:(CGPoint)rotation
{
  y = rotation.y;
  x = rotation.x;
  layout = [(CRLCanvasRep *)self->mRep layout];
  originalGeometry = [layout originalGeometry];

  if (originalGeometry)
  {
    memset(&v21, 0, sizeof(v21));
    layout2 = [(CRLCanvasRep *)self->mRep layout];
    v9 = layout2;
    if (layout2)
    {
      [layout2 originalTransformInRoot];
    }

    else
    {
      memset(&v20, 0, sizeof(v20));
    }

    CGAffineTransformInvert(&v21, &v20);

    v19 = v21.tx + y * v21.c + v21.a * x;
    v18 = v21.ty + y * v21.d + v21.b * x;
    layout3 = [(CRLCanvasRep *)self->mRep layout];
    originalGeometry2 = [layout3 originalGeometry];
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
    layout4 = [(CRLCanvasRep *)self->mRep layout];
    v11 = layout4;
    if (layout4)
    {
      [layout4 transformInRoot];
    }

    else
    {
      memset(&v20, 0, sizeof(v20));
    }

    CGAffineTransformInvert(&v21, &v20);

    v19 = v21.tx + y * v21.c + v21.a * x;
    v18 = v21.ty + y * v21.d + v21.b * x;
    layout3 = [(CRLCanvasRep *)self->mRep layout];
    originalGeometry2 = [layout3 geometry];
  }

  v14 = originalGeometry2;
  if (originalGeometry2)
  {
    [originalGeometry2 transform];
    v15 = *&v20.a;
    v16 = *&v20.c;
    v17 = *&v20.tx;
  }

  else
  {
    v17 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  self->mCenterForRotation = vaddq_f64(v17, vmlaq_n_f64(vmulq_n_f64(v16, v18), v15, v19));
}

- (NSSet)repsBeingRotated
{
  v2 = [(CRLCanvasRepRotateTracker *)self rep];
  v3 = [NSSet setWithObject:v2];

  return v3;
}

- (void)p_updateHUDWithAngle:(double)angle
{
  if ([(CRLCanvasRepRotateTracker *)self shouldShowHUD])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
    v6 = +[CRLCanvasHUDController sharedHUDController];
    v7 = [interactiveCanvasController unitStringForAngle:angle];
    [v6 setLabelText:v7];
    if ([(CRLCanvasRepRotateTracker *)self shouldRespectScaledHUDPosition])
    {
      [(CRLCanvasRepRotateTracker *)self scaledHUDPosition];
      v10 = sub_10011F334(v8, v9, 20.0);
      v12 = v11;
      canvasView = [interactiveCanvasController canvasView];
      [v6 showHUDForKey:self forTouchPoint:canvasView inCanvasView:0 withNudge:v10 size:v12 anchorPoint:{CGSizeZero.width, CGSizeZero.height, 0.0, 1.0}];
    }

    else
    {
      [(CRLCanvasRepRotateTracker *)self p_scaledCenterForRotation];
      v15 = v14;
      v17 = v16;
      [(CRLCanvasRep *)self->mRep unscaledGuidePosition];
      [interactiveCanvasController convertUnscaledToBoundsPoint:?];
      v26 = 0.0;
      v27 = 0.0;
      v20 = sub_100120090(v18, v19, v15, v17);
      sub_100120F28(&v26, v20 + 25.0, (angle + 90.0) * -0.0174532925);
      v21 = sub_10011F334(v26, v27, v15);
      v23 = sub_100122154(v21, v22);
      v25 = v24;
      canvasView = [interactiveCanvasController canvasView];
      [v6 showHUDForKey:self forTouchPoint:canvasView inCanvasView:v23 withUpwardsNudge:{v25, 0.0}];
    }
  }
}

- (void)p_sproingHUD
{
  if (!self->mHaveSproingedHUD)
  {
    if ([(CRLCanvasRepRotateTracker *)self shouldShowHUD])
    {
      v3 = +[CRLCanvasHUDController sharedHUDController];
      view = [v3 view];
      [view center];
      v6 = v5;
      v8 = v7;

      [(CRLCanvasRepRotateTracker *)self p_scaledCenterForRotation];
      v10 = v9;
      v12 = v11;
      view2 = [v3 view];
      superview = [view2 superview];
      interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
      layerHost = [interactiveCanvasController layerHost];
      canvasView = [layerHost canvasView];
      [superview convertPoint:canvasView fromView:{v10, v12}];
      v19 = v18;
      v21 = v20;

      v22 = sub_10011F31C(v19, v21, v6);
      v24 = v23;
      v25 = sub_100120090(v19, v21, v6, v8);
      v26 = sub_10011F340(v22, v24, 70.0 / v25);
      v27 = sub_10011F334(v6, v8, v26);
      v29 = v28;
      v30 = sub_100120090(v27, v28, v6, v8);
      if (v25 >= v30)
      {
        v31 = v27;
      }

      else
      {
        v31 = v19;
      }

      if (v25 >= v30)
      {
        v32 = v29;
      }

      else
      {
        v32 = v21;
      }

      view3 = [v3 view];
      layer = [view3 layer];
      [layer crl_addZoomAnimationFromPoint:{v31, v32}];
    }

    self->mHaveSproingedHUD = 1;
  }
}

- (void)p_hideHUD
{
  if ([(CRLCanvasRepRotateTracker *)self shouldShowHUD])
  {
    v3 = +[CRLCanvasHUDController sharedHUDController];
    [v3 hideHUDForKey:self];
  }
}

- (void)p_updateGuideRenderableWithAngle:(double)angle didSnap:(BOOL)snap
{
  snapCopy = snap;
  mGuideRenderable = self->mGuideRenderable;
  if (!mGuideRenderable)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
    canvas = [interactiveCanvasController canvas];
    [canvas contentsScale];
    v11 = v10;

    v12 = +[CRLCanvasShapeRenderable renderable];
    v13 = self->mGuideRenderable;
    self->mGuideRenderable = v12;

    v14 = sub_1000CCEA0(0.933000028, 0.791999996, 0.0, 1.0);
    [(CRLCanvasShapeRenderable *)self->mGuideRenderable setStrokeColor:v14];
    CGColorRelease(v14);
    [(CRLCanvasShapeRenderable *)self->mGuideRenderable setFillColor:0];
    [(CRLCanvasShapeRenderable *)self->mGuideRenderable setLineWidth:1.0 / v11];
    [(CRLCanvasRenderable *)self->mGuideRenderable setZPosition:-1.0];
    [(CRLCanvasRenderable *)self->mGuideRenderable setAnchorPoint:0.5, 0.0];
    [(CRLCanvasRenderable *)self->mGuideRenderable setDelegate:self];
    [(CRLCanvasRenderable *)self->mGuideRenderable setEdgeAntialiasingMask:0];
    Mutable = CGPathCreateMutable();
    [(CRLCanvasRepRotateTracker *)self p_scaledCenterForRotation];
    v17 = floor(v16);
    v19 = floor(v18);
    [(CRLCanvasRep *)self->mRep unscaledGuidePosition];
    [interactiveCanvasController convertUnscaledToBoundsPoint:?];
    v21 = v20;
    v23 = v22;
    CGPathMoveToPoint(Mutable, 0, 0.0, -10.0);
    v24 = sub_100120090(v21, v23, v17, v19);
    CGPathAddLineToPoint(Mutable, 0, 0.0, v24 + 10.0);
    v28.origin.x = -5.5;
    v28.origin.y = -5.5;
    v28.size.width = 11.0;
    v28.size.height = 11.0;
    CGPathAddEllipseInRect(Mutable, 0, v28);
    CGPathMoveToPoint(Mutable, 0, -10.0, 0.0);
    CGPathAddLineToPoint(Mutable, 0, 10.0, 0.0);
    [(CRLCanvasShapeRenderable *)self->mGuideRenderable setPath:Mutable];
    CGPathRelease(Mutable);
    [(CRLCanvasRenderable *)self->mGuideRenderable setPosition:v17, v19];
    [interactiveCanvasController addDecorator:self];

    mGuideRenderable = self->mGuideRenderable;
  }

  CGAffineTransformMakeRotation(&v27, (angle + 180.0) * -0.0174532925);
  v26 = v27;
  [(CRLCanvasRenderable *)mGuideRenderable setAffineTransform:&v26];
  LODWORD(v25) = 1050253722;
  if (snapCopy)
  {
    *&v25 = 1.0;
  }

  [(CRLCanvasRenderable *)self->mGuideRenderable setOpacity:v25];
}

- (void)p_hideGuideRenderable
{
  v6 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v6 setDuration:0.400000006];
  [(CRLCanvasRenderable *)self->mGuideRenderable opacity];
  v3 = [NSNumber numberWithFloat:?];
  [v6 setFromValue:v3];

  v4 = [NSNumber numberWithFloat:0.0];
  [v6 setToValue:v4];

  [v6 setDelegate:self];
  interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  [v6 setValue:interactiveCanvasController forKey:@"icc"];

  [(CRLCanvasRenderable *)self->mGuideRenderable addAnimation:v6 forKey:@"fade out"];
  [(CRLCanvasRenderable *)self->mGuideRenderable setOpacity:0.0];
}

- (CGPoint)centerForRotation
{
  x = self->mCenterForRotation.x;
  y = self->mCenterForRotation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)scaledHUDPosition
{
  x = self->mScaledHUDPosition.x;
  y = self->mScaledHUDPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end