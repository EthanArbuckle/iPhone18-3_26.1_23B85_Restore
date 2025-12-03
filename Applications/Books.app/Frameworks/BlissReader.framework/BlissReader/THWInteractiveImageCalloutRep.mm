@interface THWInteractiveImageCalloutRep
- (BOOL)handleGesture:(id)gesture;
- (BOOL)p_animatingCallouts;
- (CGPoint)sourcePoint;
- (CGPoint)targetPoint;
- (double)p_zoomDuration;
- (id)animationForChildRep:(id)rep layer:(id)layer withEvent:(id)event;
- (id)animationForRepLayer:(id)layer withEvent:(id)event;
- (id)p_delayedAnimationForLayer:(id)layer withEvent:(id)event;
- (id)p_host;
- (void)addAdditionalChildBackgroundLayersToArray:(id)array;
- (void)control:(id)control repWasAdded:(id)added;
- (void)control:(id)control repWillBeRemoved:(id)removed;
- (void)dealloc;
- (void)didUpdateLayer:(id)layer;
- (void)p_layoutLine;
- (void)p_updateGradient;
- (void)p_updateGradientColors;
- (void)p_updateLineAndShadows;
- (void)p_updateShadow;
- (void)p_updatedHovering;
- (void)screenScaleDidChange;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated;
- (void)updateFromLayout;
@end

@implementation THWInteractiveImageCalloutRep

- (void)dealloc
{
  [(CAShapeLayer *)self->_line removeFromSuperlayer];

  [(CALayer *)self->_targetShadow removeFromSuperlayer];
  [(CALayer *)self->_lineShadow removeFromSuperlayer];

  [(CAGradientLayer *)self->_gradientLayer removeFromSuperlayer];
  [(CALayer *)self->_shadowLayer removeFromSuperlayer];

  v3.receiver = self;
  v3.super_class = THWInteractiveImageCalloutRep;
  [(THWInteractiveImageCalloutRep *)&v3 dealloc];
}

- (CGPoint)targetPoint
{
  v2 = [-[THWInteractiveImageCalloutRep layout](self "layout")];

  [v2 targetPoint];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)sourcePoint
{
  v2 = [-[THWInteractiveImageCalloutRep layout](self "layout")];

  [v2 sourcePoint];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  interactiveCanvasController = [(THWInteractiveImageCalloutRep *)self interactiveCanvasController];
  v8 = interactiveCanvasController;
  if (animatedCopy)
  {
    [interactiveCanvasController beginAnimations:@"callout opacity" context:0];
    [v8 setAnimationDuration:0.25];
    v9 = [v8 layerForRep:self];
    v10 = 0.0;
    if (visibleCopy)
    {
      *&v10 = 1.0;
    }

    [v9 setOpacity:v10];

    [v8 commitAnimations];
  }

  else
  {
    v11 = [interactiveCanvasController layerForRep:self];
    v12 = 0.0;
    if (visibleCopy)
    {
      *&v12 = 1.0;
    }

    [v11 setOpacity:v12];
  }
}

- (void)updateFromLayout
{
  v3.receiver = self;
  v3.super_class = THWInteractiveImageCalloutRep;
  [(THWInteractiveImageCalloutRep *)&v3 updateFromLayout];
  [(THWInteractiveImageCalloutRep *)self p_updateGradient];
  [(THWInteractiveImageCalloutRep *)self p_updateShadow];
  [(THWInteractiveImageCalloutRep *)self p_updateLineAndShadows];
  [(THWInteractiveImageCalloutRep *)self p_layoutLine];
}

- (void)didUpdateLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = THWInteractiveImageCalloutRep;
  [(THWInteractiveImageCalloutRep *)&v4 didUpdateLayer:layer];
  [(THWInteractiveImageCalloutRep *)self p_updateGradientColors];
}

- (void)addAdditionalChildBackgroundLayersToArray:(id)array
{
  if (self->_targetShadow)
  {
    [array addObject:?];
  }

  if (self->_lineShadow)
  {
    [array addObject:?];
  }

  if (self->_line)
  {
    [array addObject:?];
  }

  if (self->_shadowLayer)
  {
    [array addObject:?];
  }

  if (self->_gradientLayer)
  {

    [array addObject:?];
  }
}

