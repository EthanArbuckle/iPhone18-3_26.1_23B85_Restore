@interface CRLMaskLayout
- (BOOL)hasSmartPath;
- (BOOL)shouldDisplayGuides;
- (BOOL)shouldSnapWhileResizing;
- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)space;
- (CGAffineTransform)originalTransformForProvidingGuides;
- (CGPoint)getControlKnobPosition:(unint64_t)position;
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameForProvidingGuidesInRoot;
- (CGRect)p_cachedTightPathBounds;
- (CGRect)p_cachedTightPathBoundsNoScale;
- (CGRect)pathBounds;
- (CRLMaskLayout)initWithInfo:(id)info;
- (id)computeInfoGeometryFromPureLayoutGeometry:(id)geometry;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (id)infoGeometry;
- (id)maskInfo;
- (id)pathSource;
- (unint64_t)numberOfControlKnobs;
- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)commands;
- (void)dealloc;
- (void)dragBy:(CGPoint)by;
- (void)dynamicMovePathKnobDidBegin;
- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)to withTracker:(id)tracker;
- (void)endDynamicOperation;
- (void)invalidate;
- (void)invalidatePath;
- (void)p_calculateCachedPathIfNecessary;
- (void)p_calculateTightPathBoundsIfNecessary;
- (void)p_createDynamicCopies;
- (void)p_destroyDynamicCopies;
- (void)p_setDynamicInfoGeometry:(id)geometry;
- (void)processChangedProperty:(unint64_t)property;
- (void)resetDynamicGeometryToModel;
- (void)resizeWithTransform:(CGAffineTransform *)transform;
- (void)setControlKnobPosition:(unint64_t)position toPoint:(CGPoint)point;
- (void)setPathScale:(double)scale;
- (void)takeScaledMaskGeometry:(id)geometry;
@end

@implementation CRLMaskLayout

