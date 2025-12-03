@interface CRLMediaLayout
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameInRoot;
- (CGRect)boundsForStandardKnobs;
- (CGRect)computeAlignmentFrameInRoot:(BOOL)root;
- (CRLMediaLayout)initWithInfo:(id)info;
- (_TtC8Freeform12CRLMediaItem)mediaItem;
- (id)commandToResetMediaToRawPixelSize;
- (id)commandToResetToSize:(CGSize)size;
- (id)stroke;
- (void)dynamicStrokeWidthChangeDidBegin;
- (void)dynamicStrokeWidthChangeDidEnd;
- (void)dynamicStrokeWidthUpdateToValue:(double)value;
- (void)processChangedProperty:(unint64_t)property;
- (void)setBoundsForStandardKnobs:(CGRect)knobs;
- (void)setGeometry:(id)geometry;
@end

@implementation CRLMediaLayout

- (void)processChangedProperty:(unint64_t)property
{
  v5.receiver = self;
  v5.super_class = CRLMediaLayout;
  [(CRLCanvasLayout *)&v5 processChangedProperty:?];
  if (property == 16)
  {
    [(CRLCanvasLayout *)self invalidateFrame];
    [(CRLMediaLayout *)self invalidateAlignmentFrame];
  }
}

- (CRLMediaLayout)initWithInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = CRLMediaLayout;
  result = [(CRLCanvasLayout *)&v4 initWithInfo:info];
  if (result)
  {
    BYTE3(result->_cachedAlignmentFrame.size.width) |= 1u;
  }

  return result;
}

- (_TtC8Freeform12CRLMediaItem)mediaItem
{
  v3 = objc_opt_class();
  info = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, info);

  return v5;
}

- (id)stroke
{
  v2 = *(&self->_cachedAlignmentFrame.size.height + 3);
  if (v2)
  {
    stroke = v2;
  }

  else
  {
    mediaItem = [(CRLMediaLayout *)self mediaItem];
    stroke = [mediaItem stroke];
  }

  return stroke;
}

- (void)dynamicStrokeWidthChangeDidBegin
{
  mediaItem = [(CRLMediaLayout *)self mediaItem];
  stroke = [mediaItem stroke];
  v4 = [stroke mutableCopy];
  v5 = *(&self->_cachedAlignmentFrame.size.height + 3);
  *(&self->_cachedAlignmentFrame.size.height + 3) = v4;
}

- (void)dynamicStrokeWidthUpdateToValue:(double)value
{
  [*(&self->_cachedAlignmentFrame.size.height + 3) setWidth:value];
  [(CRLMediaLayout *)self processChangedProperty:16];
  layoutController = [(CRLCanvasLayout *)self layoutController];
  canvas = [layoutController canvas];
  canvasController = [canvas canvasController];

  v6 = [canvasController repForLayout:self];
  [v6 processChangedProperty:16];
}

- (void)dynamicStrokeWidthChangeDidEnd
{
  v2 = *(&self->_cachedAlignmentFrame.size.height + 3);
  *(&self->_cachedAlignmentFrame.size.height + 3) = 0.0;
}

- (void)setGeometry:(id)geometry
{
  geometryCopy = geometry;
  if ((BYTE3(self->_cachedAlignmentFrame.size.width) & 1) == 0)
  {
    geometry = [(CRLCanvasAbstractLayout *)self geometry];
    v6 = geometry;
    if (geometry && ([geometry differsInMoreThanTranslationFrom:geometryCopy] & 1) == 0)
    {
      if (geometryCopy)
      {
        [geometryCopy transform];
        v8 = v16.f64[1];
        v7 = v16.f64[0];
        v10 = v17.f64[1];
        v9 = v17.f64[0];
        v11 = v18.f64[1];
        v12 = v18.f64[0];
      }

      else
      {
        v11 = 0.0;
        v10 = 0.0;
        v8 = 0.0;
        v12 = 0.0;
        v9 = 0.0;
        v7 = 0.0;
      }

      [v6 transform];
      if ((BYTE3(self->_cachedAlignmentFrame.size.width) & 1) == 0)
      {
        v13 = sub_10011F31C(v12 + CGPointZero.y * v9 + v7 * CGPointZero.x, v11 + CGPointZero.y * v10 + v8 * CGPointZero.x, vaddq_f64(v18, vmlaq_n_f64(vmulq_n_f64(v17, CGPointZero.y), v16, CGPointZero.x)).f64[0]);
        *(&self->super.mDynamicOpacity + 3) = sub_10011F334(*(&self->super.mDynamicOpacity + 3), *(&self->super._suppressesShadowsAndReflections + 3), v13);
        *(&self->super._suppressesShadowsAndReflections + 3) = v14;
      }
    }

    else
    {
      [(CRLMediaLayout *)self invalidateAlignmentFrame];
    }
  }

  v15.receiver = self;
  v15.super_class = CRLMediaLayout;
  [(CRLBoardItemLayout *)&v15 setGeometry:geometryCopy];
}

