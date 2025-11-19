@interface THTOCSplitTransitionView
- (CATransform3D)_scaleInstanceTransformForOpen:(SEL)a3;
- (CATransform3D)_splitInstanceTransformForOpen:(SEL)a3;
- (CGPoint)_shadowLayerPositionForOpen:(BOOL)a3 top:(BOOL)a4;
- (CGPoint)_splitReplicatorLayerPositionForOpen:(BOOL)a3;
- (double)slideAnimationDuration;
- (void)_adjustScaleReplicatorLayers:(CGRect)a3;
- (void)_adjustSplitReplicatorLayers:(CGRect)a3;
- (void)_animate;
- (void)_animateInteractive;
- (void)_animationDidStop;
- (void)_setupAnimation;
- (void)_setupLayers;
- (void)_setupQuickAnimationToLayer:(id)a3 withKeyPath:(id)a4 toValue:(id)a5;
- (void)_setupScaleAnimationLayers;
- (void)_setupSplitAnimationLayers;
- (void)beginInteractiveTransition;
- (void)beginTransition;
- (void)dealloc;
- (void)finishInteractiveTransition;
- (void)reverseInteractiveTransition;
@end

@implementation THTOCSplitTransitionView

- (void)dealloc
{
  self->_splitAnimationView = 0;

  self->_scaleAnimationView = 0;
  v3.receiver = self;
  v3.super_class = THTOCSplitTransitionView;
  [(THTransitionView *)&v3 dealloc];
}

- (double)slideAnimationDuration
{
  animationDuration = self->_animationDuration;
  [(THTOCSplitTransitionView *)self slideAnimationScalar];
  return animationDuration * v3;
}

- (CGPoint)_splitReplicatorLayerPositionForOpen:(BOOL)a3
{
  x = self->_splitLayerOriginalPosition.x;
  y = self->_splitLayerOriginalPosition.y;
  if (self->_isInteractive)
  {
    splitPositionY = self->_splitPositionY;
    scale = self->_scale;
    v7 = splitPositionY - splitPositionY * scale;
    v8 = splitPositionY * scale;
    if (a3)
    {
      v8 = v7;
    }

    goto LABEL_7;
  }

  if (a3)
  {
    v8 = self->_splitPositionY;
LABEL_7:
    y = y - v8;
  }

  result.y = y;
  result.x = x;
  return result;
}

- (CATransform3D)_splitInstanceTransformForOpen:(SEL)a3
{
  v4 = a4;
  [(CAReplicatorLayer *)self->_splitReplicatorLayer bounds];
  if (self->_isInteractive)
  {
    scale = self->_scale;
    if (v4)
    {
      v9 = v7 - v7 * scale;
    }

    else
    {
      v9 = v7 * scale;
    }
  }

  else if (v4)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0.0001;
  }

  return CATransform3DMakeTranslation(retstr, 0.0, v9, 0.0);
}

- (CGPoint)_shadowLayerPositionForOpen:(BOOL)a3 top:(BOOL)a4
{
  v4 = a3;
  x = self->_splitLayerOriginalPosition.x;
  y = self->_splitLayerOriginalPosition.y;
  if (a4)
  {
    [(CALayer *)self->_topShadowLayer bounds];
    if (self->_isInteractive)
    {
      scale = self->_scale;
      if (v4)
      {
        scale = 1.0 - scale;
      }

      v10 = y - v8 * scale;
      goto LABEL_15;
    }

    v13 = y - v8;
LABEL_12:
    if (v4)
    {
      v10 = v13;
    }

    else
    {
      v10 = y;
    }

    goto LABEL_15;
  }

  y = y + self->_splitPositionY;
  [(CALayer *)self->_bottomShadowLayer bounds];
  if (!self->_isInteractive)
  {
    v13 = y + v11;
    goto LABEL_12;
  }

  v12 = self->_scale;
  if (v4)
  {
    v12 = 1.0 - v12;
  }

  v10 = y + v11 * v12;
LABEL_15:
  v14 = x;
  result.y = v10;
  result.x = v14;
  return result;
}

