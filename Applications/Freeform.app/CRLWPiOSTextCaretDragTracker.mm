@interface CRLWPiOSTextCaretDragTracker
- (BOOL)p_isVerticalTextLayout;
- (BOOL)p_shouldSnapToSelection;
- (BOOL)p_shouldSuppressAnimation;
- (CGAffineTransform)p_caretAffineTransformWithScaleFactor:(SEL)factor;
- (CGPoint)animationPoint;
- (CGPoint)magnificationPoint;
- (CGPoint)offset;
- (CGPoint)p_naturalPointFromUnscaledPoint:(CGPoint)point;
- (CGPoint)p_scaledCaretRectCenter;
- (CGPoint)p_selectionPointFromPoint:(CGPoint)point;
- (CGPoint)p_unscaledScrollPoint;
- (CGPoint)p_unscaledSelectionPoint;
- (CGPoint)startingUnscaledAutoscrollPoint;
- (CGPoint)startingiccUnscaledContentOffset;
- (CGRect)naturalCaretRect;
- (CGRect)p_scaledCaretRect;
- (CGRect)p_unscaledCaretRect;
- (CGSize)p_clampedScaledCaretSize;
- (CRLInteractiveCanvasController)icc;
- (CRLWPCaretDragMagnifierDelegate)delegate;
- (CRLWPiOSTextCaretDragTracker)init;
- (double)p_smoothedVelocity;
- (double)p_trackingOffset;
- (double)unscaledStartAutoscrollThreshold;
- (unint64_t)maximumAutoscrollDeltaForCount:(unint64_t)count;
- (void)beginMagnifyingTarget:(id)target magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated;
- (void)continueMagnifyingWithMagnificationPoint:(CGPoint)point;
- (void)p_removeFromView;
- (void)p_setBoundsAndCenterToCaretRect;
- (void)p_updateFrameAndOffset;
- (void)p_updateNaturalCaretRectFromTarget:(id)target;
- (void)p_zoomDownAnimation;
- (void)p_zoomUpAnimation;
- (void)setCursorIsFloating:(BOOL)floating;
- (void)setMagnificationPoint:(CGPoint)point;
- (void)setNaturalCaretRect:(CGRect)rect;
- (void)setPointVelocity:(double)velocity;
- (void)stopMagnifying:(BOOL)magnifying;
- (void)updateAfterAutoscroll:(id)autoscroll;
@end

@implementation CRLWPiOSTextCaretDragTracker

- (CRLWPiOSTextCaretDragTracker)init
{
  v11.receiver = self;
  v11.super_class = CRLWPiOSTextCaretDragTracker;
  v2 = [(CRLWPiOSTextCaretDragTracker *)&v11 initWithFrame:0.0, 0.0, 2.0, 48.0];
  if (v2)
  {
    v3 = [CRLColor colorWithRed:0.26 green:0.42 blue:0.95 alpha:1.0];
    uIColor = [v3 UIColor];
    [(CRLWPiOSTextCaretDragTracker *)v2 setBackgroundColor:uIColor];

    [(CRLWPiOSTextCaretDragTracker *)v2 setClipsToBounds:0];
    layer = [(CRLWPiOSTextCaretDragTracker *)v2 layer];
    v6 = +[CRLColor blackColor];
    [layer setShadowColor:{objc_msgSend(v6, "CGColor")}];

    LODWORD(v7) = 1047233823;
    [layer setShadowOpacity:v7];
    [layer setShadowOffset:{0.0, 6.0}];
    [layer setShadowRadius:2.75];
    v8 = +[NSMutableArray array];
    recentVelocityQueue = v2->_recentVelocityQueue;
    v2->_recentVelocityQueue = v8;

    v2->_scrollingDirection = 0;
  }

  return v2;
}

- (void)p_updateNaturalCaretRectFromTarget:(id)target
{
  targetCopy = target;
  delegate = [(CRLWPiOSTextCaretDragTracker *)self delegate];
  caretDragSelectionIsValid = [delegate caretDragSelectionIsValid];

  if (caretDragSelectionIsValid)
  {
    v6 = objc_opt_class();
    v7 = sub_100013F00(v6, targetCopy);
    [v7 caretRect];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [(CRLWPiOSTextCaretDragTracker *)self setNaturalCaretRect:v9, v11, v13, v15];
  }
}

