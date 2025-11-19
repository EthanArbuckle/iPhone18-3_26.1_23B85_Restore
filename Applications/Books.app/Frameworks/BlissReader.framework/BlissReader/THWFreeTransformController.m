@interface THWFreeTransformController
+ (BOOL)isFreeTransformInProgress;
- (BOOL)freeTransformGestureRecognizerShouldAllowPinchDown:(id)a3;
- (BOOL)freeTransformGestureRecognizerShouldAllowPinchUp:(id)a3;
- (BOOL)freeTransformGestureRecognizerShouldDelayRecognizeUntilScaleChange:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)p_wantsCurtainFadeOut;
- (CALayer)freeTransformLayer;
- (CALayer)superLayerForWrapper;
- (CALayer)wrapperLayer;
- (CGAffineTransform)currentTransform;
- (CGAffineTransform)originalShadowTransform;
- (CGPoint)lastDragCenter;
- (CGPoint)lastVelocity;
- (CGRect)completionTargetRect;
- (CGRect)originalTargetLayerFrame;
- (THWFreeTransformController)init;
- (THWFreeTransformController)initWithSharedGestureRecognizer:(BOOL)a3;
- (double)p_clampedScaleWithOriginalScale:(double)result originalFrame:(CGRect)a4 targetFrame:(CGRect)a5;
- (id)p_shadowFadeInAnimation:(id *)a3;
- (id)p_shadowFadeOutAnimation:(double)a3;
- (void)appendShadowTransform:(CGAffineTransform *)a3;
- (void)cancelTransform;
- (void)clearGestureRecognizer;
- (void)dealloc;
- (void)p_addOvershootAnimationWithOriginalFrame:(CGRect)a3 originalTransform:(CGAffineTransform *)a4 targetFrame:(CGRect)a5 targetTransform:(CGAffineTransform *)a6 completion:(id)a7;
- (void)p_cleanupExtraLayers;
- (void)p_fadeOutCurtain;
- (void)p_setupCurtain;
- (void)p_setupForTransformWithGesture:(id)a3;
- (void)p_setupShadow;
- (void)p_updateUnmovingParentView:(id)a3;
- (void)recreateGestureRecognizerOnView:(id)a3;
- (void)setTargetLayer:(id)a3;
- (void)transformGRChanged:(id)a3;
- (void)updateUnmovingParentView;
@end

@implementation THWFreeTransformController

- (CALayer)wrapperLayer
{
  result = self->mWrapperView;
  if (result)
  {
    return [(CALayer *)result layer];
  }

  return result;
}

- (CALayer)superLayerForWrapper
{
  v2 = [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] unmovingParentViewForFreeTransformController:self];

  return [v2 layer];
}

+ (BOOL)isFreeTransformInProgress
{
  v2 = dword_5677A0;
  if (dword_5677A0 < 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v2 = dword_5677A0;
  }

  return v2 > 0;
}

- (THWFreeTransformController)init
{
  v8.receiver = self;
  v8.super_class = THWFreeTransformController;
  v2 = [(THWFreeTransformController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(THWFreeTransformController *)v2 setSmoothEdges:1];
    v4 = *&CGAffineTransformIdentity.a;
    v5 = *&CGAffineTransformIdentity.c;
    *&v3->mOriginalShadowTransform.a = *&CGAffineTransformIdentity.a;
    *&v3->mOriginalShadowTransform.c = v5;
    v6 = *&CGAffineTransformIdentity.tx;
    *&v3->mOriginalShadowTransform.tx = v6;
    *&v3->mCurrentTransform.a = v4;
    *&v3->mCurrentTransform.c = v5;
    *&v3->mCurrentTransform.tx = v6;
  }

  return v3;
}

- (THWFreeTransformController)initWithSharedGestureRecognizer:(BOOL)a3
{
  result = [(THWFreeTransformController *)self init];
  if (result)
  {
    result->mSharedTransformGR = a3;
  }

  return result;
}

- (void)dealloc
{
  [(THWFreeTransformController *)self setWrapperView:0];

  self->mTransformGR = 0;
  self->mTargetLayer = 0;
  [(THWFreeTransformController *)self setShadowLayer:0];
  [(THWFreeTransformController *)self setCurtainLayer:0];
  [(THWFreeTransformController *)self setGestureRecognizerDelegate:0];
  [(THWFreeTransformController *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = THWFreeTransformController;
  [(THWFreeTransformController *)&v3 dealloc];
}

- (void)cancelTransform
{
  if ([(THWFreeTransformController *)self isFreeTransformInProgress])
  {
    mTransformGR = self->mTransformGR;

    [(THWFreeTransformGestureRecognizer *)mTransformGR cancel];
  }
}

- (void)setTargetLayer:(id)a3
{
  if ([(THWFreeTransformController *)self targetLayer]!= a3)
  {

    self->mTargetLayer = a3;
  }
}

- (CALayer)freeTransformLayer
{
  result = [(THWFreeTransformController *)self wrapperLayer];
  if (!result)
  {
    return self->mTargetLayer;
  }

  return result;
}

- (void)p_cleanupExtraLayers
{
  [(THWFreeTransformController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] freeTransformControllerShouldMoveFreeTransformViewAboveStatusBar:self])
  {
    objc_opt_class();
    [(CALayer *)[(THWFreeTransformController *)self freeTransformLayer] delegate];
    v3 = TSUDynamicCast();
    [objc_msgSend(v3 "window")];
  }

  if ([(THWFreeTransformController *)self wrapperLayer])
  {
    if (self->mTransformScale != 0.0)
    {
      v4 = [(THWFreeTransformController *)self targetLayer];
      v5 = *&CGAffineTransformIdentity.c;
      v6[0] = *&CGAffineTransformIdentity.a;
      v6[1] = v5;
      v6[2] = *&CGAffineTransformIdentity.tx;
      [(CALayer *)v4 setAffineTransform:v6];
    }

    [(TSULayerSaveRestore *)[(THWFreeTransformController *)self layerSaveRestore] restoreLayer:[(THWFreeTransformController *)self targetLayer]];
    [(CALayer *)[(THWFreeTransformController *)self wrapperLayer] removeFromSuperlayer];
    [(THWFreeTransformController *)self setWrapperView:0];
  }

  else
  {
    [(TSULayerSaveRestore *)[(THWFreeTransformController *)self layerSaveRestore] restoreLayer:[(THWFreeTransformController *)self targetLayer]];
  }

  [(CALayer *)[(THWFreeTransformController *)self shadowLayer] removeFromSuperlayer];
  [(THWFreeTransformController *)self setShadowLayer:0];
  [(CALayer *)[(THWFreeTransformController *)self curtainLayer] removeFromSuperlayer];
  [(THWFreeTransformController *)self setCurtainLayer:0];
}

- (void)p_setupCurtain
{
  if (![(THWFreeTransformController *)self curtainLayer])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3 = [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] curtainColorForFreeTransformController:self];
  if (!v3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] curtainSizeForFreeTransformController:self];
  if (v5 == CGSizeZero.width && v4 == CGSizeZero.height)
  {
    [[(CALayer *)[(THWFreeTransformController *)self freeTransformLayer] superlayer] frame];
  }

  if ([(CALayer *)[(THWFreeTransformController *)self curtainLayer] superlayer])
  {
    [[(CALayer *)[(THWFreeTransformController *)self curtainLayer] superlayer] position];
    TSDRectWithCenterAndSize();
    [(CALayer *)[(THWFreeTransformController *)self curtainLayer] setFrame:v7, v8, v9, v10];
    v11 = [v3 CGColor];
    v12 = [(THWFreeTransformController *)self curtainLayer];

    [(CALayer *)v12 setBackgroundColor:v11];
  }
}

