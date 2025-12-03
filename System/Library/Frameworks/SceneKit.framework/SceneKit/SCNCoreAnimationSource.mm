@interface SCNCoreAnimationSource
- (BOOL)isOpaque;
- (id)textureSource;
- (void)dealloc;
- (void)setLayer:(id)layer;
@end

@implementation SCNCoreAnimationSource

- (id)textureSource
{
  v3 = objc_alloc_init(SCNTextureCoreAnimationSource);
  [(SCNTextureCoreAnimationSource *)v3 setLayer:[(SCNCoreAnimationSource *)self layer]];
  return v3;
}

- (BOOL)isOpaque
{
  layer = [(SCNCoreAnimationSource *)self layer];

  return [(CALayer *)layer isOpaque];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNCoreAnimationSource;
  [(SCNCoreAnimationSource *)&v3 dealloc];
}

- (void)setLayer:(id)layer
{
  layer = self->_layer;
  if (layer != layer)
  {

    self->_layer = layer;
  }
}

@end