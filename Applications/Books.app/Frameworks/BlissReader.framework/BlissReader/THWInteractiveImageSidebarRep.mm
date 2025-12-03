@interface THWInteractiveImageSidebarRep
- (id)additionalLayersUnderLayer;
- (id)animationForChildRep:(id)rep layer:(id)layer withEvent:(id)event;
- (id)animationForRepLayer:(id)layer withEvent:(id)event;
- (id)p_animationForEvent:(id)event duration:(double)duration delayFactor:(double)factor durationFactor:(double)durationFactor;
- (id)p_calloutForRep:(id)rep;
- (id)p_host;
- (id)p_layerForCallout:(id)callout;
- (void)control:(id)control repWasAdded:(id)added;
- (void)control:(id)control repWillBeRemoved:(id)removed;
- (void)dealloc;
- (void)didUpdateLayer:(id)layer;
- (void)p_addFrameAnimationForLayer:(id)layer duration:(double)duration;
- (void)p_createGradientBackgroundLayerIfNeeded;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated;
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
  interactiveCanvasController = [(THWInteractiveImageSidebarRep *)self interactiveCanvasController];

  return [interactiveCanvasController ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWInteractiveImageSidebarRepHosting];
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

- (void)setVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  interactiveCanvasController = [(THWInteractiveImageSidebarRep *)self interactiveCanvasController];
  if (animatedCopy)
  {
    v8 = interactiveCanvasController;
    [interactiveCanvasController beginAnimations:@"sidebar visibility" context:0];
    [-[THWInteractiveImageSidebarRep p_host](self "p_host")];
    [v8 setAnimationDuration:?];
    [v8 setAnimationUseRepFiltering:1];
    [-[THWInteractiveImageSidebarRep layout](self "layout")];
    [v8 layoutIfNeeded];

    [v8 commitAnimations];
  }

  else
  {
    layout = [(THWInteractiveImageSidebarRep *)self layout];

    [layout setHidden:!visibleCopy];
  }
}

