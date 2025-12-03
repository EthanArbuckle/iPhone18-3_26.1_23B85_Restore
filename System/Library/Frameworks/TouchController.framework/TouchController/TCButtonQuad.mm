@interface TCButtonQuad
- (CGPoint)position;
- (CGSize)size;
- (MTLTexture)highlightTexture;
- (MTLTexture)texture;
- (TCButtonQuad)init;
- (void)setTintColor:(CGColor *)color;
@end

@implementation TCButtonQuad

- (TCButtonQuad)init
{
  v10 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = TCButtonQuad;
  v2 = [(TCButtonQuad *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 5) = 0;
    *(v2 + 6) = 0;
    *(v2 + 56) = vdupq_n_s64(0x4049000000000000uLL);
    *(v2 + 2) = 0;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *components = xmmword_23AAEE070;
    v9 = unk_23AAEE080;
    v3->_tintColor = CGColorCreate(DeviceRGB, components);
    CGColorSpaceRelease(DeviceRGB);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)setTintColor:(CGColor *)color
{
  CGColorRelease(self->_tintColor);
  self->_tintColor = color;

  CGColorRetain(color);
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (MTLTexture)texture
{
  WeakRetained = objc_loadWeakRetained(&self->_texture);

  return WeakRetained;
}

- (MTLTexture)highlightTexture
{
  WeakRetained = objc_loadWeakRetained(&self->_highlightTexture);

  return WeakRetained;
}

@end