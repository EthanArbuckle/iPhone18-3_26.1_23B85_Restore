@interface CRLCanvasRepFreeTransformTracker
- (BOOL)traceIfDesiredForBeginOperation;
- (BOOL)traceIfDesiredForEndOperation;
- (CGAffineTransform)freeTransformForLayout:(SEL)layout;
- (CGAffineTransform)p_translationTransformForLayout:(SEL)layout;
- (CGAffineTransform)resizeTransformForLayout:(SEL)layout;
- (CGAffineTransform)rotateTransformForLayout:(SEL)layout;
- (CGPoint)p_centerForRotationForRep:(id)rep inUnscaledBoundingRect:(CGRect)rect;
- (CGPoint)p_scaledCenterForRotation;
- (CGPoint)pivotPointForLayout:(id)layout;
- (CGRect)p_unscaledBoundingRectForReps:(id)reps;
- (CGSize)currentSizeForLayout:(id)layout;
- (CRLCanvasRepFreeTransformTracker)initWithReps:(id)reps managesOuterCommandGroup:(BOOL)group;
- (NSArray)decoratorOverlayRenderables;
- (id)currentGeometryForLayout:(id)layout;
- (id)selectedRepForLayout:(id)layout;
- (void)addUnscaledDragDelta:(CGPoint)delta;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)applyNewBoundsToRep:(id)rep;
- (void)changeDynamicLayoutsForReps:(id)reps;
- (void)commitChangesForReps:(id)reps;
- (void)dealloc;
- (void)p_begin;
- (void)p_hideGuideRenderable;
- (void)p_updateCenterForRotationIfNecessary;
- (void)p_updateDragGuidesAndSnap:(CGPoint)snap;
- (void)p_updateGuideRenderableWithAngle:(double)angle didSnap:(BOOL)snap;
- (void)setMagnification:(double)magnification;
- (void)willBeginDynamicOperationForReps:(id)reps;
@end

@implementation CRLCanvasRepFreeTransformTracker

- (CRLCanvasRepFreeTransformTracker)initWithReps:(id)reps managesOuterCommandGroup:(BOOL)group
{
  repsCopy = reps;
  v56.receiver = self;
  v56.super_class = CRLCanvasRepFreeTransformTracker;
  v7 = [(CRLCanvasRepFreeTransformTracker *)&v56 init];
  if (v7)
  {
    if (![repsCopy count])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013395BC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013395E4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133966C();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v8);
      }

      v9 = [NSString stringWithUTF8String:"[CRLCanvasRepFreeTransformTracker initWithReps:managesOuterCommandGroup:]"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepFreeTransformTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:113 isFatal:0 description:"Tried to free transform with no reps"];
    }

    v11 = [repsCopy copy];
    v12 = *(v7 + 2);
    *(v7 + 2) = v11;

    anyObject = [repsCopy anyObject];
    interactiveCanvasController = [anyObject interactiveCanvasController];
    v15 = *(v7 + 1);
    *(v7 + 1) = interactiveCanvasController;

    v16 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:0];
    v17 = *(v7 + 5);
    *(v7 + 5) = v16;

    v18 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:0];
    v19 = *(v7 + 6);
    *(v7 + 6) = v18;

    *(v7 + 24) = xmmword_1014629E0;
    if ([*(v7 + 2) count] >= 2)
    {
      v7[208] = 1;
    }

    else
    {
      anyObject2 = [*(v7 + 2) anyObject];
      layout = [anyObject2 layout];
      v7[208] = [layout supportsRotation];
    }

    *(v7 + 27) = 0x408F380000000000;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v22 = *(v7 + 2);
    v23 = [v22 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v53;
      while (2)
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v53 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v52 + 1) + 8 * i) angleForRotation];
          v28 = *(v7 + 27);
          if (v28 == 999.0)
          {
            *(v7 + 27) = v27;
          }

          else if (v27 != v28)
          {
            *(v7 + 27) = 0;
            goto LABEL_27;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v52 objects:v58 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:

    *(v7 + 57) = 0;
    v29 = CGPointZero;
    *(v7 + 4) = CGPointZero;
    *(v7 + 25) = 0;
    *(v7 + 152) = v29;
    v7[336] = 1;
    *(v7 + 209) = 0;
    v29.x = *(v7 + 27);
    *(v7 + 29) = *&v29.x;
    *(v7 + 30) = *&v29.x;
    v7[248] = 1;
    *(v7 + 32) = 0;
    *(v7 + 148) = 0;
    v7[299] = group;
    *(v7 + 19) = xmmword_101463BB0;
    *(v7 + 20) = xmmword_101463BC0;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v30 = *(v7 + 2);
    v31 = [v30 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v49;
      do
      {
        for (j = 0; j != v32; j = j + 1)
        {
          if (*v49 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v48 + 1) + 8 * j);
          infoForTransforming = [v35 infoForTransforming];
          if (infoForTransforming)
          {
            interactiveCanvasController2 = [v35 interactiveCanvasController];
            v38 = [interactiveCanvasController2 layoutForInfo:infoForTransforming];

            [v38 minimumSizeForResizingKnob:0];
            v40 = v39;
            v42 = v41;
            [v35 boundsForStandardKnobs];
            if (v43 > 0.0)
            {
              v45 = *(v7 + 41);
              if (v45 < v40 / v43)
              {
                v45 = v40 / v43;
              }

              *(v7 + 41) = v45;
            }

            if (v44 > 0.0)
            {
              v46 = *(v7 + 41);
              if (v46 < v42 / v44)
              {
                v46 = v42 / v44;
              }

              *(v7 + 41) = v46;
            }
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v32);
    }

    *(v7 + 41) = fmin(*(v7 + 41), 1.0);
  }

  return v7;
}

- (void)dealloc
{
  [(CRLCanvasRenderable *)self->mRotationGuideRenderable setDelegate:0];
  v3.receiver = self;
  v3.super_class = CRLCanvasRepFreeTransformTracker;
  [(CRLCanvasRepFreeTransformTracker *)&v3 dealloc];
}

