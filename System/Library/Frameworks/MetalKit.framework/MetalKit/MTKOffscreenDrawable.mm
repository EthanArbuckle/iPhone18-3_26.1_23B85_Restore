@interface MTKOffscreenDrawable
- (CGSize)size;
- (MTKOffscreenDrawable)initWithDevice:(id)a3 pixelFormat:(unint64_t)a4 size:(CGSize)a5 drawableID:(unint64_t)a6;
- (MTLTexture)texture;
- (void)setDevice:(id)a3;
- (void)setPixelFormat:(unint64_t)a3;
- (void)setSize:(CGSize)a3;
@end

@implementation MTKOffscreenDrawable

- (MTKOffscreenDrawable)initWithDevice:(id)a3 pixelFormat:(unint64_t)a4 size:(CGSize)a5 drawableID:(unint64_t)a6
{
  height = a5.height;
  width = a5.width;
  v12 = a3;
  v16.receiver = self;
  v16.super_class = MTKOffscreenDrawable;
  v13 = [(MTKOffscreenDrawable *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_textureDirty = 1;
    v13->_size.width = width;
    v13->_size.height = height;
    v13->_pixelFormat = a4;
    objc_storeStrong(&v13->_device, a3);
    v14->_drawableID = a6;
  }

  return v14;
}

- (MTLTexture)texture
{
  if (self->_textureDirty)
  {
    v3 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:self->_pixelFormat width:self->_size.width height:self->_size.height mipmapped:0];
    [v3 setUsage:5];
    [v3 setStorageMode:2];
    if (self->_size.width != 0.0 && self->_size.height != 0.0 && self->_pixelFormat)
    {
      v4 = [(MTLDevice *)self->_device newTextureWithDescriptor:v3];
      texture = self->_texture;
      self->_texture = v4;

      self->_textureDirty = 0;
    }
  }

  v6 = self->_texture;

  return v6;
}

- (void)setPixelFormat:(unint64_t)a3
{
  if (self->_pixelFormat != a3)
  {
    self->_pixelFormat = a3;
    self->_textureDirty = 1;
  }
}

- (void)setDevice:(id)a3
{
  v5 = a3;
  p_device = &self->_device;
  if (self->_device != v5)
  {
    v7 = v5;
    objc_storeStrong(p_device, a3);
    v5 = v7;
    self->_textureDirty = 1;
  }

  MEMORY[0x1EEE66BB8](p_device, v5);
}

- (void)setSize:(CGSize)a3
{
  if (self->_size.width != a3.width || self->_size.height != a3.height)
  {
    self->_size = a3;
    self->_textureDirty = 1;
  }
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end