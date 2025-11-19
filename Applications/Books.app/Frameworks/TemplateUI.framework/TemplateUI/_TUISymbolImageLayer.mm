@interface _TUISymbolImageLayer
- (void)_updateBackdropLayer;
- (void)setContentCompositingFilter:(id)a3;
- (void)updateContentAndBoundsWithImage:(id)a3 color:(id)a4;
@end

@implementation _TUISymbolImageLayer

- (void)updateContentAndBoundsWithImage:(id)a3 color:(id)a4
{
  v22 = a3;
  v6 = a4;
  if (!self->_contentLayer)
  {
    v7 = +[_TUIImplicitAnimationLayer layer];
    contentLayer = self->_contentLayer;
    self->_contentLayer = v7;

    [(_TUISymbolImageLayer *)self addSublayer:self->_contentLayer];
  }

  if (v22)
  {
    [v22 contentInsets];
    [v22 alignmentInsets];
    [(_TUISymbolImageLayer *)self bounds];
    UIRectInset();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(_TUISymbolImageLayer *)self contentsScale];
    [(CALayer *)self->_contentLayer setContentsScale:?];
    [(CALayer *)self->_contentLayer setFrame:v10, v12, v14, v16];
    if (v6 && ![v22 isMulticolor])
    {
      v17 = &kCALayerContentsSwizzleAAAA;
    }

    else
    {
      v17 = &kCALayerContentsSwizzleRGBA;
    }

    v18 = *v17;
    if (v18 != kCALayerContentsSwizzleRGBA || ([(CALayer *)self->_contentLayer contentsSwizzle], v20 = objc_claimAutoreleasedReturnValue(), v20, v20 == v18))
    {
      v19 = 0;
    }

    else
    {
      +[CATransaction begin];
      v19 = 1;
      [CATransaction setDisableActions:1];
    }

    -[CALayer setContents:](self->_contentLayer, "setContents:", [v22 CGImage]);
    [(CALayer *)self->_contentLayer setContentsSwizzle:v18];
    if (v18 == kCALayerContentsSwizzleAAAA)
    {
      v21 = [v6 CGColor];
    }

    else
    {
      v21 = 0;
    }

    [(CALayer *)self->_contentLayer setContentsMultiplyColor:v21];
    if (v19)
    {
      +[CATransaction commit];
    }
  }

  [(_TUISymbolImageLayer *)self _updateBackdropLayer];
}

- (void)setContentCompositingFilter:(id)a3
{
  v6 = a3;
  v4 = [(CALayer *)self->_contentLayer compositingFilter];

  v5 = v6;
  if (v4 != v6)
  {
    [(CALayer *)self->_contentLayer setCompositingFilter:v6];
    [(_TUISymbolImageLayer *)self _updateBackdropLayer];
    v5 = v6;
  }
}

- (void)_updateBackdropLayer
{
  v8 = [(CALayer *)self->_contentLayer compositingFilter];
  v3 = TUILayerCompositingFilterNeedsBackdropLayer(v8);
  [(_TUISymbolImageLayer *)self setAllowsGroupBlending:(v8 == 0) | (v3 & 1)];
  backdropLayer = self->_backdropLayer;
  if (v3)
  {
    if (!backdropLayer)
    {
      v5 = +[CABackdropLayer layer];
      v6 = self->_backdropLayer;
      self->_backdropLayer = v5;

      [(_TUISymbolImageLayer *)self insertSublayer:self->_backdropLayer below:self->_contentLayer];
    }
  }

  else if (backdropLayer)
  {
    [(CABackdropLayer *)backdropLayer removeFromSuperlayer];
    v7 = self->_backdropLayer;
    self->_backdropLayer = 0;
  }

  [(CALayer *)self->_contentLayer frame];
  [(CABackdropLayer *)self->_backdropLayer setFrame:?];
}

@end