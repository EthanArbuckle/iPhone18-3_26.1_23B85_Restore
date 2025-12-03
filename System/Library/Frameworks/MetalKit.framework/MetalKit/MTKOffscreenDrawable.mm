@interface MTKOffscreenDrawable
- (CGSize)size;
- (MTKOffscreenDrawable)initWithDevice:(id)device pixelFormat:(unint64_t)format size:(CGSize)size drawableID:(unint64_t)d;
- (MTLTexture)texture;
- (void)setDevice:(id)device;
- (void)setPixelFormat:(unint64_t)format;
- (void)setSize:(CGSize)size;
@end

@implementation MTKOffscreenDrawable

- (MTKOffscreenDrawable)initWithDevice:(id)device pixelFormat:(unint64_t)format size:(CGSize)size drawableID:(unint64_t)d
{
  height = size.height;
  width = size.width;
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = MTKOffscreenDrawable;
  v13 = [(MTKOffscreenDrawable *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_textureDirty = 1;
    v13->_size.width = width;
    v13->_size.height = height;
    v13->_pixelFormat = format;
    objc_storeStrong(&v13->_device, device);
    v14->_drawableID = d;
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

- (void)setPixelFormat:(unint64_t)format
{
  if (self->_pixelFormat != format)
  {
    self->_pixelFormat = format;
    self->_textureDirty = 1;
  }
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  p_device = &self->_device;
  if (self->_device != deviceCopy)
  {
    v7 = deviceCopy;
    objc_storeStrong(p_device, device);
    deviceCopy = v7;
    self->_textureDirty = 1;
  }

  MEMORY[0x1EEE66BB8](p_device, deviceCopy);
}

- (void)setSize:(CGSize)size
{
  if (self->_size.width != size.width || self->_size.height != size.height)
  {
    self->_size = size;
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