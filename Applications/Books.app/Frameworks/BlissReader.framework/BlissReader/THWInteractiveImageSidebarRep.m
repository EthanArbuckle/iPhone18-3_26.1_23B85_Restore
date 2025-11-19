@interface THWInteractiveImageSidebarRep
- (id)additionalLayersUnderLayer;
- (id)animationForChildRep:(id)a3 layer:(id)a4 withEvent:(id)a5;
- (id)animationForRepLayer:(id)a3 withEvent:(id)a4;
- (id)p_animationForEvent:(id)a3 duration:(double)a4 delayFactor:(double)a5 durationFactor:(double)a6;
- (id)p_calloutForRep:(id)a3;
- (id)p_host;
- (id)p_layerForCallout:(id)a3;
- (void)control:(id)a3 repWasAdded:(id)a4;
- (void)control:(id)a3 repWillBeRemoved:(id)a4;
- (void)dealloc;
- (void)didUpdateLayer:(id)a3;
- (void)p_addFrameAnimationForLayer:(id)a3 duration:(double)a4;
- (void)p_createGradientBackgroundLayerIfNeeded;
- (void)setVisible:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation THWInteractiveImageSidebarRep

- (void)dealloc
{
  [(CAGradientLayer *)self->_gradientLayer setDelegate:0];

  v3.receiver = self;
  v3.super_class = THWInteractiveImageSidebarRep;
  [(THWInteractiveImageSidebarRep *)&v3 dealloc];
}

- (id)p_host
{
  v3 = [(THWInteractiveImageSidebarRep *)self interactiveCanvasController];

  return [v3 ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWInteractiveImageSidebarRepHosting];
}

- (void)p_createGradientBackgroundLayerIfNeeded
{
  if (!self->_gradientLayer)
  {
    self->_gradientLayer = objc_alloc_init(CAGradientLayer);
    [(CAGradientLayer *)self->_gradientLayer setDelegate:[(THWInteractiveImageSidebarRep *)self interactiveCanvasController]];
    [(CAGradientLayer *)self->_gradientLayer setLocations:[NSArray arrayWithObjects:[NSNumber numberWithDouble:0.0], [NSNumber numberWithDouble:1.0], 0]];
    -[CAGradientLayer setColors:](self->_gradientLayer, "setColors:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", [+[TSUColor colorWithWhite:alpha:](TSUColor CGColor:0.960784314], [+[TSUColor colorWithWhite:alpha:](TSUColor CGColor:0.905882353], 0));
    [(CAGradientLayer *)self->_gradientLayer setBorderWidth:2.0];
    -[CAGradientLayer setBorderColor:](self->_gradientLayer, "setBorderColor:", [+[TSUColor whiteColor](TSUColor "whiteColor")]);
    [(CAGradientLayer *)self->_gradientLayer setShadowOffset:0.0, 1.0];
    LODWORD(v3) = 1058642330;
    [(CAGradientLayer *)self->_gradientLayer setShadowOpacity:v3];
    gradientLayer = self->_gradientLayer;
    v5 = [+[TSUColor blackColor](TSUColor "blackColor")];

    [(CAGradientLayer *)gradientLayer setShadowColor:v5];
  }
}

- (id)additionalLayersUnderLayer
{
  [(THWInteractiveImageSidebarRep *)self p_createGradientBackgroundLayerIfNeeded];
  if (!self->_gradientLayer)
  {
    return 0;
  }

  [(THWInteractiveImageSidebarRep *)self updateLayerGeometryFromLayout:?];
  gradientLayer = self->_gradientLayer;
  return [NSArray arrayWithObjects:&gradientLayer count:1];
}

- (void)setVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(THWInteractiveImageSidebarRep *)self interactiveCanvasController];
  if (v4)
  {
    v8 = v7;
    [v7 beginAnimations:@"sidebar visibility" context:0];
    [-[THWInteractiveImageSidebarRep p_host](self "p_host")];
    [v8 setAnimationDuration:?];
    [v8 setAnimationUseRepFiltering:1];
    [-[THWInteractiveImageSidebarRep layout](self "layout")];
    [v8 layoutIfNeeded];

    [v8 commitAnimations];
  }

  else
  {
    v9 = [(THWInteractiveImageSidebarRep *)self layout];

    [v9 setHidden:!v5];
  }
}

