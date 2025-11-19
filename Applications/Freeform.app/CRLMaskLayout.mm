@interface CRLMaskLayout
- (BOOL)hasSmartPath;
- (BOOL)shouldDisplayGuides;
- (BOOL)shouldSnapWhileResizing;
- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)a3;
- (CGAffineTransform)originalTransformForProvidingGuides;
- (CGPoint)getControlKnobPosition:(unint64_t)a3;
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameForProvidingGuidesInRoot;
- (CGRect)p_cachedTightPathBounds;
- (CGRect)p_cachedTightPathBoundsNoScale;
- (CGRect)pathBounds;
- (CRLMaskLayout)initWithInfo:(id)a3;
- (id)computeInfoGeometryFromPureLayoutGeometry:(id)a3;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (id)infoGeometry;
- (id)maskInfo;
- (id)pathSource;
- (unint64_t)numberOfControlKnobs;
- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)a3;
- (void)dealloc;
- (void)dragBy:(CGPoint)a3;
- (void)dynamicMovePathKnobDidBegin;
- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)a3 withTracker:(id)a4;
- (void)endDynamicOperation;
- (void)invalidate;
- (void)invalidatePath;
- (void)p_calculateCachedPathIfNecessary;
- (void)p_calculateTightPathBoundsIfNecessary;
- (void)p_createDynamicCopies;
- (void)p_destroyDynamicCopies;
- (void)p_setDynamicInfoGeometry:(id)a3;
- (void)processChangedProperty:(unint64_t)a3;
- (void)resetDynamicGeometryToModel;
- (void)resizeWithTransform:(CGAffineTransform *)a3;
- (void)setControlKnobPosition:(unint64_t)a3 toPoint:(CGPoint)a4;
- (void)setPathScale:(double)a3;
- (void)takeScaledMaskGeometry:(id)a3;
@end

@implementation CRLMaskLayout

- (CRLMaskLayout)initWithInfo:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRLMaskLayout;
  v3 = [(CRLCanvasLayout *)&v7 initWithInfo:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(CRLMaskLayout *)v3 maskInfo];

    if (v5)
    {
      BYTE2(v4->super.mInfoGeometryBeforeDynamicOperation) |= 3u;
      *(&v4->mCachedTightPathBoundsNoScale.size.height + 2) = 1.0;
      *(&v4->mPathScale + 2) = 1.0;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  CGPathRelease(*(&self->mMaskInvalidFlags + 2));
  CGPathRelease(*(&self->mCachedPath + 2));
  v3.receiver = self;
  v3.super_class = CRLMaskLayout;
  [(CRLMaskLayout *)&v3 dealloc];
}

- (id)dependentLayouts
{
  v2 = [(CRLCanvasAbstractLayout *)self parent];
  v3 = [NSArray arrayWithObject:v2];

  return v3;
}

- (id)computeLayoutGeometry
{
  [(CRLMaskLayout *)self p_cachedTightPathBoundsNoScale];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CRLMaskLayout *)self infoGeometry];
  [v11 position];
  v13 = v12;
  memset(&v22, 0, sizeof(v22));
  [v11 center];
  if (v11)
  {
    [v11 transformBasedOnPoint:sub_10011F334(v4 centeredAtPoint:{v6, v13)}];
  }

  else
  {
    memset(&v22, 0, sizeof(v22));
  }

  v14 = [CRLCanvasLayoutGeometry alloc];
  v21 = v22;
  v15 = [(CRLCanvasLayoutGeometry *)v14 initWithSize:&v21 transform:v8, v10];
  [(CRLMaskLayout *)self pathScale];
  v17 = v16;
  [(CRLMaskLayout *)self pathScale];
  CGAffineTransformMakeScale(&v21, v17, v18);
  v19 = [(CRLCanvasLayoutGeometry *)v15 geometryByTransformingBy:&v21];

  return v19;
}