- (void)setNaturalCaretRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_naturalCaretRect = &self->_naturalCaretRect;
  if (!CGRectEqualToRect(rect, self->_naturalCaretRect))
  {
    v16.origin.x = CGRectZero.origin.x;
    v16.origin.y = CGRectZero.origin.y;
    v16.size.width = CGRectZero.size.width;
    v16.size.height = CGRectZero.size.height;
    if (!CGRectEqualToRect(*p_naturalCaretRect, v16) && ![(CRLWPiOSTextCaretDragTracker *)self pointDidLeaveOriginalLine])
    {
      if (![(CRLWPiOSTextCaretDragTracker *)self p_isVerticalTextLayout]&& ((v9 = p_naturalCaretRect->origin.y, v10 = vabdd_f64(y, v9), v11 = y == v9, v12 = 2.0, !v11) ? (v13 = v10 < 2.0) : (v13 = 1), !v13) || [(CRLWPiOSTextCaretDragTracker *)self p_isVerticalTextLayout]&& ((v10 = vabdd_f64(x, p_naturalCaretRect->origin.x), v12 = 2.0, x != p_naturalCaretRect->origin.x) ? (v14 = v10 < 2.0) : (v14 = 1), !v14))
      {
        if ([(CRLWPiOSTextCaretDragTracker *)self isAnimatingPickup:v12])
        {
          layer = [(CRLWPiOSTextCaretDragTracker *)self layer];
          [layer removeAllAnimations];
        }

        [(CRLWPiOSTextCaretDragTracker *)self setPointDidLeaveOriginalLine:1];
      }
    }

    p_naturalCaretRect->origin.x = x;
    p_naturalCaretRect->origin.y = y;
    p_naturalCaretRect->size.width = width;
    p_naturalCaretRect->size.height = height;
  }
}

- (void)setPointVelocity:(double)velocity
{
  recentVelocityQueue = [(CRLWPiOSTextCaretDragTracker *)self recentVelocityQueue];
  v6 = [NSNumber crl_numberWithCGFloat:velocity];
  [recentVelocityQueue insertObject:v6 atIndex:0];

  recentVelocityQueue2 = [(CRLWPiOSTextCaretDragTracker *)self recentVelocityQueue];
  v8 = [recentVelocityQueue2 count];

  if (v8 >= 0x15)
  {
    recentVelocityQueue3 = [(CRLWPiOSTextCaretDragTracker *)self recentVelocityQueue];
    [recentVelocityQueue3 removeObjectAtIndex:20];
  }

  self->_pointVelocity = velocity;
}