- (void)p_addFrameAnimationForLayer:(id)a3 duration:(double)a4
{
  [a3 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [a3 position];
  v13 = v12;
  v14 = -0.35 / a4 + 1.0;
  v15 = [CABasicAnimation animationWithKeyPath:@"bounds"];
  v16 = v14 * a4;
  [(CABasicAnimation *)v15 setBeginTime:v14 * a4];
  v17 = kCAAnimationRelative;
  [(CABasicAnimation *)v15 setBeginTimeMode:kCAAnimationRelative];
  [(CABasicAnimation *)v15 setFillMode:kCAFillModeBoth];
  [(CABasicAnimation *)v15 setRemovedOnCompletion:1];
  v18 = (1.0 - v14) * a4;
  [(CABasicAnimation *)v15 setDuration:v18];
  [(CABasicAnimation *)v15 setFromValue:[NSValue valueWithCGRect:v7, v9, v11, 0.0]];
  [(CABasicAnimation *)v15 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
  [a3 addAnimation:v15 forKey:@"bounds"];
  v19 = [CABasicAnimation animationWithKeyPath:@"position"];
  [(CABasicAnimation *)v19 setBeginTime:v16];
  [(CABasicAnimation *)v19 setBeginTimeMode:v17];
  [(CABasicAnimation *)v19 setFillMode:kCAFillModeBoth];
  [(CABasicAnimation *)v19 setRemovedOnCompletion:1];
  [(CABasicAnimation *)v19 setDuration:v18];
  [(CABasicAnimation *)v19 setFromValue:[NSValue valueWithCGPoint:v13, 0.0]];
  [(CABasicAnimation *)v19 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];

  [a3 addAnimation:v19 forKey:@"position"];
}

- (id)p_layerForCallout:(id)a3
{
  v4 = [-[THWInteractiveImageSidebarRep layout](self "layout")];
  if (!v4)
  {
    return 0;
  }

  v5 = [-[THWInteractiveImageSidebarRep interactiveCanvasController](self "interactiveCanvasController")];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [(THWInteractiveImageSidebarRep *)self interactiveCanvasController];

  return [v7 layerForRep:v6];
}

- (void)didUpdateLayer:(id)a3
{
  v13.receiver = self;
  v13.super_class = THWInteractiveImageSidebarRep;
  [(THWInteractiveImageSidebarRep *)&v13 didUpdateLayer:a3];
  v4 = [-[THWInteractiveImageSidebarRep p_host](self "p_host")];
  v5 = [-[THWInteractiveImageSidebarRep interactiveCanvasController](self "interactiveCanvasController")];
  v7 = v5;
  if (!v4)
  {
    LODWORD(v6) = 1064514355;
    [v5 setOpacity:v6];
    [(CAGradientLayer *)self->_gradientLayer setShadowRadius:0.0];
    [(CAGradientLayer *)self->_gradientLayer setCornerRadius:0.0];
LABEL_9:
    [-[THWInteractiveImageSidebarRep p_layerForCallout:](self p_layerForCallout:{objc_msgSend(-[THWInteractiveImageSidebarRep layout](self, "layout"), "previousCallout")), "setOpacity:", 0.0}];
    goto LABEL_10;
  }

  if ([-[THWInteractiveImageSidebarRep layout](self "layout")])
  {
    v8 = [-[THWInteractiveImageSidebarRep layout](self "layout")];
    LODWORD(v9) = 1064514355;
    if (v8)
    {
      *&v9 = 0.0;
    }
  }

  else
  {
    v9 = 0.0;
  }

  [v7 setOpacity:v9];
  [(CAGradientLayer *)self->_gradientLayer setShadowRadius:2.0];
  [(CAGradientLayer *)self->_gradientLayer setCornerRadius:4.0];
  if ([-[THWInteractiveImageSidebarRep layout](self "layout")])
  {
    goto LABEL_9;
  }

LABEL_10:
  [-[THWInteractiveImageSidebarRep interactiveCanvasController](self "interactiveCanvasController")];
  if (v10 > 0.0)
  {
    v11 = v10;
    v12 = -[THWInteractiveImageSidebarRep p_layerForCallout:](self, "p_layerForCallout:", [-[THWInteractiveImageSidebarRep layout](self "layout")]);
    if (v12)
    {
      [(THWInteractiveImageSidebarRep *)self p_addFrameAnimationForLayer:v12 duration:v11];
    }
  }
}

- (id)p_animationForEvent:(id)a3 duration:(double)a4 delayFactor:(double)a5 durationFactor:(double)a6
{
  v9 = [CABasicAnimation animationWithKeyPath:a3];
  [(CABasicAnimation *)v9 setDuration:a4 * a6];
  [(CABasicAnimation *)v9 setBeginTime:a4 * a5];
  [(CABasicAnimation *)v9 setBeginTimeMode:kCAAnimationRelative];
  [(CABasicAnimation *)v9 setFillMode:kCAFillModeBoth];
  [(CABasicAnimation *)v9 setRemovedOnCompletion:1];
  [(CABasicAnimation *)v9 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
  return v9;
}

- (id)animationForRepLayer:(id)a3 withEvent:(id)a4
{
  v7 = [-[THWInteractiveImageSidebarRep p_host](self "p_host")];
  [-[THWInteractiveImageSidebarRep interactiveCanvasController](self "interactiveCanvasController")];
  if (v8 <= 0.0)
  {
    return 0;
  }

  v9 = v8;
  if (v7 && (![-[THWInteractiveImageSidebarRep layout](self "layout")] || !objc_msgSend(-[THWInteractiveImageSidebarRep layout](self, "layout"), "currentCallout")) && ((objc_msgSend(a4, "isEqualToString:", @"bounds") & 1) != 0 || objc_msgSend(a4, "isEqualToString:", @"position")) && (objc_msgSend(-[THWInteractiveImageSidebarRep interactiveCanvasController](self, "interactiveCanvasController"), "layerForRep:", self) == a3 || self->_gradientLayer == a3))
  {

    return +[NSNull null];
  }

  else
  {
    if ((([a4 isEqualToString:@"position"] & 1) != 0 || objc_msgSend(a4, "isEqualToString:", @"bounds")) && (self->_gradientLayer == a3 || objc_msgSend(-[THWInteractiveImageSidebarRep interactiveCanvasController](self, "interactiveCanvasController"), "layerForRep:", self) == a3))
    {
      if (v7)
      {
        v11 = 1.0 - (-0.25 / v9 + 1.0);
        v12 = self;
        v13 = a4;
        v14 = v9;
        v15 = -0.25 / v9 + 1.0;
      }

      else
      {
        v15 = 0.0;
        v12 = self;
        v13 = a4;
        v14 = v9;
        v11 = -0.25 / v9 + 1.0;
      }
    }

    else
    {
      if (![a4 isEqualToString:@"opacity"] || objc_msgSend(-[THWInteractiveImageSidebarRep interactiveCanvasController](self, "interactiveCanvasController"), "containerLayerForRep:", self) != a3)
      {
        return 0;
      }

      v15 = -0.25 / v9 + 1.0;
      v11 = 1.0 - v15;
      v12 = self;
      v13 = a4;
      v14 = v9;
    }

    return [(THWInteractiveImageSidebarRep *)v12 p_animationForEvent:v13 duration:v14 delayFactor:v15 durationFactor:v11];
  }
}

- (id)animationForChildRep:(id)a3 layer:(id)a4 withEvent:(id)a5
{
  if (![a5 isEqualToString:@"opacity"] || -[THWInteractiveImageSidebarRep p_layerForCallout:](self, "p_layerForCallout:", objc_msgSend(-[THWInteractiveImageSidebarRep layout](self, "layout"), "previousCallout")) != a4)
  {
    return 0;
  }

  [-[THWInteractiveImageSidebarRep interactiveCanvasController](self "interactiveCanvasController")];

  return [THWInteractiveImageSidebarRep p_animationForEvent:"p_animationForEvent:duration:delayFactor:durationFactor:" duration:a5 delayFactor:? durationFactor:?];
}

- (id)p_calloutForRep:(id)a3
{
  objc_opt_class();
  [a3 info];
  v4 = TSUDynamicCast();

  return [v4 instanceData];
}

- (void)control:(id)a3 repWasAdded:(id)a4
{
  objc_opt_class();
  v5 = TSUDynamicCast();

  [v5 setDelegate:self];
}

- (void)control:(id)a3 repWillBeRemoved:(id)a4
{
  objc_opt_class();
  v4 = TSUDynamicCast();

  [v4 setDelegate:0];
}

@end