- (id)computeInfoGeometryFromPureLayoutGeometry:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasLayout *)self originalGeometry];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(CRLCanvasAbstractLayout *)self geometry];
  }

  v8 = v7;

  v9 = [(CRLCanvasLayout *)self infoGeometryBeforeDynamicOperation];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [(CRLCanvasLayout *)self info];
    v11 = [v12 geometry];
  }

  v13 = [(CRLCanvasLayout *)self originalGeometry];
  if (v13)
  {
    v14 = *(&self->mPathScale + 2);
  }

  else
  {
    [(CRLMaskLayout *)self pathScale];
    v14 = v15;
  }

  CGAffineTransformMakeScale(&v23, 1.0 / v14, 1.0 / v14);
  v16 = [v8 geometryByTransformingBy:&v23];
  v17 = v16;
  memset(&v23, 0, sizeof(v23));
  if (v11)
  {
    [v11 fullTransform];
    if (v17)
    {
LABEL_12:
      [v17 fullTransform];
      goto LABEL_15;
    }
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
    if (v16)
    {
      goto LABEL_12;
    }
  }

  memset(&v20, 0, sizeof(v20));
LABEL_15:
  CGAffineTransformInvert(&t2, &v20);
  CGAffineTransformConcat(&v23, &t1, &t2);
  memset(&t1, 0, sizeof(t1));
  if (v4)
  {
    [v4 fullTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  v20 = v23;
  CGAffineTransformConcat(&t1, &v20, &t2);
  t2 = t1;
  v18 = [CRLCanvasInfoGeometry geometryFromFullTransform:&t2];

  return v18;
}

- (void)processChangedProperty:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = CRLMaskLayout;
  [(CRLCanvasLayout *)&v12 processChangedProperty:?];
  if (a3 == 21)
  {
    [(CRLMaskLayout *)self invalidatePath];
    [(CRLCanvasLayout *)self invalidateFrame];
  }

  else if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 6)
  {
    return;
  }

  v5 = [(CRLMaskLayout *)self imageLayout];
  v6 = [(CRLCanvasLayout *)self layoutController];
  v7 = [v6 canvas];

  v8 = [v7 canvasController];

  if (v8)
  {
    v9 = [(CRLCanvasLayout *)self layoutController];
    v10 = [v9 canvas];
    v11 = [v10 repForLayout:v5];

    [v11 processChangedProperty:40];
  }
}

- (void)invalidate
{
  v6.receiver = self;
  v6.super_class = CRLMaskLayout;
  [(CRLCanvasLayout *)&v6 invalidate];
  v3 = objc_opt_class();
  v4 = [(CRLCanvasAbstractLayout *)self parent];
  v5 = sub_100014370(v3, v4);
  [v5 invalidateFrame];
}

- (void)invalidatePath
{
  BYTE2(self->super.mInfoGeometryBeforeDynamicOperation) |= 1u;
  CGPathRelease(*(&self->mMaskInvalidFlags + 2));
  *(&self->mMaskInvalidFlags + 2) = 0;
  CGPathRelease(*(&self->mCachedPath + 2));
  *(&self->mCachedPath + 2) = 0;
  BYTE2(self->super.mInfoGeometryBeforeDynamicOperation) |= 2u;
  origin = CGRectZero.origin;
  size = CGRectZero.size;
  *(&self->mCachedPathNoScale + 2) = CGRectZero.origin;
  *(&self->mCachedTightPathBounds.origin.y + 2) = size;
  *(&self->mCachedTightPathBounds.size.height + 2) = origin;
  *(&self->mCachedTightPathBoundsNoScale.origin.y + 2) = size;
}

