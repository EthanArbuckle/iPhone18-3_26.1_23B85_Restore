@interface THWButtonControlRep
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)p_interactionEnabled;
- (CALayer)highlightLayer;
- (THWButtonControlDelegate)delegate;
- (id)additionalLayersOverLayer;
- (id)p_imageForState:(int)state highlighted:(BOOL)highlighted;
- (int)state;
- (void)addAdditionalChildLayersToArray:(id)array;
- (void)dealloc;
- (void)didUpdateLayer:(id)layer;
- (void)p_interactionDidEnd;
- (void)p_interactionWillStart;
- (void)screenScaleDidChange;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation THWButtonControlRep

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWButtonControlRep;
  [(THWButtonControlRep *)&v3 dealloc];
}

- (THWButtonControlDelegate)delegate
{
  if (*(&self->_delegate + 1))
  {
    return *(&self->_delegate + 1);
  }

  [(THWButtonControlRep *)self parentRep];

  return TSUProtocolCast();
}

- (void)screenScaleDidChange
{
  v4.receiver = self;
  v4.super_class = THWButtonControlRep;
  [(THWButtonControlRep *)&v4 screenScaleDidChange];
  delegate = [(THWButtonControlRep *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if ([(THWButtonControlDelegate *)delegate buttonControlUseContentsScaleForImageCache:self])
    {
      [*(&self->_cachedImages + 1) removeAllObjects];
    }
  }
}

- (int)state
{
  delegate = [(THWButtonControlRep *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWButtonControlDelegate *)delegate buttonControlState:self];
}

- (id)p_imageForState:(int)state highlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5 = *&state;
  v7 = *(&self->_cachedImages + 1);
  if (!v7)
  {
    v7 = objc_alloc_init(TSUIntegerKeyDictionary);
    *(&self->_cachedImages + 1) = v7;
  }

  v8 = [(TSUIntegerKeyDictionary *)v7 objectForKey:highlightedCopy | (2 * v5)];
  if (!v8)
  {
    v8 = [(THWButtonControlDelegate *)[(THWButtonControlRep *)self delegate] buttonControl:self imageForState:v5 highlighted:highlightedCopy];
    if (!v8 && highlightedCopy)
    {
      v8 = [(THWButtonControlRep *)self p_imageForState:v5 highlighted:0];
    }

    if (v5 == 1 && !v8)
    {
      v8 = [(THWButtonControlRep *)self p_imageForState:0 highlighted:highlightedCopy];
      if (v8)
      {
LABEL_12:
        [*(&self->_cachedImages + 1) setObject:v8 forKey:highlightedCopy | (2 * v5)];
        return v8;
      }

      v8 = [(THWButtonControlRep *)self p_imageForState:0 highlighted:0];
    }

    if (v8)
    {
      goto LABEL_12;
    }
  }

  return v8;
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(THWControlRep *)self invalidateLayers];
    delegate = [(THWButtonControlRep *)self delegate];
    if (objc_opt_respondsToSelector())
    {

      [(THWButtonControlDelegate *)delegate buttonControlHighlightedDidChange:self];
    }
  }
}

- (BOOL)p_interactionEnabled
{
  controlHostRep = [(THWControlRep *)self controlHostRep];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  layout = [(THWButtonControlRep *)self layout];

  return [controlHostRep control:layout isInteractionEnabledForRep:self];
}

- (BOOL)canHandleGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  if (gestureKind != TSWPImmediatePress || [(THWButtonControlRep *)self state]== 2)
  {
    return 0;
  }

  return [(THWButtonControlRep *)self p_interactionEnabled];
}

