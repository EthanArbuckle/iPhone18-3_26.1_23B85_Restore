@interface CRLFreehandDrawingRepTrifurcationContainer
- (CGAffineTransform)transformForMiddleRenderable:(SEL)renderable;
- (CRLFreehandDrawingRepTrifurcationContainer)initWithDelegate:(id)delegate backReps:(id)reps middleReps:(id)middleReps frontReps:(id)frontReps;
- (id)p_createRenderable;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)p_captureInitialGeometry;
- (void)tearDown;
@end

@implementation CRLFreehandDrawingRepTrifurcationContainer

- (CRLFreehandDrawingRepTrifurcationContainer)initWithDelegate:(id)delegate backReps:(id)reps middleReps:(id)middleReps frontReps:(id)frontReps
{
  delegateCopy = delegate;
  repsCopy = reps;
  middleRepsCopy = middleReps;
  frontRepsCopy = frontReps;
  v35.receiver = self;
  v35.super_class = CRLFreehandDrawingRepTrifurcationContainer;
  v14 = [(CRLFreehandDrawingRepTrifurcationContainer *)&v35 init];
  if (v14)
  {
    v34 = repsCopy;
    if (!delegateCopy)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133B34C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133B374();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133B410();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v15);
      }

      v16 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRepTrifurcationContainer initWithDelegate:backReps:middleReps:frontReps:]"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:134 isFatal:0 description:"invalid nil value for '%{public}s'", "delegate"];

      repsCopy = v34;
    }

    objc_storeWeak(&v14->_delegate, delegateCopy);
    if (!repsCopy)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133B438();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133B460();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133B4FC();
      }

      v18 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v18);
      }

      v19 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRepTrifurcationContainer initWithDelegate:backReps:middleReps:frontReps:]"];
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:137 isFatal:0 description:"invalid nil value for '%{public}s'", "backReps"];

      repsCopy = v34;
    }

    objc_storeStrong(&v14->_backReps, reps);
    if (!middleRepsCopy)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133B524();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133B54C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133B5E8();
      }

      v21 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v21);
      }

      v22 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRepTrifurcationContainer initWithDelegate:backReps:middleReps:frontReps:]"];
      v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:139 isFatal:0 description:"invalid nil value for '%{public}s'", "middleReps"];

      repsCopy = v34;
    }

    objc_storeStrong(&v14->_middleReps, middleReps);
    if (!frontRepsCopy)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133B610();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133B638();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133B6D4();
      }

      v24 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v24);
      }

      v25 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRepTrifurcationContainer initWithDelegate:backReps:middleReps:frontReps:]"];
      v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:141 isFatal:0 description:"invalid nil value for '%{public}s'", "frontReps"];

      repsCopy = v34;
    }

    objc_storeStrong(&v14->_frontReps, frontReps);
    v14->_freehandDrawingInitialUnscaledCanvasFrameOrigin = CGPointZero;
    p_createRenderable = [(CRLFreehandDrawingRepTrifurcationContainer *)v14 p_createRenderable];
    backRenderable = v14->_backRenderable;
    v14->_backRenderable = p_createRenderable;

    p_createRenderable2 = [(CRLFreehandDrawingRepTrifurcationContainer *)v14 p_createRenderable];
    middleRenderable = v14->_middleRenderable;
    v14->_middleRenderable = p_createRenderable2;

    p_createRenderable3 = [(CRLFreehandDrawingRepTrifurcationContainer *)v14 p_createRenderable];
    frontRenderable = v14->_frontRenderable;
    v14->_frontRenderable = p_createRenderable3;

    [(CRLFreehandDrawingRepTrifurcationContainer *)v14 p_captureInitialGeometry];
  }

  return v14;
}

- (id)p_createRenderable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained layerClassForTrifurcationContainer:self];

  v5 = objc_alloc_init(v4);
  [v5 setDrawsAsynchronously:1];
  v6 = [CRLCanvasRenderable renderableFromLayer:v5];
  [v6 setDelegate:self];
  v7 = objc_loadWeakRetained(&self->_delegate);
  [v7 canvasContentsScaleForTrifurcationContainer:self];
  [v6 setContentsScale:?];

  v8 = objc_loadWeakRetained(&self->_delegate);
  [v8 clipRectInScaledCanvasForTrifurcationContainer:self];

  [v6 setBounds:sub_10011ECB4()];
  y = CGPointZero.y;
  [v6 setPosition:{CGPointZero.x, y}];
  [v6 setAnchorPoint:{CGPointZero.x, y}];
  [v6 setNeedsDisplay];

  return v6;
}

- (void)p_captureInitialGeometry
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133B6FC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133B710();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133B7AC();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRepTrifurcationContainer p_captureInitialGeometry]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:180 isFatal:0 description:"invalid nil value for '%{public}s'", "_delegate"];
  }

  v7 = objc_loadWeakRetained(&self->_delegate);

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 freehandDrawingUnscaledCanvasFrameOriginForTrifurcationContainer:self];
    self->_freehandDrawingInitialUnscaledCanvasFrameOrigin.x = v9;
    self->_freehandDrawingInitialUnscaledCanvasFrameOrigin.y = v10;

    if ([(NSArray *)self->_middleReps count])
    {
      v11 = [(NSArray *)self->_middleReps objectAtIndexedSubscript:0];
      shapeLayout = [v11 shapeLayout];
      anchorShapeLayoutForTransform = self->_anchorShapeLayoutForTransform;
      self->_anchorShapeLayoutForTransform = shapeLayout;

      geometryInRoot = [(CRLCanvasAbstractLayout *)self->_anchorShapeLayoutForTransform geometryInRoot];
      anchorShapeLayoutGeometryInRootAtRenderTime = self->_anchorShapeLayoutGeometryInRootAtRenderTime;
      self->_anchorShapeLayoutGeometryInRootAtRenderTime = geometryInRoot;
    }
  }
}

