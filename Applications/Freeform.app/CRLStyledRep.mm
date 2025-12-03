@interface CRLStyledRep
- (BOOL)shouldHideSelectionHighlightDueToRectangularPath;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)shouldShowShadow;
- (CGRect)clipRect;
- (CGRect)p_clipRectInRootForTransform:(CGAffineTransform *)transform includeShadow:(BOOL)shadow;
- (CGRect)p_rectWithEffectsAppliedToRect:(CGRect)rect additionalTransform:(CGAffineTransform *)transform includeShadow:(BOOL)shadow;
- (CGRect)rectWithEffectsAppliedToRect:(CGRect)rect;
- (NSString)description;
- (double)opacity;
- (id)cursorAtPoint:(CGPoint)point forKnob:(id)knob withCursorPlatformObject:(id)object;
- (id)shadow;
- (void)drawInContext:(CGContext *)context;
- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children keepingChildrenPassingTest:(id)test;
- (void)drawShadowInContext:(CGContext *)context withChildren:(BOOL)children withDrawableOpacity:(BOOL)opacity;
- (void)dynamicShadowChangeDidBegin;
- (void)dynamicShadowChangeDidEnd;
- (void)dynamicShadowUpdateToValue:(id)value;
- (void)processChangedProperty:(unint64_t)property;
- (void)setNeedsDisplay;
@end

@implementation CRLStyledRep

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  info = [(CRLCanvasRep *)self info];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  info2 = [(CRLCanvasRep *)self info];
  layout = [(CRLCanvasRep *)self layout];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  layout2 = [(CRLCanvasRep *)self layout];
  [(CRLCanvasRep *)self frameInUnscaledCanvas];
  v13 = NSStringFromCGRect(v17);
  v14 = [NSString stringWithFormat:@"<%@ %p info=<%@ %p> layout=<%@ %p> frameInUnscaledCanvas=%@>", v4, self, v7, info2, v11, layout2, v13];

  return v14;
}

- (CGRect)clipRect
{
  [(CRLStyledRep *)self clipRectWithoutEffects];

  [(CRLStyledRep *)self rectWithEffectsAppliedToRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)p_clipRectInRootForTransform:(CGAffineTransform *)transform includeShadow:(BOOL)shadow
{
  shadowCopy = shadow;
  [(CRLStyledRep *)self clipRectWithoutEffects];
  v7 = *&transform->c;
  *&v13.a = *&transform->a;
  *&v13.c = v7;
  *&v13.tx = *&transform->tx;
  v15 = CGRectApplyAffineTransform(v14, &v13);
  v8 = *&CGAffineTransformIdentity.c;
  *&v13.a = *&CGAffineTransformIdentity.a;
  *&v13.c = v8;
  *&v13.tx = *&CGAffineTransformIdentity.tx;
  [(CRLStyledRep *)self p_rectWithEffectsAppliedToRect:&v13 additionalTransform:shadowCopy includeShadow:v15.origin.x, v15.origin.y, v15.size.width, v15.size.height];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (double)opacity
{
  styledLayout = [(CRLStyledRep *)self styledLayout];
  [styledLayout opacity];
  v4 = v3;

  return v4;
}

- (CGRect)rectWithEffectsAppliedToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layout = [(CRLCanvasRep *)self layout];
  v9 = layout;
  if (layout)
  {
    [layout transformInRoot];
  }

  else
  {
    memset(&v22, 0, sizeof(v22));
  }

  CGAffineTransformInvert(&v23, &v22);
  [(CRLStyledRep *)self p_rectWithEffectsAppliedToRect:&v23 additionalTransform:1 includeShadow:x, y, width, height];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)p_rectWithEffectsAppliedToRect:(CGRect)rect additionalTransform:(CGAffineTransform *)transform includeShadow:(BOOL)shadow
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (shadow)
  {
    info = [(CRLCanvasRep *)self info];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      shadow = [(CRLStyledRep *)self shadow];
      v14 = shadow;
      if (shadow && [shadow isEnabled])
      {
        v15 = *&transform->c;
        v24[0] = *&transform->a;
        v24[1] = v15;
        v24[2] = *&transform->tx;
        [v14 shadowBoundsForRect:v24 additionalTransform:{x, y, width, height}];
        x = v16;
        y = v17;
        width = v18;
        height = v19;
      }
    }
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)shadow
{
  if (self->mIsUpdatingShadow)
  {
    shadow = self->mDynamicShadow;
  }

  else
  {
    styledInfo = [(CRLStyledRep *)self styledInfo];
    shadow = [styledInfo shadow];
  }

  return shadow;
}

