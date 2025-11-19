@interface TCTouchControllerDescriptor
- (CGSize)drawableSize;
- (CGSize)size;
- (TCTouchControllerDescriptor)init;
- (TCTouchControllerDescriptor)initWithMTKView:(id)a3;
@end

@implementation TCTouchControllerDescriptor

- (TCTouchControllerDescriptor)init
{
  v3.receiver = self;
  v3.super_class = TCTouchControllerDescriptor;
  return [(TCTouchControllerDescriptor *)&v3 init];
}

- (TCTouchControllerDescriptor)initWithMTKView:(id)a3
{
  v4 = a3;
  v5 = [(TCTouchControllerDescriptor *)self init];
  if (v5)
  {
    v6 = [v4 device];
    device = v5->_device;
    v5->_device = v6;

    [v4 bounds];
    v5->_size.width = v8;
    v5->_size.height = v9;
    v5->_colorPixelFormat = [v4 colorPixelFormat];
    v5->_depthAttachmentPixelFormat = [v4 depthStencilPixelFormat];
    v5->_stencilAttachmentPixelFormat = [v4 depthStencilPixelFormat];
    v5->_sampleCount = [v4 sampleCount];
  }

  return v5;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)drawableSize
{
  width = self->_drawableSize.width;
  height = self->_drawableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end