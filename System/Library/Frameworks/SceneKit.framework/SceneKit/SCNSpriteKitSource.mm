@interface SCNSpriteKitSource
- (BOOL)isOpaque;
- (id)textureSource;
- (void)dealloc;
- (void)setScene:(id)scene;
@end

@implementation SCNSpriteKitSource

- (id)textureSource
{
  v3 = objc_alloc_init(SCNTextureSpriteKitSource);
  [(SCNTextureSpriteKitSource *)v3 setScene:[(SCNSpriteKitSource *)self scene]];
  return v3;
}

- (BOOL)isOpaque
{
  v4 = 0;
  [(UIColor *)[(SKScene *)[(SCNSpriteKitSource *)self scene] backgroundColor] scn_C3DColorIgnoringColorSpace:0 success:&v4];
  return v2 == 1.0 || (v4 & 1) == 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNSpriteKitSource;
  [(SCNSpriteKitSource *)&v3 dealloc];
}

- (void)setScene:(id)scene
{
  scene = self->_scene;
  if (scene != scene)
  {

    self->_scene = scene;
  }
}

@end