- (BOOL)shouldShowShadow
{
  styledLayout = [(CRLStyledRep *)self styledLayout];
  isInvisible = [styledLayout isInvisible];

  if (isInvisible)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CRLStyledRep;
  return [(CRLCanvasRep *)&v6 shouldShowShadow];
}

- (void)drawShadowInContext:(CGContext *)context withChildren:(BOOL)children withDrawableOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  childrenCopy = children;
  shadow = [(CRLStyledRep *)self shadow];
  v10 = shadow;
  if (shadow)
  {
    if ([shadow isEnabled])
    {
      if ([(CRLStyledRep *)self shouldShowShadow])
      {
        [v10 boundsInNaturalSpaceForRep:self];
        x = v11;
        y = v13;
        width = v15;
        height = v17;
        v19 = [(CRLCanvasRep *)self newShadowImageWithSize:0 unflipped:childrenCopy withChildren:v15, v17];
        if (v19)
        {
          v20 = v19;
          CGContextSaveGState(context);
          [v10 opacity];
          v22 = v21;
          if (opacityCopy)
          {
            [(CRLStyledRep *)self opacity];
            v22 = v22 * v23;
          }

          if (v22 < 1.0)
          {
            CGContextSetAlpha(context, v22);
          }

          if ([v10 isDropShadow])
          {
            [v10 offsetDelta];
            v25 = v24;
            v27 = v26;
            styledLayout = [(CRLStyledRep *)self styledLayout];
            v29 = styledLayout;
            if (styledLayout)
            {
              [styledLayout transformInRoot];
            }

            else
            {
              memset(&v60, 0, sizeof(v60));
            }

            CGAffineTransformInvert(&transform, &v60);
            v53 = sub_10012119C(&transform, v25, v27);
            v55 = v54;

            v62.origin.x = x;
            v62.origin.y = y;
            v62.size.width = width;
            v62.size.height = height;
            v63 = CGRectOffset(v62, v53, v55);
            x = v63.origin.x;
            y = v63.origin.y;
            width = v63.size.width;
            height = v63.size.height;
          }

          else
          {
            if ([v10 isContactShadow])
            {
              styledLayout2 = [(CRLStyledRep *)self styledLayout];
              [styledLayout2 alignmentFrameInRoot];
              v32 = v31;

              styledLayout3 = [(CRLStyledRep *)self styledLayout];
              [styledLayout3 alignmentFrameInRoot];
              v35 = v34;
              v37 = v36;

              layout = [(CRLCanvasRep *)self layout];
              v39 = layout;
              if (layout)
              {
                [layout transformInRoot];
              }

              else
              {
                memset(&v60, 0, sizeof(v60));
              }

              CGAffineTransformInvert(&transform, &v60);
              CGContextConcatCTM(context, &transform);

              CGContextTranslateCTM(context, v35, v37);
              [v10 offset];
              CGContextTranslateCTM(context, 0.0, v32 + v56);
              CGContextTranslateCTM(context, 0.0, v32);
              CGContextScaleCTM(context, 1.0, -1.0);
              goto LABEL_25;
            }

            if (![v10 isCurvedShadow])
            {
LABEL_25:
              v64.origin.x = x;
              v64.origin.y = y;
              v64.size.width = width;
              v64.size.height = height;
              CGContextDrawImage(context, v64, v20);
              CGImageRelease(v20);
              CGContextRestoreGState(context);
              goto LABEL_26;
            }

            layout2 = [(CRLCanvasRep *)self layout];
            geometry = [layout2 geometry];
            [geometry frame];
            v43 = v42;
            v45 = v44;

            layout3 = [(CRLCanvasRep *)self layout];
            parent = [layout3 parent];

            if (parent)
            {
              layout4 = [(CRLCanvasRep *)self layout];
              [layout4 frameInRoot];
              v43 = v49;
              v45 = v50;
            }

            layout5 = [(CRLCanvasRep *)self layout];
            v52 = layout5;
            if (layout5)
            {
              [layout5 transformInRoot];
            }

            else
            {
              memset(&v60, 0, sizeof(v60));
            }

            CGAffineTransformInvert(&transform, &v60);
            CGContextConcatCTM(context, &transform);

            CGContextTranslateCTM(context, v43, v45);
            [v10 offsetDelta];
            v58 = v57;
            [v10 offsetDelta];
            CGContextTranslateCTM(context, v58, v59);
            v63.origin.x = x;
            v63.origin.y = y;
            v63.size.width = width;
            v63.size.height = height;
          }

          sub_100139C04(0, 1, &transform, v63.origin.x, v63.origin.y, v63.size.width, v63.size.height);
          CGContextConcatCTM(context, &transform);
          goto LABEL_25;
        }
      }
    }
  }