- (BOOL)p_wantsCurtainFadeOut
{
  v3 = [(THWFreeTransformController *)self delegate];

  return [(THWFreeTransformControllerDelegate *)v3 freeTransformControllerWantsCurtainFadeOut:self];
}

- (void)p_fadeOutCurtain
{
  [(THWFreeTransformController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] freeTransformControllerWillFadeOutCurtain:self];
  }

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v3 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  if (![(THWFreeTransformController *)self curtainLayer])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THWFreeTransformController *)self curtainLayer])
  {
    [(CALayer *)[(THWFreeTransformController *)self curtainLayer] frame];
    if (v5 == CGSizeZero.width && v4 == CGSizeZero.height)
    {
      [(THWFreeTransformController *)self p_setupCurtain];
    }
  }

  [(CABasicAnimation *)v3 setFromValue:[NSNumber numberWithDouble:1.0]];
  [(CABasicAnimation *)v3 setToValue:[NSNumber numberWithDouble:0.0]];
  [(CABasicAnimation *)v3 setDuration:0.25];
  [(CABasicAnimation *)v3 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear]];
  [(CABasicAnimation *)v3 setFillMode:kCAFillModeForwards];
  [(CABasicAnimation *)v3 setRemovedOnCompletion:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6CDD0;
  v7[3] = &unk_45AE00;
  v7[4] = self;
  [CATransaction setCompletionBlock:v7];
  [(CALayer *)[(THWFreeTransformController *)self curtainLayer] addAnimation:v3 forKey:@"THWFreeTransformControllerCurtainFadeOutKey"];
  +[CATransaction commit];
  self->mStartedCurtainFadeOut = 1;
}

- (CGRect)originalTargetLayerFrame
{
  x = self->mOriginalTargetLayerFrame.origin.x;
  y = self->mOriginalTargetLayerFrame.origin.y;
  width = self->mOriginalTargetLayerFrame.size.width;
  height = self->mOriginalTargetLayerFrame.size.height;
  [(THWFreeTransformController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] freeTransformControllerOriginalTargetLayerFrame:self];
    x = v7;
    y = v8;
    width = v9;
    height = v10;
  }

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)appendShadowTransform:(CGAffineTransform *)a3
{
  v4 = *&self->mOriginalShadowTransform.c;
  *&t1.a = *&self->mOriginalShadowTransform.a;
  *&t1.c = v4;
  *&t1.tx = *&self->mOriginalShadowTransform.tx;
  v5 = *&a3->c;
  *&t2.a = *&a3->a;
  *&t2.c = v5;
  *&t2.tx = *&a3->tx;
  CGAffineTransformConcat(&v11, &t1, &t2);
  v6 = *&v11.c;
  *&self->mOriginalShadowTransform.a = *&v11.a;
  *&self->mOriginalShadowTransform.c = v6;
  *&self->mOriginalShadowTransform.tx = *&v11.tx;
  mOriginalShadowTransform = self->mOriginalShadowTransform;
  v7 = [(THWFreeTransformController *)self shadowLayer];
  v11 = mOriginalShadowTransform;
  [(CALayer *)v7 setAffineTransform:&v11];
}