- (CGRect)alignmentFrame
{
  v3 = [(CRLMaskLayout *)self imageLayout];
  v4 = [v3 isResizingInMaskEditMode];

  if (v4)
  {
    v5 = [(CRLCanvasAbstractLayout *)self geometry];
    [v5 size];
    v6 = sub_10011ECB4();
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [(CRLMaskLayout *)self imageLayout];
    v14 = v13;
    if (v13)
    {
      [v13 layoutToMaskTransform];
    }

    else
    {
      memset(&v34, 0, sizeof(v34));
    }

    v35.origin.x = v6;
    v35.origin.y = v8;
    v35.size.width = v10;
    v35.size.height = v12;
    v36 = CGRectApplyAffineTransform(v35, &v34);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
  }

  else
  {
    [(CRLCanvasAbstractLayout *)self frameInParent];
    width = v15;
    height = v17;
    v19 = [(CRLCanvasAbstractLayout *)self parent];
    [v19 frame];
    x = v20;
    y = v22;

    v24 = [(CRLMaskLayout *)self imageLayout];
    v25 = [v24 imageInfo];
    v14 = [v25 stroke];

    if (v14 && [v14 shouldRender])
    {
      v26 = [CRLBezierPath bezierPathWithRect:x, y, width, height];
      [v26 boundsIncludingCRLStroke:v14];
      v28 = sub_10011F31C(x, y, v27);
      x = sub_10011F334(x, y, v28);
      y = v29;
    }
  }

  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGAffineTransform)originalTransformForProvidingGuides
{
  v5 = [(CRLMaskLayout *)self imageLayout];
  v6 = [v5 isResizingInMaskEditMode];

  if (v6)
  {
    v7 = [(CRLMaskLayout *)self imageLayout];
    v8 = v7;
    if (v7)
    {
      [v7 layoutToMaskTransform];
      [v8 originalTransformForProvidingGuides];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
      memset(&t2, 0, sizeof(t2));
    }

    CGAffineTransformConcat(retstr, &t1, &t2);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CRLMaskLayout;
    return [(CGAffineTransform *)&v10 originalTransformForProvidingGuides];
  }

  return result;
}