- (CRLMaskLayout)initWithInfo:(id)info
{
  v7.receiver = self;
  v7.super_class = CRLMaskLayout;
  v3 = [(CRLCanvasLayout *)&v7 initWithInfo:info];
  v4 = v3;
  if (v3)
  {
    maskInfo = [(CRLMaskLayout *)v3 maskInfo];

    if (maskInfo)
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
  parent = [(CRLCanvasAbstractLayout *)self parent];
  v3 = [NSArray arrayWithObject:parent];

  return v3;
}

- (id)computeLayoutGeometry
{
  [(CRLMaskLayout *)self p_cachedTightPathBoundsNoScale];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  infoGeometry = [(CRLMaskLayout *)self infoGeometry];
  [infoGeometry position];
  v13 = v12;
  memset(&v22, 0, sizeof(v22));
  [infoGeometry center];
  if (infoGeometry)
  {
    [infoGeometry transformBasedOnPoint:sub_10011F334(v4 centeredAtPoint:{v6, v13)}];
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

- (id)computeInfoGeometryFromPureLayoutGeometry:(id)geometry
{
  geometryCopy = geometry;
  originalGeometry = [(CRLCanvasLayout *)self originalGeometry];
  v6 = originalGeometry;
  if (originalGeometry)
  {
    geometry = originalGeometry;
  }

  else
  {
    geometry = [(CRLCanvasAbstractLayout *)self geometry];
  }

  v8 = geometry;

  infoGeometryBeforeDynamicOperation = [(CRLCanvasLayout *)self infoGeometryBeforeDynamicOperation];
  v10 = infoGeometryBeforeDynamicOperation;
  if (infoGeometryBeforeDynamicOperation)
  {
    geometry2 = infoGeometryBeforeDynamicOperation;
  }

  else
  {
    info = [(CRLCanvasLayout *)self info];
    geometry2 = [info geometry];
  }

  originalGeometry2 = [(CRLCanvasLayout *)self originalGeometry];
  if (originalGeometry2)
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
  if (geometry2)
  {
    [geometry2 fullTransform];
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
  if (geometryCopy)
  {
    [geometryCopy fullTransform];
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

- (void)processChangedProperty:(unint64_t)property
{
  v12.receiver = self;
  v12.super_class = CRLMaskLayout;
  [(CRLCanvasLayout *)&v12 processChangedProperty:?];
  if (property == 21)
  {
    [(CRLMaskLayout *)self invalidatePath];
    [(CRLCanvasLayout *)self invalidateFrame];
  }

  else if ((property & 0xFFFFFFFFFFFFFFFELL) != 6)
  {
    return;
  }

  imageLayout = [(CRLMaskLayout *)self imageLayout];
  layoutController = [(CRLCanvasLayout *)self layoutController];
  canvas = [layoutController canvas];

  canvasController = [canvas canvasController];

  if (canvasController)
  {
    layoutController2 = [(CRLCanvasLayout *)self layoutController];
    canvas2 = [layoutController2 canvas];
    v11 = [canvas2 repForLayout:imageLayout];

    [v11 processChangedProperty:40];
  }
}

- (void)invalidate
{
  v6.receiver = self;
  v6.super_class = CRLMaskLayout;
  [(CRLCanvasLayout *)&v6 invalidate];
  v3 = objc_opt_class();
  parent = [(CRLCanvasAbstractLayout *)self parent];
  v5 = sub_100014370(v3, parent);
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
  imageLayout = [(CRLMaskLayout *)self imageLayout];
  isResizingInMaskEditMode = [imageLayout isResizingInMaskEditMode];

  if (isResizingInMaskEditMode)
  {
    geometry = [(CRLCanvasAbstractLayout *)self geometry];
    [geometry size];
    v6 = sub_10011ECB4();
    v8 = v7;
    v10 = v9;
    v12 = v11;

    imageLayout2 = [(CRLMaskLayout *)self imageLayout];
    stroke = imageLayout2;
    if (imageLayout2)
    {
      [imageLayout2 layoutToMaskTransform];
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
    parent = [(CRLCanvasAbstractLayout *)self parent];
    [parent frame];
    x = v20;
    y = v22;

    imageLayout3 = [(CRLMaskLayout *)self imageLayout];
    imageInfo = [imageLayout3 imageInfo];
    stroke = [imageInfo stroke];

    if (stroke && [stroke shouldRender])
    {
      height = [CRLBezierPath bezierPathWithRect:x, y, width, height];
      [height boundsIncludingCRLStroke:stroke];
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
  imageLayout = [(CRLMaskLayout *)self imageLayout];
  isResizingInMaskEditMode = [imageLayout isResizingInMaskEditMode];

  if (isResizingInMaskEditMode)
  {
    imageLayout2 = [(CRLMaskLayout *)self imageLayout];
    v8 = imageLayout2;
    if (imageLayout2)
    {
      [imageLayout2 layoutToMaskTransform];
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

  parent = [(CRLCanvasAbstractLayout *)self parent];
  v4 = parent;
  if (parent)
  {
    [parent transformInRoot];
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
  imageLayout = [(CRLMaskLayout *)self imageLayout];
  [imageLayout alignmentFrameForProvidingGuidesInRoot];
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

- (void)beginDynamicOperationWithRealTimeCommands:(BOOL)commands
{
  v4.receiver = self;
  v4.super_class = CRLMaskLayout;
  [(CRLCanvasLayout *)&v4 beginDynamicOperationWithRealTimeCommands:commands];
  [(CRLMaskLayout *)self p_createDynamicCopies];
}

- (void)resizeWithTransform:(CGAffineTransform *)transform
{
  imageLayout = [(CRLMaskLayout *)self imageLayout];
  if ([imageLayout isResizingInMaskEditMode])
  {

LABEL_4:
    memset(&v32, 0, sizeof(v32));
    imageLayout2 = [(CRLMaskLayout *)self imageLayout];
    originalImageGeometry = [imageLayout2 originalImageGeometry];
    v10 = originalImageGeometry;
    if (originalImageGeometry)
    {
      [originalImageGeometry transform];
    }

    else
    {
      memset(&v32, 0, sizeof(v32));
    }

    t1 = v32;
    v11 = *&transform->c;
    *&t2.a = *&transform->a;
    *&t2.c = v11;
    *&t2.tx = *&transform->tx;
    CGAffineTransformConcat(&v30, &t1, &t2);
    t1 = v32;
    CGAffineTransformInvert(&t2, &t1);
    CGAffineTransformConcat(&t1, &v30, &t2);
    v12 = *&t1.c;
    *&transform->a = *&t1.a;
    *&transform->c = v12;
    *&transform->tx = *&t1.tx;
    originalGeometry = [(CRLCanvasLayout *)self originalGeometry];
    v14 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v14;
    *&t1.tx = *&transform->tx;
    v15 = [originalGeometry geometryByTransformingBy:&t1];

    v16 = [(CRLMaskLayout *)self computeInfoGeometryFromPureLayoutGeometry:v15];
    [(CRLMaskLayout *)self p_setDynamicInfoGeometry:v16];

    return;
  }

  imageLayout3 = [(CRLMaskLayout *)self imageLayout];
  isRotatingInMaskEditMode = [imageLayout3 isRotatingInMaskEditMode];

  if (isRotatingInMaskEditMode)
  {
    goto LABEL_4;
  }

  memset(&v32, 0, sizeof(v32));
  imageLayout4 = [(CRLMaskLayout *)self imageLayout];
  originalImageGeometry2 = [imageLayout4 originalImageGeometry];
  v19 = originalImageGeometry2;
  if (originalImageGeometry2)
  {
    [originalImageGeometry2 transform];
  }

  else
  {
    memset(&v32, 0, sizeof(v32));
  }

  memset(&t1, 0, sizeof(t1));
  t2 = v32;
  v20 = *&transform->c;
  *&v28.a = *&transform->a;
  *&v28.c = v20;
  *&v28.tx = *&transform->tx;
  CGAffineTransformConcat(&v30, &t2, &v28);
  sub_100139A38(&v30, &t1);
  v21 = *&transform->c;
  *&v30.a = *&transform->a;
  *&v30.c = v21;
  v23 = *&transform->a;
  v22 = *&transform->c;
  *&v30.tx = *&transform->tx;
  t2 = v32;
  *&v28.a = v23;
  *&v28.c = v22;
  *&v28.tx = *&transform->tx;
  CGAffineTransformConcat(&v30, &t2, &v28);
  t2 = t1;
  CGAffineTransformInvert(&v28, &t2);
  v27 = v30;
  CGAffineTransformConcat(&t2, &v27, &v28);
  v30 = t2;
  originalGeometry2 = [(CRLCanvasLayout *)self originalGeometry];
  t2 = v30;
  v25 = [originalGeometry2 geometryByTransformingBy:&t2];

  v26 = [(CRLMaskLayout *)self computeInfoGeometryFromPureLayoutGeometry:v25];
  [(CRLMaskLayout *)self p_setDynamicInfoGeometry:v26];
}

- (void)takeScaledMaskGeometry:(id)geometry
{
  geometryCopy = geometry;
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

  [(CRLMaskLayout *)self p_setDynamicInfoGeometry:geometryCopy];
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

  maskInfo = [(CRLMaskLayout *)self maskInfo];
  geometry = [maskInfo geometry];
  [(CRLMaskLayout *)self p_setDynamicInfoGeometry:geometry];
}

- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)space
{
  imageLayout = [(CRLMaskLayout *)self imageLayout];
  v7 = imageLayout;
  if (imageLayout)
  {
    v8 = *&a4->c;
    v10[0] = *&a4->a;
    v10[1] = v8;
    v10[2] = *&a4->tx;
    [imageLayout layoutTransformInInfoSpace:v10];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)dragBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  imageLayout = [(CRLMaskLayout *)self imageLayout];
  isDraggingInMaskEditMode = [imageLayout isDraggingInMaskEditMode];

  if ((isDraggingInMaskEditMode & 1) == 0)
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

  imageLayout2 = [(CRLMaskLayout *)self imageLayout];
  imageGeometry = [imageLayout2 imageGeometry];
  v13 = imageGeometry;
  if (imageGeometry)
  {
    [imageGeometry transform];
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  CGAffineTransformInvert(&v22, &v21);
  v14 = sub_10012119C(&v22, x, y);

  v15 = [*(&self->mOriginalPathScale + 2) mutableCopy];
  if ([imageLayout2 maskEditModeForDragging] == 3)
  {
    [v15 position];
    v18 = sub_10011F31C(v16, v17, v14);
LABEL_18:
    [v15 setPosition:{v18, *&v21.a, *&v21.c, *&v21.tx}];
    goto LABEL_19;
  }

  if ([imageLayout2 maskEditModeForDragging] == 2)
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
  imageLayout = [(CRLMaskLayout *)self imageLayout];
  if ([imageLayout isResizingInMaskEditMode])
  {

    return 0;
  }

  v4 = BYTE2(self->mDynamicPathSource);

  if (v4)
  {
    return 0;
  }

  imageLayout2 = [(CRLMaskLayout *)self imageLayout];
  isDraggingInMaskEditMode = [imageLayout2 isDraggingInMaskEditMode];

  if (isDraggingInMaskEditMode)
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
  info = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, info);

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
    pathSource = v2;
  }

  else
  {
    maskInfo = [(CRLMaskLayout *)self maskInfo];
    pathSource = [maskInfo pathSource];
  }

  return pathSource;
}

- (void)setPathScale:(double)scale
{
  if (*(&self->mCachedTightPathBoundsNoScale.size.height + 2) != scale)
  {
    *(&self->mCachedTightPathBoundsNoScale.size.height + 2) = scale;
    [(CRLMaskLayout *)self invalidatePath];
    geometry = [(CRLCanvasAbstractLayout *)self geometry];
    [(CRLCanvasAbstractLayout *)self setGeometry:geometry];
  }
}

- (void)dynamicMovePathKnobDidBegin
{
  pathSource = [(CRLMaskLayout *)self pathSource];
  v3 = [pathSource copy];
  v4 = *(&self->mDynamicInfoGeometry + 2);
  *(&self->mDynamicInfoGeometry + 2) = v3;
}

- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)to withTracker:(id)tracker
{
  y = to.y;
  x = to.x;
  trackerCopy = tracker;
  [(CRLMaskLayout *)self pathScale];
  v9 = sub_10011F340(x, y, 1.0 / v8);
  v11 = v10;
  v12 = *(&self->mDynamicInfoGeometry + 2);
  knob = [trackerCopy knob];

  v14 = [knob tag];
  [(CRLMaskLayout *)self pathBounds];
  [v12 setControlKnobPosition:v14 toPoint:{sub_10011F334(v9, v11, v15)}];

  [(CRLMaskLayout *)self invalidatePath];

  [(CRLCanvasLayout *)self invalidateFrame];
}

- (BOOL)hasSmartPath
{
  pathSource = [(CRLMaskLayout *)self pathSource];
  v3 = objc_opt_class();
  v9 = sub_1003038E0(pathSource, v3, 1, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLSmartPathSource);

  return v9 != 0;
}

- (unint64_t)numberOfControlKnobs
{
  pathSource = [(CRLMaskLayout *)self pathSource];
  v3 = objc_opt_class();
  v9 = sub_1003038E0(pathSource, v3, 1, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLSmartPathSource);

  numberOfControlKnobs = [v9 numberOfControlKnobs];
  return numberOfControlKnobs;
}

- (void)setControlKnobPosition:(unint64_t)position toPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  pathSource = [(CRLMaskLayout *)self pathSource];
  v9 = objc_opt_class();
  v16 = sub_1003038E0(pathSource, v9, 1, v10, v11, v12, v13, v14, &OBJC_PROTOCOL___CRLSmartPathSource);

  [(CRLMaskLayout *)self pathBounds];
  [v16 setControlKnobPosition:position toPoint:{sub_10011F334(x, y, v15)}];
}

- (CGPoint)getControlKnobPosition:(unint64_t)position
{
  pathSource = [(CRLMaskLayout *)self pathSource];
  v6 = objc_opt_class();
  v12 = sub_1003038E0(pathSource, v6, 1, v7, v8, v9, v10, v11, &OBJC_PROTOCOL___CRLSmartPathSource);

  [v12 getControlKnobPosition:position];
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
    geometry = v2;
  }

  else
  {
    info = [(CRLCanvasLayout *)self info];
    geometry = [info geometry];
  }

  return geometry;
}

- (void)p_calculateCachedPathIfNecessary
{
  if (BYTE2(self->super.mInfoGeometryBeforeDynamicOperation))
  {
    [(CRLMaskLayout *)self pathScale:0];
    v4 = v3;
    [(CRLMaskLayout *)self pathScale];
    CGAffineTransformMakeScale(&v8, v4, v5);
    pathSource = [(CRLMaskLayout *)self pathSource];
    bezierPath = [pathSource bezierPath];
    *(&self->mCachedPath + 2) = CGPathCreateCopy([bezierPath CGPath]);

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
  maskInfo = [(CRLMaskLayout *)self maskInfo];
  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  v12 = [(CRLMaskLayout *)self computeInfoGeometryFromPureLayoutGeometry:geometry];
  v13 = *(&self->mOriginalPathScale + 2);
  *(&self->mOriginalPathScale + 2) = v12;

  [(CRLMaskLayout *)self setPathScale:1.0];
  [(CRLMaskLayout *)self invalidatePath];
  pathSource = [maskInfo pathSource];
  v15 = [pathSource copy];
  v16 = *(&self->mDynamicInfoGeometry + 2);
  *(&self->mDynamicInfoGeometry + 2) = v15;

  v17 = *(&self->mDynamicInfoGeometry + 2);
  [*(&self->mOriginalPathScale + 2) size];
  [v17 scaleToNaturalSize:?];
}

- (void)p_setDynamicInfoGeometry:(id)geometry
{
  geometryCopy = geometry;
  objc_storeStrong((&self->mOriginalPathScale + 2), geometry);
  maskInfo = [(CRLMaskLayout *)self maskInfo];
  pathSource = [maskInfo pathSource];
  v7 = [pathSource copy];
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