- (CGPoint)magnificationPoint
{
  x = self->_magnificationPoint.x;
  y = self->_magnificationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setMagnificationPoint:(CGPoint)point
{
  x = point.x;
  p_magnificationPoint = &self->_magnificationPoint;
  y = self->_magnificationPoint.y;
  if (point.x != self->_magnificationPoint.x || point.y != y)
  {
    v7 = point.y;
    if (sub_100120888(point.x, point.y))
    {
      if (v7 <= y)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      [(CRLWPiOSTextCaretDragTracker *)self setScrollingDirection:v9];
    }

    p_magnificationPoint->x = x;
    p_magnificationPoint->y = v7;
  }
}

- (void)setCursorIsFloating:(BOOL)floating
{
  if (self->_cursorIsFloating != floating)
  {
    self->_cursorIsFloating = floating;
  }
}

- (BOOL)p_isVerticalTextLayout
{
  v3 = objc_opt_class();
  target = [(CRLWPiOSTextCaretDragTracker *)self target];
  v5 = sub_100014370(v3, target);

  if (v5)
  {
    textIsVertical = [v5 textIsVertical];
  }

  else
  {
    delegate = [(CRLWPiOSTextCaretDragTracker *)self delegate];
    textIsVertical = [delegate isVerticalTextCaretForMagnifying];
  }

  return textIsVertical;
}

- (CGPoint)p_unscaledScrollPoint
{
  target = [(CRLWPiOSTextCaretDragTracker *)self target];
  interactiveCanvasController = [target interactiveCanvasController];
  [(CRLWPiOSTextCaretDragTracker *)self magnificationPoint];
  [interactiveCanvasController convertBoundsToUnscaledPoint:?];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)p_naturalPointFromUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  target = [(CRLWPiOSTextCaretDragTracker *)self target];
  interactiveCanvasController = [target interactiveCanvasController];
  [interactiveCanvasController convertUnscaledToBoundsPoint:{x, y}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (double)p_smoothedVelocity
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  recentVelocityQueue = [(CRLWPiOSTextCaretDragTracker *)self recentVelocityQueue];
  v4 = [recentVelocityQueue countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(recentVelocityQueue);
        }

        [*(*(&v14 + 1) + 8 * i) crl_CGFloatValue];
        v7 = v7 + v9;
      }

      v5 = [recentVelocityQueue countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  recentVelocityQueue2 = [(CRLWPiOSTextCaretDragTracker *)self recentVelocityQueue];
  if ([recentVelocityQueue2 count])
  {
    recentVelocityQueue3 = [(CRLWPiOSTextCaretDragTracker *)self recentVelocityQueue];
    v12 = [recentVelocityQueue3 count];
  }

  else
  {
    v12 = 1.0;
  }

  return v7 / v12;
}

- (CGPoint)p_selectionPointFromPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(CRLWPiOSTextCaretDragTracker *)self p_trackingOffset];
  v6 = y - v5;
  v7 = round(x);
  v8 = round(v6);
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)p_unscaledSelectionPoint
{
  [(CRLWPiOSTextCaretDragTracker *)self magnificationPoint];
  [(CRLWPiOSTextCaretDragTracker *)self p_selectionPointFromPoint:?];
  v4 = v3;
  v6 = v5;
  target = [(CRLWPiOSTextCaretDragTracker *)self target];
  interactiveCanvasController = [target interactiveCanvasController];
  [interactiveCanvasController convertBoundsToUnscaledPoint:{v4, v6}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (BOOL)p_shouldSnapToSelection
{
  [(CRLWPiOSTextCaretDragTracker *)self magnificationPoint];
  [(CRLWPiOSTextCaretDragTracker *)self p_selectionPointFromPoint:?];
  v4 = v3;
  v6 = v5;
  result = 0;
  if (![(CRLWPiOSTextCaretDragTracker *)self autoScrollIsActive]&& ![(CRLWPiOSTextCaretDragTracker *)self isAnimatingPickup])
  {
    [(CRLWPiOSTextCaretDragTracker *)self p_smoothedVelocity];
    if (v7 < 180.0)
    {
      [(CRLWPiOSTextCaretDragTracker *)self p_scaledCaretRectCenter];
      if (sub_100120090(v8, v9, v4, v6) < 20.0)
      {
        return 1;
      }
    }
  }

  return result;
}

- (BOOL)p_shouldSuppressAnimation
{
  if ([(CRLWPiOSTextCaretDragTracker *)self cursorIsFloating]|| [(CRLWPiOSTextCaretDragTracker *)self autoScrollIsActive])
  {
    return 1;
  }

  return [(CRLWPiOSTextCaretDragTracker *)self isAnimatingPickup];
}

- (double)p_trackingOffset
{
  [(CRLWPiOSTextCaretDragTracker *)self offset];
  v4 = v3;
  if ([(CRLWPiOSTextCaretDragTracker *)self pointDidLeaveOriginalLine])
  {
    p_isVerticalTextLayout = [(CRLWPiOSTextCaretDragTracker *)self p_isVerticalTextLayout];
    [(CRLWPiOSTextCaretDragTracker *)self p_clampedScaledCaretSize];
    if (p_isVerticalTextLayout)
    {
      v8 = v6 * 0.5;
    }

    else
    {
      v8 = v7 * 0.5;
    }

    return v8 + 16.0;
  }

  return v4;
}

- (CGPoint)p_scaledCaretRectCenter
{
  [(CRLWPiOSTextCaretDragTracker *)self p_scaledCaretRect];

  v6 = sub_100120414(v2, v3, v4, v5);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGRect)p_unscaledCaretRect
{
  target = [(CRLWPiOSTextCaretDragTracker *)self target];
  [(CRLWPiOSTextCaretDragTracker *)self naturalCaretRect];
  [target convertNaturalRectToUnscaledCanvas:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)p_scaledCaretRect
{
  target = [(CRLWPiOSTextCaretDragTracker *)self target];
  interactiveCanvasController = [target interactiveCanvasController];
  [(CRLWPiOSTextCaretDragTracker *)self p_unscaledCaretRect];
  [interactiveCanvasController convertUnscaledToBoundsRect:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGSize)p_clampedScaledCaretSize
{
  p_isVerticalTextLayout = [(CRLWPiOSTextCaretDragTracker *)self p_isVerticalTextLayout];
  [(CRLWPiOSTextCaretDragTracker *)self p_scaledCaretRect];
  v5 = v4;
  v6 = fmaxf(v5, 48.0);
  v8 = v7;
  v9 = fmaxf(v8, 48.0);
  if (p_isVerticalTextLayout)
  {
    v6 = 2.0;
  }

  else
  {
    v9 = 2.0;
  }

  result.height = v6;
  result.width = v9;
  return result;
}

- (void)p_removeFromView
{
  [(CRLWPiOSTextCaretDragTracker *)self setTarget:0];

  [(CRLWPiOSTextCaretDragTracker *)self removeFromSuperview];
}

- (void)p_updateFrameAndOffset
{
  [(CRLWPiOSTextCaretDragTracker *)self setNeedsLayout];
  [(CRLWPiOSTextCaretDragTracker *)self setNeedsDisplay];
  [(CRLWPiOSTextCaretDragTracker *)self p_clampedScaledCaretSize];
  v4 = v3;
  v6 = v5;
  [(CRLWPiOSTextCaretDragTracker *)self center];
  v8 = v7;
  v10 = v9;
  if ([(CRLWPiOSTextCaretDragTracker *)self p_shouldSnapToSelection])
  {
    [(CRLWPiOSTextCaretDragTracker *)self setCursorIsFloating:0];
    [(CRLWPiOSTextCaretDragTracker *)self p_scaledCaretRectCenter];
  }

  else
  {
    [(CRLWPiOSTextCaretDragTracker *)self setCursorIsFloating:1];
    [(CRLWPiOSTextCaretDragTracker *)self magnificationPoint];
    v14 = v13;
    v16 = v15;
    if (!sub_100120888(v13, v15))
    {
      goto LABEL_6;
    }

    [(CRLWPiOSTextCaretDragTracker *)self p_selectionPointFromPoint:v14, v16];
  }

  v8 = v11;
  v10 = v12;
LABEL_6:
  if ([(CRLWPiOSTextCaretDragTracker *)self p_shouldSuppressAnimation])
  {
    [(CRLWPiOSTextCaretDragTracker *)self setCenter:v8, v10];
    v19.origin.x = sub_10011ECB4();
    v20 = CGRectIntegral(v19);

    [(CRLWPiOSTextCaretDragTracker *)self setBounds:v20.origin.x, v20.origin.y, v20.size.width, v20.size.height];
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10010DCA4;
    v17[3] = &unk_10183D298;
    v17[4] = self;
    *&v17[5] = v8;
    *&v17[6] = v10;
    v17[7] = v4;
    v17[8] = v6;
    [UIView animateWithDuration:0x20000 delay:v17 options:0 animations:0.08 completion:0.0];
  }
}

- (void)p_zoomUpAnimation
{
  [(CRLWPiOSTextCaretDragTracker *)self setIsAnimatingPickup:1];
  [(CRLWPiOSTextCaretDragTracker *)self p_updateFrameAndOffset];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010DDCC;
  v4[3] = &unk_10183AB38;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10010DE30;
  v3[3] = &unk_10183D270;
  v3[4] = self;
  [UIView animateWithDuration:v4 animations:v3 completion:0.15];
}

- (CGAffineTransform)p_caretAffineTransformWithScaleFactor:(SEL)factor
{
  [(CRLWPiOSTextCaretDragTracker *)self p_clampedScaledCaretSize];
  v8 = v7;
  v10 = v9;
  if (![(CRLWPiOSTextCaretDragTracker *)self p_isVerticalTextLayout])
  {
    v8 = v10;
  }

  p_isVerticalTextLayout = [(CRLWPiOSTextCaretDragTracker *)self p_isVerticalTextLayout];
  [(CRLWPiOSTextCaretDragTracker *)self bounds];
  if (p_isVerticalTextLayout)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v15 = v8 * a4 / v14;
  if ([(CRLWPiOSTextCaretDragTracker *)self p_isVerticalTextLayout])
  {
    v16 = 1.0;
    v17 = retstr;
    v18 = v15;
  }

  else
  {
    v18 = 1.0;
    v17 = retstr;
    v16 = v15;
  }

  return CGAffineTransformMakeScale(v17, v18, v16);
}

- (void)p_setBoundsAndCenterToCaretRect
{
  [(CRLWPiOSTextCaretDragTracker *)self p_scaledCaretRect];
  if (v5 == 0.0)
  {
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
    [(CRLWPiOSTextCaretDragTracker *)self setBounds:sub_10011ECB4()];
    v11 = sub_100120414(v7, v8, v9, v10);

    [(CRLWPiOSTextCaretDragTracker *)self setCenter:v11];
  }

  else
  {
    v12 = *&CGAffineTransformIdentity.c;
    v13[0] = *&CGAffineTransformIdentity.a;
    v13[1] = v12;
    v13[2] = *&CGAffineTransformIdentity.tx;
    [(CRLWPiOSTextCaretDragTracker *)self setTransform:v13];
  }
}

- (void)p_zoomDownAnimation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010E334;
  v4[3] = &unk_10183AB38;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10010E33C;
  v3[3] = &unk_10183D270;
  v3[4] = self;
  [UIView animateWithDuration:v4 animations:v3 completion:0.22];
  [(CRLWPiOSTextCaretDragTracker *)self setTarget:0];
}

- (void)beginMagnifyingTarget:(id)target magnificationPoint:(CGPoint)point offset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = point.y;
  x = point.x;
  targetCopy = target;
  [(CRLWPiOSTextCaretDragTracker *)self setTarget:targetCopy];
  [(CRLWPiOSTextCaretDragTracker *)self p_updateNaturalCaretRectFromTarget:targetCopy];
  target = [(CRLWPiOSTextCaretDragTracker *)self target];
  interactiveCanvasController = [target interactiveCanvasController];

  v12 = objc_opt_class();
  v13 = sub_100014370(v12, interactiveCanvasController);
  if (v13)
  {
    v14 = objc_opt_class();
    layerHost = [v13 layerHost];
    v16 = sub_100014370(v14, layerHost);

    canvasView = [v16 canvasView];
    [(CRLWPiOSTextCaretDragTracker *)self setHostView:canvasView];
  }

  [(CRLWPiOSTextCaretDragTracker *)self p_scaledCaretRect];
  [(CRLWPiOSTextCaretDragTracker *)self setOffset:0.0, y - CGRectGetMidY(v26)];
  [(CRLWPiOSTextCaretDragTracker *)self setMagnificationPoint:x, y];
  v18 = objc_opt_class();
  interactiveCanvasController2 = [targetCopy interactiveCanvasController];
  delegate = [interactiveCanvasController2 delegate];
  v21 = sub_100014370(v18, delegate);

  v22 = -[CRLWPiOSTextCaretDragTrackerController initWithPreferredStatusBarStyle:]([CRLWPiOSTextCaretDragTrackerController alloc], "initWithPreferredStatusBarStyle:", [v21 preferredStatusBarStyle]);
  [(CRLWPiOSTextCaretDragTrackerController *)v22 setView:self];
  hostView = [(CRLWPiOSTextCaretDragTracker *)self hostView];
  [hostView addSubview:self];

  if (animatedCopy)
  {
    [(CRLWPiOSTextCaretDragTracker *)self p_zoomUpAnimation];
  }
}

- (void)continueMagnifyingWithMagnificationPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(CRLWPiOSTextCaretDragTracker *)self setMagnificationPoint:?];
  if (sub_100120888(x, y))
  {
    [(CRLWPiOSTextCaretDragTracker *)self p_updateFrameAndOffset];
    delegate = [(CRLWPiOSTextCaretDragTracker *)self delegate];
    [(CRLWPiOSTextCaretDragTracker *)self p_unscaledSelectionPoint];
    [delegate setSelectionFromUnscaledPoint:?];

    target = [(CRLWPiOSTextCaretDragTracker *)self target];
    [(CRLWPiOSTextCaretDragTracker *)self p_updateNaturalCaretRectFromTarget:target];

    target2 = [(CRLWPiOSTextCaretDragTracker *)self target];
    interactiveCanvasController = [target2 interactiveCanvasController];
    layerHost = [interactiveCanvasController layerHost];
    canvasView = [layerHost canvasView];
    enclosingScrollView = [canvasView enclosingScrollView];
    isScrollEnabled = [enclosingScrollView isScrollEnabled];

    if (isScrollEnabled)
    {
      [(CRLWPiOSTextCaretDragTracker *)self p_unscaledScrollPoint];

      [CRLCanvasAutoscroll startAutoscroll:self unscaledPoint:?];
    }
  }
}

