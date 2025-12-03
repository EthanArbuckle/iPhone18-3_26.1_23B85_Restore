@interface TCTouchControllerDescriptor
- (CGSize)drawableSize;
- (CGSize)size;
- (TCTouchControllerDescriptor)init;
- (TCTouchControllerDescriptor)initWithMTKView:(id)view;
@end

@implementation TCTouchControllerDescriptor

- (TCTouchControllerDescriptor)init
{
  v3.receiver = self;
  v3.super_class = TCTouchControllerDescriptor;
  return [(TCTouchControllerDescriptor *)&v3 init];
}

- (TCTouchControllerDescriptor)initWithMTKView:(id)view
{
  viewCopy = view;
  v5 = [(TCTouchControllerDescriptor *)self init];
  if (v5)
  {
    device = [viewCopy device];
    device = v5->_device;
    v5->_device = device;

    [viewCopy bounds];
    v5->_size.width = v8;
    v5->_size.height = v9;
    v5->_colorPixelFormat = [viewCopy colorPixelFormat];
    v5->_depthAttachmentPixelFormat = [viewCopy depthStencilPixelFormat];
    v5->_stencilAttachmentPixelFormat = [viewCopy depthStencilPixelFormat];
    v5->_sampleCount = [viewCopy sampleCount];
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