- (BOOL)handleGesture:(id)gesture
{
  gestureState = [gesture gestureState];
  if (gestureState <= 3)
  {
    switch(gestureState)
    {
      case 1:
        [(THWButtonControlRep *)self p_interactionWillStart];
        selfCopy3 = self;
        v7 = &dword_0 + 1;
        break;
      case 2:
        if ([objc_msgSend(-[THWButtonControlRep interactiveCanvasController](self "interactiveCanvasController")])
        {
          objc_opt_class();
          [TSUDynamicCast() cancel];
          selfCopy3 = self;
          v7 = 0;
        }

        else
        {
          [gesture naturalLocationForRep:self];
          v7 = [(THWButtonControlRep *)self containsPoint:?];
          selfCopy3 = self;
        }

        break;
      case 3:
        if ([(THWButtonControlRep *)self highlighted])
        {
          [(THWButtonControlRep *)self setHighlighted:0];
          [(THWButtonControlDelegate *)[(THWButtonControlRep *)self delegate] buttonControlWasPressed:self];
        }

        goto LABEL_9;
      default:
        return 1;
    }

    [(THWButtonControlRep *)selfCopy3 setHighlighted:v7];
    return 1;
  }

  if ((gestureState - 4) < 2)
  {
    [(THWButtonControlRep *)self setHighlighted:0];
LABEL_9:
    [(THWButtonControlRep *)self p_interactionDidEnd];
  }

  return 1;
}

- (void)p_interactionWillStart
{
  delegate = [(THWButtonControlRep *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [(THWButtonControlDelegate *)delegate buttonControlInteractionWillStart:self];
  }
}

- (void)p_interactionDidEnd
{
  delegate = [(THWButtonControlRep *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [(THWButtonControlDelegate *)delegate buttonControlInteractionDidEnd:self];
  }
}

- (CALayer)highlightLayer
{
  result = *(&self->_highlightLayer + 1);
  if (!result)
  {
    *(&self->_highlightLayer + 1) = objc_alloc_init(CALayer);
    [*(&self->_highlightLayer + 1) setBackgroundColor:{-[TSUColor CGColor](+[TSUColor colorWithWhite:alpha:](TSUColor, "colorWithWhite:alpha:", 0.0, 0.3), "CGColor")}];
    y = CGPointZero.y;
    [*(&self->_highlightLayer + 1) setAnchorPoint:{CGPointZero.x, y}];
    [*(&self->_highlightLayer + 1) setPosition:{CGPointZero.x, y}];
    return *(&self->_highlightLayer + 1);
  }

  return result;
}

- (void)didUpdateLayer:(id)layer
{
  v5 = [(THWButtonControlRep *)self p_imageForState:[(THWButtonControlRep *)self state] highlighted:self->_highlighted];
  delegate = [(THWButtonControlRep *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (self->_highlighted)
    {
      v7 = [(THWButtonControlDelegate *)delegate buttonControlAdjustImageWhenHighlighted:self];
      goto LABEL_7;
    }
  }

  else if (self->_highlighted)
  {
    v7 = v5 == [(THWButtonControlRep *)self p_imageForState:[(THWButtonControlRep *)self state] highlighted:0];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  [-[THWButtonControlRep canvas](self "canvas")];
  v9 = v8;
  v10 = [v5 CGImageForContentsScale:?];
  if ([layer contents] != v10)
  {
    [layer setContents:v10];
    [layer setContentsScale:v9];
  }

  if (v7)
  {
    highlightLayer = [(THWButtonControlRep *)self highlightLayer];
    y = CGPointZero.y;
    [layer bounds];
    [(CALayer *)highlightLayer setBounds:CGPointZero.x, y];
    if (![(CALayer *)highlightLayer superlayer])
    {
      [layer insertSublayer:highlightLayer atIndex:0];
    }
  }

  else
  {
    [*(&self->_highlightLayer + 1) removeFromSuperlayer];

    *(&self->_highlightLayer + 1) = 0;
  }

  if (objc_opt_respondsToSelector())
  {

    [(THWButtonControlDelegate *)delegate buttonControl:self didUpdateLayer:layer];
  }
}

- (id)additionalLayersOverLayer
{
  delegate = [(THWButtonControlRep *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWButtonControlDelegate *)delegate buttonControlAdditionalLayersOverLayer:self];
}

- (void)addAdditionalChildLayersToArray:(id)array
{
  delegate = [(THWButtonControlRep *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [(THWButtonControlDelegate *)delegate buttonControl:self addAdditionalChildLayersToArray:array];
  }
}

@end