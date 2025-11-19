@interface CRLStyledRep
- (BOOL)shouldHideSelectionHighlightDueToRectangularPath;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)shouldShowShadow;
- (CGRect)clipRect;
- (CGRect)p_clipRectInRootForTransform:(CGAffineTransform *)a3 includeShadow:(BOOL)a4;
- (CGRect)p_rectWithEffectsAppliedToRect:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4 includeShadow:(BOOL)a5;
- (CGRect)rectWithEffectsAppliedToRect:(CGRect)a3;
- (NSString)description;
- (double)opacity;
- (id)cursorAtPoint:(CGPoint)a3 forKnob:(id)a4 withCursorPlatformObject:(id)a5;
- (id)shadow;
- (void)drawInContext:(CGContext *)a3;
- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8 keepingChildrenPassingTest:(id)a9;
- (void)drawShadowInContext:(CGContext *)a3 withChildren:(BOOL)a4 withDrawableOpacity:(BOOL)a5;
- (void)dynamicShadowChangeDidBegin;
- (void)dynamicShadowChangeDidEnd;
- (void)dynamicShadowUpdateToValue:(id)a3;
- (void)processChangedProperty:(unint64_t)a3;
- (void)setNeedsDisplay;
@end

@implementation CRLStyledRep

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CRLCanvasRep *)self info];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(CRLCanvasRep *)self info];
  v9 = [(CRLCanvasRep *)self layout];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [(CRLCanvasRep *)self layout];
  [(CRLCanvasRep *)self frameInUnscaledCanvas];
  v13 = NSStringFromCGRect(v17);
  v14 = [NSString stringWithFormat:@"<%@ %p info=<%@ %p> layout=<%@ %p> frameInUnscaledCanvas=%@>", v4, self, v7, v8, v11, v12, v13];

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

- (CGRect)p_clipRectInRootForTransform:(CGAffineTransform *)a3 includeShadow:(BOOL)a4
{
  v4 = a4;
  [(CRLStyledRep *)self clipRectWithoutEffects];
  v7 = *&a3->c;
  *&v13.a = *&a3->a;
  *&v13.c = v7;
  *&v13.tx = *&a3->tx;
  v15 = CGRectApplyAffineTransform(v14, &v13);
  v8 = *&CGAffineTransformIdentity.c;
  *&v13.a = *&CGAffineTransformIdentity.a;
  *&v13.c = v8;
  *&v13.tx = *&CGAffineTransformIdentity.tx;
  [(CRLStyledRep *)self p_rectWithEffectsAppliedToRect:&v13 additionalTransform:v4 includeShadow:v15.origin.x, v15.origin.y, v15.size.width, v15.size.height];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (double)opacity
{
  v2 = [(CRLStyledRep *)self styledLayout];
  [v2 opacity];
  v4 = v3;

  return v4;
}

- (CGRect)rectWithEffectsAppliedToRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CRLCanvasRep *)self layout];
  v9 = v8;
  if (v8)
  {
    [v8 transformInRoot];
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

- (CGRect)p_rectWithEffectsAppliedToRect:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4 includeShadow:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a5)
  {
    v11 = [(CRLCanvasRep *)self info];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(CRLStyledRep *)self shadow];
      v14 = v13;
      if (v13 && [v13 isEnabled])
      {
        v15 = *&a4->c;
        v24[0] = *&a4->a;
        v24[1] = v15;
        v24[2] = *&a4->tx;
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
    v2 = self->mDynamicShadow;
  }

  else
  {
    v3 = [(CRLStyledRep *)self styledInfo];
    v2 = [v3 shadow];
  }

  return v2;
}

- (BOOL)shouldShowShadow
{
  v3 = [(CRLStyledRep *)self styledLayout];
  v4 = [v3 isInvisible];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CRLStyledRep;
  return [(CRLCanvasRep *)&v6 shouldShowShadow];
}