- (CGRect)computeAlignmentFrameInRoot:(BOOL)root
{
  v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018578B0);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 67110146;
    v21 = v3;
    v22 = 2082;
    v23 = "[CRLMediaLayout computeAlignmentFrameInRoot:]";
    v24 = 2082;
    v25 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMediaLayout.m";
    v26 = 1024;
    v27 = 118;
    v28 = 2114;
    v29 = v7;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018578D0);
  }

  v8 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v9 = v8;
    v10 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v21 = v3;
    v22 = 2114;
    v23 = v10;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v11 = [NSString stringWithUTF8String:"[CRLMediaLayout computeAlignmentFrameInRoot:]"];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMediaLayout.m"];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:118 isFatal:0 description:"Abstract method not overridden by %{public}@", v14];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v16, "[CRLMediaLayout computeAlignmentFrameInRoot:]"];
  v18 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v17 userInfo:0];
  v19 = v18;

  objc_exception_throw(v18);
}

- (CGRect)alignmentFrame
{
  if (BYTE3(self->_cachedAlignmentFrame.size.width))
  {
    v3 = (&self->super.mDynamicOpacity + 3);
    [(CRLMediaLayout *)self computeAlignmentFrameInRoot:0];
    v3->super.super.super.super.super.isa = v4;
    v3->super.super.super.super._parent = v5;
    v3->super.super.super.super._children = v6;
    v3->super.super.super.super._geometry = v7;
    BYTE3(self->_cachedAlignmentFrame.size.width) &= ~1u;
  }

  v8 = *(&self->super.mDynamicOpacity + 3);
  v9 = *(&self->super._suppressesShadowsAndReflections + 3);
  v10 = *(&self->_cachedAlignmentFrame.origin.x + 3);
  v11 = *(&self->_cachedAlignmentFrame.origin.y + 3);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)alignmentFrameInRoot
{
  parent = [(CRLCanvasAbstractLayout *)self parent];
  if (!parent || (v4 = parent, -[CRLCanvasAbstractLayout parent](self, "parent"), v5 = objc_claimAutoreleasedReturnValue(), -[CRLCanvasLayout layoutController](self, "layoutController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 rootLayout], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v4, v5 == v7))
  {
    [(CRLMediaLayout *)self alignmentFrame];
  }

  else
  {
    [(CRLMediaLayout *)self computeAlignmentFrameInRoot:1];
  }

  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (id)commandToResetToSize:(CGSize)size
{
  boardItem = [(CRLBoardItemLayout *)self boardItem];
  geometry = [boardItem geometry];
  v6 = [geometry geometryWithNewBounds:sub_10011ECB4()];

  v7 = [_TtC8Freeform25CRLCommandSetInfoGeometry alloc];
  boardItem2 = [(CRLBoardItemLayout *)self boardItem];
  v9 = [(CRLCommandSetInfoGeometry *)v7 initWithBoardItem:boardItem2 geometry:v6];

  return v9;
}

- (id)commandToResetMediaToRawPixelSize
{
  mediaItem = [(CRLMediaLayout *)self mediaItem];
  [mediaItem mediaRawPixelSize];
  v5 = v4;
  v7 = v6;

  if (v5 == CGSizeZero.width && v7 == CGSizeZero.height)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(CRLMediaLayout *)self commandToResetToSize:v5, v7];
  }

  return v9;
}

- (CGRect)boundsForStandardKnobs
{
  v2 = *(&self->_mediaInvalidFlags + 3);
  v3 = *(&self->_dynamicStroke + 3);
  v4 = *(&self->_boundsForStandardKnobs.origin.x + 3);
  v5 = *(&self->_boundsForStandardKnobs.origin.y + 3);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBoundsForStandardKnobs:(CGRect)knobs
{
  *(&self->_mediaInvalidFlags + 3) = knobs.origin.x;
  *(&self->_dynamicStroke + 3) = *&knobs.origin.y;
  *(&self->_boundsForStandardKnobs.origin.x + 3) = knobs.size.width;
  *(&self->_boundsForStandardKnobs.origin.y + 3) = knobs.size.height;
}

@end