- (BOOL)shouldSnapWhileResizing
{
  v8.receiver = self;
  v8.super_class = CRLMaskLayout;
  if (![(CRLCanvasAbstractLayout *)&v8 shouldSnapWhileResizing])
  {
    return 0;
  }

  v3 = [(CRLCanvasAbstractLayout *)self parent];
  v4 = v3;
  if (v3)
  {
    [v3 transformInRoot];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v5 = sub_100139B5C(v7);

  return v5;
}

- (CGRect)alignmentFrameForProvidingGuidesInRoot
{
  v2 = [(CRLMaskLayout *)self imageLayout];
  [v2 alignmentFrameForProvidingGuidesInRoot];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CRLMaskLayout;
  [(CRLCanvasLayout *)&v4 beginDynamicOperationWithRealTimeCommands:a3];
  [(CRLMaskLayout *)self p_createDynamicCopies];
}

- (void)resizeWithTransform:(CGAffineTransform *)a3
{
  v5 = [(CRLMaskLayout *)self imageLayout];
  if ([v5 isResizingInMaskEditMode])
  {

LABEL_4:
    memset(&v32, 0, sizeof(v32));
    v8 = [(CRLMaskLayout *)self imageLayout];
    v9 = [v8 originalImageGeometry];
    v10 = v9;
    if (v9)
    {
      [v9 transform];
    }

    else
    {
      memset(&v32, 0, sizeof(v32));
    }

    t1 = v32;
    v11 = *&a3->c;
    *&t2.a = *&a3->a;
    *&t2.c = v11;
    *&t2.tx = *&a3->tx;
    CGAffineTransformConcat(&v30, &t1, &t2);
    t1 = v32;
    CGAffineTransformInvert(&t2, &t1);
    CGAffineTransformConcat(&t1, &v30, &t2);
    v12 = *&t1.c;
    *&a3->a = *&t1.a;
    *&a3->c = v12;
    *&a3->tx = *&t1.tx;
    v13 = [(CRLCanvasLayout *)self originalGeometry];
    v14 = *&a3->c;
    *&t1.a = *&a3->a;
    *&t1.c = v14;
    *&t1.tx = *&a3->tx;
    v15 = [v13 geometryByTransformingBy:&t1];

    v16 = [(CRLMaskLayout *)self computeInfoGeometryFromPureLayoutGeometry:v15];
    [(CRLMaskLayout *)self p_setDynamicInfoGeometry:v16];

    return;
  }

  v6 = [(CRLMaskLayout *)self imageLayout];
  v7 = [v6 isRotatingInMaskEditMode];

  if (v7)
  {
    goto LABEL_4;
  }

  memset(&v32, 0, sizeof(v32));
  v17 = [(CRLMaskLayout *)self imageLayout];
  v18 = [v17 originalImageGeometry];
  v19 = v18;
  if (v18)
  {
    [v18 transform];
  }

  else
  {
    memset(&v32, 0, sizeof(v32));
  }

  memset(&t1, 0, sizeof(t1));
  t2 = v32;
  v20 = *&a3->c;
  *&v28.a = *&a3->a;
  *&v28.c = v20;
  *&v28.tx = *&a3->tx;
  CGAffineTransformConcat(&v30, &t2, &v28);
  sub_100139A38(&v30, &t1);
  v21 = *&a3->c;
  *&v30.a = *&a3->a;
  *&v30.c = v21;
  v23 = *&a3->a;
  v22 = *&a3->c;
  *&v30.tx = *&a3->tx;
  t2 = v32;
  *&v28.a = v23;
  *&v28.c = v22;
  *&v28.tx = *&a3->tx;
  CGAffineTransformConcat(&v30, &t2, &v28);
  t2 = t1;
  CGAffineTransformInvert(&v28, &t2);
  v27 = v30;
  CGAffineTransformConcat(&t2, &v27, &v28);
  v30 = t2;
  v24 = [(CRLCanvasLayout *)self originalGeometry];
  t2 = v30;
  v25 = [v24 geometryByTransformingBy:&t2];

  v26 = [(CRLMaskLayout *)self computeInfoGeometryFromPureLayoutGeometry:v25];
  [(CRLMaskLayout *)self p_setDynamicInfoGeometry:v26];
}

- (void)takeScaledMaskGeometry:(id)a3
{
  v4 = a3;
  if ((BYTE2(self->mDynamicPathSource) & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135D634();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135D648();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135D6D8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLMaskLayout takeScaledMaskGeometry:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:242 isFatal:0 description:"wrong mode"];
  }

  [(CRLMaskLayout *)self p_setDynamicInfoGeometry:v4];
}

- (void)endDynamicOperation
{
  v3.receiver = self;
  v3.super_class = CRLMaskLayout;
  [(CRLCanvasLayout *)&v3 endDynamicOperation];
  [(CRLMaskLayout *)self p_destroyDynamicCopies];
}

- (void)resetDynamicGeometryToModel
{
  if (!*(&self->mOriginalPathScale + 2))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135D700();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135D714();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135D7A4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLMaskLayout resetDynamicGeometryToModel]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:254 isFatal:0 description:"Should only be called when we have a dynamic info geometry to reset!"];
  }

  v6 = [(CRLMaskLayout *)self maskInfo];
  v7 = [v6 geometry];
  [(CRLMaskLayout *)self p_setDynamicInfoGeometry:v7];
}

- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)a3
{
  v6 = [(CRLMaskLayout *)self imageLayout];
  v7 = v6;
  if (v6)
  {
    v8 = *&a4->c;
    v10[0] = *&a4->a;
    v10[1] = v8;
    v10[2] = *&a4->tx;
    [v6 layoutTransformInInfoSpace:v10];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)dragBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLMaskLayout *)self imageLayout];
  v7 = [v6 isDraggingInMaskEditMode];

  if ((v7 & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135D7CC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135D7E0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135D870();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLMaskLayout dragBy:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:273 isFatal:0 description:"should be called only when dragging in mask mode"];
  }

  v11 = [(CRLMaskLayout *)self imageLayout];
  v12 = [v11 imageGeometry];
  v13 = v12;
  if (v12)
  {
    [v12 transform];
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  CGAffineTransformInvert(&v22, &v21);
  v14 = sub_10012119C(&v22, x, y);

  v15 = [*(&self->mOriginalPathScale + 2) mutableCopy];
  if ([v11 maskEditModeForDragging] == 3)
  {
    [v15 position];
    v18 = sub_10011F31C(v16, v17, v14);
LABEL_18:
    [v15 setPosition:{v18, *&v21.a, *&v21.c, *&v21.tx}];
    goto LABEL_19;
  }

  if ([v11 maskEditModeForDragging] == 2)
  {
    [v15 position];
    v18 = sub_10011F334(v19, v20, v14);
    goto LABEL_18;
  }

LABEL_19:
  [(CRLMaskLayout *)self p_setDynamicInfoGeometry:v15, *&v21.a, *&v21.c, *&v21.tx];
}

- (BOOL)shouldDisplayGuides
{
  v3 = [(CRLMaskLayout *)self imageLayout];
  if ([v3 isResizingInMaskEditMode])
  {

    return 0;
  }

  v4 = BYTE2(self->mDynamicPathSource);

  if (v4)
  {
    return 0;
  }

  v6 = [(CRLMaskLayout *)self imageLayout];
  v7 = [v6 isDraggingInMaskEditMode];

  if (v7)
  {
    return 1;
  }

  v8.receiver = self;
  v8.super_class = CRLMaskLayout;
  return [(CRLCanvasLayout *)&v8 shouldDisplayGuides];
}

- (id)maskInfo
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (CGRect)pathBounds
{
  [(CRLMaskLayout *)self p_cachedTightPathBounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)pathSource
{
  v2 = *(&self->mDynamicInfoGeometry + 2);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = [(CRLMaskLayout *)self maskInfo];
    v3 = [v4 pathSource];
  }

  return v3;
}

- (void)setPathScale:(double)a3
{
  if (*(&self->mCachedTightPathBoundsNoScale.size.height + 2) != a3)
  {
    *(&self->mCachedTightPathBoundsNoScale.size.height + 2) = a3;
    [(CRLMaskLayout *)self invalidatePath];
    v5 = [(CRLCanvasAbstractLayout *)self geometry];
    [(CRLCanvasAbstractLayout *)self setGeometry:v5];
  }
}

- (void)dynamicMovePathKnobDidBegin
{
  v5 = [(CRLMaskLayout *)self pathSource];
  v3 = [v5 copy];
  v4 = *(&self->mDynamicInfoGeometry + 2);
  *(&self->mDynamicInfoGeometry + 2) = v3;
}

- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)a3 withTracker:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(CRLMaskLayout *)self pathScale];
  v9 = sub_10011F340(x, y, 1.0 / v8);
  v11 = v10;
  v12 = *(&self->mDynamicInfoGeometry + 2);
  v13 = [v7 knob];

  v14 = [v13 tag];
  [(CRLMaskLayout *)self pathBounds];
  [v12 setControlKnobPosition:v14 toPoint:{sub_10011F334(v9, v11, v15)}];

  [(CRLMaskLayout *)self invalidatePath];

  [(CRLCanvasLayout *)self invalidateFrame];
}

- (BOOL)hasSmartPath
{
  v2 = [(CRLMaskLayout *)self pathSource];
  v3 = objc_opt_class();
  v9 = sub_1003038E0(v2, v3, 1, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLSmartPathSource);

  return v9 != 0;
}

- (unint64_t)numberOfControlKnobs
{
  v2 = [(CRLMaskLayout *)self pathSource];
  v3 = objc_opt_class();
  v9 = sub_1003038E0(v2, v3, 1, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLSmartPathSource);

  v10 = [v9 numberOfControlKnobs];
  return v10;
}