- (void)drawShadowInContext:(CGContext *)a3 withChildren:(BOOL)a4 withDrawableOpacity:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [(CRLStyledRep *)self shadow];
  v10 = v9;
  if (v9)
  {
    if ([v9 isEnabled])
    {
      if ([(CRLStyledRep *)self shouldShowShadow])
      {
        [v10 boundsInNaturalSpaceForRep:self];
        x = v11;
        y = v13;
        width = v15;
        height = v17;
        v19 = [(CRLCanvasRep *)self newShadowImageWithSize:0 unflipped:v6 withChildren:v15, v17];
        if (v19)
        {
          v20 = v19;
          CGContextSaveGState(a3);
          [v10 opacity];
          v22 = v21;
          if (v5)
          {
            [(CRLStyledRep *)self opacity];
            v22 = v22 * v23;
          }

          if (v22 < 1.0)
          {
            CGContextSetAlpha(a3, v22);
          }

          if ([v10 isDropShadow])
          {
            [v10 offsetDelta];
            v25 = v24;
            v27 = v26;
            v28 = [(CRLStyledRep *)self styledLayout];
            v29 = v28;
            if (v28)
            {
              [v28 transformInRoot];
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
              v30 = [(CRLStyledRep *)self styledLayout];
              [v30 alignmentFrameInRoot];
              v32 = v31;

              v33 = [(CRLStyledRep *)self styledLayout];
              [v33 alignmentFrameInRoot];
              v35 = v34;
              v37 = v36;

              v38 = [(CRLCanvasRep *)self layout];
              v39 = v38;
              if (v38)
              {
                [v38 transformInRoot];
              }

              else
              {
                memset(&v60, 0, sizeof(v60));
              }

              CGAffineTransformInvert(&transform, &v60);
              CGContextConcatCTM(a3, &transform);

              CGContextTranslateCTM(a3, v35, v37);
              [v10 offset];
              CGContextTranslateCTM(a3, 0.0, v32 + v56);
              CGContextTranslateCTM(a3, 0.0, v32);
              CGContextScaleCTM(a3, 1.0, -1.0);
              goto LABEL_25;
            }

            if (![v10 isCurvedShadow])
            {
LABEL_25:
              v64.origin.x = x;
              v64.origin.y = y;
              v64.size.width = width;
              v64.size.height = height;
              CGContextDrawImage(a3, v64, v20);
              CGImageRelease(v20);
              CGContextRestoreGState(a3);
              goto LABEL_26;
            }

            v40 = [(CRLCanvasRep *)self layout];
            v41 = [v40 geometry];
            [v41 frame];
            v43 = v42;
            v45 = v44;

            v46 = [(CRLCanvasRep *)self layout];
            v47 = [v46 parent];

            if (v47)
            {
              v48 = [(CRLCanvasRep *)self layout];
              [v48 frameInRoot];
              v43 = v49;
              v45 = v50;
            }

            v51 = [(CRLCanvasRep *)self layout];
            v52 = v51;
            if (v51)
            {
              [v51 transformInRoot];
            }

            else
            {
              memset(&v60, 0, sizeof(v60));
            }

            CGAffineTransformInvert(&transform, &v60);
            CGContextConcatCTM(a3, &transform);

            CGContextTranslateCTM(a3, v43, v45);
            [v10 offsetDelta];
            v58 = v57;
            [v10 offsetDelta];
            CGContextTranslateCTM(a3, v58, v59);
            v63.origin.x = x;
            v63.origin.y = y;
            v63.size.width = width;
            v63.size.height = height;
          }

          sub_100139C04(0, 1, &transform, v63.origin.x, v63.origin.y, v63.size.width, v63.size.height);
          CGContextConcatCTM(a3, &transform);
          goto LABEL_25;
        }
      }
    }
  }

LABEL_26:
}

- (void)drawInContext:(CGContext *)a3
{
  v5 = [(CRLStyledRep *)self styledLayout];
  v6 = [v5 isInvisible];

  if ((v6 & 1) == 0)
  {
    [(CRLStyledRep *)self drawShadowInContext:a3 withChildren:1 withDrawableOpacity:1];
    [(CRLStyledRep *)self drawInContextWithoutEffects:a3 withContent:1 strokeDrawOptions:7 withOpacity:1 forAlphaOnly:0 drawChildren:0 keepingChildrenPassingTest:0];
  }
}

- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8 keepingChildrenPassingTest:(id)a9
{
  v9 = a9;
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

- (void)processChangedProperty:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = CRLStyledRep;
  [(CRLCanvasRep *)&v7 processChangedProperty:?];
  if (a3 == 18)
  {
    v6.receiver = self;
    v6.super_class = CRLStyledRep;
    [(CRLCanvasRep *)&v6 setNeedsDisplay];
  }

  else
  {
    if (a3 != 17)
    {
      return;
    }

    if (self->mIsUpdatingShadow)
    {
      [(CRLCanvasRep *)self invalidateShadowRenderable];
    }
  }

  v5 = [(CRLCanvasRep *)self canvas];
  [v5 canvasInvalidatedForRep:self];
}

- (BOOL)shouldHideSelectionHighlightDueToRectangularPath
{
  v3 = [(CRLCanvasRep *)self layout];
  v4 = [v3 i_wrapPath];

  if (!v4)
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

  if ([v4 isRectangular])
  {
    v8 = 1;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = [(CRLStyledRep *)self pathSourceForSelectionHighlightBehavior];
    v11 = sub_100014370(v9, v10);

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
  v3 = [(CRLStyledRep *)self styledInfo];
  v6 = [v3 shadow];

  v4 = [v6 copy];
  mDynamicShadow = self->mDynamicShadow;
  self->mDynamicShadow = v4;

  self->mIsUpdatingShadow = 1;
}

- (void)dynamicShadowUpdateToValue:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v8 = [v4 copy];
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

- (id)cursorAtPoint:(CGPoint)a3 forKnob:(id)a4 withCursorPlatformObject:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  if ([v9 tag] < 0xC || objc_msgSend(v9, "tag") > 0x10)
  {
    v17.receiver = self;
    v17.super_class = CRLStyledRep;
    v15 = [(CRLCanvasRep *)&v17 cursorAtPoint:v9 forKnob:v10 withCursorPlatformObject:x, y];
  }

  else
  {
    v11 = objc_opt_class();
    v12 = [(CRLStyledRep *)self pathSourceForSelectionHighlightBehavior];
    v13 = sub_100014370(v11, v12);

    if (v13 && ![v13 type])
    {
      v14 = [v9 resizeCursor];
    }

    else
    {
      [v9 cursorActiveScaledRect];
      v14 = [CRLCursor moveCursorWithActiveScaledRect:?];
    }

    v15 = v14;
  }

  return v15;
}

@end