LABEL_26:
}

- (void)drawInContext:(CGContext *)context
{
  styledLayout = [(CRLStyledRep *)self styledLayout];
  isInvisible = [styledLayout isInvisible];

  if ((isInvisible & 1) == 0)
  {
    [(CRLStyledRep *)self drawShadowInContext:context withChildren:1 withDrawableOpacity:1];
    [(CRLStyledRep *)self drawInContextWithoutEffects:context withContent:1 strokeDrawOptions:7 withOpacity:1 forAlphaOnly:0 drawChildren:0 keepingChildrenPassingTest:0];
  }
}

- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children keepingChildrenPassingTest:(id)test
{
  testCopy = test;
  v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10184A2D8);
  }

  v11 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v12 = v11;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 67110146;
    v28 = v10;
    v29 = 2082;
    v30 = "[CRLStyledRep drawInContextWithoutEffects:withContent:strokeDrawOptions:withOpacity:forAlphaOnly:drawChildren:keepingChildrenPassingTest:]";
    v31 = 2082;
    v32 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLStyledRep.m";
    v33 = 1024;
    v34 = 201;
    v35 = 2114;
    v36 = v14;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10184A2F8);
  }

  v15 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v16 = v15;
    v17 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v28 = v10;
    v29 = 2114;
    v30 = v17;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v18 = [NSString stringWithUTF8String:"[CRLStyledRep drawInContextWithoutEffects:withContent:strokeDrawOptions:withOpacity:forAlphaOnly:drawChildren:keepingChildrenPassingTest:]"];
  v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLStyledRep.m"];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:201 isFatal:0 description:"Abstract method not overridden by %{public}@", v21];

  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v24 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v23, "[CRLStyledRep drawInContextWithoutEffects:withContent:strokeDrawOptions:withOpacity:forAlphaOnly:drawChildren:keepingChildrenPassingTest:]"];
  v25 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v24 userInfo:0];
  v26 = v25;

  objc_exception_throw(v25);
}

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = CRLStyledRep;
  [(CRLCanvasRep *)&v3 setNeedsDisplay];
  [(CRLCanvasRep *)self invalidateShadowRenderable];
}

- (void)processChangedProperty:(unint64_t)property
{
  v7.receiver = self;
  v7.super_class = CRLStyledRep;
  [(CRLCanvasRep *)&v7 processChangedProperty:?];
  if (property == 18)
  {
    v6.receiver = self;
    v6.super_class = CRLStyledRep;
    [(CRLCanvasRep *)&v6 setNeedsDisplay];
  }

  else
  {
    if (property != 17)
    {
      return;
    }

    if (self->mIsUpdatingShadow)
    {
      [(CRLCanvasRep *)self invalidateShadowRenderable];
    }
  }

  canvas = [(CRLCanvasRep *)self canvas];
  [canvas canvasInvalidatedForRep:self];
}