- (id)p_shadowFadeInAnimation:(id *)a3
{
  v4 = v3;
  v5 = [CABasicAnimation animationWithKeyPath:@"shadowOpacity"];
  [(CABasicAnimation *)v5 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
  [(CABasicAnimation *)v5 setDuration:0.150000006];
  [(CABasicAnimation *)v5 setFromValue:[NSNumber numberWithFloat:0.0]];
  *&v6 = v4;
  [(CABasicAnimation *)v5 setToValue:[NSNumber numberWithFloat:v6]];
  [(CABasicAnimation *)v5 setRemovedOnCompletion:0];
  return v5;
}

- (id)p_shadowFadeOutAnimation:(double)a3
{
  v4 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [(CABasicAnimation *)v4 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
  [(CABasicAnimation *)v4 setDuration:0.150000006];
  *&v5 = a3;
  [(CABasicAnimation *)v4 setFromValue:[NSNumber numberWithFloat:v5]];
  [(CABasicAnimation *)v4 setToValue:[NSNumber numberWithFloat:0.0]];
  [(CABasicAnimation *)v4 setFillMode:kCAFillModeForwards];
  [(CABasicAnimation *)v4 setRemovedOnCompletion:0];
  return v4;
}

- (void)p_setupShadow
{
  v3 = [(THWFreeTransformController *)self targetLayer];
  [(CALayer *)v3 shadowOpacity];
  if (v4 == 0.0)
  {
    [(THWFreeTransformController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] shadowPropertiesForFreeTransformController:self defaults:0.667, 0.0, 10.0, 15.0];
      v6 = v15;
      v54 = v16;
      v10 = 0;
      v9 = 0;
      [(CALayer *)v3 bounds];
    }

    else
    {
      v10 = 0;
      v9 = 0;
      v54 = 15.0;
      v6 = 0.667;
      [(CALayer *)v3 bounds];
    }
  }

  else
  {
    [(CALayer *)v3 shadowOpacity];
    v6 = v5;
    [(CALayer *)v3 shadowOffset];
    v53 = v7;
    [(CALayer *)v3 shadowRadius];
    v54 = v8;
    v9 = [(CALayer *)v3 shadowColor];
    v10 = [(CALayer *)v3 shadowPath]!= 0;
    [(CALayer *)v3 bounds];
  }

  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  [(THWFreeTransformController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] shadowBoundsForFreeTransformController:self];
    v18 = v22;
    v19 = v23;
    v20 = v24;
    v21 = v25;
  }

  TSDShrinkSizeToFitInSize();
  v27 = v26;
  v58.origin.x = v18;
  v58.origin.y = v19;
  v58.size.width = v20;
  v58.size.height = v21;
  v28 = CGRectGetWidth(v58) / v27;
  self->mShadowScale = v28;
  TSDMultiplySizeScalar();
  v30 = v29;
  v32 = v31;
  v33 = objc_alloc_init(CALayer);
  [(CALayer *)v3 anchorPoint];
  [v33 setAnchorPoint:?];
  TSDRectWithSize();
  [v33 setBounds:?];
  [(CALayer *)v3 position];
  [v33 setPosition:?];
  if (v3)
  {
    [(CALayer *)v3 transform];
  }

  else
  {
    memset(&transform[1], 0, sizeof(CATransform3D));
  }

  transform[0] = transform[1];
  v34 = v54 / v28;
  [v33 setTransform:transform];
  if (!v9)
  {
    v9 = [+[TSUColor blackColor](TSUColor "blackColor")];
  }

  [v33 setShadowColor:v9];
  *&v35 = v6;
  [v33 setShadowOpacity:v35];
  [v33 setShadowOffset:{v30, v32}];
  [v33 setShadowRadius:v34];
  if (v10)
  {
    memset(transform, 0, 48);
    CGAffineTransformMakeScale(transform, 1.0 / self->mShadowScale, 1.0 / self->mShadowScale);
    CopyByTransformingPath = CGPathCreateCopyByTransformingPath([(CALayer *)v3 shadowPath], transform);
    if (CopyByTransformingPath)
    {
      v37 = CopyByTransformingPath;
      [v33 setShadowPath:CopyByTransformingPath];
      CGPathRelease(v37);
    }
  }

  else
  {
    [(THWFreeTransformController *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] freeTransformControllerShouldUsedTracedShadowPath:self])
    {
      v38 = [(CALayer *)v3 tracedShadowPathWithScale:1.0 / self->mShadowScale];
    }

    else
    {
      [(THWFreeTransformController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v39 = [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] shadowPathForFreeTransformController:self];
        CGAffineTransformMakeScale(transform, 1.0 / self->mShadowScale, 1.0 / self->mShadowScale);
        [v39 transformUsingAffineTransform:transform];
        v40 = v39;
      }

      else
      {
        [v33 bounds];
        v40 = [TSDBezierPath bezierPathWithRect:?];
      }

      v38 = [(TSDBezierPath *)v40 CGPath];
    }

    [v33 setShadowPath:v38];
  }

  CGAffineTransformMakeScale(&t1, self->mShadowScale, self->mShadowScale);
  if (v33)
  {
    [v33 transform];
  }

  else
  {
    memset(transform, 0, 128);
  }

  CATransform3DGetAffineTransform(&t2, transform);
  CGAffineTransformConcat(transform, &t1, &t2);
  v41 = *&transform[0].m13;
  *&self->mOriginalShadowTransform.a = *&transform[0].m11;
  *&self->mOriginalShadowTransform.c = v41;
  *&self->mOriginalShadowTransform.tx = *&transform[0].m21;
  v42 = *&self->mOriginalShadowTransform.c;
  *&transform[0].m11 = *&self->mOriginalShadowTransform.a;
  *&transform[0].m13 = v42;
  *&transform[0].m21 = *&self->mOriginalShadowTransform.tx;
  [v33 setAffineTransform:transform];
  [[(CALayer *)v3 superlayer] insertSublayer:v33 below:v3];
  [v33 setName:@"THWFreeTransformShadowLayer"];
  [(THWFreeTransformController *)self setShadowLayer:v33];

  [(CALayer *)v3 setShadowOpacity:0.0];
  v43 = [(THWFreeTransformController *)self p_shadowFadeInAnimation:v6, v30, v32, v34];
  [v33 addAnimation:v43 forKey:kFadeInAnimationName];
  [(THWFreeTransformController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v44 = [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] freeTransformControllerStyledRep:self];
    v45 = [v44 shadowLayer];
    if (v45)
    {
      v46 = v45;
      [v45 opacity];
      v48 = [(THWFreeTransformController *)self p_shadowFadeOutAnimation:v47];
      [v46 addAnimation:v48 forKey:kTHWFreeTransformControllerFadeOutAnimationName];
    }

    v49 = [v44 reflectionLayer];
    if (v49)
    {
      v50 = v49;
      [v49 opacity];
      v52 = [(THWFreeTransformController *)self p_shadowFadeOutAnimation:v51];
      [v50 addAnimation:v52 forKey:kTHWFreeTransformControllerFadeOutAnimationName];
    }
  }
}