- (void)p_addFrameAnimationForLayer:(id)layer duration:(double)duration
{
  [layer bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [layer position];
  v13 = v12;
  v14 = -0.35 / duration + 1.0;
  v15 = [CABasicAnimation animationWithKeyPath:@"bounds"];
  v16 = v14 * duration;
  [(CABasicAnimation *)v15 setBeginTime:v14 * duration];
  v17 = kCAAnimationRelative;
  [(CABasicAnimation *)v15 setBeginTimeMode:kCAAnimationRelative];
  [(CABasicAnimation *)v15 setFillMode:kCAFillModeBoth];
  [(CABasicAnimation *)v15 setRemovedOnCompletion:1];
  v18 = (1.0 - v14) * duration;
  [(CABasicAnimation *)v15 setDuration:v18];
  [(CABasicAnimation *)v15 setFromValue:[NSValue valueWithCGRect:v7, v9, v11, 0.0]];
  [(CABasicAnimation *)v15 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
  [layer addAnimation:v15 forKey:@"bounds"];
  v19 = [CABasicAnimation animationWithKeyPath:@"position"];
  [(CABasicAnimation *)v19 setBeginTime:v16];
  [(CABasicAnimation *)v19 setBeginTimeMode:v17];
  [(CABasicAnimation *)v19 setFillMode:kCAFillModeBoth];
  [(CABasicAnimation *)v19 setRemovedOnCompletion:1];
  [(CABasicAnimation *)v19 setDuration:v18];
  [(CABasicAnimation *)v19 setFromValue:[NSValue valueWithCGPoint:v13, 0.0]];
  [(CABasicAnimation *)v19 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];

  [layer addAnimation:v19 forKey:@"position"];
}

- (id)p_layerForCallout:(id)callout
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
  interactiveCanvasController = [(THWInteractiveImageSidebarRep *)self interactiveCanvasController];

  return [interactiveCanvasController layerForRep:v6];
}

- (void)didUpdateLayer:(id)layer
{
  v13.receiver = self;
  v13.super_class = THWInteractiveImageSidebarRep;
  [(THWInteractiveImageSidebarRep *)&v13 didUpdateLayer:layer];
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

- (id)p_animationForEvent:(id)event duration:(double)duration delayFactor:(double)factor durationFactor:(double)durationFactor
{
  v9 = [CABasicAnimation animationWithKeyPath:event];
  [(CABasicAnimation *)v9 setDuration:duration * durationFactor];
  [(CABasicAnimation *)v9 setBeginTime:duration * factor];
  [(CABasicAnimation *)v9 setBeginTimeMode:kCAAnimationRelative];
  [(CABasicAnimation *)v9 setFillMode:kCAFillModeBoth];
  [(CABasicAnimation *)v9 setRemovedOnCompletion:1];
  [(CABasicAnimation *)v9 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
  return v9;
}

- (id)animationForRepLayer:(id)layer withEvent:(id)event
{
  v7 = [-[THWInteractiveImageSidebarRep p_host](self "p_host")];
  [-[THWInteractiveImageSidebarRep interactiveCanvasController](self "interactiveCanvasController")];
  if (v8 <= 0.0)
  {
    return 0;
  }

  v9 = v8;
  if (v7 && (![-[THWInteractiveImageSidebarRep layout](self "layout")] || !objc_msgSend(-[THWInteractiveImageSidebarRep layout](self, "layout"), "currentCallout")) && ((objc_msgSend(event, "isEqualToString:", @"bounds") & 1) != 0 || objc_msgSend(event, "isEqualToString:", @"position")) && (objc_msgSend(-[THWInteractiveImageSidebarRep interactiveCanvasController](self, "interactiveCanvasController"), "layerForRep:", self) == layer || self->_gradientLayer == layer))
  {

    return +[NSNull null];
  }

  else
  {
    if ((([event isEqualToString:@"position"] & 1) != 0 || objc_msgSend(event, "isEqualToString:", @"bounds")) && (self->_gradientLayer == layer || objc_msgSend(-[THWInteractiveImageSidebarRep interactiveCanvasController](self, "interactiveCanvasController"), "layerForRep:", self) == layer))
    {
      if (v7)
      {
        v11 = 1.0 - (-0.25 / v9 + 1.0);
        selfCopy3 = self;
        eventCopy3 = event;
        v14 = v9;
        v15 = -0.25 / v9 + 1.0;
      }

      else
      {
        v15 = 0.0;
        selfCopy3 = self;
        eventCopy3 = event;
        v14 = v9;
        v11 = -0.25 / v9 + 1.0;
      }
    }

    else
    {
      if (![event isEqualToString:@"opacity"] || objc_msgSend(-[THWInteractiveImageSidebarRep interactiveCanvasController](self, "interactiveCanvasController"), "containerLayerForRep:", self) != layer)
      {
        return 0;
      }

      v15 = -0.25 / v9 + 1.0;
      v11 = 1.0 - v15;
      selfCopy3 = self;
      eventCopy3 = event;
      v14 = v9;
    }

    return [(THWInteractiveImageSidebarRep *)selfCopy3 p_animationForEvent:eventCopy3 duration:v14 delayFactor:v15 durationFactor:v11];
  }
}

- (id)animationForChildRep:(id)rep layer:(id)layer withEvent:(id)event
{
  if (![event isEqualToString:@"opacity"] || -[THWInteractiveImageSidebarRep p_layerForCallout:](self, "p_layerForCallout:", objc_msgSend(-[THWInteractiveImageSidebarRep layout](self, "layout"), "previousCallout")) != layer)
  {
    return 0;
  }

  [-[THWInteractiveImageSidebarRep interactiveCanvasController](self "interactiveCanvasController")];

  return [THWInteractiveImageSidebarRep p_animationForEvent:"p_animationForEvent:duration:delayFactor:durationFactor:" duration:event delayFactor:? durationFactor:?];
}

- (id)p_calloutForRep:(id)rep
{
  objc_opt_class();
  [rep info];
  v4 = TSUDynamicCast();

  return [v4 instanceData];
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

@end