- (void)setControlKnobPosition:(unint64_t)a3 toPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = [(CRLMaskLayout *)self pathSource];
  v9 = objc_opt_class();
  v16 = sub_1003038E0(v8, v9, 1, v10, v11, v12, v13, v14, &OBJC_PROTOCOL___CRLSmartPathSource);

  [(CRLMaskLayout *)self pathBounds];
  [v16 setControlKnobPosition:a3 toPoint:{sub_10011F334(x, y, v15)}];
}

- (CGPoint)getControlKnobPosition:(unint64_t)a3
{
  v5 = [(CRLMaskLayout *)self pathSource];
  v6 = objc_opt_class();
  v12 = sub_1003038E0(v5, v6, 1, v7, v8, v9, v10, v11, &OBJC_PROTOCOL___CRLSmartPathSource);

  [v12 getControlKnobPosition:a3];
  v14 = v13;
  v16 = v15;
  [(CRLMaskLayout *)self pathScale];
  v18 = sub_10011F340(v14, v16, v17);
  v20 = v19;
  [(CRLMaskLayout *)self pathBounds];
  v22 = sub_10011F31C(v18, v20, v21);
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.y = v26;
  result.x = v25;
  return result;
}

- (id)infoGeometry
{
  v2 = *(&self->mOriginalPathScale + 2);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = [(CRLCanvasLayout *)self info];
    v3 = [v4 geometry];
  }

  return v3;
}

- (void)p_calculateCachedPathIfNecessary
{
  if (BYTE2(self->super.mInfoGeometryBeforeDynamicOperation))
  {
    [(CRLMaskLayout *)self pathScale:0];
    v4 = v3;
    [(CRLMaskLayout *)self pathScale];
    CGAffineTransformMakeScale(&v8, v4, v5);
    v6 = [(CRLMaskLayout *)self pathSource];
    v7 = [v6 bezierPath];
    *(&self->mCachedPath + 2) = CGPathCreateCopy([v7 CGPath]);

    *(&self->mMaskInvalidFlags + 2) = CGPathCreateCopyByTransformingPath(*(&self->mCachedPath + 2), &v8);
    BYTE2(self->super.mInfoGeometryBeforeDynamicOperation) &= ~1u;
  }
}

- (void)p_calculateTightPathBoundsIfNecessary
{
  if ((BYTE2(self->super.mInfoGeometryBeforeDynamicOperation) & 2) != 0)
  {
    v3 = (&self->mCachedPathNoScale + 2);
    PathBoundingBox = CGPathGetPathBoundingBox([(CRLMaskLayout *)self p_cachedPath]);
    *v3 = PathBoundingBox.origin.x;
    v3[1] = PathBoundingBox.origin.y;
    v3[2] = PathBoundingBox.size.width;
    v3[3] = PathBoundingBox.size.height;
    v5 = CGPathGetPathBoundingBox([(CRLMaskLayout *)self p_cachedPathNoScale]);
    *(&self->mCachedTightPathBounds.size.height + 2) = v5.origin.x;
    *(&self->mCachedTightPathBoundsNoScale.origin.x + 2) = v5.origin.y;
    *(&self->mCachedTightPathBoundsNoScale.origin.y + 2) = v5.size.width;
    *(&self->mCachedTightPathBoundsNoScale.size.width + 2) = v5.size.height;
    BYTE2(self->super.mInfoGeometryBeforeDynamicOperation) &= ~2u;
  }
}