- (void)addUnscaledDragDelta:(CGPoint)delta
{
  x = delta.x;
  if (self->mStartedDragging)
  {
    goto LABEL_6;
  }

  v5 = sub_10011F334(self->mUnscaledDragDetent.x, self->mUnscaledDragDetent.y, delta.x);
  self->mUnscaledDragDetent.x = v5;
  self->mUnscaledDragDetent.y = v6;
  v7 = sub_100120074(v5, v6);
  [(CRLInteractiveCanvasController *)self->mICC viewScale];
  v9 = v7 * v8;
  v10 = 20.0;
  if (!self->mStartedRotation)
  {
    v10 = 5.0;
    if (self->mStartedMagnification)
    {
      v10 = 20.0;
    }
  }

  self->mStartedDragging = v9 > v10;
  v11 = +[NSDate date];
  [v11 timeIntervalSinceReferenceDate];
  self->mLastUpdateGuidesTimestamp = v12;

  if (self->mStartedDragging)
  {
LABEL_6:
    self->mUnscaledDragDelta.x = sub_10011F334(self->mUnscaledDragDelta.x, self->mUnscaledDragDelta.y, x);
    self->mUnscaledDragDelta.y = v13;
  }
}

- (void)setMagnification:(double)magnification
{
  if (!self->mStartedMagnification)
  {
    v3 = 0.85;
    if (self->mStartedRotation)
    {
      v3 = 0.75;
    }

    v4 = 1.15;
    if (self->mStartedRotation)
    {
      v4 = 1.3;
    }

    if (v3 <= magnification && v4 >= magnification)
    {
      mMagnifyBy = self->mMagnifyBy;
      goto LABEL_15;
    }

    self->mStartedMagnification = 1;
    self->mMagnificationStartOffset = magnification + -1.0;
  }

  mMagnificationStartOffset = self->mMagnificationStartOffset;
  if (mMagnificationStartOffset + 1.0 <= magnification)
  {
    mMagnifyBy = magnification - mMagnificationStartOffset;
  }

  else
  {
    mMagnifyBy = magnification / (mMagnificationStartOffset + 1.0);
  }

LABEL_15:
  if (self->mMinimumMagnification >= mMagnifyBy)
  {
    mMagnifyBy = self->mMinimumMagnification;
  }

  self->mMagnifyBy = mMagnifyBy;
}

- (CGSize)currentSizeForLayout:(id)layout
{
  [layout initialBoundsForStandardKnobs];
  mMagnifyBy = self->mMagnifyBy;
  v6 = fabs(mMagnifyBy * v5);
  v8 = fabs(mMagnifyBy * v7);
  result.height = v8;
  result.width = v6;
  return result;
}

- (id)selectedRepForLayout:(id)layout
{
  layoutCopy = layout;
  v5 = [(NSMapTable *)self->mLayoutToSelectedRepMap objectForKeyedSubscript:layoutCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = layoutCopy;
    if (v8)
    {
      v9 = 0uLL;
      v10 = v8;
      v21 = v8;
      do
      {
        v24 = v9;
        v25 = v9;
        v22 = v9;
        v23 = v9;
        v11 = self->mReps;
        v12 = [(NSSet *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          while (2)
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v22 + 1) + 8 * i);
              layout = [v16 layout];

              if (v10 == layout)
              {
                [(NSMapTable *)self->mLayoutToSelectedRepMap setObject:v16 forKeyedSubscript:v21];
                v7 = v16;
                goto LABEL_24;
              }
            }

            v13 = [(NSSet *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        parent = [v10 parent];

        v10 = parent;
        v9 = 0uLL;
      }

      while (parent);
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101339694();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013396BC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101339744();
    }

    v19 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v19);
    }

    v10 = [NSString stringWithUTF8String:"[CRLCanvasRepFreeTransformTracker selectedRepForLayout:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepFreeTransformTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:249 isFatal:0 description:"CRLCanvasRepFreeTransformTracker: could not find a selected rep for the given layout"];
    v7 = 0;
LABEL_24:
  }

  return v7;
}

- (id)currentGeometryForLayout:(id)layout
{
  layoutCopy = layout;
  computeInfoGeometryDuringResize = [layoutCopy computeInfoGeometryDuringResize];
  v6 = computeInfoGeometryDuringResize;
  if (computeInfoGeometryDuringResize)
  {
    v7 = computeInfoGeometryDuringResize;
    goto LABEL_26;
  }

  v8 = [(CRLCanvasRepFreeTransformTracker *)self selectedRepForLayout:layoutCopy];
  layout = [v8 layout];

  if (layout == layoutCopy)
  {
    memset(&v31, 0, sizeof(v31));
    [(CRLCanvasRepFreeTransformTracker *)self freeTransformForLayout:layoutCopy];
    if (layoutCopy)
    {
      [layoutCopy layoutTransformInInfoSpace:v30];
    }

    else
    {
      memset(&v31, 0, sizeof(v31));
    }

    v29 = v31;
    v7 = [v8 resizedGeometryForTransform:&v29];
    goto LABEL_25;
  }

  memset(&v31, 0, sizeof(v31));
  layout2 = [v8 layout];
  [(CRLCanvasRepFreeTransformTracker *)self resizeTransformForLayout:layoutCopy];
  if (layout2)
  {
    [layout2 layoutTransformInInfoSpace:v30];
  }

  else
  {
    memset(&v31, 0, sizeof(v31));
  }

  v11 = *&CGAffineTransformIdentity.c;
  *&v29.a = *&CGAffineTransformIdentity.a;
  *&v29.c = v11;
  *&v29.tx = *&CGAffineTransformIdentity.tx;
  v12 = objc_opt_class();
  parent = [layoutCopy parent];
  v14 = sub_100014370(v12, parent);

  if (v14 && [v14 isBeingManipulated])
  {
    do
    {
      if (![v14 isBeingManipulated])
      {
        break;
      }

      originalPureGeometry = [v14 originalPureGeometry];
      v16 = originalPureGeometry;
      if (originalPureGeometry)
      {
        [originalPureGeometry transform];
      }

      else
      {
        memset(&t2, 0, sizeof(t2));
      }

      t1 = v29;
      CGAffineTransformConcat(&v29, &t1, &t2);

      v17 = objc_opt_class();
      parent2 = [v14 parent];
      v19 = sub_100014370(v17, parent2);

      v14 = v19;
    }

    while (v19);
    t1 = v31;
    memset(&t2, 0, sizeof(t2));
    v26 = v29;
    sub_100139E2C(&t1, &v26, &t2);
    t2.tx = 0.0;
    t2.ty = 0.0;
    infoGeometryBeforeDynamicOperation = [layoutCopy infoGeometryBeforeDynamicOperation];
    if (infoGeometryBeforeDynamicOperation)
    {
      geometry = infoGeometryBeforeDynamicOperation;
    }

    else
    {
      info = [layoutCopy info];
      geometry = [info geometry];

      if (!geometry)
      {
        memset(&v26, 0, sizeof(v26));
        goto LABEL_23;
      }
    }

    [geometry fullTransform];

LABEL_23:
    v25 = t2;
    CGAffineTransformConcat(&t1, &v26, &v25);
    v7 = [CRLCanvasInfoGeometry geometryFromFullTransform:&t1];
    goto LABEL_24;
  }

  v22 = [(CRLInteractiveCanvasController *)self->mICC repForLayout:layoutCopy];
  t2 = v31;
  v7 = [v22 resizedGeometryForTransform:&t2];

LABEL_24:
LABEL_25:

LABEL_26:

  return v7;
}

