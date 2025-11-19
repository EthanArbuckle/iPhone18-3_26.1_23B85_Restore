@interface THWButtonControlRep
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)handleGesture:(id)a3;
- (BOOL)p_interactionEnabled;
- (CALayer)highlightLayer;
- (THWButtonControlDelegate)delegate;
- (id)additionalLayersOverLayer;
- (id)p_imageForState:(int)a3 highlighted:(BOOL)a4;
- (int)state;
- (void)addAdditionalChildLayersToArray:(id)a3;
- (void)dealloc;
- (void)didUpdateLayer:(id)a3;
- (void)p_interactionDidEnd;
- (void)p_interactionWillStart;
- (void)screenScaleDidChange;
- (void)setHighlighted:(BOOL)a3;
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
  v3 = [(THWButtonControlRep *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if ([(THWButtonControlDelegate *)v3 buttonControlUseContentsScaleForImageCache:self])
    {
      [*(&self->_cachedImages + 1) removeAllObjects];
    }
  }
}

- (int)state
{
  v3 = [(THWButtonControlRep *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWButtonControlDelegate *)v3 buttonControlState:self];
}

- (id)p_imageForState:(int)a3 highlighted:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = *(&self->_cachedImages + 1);
  if (!v7)
  {
    v7 = objc_alloc_init(TSUIntegerKeyDictionary);
    *(&self->_cachedImages + 1) = v7;
  }

  v8 = [(TSUIntegerKeyDictionary *)v7 objectForKey:v4 | (2 * v5)];
  if (!v8)
  {
    v8 = [(THWButtonControlDelegate *)[(THWButtonControlRep *)self delegate] buttonControl:self imageForState:v5 highlighted:v4];
    if (!v8 && v4)
    {
      v8 = [(THWButtonControlRep *)self p_imageForState:v5 highlighted:0];
    }

    if (v5 == 1 && !v8)
    {
      v8 = [(THWButtonControlRep *)self p_imageForState:0 highlighted:v4];
      if (v8)
      {
LABEL_12:
        [*(&self->_cachedImages + 1) setObject:v8 forKey:v4 | (2 * v5)];
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

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(THWControlRep *)self invalidateLayers];
    v4 = [(THWButtonControlRep *)self delegate];
    if (objc_opt_respondsToSelector())
    {

      [(THWButtonControlDelegate *)v4 buttonControlHighlightedDidChange:self];
    }
  }
}

- (BOOL)p_interactionEnabled
{
  v3 = [(THWControlRep *)self controlHostRep];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v4 = [(THWButtonControlRep *)self layout];

  return [v3 control:v4 isInteractionEnabledForRep:self];
}

- (BOOL)canHandleGesture:(id)a3
{
  v4 = [a3 gestureKind];
  if (v4 != TSWPImmediatePress || [(THWButtonControlRep *)self state]== 2)
  {
    return 0;
  }

  return [(THWButtonControlRep *)self p_interactionEnabled];
}

- (BOOL)handleGesture:(id)a3
{
  v5 = [a3 gestureState];
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 1:
        [(THWButtonControlRep *)self p_interactionWillStart];
        v6 = self;
        v7 = &dword_0 + 1;
        break;
      case 2:
        if ([objc_msgSend(-[THWButtonControlRep interactiveCanvasController](self "interactiveCanvasController")])
        {
          objc_opt_class();
          [TSUDynamicCast() cancel];
          v6 = self;
          v7 = 0;
        }

        else
        {
          [a3 naturalLocationForRep:self];
          v7 = [(THWButtonControlRep *)self containsPoint:?];
          v6 = self;
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

    [(THWButtonControlRep *)v6 setHighlighted:v7];
    return 1;
  }

  if ((v5 - 4) < 2)
  {
    [(THWButtonControlRep *)self setHighlighted:0];
LABEL_9:
    [(THWButtonControlRep *)self p_interactionDidEnd];
  }

  return 1;
}

- (void)p_interactionWillStart
{
  v3 = [(THWButtonControlRep *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [(THWButtonControlDelegate *)v3 buttonControlInteractionWillStart:self];
  }
}

- (void)p_interactionDidEnd
{
  v3 = [(THWButtonControlRep *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [(THWButtonControlDelegate *)v3 buttonControlInteractionDidEnd:self];
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

- (void)didUpdateLayer:(id)a3
{
  v5 = [(THWButtonControlRep *)self p_imageForState:[(THWButtonControlRep *)self state] highlighted:self->_highlighted];
  v6 = [(THWButtonControlRep *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (self->_highlighted)
    {
      v7 = [(THWButtonControlDelegate *)v6 buttonControlAdjustImageWhenHighlighted:self];
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
  if ([a3 contents] != v10)
  {
    [a3 setContents:v10];
    [a3 setContentsScale:v9];
  }

  if (v7)
  {
    v11 = [(THWButtonControlRep *)self highlightLayer];
    y = CGPointZero.y;
    [a3 bounds];
    [(CALayer *)v11 setBounds:CGPointZero.x, y];
    if (![(CALayer *)v11 superlayer])
    {
      [a3 insertSublayer:v11 atIndex:0];
    }
  }

  else
  {
    [*(&self->_highlightLayer + 1) removeFromSuperlayer];

    *(&self->_highlightLayer + 1) = 0;
  }

  if (objc_opt_respondsToSelector())
  {

    [(THWButtonControlDelegate *)v6 buttonControl:self didUpdateLayer:a3];
  }
}

- (id)additionalLayersOverLayer
{
  v3 = [(THWButtonControlRep *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWButtonControlDelegate *)v3 buttonControlAdditionalLayersOverLayer:self];
}

- (void)addAdditionalChildLayersToArray:(id)a3
{
  v5 = [(THWButtonControlRep *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [(THWButtonControlDelegate *)v5 buttonControl:self addAdditionalChildLayersToArray:a3];
  }
}

@end