- (void)p_addOvershootAnimationWithOriginalFrame:(CGRect)a3 originalTransform:(CGAffineTransform *)a4 targetFrame:(CGRect)a5 targetTransform:(CGAffineTransform *)a6 completion:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  v72 = a3.size.width;
  v73 = a3.size.height;
  v13 = 1055286886;
  LODWORD(a3.size.height) = 1.0;
  LODWORD(a3.size.width) = 1057803469;
  v75 = [CAMediaTimingFunction functionWithControlPoints:a3.origin.x];
  LODWORD(v14) = 0.25;
  LODWORD(v15) = 0.25;
  LODWORD(v16) = 1.0;
  LODWORD(v17) = 1057803469;
  v74 = [CAMediaTimingFunction functionWithControlPoints:v14];
  TSDCenterOfRect();
  v18 = width;
  v19 = height;
  TSDCenterOfRect();
  TSDSubtractPoints();
  v21 = v20;
  v23 = v22;
  v24 = a4->a;
  v25 = a4->b;
  c = a4->c;
  d = a4->d;
  TSDMultiplyPointScalar();
  TSDAddPoints();
  v28 = v18 / v72;
  v29 = v19 / v73;
  v30 = *&CATransform3DIdentity.m33;
  *&v80.m31 = *&CATransform3DIdentity.m31;
  *&v80.m33 = v30;
  v31 = *&CATransform3DIdentity.m43;
  *&v80.m41 = *&CATransform3DIdentity.m41;
  *&v80.m43 = v31;
  v32 = *&CATransform3DIdentity.m13;
  *&v80.m11 = *&CATransform3DIdentity.m11;
  *&v80.m13 = v32;
  v33 = *&CATransform3DIdentity.m23;
  *&v80.m21 = *&CATransform3DIdentity.m21;
  *&v80.m23 = v33;
  *&v79.m31 = *&v80.m31;
  *&v79.m33 = v30;
  *&v79.m41 = *&v80.m41;
  *&v79.m43 = v31;
  *&v79.m11 = *&v80.m11;
  *&v79.m13 = v32;
  v34 = (v28 + v29) * 0.5 * (1.0 / ((fabs(v24 + c) + fabs(v25 + d)) * 0.5));
  *&v79.m21 = *&v80.m21;
  *&v79.m23 = v33;
  CATransform3DTranslate(&v80, &v79, v21, v23, 0.0);
  if (v28 >= v29)
  {
    v35 = v29;
  }

  else
  {
    v35 = v28;
  }

  b = v80;
  CATransform3DScale(&v79, &b, v35, v35, 1.0);
  v80 = v79;
  v36 = *&a6->c;
  *&v79.m11 = *&a6->a;
  *&v79.m13 = v36;
  *&v79.m21 = *&a6->tx;
  CATransform3DMakeAffineTransform(&b, &v79);
  a = v80;
  CATransform3DConcat(&v79, &a, &b);
  v80 = v79;
  [(THWFreeTransformController *)self lastVelocity];
  TSDMultiplyPointScalar();
  v38 = v37;
  v40 = v39;
  v41 = *&a4->c;
  *&v79.m11 = *&a4->a;
  *&v79.m13 = v41;
  *&v79.m21 = *&a4->tx;
  [(THWFreeTransformController *)self p_rotationAngleFromTransform:&v79];
  v43 = v42;
  v44 = *&a6->c;
  *&v79.m11 = *&a6->a;
  *&v79.m13 = v44;
  *&v79.m21 = *&a6->tx;
  [(THWFreeTransformController *)self p_rotationAngleFromTransform:&v79];
  v46 = v43 - v45;
  v47 = 3.14059265 / vabdd_f64(v43, v45) + -1.0;
  if (v47 > 0.19)
  {
    v47 = 0.19;
  }

  v48 = v46 * v47;
  v49 = fmax((v34 + -1.0) * 0.12 + 1.0, 0.96);
  if (v49 <= 1.04)
  {
    v50 = v49;
  }

  else
  {
    v50 = 1.04;
  }

  TSDMultiplyPointScalar();
  v52 = v51;
  v54 = v53;
  v79 = v80;
  b = v80;
  CATransform3DScale(&v79, &b, v50, v50, 1.0);
  a = v79;
  CATransform3DRotate(&b, &a, v48, 0.0, 0.0, 1.0);
  v79 = b;
  a = b;
  CATransform3DTranslate(&b, &a, v52, v54, 0.0);
  v79 = b;
  [+[UIApplication sharedApplication](UIApplication beginIgnoringInteractionEvents];
  +[CATransaction begin];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_6DF44;
  v76[3] = &unk_45B8B0;
  v76[4] = a7;
  [CATransaction setCompletionBlock:v76];
  v55 = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation"];
  [(CAKeyframeAnimation *)v55 setValues:[NSArray arrayWithObjects:[NSValue valueWithCGSize:CGSizeZero.width, CGSizeZero.height], [NSValue valueWithCGSize:v38, v40], [NSValue valueWithCGSize:CGSizeZero.width, CGSizeZero.height], 0]];
  [(CAKeyframeAnimation *)v55 setTimingFunctions:[NSArray arrayWithObjects:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut], [CAMediaTimingFunction functionWithName:?], 0]];
  v56 = [NSNumber numberWithFloat:0.0];
  LODWORD(v57) = 1051361018;
  v58 = [NSNumber numberWithFloat:v57];
  LODWORD(v59) = 1.0;
  [(CAKeyframeAnimation *)v55 setKeyTimes:[NSArray arrayWithObjects:v56, v58, [NSNumber numberWithFloat:v59], 0]];
  [(CAKeyframeAnimation *)v55 setDuration:0.39];
  [(CAKeyframeAnimation *)v55 setFillMode:kCAFillModeForwards];
  [(CAKeyframeAnimation *)v55 setRemovedOnCompletion:0];
  v60 = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
  v61 = *&a4->c;
  *&a.m11 = *&a4->a;
  *&a.m13 = v61;
  *&a.m21 = *&a4->tx;
  CATransform3DMakeAffineTransform(&b, &a);
  v62 = [NSValue valueWithCATransform3D:&b];
  b = v79;
  v63 = [NSValue valueWithCATransform3D:&b];
  b = v80;
  [(CAKeyframeAnimation *)v60 setValues:[NSArray arrayWithObjects:v62, v63, [NSValue valueWithCATransform3D:&b], 0]];
  [(CAKeyframeAnimation *)v60 setTimingFunctions:[NSArray arrayWithObjects:v74, v75, 0]];
  v64 = [NSNumber numberWithFloat:0.0];
  LODWORD(v65) = 1057458056;
  v66 = [NSNumber numberWithFloat:v65];
  LODWORD(v67) = 1.0;
  [(CAKeyframeAnimation *)v60 setKeyTimes:[NSArray arrayWithObjects:v64, v66, [NSNumber numberWithFloat:v67], 0]];
  [(CAKeyframeAnimation *)v60 setDuration:0.51];
  [(CAKeyframeAnimation *)v60 setFillMode:kCAFillModeForwards];
  [(CAKeyframeAnimation *)v60 setRemovedOnCompletion:0];
  v68 = +[CAAnimationGroup animation];
  [v68 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v55, v60, 0)}];
  [v68 setDuration:0.51];
  [v68 setFillMode:kCAFillModeForwards];
  [v68 setRemovedOnCompletion:0];
  v69 = [(THWFreeTransformController *)self freeTransformLayer];
  [(CALayer *)v69 addAnimation:v68 forKey:kSnapToSizeAnimationName];
  [(THWFreeTransformController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] freeTransformControllerShouldFadeShadowOut:self])
  {
    v70 = [CABasicAnimation animationWithKeyPath:@"shadowOpacity"];
    [(CABasicAnimation *)v70 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [(CABasicAnimation *)v70 setDuration:0.27];
    [(CABasicAnimation *)v70 setToValue:[NSNumber numberWithFloat:0.0]];
    [(CABasicAnimation *)v70 setFillMode:kCAFillModeForwards];
    [(CABasicAnimation *)v70 setRemovedOnCompletion:0];
    v71 = [(THWFreeTransformController *)self shadowLayer];
    [(CALayer *)v71 addAnimation:v70 forKey:kTHWFreeTransformControllerFadeOutAnimationName];
  }

  +[CATransaction commit];
}