- (void)tearDown
{
  objc_storeWeak(&self->_delegate, 0);
  backReps = self->_backReps;
  self->_backReps = &__NSArray0__struct;

  middleReps = self->_middleReps;
  self->_middleReps = &__NSArray0__struct;

  frontReps = self->_frontReps;
  self->_frontReps = &__NSArray0__struct;

  backRenderable = self->_backRenderable;
  self->_backRenderable = 0;

  middleRenderable = self->_middleRenderable;
  self->_middleRenderable = 0;

  frontRenderable = self->_frontRenderable;
  self->_frontRenderable = 0;

  anchorShapeLayoutForTransform = self->_anchorShapeLayoutForTransform;
  self->_anchorShapeLayoutForTransform = 0;

  anchorShapeLayoutGeometryInRootAtRenderTime = self->_anchorShapeLayoutGeometryInRootAtRenderTime;
  self->_anchorShapeLayoutGeometryInRootAtRenderTime = 0;
}

- (CGAffineTransform)transformForMiddleRenderable:(SEL)renderable
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133B7D4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133B7E8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133B884();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRepTrifurcationContainer transformForMiddleRenderable:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:209 isFatal:0 description:"invalid nil value for '%{public}s'", "_delegate"];
  }

  v11 = objc_loadWeakRetained(&self->_delegate);

  if (!v11)
  {
    v18 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v18;
    *&retstr->tx = *&CGAffineTransformIdentity.tx;
    return result;
  }

  tx = CGAffineTransformIdentity.tx;
  ty = CGAffineTransformIdentity.ty;
  if (v4)
  {
    if (self->_anchorShapeLayoutForTransform)
    {
      anchorShapeLayoutGeometryInRootAtRenderTime = self->_anchorShapeLayoutGeometryInRootAtRenderTime;
      if (anchorShapeLayoutGeometryInRootAtRenderTime)
      {
        [(CRLCanvasLayoutGeometry *)anchorShapeLayoutGeometryInRootAtRenderTime transform];
        CGAffineTransformInvert(&t1, &v40);
        geometryInRoot = [(CRLCanvasAbstractLayout *)self->_anchorShapeLayoutForTransform geometryInRoot];
        v17 = geometryInRoot;
        if (geometryInRoot)
        {
          [geometryInRoot transform];
        }

        else
        {
          memset(&t2, 0, sizeof(t2));
        }

        CGAffineTransformConcat(&v40, &t1, &t2);
        tx = v40.tx;
        ty = v40.ty;
LABEL_39:

        goto LABEL_40;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133B8AC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133B8D4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133B970();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v19);
      }

      v20 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRepTrifurcationContainer transformForMiddleRenderable:]"];
      v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:227 isFatal:0 description:"expected nil value for '%{public}s'", "_anchorShapeLayoutForTransform"];
    }

    if (self->_anchorShapeLayoutGeometryInRootAtRenderTime)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133B998();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133B9C0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133BA5C();
      }

      v22 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v22);
      }

      v17 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRepTrifurcationContainer transformForMiddleRenderable:]"];
      v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v23 lineNumber:228 isFatal:0 description:"expected nil value for '%{public}s'", "_anchorShapeLayoutGeometryInRootAtRenderTime"];

      goto LABEL_39;
    }
  }

LABEL_40:
  v24 = sub_10011F334(tx, ty, self->_freehandDrawingInitialUnscaledCanvasFrameOrigin.x);
  v26 = v25;
  v27 = objc_loadWeakRetained(&self->_delegate);
  [v27 canvasViewScaleForTrifurcationContainer:self];
  v29 = v28;

  v30 = sub_10011F340(v24, v26, v29);
  v32 = v31;
  v33 = objc_loadWeakRetained(&self->_delegate);
  [v33 parentScaledCanvasFrameOriginForTrifurcationContainer:self];
  v35 = v34;

  v36 = sub_10011F31C(v30, v32, v35);
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  return CGAffineTransformMakeTranslation(retstr, v36, v37);
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  layerCopy = layer;
  layer = [(CRLCanvasRenderable *)self->_backRenderable layer];

  if (layer == layerCopy)
  {
    v10 = 48;
  }

  else
  {
    layer2 = [(CRLCanvasRenderable *)self->_middleRenderable layer];

    if (layer2 == layerCopy)
    {
      v10 = 56;
    }

    else
    {
      layer3 = [(CRLCanvasRenderable *)self->_frontRenderable layer];

      if (layer3 != layerCopy)
      {
        goto LABEL_19;
      }

      v10 = 64;
    }
  }

  v11 = *(&self->super.isa + v10);
  if (v11)
  {
    v12 = v11;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (!WeakRetained)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133BA84();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133BA98();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133BB34();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v14);
      }

      v15 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRepTrifurcationContainer drawLayer:inContext:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:264 isFatal:0 description:"invalid nil value for '%{public}s'", "_delegate"];
    }

    v17 = objc_loadWeakRetained(&self->_delegate);
    [v17 drawShapeReps:v12 intoContext:context forLayer:layerCopy inTrifurcationContainer:self];
    goto LABEL_28;
  }

LABEL_19:
  v18 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10133BB5C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10133BB70(layerCopy, v18);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10133BC28();
  }

  v19 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v19);
  }

  v12 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRepTrifurcationContainer drawLayer:inContext:]"];
  v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
  [CRLAssertionHandler handleFailureInFunction:v12 file:v17 lineNumber:260 isFatal:0 description:"Should not ask to draw unknown layer (%@).", layerCopy];
LABEL_28:
}

@end