- (void)stopMagnifying:(BOOL)magnifying
{
  if (magnifying)
  {
    [(CRLWPiOSTextCaretDragTracker *)self p_zoomDownAnimation];
  }

  else
  {
    [(CRLWPiOSTextCaretDragTracker *)self p_removeFromView];
  }

  self->_magnificationPoint = xmmword_1014629E0;
  autoscroll = [(CRLWPiOSTextCaretDragTracker *)self autoscroll];
  [autoscroll invalidate];

  [(CRLWPiOSTextCaretDragTracker *)self setAutoscroll:0];
}

- (CGPoint)animationPoint
{
  x = self->_magnificationPoint.x;
  y = self->_magnificationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (double)unscaledStartAutoscrollThreshold
{
  scrollingDirection = [(CRLWPiOSTextCaretDragTracker *)self scrollingDirection];
  result = 45.0;
  if (scrollingDirection == 1)
  {
    return 100.0;
  }

  return result;
}

- (CRLInteractiveCanvasController)icc
{
  target = [(CRLWPiOSTextCaretDragTracker *)self target];
  interactiveCanvasController = [target interactiveCanvasController];

  return interactiveCanvasController;
}

- (void)updateAfterAutoscroll:(id)autoscroll
{
  if (![(CRLWPiOSTextCaretDragTracker *)self autoScrollIsActive])
  {
    [(CRLWPiOSTextCaretDragTracker *)self setAutoScrollIsActive:1];
  }

  autoscroll = [(CRLWPiOSTextCaretDragTracker *)self autoscroll];
  [autoscroll unscaledAutoscrollPoint];
  v6 = v5;
  v8 = v7;

  target = [(CRLWPiOSTextCaretDragTracker *)self target];
  interactiveCanvasController = [target interactiveCanvasController];
  [interactiveCanvasController contentOffset];
  v12 = v11;
  v14 = v13;

  [(CRLWPiOSTextCaretDragTracker *)self startingUnscaledAutoscrollPoint];
  if (!sub_10011ED38(v6, v8, v15, v16))
  {
    [(CRLWPiOSTextCaretDragTracker *)self setStartingUnscaledAutoscrollPoint:v6, v8];
    [(CRLWPiOSTextCaretDragTracker *)self setStartingiccUnscaledContentOffset:v12, v14];
  }

  [(CRLWPiOSTextCaretDragTracker *)self startingiccUnscaledContentOffset];
  v18 = sub_10011F31C(v12, v14, v17);
  [(CRLWPiOSTextCaretDragTracker *)self p_naturalPointFromUnscaledPoint:sub_10011F334(v6, v8, v18)];
  self->_magnificationPoint.x = v19;
  self->_magnificationPoint.y = v20;

  [(CRLWPiOSTextCaretDragTracker *)self p_updateFrameAndOffset];
}

- (unint64_t)maximumAutoscrollDeltaForCount:(unint64_t)count
{
  if (count > 0x2C)
  {
    if (count > 0x31)
    {
      if (count > 0x40)
      {
        if (count > 0x63)
        {
          if (count > 0x77)
          {
            v3 = 0.35;
          }

          else
          {
            v3 = 0.3;
          }
        }

        else
        {
          v3 = 0.22;
        }
      }

      else
      {
        v3 = 0.15;
      }
    }

    else
    {
      v3 = 0.1;
    }
  }

  else
  {
    v3 = 0.07;
  }

  return (0x30uLL * v3);
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)naturalCaretRect
{
  x = self->_naturalCaretRect.origin.x;
  y = self->_naturalCaretRect.origin.y;
  width = self->_naturalCaretRect.size.width;
  height = self->_naturalCaretRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CRLWPCaretDragMagnifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)startingUnscaledAutoscrollPoint
{
  x = self->_startingUnscaledAutoscrollPoint.x;
  y = self->_startingUnscaledAutoscrollPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)startingiccUnscaledContentOffset
{
  x = self->_startingiccUnscaledContentOffset.x;
  y = self->_startingiccUnscaledContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end