- (double)p_clampedScaleWithOriginalScale:(double)result originalFrame:(CGRect)a4 targetFrame:(CGRect)a5
{
  v5 = a5.size.height / a4.size.height;
  v6 = a5.size.width / a4.size.width < a5.size.height / a4.size.height;
  if (a5.size.width / a4.size.width >= a5.size.height / a4.size.height)
  {
    v7 = a5.size.height / a4.size.height;
  }

  else
  {
    v7 = a5.size.width / a4.size.width;
  }

  if (!v6)
  {
    v5 = a5.size.width / a4.size.width;
  }

  v8 = a5.size.width <= a4.size.width;
  if (a5.size.width <= a4.size.width)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = v7;
  }

  if (!v8)
  {
    v5 = 1.0;
  }

  if (v5 > result)
  {
    result = v5 * 0.667 + result * 0.333;
  }

  if (result > v9)
  {
    return v9 + (result - v9) * 0.333;
  }

  return result;
}

- (void)p_setupForTransformWithGesture:(id)a3
{
  if (self->mStartedFreeTransform)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v40 = self;
  self->mStartedFreeTransform = 1;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v4 = [+[UIApplication windows:a3]];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v45;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v44 + 1) + 8 * i);
        if (([v9 isUserInteractionEnabled] & 1) == 0)
        {
          [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        }

        [v9 setUserInteractionEnabled:0];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v6);
  }

  [+[UIWindow keyWindow](UIWindow "keyWindow")];
  ++dword_5677A0;
  [(THWFreeTransformController *)v40 setIsFreeTransformInProgress:1];
  [(THWFreeTransformController *)v40 setPassedThreshold:0];
  [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)v40 delegate] freeTransformControllerDidBegin:v40];
  if (![(THWFreeTransformController *)v40 layerSaveRestore])
  {
    [(THWFreeTransformController *)v40 setLayerSaveRestore:objc_alloc_init(TSULayerSaveRestore)];
  }

  [(TSULayerSaveRestore *)[(THWFreeTransformController *)v40 layerSaveRestore] saveLayer:[(THWFreeTransformController *)v40 targetLayer]];
  v10 = [(THWFreeTransformController *)v40 superLayerForWrapper];
  [(CALayer *)[(THWFreeTransformController *)v40 targetLayer] frame];
  TSDCenterOfRect();
  [(CALayer *)v10 convertPoint:[(CALayer *)[(THWFreeTransformController *)v40 targetLayer] superlayer] fromLayer:v11, v12];
  if ([(THWFreeTransformController *)v40 targetLayer])
  {
    [(CALayer *)[(THWFreeTransformController *)v40 targetLayer] frame];
    TSDRectWithCenterAndSize();
    x = v13;
    y = v15;
    width = v17;
    height = v19;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  [(THWFreeTransformController *)v40 setOriginalTargetLayerFrame:x, y, width, height];
  if (v40->mTransformScale != 0.0)
  {
    TSDCenterOfRect();
    TSDMultiplySizeScalar();
    TSDRectWithCenterAndSize();
    x = v21;
    y = v22;
    width = v23;
    height = v24;
  }

  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  v50 = CGRectInset(v49, -0.0, -0.0);
  -[THWFreeTransformController setWrapperView:](v40, "setWrapperView:", [[UIView alloc] initWithFrame:{v50.origin.x, v50.origin.y, v50.size.width, v50.size.height}]);
  mTransformScale = v40->mTransformScale;
  if (mTransformScale != 0.0)
  {
    CGAffineTransformMakeScale(&v43, 1.0 / mTransformScale, 1.0 / mTransformScale);
    v26 = [(THWFreeTransformController *)v40 wrapperLayer];
    v42 = v43;
    [(CALayer *)v26 setAffineTransform:&v42];
    CGAffineTransformMakeScale(&v41, v40->mTransformScale, v40->mTransformScale);
    v27 = [(THWFreeTransformController *)v40 targetLayer];
    v42 = v41;
    [(CALayer *)v27 setAffineTransform:&v42];
  }

  -[CALayer setBackgroundColor:](-[THWFreeTransformController wrapperLayer](v40, "wrapperLayer"), "setBackgroundColor:", [+[TSUColor clearColor](TSUColor "clearColor")]);
  [(CALayer *)[(THWFreeTransformController *)v40 wrapperLayer] setName:@"THWFreeTransformWrapperLayer"];
  [(THWFreeTransformController *)v40 setCurtainLayer:objc_alloc_init(CALayer)];
  [(CALayer *)[(THWFreeTransformController *)v40 curtainLayer] setName:@"THWFreeTransformCurtainLayer"];
  [(CALayer *)[(THWFreeTransformController *)v40 superLayerForWrapper] insertSublayer:[(THWFreeTransformController *)v40 curtainLayer] below:[(THWFreeTransformController *)v40 targetLayer]];
  [(CALayer *)[(THWFreeTransformController *)v40 superLayerForWrapper] insertSublayer:[(THWFreeTransformController *)v40 wrapperLayer] below:[(THWFreeTransformController *)v40 targetLayer]];
  v28 = [(THWFreeTransformController *)v40 wrapperLayer];
  [(CALayer *)[(THWFreeTransformController *)v40 targetLayer] position];
  [(CALayer *)v28 convertPoint:[(CALayer *)[(THWFreeTransformController *)v40 targetLayer] superlayer] fromLayer:v29, v30];
  v32 = v31;
  v34 = v33;
  [(THWFreeTransformController *)v40 delegate];
  if (objc_opt_respondsToSelector())
  {
    [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)v40 delegate] freeTransformControllerWillMoveTargetLayer:[(THWFreeTransformController *)v40 targetLayer]];
  }

  [(CALayer *)[(THWFreeTransformController *)v40 wrapperLayer] addSublayer:[(THWFreeTransformController *)v40 targetLayer]];
  [(CALayer *)[(THWFreeTransformController *)v40 targetLayer] setPosition:v32, v34];
  if ([(THWFreeTransformController *)v40 smoothEdges])
  {
    [(CALayer *)[(THWFreeTransformController *)v40 wrapperLayer] setShouldRasterize:1];
    TSUScreenScale();
    [(CALayer *)[(THWFreeTransformController *)v40 wrapperLayer] setRasterizationScale:v35];
  }

  [(THWFreeTransformController *)v40 delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)v40 delegate] freeTransformControllerShouldMoveFreeTransformViewAboveStatusBar:v40])
  {
    [(CALayer *)[(THWFreeTransformController *)v40 freeTransformLayer] setZPosition:10000.0];
  }

  else
  {
    objc_opt_class();
    [(CALayer *)[(THWFreeTransformController *)v40 freeTransformLayer] delegate];
    v36 = TSUDynamicCast();
    objc_opt_class();
    [(CALayer *)[(THWFreeTransformController *)v40 superLayerForWrapper] delegate];
    v37 = TSUDynamicCast();
    [(THWFreeTransformController *)v40 delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)v40 delegate] freeTransformControllerShouldUseEffectsWindow:v40])
    {
      [objc_msgSend(v36 "window")];
    }

    else
    {
      [UIWindow moveViewToEffectsWindowAboveStatusBar:v36 zPosition:v37 hostView:10000.0];
    }
  }

  [(CALayer *)[(THWFreeTransformController *)v40 freeTransformLayer] setZPosition:10000.0];
  if ([(THWFreeTransformController *)v40 p_wantsCurtainFadeOut])
  {
    [(THWFreeTransformController *)v40 p_setupCurtain];
  }

  [(THWFreeTransformController *)v40 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)v40 delegate] freeTransformControllerWantsShadow:v40])
  {
    [(THWFreeTransformController *)v40 p_setupShadow];
  }

  [(THWFreeTransformController *)v40 setLastVelocity:CGPointZero.x, CGPointZero.y];
  [v39 centerPoint];
  [(THWFreeTransformController *)v40 setLastDragCenter:?];
}