- (BOOL)shouldHideSelectionHighlightDueToRectangularPath
{
  layout = [(CRLCanvasRep *)self layout];
  i_wrapPath = [layout i_wrapPath];

  if (!i_wrapPath)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013370F0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101337104();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013371B4();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLStyledRep shouldHideSelectionHighlightDueToRectangularPath]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLStyledRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:253 isFatal:0 description:"invalid nil value for '%{public}s'", "wrapPath"];
  }

  if ([i_wrapPath isRectangular])
  {
    v8 = 1;
  }

  else
  {
    v9 = objc_opt_class();
    pathSourceForSelectionHighlightBehavior = [(CRLStyledRep *)self pathSourceForSelectionHighlightBehavior];
    v11 = sub_100014370(v9, pathSourceForSelectionHighlightBehavior);

    v8 = 0;
    if (v11)
    {
      if (![v11 type])
      {
        if (![v11 shouldShowKnob] || (objc_msgSend(v11, "scalar"), v14 = v13, -[CRLCanvasRep canvas](self, "canvas"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "viewScale"), v17 = v14 * v16, v15, v17 < 10.0))
        {
          v8 = 1;
        }
      }
    }
  }

  return v8;
}

- (BOOL)shouldShowSelectionHighlight
{
  if ([(CRLStyledRep *)self shouldHideSelectionHighlightDueToRectangularPath])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CRLStyledRep;
  return [(CRLCanvasRep *)&v4 shouldShowSelectionHighlight];
}

- (void)dynamicShadowChangeDidBegin
{
  styledInfo = [(CRLStyledRep *)self styledInfo];
  shadow = [styledInfo shadow];

  v4 = [shadow copy];
  mDynamicShadow = self->mDynamicShadow;
  self->mDynamicShadow = v4;

  self->mIsUpdatingShadow = 1;
}

- (void)dynamicShadowUpdateToValue:(id)value
{
  valueCopy = value;
  if (!valueCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013371DC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013371F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013372A0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLStyledRep dynamicShadowUpdateToValue:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLStyledRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:292 isFatal:0 description:"invalid nil value for '%{public}s'", "shadow"];
  }

  v8 = [valueCopy copy];
  mDynamicShadow = self->mDynamicShadow;
  self->mDynamicShadow = v8;

  [(CRLStyledRep *)self processChangedProperty:17];
}

- (void)dynamicShadowChangeDidEnd
{
  self->mIsUpdatingShadow = 0;
  mDynamicShadow = self->mDynamicShadow;
  self->mDynamicShadow = 0;
}

- (id)cursorAtPoint:(CGPoint)point forKnob:(id)knob withCursorPlatformObject:(id)object
{
  y = point.y;
  x = point.x;
  knobCopy = knob;
  objectCopy = object;
  if ([knobCopy tag] < 0xC || objc_msgSend(knobCopy, "tag") > 0x10)
  {
    v17.receiver = self;
    v17.super_class = CRLStyledRep;
    v15 = [(CRLCanvasRep *)&v17 cursorAtPoint:knobCopy forKnob:objectCopy withCursorPlatformObject:x, y];
  }

  else
  {
    v11 = objc_opt_class();
    pathSourceForSelectionHighlightBehavior = [(CRLStyledRep *)self pathSourceForSelectionHighlightBehavior];
    v13 = sub_100014370(v11, pathSourceForSelectionHighlightBehavior);

    if (v13 && ![v13 type])
    {
      resizeCursor = [knobCopy resizeCursor];
    }

    else
    {
      [knobCopy cursorActiveScaledRect];
      resizeCursor = [CRLCursor moveCursorWithActiveScaledRect:?];
    }

    v15 = resizeCursor;
  }

  return v15;
}

@end