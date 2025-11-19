@interface ARUIRingsImageView
- (ARUIRingsImageView)initWithRingGroup:(id)a3;
- (ARUIRingsImageView)initWithRingGroup:(id)a3 renderer:(id)a4;
- (void)_renderImage;
- (void)_updateRenderContext;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation ARUIRingsImageView

- (ARUIRingsImageView)initWithRingGroup:(id)a3
{
  v4 = a3;
  v5 = [[ARUIRingsImageView alloc] initWithRingGroup:v4 renderer:0];

  return v5;
}

- (ARUIRingsImageView)initWithRingGroup:(id)a3 renderer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ARUIRingsImageView;
  v9 = [(ARUIRingsImageView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v9)
  {
    [v7 setDelegate:v9];
    objc_storeStrong(&v9->_ringGroup, a3);
    v10 = v8;
    if (!v8)
    {
      v10 = objc_alloc_init(ARUIRenderer);
    }

    objc_storeStrong(&v9->_renderer, v10);
    if (!v8)
    {
    }

    [(ARUIRingsImageView *)v9 _updateRenderContext];
    v9->_needsImageRender = 1;
  }

  return v9;
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = ARUIRingsImageView;
  [(ARUIRingsImageView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(ARUIRingsImageView *)self _updateRenderContext];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = ARUIRingsImageView;
  [(ARUIRingsImageView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(ARUIRingsImageView *)self _updateRenderContext];
}

- (void)_updateRenderContext
{
  [(ARUIRingsImageView *)self bounds];
  v5 = [[ARUIRenderContext alloc] initWithSize:v3, v4];
  renderContext = self->_renderContext;
  self->_renderContext = v5;

  MEMORY[0x1EEE66BB8](v5, renderContext);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ARUIRingsImageView;
  [(ARUIRingsImageView *)&v3 layoutSubviews];
  if (self->_needsImageRender)
  {
    [(ARUIRingsImageView *)self bounds];
    if (!CGRectEqualToRect(v4, *MEMORY[0x1E695F058]))
    {
      [(ARUIRingsImageView *)self _renderImage];
      self->_needsImageRender = 0;
    }
  }
}

- (void)_renderImage
{
  renderer = self->_renderer;
  v4 = [(ARUIRingGroup *)self->_ringGroup rings];
  v5 = [(ARUIRingGroup *)self->_ringGroup spriteSheet];
  v6 = [(ARUIRenderer *)renderer snapshotRings:v4 spriteSheet:v5 withContext:self->_renderContext];

  [(ARUIRingsImageView *)self setImage:v6];
}

@end