- (id)p_host
{
  interactiveCanvasController = [(THWInteractiveImageCalloutRep *)self interactiveCanvasController];

  return [interactiveCanvasController ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWInteractiveImageCalloutHosting];
}

- (void)p_updatedHovering
{
  p_host = [(THWInteractiveImageCalloutRep *)self p_host];

  [p_host interactiveImageCalloutUpdatedHovering:self];
}

- (void)screenScaleDidChange
{
  [-[THWInteractiveImageCalloutRep canvas](self "canvas")];
  v4 = v3;
  [(CAGradientLayer *)self->_gradientLayer setContentsScale:?];
  [(CALayer *)self->_shadowLayer setContentsScale:v4];

  [(THWInteractiveImageCalloutRep *)self p_updateLineAndShadows];
}

- (void)p_updateShadow
{
  if (self->_shadowLayer || (self->_shadowLayer = objc_alloc_init(TSDNoDefaultImplicitActionGradientLayer), -[CALayer setDelegate:](self->_shadowLayer, "setDelegate:", -[THWInteractiveImageCalloutRep interactiveCanvasController](self, "interactiveCanvasController")), [-[THWInteractiveImageCalloutRep canvas](self "canvas")], -[CALayer setContentsScale:](self->_shadowLayer, "setContentsScale:"), -[CALayer setShadowOffset:](self->_shadowLayer, "setShadowOffset:", 0.0, 1.0), LODWORD(v3) = 1058642330, -[CALayer setShadowOpacity:](self->_shadowLayer, "setShadowOpacity:", v3), -[CALayer setShadowRadius:](self->_shadowLayer, "setShadowRadius:", 2.0), -[CALayer setShadowColor:](self->_shadowLayer, "setShadowColor:", objc_msgSend(objc_msgSend(+[TSUColor blackColor](TSUColor, "blackColor"), "colorWithAlphaComponent:", 0.5), "CGColor")), self->_shadowLayer))
  {
    [-[THWInteractiveImageCalloutRep layout](self "layout")];
    [(THWInteractiveImageCalloutRep *)self convertNaturalRectToLayerRelative:?];
    [-[THWInteractiveImageCalloutRep canvas](self "canvas")];
    TSDRoundedRectForScale();
    v42 = v5;
    v43 = v4;
    v7 = v6;
    v9 = v8;
    [-[THWInteractiveImageCalloutRep layout](self "layout")];
    [(THWInteractiveImageCalloutRep *)self convertNaturalRectToLayerRelative:?];
    [-[THWInteractiveImageCalloutRep canvas](self "canvas")];
    TSDRoundedRectForScale();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(CALayer *)self->_shadowLayer bounds];
    v19 = v18;
    v21 = v20;
    shadowLayer = self->_shadowLayer;
    v23 = *&CATransform3DIdentity.m33;
    *&v45.m31 = *&CATransform3DIdentity.m31;
    *&v45.m33 = v23;
    v24 = *&CATransform3DIdentity.m43;
    *&v45.m41 = *&CATransform3DIdentity.m41;
    *&v45.m43 = v24;
    v25 = *&CATransform3DIdentity.m13;
    *&v45.m11 = *&CATransform3DIdentity.m11;
    *&v45.m13 = v25;
    v26 = *&CATransform3DIdentity.m23;
    *&v45.m21 = *&CATransform3DIdentity.m21;
    *&v45.m23 = v26;
    [(CALayer *)shadowLayer setTransform:&v45];
    v27 = self->_shadowLayer;
    TSDCenterOfRect();
    TSDRectWithCenterAndSize();
    [(CALayer *)v27 setFrame:?];
    [(CALayer *)self->_shadowLayer bounds];
    if (v19 != v29 || v21 != v28)
    {
      [(CALayer *)self->_shadowLayer bounds];
      TSDRectWithSize();
      v47 = CGRectInset(v46, 2.0 * -0.5, 2.0 * -0.5);
      -[CALayer setShadowPath:](self->_shadowLayer, "setShadowPath:", [+[TSDBezierPath bezierPathWithRoundedRect:cornerRadius:](TSDBezierPath CGPath:v47.origin.x]);
    }

    v31 = -(2.0 * 0.5 + 2.0);
    v48.origin.x = v11;
    v48.origin.y = v13;
    v48.size.width = v15;
    v48.size.height = v17;
    v49 = CGRectInset(v48, v31, v31);
    x = v49.origin.x;
    y = v49.origin.y;
    width = v49.size.width;
    height = v49.size.height;
    v49.origin.y = v42;
    v49.origin.x = v43;
    v49.size.width = v7;
    v49.size.height = v9;
    v50 = CGRectInset(v49, v31, v31);
    v36 = v50.origin.x;
    v37 = v50.origin.y;
    v38 = v50.size.width;
    v39 = v50.size.height;
    memset(&v45, 0, sizeof(v45));
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v40 = CGRectGetHeight(v50);
    v51.origin.x = v36;
    v51.origin.y = v37;
    v51.size.width = v38;
    v51.size.height = v39;
    v41 = CGRectGetHeight(v51);
    CATransform3DMakeScale(&v45, 1.0, v40 / v41, 1.0);
    v44 = v45;
    [(CALayer *)self->_shadowLayer setTransform:&v44];
  }
}