- (void)willBeginDynamicOperationForReps:(id)reps
{
  if ([(CRLInteractiveCanvasController *)self->mICC shouldSupportedDynamicOperationsEnqueueCommandsInRealTime])
  {
    self->mIsEnqueueingCommandsInRealTime = 1;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->mReps;
    v5 = [(NSSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if (([*(*(&v9 + 1) + 8 * i) allowsSupportedDynamicOperationsToBeRealTime] & 1) == 0)
          {
            self->mIsEnqueueingCommandsInRealTime = 0;
            goto LABEL_12;
          }
        }

        v6 = [(NSSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)changeDynamicLayoutsForReps:(id)reps
{
  repsCopy = reps;
  v5 = [repsCopy count];
  if (v5 != [(NSSet *)self->mReps count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133976C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101339780();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101339808();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCanvasRepFreeTransformTracker changeDynamicLayoutsForReps:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepFreeTransformTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:310 isFatal:0 description:"Mismatched rep count"];
  }

  x = self->mUnscaledDrag.x;
  v10 = self->mRotateDeltaInRadians * 180.0;
  self->mRotateDeltaInRadians = 0.0;
  v11 = sub_10011F334(x, self->mUnscaledDrag.y, self->mUnscaledDragDelta.x);
  v13 = v12;
  [(CRLInteractiveCanvasController *)self->mICC viewScale];
  v15 = sub_10012218C(v11, v13, v14);
  self->mUnscaledDrag.x = v15;
  self->mUnscaledDrag.y = v16;
  v17 = sub_10011F31C(v15, v16, x);
  v19 = v18;
  self->mUnscaledDragDelta.x = sub_10011F31C(self->mUnscaledDragDelta.x, self->mUnscaledDragDelta.y, v17);
  self->mUnscaledDragDelta.y = v20;
  v21 = +[NSDate date];
  [v21 timeIntervalSinceReferenceDate];
  v23 = v22;

  v24 = v23 - self->mLastUpdateGuidesTimestamp;
  self->mLastUpdateGuidesTimestamp = v23;
  if (v24 > 0.005)
  {
    [(CRLInteractiveCanvasController *)self->mICC viewScale];
    v26 = sub_10011F340(v17, v19, v25 / v24);
    self->mSmoothedDragSpeed.x = sub_10011FFB8(self->mSmoothedDragSpeed.x, self->mSmoothedDragSpeed.y, v26, v27, fmin(v24 * 5.0, 1.0));
    self->mSmoothedDragSpeed.y = v28;
  }

  v29 = v10 / 3.14159265;
  if (!self->mRotationSnapped)
  {
    mCurrentAngleInDegrees = self->mCurrentAngleInDegrees;
    sub_1001208E0(v29 + mCurrentAngleInDegrees);
    self->mCurrentAngleInDegrees = v35;
    if (self->mIgnoreDetents)
    {
      goto LABEL_35;
    }

    v36 = 0;
    v37 = mCurrentAngleInDegrees < 90.0;
    if (v35 <= 270.0)
    {
      v37 = 0;
    }

    v38 = mCurrentAngleInDegrees > 270.0;
    if (v35 >= 90.0)
    {
      v38 = 0;
    }

    while (1)
    {
      v39 = v36;
      if (v36)
      {
        v40 = (mCurrentAngleInDegrees - v39) * (v35 - v39);
        self->mRotationSnapped = v40 <= 0.0;
        if (v40 <= 0.0)
        {
          goto LABEL_34;
        }
      }

      else if (v29 <= 0.0)
      {
        self->mRotationSnapped = v37;
        if (v37)
        {
LABEL_34:
          self->mCurrentAngleInDegrees = v39;
          self->mRotationDetent = 0.0;
          goto LABEL_35;
        }
      }

      else
      {
        self->mRotationSnapped = v38;
        if (v38)
        {
          goto LABEL_34;
        }
      }

      v41 = v36 >= 0x10E;
      v36 += 90;
      if (v41)
      {
        goto LABEL_35;
      }
    }
  }

  v30 = v29 + self->mRotationDetent;
  self->mRotationDetent = v30;
  if (self->mSupportsRotation)
  {
    v31 = fabs(v30);
    v32 = 264;
    if (self->mStartedRotation)
    {
      v32 = 272;
    }

    if (v31 > *(&self->super.isa + v32))
    {
      self->mRotationSnapped = 0;
      self->mStartedRotation = 1;
      sub_1001208E0(v29 + self->mCurrentAngleInDegrees);
      self->mCurrentAngleInDegrees = v33;
    }
  }

LABEL_35:
  if (!self->mStartedFreeTransform)
  {
    if (!self->mStartedRotation && !self->mStartedMagnification && !self->mStartedDragging)
    {
      goto LABEL_78;
    }

    [(CRLCanvasRepFreeTransformTracker *)self p_begin];
    self->mStartedFreeTransform = 1;
  }

  commandController = [(CRLInteractiveCanvasController *)self->mICC commandController];
  v43 = commandController;
  if (self->mIsEnqueueingCommandsInRealTime)
  {
    [commandController openGroup];
  }

  if (self->mStartedDragging && self->mShouldShowAndSnapToAlignmentGuides)
  {
    [(CRLCanvasRepFreeTransformTracker *)self p_updateDragGuidesAndSnap:v17, v19];
  }

  else
  {
    self->mPreviousDragSnapDiff = CGPointZero;
    *&self->mSnappedInX = 0;
  }

  self->mIsDragging = 0;
  self->mIsResizing = 0;
  self->mIsRotating = 0;
  v44 = self->mCurrentAngleInDegrees;
  v45 = self->mLastAngleInDegrees - v44;
  if (v45 < 0.0)
  {
    v45 = -v45;
  }

  if (v45 > 0.05)
  {
    self->mLastAngleInDegrees = v44;
    self->mIsRotating = 1;
  }

  mMagnifyBy = self->mMagnifyBy;
  if (self->mLastMagnifyBy != mMagnifyBy)
  {
    self->mLastMagnifyBy = mMagnifyBy;
    *&self->mIsResizing = 257;
  }

  v47 = sub_10011F31C(self->mLastUnscledDrag.x, self->mLastUnscledDrag.y, self->mUnscaledDrag.x);
  v49 = sub_100120074(v47, v48);
  [(CRLInteractiveCanvasController *)self->mICC viewScale];
  if (v49 * v50 >= 0.5)
  {
    self->mLastUnscledDrag = self->mUnscaledDrag;
    self->mIsDragging = 1;
LABEL_58:
    v51 = +[NSMutableSet set];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v52 = self->mReps;
    v53 = [(NSSet *)v52 countByEnumeratingWithState:&v64 objects:v68 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v65;
      do
      {
        for (i = 0; i != v54; i = i + 1)
        {
          if (*v65 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v64 + 1) + 8 * i);
          [v57 dynamicallyFreeTransformingWithTracker:{self, v64}];
          layout = [v57 layout];
          [v51 addObject:layout];
        }

        v54 = [(NSSet *)v52 countByEnumeratingWithState:&v64 objects:v68 count:16];
      }

      while (v54);
    }

    if (self->mShouldShowAndSnapToAlignmentGuides && [repsCopy count] <= 0xE)
    {
      anyObject = [(NSSet *)self->mReps anyObject];
      layout2 = [anyObject layout];
      layoutController = [layout2 layoutController];
      [layoutController validateLayoutsWithDependencies:v51];
    }

    goto LABEL_69;
  }

  if (self->mIsDragging || self->mIsRotating || self->mIsResizing)
  {
    goto LABEL_58;
  }

LABEL_69:
  if (self->mShouldRenderGuideInX || self->mShouldRenderGuideInY)
  {
    guideController = [(CRLInteractiveCanvasController *)self->mICC guideController];
    [guideController showGuidesAlignedWithRect:self->mShouldRenderGuideInX shouldRenderX:self->mShouldRenderGuideInY shouldRenderY:{self->mAlignmentRect.origin.x, self->mAlignmentRect.origin.y, self->mAlignmentRect.size.width, self->mAlignmentRect.size.height}];

    guideController2 = [(CRLInteractiveCanvasController *)self->mICC guideController];
    [guideController2 setDoNotRemoveExistingGuidesWhenDisplaying:0];
  }

  else
  {
    guideController2 = [(CRLInteractiveCanvasController *)self->mICC guideController];
    [guideController2 hideAlignmentGuides];
  }

  if (self->mStartedRotation)
  {
    [(CRLCanvasRepFreeTransformTracker *)self p_updateGuideRenderableWithAngle:self->mRotationSnapped didSnap:self->mCurrentAngleInDegrees];
  }

  if (self->mIsEnqueueingCommandsInRealTime)
  {
    [v43 closeGroup];
  }

LABEL_78:
}

- (CGAffineTransform)rotateTransformForLayout:(SEL)layout
{
  v6 = a4;
  v7 = self->mOriginalAngleInDegrees - self->mCurrentAngleInDegrees;
  [(CRLCanvasRepFreeTransformTracker *)self pivotPointForLayout:v6];
  v9 = v8;
  v11 = v10;
  memset(&v40, 0, sizeof(v40));
  CGAffineTransformMakeTranslation(&t1, -v8, -v10);
  CGAffineTransformMakeRotation(&t2, v7 * 0.0174532925);
  CGAffineTransformConcat(&v39, &t1, &t2);
  CGAffineTransformMakeTranslation(&t1, v9, v11);
  CGAffineTransformConcat(&v40, &v39, &t1);
  if ([v6 supportsRotation])
  {
    v12 = *&v40.c;
    *&retstr->a = *&v40.a;
    *&retstr->c = v12;
    v13 = *&v40.tx;
LABEL_5:
    *&retstr->tx = v13;
    goto LABEL_13;
  }

  if ([(NSSet *)self->mReps count]== 1)
  {
    v14 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v14;
    v13 = *&CGAffineTransformIdentity.tx;
    goto LABEL_5;
  }

  v15 = [(NSMapTable *)self->mLayoutToCenterForRotationMap objectForKeyedSubscript:v6];
  v16 = v15;
  if (v15)
  {
    [v15 CGPointValue];
    v18 = v17;
    v20 = v19;
  }

  else
  {
    originalGeometry = [v6 originalGeometry];
    [v6 centerForRotation];
    if (originalGeometry)
    {
      v33 = v23;
      v35 = v22;
      [originalGeometry transform];
      v23 = v33;
      v22 = v35;
      v25 = *&v39.a;
      v24 = *&v39.c;
      v26 = *&v39.tx;
    }

    else
    {
      v26 = 0uLL;
      v25 = 0uLL;
      v24 = 0uLL;
    }

    v27 = vaddq_f64(v26, vmlaq_n_f64(vmulq_n_f64(v24, *&v23), v25, v22));
    v28 = [NSValue valueWithCGPoint:*&v27.f64[1], *(&v23 + 1), *&v27];
    [(NSMapTable *)self->mLayoutToCenterForRotationMap setObject:v28 forKeyedSubscript:v6];

    v20 = v34;
    v18 = v36;
  }

  v29 = vaddq_f64(*&v40.tx, vmlaq_n_f64(vmulq_n_f64(*&v40.c, v20), *&v40.a, v18));
  v30 = sub_10011F31C(v29.f64[0], v29.f64[1], v18);
  CGAffineTransformMakeTranslation(retstr, v30, v31);

LABEL_13:
  return result;
}

- (CGAffineTransform)resizeTransformForLayout:(SEL)layout
{
  v6 = a4;
  [(CRLCanvasRepFreeTransformTracker *)self pivotPointForLayout:v6];
  v8 = v7;
  v10 = v9;
  memset(&v28, 0, sizeof(v28));
  CGAffineTransformMakeTranslation(&t1, -v7, -v9);
  CGAffineTransformMakeScale(&v25, self->mMagnifyBy, self->mMagnifyBy);
  CGAffineTransformConcat(&v27, &t1, &v25);
  CGAffineTransformMakeTranslation(&t1, v8, v10);
  CGAffineTransformConcat(&v28, &v27, &t1);
  v11 = [(CRLCanvasRepFreeTransformTracker *)self selectedRepForLayout:v6];
  layout = [v11 layout];

  if (layout == v6)
  {
    v23 = *&v28.c;
    *&retstr->a = *&v28.a;
    *&retstr->c = v23;
    *&retstr->tx = *&v28.tx;
  }

  else
  {
    v13 = *&CGAffineTransformIdentity.c;
    *&v27.a = *&CGAffineTransformIdentity.a;
    *&v27.c = v13;
    *&v27.tx = *&CGAffineTransformIdentity.tx;
    v14 = objc_opt_class();
    parent = [v6 parent];
    v16 = sub_100014370(v14, parent);

    if (v16 && [v16 isBeingManipulated])
    {
      do
      {
        if (![v16 isBeingManipulated])
        {
          break;
        }

        originalPureGeometry = [v16 originalPureGeometry];
        v18 = originalPureGeometry;
        if (originalPureGeometry)
        {
          [originalPureGeometry transform];
        }

        else
        {
          memset(&t1, 0, sizeof(t1));
        }

        v25 = v27;
        CGAffineTransformConcat(&v27, &v25, &t1);

        v19 = objc_opt_class();
        parent2 = [v16 parent];
        v21 = sub_100014370(v19, parent2);

        v16 = v21;
      }

      while (v21);
      *&retstr->c = 0u;
      *&retstr->tx = 0u;
      *&retstr->a = 0u;
      t1 = v28;
      v25 = v27;
      sub_100139E2C(&t1, &v25, retstr);
      retstr->tx = 0.0;
      retstr->ty = 0.0;
    }

    else
    {
      v22 = *&v28.c;
      *&retstr->a = *&v28.a;
      *&retstr->c = v22;
      *&retstr->tx = *&v28.tx;
    }
  }

  return result;
}

- (CGAffineTransform)freeTransformForLayout:(SEL)layout
{
  v6 = a4;
  v7 = [(CRLCanvasRepFreeTransformTracker *)self selectedRepForLayout:v6];
  layout = [v7 layout];

  if (layout == v6)
  {
    [(CRLCanvasRepFreeTransformTracker *)self rotateTransformForLayout:v6];
    [(CRLCanvasRepFreeTransformTracker *)self resizeTransformForLayout:v6];
    CGAffineTransformConcat(&v12, &t1, &v10);
    [(CRLCanvasRepFreeTransformTracker *)self p_translationTransformForLayout:v6];
    CGAffineTransformConcat(retstr, &v12, &t1);
  }

  else
  {
    [(CRLCanvasRepFreeTransformTracker *)self resizeTransformForLayout:v6];
  }

  return result;
}

- (void)applyNewBoundsToRep:(id)rep
{
  repCopy = rep;
  commandController = [(CRLInteractiveCanvasController *)self->mICC commandController];
  layout = [repCopy layout];
  finalInfoGeometryForFreeTransform = [layout finalInfoGeometryForFreeTransform];

  if (!finalInfoGeometryForFreeTransform)
  {
    layout2 = [repCopy layout];
    finalInfoGeometryForFreeTransform = [(CRLCanvasRepFreeTransformTracker *)self currentGeometryForLayout:layout2];
  }

  infoForTransforming = [repCopy infoForTransforming];
  v10 = infoForTransforming;
  if (infoForTransforming && self->mStartedFreeTransform && ([infoForTransforming conformsToProtocol:&OBJC_PROTOCOL___CRLResizingAwareInfo] & 1) == 0)
  {
    v11 = [repCopy newCommandToApplyGeometry:finalInfoGeometryForFreeTransform toInfo:v10];
    if (!v11)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101339830();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101339844();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013398F4();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLCanvasRepFreeTransformTracker applyNewBoundsToRep:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepFreeTransformTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:543 isFatal:0 description:"invalid nil value for '%{public}s'", "cmd"];
    }

    v15 = [CRLCanvasCommandSelectionBehavior alloc];
    canvasEditor = [(CRLInteractiveCanvasController *)self->mICC canvasEditor];
    editorController = [(CRLInteractiveCanvasController *)self->mICC editorController];
    selectionPath = [editorController selectionPath];
    v19 = [(CRLCanvasCommandSelectionBehavior *)v15 initWithCanvasEditor:canvasEditor type:2 selectionPath:selectionPath selectionFlags:4];

    [commandController enqueueCommand:v11 withSelectionBehavior:v19];
  }

  [repCopy dynamicFreeTransformDidEndWithTracker:self];
  [repCopy invalidateKnobs];
}

- (void)commitChangesForReps:(id)reps
{
  if (self->mStartedFreeTransform)
  {
    commandController = [(CRLInteractiveCanvasController *)self->mICC commandController];
    if (self->mShouldCommit)
    {
      v5 = +[NSMutableSet set];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v6 = self->mReps;
      v7 = [(NSSet *)v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v35;
        do
        {
          v10 = 0;
          do
          {
            if (*v35 != v9)
            {
              objc_enumerationMutation(v6);
            }

            info = [*(*(&v34 + 1) + 8 * v10) info];
            [(NSSet *)v5 addObject:info];

            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [(NSSet *)v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v8);
      }

      canvasEditor = [(CRLInteractiveCanvasController *)self->mICC canvasEditor];
      v13 = [canvasEditor selectionPathWithInfos:v5];

      v14 = [[CRLCommandSelectionBehavior alloc] initWithCommitSelectionPath:0 forwardSelectionPath:v13 reverseSelectionPath:v13];
      [commandController openGroupWithSelectionBehavior:v14];
      anyObject = [(NSSet *)self->mReps anyObject];
      actionStringForFreeTransform = [anyObject actionStringForFreeTransform];
      [commandController setCurrentGroupActionString:actionStringForFreeTransform];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v17 = self->mReps;
      v18 = [(NSSet *)v17 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v31;
        do
        {
          v21 = 0;
          do
          {
            if (*v31 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [(CRLCanvasRepFreeTransformTracker *)self applyNewBoundsToRep:*(*(&v30 + 1) + 8 * v21)];
            v21 = v21 + 1;
          }

          while (v19 != v21);
          v19 = [(NSSet *)v17 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v19);
      }

      [commandController closeGroup];
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v5 = self->mReps;
      v22 = [(NSSet *)v5 countByEnumeratingWithState:&v26 objects:v38 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v27;
        do
        {
          v25 = 0;
          do
          {
            if (*v27 != v24)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v26 + 1) + 8 * v25) dynamicFreeTransformDidEndWithTracker:{self, v26}];
            v25 = v25 + 1;
          }

          while (v23 != v25);
          v23 = [(NSSet *)v5 countByEnumeratingWithState:&v26 objects:v38 count:16];
        }

        while (v23);
      }
    }

    if (self->mIsEnqueueingCommandsInRealTime && self->mManagesOuterCommandGroup)
    {
      [commandController closeGroup];
    }
  }

  [(CRLCanvasRepFreeTransformTracker *)self p_hideGuideRenderable];
}

- (BOOL)traceIfDesiredForBeginOperation
{
  if (qword_101AD5A08 != -1)
  {
    sub_10133991C();
  }

  v2 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Begin free transform operation", v4, 2u);
  }

  return 1;
}

- (BOOL)traceIfDesiredForEndOperation
{
  if (qword_101AD5A08 != -1)
  {
    sub_101339930();
  }

  v3 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
  {
    v4 = self->mCurrentAngleInDegrees - self->mOriginalAngleInDegrees;
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "End free transform operation. rotated by %f degrees", &v6, 0xCu);
  }

  return 1;
}