- (void)transformGRChanged:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (!self->mStartedFreeTransform)
  {
    [(THWFreeTransformController *)self p_setupForTransformWithGesture:a3];
  }

  memset(&v88, 0, sizeof(v88));
  if (a3)
  {
    [a3 transform];
  }

  [a3 scale];
  v6 = v5;
  [(THWFreeTransformController *)self originalTargetLayerFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] freeTransformControllerRectForCompletionAnimation:self];
  [(THWFreeTransformController *)self p_clampedScaleWithOriginalScale:v6 originalFrame:v8 targetFrame:v10, v12, v14, v15, v16, v17, v18];
  if (v19 != v6)
  {
    v20 = v19;
    [a3 angle];
    if (a3)
    {
      [a3 transformWithScale:v20 angle:v21];
    }

    else
    {
      memset(&v87, 0, sizeof(v87));
    }

    v88 = v87;
  }

  mTransformScale = self->mTransformScale;
  if (mTransformScale != 0.0)
  {
    CGAffineTransformMakeScale(&t1, 1.0 / mTransformScale, 1.0 / mTransformScale);
    t2 = v88;
    CGAffineTransformConcat(&v87, &t1, &t2);
    v88 = v87;
  }

  v84 = v88;
  v23 = [(THWFreeTransformController *)self freeTransformLayer];
  v87 = v84;
  [(CALayer *)v23 setAffineTransform:&v87];
  v24 = [(THWFreeTransformController *)self targetLayer];
  if (v24 == [(THWFreeTransformController *)self freeTransformLayer])
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v25 = *&self->mOriginalShadowTransform.c;
    *&v87.a = *&self->mOriginalShadowTransform.a;
    *&v87.c = v25;
    *&v87.tx = *&self->mOriginalShadowTransform.tx;
    t1 = v88;
    CGAffineTransformConcat(&v83, &v87, &t1);
    v26 = [(THWFreeTransformController *)self shadowLayer];
    v87 = v83;
    [(CALayer *)v26 setAffineTransform:&v87];
    +[CATransaction commit];
  }

  if (v6 <= 0.959999979 && !self->mStartedCurtainFadeOut && [(THWFreeTransformController *)self p_wantsCurtainFadeOut])
  {
    [(THWFreeTransformController *)self p_fadeOutCurtain];
  }

  [a3 centerPoint];
  [(THWFreeTransformController *)self lastDragCenter];
  TSDSubtractPoints();
  TSDMultiplyPointScalar();
  [(THWFreeTransformController *)self lastVelocity];
  TSDAveragePoints();
  v28 = v27;
  v30 = v29;
  [(CALayer *)[(THWFreeTransformController *)self freeTransformLayer] removeAllAnimations];
  [(THWFreeTransformController *)self scaleThreshold];
  if (v31 > 1.0 && v6 < 1.5 || ([(THWFreeTransformController *)self scaleThreshold], v32 < 1.0) && v6 < 0.5)
  {
    x = CGPointZero.x;
    if (CGPointZero.x != v28 || (x = CGPointZero.y, x != v30))
    {
      [(CALayer *)[(THWFreeTransformController *)self freeTransformLayer] addMomentumTiltWithVelocity:v28, v30];
    }
  }

  [a3 centerPoint];
  [(THWFreeTransformController *)self setLastDragCenter:?];
  [(THWFreeTransformController *)self setLastVelocity:v28, v30];
  if ([a3 isEnabled] && (objc_msgSend(a3, "state") == &dword_0 + 3 || objc_msgSend(a3, "state") == &dword_4))
  {
    [(CALayer *)[(THWFreeTransformController *)self freeTransformLayer] removeMomentumTiltAnimation];
    [(CALayer *)[(THWFreeTransformController *)self freeTransformLayer] setZPosition:0.0];
    [(THWFreeTransformController *)self scaleThreshold];
    if (v34 <= 1.0)
    {
      v36 = 0;
    }

    else
    {
      [(THWFreeTransformController *)self scaleThreshold];
      v36 = v6 > v35;
    }

    [(THWFreeTransformController *)self scaleThreshold];
    if (v37 >= 1.0)
    {
      v39 = 0;
    }

    else
    {
      [(THWFreeTransformController *)self scaleThreshold];
      v39 = v6 < v38;
    }

    v40 = [a3 state] != &dword_4 && (v36 || v39);
    v41 = v40;
    size = CGRectNull.size;
    self->mCompletionTargetRect.origin = CGRectNull.origin;
    self->mCompletionTargetRect.size = size;
    [(THWFreeTransformController *)self originalTargetLayerFrame];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    [(THWFreeTransformController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] freeTransformControllerWillBeginCompletionAnimation:self passedThreshold:v41];
    }

    v51 = *&v88.c;
    *&self->mCurrentTransform.a = *&v88.a;
    *&self->mCurrentTransform.c = v51;
    *&self->mCurrentTransform.tx = *&v88.tx;
    [(THWFreeTransformController *)self setPassedThreshold:v41];
    if (v41)
    {
      [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] freeTransformControllerRectForCompletionAnimation:self];
      self->mCompletionTargetRect.origin.x = v52;
      self->mCompletionTargetRect.origin.y = v53;
      self->mCompletionTargetRect.size.width = v54;
      self->mCompletionTargetRect.size.height = v55;
      [(THWFreeTransformController *)self completionTargetRect];
      if (!CGRectIsNull(v89))
      {
        [(CALayer *)[(THWFreeTransformController *)self freeTransformLayer] center];
        TSDRectWithCenterAndSize();
        v44 = v56;
        v46 = v57;
        v48 = v58;
        v50 = v59;
        if (self->mTransformScale != 0.0)
        {
          TSDCenterOfRect();
          TSDMultiplySizeScalar();
          TSDRectWithCenterAndSize();
          v44 = v60;
          v46 = v61;
          v48 = v62;
          v50 = v63;
        }
      }
    }

    else
    {
      [(THWFreeTransformController *)self originalTargetLayerFrame];
      self->mCompletionTargetRect.origin.x = v64;
      self->mCompletionTargetRect.origin.y = v65;
      self->mCompletionTargetRect.size.width = v66;
      self->mCompletionTargetRect.size.height = v67;
      if (self->mTransformScale != 0.0)
      {
        [(THWFreeTransformController *)self completionTargetRect];
        TSDCenterOfRect();
        [(THWFreeTransformController *)self completionTargetRect];
        TSDMultiplySizeScalar();
        TSDRectWithCenterAndSize();
        self->mCompletionTargetRect.origin.x = v68;
        self->mCompletionTargetRect.origin.y = v69;
        self->mCompletionTargetRect.size.width = v70;
        self->mCompletionTargetRect.size.height = v71;
      }
    }

    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v79 = sub_6EEDC;
    v80 = &unk_45B2C0;
    v81 = self;
    v82 = v41;
    if (!self->mStartedCurtainFadeOut && v41 && [(THWFreeTransformController *)self p_wantsCurtainFadeOut])
    {
      [(THWFreeTransformController *)self p_fadeOutCurtain];
    }

    [(THWFreeTransformController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] freeTransformControllerDidFinishFreeTransforming:self passedThreshold:v41 completionBlock:v78];
    }

    else
    {
      [(THWFreeTransformController *)self completionTargetRect];
      if (CGRectIsEmpty(v90) || [a3 state] == &dword_4)
      {
        v79(v78);
      }

      else
      {
        [(THWFreeTransformController *)self completionTargetRect];
        v73 = v72;
        v87 = v88;
        v74 = *&CGAffineTransformIdentity.c;
        *&t1.a = *&CGAffineTransformIdentity.a;
        *&t1.c = v74;
        *&t1.tx = *&CGAffineTransformIdentity.tx;
        [(THWFreeTransformController *)self p_addOvershootAnimationWithOriginalFrame:&v87 originalTransform:&t1 targetFrame:v78 targetTransform:v44 completion:v46, v48, v50, v75, v73, v76, v77];
      }
    }
  }

  else
  {
    [(THWFreeTransformController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] freeTransformControllerDidContinue:self withScale:v6];
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  [(THWFreeTransformController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v4 = [(THWFreeTransformController *)self delegate];

  return [(THWFreeTransformControllerDelegate *)v4 freeTransformControllerShouldBegin:self];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  if (!self->mDelegate || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(THWFreeTransformControllerDelegate *)mDelegate freeTransformController:self shouldRecognizeSimultaneouslyWithGestureRecognizer:a4];
}

- (BOOL)freeTransformGestureRecognizerShouldDelayRecognizeUntilScaleChange:(id)a3
{
  mDelegate = self->mDelegate;
  if (!mDelegate)
  {
    mDelegate = self->mGestureRecognizerDelegate;
  }

  if (self->mBounceUpOnly)
  {
    return 1;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWFreeTransformControllerDelegate *)mDelegate freeTransformControllerShouldDelayRecognizeUntilScaleChange:self];
}

- (BOOL)freeTransformGestureRecognizerShouldAllowPinchDown:(id)a3
{
  mDelegate = self->mDelegate;
  if (!mDelegate)
  {
    mDelegate = self->mGestureRecognizerDelegate;
  }

  if (self->mBounceUpOnly)
  {
    return 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [(THWFreeTransformControllerDelegate *)mDelegate freeTransformControllerShouldAllowPinchDown:self];
}

- (BOOL)freeTransformGestureRecognizerShouldAllowPinchUp:(id)a3
{
  mDelegate = self->mDelegate;
  if (!mDelegate)
  {
    mDelegate = self->mGestureRecognizerDelegate;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [(THWFreeTransformControllerDelegate *)mDelegate freeTransformControllerShouldAllowPinchUp:self];
}

- (CGPoint)lastDragCenter
{
  x = self->mLastDragCenter.x;
  y = self->mLastDragCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastVelocity
{
  x = self->mLastVelocity.x;
  y = self->mLastVelocity.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)completionTargetRect
{
  x = self->mCompletionTargetRect.origin.x;
  y = self->mCompletionTargetRect.origin.y;
  width = self->mCompletionTargetRect.size.width;
  height = self->mCompletionTargetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)currentTransform
{
  v3 = *&self[5].ty;
  *&retstr->a = *&self[5].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[6].b;
  return self;
}

- (CGAffineTransform)originalShadowTransform
{
  v3 = *&self[4].a;
  *&retstr->a = *&self[3].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].c;
  return self;
}

- (void)recreateGestureRecognizerOnView:(id)a3
{
  if ([(THWFreeTransformGestureRecognizer *)[(THWFreeTransformController *)self transformGR] view]!= a3)
  {
    [(THWFreeTransformController *)self clearGestureRecognizer];
    if (a3)
    {
      [(THWFreeTransformController *)self setTransformGR:[[THWFreeTransformGestureRecognizer alloc] initWithTarget:self action:"transformGRChanged:"]];
      [(THWFreeTransformGestureRecognizer *)[(THWFreeTransformController *)self transformGR] setFreeTransformDelegate:self];
      [a3 addGestureRecognizer:{-[THWFreeTransformController transformGR](self, "transformGR")}];

      [(THWFreeTransformController *)self p_updateUnmovingParentView:a3];
    }
  }
}

- (void)clearGestureRecognizer
{
  if ([(THWFreeTransformController *)self transformGR])
  {
    v3 = [(THWFreeTransformGestureRecognizer *)[(THWFreeTransformController *)self transformGR] view];
    v4 = [(THWFreeTransformController *)self transformGR];

    [v3 removeGestureRecognizer:v4];
  }
}

- (void)updateUnmovingParentView
{
  objc_opt_class();
  [(CALayer *)[(THWFreeTransformController *)self targetLayer] delegate];
  v3 = TSUDynamicCast();

  [(THWFreeTransformController *)self p_updateUnmovingParentView:v3];
}

- (void)p_updateUnmovingParentView:(id)a3
{
  v5 = [(THWFreeTransformControllerDelegate *)[(THWFreeTransformController *)self delegate] unmovingParentViewForFreeTransformController:self];
  if (!v5)
  {
    v5 = [a3 superview];
  }

  v6 = [(THWFreeTransformController *)self transformGR];

  [(THWFreeTransformGestureRecognizer *)v6 setUnmovingParentView:v5];
}

@end