@interface WKColorExtensionView
- (WKColorExtensionView)initWithFrame:(CGRect)a3 delegate:(id)a4;
- (void)_updateColor:(id)a3 visible:(BOOL)a4;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)cancelFadeAnimation;
- (void)fadeOut;
@end

@implementation WKColorExtensionView

- (WKColorExtensionView)initWithFrame:(CGRect)a3 delegate:(id)a4
{
  v8.receiver = self;
  v8.super_class = WKColorExtensionView;
  v5 = [(WKColorExtensionView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, a4);
    [(WKColorExtensionView *)v6 setHidden:1];
  }

  return v6;
}

- (void)fadeOut
{
  v3 = [MEMORY[0x1E69DC888] clearColor];

  [(WKColorExtensionView *)self _updateColor:v3 visible:0];
}

- (void)_updateColor:(id)a3 visible:(BOOL)a4
{
  if (a4)
  {
    v7 = [(WKColorExtensionView *)self isHidden];
    if (v7)
    {
      [(WKColorExtensionView *)self cancelFadeAnimation];
    }

    self->_isVisible = a4;
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
    self->_isVisible = a4;
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

    v7 = 0;
  }

  v12 = [-[WKColorExtensionView layer](self "layer")];
  v13 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  v14 = [a3 CGColor];
  v15 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  if (a3)
  {
    v16 = a3;
  }

  m_ptr = self->_targetColor.m_ptr;
  self->_targetColor.m_ptr = a3;
  if (m_ptr)
  {
  }

  [-[WKColorExtensionView layer](self "layer")];
  if (v7)
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

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (a4 && !self->_isVisible)
  {
    [(WKColorExtensionView *)self setHidden:1];
  }
}

- (void)cancelFadeAnimation
{
  if (self->_targetColor.m_ptr)
  {
    v3 = [(WKColorExtensionView *)self layer];
    v7 = v3;
    if (v3)
    {
      v4 = v3;
      v3 = v7;
    }

    [v3 removeAnimationForKey:@"WKColorExtensionViewFade"];
    v5 = [(UIColor *)self->_targetColor.m_ptr CGColor];
    v6 = v5;
    if (v5)
    {
      CFRetain(v5);
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