- (NSArray)decoratorOverlayRenderables
{
  if (self->mShouldShowRotationGuide && self->mRotationGuideRenderable)
  {
    mRotationGuideRenderable = self->mRotationGuideRenderable;
    v2 = [NSArray arrayWithObjects:&mRotationGuideRenderable count:1];
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
  [(CRLInteractiveCanvasController *)self->mICC endEditing];
  if (self->mIsEnqueueingCommandsInRealTime && self->mManagesOuterCommandGroup)
  {
    commandController = [(CRLInteractiveCanvasController *)self->mICC commandController];
    [commandController openGroup];
    [commandController enableRealTimeSyncProgressiveEnqueuingInCurrentGroup];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->mReps;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 dynamicFreeTransformDidBeginWithTracker:{self, v10}];
        [v9 setShowKnobsDuringManipulation:0];
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(CRLCanvasRepFreeTransformTracker *)self p_updateCenterForRotationIfNecessary];
}

- (CGRect)p_unscaledBoundingRectForReps:(id)reps
{
  repsCopy = reps;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [repsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(repsCopy);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        [v12 boundsForStandardKnobs];
        [v12 convertNaturalRectToUnscaledCanvas:?];
        v29.origin.x = v13;
        v29.origin.y = v14;
        v29.size.width = v15;
        v29.size.height = v16;
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        v27 = CGRectUnion(v26, v29);
        x = v27.origin.x;
        y = v27.origin.y;
        width = v27.size.width;
        height = v27.size.height;
      }

      v9 = [repsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGPoint)p_centerForRotationForRep:(id)rep inUnscaledBoundingRect:(CGRect)rect
{
  v5 = sub_100120414(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  v7 = v6;
  repCopy = rep;
  [repCopy convertNaturalPointFromUnscaledCanvas:{v5, v7}];
  v18 = v10;
  v19 = v9;
  layout = [repCopy layout];

  geometry = [layout geometry];

  if (geometry)
  {
    [geometry transform];
    v13 = v21;
    v14 = v22;
    v15 = v23;
  }

  else
  {
    v15 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  v20 = vaddq_f64(v15, vmlaq_n_f64(vmulq_n_f64(v14, v18), v13, v19));

  v17 = v20.f64[1];
  v16 = v20.f64[0];
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)p_updateCenterForRotationIfNecessary
{
  if (self->mUnscaledPivotPoint.x == INFINITY && self->mUnscaledPivotPoint.y == INFINITY)
  {
    if ([(NSSet *)self->mReps count]== 1)
    {
      anyObject = [(NSSet *)self->mReps anyObject];
      layout = [anyObject layout];

      [layout centerForRotation];
      if (layout)
      {
        v16 = v7;
        v17 = v6;
        [layout originalTransformInRoot];
        v7 = v16;
        v6 = v17;
        v9 = v18;
        v8 = v19;
        v10 = v20;
      }

      else
      {
        v10 = 0uLL;
        v9 = 0uLL;
        v8 = 0uLL;
      }

      self->mUnscaledPivotPoint = vaddq_f64(v10, vmlaq_n_f64(vmulq_n_f64(v8, v7), v9, v6));
    }

    else
    {
      [(CRLCanvasRepFreeTransformTracker *)self p_unscaledBoundingRectForReps:self->mReps];
      self->mUnscaledPivotPoint.x = sub_100120414(v11, v12, v13, v14);
      self->mUnscaledPivotPoint.y = v15;
    }
  }
}

- (CGPoint)pivotPointForLayout:(id)layout
{
  layoutCopy = layout;
  originalGeometry = [layoutCopy originalGeometry];

  if (originalGeometry)
  {
    memset(&v25, 0, sizeof(v25));
    if (layoutCopy)
    {
      [layoutCopy originalTransformInRoot];
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
    }

    CGAffineTransformInvert(&v25, &v24);
    x = self->mUnscaledPivotPoint.x;
    y = self->mUnscaledPivotPoint.y;
    v8 = v25.tx + y * v25.c + v25.a * x;
    v9 = v25.ty + y * v25.d + v25.b * x;
    originalGeometry2 = [layoutCopy originalGeometry];
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
    if (layoutCopy)
    {
      [layoutCopy transformInRoot];
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
    }

    CGAffineTransformInvert(&v25, &v24);
    v11 = self->mUnscaledPivotPoint.x;
    v12 = self->mUnscaledPivotPoint.y;
    v8 = v25.tx + v12 * v25.c + v25.a * v11;
    v9 = v25.ty + v12 * v25.d + v25.b * v11;
    originalGeometry2 = [layoutCopy geometry];
  }

  v13 = originalGeometry2;
  if (originalGeometry2)
  {
    [originalGeometry2 transform];
    b = v24.b;
    a = v24.a;
    d = v24.d;
    c = v24.c;
    ty = v24.ty;
    tx = v24.tx;
  }

  else
  {
    ty = 0.0;
    d = 0.0;
    b = 0.0;
    tx = 0.0;
    c = 0.0;
    a = 0.0;
  }

  v20 = tx + v9 * c + a * v8;
  v21 = ty + v9 * d + b * v8;

  v22 = v20;
  v23 = v21;
  result.y = v23;
  result.x = v22;
  return result;
}

- (CGPoint)p_scaledCenterForRotation
{
  [(CRLInteractiveCanvasController *)self->mICC convertUnscaledToBoundsPoint:self->mUnscaledPivotPoint.x, self->mUnscaledPivotPoint.y];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGAffineTransform)p_translationTransformForLayout:(SEL)layout
{
  v6 = a4;
  tx = vaddq_f64(self->mUnscaledDrag, self->mPreviousDragSnapDiff);
  parent = [v6 parent];

  v9 = tx.f64[1];
  v8 = tx.f64[0];
  if (parent)
  {
    parent2 = [v6 parent];
    v11 = parent2;
    if (parent2)
    {
      [parent2 transformInRoot];
    }

    else
    {
      memset(&v16, 0, sizeof(v16));
    }

    CGAffineTransformInvert(&v17, &v16);
    txa = sub_10012119C(&v17, tx.f64[0], tx.f64[1]);
    v9 = v12;

    v8 = txa;
  }

  CGAffineTransformMakeTranslation(retstr, v8, v9);

  return result;
}

- (void)p_updateGuideRenderableWithAngle:(double)angle didSnap:(BOOL)snap
{
  snapCopy = snap;
  if (!self->mRotationGuideRenderable)
  {
    canvas = [(CRLInteractiveCanvasController *)self->mICC canvas];
    [canvas contentsScale];
    v9 = v8;

    v10 = +[CRLCanvasShapeRenderable renderable];
    mRotationGuideRenderable = self->mRotationGuideRenderable;
    self->mRotationGuideRenderable = v10;

    v12 = sub_1000CCEA0(0.933000028, 0.791999996, 0.0, 1.0);
    [(CRLCanvasShapeRenderable *)self->mRotationGuideRenderable setStrokeColor:v12];
    CGColorRelease(v12);
    [(CRLCanvasShapeRenderable *)self->mRotationGuideRenderable setFillColor:0];
    [(CRLCanvasShapeRenderable *)self->mRotationGuideRenderable setLineWidth:1.0 / v9];
    [(CRLCanvasRenderable *)self->mRotationGuideRenderable setZPosition:-1.0];
    [(CRLCanvasRenderable *)self->mRotationGuideRenderable setAnchorPoint:0.5, 0.0];
    [(CRLCanvasRenderable *)self->mRotationGuideRenderable setDelegate:self];
    [(CRLCanvasRenderable *)self->mRotationGuideRenderable setEdgeAntialiasingMask:0];
    [(CRLCanvasRepFreeTransformTracker *)self p_scaledCenterForRotation];
    v14 = floor(v13);
    v16 = floor(v15);
    if ([(NSSet *)self->mReps count]== 1)
    {
      anyObject = [(NSSet *)self->mReps anyObject];
      [anyObject unscaledGuidePosition];
      MidX = v18;
      MinY = v20;
    }

    else
    {
      [(CRLCanvasRepFreeTransformTracker *)self p_unscaledBoundingRectForReps:self->mReps];
      x = v39.origin.x;
      y = v39.origin.y;
      width = v39.size.width;
      height = v39.size.height;
      MidX = CGRectGetMidX(v39);
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      MinY = CGRectGetMinY(v40);
    }

    [(CRLInteractiveCanvasController *)self->mICC convertUnscaledToBoundsPoint:MidX, MinY];
    self->mRotationGuideLength = sub_100120090(v26, v27, v14, v16) / self->mMagnifyBy;
    [(CRLCanvasRenderable *)self->mRotationGuideRenderable setPosition:v14, v16];
    [(CRLInteractiveCanvasController *)self->mICC addDecorator:self];
  }

  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, -10.0);
  CGPathAddLineToPoint(Mutable, 0, 0.0, self->mRotationGuideLength * self->mMagnifyBy + 10.0);
  v41.origin.x = -5.5;
  v41.origin.y = -5.5;
  v41.size.width = 11.0;
  v41.size.height = 11.0;
  CGPathAddEllipseInRect(Mutable, 0, v41);
  CGPathMoveToPoint(Mutable, 0, -10.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 10.0, 0.0);
  [(CRLCanvasShapeRenderable *)self->mRotationGuideRenderable setPath:Mutable];
  CGPathRelease(Mutable);
  canvas2 = [(CRLInteractiveCanvasController *)self->mICC canvas];
  [canvas2 convertUnscaledToBoundsPoint:{sub_10011F334(self->mUnscaledDrag.x, self->mUnscaledDrag.y, self->mPreviousDragSnapDiff.x)}];
  v31 = v30;
  v33 = v32;

  CGAffineTransformMakeRotation(&t1, (angle + 180.0) * -0.0174532925);
  CGAffineTransformMakeTranslation(&v36, v31, v33);
  CGAffineTransformConcat(&v38, &t1, &v36);
  v34 = self->mRotationGuideRenderable;
  t1 = v38;
  [(CRLCanvasRenderable *)v34 setAffineTransform:&t1];
  LODWORD(v35) = 0.5;
  if (snapCopy)
  {
    *&v35 = 1.0;
  }

  [(CRLCanvasRenderable *)self->mRotationGuideRenderable setOpacity:v35];
}

- (void)p_hideGuideRenderable
{
  v5 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v5 setDuration:0.400000006];
  [(CRLCanvasRenderable *)self->mRotationGuideRenderable opacity];
  v3 = [NSNumber numberWithFloat:?];
  [v5 setFromValue:v3];

  v4 = [NSNumber numberWithFloat:0.0];
  [v5 setToValue:v4];

  [v5 setDelegate:self];
  [v5 setValue:self->mICC forKey:@"icc"];
  [(CRLCanvasRenderable *)self->mRotationGuideRenderable addAnimation:v5 forKey:@"fade out"];
  [(CRLCanvasRenderable *)self->mRotationGuideRenderable setOpacity:0.0];
}

- (void)p_updateDragGuidesAndSnap:(CGPoint)snap
{
  y = snap.y;
  x = snap.x;
  v6 = sub_100120074(self->mSmoothedDragSpeed.x, self->mSmoothedDragSpeed.y);
  if ([(CRLInteractiveCanvasController *)self->mICC currentlyScrolling])
  {
    v7 = 0;
  }

  else
  {
    v8 = 100.0;
    if (self->mSnappedInX)
    {
      v8 = 200.0;
    }

    v7 = v6 < v8;
  }

  self->mShouldRenderGuideInX = v7;
  if ([(CRLInteractiveCanvasController *)self->mICC currentlyScrolling])
  {
    v9 = 0;
  }

  else
  {
    v10 = 100.0;
    if (self->mSnappedInY)
    {
      v10 = 200.0;
    }

    v9 = v6 < v10;
  }

  self->mShouldRenderGuideInY = v9;
  if (!self->mShouldRenderGuideInX)
  {
    isCanvasBackgroundAlignmentSnappingEnabled = [(CRLInteractiveCanvasController *)self->mICC isCanvasBackgroundAlignmentSnappingEnabled];
    if (self->mShouldRenderGuideInY)
    {
      isCanvasBackgroundAlignmentSnappingEnabled2 = 1;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  isCanvasBackgroundAlignmentSnappingEnabled = 1;
  isCanvasBackgroundAlignmentSnappingEnabled2 = 1;
  if (!v9)
  {
LABEL_16:
    isCanvasBackgroundAlignmentSnappingEnabled2 = [(CRLInteractiveCanvasController *)self->mICC isCanvasBackgroundAlignmentSnappingEnabled];
  }

LABEL_17:
  size = CGRectZero.size;
  self->mAlignmentRect.origin = CGRectZero.origin;
  self->mAlignmentRect.size = size;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = self->mReps;
  v15 = [(NSSet *)v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v32 + 1) + 8 * i);
        if ([v19 shouldShowSizesInRulers])
        {
          [v19 snapRectForDynamicDragWithOffset:{sub_10011F31C(x, y, self->mPreviousDragSnapDiff.x)}];
          self->mAlignmentRect.origin.x = sub_10011FC04(self->mAlignmentRect.origin.x, self->mAlignmentRect.origin.y, self->mAlignmentRect.size.width, self->mAlignmentRect.size.height, v20, v21, v22, v23);
          self->mAlignmentRect.origin.y = v24;
          self->mAlignmentRect.size.width = v25;
          self->mAlignmentRect.size.height = v26;
        }
      }

      v16 = [(NSSet *)v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v16);
  }

  guideController = [(CRLInteractiveCanvasController *)self->mICC guideController];
  [guideController snapRectToGuides:{self->mAlignmentRect.origin.x, self->mAlignmentRect.origin.y, self->mAlignmentRect.size.width, self->mAlignmentRect.size.height}];
  v29 = v28;
  v31 = v30;
  self->mSnappedInX = [guideController didJustSnapInX];
  self->mSnappedInY = [guideController didJustSnapInY];
  if ((isCanvasBackgroundAlignmentSnappingEnabled & 1) == 0)
  {
    self->mSnappedInX = 0;
    v29 = 0.0;
  }

  if ((isCanvasBackgroundAlignmentSnappingEnabled2 & 1) == 0)
  {
    self->mSnappedInY = 0;
    v31 = 0.0;
  }

  self->mAlignmentRect = CGRectOffset(self->mAlignmentRect, v29, v31);
  self->mPreviousDragSnapDiff.x = v29;
  self->mPreviousDragSnapDiff.y = v31;
}

@end