- (CGRect)p_cachedTightPathBounds
{
  [(CRLMaskLayout *)self p_calculateTightPathBoundsIfNecessary];
  v3 = *(&self->mCachedPathNoScale + 2);
  v4 = *(&self->mCachedTightPathBounds.origin.x + 2);
  v5 = *(&self->mCachedTightPathBounds.origin.y + 2);
  v6 = *(&self->mCachedTightPathBounds.size.width + 2);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)p_cachedTightPathBoundsNoScale
{
  [(CRLMaskLayout *)self p_calculateTightPathBoundsIfNecessary];
  v3 = *(&self->mCachedTightPathBounds.size.height + 2);
  v4 = *(&self->mCachedTightPathBoundsNoScale.origin.x + 2);
  v5 = *(&self->mCachedTightPathBoundsNoScale.origin.y + 2);
  v6 = *(&self->mCachedTightPathBoundsNoScale.size.width + 2);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)p_createDynamicCopies
{
  if (*(&self->mOriginalPathScale + 2))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135D898();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135D8AC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135D948();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLMaskLayout p_createDynamicCopies]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:433 isFatal:0 description:"expected nil value for '%{public}s'", "mDynamicInfoGeometry"];
  }

  if (*(&self->mDynamicInfoGeometry + 2))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135D970();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135D998();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135DA34();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLMaskLayout p_createDynamicCopies]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:434 isFatal:0 description:"expected nil value for '%{public}s'", "mDynamicPathSource"];
  }

  [(CRLMaskLayout *)self pathScale];
  *(&self->mPathScale + 2) = v9;
  v10 = [(CRLMaskLayout *)self maskInfo];
  v11 = [(CRLCanvasAbstractLayout *)self geometry];
  v12 = [(CRLMaskLayout *)self computeInfoGeometryFromPureLayoutGeometry:v11];
  v13 = *(&self->mOriginalPathScale + 2);
  *(&self->mOriginalPathScale + 2) = v12;

  [(CRLMaskLayout *)self setPathScale:1.0];
  [(CRLMaskLayout *)self invalidatePath];
  v14 = [v10 pathSource];
  v15 = [v14 copy];
  v16 = *(&self->mDynamicInfoGeometry + 2);
  *(&self->mDynamicInfoGeometry + 2) = v15;

  v17 = *(&self->mDynamicInfoGeometry + 2);
  [*(&self->mOriginalPathScale + 2) size];
  [v17 scaleToNaturalSize:?];
}

- (void)p_setDynamicInfoGeometry:(id)a3
{
  v13 = a3;
  objc_storeStrong((&self->mOriginalPathScale + 2), a3);
  v5 = [(CRLMaskLayout *)self maskInfo];
  v6 = [v5 pathSource];
  v7 = [v6 copy];
  v8 = *(&self->mDynamicInfoGeometry + 2);
  *(&self->mDynamicInfoGeometry + 2) = v7;

  v9 = objc_opt_class();
  v10 = sub_100014370(v9, *(&self->mDynamicInfoGeometry + 2));
  v11 = v10;
  if (v10 && ([v10 shouldShowKnob] & 1) == 0)
  {
    [*(&self->mOriginalPathScale + 2) size];
    [*(&self->mDynamicInfoGeometry + 2) setNaturalSize:?];
  }

  else
  {
    v12 = *(&self->mDynamicInfoGeometry + 2);
    [*(&self->mOriginalPathScale + 2) size];
    [v12 scaleToNaturalSize:?];
  }

  [(CRLCanvasLayout *)self invalidateFrame];
  [(CRLMaskLayout *)self invalidatePath];
}

- (void)p_destroyDynamicCopies
{
  if (!*(&self->mOriginalPathScale + 2))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135DA5C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135DA70();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135DB0C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLMaskLayout p_destroyDynamicCopies]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:466 isFatal:0 description:"invalid nil value for '%{public}s'", "mDynamicInfoGeometry"];
  }

  if (!*(&self->mDynamicInfoGeometry + 2))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135DB34();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135DB5C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135DBF8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLMaskLayout p_destroyDynamicCopies]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMaskLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:467 isFatal:0 description:"invalid nil value for '%{public}s'", "mDynamicPathSource"];
  }

  v9 = *(&self->mOriginalPathScale + 2);
  *(&self->mOriginalPathScale + 2) = 0.0;

  v10 = *(&self->mDynamicInfoGeometry + 2);
  *(&self->mDynamicInfoGeometry + 2) = 0;

  [(CRLCanvasLayout *)self invalidateFrame];
  [(CRLMaskLayout *)self invalidatePath];
}

@end