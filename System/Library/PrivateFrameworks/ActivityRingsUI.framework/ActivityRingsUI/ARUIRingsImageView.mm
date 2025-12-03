@interface ARUIRingsImageView
- (ARUIRingsImageView)initWithRingGroup:(id)group;
- (ARUIRingsImageView)initWithRingGroup:(id)group renderer:(id)renderer;
- (void)_renderImage;
- (void)_updateRenderContext;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation ARUIRingsImageView

- (ARUIRingsImageView)initWithRingGroup:(id)group
{
  groupCopy = group;
  v5 = [[ARUIRingsImageView alloc] initWithRingGroup:groupCopy renderer:0];

  return v5;
}

- (ARUIRingsImageView)initWithRingGroup:(id)group renderer:(id)renderer
{
  groupCopy = group;
  rendererCopy = renderer;
  v12.receiver = self;
  v12.super_class = ARUIRingsImageView;
  v9 = [(ARUIRingsImageView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v9)
  {
    [groupCopy setDelegate:v9];
    objc_storeStrong(&v9->_ringGroup, group);
    v10 = rendererCopy;
    if (!rendererCopy)
    {
      v10 = objc_alloc_init(ARUIRenderer);
    }

    objc_storeStrong(&v9->_renderer, v10);
    if (!rendererCopy)
    {
    }

    [(ARUIRingsImageView *)v9 _updateRenderContext];
    v9->_needsImageRender = 1;
  }

  return v9;
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = ARUIRingsImageView;
  [(ARUIRingsImageView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(ARUIRingsImageView *)self _updateRenderContext];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = ARUIRingsImageView;
  [(ARUIRingsImageView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
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
  rings = [(ARUIRingGroup *)self->_ringGroup rings];
  spriteSheet = [(ARUIRingGroup *)self->_ringGroup spriteSheet];
  v6 = [(ARUIRenderer *)renderer snapshotRings:rings spriteSheet:spriteSheet withContext:self->_renderContext];

  [(ARUIRingsImageView *)self setImage:v6];
}

@end