- (void)p_updateGradientColors
{
  v3 = [-[THWInteractiveImageCalloutRep layout](self "layout")];
  v4 = [-[THWInteractiveImageCalloutRep layout](self "layout")];
  v5 = v4;
  if (v3)
  {
    gradientLayer = [(THWInteractiveImageCalloutRep *)self gradientLayer];
    if (v5)
    {
      v7 = [+[TSUColor colorWithRed:green:blue:alpha:](TSUColor CGColor:0.0];
      v8 = 1.0;
      v9 = 0.392156863;
      v10 = 0.819607843;
LABEL_7:
      v11 = [TSUColor colorWithRed:0.0 green:v9 blue:v10 alpha:v8];
      goto LABEL_11;
    }

    v7 = [+[TSUColor colorWithWhite:alpha:](TSUColor CGColor:0.850980392];
    v13 = 1.0;
    v12 = 0.850980392;
  }

  else
  {
    if (v4 && [-[THWInteractiveImageCalloutRep layout](self "layout")])
    {
      gradientLayer = [(THWInteractiveImageCalloutRep *)self gradientLayer];
      v7 = [+[TSUColor colorWithRed:green:blue:alpha:](TSUColor CGColor:0.0];
      v10 = 1.0;
      v8 = 1.0;
      v9 = 0.478431373;
      goto LABEL_7;
    }

    gradientLayer = [(THWInteractiveImageCalloutRep *)self gradientLayer];
    v7 = [+[TSUColor colorWithWhite:alpha:](TSUColor CGColor:1.0];
    v12 = 1.0;
    v13 = 1.0;
  }

  v11 = [TSUColor colorWithWhite:v12 alpha:v13];
LABEL_11:
  v14 = [NSArray arrayWithObjects:v7, [(TSUColor *)v11 CGColor], 0];

  [(CAGradientLayer *)gradientLayer setColors:v14];
}

- (BOOL)p_animatingCallouts
{
  p_host = [(THWInteractiveImageCalloutRep *)self p_host];

  return [p_host interactiveImageCalloutIsAnimating:self];
}

- (double)p_zoomDuration
{
  p_host = [(THWInteractiveImageCalloutRep *)self p_host];

  [p_host interactiveImageCalloutZoomAnimationDuration:self];
  return result;
}

- (void)p_updateGradient
{
  if (!self->_gradientLayer)
  {
    self->_gradientLayer = objc_alloc_init(TSDNoDefaultImplicitActionGradientLayer);
    [(CAGradientLayer *)self->_gradientLayer setDelegate:[(THWInteractiveImageCalloutRep *)self interactiveCanvasController]];
    [(CAGradientLayer *)self->_gradientLayer setLocations:[NSArray arrayWithObjects:[NSNumber numberWithDouble:0.0], [NSNumber numberWithDouble:1.0], 0]];
    [(CAGradientLayer *)self->_gradientLayer setMasksToBounds:0];
    gradientLayer = self->_gradientLayer;
    [-[THWInteractiveImageCalloutRep canvas](self "canvas")];
    [(CAGradientLayer *)gradientLayer setContentsScale:?];
    [(CAGradientLayer *)self->_gradientLayer setCornerRadius:4.0];
    [(CAGradientLayer *)self->_gradientLayer setBorderWidth:2.0];
    -[CAGradientLayer setBorderColor:](self->_gradientLayer, "setBorderColor:", [+[TSUColor colorWithWhite:alpha:](TSUColor CGColor:0.929411765]);
    [(CAGradientLayer *)self->_gradientLayer setAnchorPoint:0.5, 0.0];
  }

  [(THWInteractiveImageCalloutRep *)self p_updateGradientColors];
  if (self->_gradientLayer)
  {
    [-[THWInteractiveImageCalloutRep layout](self "layout")];
    [(THWInteractiveImageCalloutRep *)self convertNaturalRectToLayerRelative:?];
    [-[THWInteractiveImageCalloutRep canvas](self "canvas")];
    TSDRoundedRectForScale();
    [(CAGradientLayer *)self->_gradientLayer setFrame:?];
    v4 = self->_gradientLayer;

    [(CAGradientLayer *)v4 setContentsGravity:kCAGravityBottom];
  }
}

- (id)p_delayedAnimationForLayer:(id)layer withEvent:(id)event
{
  if (([-[THWInteractiveImageCalloutRep layout](self layout] & 1) != 0 || !objc_msgSend(-[THWInteractiveImageCalloutRep layout](self, "layout"), "selected") || !-[THWInteractiveImageCalloutRep p_animatingCallouts](self, "p_animatingCallouts"))
  {
    return 0;
  }

  [(THWInteractiveImageCalloutRep *)self p_zoomDuration];
  v7 = v6;
  v8 = -0.224999994 / v6 + 1.0;
  v9 = [CABasicAnimation animationWithKeyPath:event];
  [(CABasicAnimation *)v9 setBeginTime:v7 * v8];
  [(CABasicAnimation *)v9 setBeginTimeMode:kCAAnimationRelative];
  [(CABasicAnimation *)v9 setFillMode:kCAFillModeBoth];
  [(CABasicAnimation *)v9 setDuration:v7 * (1.0 - v8)];
  return v9;
}

- (void)p_updateLineAndShadows
{
  [-[THWInteractiveImageCalloutRep canvas](self "canvas")];
  v4 = v3;
  targetShadow = [(THWInteractiveImageCalloutRep *)self targetShadow];
  if (!targetShadow)
  {
    targetShadow = +[TSDNoDefaultImplicitActionLayer layer];
  }

  v6 = [TSUImage imageNamed:@"circle-shadow" inBundle:THBundle()];
  [-[THWInteractiveImageCalloutRep canvas](self "canvas")];
  v8 = v7;
  -[CALayer setContents:](targetShadow, "setContents:", [v6 CGImageForContentsScale:?]);
  [(CALayer *)targetShadow setContentsScale:v8];
  [v6 size];
  v10 = v9;
  [v6 size];
  [(CALayer *)targetShadow setBounds:0.0, 0.0, v10, v11];
  lineShadow = [(THWInteractiveImageCalloutRep *)self lineShadow];
  if (!lineShadow)
  {
    lineShadow = +[TSDNoDefaultImplicitActionLayer layer];
  }

  [(CALayer *)lineShadow setBounds:0.0, 0.0, 10.0, 6.0];
  -[CALayer setShadowColor:](lineShadow, "setShadowColor:", [+[TSUColor blackColor](TSUColor "blackColor")]);
  [(CALayer *)lineShadow setShadowOffset:0.0, 0.0];
  LODWORD(v13) = 0.5;
  [(CALayer *)lineShadow setShadowOpacity:v13];
  [(CALayer *)lineShadow setShadowRadius:v4];
  [(CALayer *)lineShadow bounds];
  CGRectInset(v16, -2.0, 2.0);
  TSDScaleRectAroundPoint();
  -[CALayer setShadowPath:](lineShadow, "setShadowPath:", [+[TSDBezierPath bezierPathWithRect:](TSDBezierPath CGPath]);
  [(CALayer *)lineShadow setMasksToBounds:1];
  line = [(THWInteractiveImageCalloutRep *)self line];
  if (!line)
  {
    line = +[TSDNoDefaultImplicitActionShapeLayer layer];
  }

  -[CAShapeLayer setStrokeColor:](line, "setStrokeColor:", [+[TSUColor whiteColor](TSUColor "whiteColor")]);
  [(CAShapeLayer *)line setFillColor:0];
  [(CAShapeLayer *)line setLineWidth:v4 + v4];
  -[CAShapeLayer setBackgroundColor:](line, "setBackgroundColor:", [objc_msgSend(+[TSUColor redColor](TSUColor "redColor")]);
  [(THWInteractiveImageCalloutRep *)self setLine:line];
  [(THWInteractiveImageCalloutRep *)self setTargetShadow:targetShadow];

  [(THWInteractiveImageCalloutRep *)self setLineShadow:lineShadow];
}

- (void)p_layoutLine
{
  p_host = [(THWInteractiveImageCalloutRep *)self p_host];
  [(THWInteractiveImageCalloutRep *)self targetPoint];
  [p_host interactiveImageCallout:self convertContentPointToUnscaledOverlayPoint:?];
  v5 = v4;
  v7 = v6;
  [(THWInteractiveImageCalloutRep *)self sourcePoint];
  [p_host interactiveImageCallout:self convertContentPointToUnscaledOverlayPoint:?];
  v9 = v8;
  v11 = v10;
  [(THWInteractiveImageCalloutRep *)self convertUnscaledPointToLayerRelative:v5, v7];
  v13 = v12;
  v15 = v14;
  [(THWInteractiveImageCalloutRep *)self convertUnscaledPointToLayerRelative:v9, v11];
  v17 = v16;
  v62 = v18;
  [-[THWInteractiveImageCalloutRep canvas](self "canvas")];
  v20 = v19 * 4.0;
  v21 = v20 + v20;
  v22 = (v20 + v20) * 0.5;
  v23 = v13 - v22;
  rect = v15 - v22;
  [(THWInteractiveImageCalloutRep *)self targetPoint];
  v25 = v24;
  [(THWInteractiveImageCalloutRep *)self sourcePoint];
  v27 = v25 - v26;
  [(THWInteractiveImageCalloutRep *)self targetPoint];
  v29 = v28;
  [(THWInteractiveImageCalloutRep *)self sourcePoint];
  v31 = v29 - v30;
  v32 = sqrt(v27 * v27 + v31 * v31);
  v63 = v31 / v32;
  v64 = v27 / v32;
  v33 = v20;
  v65 = v20;
  v34 = v13 - v27 / v32 * v20;
  v35 = v15 - v63 * v33;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, v17, v62);
  CGPathAddLineToPoint(Mutable, 0, v34, v35);
  v72.origin.x = v23;
  v72.origin.y = rect;
  v72.size.width = v21;
  v72.size.height = v21;
  CGPathAddEllipseInRect(Mutable, 0, v72);
  v37 = *&CATransform3DIdentity.m33;
  *&v71.m31 = *&CATransform3DIdentity.m31;
  *&v71.m33 = v37;
  v38 = *&CATransform3DIdentity.m43;
  *&v71.m41 = *&CATransform3DIdentity.m41;
  *&v71.m43 = v38;
  v39 = *&CATransform3DIdentity.m13;
  *&v71.m11 = *&CATransform3DIdentity.m11;
  *&v71.m13 = v39;
  v40 = *&CATransform3DIdentity.m23;
  *&v71.m21 = *&CATransform3DIdentity.m21;
  *&v71.m23 = v40;
  *&v70.m31 = *&v71.m31;
  *&v70.m33 = v37;
  *&v70.m41 = *&v71.m41;
  *&v70.m43 = v38;
  *&v70.m11 = *&v71.m11;
  *&v70.m13 = v39;
  *&v70.m21 = *&v71.m21;
  *&v70.m23 = v40;
  CATransform3DTranslate(&v71, &v70, 0.0, 1.0, 0.0);
  a = v71;
  CATransform3DTranslate(&v70, &a, (v17 + v34) * 0.5, (v62 + v35) * 0.5, 0.0);
  v71 = v70;
  v41 = v63;
  v42 = v64;
  v43 = atan2f(v41, v42);
  a = v71;
  CATransform3DRotate(&v70, &a, v43, 0.0, 0.0, 1.0);
  v71 = v70;
  TSDSubtractPoints();
  a = v71;
  CATransform3DScale(&v70, &a, (sqrt(v44 * v44 + v45 * v45) - v65) / 10.0, 1.0, 1.0);
  v71 = v70;
  if ([(THWInteractiveImageCalloutRep *)self p_animatingCallouts]&& [(CAShapeLayer *)[(THWInteractiveImageCalloutRep *)self line] path])
  {
    v46 = CGPathRetain([(CAShapeLayer *)[(THWInteractiveImageCalloutRep *)self line] path]);
    memset(&v70, 0, sizeof(v70));
    lineShadow = [(THWInteractiveImageCalloutRep *)self lineShadow];
    if (lineShadow)
    {
      [(CALayer *)lineShadow transform];
    }

    else
    {
      memset(&v70, 0, sizeof(v70));
    }

    [(CALayer *)[(THWInteractiveImageCalloutRep *)self targetShadow] position];
    v51 = v50;
    v52 = v49;
    if (v50 != v13 || v49 != v15 || (a = v70, b = v71, !CATransform3DEqualToTransform(&a, &b)) || !CGPathEqualToPath(v46, Mutable))
    {
      [(CAShapeLayer *)[(THWInteractiveImageCalloutRep *)self line] setPath:Mutable];
      v67 = v71;
      lineShadow2 = [(THWInteractiveImageCalloutRep *)self lineShadow];
      a = v67;
      [(CALayer *)lineShadow2 setTransform:&a];
      [(CALayer *)[(THWInteractiveImageCalloutRep *)self targetShadow] setPosition:v13, v15];
      [(THWInteractiveImageCalloutRep *)self p_zoomDuration];
      v55 = v54;
      [-[THWInteractiveImageCalloutRep interactiveCanvasController](self "interactiveCanvasController")];
      v57 = v56;
      v58 = +[CABasicAnimation animation];
      [v58 setDelegate:0];
      [v58 setKeyPath:@"path"];
      [v58 setFromValue:v46];
      [v58 setToValue:Mutable];
      [v58 setBeginTime:v57];
      [v58 setDuration:v55];
      [v58 setTimingFunction:{+[CAMediaTimingFunction functionWithName:](CAMediaTimingFunction, "functionWithName:", kCAMediaTimingFunctionEaseInEaseOut)}];
      [v58 setFillMode:kCAFillModeBoth];
      [(CAShapeLayer *)[(THWInteractiveImageCalloutRep *)self line] addAnimation:v58 forKey:@"path"];
      v59 = +[CABasicAnimation animation];
      [v59 setDelegate:0];
      [v59 setKeyPath:@"transform"];
      a = v70;
      [v59 setFromValue:{+[NSValue valueWithCATransform3D:](NSValue, "valueWithCATransform3D:", &a)}];
      a = v71;
      [v59 setToValue:{+[NSValue valueWithCATransform3D:](NSValue, "valueWithCATransform3D:", &a)}];
      [v59 setBeginTime:v57];
      [v59 setDuration:v55];
      [v59 setTimingFunction:{+[CAMediaTimingFunction functionWithName:](CAMediaTimingFunction, "functionWithName:", kCAMediaTimingFunctionEaseInEaseOut)}];
      [v59 setFillMode:kCAFillModeBoth];
      [(CALayer *)[(THWInteractiveImageCalloutRep *)self lineShadow] addAnimation:v59 forKey:@"transform"];
      v60 = +[CABasicAnimation animation];
      [v60 setDelegate:0];
      [v60 setKeyPath:@"position"];
      [v60 setFromValue:{+[NSValue valueWithCGPoint:](NSValue, "valueWithCGPoint:", v51, v52)}];
      [v60 setToValue:{+[NSValue valueWithCGPoint:](NSValue, "valueWithCGPoint:", v13, v15)}];
      [v60 setBeginTime:v57];
      [v60 setDuration:v55];
      [v60 setTimingFunction:{+[CAMediaTimingFunction functionWithName:](CAMediaTimingFunction, "functionWithName:", kCAMediaTimingFunctionEaseInEaseOut)}];
      [v60 setFillMode:kCAFillModeBoth];
      [(CALayer *)[(THWInteractiveImageCalloutRep *)self targetShadow] addAnimation:v60 forKey:@"position"];
    }

    CGPathRelease(v46);
  }

  else
  {
    [(CAShapeLayer *)[(THWInteractiveImageCalloutRep *)self line] setPath:Mutable];
    v66 = v71;
    lineShadow3 = [(THWInteractiveImageCalloutRep *)self lineShadow];
    v70 = v66;
    [(CALayer *)lineShadow3 setTransform:&v70];
    [(CALayer *)[(THWInteractiveImageCalloutRep *)self targetShadow] setPosition:v13, v15];
  }

  CGPathRelease(Mutable);
}

- (void)control:(id)control repWasAdded:(id)added
{
  objc_opt_class();
  v5 = TSUDynamicCast();

  [v5 setDelegate:self];
}

- (void)control:(id)control repWillBeRemoved:(id)removed
{
  objc_opt_class();
  v4 = TSUDynamicCast();

  [v4 setDelegate:0];
}

- (BOOL)handleGesture:(id)gesture
{
  gestureState = [gesture gestureState];
  if (gestureState > 3)
  {
    if ((gestureState - 4) >= 2)
    {
      return 1;
    }

LABEL_8:
    layout = [(THWInteractiveImageCalloutRep *)self layout];
    v7 = 0;
LABEL_13:
    [layout setHighlighted:v7];
    return 1;
  }

  if (gestureState == 1)
  {
    layout = [(THWInteractiveImageCalloutRep *)self layout];
    v7 = 1;
    goto LABEL_13;
  }

  if (gestureState == 2)
  {
    if (![-[THWInteractiveImageCalloutRep p_host](self "p_host")])
    {
      [gesture naturalLocationForRep:self];
      v8 = [(THWInteractiveImageCalloutRep *)self containsPoint:?];
      layout = [(THWInteractiveImageCalloutRep *)self layout];
      v7 = v8;
      goto LABEL_13;
    }

    objc_opt_class();
    [TSUDynamicCast() cancel];
    goto LABEL_8;
  }

  if (gestureState == 3 && [-[THWInteractiveImageCalloutRep layout](self "layout")])
  {
    [-[THWInteractiveImageCalloutRep layout](self "layout")];
    [-[THWInteractiveImageCalloutRep p_host](self "p_host")];
  }

  return 1;
}

- (id)animationForRepLayer:(id)layer withEvent:(id)event
{
  if ((self->_gradientLayer != layer || ([event isEqualToString:@"bounds"] & 1) == 0) && (self->_shadowLayer != layer || (objc_msgSend(event, "isEqualToString:", @"transform") & 1) == 0 && !objc_msgSend(event, "isEqualToString:", @"position")))
  {
    return 0;
  }

  return [(THWInteractiveImageCalloutRep *)self p_delayedAnimationForLayer:layer withEvent:event];
}

- (id)animationForChildRep:(id)rep layer:(id)layer withEvent:(id)event
{
  if (([event isEqualToString:@"bounds"] & 1) == 0 && !objc_msgSend(event, "isEqualToString:", @"position") || objc_msgSend(rep, "parentRep") != self || objc_msgSend(-[THWInteractiveImageCalloutRep interactiveCanvasController](self, "interactiveCanvasController"), "layerForRep:", rep) != layer)
  {
    return 0;
  }

  return [(THWInteractiveImageCalloutRep *)self p_delayedAnimationForLayer:layer withEvent:event];
}

@end