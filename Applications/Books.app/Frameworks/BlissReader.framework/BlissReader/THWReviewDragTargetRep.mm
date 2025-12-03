@interface THWReviewDragTargetRep
- (id)p_questionHost;
- (void)addAdditionalChildLayersToArray:(id)array;
- (void)dealloc;
- (void)p_addPulseAnimation;
- (void)p_addRelaxAnimation;
- (void)p_updateLayer;
- (void)setChoiceState:(int)state;
- (void)setRadioState:(int)state animated:(BOOL)animated;
@end

@implementation THWReviewDragTargetRep

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewDragTargetRep;
  [(THWReviewDragTargetRep *)&v3 dealloc];
}

- (void)addAdditionalChildLayersToArray:(id)array
{
  v5.receiver = self;
  v5.super_class = THWReviewDragTargetRep;
  [(THWReviewDragTargetRep *)&v5 addAdditionalChildLayersToArray:?];
  [(THWReviewDragTargetRep *)self p_updateLayer];
  if (self->_buttonLayer)
  {
    [array addObject:?];
  }
}

- (void)p_updateLayer
{
  if (self->_choiceState >= 4u)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->_radioState >= 3u)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (!self->_buttonLayer)
  {
    self->_buttonLayer = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    [(CALayer *)self->_buttonLayer setDelegate:[(THWReviewDragTargetRep *)self interactiveCanvasController]];
  }

  v3 = [-[THWReviewDragTargetRep p_questionHost](self "p_questionHost")];
  [-[THWReviewDragTargetRep canvas](self "canvas")];
  v4 = [v3 CGImageForContentsScale:?];
  if ([(CALayer *)self->_buttonLayer contents]!= v4)
  {
    [(CALayer *)self->_buttonLayer setContents:v4];
  }

  [-[THWReviewDragTargetRep canvas](self "canvas")];
  memset(&v7, 0, sizeof(v7));
  CGAffineTransformMakeScale(&v7, v5, v5);
  [v3 size];
  TSDRectWithSize();
  [(CALayer *)self->_buttonLayer setBounds:?];
  [(CALayer *)self->_buttonLayer setPosition:CGPointZero.x, CGPointZero.y];
  v6 = v7;
  [(CALayer *)self->_buttonLayer setAffineTransform:&v6];
}

- (void)setChoiceState:(int)state
{
  if (self->_choiceState != state)
  {
    self->_choiceState = state;
    [(THWReviewDragTargetRep *)self p_updateLayer];
  }
}

- (void)setRadioState:(int)state animated:(BOOL)animated
{
  if (self->_radioState == state)
  {
    return;
  }

  animatedCopy = animated;
  self->_radioState = state;
  [(THWReviewDragTargetRep *)self p_updateLayer];
  if (!animatedCopy)
  {
    return;
  }

  if (state == 2)
  {
    goto LABEL_6;
  }

  if (state != 1)
  {
    if (state)
    {
      return;
    }

LABEL_6:

    [(THWReviewDragTargetRep *)self p_addRelaxAnimation];
    return;
  }

  [(THWReviewDragTargetRep *)self p_addPulseAnimation];
}

- (void)p_addPulseAnimation
{
  +[CATransaction begin];
  v3 = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.xy"];
  [-[CALayer valueForKeyPath:](-[CALayer presentationLayer](self->_buttonLayer "presentationLayer")];
  v4 = [NSNumber numberWithFloat:?];
  LODWORD(v5) = 1.5;
  v6 = [NSNumber numberWithFloat:v5];
  LODWORD(v7) = 1067869798;
  [(CAKeyframeAnimation *)v3 setValues:[NSArray arrayWithObjects:v4, v6, [NSNumber numberWithFloat:v7], 0]];
  [(CAKeyframeAnimation *)v3 setTimingFunctions:[NSArray arrayWithObjects:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], 0]];
  v8 = [NSNumber numberWithFloat:0.0];
  LODWORD(v9) = 0.5;
  v10 = [NSNumber numberWithFloat:v9];
  LODWORD(v11) = 1.0;
  [(CAKeyframeAnimation *)v3 setKeyTimes:[NSArray arrayWithObjects:v8, v10, [NSNumber numberWithFloat:v11], 0]];
  [(CAKeyframeAnimation *)v3 setDuration:0.3];
  [(CAKeyframeAnimation *)v3 setFillMode:kCAFillModeForwards];
  [(CAKeyframeAnimation *)v3 setRemovedOnCompletion:0];
  [(CALayer *)self->_buttonLayer removeAnimationForKey:kTHWReviewDragTargetRelaxAnimationName];
  [(CALayer *)self->_buttonLayer addAnimation:v3 forKey:kTHWReviewDragTargetPulseAnimationName];

  +[CATransaction commit];
}

- (void)p_addRelaxAnimation
{
  +[CATransaction begin];
  [-[CALayer valueForKeyPath:](-[CALayer presentationLayer](self->_buttonLayer "presentationLayer")];
  v4 = v3;
  v5 = [CABasicAnimation animationWithKeyPath:@"transform.scale.xy"];
  [(CABasicAnimation *)v5 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
  [(CABasicAnimation *)v5 setDuration:0.15];
  LODWORD(v6) = v4;
  [(CABasicAnimation *)v5 setFromValue:[NSNumber numberWithFloat:v6]];
  LODWORD(v7) = 1.0;
  [(CABasicAnimation *)v5 setToValue:[NSNumber numberWithFloat:v7]];
  [(CABasicAnimation *)v5 setFillMode:kCAFillModeForwards];
  [(CABasicAnimation *)v5 setRemovedOnCompletion:1];
  [(CALayer *)self->_buttonLayer removeAnimationForKey:kTHWReviewDragTargetPulseAnimationName];
  [(CALayer *)self->_buttonLayer addAnimation:v5 forKey:kTHWReviewDragTargetRelaxAnimationName];

  +[CATransaction commit];
}

- (id)p_questionHost
{
  interactiveCanvasController = [(THWReviewDragTargetRep *)self interactiveCanvasController];

  return [interactiveCanvasController ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWReviewQuestionHosting];
}

@end