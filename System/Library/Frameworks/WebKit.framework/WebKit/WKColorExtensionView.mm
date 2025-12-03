@interface WKColorExtensionView
- (WKColorExtensionView)initWithFrame:(CGRect)frame delegate:(id)delegate;
- (void)_updateColor:(id)color visible:(BOOL)visible;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)cancelFadeAnimation;
- (void)fadeOut;
@end

@implementation WKColorExtensionView

- (WKColorExtensionView)initWithFrame:(CGRect)frame delegate:(id)delegate
{
  v8.receiver = self;
  v8.super_class = WKColorExtensionView;
  v5 = [(WKColorExtensionView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegate);
    [(WKColorExtensionView *)v6 setHidden:1];
  }

  return v6;
}

- (void)fadeOut
{
  clearColor = [MEMORY[0x1E69DC888] clearColor];

  [(WKColorExtensionView *)self _updateColor:clearColor visible:0];
}

- (void)_updateColor:(id)color visible:(BOOL)visible
{
  if (visible)
  {
    isHidden = [(WKColorExtensionView *)self isHidden];
    if (isHidden)
    {
      [(WKColorExtensionView *)self cancelFadeAnimation];
    }

    self->_isVisible = visible;
    [(WKColorExtensionView *)self setHidden:0];
  }

  else
  {
    if (!self->_isVisible)
    {
      return;
    }

    [(WKColorExtensionView *)self isHidden];
    isVisible = self->_isVisible;
    self->_isVisible = visible;
    if (isVisible)
    {
      Weak = objc_loadWeak(&self->_delegate);
      v10 = Weak;
      if (Weak)
      {
        v11 = Weak;
      }

      [v10 colorExtensionViewWillDisappear:self];
      if (v10)
      {
      }
    }

    isHidden = 0;
  }

  v12 = [-[WKColorExtensionView layer](self "layer")];
  v13 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  cGColor = [color CGColor];
  v15 = cGColor;
  if (cGColor)
  {
    CFRetain(cGColor);
  }

  if (color)
  {
    colorCopy = color;
  }

  m_ptr = self->_targetColor.m_ptr;
  self->_targetColor.m_ptr = color;
  if (m_ptr)
  {
  }

  [-[WKColorExtensionView layer](self "layer")];
  if (isHidden)
  {
    v18 = objc_loadWeak(&self->_delegate);
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    [v19 colorExtensionViewDidAppear:self];
  }

  else
  {
    v21 = [MEMORY[0x1E6979318] animationWithKeyPath:@"backgroundColor"];
    v19 = v21;
    if (v21)
    {
      v22 = v21;
    }

    [v19 setFromValue:v13];
    [v19 setToValue:v15];
    [v19 setDuration:0.1];
    [v19 setFillMode:*MEMORY[0x1E69797E8]];
    [v19 setRemovedOnCompletion:0];
    [v19 setDelegate:self];
    [-[WKColorExtensionView layer](self "layer")];
  }

  if (v19)
  {
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v13)
  {

    CFRelease(v13);
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished && !self->_isVisible)
  {
    [(WKColorExtensionView *)self setHidden:1];
  }
}

- (void)cancelFadeAnimation
{
  if (self->_targetColor.m_ptr)
  {
    layer = [(WKColorExtensionView *)self layer];
    v7 = layer;
    if (layer)
    {
      v4 = layer;
      layer = v7;
    }

    [layer removeAnimationForKey:@"WKColorExtensionViewFade"];
    cGColor = [(UIColor *)self->_targetColor.m_ptr CGColor];
    v6 = cGColor;
    if (cGColor)
    {
      CFRetain(cGColor);
    }

    [v7 setBackgroundColor:v6];
    if (v6)
    {
      CFRelease(v6);
    }

    [(WKColorExtensionView *)self setHidden:!self->_isVisible];
    if (v7)
    {
    }
  }
}

@end