- (void)_setupSplitAnimationLayers
{
  [(CALayer *)[(UIView *)self->_splitAnimationView layer] bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  splitPositionY = self->_splitPositionY;
  if (splitPositionY >= 0.0 && splitPositionY <= 0.0)
  {
    splitPositionY = CGRectGetMidY(*&v3);
    self->_splitPositionY = splitPositionY;
  }

  size = CGRectNull.size;
  slice.origin = CGRectNull.origin;
  slice.size = size;
  remainder.origin = slice.origin;
  remainder.size = size;
  v13 = v7;
  size.width = v8;
  v14 = v9;
  v15 = v10;
  CGRectDivide(*(&size - 8), &slice, &remainder, splitPositionY, CGRectMinYEdge);
  v16 = +[CALayer layer];
  self->_bottomShadowLayer = v16;
  [(CALayer *)v16 setName:@"_bottomShadowLayer"];
  y = CGPointZero.y;
  [(CALayer *)self->_bottomShadowLayer setAnchorPoint:CGPointZero.x, y];
  [(CALayer *)self->_bottomShadowLayer setFrame:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
  [(CALayer *)self->_bottomShadowLayer setOpaque:0];
  [(CALayer *)self->_bottomShadowLayer bounds];
  -[CALayer setShadowPath:](self->_bottomShadowLayer, "setShadowPath:", [+[UIBezierPath bezierPathWithRect:](UIBezierPath CGPath]);
  [(CALayer *)self->_bottomShadowLayer setShadowOffset:0.0, -5.0];
  [(CALayer *)self->_bottomShadowLayer setShadowRadius:15.0];
  LODWORD(v18) = 0.5;
  [(CALayer *)self->_bottomShadowLayer setShadowOpacity:v18];
  [-[THTOCSplitTransitionView layer](self "layer")];
  v19 = +[CALayer layer];
  self->_topShadowLayer = v19;
  [(CALayer *)v19 setName:@"_topShadowLayer"];
  [(CALayer *)self->_topShadowLayer setAnchorPoint:CGPointZero.x, y];
  [(CALayer *)self->_topShadowLayer setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  [(CALayer *)self->_topShadowLayer setOpaque:0];
  [(CALayer *)self->_topShadowLayer bounds];
  -[CALayer setShadowPath:](self->_topShadowLayer, "setShadowPath:", [+[UIBezierPath bezierPathWithRect:](UIBezierPath CGPath]);
  [(CALayer *)self->_topShadowLayer setShadowOffset:0.0, 5.0];
  [(CALayer *)self->_topShadowLayer setShadowRadius:15.0];
  LODWORD(v20) = 0.5;
  [(CALayer *)self->_topShadowLayer setShadowOpacity:v20];
  [-[THTOCSplitTransitionView layer](self "layer")];
  v21 = [(THTOCSplitTransitionView *)self layer];
  [(CALayer *)[(UIView *)self->_splitAnimationView layer] bounds];
  [v21 convertPoint:-[UIView layer](self->_splitAnimationView fromLayer:{"layer"), v22, v23}];
  self->_splitLayerOriginalPosition.x = v24;
  self->_splitLayerOriginalPosition.y = v25;
  v26 = +[CAReplicatorLayer layer];
  self->_splitReplicatorLayer = v26;
  [(CAReplicatorLayer *)v26 setName:@"_splitReplicatorLayer"];
  [(CAReplicatorLayer *)self->_splitReplicatorLayer setInstanceCount:2];
  [(CAReplicatorLayer *)self->_splitReplicatorLayer setInstanceDelay:self->_animationDuration + 100.0];
  [(CAReplicatorLayer *)self->_splitReplicatorLayer setAnchorPoint:CGPointZero.x, y];
  [(CALayer *)[(UIView *)self->_splitAnimationView layer] bounds];
  [(CAReplicatorLayer *)self->_splitReplicatorLayer setBounds:?];
  [(THTOCSplitTransitionView *)self _splitReplicatorLayerPositionForOpen:self->_isReverse];
  [(CAReplicatorLayer *)self->_splitReplicatorLayer setPosition:?];
  [(CAReplicatorLayer *)self->_splitReplicatorLayer setPreservesDepth:1];
  [(THTOCSplitTransitionView *)self _splitInstanceTransformForOpen:self->_isReverse];
  splitReplicatorLayer = self->_splitReplicatorLayer;
  v33[0] = v33[1];
  [(CAReplicatorLayer *)splitReplicatorLayer setInstanceTransform:v33];
  v28 = +[CALayer layer];
  self->_hostLayer = v28;
  [(CALayer *)v28 setName:@"_hostLayer"];
  [(CAReplicatorLayer *)self->_splitReplicatorLayer bounds];
  [(CALayer *)self->_hostLayer setFrame:?];
  v29 = +[CALayer layer];
  self->_shadowedLayer = v29;
  [(CALayer *)v29 setName:@"_shadowedLayer"];
  [(CALayer *)self->_shadowedLayer setAnchorPoint:CGPointZero.x, y];
  [(CALayer *)self->_shadowedLayer setFrame:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
  [(CALayer *)self->_shadowedLayer setOpaque:0];
  v30 = +[CALayer layer];
  self->_maskLayer = v30;
  [(CALayer *)v30 setName:@"_maskLayer"];
  [(CALayer *)self->_maskLayer setAnchorPoint:CGPointZero.x, y];
  [(CALayer *)self->_shadowedLayer bounds];
  [(CALayer *)self->_maskLayer setFrame:?];
  CATransform3DMakeTranslation(&v32, 0.0, -self->_splitPositionY, 0.0);
  maskLayer = self->_maskLayer;
  v33[0] = v32;
  [(CALayer *)maskLayer setSublayerTransform:v33];
  [(CALayer *)self->_maskLayer setOpaque:1];
  [(CALayer *)self->_maskLayer setMasksToBounds:1];
  [(CALayer *)self->_maskLayer addSublayer:[(UIView *)self->_splitAnimationView layer]];
  [(CALayer *)self->_shadowedLayer addSublayer:self->_maskLayer];
  [(CALayer *)self->_hostLayer addSublayer:self->_shadowedLayer];
  [(CAReplicatorLayer *)self->_splitReplicatorLayer addSublayer:self->_hostLayer];
  [-[THTOCSplitTransitionView layer](self "layer")];
}

- (void)_adjustSplitReplicatorLayers:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(THTOCSplitTransitionView *)self _setupQuickAnimationToLayer:self->_shadowedLayer withKeyPath:@"position" toValue:[NSValue valueWithCGPoint:CGPointZero.x, CGPointZero.y]];
  [(THTOCSplitTransitionView *)self _setupQuickAnimationToLayer:self->_shadowedLayer withKeyPath:@"bounds" toValue:[NSValue valueWithCGRect:x, y, width, height]];
  [(THTOCSplitTransitionView *)self _setupQuickAnimationToLayer:self->_maskLayer withKeyPath:@"bounds" toValue:[NSValue valueWithCGRect:x, y, width, height]];
  maskLayer = self->_maskLayer;
  v9 = *&CATransform3DIdentity.m33;
  v13[4] = *&CATransform3DIdentity.m31;
  v13[5] = v9;
  v10 = *&CATransform3DIdentity.m43;
  v13[6] = *&CATransform3DIdentity.m41;
  v13[7] = v10;
  v11 = *&CATransform3DIdentity.m13;
  v13[0] = *&CATransform3DIdentity.m11;
  v13[1] = v11;
  v12 = *&CATransform3DIdentity.m23;
  v13[2] = *&CATransform3DIdentity.m21;
  v13[3] = v12;
  [(THTOCSplitTransitionView *)self _setupQuickAnimationToLayer:maskLayer withKeyPath:@"sublayerTransform" toValue:[NSValue valueWithCATransform3D:v13]];
}

- (CATransform3D)_scaleInstanceTransformForOpen:(SEL)a3
{
  if (self->_isInteractive)
  {
    if (a4)
    {
      v4 = 0.999899983;
      v5 = -0.0598999858;
    }

    else
    {
      v4 = 0.939999998;
      v5 = 0.0598999858;
    }

    v6 = v4 + self->_scale * v5;
  }

  else
  {
    v6 = 0.939999998;
    if (a4)
    {
      v6 = 0.999899983;
    }
  }

  return CATransform3DMakeScale(retstr, v6, v6, 1.0);
}

- (void)_setupScaleAnimationLayers
{
  [(THTOCSplitTransitionView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[CALayer layer];
  self->_blackBackgroundLayer = v11;
  [(CALayer *)v11 setName:@"_blackBackgroundLayer"];
  [(CALayer *)self->_blackBackgroundLayer setFrame:v4, v6, v8, v10];
  -[CALayer setBackgroundColor:](self->_blackBackgroundLayer, "setBackgroundColor:", [+[UIColor blackColor](UIColor CGColor]);
  [(CALayer *)self->_blackBackgroundLayer setOpaque:1];
  [-[THTOCSplitTransitionView layer](self "layer")];
  v12 = +[CAReplicatorLayer layer];
  self->_scaleReplicatorLayer = v12;
  [(CAReplicatorLayer *)v12 setName:@"_scaleReplicatorLayer"];
  [(CAReplicatorLayer *)self->_scaleReplicatorLayer setFrame:v4, v6, v8, v10];
  [(CAReplicatorLayer *)self->_scaleReplicatorLayer setInstanceCount:2];
  [(CAReplicatorLayer *)self->_scaleReplicatorLayer setInstanceDelay:self->_animationDuration + 100.0];
  [(CAReplicatorLayer *)self->_scaleReplicatorLayer setPreservesDepth:1];
  [(THTOCSplitTransitionView *)self _scaleInstanceTransformForOpen:self->_isReverse];
  scaleReplicatorLayer = self->_scaleReplicatorLayer;
  v15[4] = v15[12];
  v15[5] = v15[13];
  v15[6] = v15[14];
  v15[7] = v15[15];
  v15[0] = v15[8];
  v15[1] = v15[9];
  v15[2] = v15[10];
  v15[3] = v15[11];
  [(CAReplicatorLayer *)scaleReplicatorLayer setInstanceTransform:v15];
  [(THTOCSplitTransitionView *)self _scaleInstanceAlphaOffsetForOpen:self->_isReverse];
  *&v14 = v14;
  [(CAReplicatorLayer *)self->_scaleReplicatorLayer setInstanceAlphaOffset:v14];
  [(CAReplicatorLayer *)self->_scaleReplicatorLayer addSublayer:[(UIView *)self->_scaleAnimationView layer]];
  [(CALayer *)self->_blackBackgroundLayer addSublayer:self->_scaleReplicatorLayer];
}

- (void)_adjustScaleReplicatorLayers:(CGRect)a3
{
  v4 = [(UIView *)self->_scaleAnimationView layer:a3.origin.x];
  v5 = [NSNumber numberWithFloat:0.0];

  [(THTOCSplitTransitionView *)self _setupQuickAnimationToLayer:v4 withKeyPath:@"opacity" toValue:v5];
}

- (void)_setupLayers
{
  [CATransaction setDisableActions:1];
  if (!self->_keepSplitAnimationView)
  {

    self->_splitAnimationView = 0;
  }

  if (!self->_keepScaleAnimationView)
  {

    self->_scaleAnimationView = 0;
  }

  if (!self->_splitAnimationView)
  {
    if (self->_isReverse)
    {
      v3 = &OBJC_IVAR___THTransitionView__toViewController;
    }

    else
    {
      v3 = &OBJC_IVAR___THTransitionView__fromViewController;
    }

    self->_splitAnimationView = [objc_msgSend(*(&self->super.super.super.super.isa + *v3) "view")];
  }

  if (!self->_scaleAnimationView)
  {
    if (self->_isReverse)
    {
      v4 = &OBJC_IVAR___THTransitionView__fromViewController;
    }

    else
    {
      v4 = &OBJC_IVAR___THTransitionView__toViewController;
    }

    self->_scaleAnimationView = [objc_msgSend(*(&self->super.super.super.super.isa + *v4) "view")];
  }

  [(THTOCSplitTransitionView *)self _setupSplitAnimationLayers];
  [(THTOCSplitTransitionView *)self _setupScaleAnimationLayers];
  [(THTOCSplitTransitionView *)self frame];
  Width = CGRectGetWidth(v8);
  splitPositionY = self->_splitPositionY;
  [(THTOCSplitTransitionView *)self _adjustSplitReplicatorLayers:0.0, 0.0, Width, splitPositionY];
  [(THTOCSplitTransitionView *)self _adjustScaleReplicatorLayers:0.0, 0.0, Width, splitPositionY];

  [CATransaction setDisableActions:0];
}

- (void)_animate
{
  [(THTransitionViewDelegate *)[(THTransitionView *)self delegate] transitionWillFinish:self];
  +[CATransaction begin];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10BFDC;
  v31[3] = &unk_45AE00;
  v31[4] = self;
  [CATransaction setCompletionBlock:v31];
  [(THTOCSplitTransitionView *)self slideAnimationDuration];
  [CATransaction setAnimationDuration:?];
  if (self->_isFinishingInteractive)
  {
    v3 = &kCAMediaTimingFunctionLinear;
  }

  else
  {
    v3 = &kCAMediaTimingFunctionEaseIn;
  }

  [CATransaction setAnimationTimingFunction:[CAMediaTimingFunction functionWithName:*v3]];
  [(THTOCSplitTransitionView *)self _splitReplicatorLayerPositionForOpen:!self->_isReverse];
  [(CAReplicatorLayer *)self->_splitReplicatorLayer setPosition:?];
  [(THTOCSplitTransitionView *)self _splitInstanceTransformForOpen:!self->_isReverse];
  splitReplicatorLayer = self->_splitReplicatorLayer;
  v19 = v27;
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v18 = v26;
  [(CAReplicatorLayer *)splitReplicatorLayer setInstanceTransform:&v15];
  [(THTOCSplitTransitionView *)self _shadowLayerPositionForOpen:!self->_isReverse top:1];
  [(CALayer *)self->_topShadowLayer setPosition:?];
  [(CALayer *)self->_topShadowLayer setOpacity:0.0];
  [(THTOCSplitTransitionView *)self _shadowLayerPositionForOpen:!self->_isReverse top:0];
  [(CALayer *)self->_bottomShadowLayer setPosition:?];
  [(CALayer *)self->_bottomShadowLayer setOpacity:0.0];
  [CATransaction setAnimationDuration:self->_animationDuration];
  [CATransaction setAnimationTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
  [(THTOCSplitTransitionView *)self _scaleInstanceTransformForOpen:!self->_isReverse];
  scaleReplicatorLayer = self->_scaleReplicatorLayer;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  [(CAReplicatorLayer *)scaleReplicatorLayer setInstanceTransform:&v15];
  [(THTOCSplitTransitionView *)self _scaleInstanceAlphaOffsetForOpen:!self->_isReverse];
  *&v6 = v6;
  [(CAReplicatorLayer *)self->_scaleReplicatorLayer setInstanceAlphaOffset:v6];
  +[CATransaction commit];
}

- (void)_animateInteractive
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(THTOCSplitTransitionView *)self _splitReplicatorLayerPositionForOpen:!self->_isReverse];
  [(CAReplicatorLayer *)self->_splitReplicatorLayer setPosition:?];
  [(THTOCSplitTransitionView *)self _splitInstanceTransformForOpen:!self->_isReverse];
  splitReplicatorLayer = self->_splitReplicatorLayer;
  v18 = v26;
  v19 = v27;
  v20 = v28;
  v21 = v29;
  v14 = v22;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  [(CAReplicatorLayer *)splitReplicatorLayer setInstanceTransform:&v14];
  [(THTOCSplitTransitionView *)self _shadowLayerPositionForOpen:!self->_isReverse top:1];
  [(CALayer *)self->_topShadowLayer setPosition:?];
  [(THTOCSplitTransitionView *)self _shadowLayerPositionForOpen:!self->_isReverse top:0];
  [(CALayer *)self->_bottomShadowLayer setPosition:?];
  [(THTOCSplitTransitionView *)self _scaleInstanceTransformForOpen:!self->_isReverse];
  scaleReplicatorLayer = self->_scaleReplicatorLayer;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  [(CAReplicatorLayer *)scaleReplicatorLayer setInstanceTransform:&v14];
  [(THTOCSplitTransitionView *)self _scaleInstanceAlphaOffsetForOpen:!self->_isReverse];
  *&v5 = v5;
  [(CAReplicatorLayer *)self->_scaleReplicatorLayer setInstanceAlphaOffset:v5];
  +[CATransaction commit];
}

- (void)_setupAnimation
{
  if (self->_isInteractive)
  {
    v2 = "_animateInteractive";
    animationDelay = 0.0;
  }

  else
  {
    v2 = "_animate";
    animationDelay = self->_animationDelay;
  }

  [(THTOCSplitTransitionView *)self performSelector:v2 withObject:0 afterDelay:animationDelay];
}

- (void)beginTransition
{
  [(THTOCSplitTransitionView *)self _setupLayers];
  [(THTOCSplitTransitionView *)self _setupAnimation];
  v3.receiver = self;
  v3.super_class = THTOCSplitTransitionView;
  [(THTransitionView *)&v3 beginTransition];
}

- (void)beginInteractiveTransition
{
  self->_isInteractive = 1;
  self->_scale = 0.0;
  [(THTOCSplitTransitionView *)self beginTransition];
}

- (void)finishInteractiveTransition
{
  self->_isInteractive = 0;
  self->_isFinishingInteractive = 1;
  [(THTOCSplitTransitionView *)self _setupAnimation];
}

- (void)reverseInteractiveTransition
{
  self->_wasReversed = 1;
  self->_isReverse ^= 1u;
  [(THTOCSplitTransitionView *)self finishInteractiveTransition];
}

- (void)_animationDidStop
{
  +[CATransaction begin];
  [(CAReplicatorLayer *)self->_splitReplicatorLayer removeFromSuperlayer];
  [(CALayer *)[(UIView *)self->_scaleAnimationView layer] removeFromSuperlayer];
  [(THTransitionView *)self transitionDidFinish];
  +[CATransaction commit];

  self->_splitAnimationView = 0;
  self->_scaleAnimationView = 0;
}

- (void)_setupQuickAnimationToLayer:(id)a3 withKeyPath:(id)a4 toValue:(id)a5
{
  v8 = [CABasicAnimation animationWithKeyPath:a4];
  [(CABasicAnimation *)v8 setDuration:0.00100000005];
  [(CABasicAnimation *)v8 setBeginTime:0.0];
  [(CABasicAnimation *)v8 setBeginTimeMode:kCAAnimationRelative];
  [(CABasicAnimation *)v8 setFillMode:kCAFillModeBoth];
  [(CABasicAnimation *)v8 setRemovedOnCompletion:0];
  [(CABasicAnimation *)v8 setToValue:a5];

  [a3 addAnimation:v8 forKey:a4];
}

@end